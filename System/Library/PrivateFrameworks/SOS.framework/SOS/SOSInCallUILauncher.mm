@interface SOSInCallUILauncher
+ (SOSInCallUILauncher)sharedInCallUILauncher;
+ (id)SOSRemoteAlertActivationReasonForSOSInCallUILaunchReason:(int64_t)reason;
- (void)launchInCallUIForReason:(int64_t)reason withRequestURL:(id)l completion:(id)completion;
- (void)processObserver:(id)observer bundleIdentifier:(id)identifier didUpdateApplicationRunning:(BOOL)running;
@end

@implementation SOSInCallUILauncher

+ (SOSInCallUILauncher)sharedInCallUILauncher
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SOSInCallUILauncher_sharedInCallUILauncher__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInCallUILauncher_onceToken != -1)
  {
    dispatch_once(&sharedInCallUILauncher_onceToken, block);
  }

  v2 = sharedInCallUILauncher_sInCallUILauncher;

  return v2;
}

uint64_t __45__SOSInCallUILauncher_sharedInCallUILauncher__block_invoke(uint64_t a1)
{
  sharedInCallUILauncher_sInCallUILauncher = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)launchInCallUIForReason:(int64_t)reason withRequestURL:(id)l completion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v10 = sos_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_264323000, v10, OS_LOG_TYPE_DEFAULT, "launched for reason: %ld", buf, 0xCu);
  }

  v11 = [objc_opt_class() SOSRemoteAlertActivationReasonForSOSInCallUILaunchReason:reason];
  if (reason > 3)
  {
    if (reason == 5)
    {
      v14 = sos_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [SOSInCallUILauncher launchInCallUIForReason:v14 withRequestURL:? completion:?];
      }

      goto LABEL_18;
    }

    if (reason != 4)
    {
      goto LABEL_19;
    }

LABEL_13:
    v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v14 setScheme:@"telSOS"];
    v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"reason" value:v11];
    v35 = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [v14 setQueryItems:v21];

    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v23 = [v14 URL];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __73__SOSInCallUILauncher_launchInCallUIForReason_withRequestURL_completion___block_invoke;
    v31 = &unk_279B53B28;
    v32 = completionCopy;
    [defaultWorkspace openURL:v23 configuration:0 completionHandler:&v28];

    v24 = [(SOSInCallUILauncher *)self processObserver:v28];

    if (!v24)
    {
      v25 = [[SOSProcessObserver alloc] initWithBundleIdentifier:@"com.apple.InCallService"];
      [(SOSInCallUILauncher *)self setProcessObserver:v25];
    }

    processObserver = [(SOSInCallUILauncher *)self processObserver];
    [processObserver setDelegate:self];

    goto LABEL_18;
  }

  if ((reason - 1) < 2)
  {
    goto LABEL_13;
  }

  if (reason == 3)
  {
    v12 = objc_alloc(MEMORY[0x277D66BD8]);
    v13 = TUInCallRemoteAlertViewControllerClassName();
    v14 = [v12 initWithServiceName:@"com.apple.InCallService" viewControllerClassName:v13];

    v15 = [MEMORY[0x277D66BF0] lookupHandlesForDefinition:v14 creatingIfNone:1];
    firstObject = [v15 firstObject];

    [firstObject addObserver:self];
    v17 = objc_alloc_init(MEMORY[0x277D66BC0]);
    [v17 setReason:v11];
    if (lCopy)
    {
      absoluteString = [lCopy absoluteString];
      if ([absoluteString length])
      {
        v33 = @"SOSRemoteAlertActivationContextUserInfoRequestURLString";
        v34 = absoluteString;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        [v17 setUserInfo:v19];
      }
    }

    [firstObject activateWithContext:v17];

LABEL_18:
  }

LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
}

void __73__SOSInCallUILauncher_launchInCallUIForReason_withRequestURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SOSInCallUILauncher_launchInCallUIForReason_withRequestURL_completion___block_invoke_2;
  v6[3] = &unk_279B53510;
  v7 = v4;
  v8 = *(a1 + 32);
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __73__SOSInCallUILauncher_launchInCallUIForReason_withRequestURL_completion___block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = sos_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "Launched SOS URL with error: %@", &v6, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32) == 0);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)SOSRemoteAlertActivationReasonForSOSInCallUILaunchReason:(int64_t)reason
{
  if ((reason - 1) > 4)
  {
    return @"SOSRemoteAlertAcivationReasonNone";
  }

  else
  {
    return off_279B54008[reason - 1];
  }
}

- (void)processObserver:(id)observer bundleIdentifier:(id)identifier didUpdateApplicationRunning:(BOOL)running
{
  if (!running)
  {
    v6 = [(SOSInCallUILauncher *)self processObserver:observer];
    [v6 setDelegate:0];

    v7 = MEMORY[0x277D85CD0];

    dispatch_async(v7, &__block_literal_global_9);
  }
}

void __84__SOSInCallUILauncher_processObserver_bundleIdentifier_didUpdateApplicationRunning___block_invoke()
{
  v0 = sos_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_264323000, v0, OS_LOG_TYPE_DEFAULT, "InCallService process has stopped running, setting current sos initiation state to idle", v2, 2u);
  }

  v1 = +[SOSManager sharedInstance];
  [v1 setCurrentSOSInitiationState:0];
}

@end