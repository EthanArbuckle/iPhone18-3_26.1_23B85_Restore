@interface WLKOnboarding
+ (BOOL)isOptedIn;
+ (void)optInUserIfNeeded:(id)needed;
+ (void)optInUserIfNeededAndRefreshConfig:(id)config;
@end

@implementation WLKOnboarding

+ (void)optInUserIfNeeded:(id)needed
{
  neededCopy = needed;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__WLKOnboarding_optInUserIfNeeded___block_invoke;
  v5[3] = &unk_279E5EA68;
  v6 = neededCopy;
  v4 = neededCopy;
  [WLKSettingsCloudUtilities synchronizeSettingsFromCloudIfNeededWithCompletion:v5];
}

void __35__WLKOnboarding_optInUserIfNeeded___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = +[WLKSettingsStore sharedSettings];
  v7 = v6;
  if ((a2 & 1) == 0)
  {
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKOnboarding - failed to sync settings from cloud", buf, 2u);
    }

    goto LABEL_8;
  }

  v8 = [v6 optedIn];
  v9 = WLKSystemLogObject();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKOnboarding - Account already opted in.", buf, 2u);
    }

LABEL_8:

    (*(*(a1 + 32) + 16))();
    goto LABEL_12;
  }

  if (v10)
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKOnboarding - Opting user in.", buf, 2u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__WLKOnboarding_optInUserIfNeeded___block_invoke_2;
  v11[3] = &unk_279E5FDD8;
  v13 = *(a1 + 32);
  v12 = v7;
  [WLKSettingsCloudUtilities updateCloudStoreAccountLevelSetting:@"isOptedIn" value:MEMORY[0x277CBEC38] completion:v11];

LABEL_12:
}

void __35__WLKOnboarding_optInUserIfNeeded___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKOnboarding - Finance update success: %@", &v9, 0xCu);
  }

  if (a2)
  {
    [*(a1 + 32) setOptedIn:1];
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)optInUserIfNeededAndRefreshConfig:(id)config
{
  configCopy = config;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__WLKOnboarding_optInUserIfNeededAndRefreshConfig___block_invoke;
  v6[3] = &unk_279E5EA68;
  v7 = configCopy;
  v5 = configCopy;
  [self optInUserIfNeeded:v6];
}

void __51__WLKOnboarding_optInUserIfNeededAndRefreshConfig___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = +[WLKConfigurationManager sharedInstance];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __51__WLKOnboarding_optInUserIfNeededAndRefreshConfig___block_invoke_2;
    v9[3] = &unk_279E5E8A8;
    v10 = *(a1 + 32);
    [v6 fetchConfigurationWithOptions:0 cachePolicy:3 queryParameters:0 completion:v9];
  }

  else
  {
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKOnboarding - Failed to opt in: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __51__WLKOnboarding_optInUserIfNeededAndRefreshConfig___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKSystemLogObject();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      v8 = "WLKOnboarding - Successfully refreshed config";
      v9 = v6;
      v10 = 2;
LABEL_6:
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, v8, &v12, v10);
    }
  }

  else if (v7)
  {
    v12 = 138412290;
    v13 = v5;
    v8 = "WLKOnboarding - Error refreshing config; continuing %@";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), 1);
  v11 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isOptedIn
{
  v2 = +[WLKSettingsStore sharedSettings];
  optedIn = [v2 optedIn];

  return optedIn;
}

@end