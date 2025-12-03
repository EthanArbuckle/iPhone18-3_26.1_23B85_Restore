@interface TFBetaLaunchHandle
- (BOOL)_remoteAlertShouldActivateForLaunchInfo:(id)info;
- (TFBetaLaunchHandle)initWithProcessHandle:(id)handle;
- (TFBetaLaunchHandleActivationDelegate)activationDelegate;
- (void)_activateRemoteAlertWithLaunchInfo:(id)info;
- (void)_updatedLaunchInfoForActivation:(id)activation;
- (void)activateIfNeeded;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation TFBetaLaunchHandle

- (TFBetaLaunchHandle)initWithProcessHandle:(id)handle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = TFBetaLaunchHandle;
  v6 = [(TFBetaLaunchHandle *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processHandle, handle);
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
  generatedLogger = [v3 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = v5;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    processHandle = [(TFBetaLaunchHandle *)self processHandle];
    bundleIdentifier = [processHandle bundleIdentifier];
    v18 = 138543874;
    v19 = v5;
    v20 = 2112;
    v21 = logKey;
    v22 = 2112;
    v23 = bundleIdentifier;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: activateIfNeeded bundleId = %@", &v18, 0x20u);
  }

  processHandle2 = [(TFBetaLaunchHandle *)self processHandle];
  bundleIdentifier2 = [processHandle2 bundleIdentifier];

  if (bundleIdentifier2)
  {
    mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
    v13 = [mEMORY[0x277CEC4C0] getLaunchInfoForBundleID:bundleIdentifier2];

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

  activationDelegate = [(TFBetaLaunchHandle *)self activationDelegate];
  v16 = objc_opt_respondsToSelector();

  if (v16)
  {
    activationDelegate2 = [(TFBetaLaunchHandle *)self activationDelegate];
    [activationDelegate2 betaLaunchHandle:self activateIfNeededEndedWithResult:v14];
  }
}

- (BOOL)_remoteAlertShouldActivateForLaunchInfo:(id)info
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    v25 = 138543874;
    v26 = v7;
    v27 = 2112;
    v28 = logKey;
    v29 = 2112;
    v30 = infoCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo launchInfo=%@", &v25, 0x20u);
  }

  if (!infoCopy)
  {
    v11 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v11 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v15 = v18;
      logKey2 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v18;
      v27 = 2112;
      v28 = logKey2;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Unconfigured launch info";
      goto LABEL_12;
    }

LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  if (([infoCopy isLaunchScreenEnabled] & 1) == 0)
  {
    v11 = +[TFLogConfiguration defaultConfiguration];
    generatedLogger2 = [v11 generatedLogger];
    if (os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v15 = v19;
      logKey2 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = logKey2;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Launch screen disabled";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  lastWelcomeScreenViewDate = [infoCopy lastWelcomeScreenViewDate];

  v11 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger2 = [v11 generatedLogger];
  v13 = os_log_type_enabled(generatedLogger2, OS_LOG_TYPE_DEFAULT);
  if (lastWelcomeScreenViewDate)
  {
    if (v13)
    {
      v14 = objc_opt_class();
      v15 = v14;
      logKey2 = [(TFBetaLaunchHandle *)self logKey];
      v25 = 138543618;
      v26 = v14;
      v27 = 2112;
      v28 = logKey2;
      v17 = "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Not activating - Launch screen seen";
LABEL_12:
      _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_DEFAULT, v17, &v25, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v13)
  {
    v22 = objc_opt_class();
    v23 = v22;
    logKey3 = [(TFBetaLaunchHandle *)self logKey];
    v25 = 138543618;
    v26 = v22;
    v27 = 2112;
    v28 = logKey3;
    _os_log_impl(&dword_26D2C7000, generatedLogger2, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _remoteAlertShouldActivateForLaunchInfo: Activating", &v25, 0x16u);
  }

  v20 = 1;
LABEL_14:

  return v20;
}

- (void)_activateRemoteAlertWithLaunchInfo:(id)info
{
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    v22 = 138543874;
    v23 = v7;
    v24 = 2112;
    v25 = logKey;
    v26 = 2112;
    v27 = infoCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _activateRemoteAlertWithLaunchInfo launchInfo = %@", &v22, 0x20u);
  }

  v10 = [objc_alloc(MEMORY[0x277D66BD8]) initWithServiceName:@"com.apple.ios.StoreKitUIService" viewControllerClassName:@"ServiceTFBetaLaunchHostViewController"];
  v11 = objc_alloc_init(MEMORY[0x277D66BD0]);
  v12 = [TFBetaLaunchHandleConfiguration alloc];
  processHandle = [(TFBetaLaunchHandle *)self processHandle];
  bundleIdentifier = [processHandle bundleIdentifier];
  v15 = [(TFBetaLaunchHandleConfiguration *)v12 initWithBundleIdentifier:bundleIdentifier preloadingLaunchInfo:infoCopy];

  encodedAsUserInfo = [(TFBetaLaunchHandleConfiguration *)v15 encodedAsUserInfo];
  [v11 setUserInfo:encodedAsUserInfo];

  v17 = [MEMORY[0x277D66BF0] newHandleWithDefinition:v10 configurationContext:v11];
  [v17 addObserver:self];
  v18 = objc_alloc_init(MEMORY[0x277D66BC0]);
  v19 = objc_alloc(MEMORY[0x277D66C08]);
  processHandle2 = [(TFBetaLaunchHandle *)self processHandle];
  v21 = [v19 initWithTargetProcess:processHandle2];
  [v18 setPresentationTarget:v21];

  [v17 activateWithContext:v18];
  [(TFBetaLaunchHandle *)self _updatedLaunchInfoForActivation:infoCopy];
}

- (void)_updatedLaunchInfoForActivation:(id)activation
{
  v21 = *MEMORY[0x277D85DE8];
  activationCopy = activation;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    *buf = 138543874;
    v16 = v7;
    v17 = 2112;
    v18 = logKey;
    v19 = 2112;
    v20 = activationCopy;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: _updatedLaunchInfoForActivation launchInfo = %@", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  [activationCopy setLastWelcomeScreenViewDate:date];

  mEMORY[0x277CEC4C0] = [MEMORY[0x277CEC4C0] sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__TFBetaLaunchHandle__updatedLaunchInfoForActivation___block_invoke;
  v13[3] = &unk_279D97FC0;
  v13[4] = self;
  v14 = activationCopy;
  v12 = activationCopy;
  [mEMORY[0x277CEC4C0] setLaunchInfo:v12 withCompletionHandler:v13];
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

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v14 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v5 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = logKey;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandleDidDeactivate", &v10, 0x16u);
  }

  [deactivateCopy removeObserver:self];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  handleCopy = handle;
  v8 = +[TFLogConfiguration defaultConfiguration];
  generatedLogger = [v8 generatedLogger];
  if (os_log_type_enabled(generatedLogger, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    logKey = [(TFBetaLaunchHandle *)self logKey];
    localizedDescription = [errorCopy localizedDescription];
    v14 = 138543874;
    v15 = v10;
    v16 = 2112;
    v17 = logKey;
    v18 = 2112;
    v19 = localizedDescription;
    _os_log_impl(&dword_26D2C7000, generatedLogger, OS_LOG_TYPE_DEFAULT, "%{public}@ [%@]: remoteAlertHandle:didInvalidateWithError error=%@", &v14, 0x20u);
  }

  [handleCopy removeObserver:self];
}

- (TFBetaLaunchHandleActivationDelegate)activationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_activationDelegate);

  return WeakRetained;
}

@end