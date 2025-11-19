@interface VSViewControllerFactory
+ (id)sharedFactory;
- (VSViewControllerFactory)init;
- (id)authenticationViewControllerForViewModel:(id)a3;
- (id)identityProviderPickerViewControllerWithIdentityProviders:(id)a3;
- (id)loadingViewController;
- (id)viewControllerForAppsSupportedByIdentityProvider:(id)a3 supportedApps:(id)a4 delegate:(id)a5;
- (id)viewControllerForPlaybackActivityReportingFromAppsWithBundleIDs:(id)a3 grantingVouchers:(BOOL)a4 appleAccountName:(id)a5 identityProvider:(id)a6 completionHandler:(id)a7;
- (id)viewControllerForUnsupportedProvider:(id)a3 withRequestingAppDisplayName:(id)a4 storage:(id)a5 acknowledgementHandler:(id)a6;
- (id)viewControllerToConfirmAccountDeletionForAccount:(id)a3 preferredStyle:(int64_t)a4 confirmationHandler:(id)a5;
- (id)viewControllerToConfirmDeveloperIdentityProviderDeletionWithConfirmationHandler:(id)a3;
- (void)viewServiceRemoteViewControllerWithCompletion:(id)a3;
@end

@implementation VSViewControllerFactory

+ (id)sharedFactory
{
  if (sharedFactory___vs_lazy_init_predicate != -1)
  {
    +[VSViewControllerFactory sharedFactory];
  }

  v3 = sharedFactory___vs_lazy_init_variable;

  return v3;
}

uint64_t __40__VSViewControllerFactory_sharedFactory__block_invoke()
{
  sharedFactory___vs_lazy_init_variable = objc_alloc_init(VSViewControllerFactory);

  return MEMORY[0x2821F96F8]();
}

- (VSViewControllerFactory)init
{
  v6.receiver = self;
  v6.super_class = VSViewControllerFactory;
  v2 = [(VSViewControllerFactory *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v3;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSViewControllerFactory"];
    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)viewServiceRemoteViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The completion parameter must not be nil."];
  }

  v4 = objc_opt_class();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__VSViewControllerFactory_viewServiceRemoteViewControllerWithCompletion___block_invoke;
  v7[3] = &unk_279E19FD8;
  v8 = v3;
  v5 = v3;
  v6 = [v4 requestViewController:@"VSViewServiceViewController" fromServiceWithBundleIdentifier:@"com.apple.VSViewService" connectionHandler:v7];
}

void __73__VSViewControllerFactory_viewServiceRemoteViewControllerWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = MEMORY[0x277CBEAD8];
      v6 = *MEMORY[0x277CBE660];
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      [v5 raise:v6 format:{@"Unexpectedly, readyViewController was %@, instead of VSViewServiceRemoteViewController.", v8}];
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    v4 = VSPublicError();
    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (id)identityProviderPickerViewControllerWithIdentityProviders:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(VSIdentityProviderPickerViewController_iOS);
  [(VSIdentityProviderPickerViewController_iOS *)v4 setIdentityProviders:v3];

  v5 = [MEMORY[0x277CE2298] optionalWithObject:v4];

  return v5;
}

- (id)authenticationViewControllerForViewModel:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = MEMORY[0x277CBEAD8];
      v5 = *MEMORY[0x277CBE660];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      [v4 raise:v5 format:{@"Unexpectedly, viewModel was %@, instead of VSCredentialEntryViewModel.", v7}];
    }

    v8 = VSCredentialEntryViewController_iOS;
LABEL_13:
    v17 = v3;
    v18 = objc_alloc_init(v8);
    [v18 setViewModel:v17];

    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = MEMORY[0x277CBEAD8];
      v10 = *MEMORY[0x277CBE660];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [v9 raise:v10 format:{@"Unexpectedly, viewModel was %@, instead of VSAutoAuthenticationViewModel.", v12}];
    }

    v8 = VSAutoAuthenticationViewController_iOS;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = MEMORY[0x277CBEAD8];
      v14 = *MEMORY[0x277CBE660];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      [v13 raise:v14 format:{@"Unexpectedly, viewModel was %@, instead of VSWebAuthenticationViewModel.", v16}];
    }

    v8 = VSWebAuthenticationViewController;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = MEMORY[0x277CBEAD8];
      v22 = *MEMORY[0x277CBE660];
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      [v21 raise:v22 format:{@"Unexpectedly, viewModel was %@, instead of VSOnscreenCodeViewModel.", v24}];
    }

    [0 setViewModel:v3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = MEMORY[0x277CBEAD8];
        v26 = *MEMORY[0x277CBE660];
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        [v25 raise:v26 format:{@"Unexpectedly, viewModel was %@, instead of VSTwoFactorEntryViewModel.", v28}];
      }

      v8 = VSTwoFactorEntryViewController_iOS;
      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_14:
  v19 = [MEMORY[0x277CE2298] optionalWithObject:v18];

  return v19;
}

- (id)loadingViewController
{
  v2 = objc_alloc_init(VSLoadingViewController_iOS);
  v3 = [MEMORY[0x277CE2298] optionalWithObject:v2];

  return v3;
}

- (id)viewControllerToConfirmAccountDeletionForAccount:(id)a3 preferredStyle:(int64_t)a4 confirmationHandler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCA8D8];
  v10 = a3;
  v11 = [v9 vs_frameworkBundle];
  v12 = [v11 localizedStringForKey:@"SIGN_OUT_CONFIRMATION_TITLE_FORMAT" value:0 table:0];
  v13 = [v10 identityProviderDisplayName];
  v14 = [v8 stringWithFormat:v12, v13];

  LODWORD(v11) = [v10 isSynchronizable];
  v15 = 0;
  if (v11)
  {
    v16 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v15 = [v16 localizedStringForKey:@"DELETE_ACCOUNT_CONFIRMATION_MESSAGE_FORMAT_GENERIC" value:0 table:0];
  }

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v14 message:v15 preferredStyle:a4];
  v18 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v19 = [v18 localizedStringForKey:@"SIGN_OUT_BUTTON_TITLE" value:0 table:0];

  v20 = MEMORY[0x277D750F8];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __111__VSViewControllerFactory_viewControllerToConfirmAccountDeletionForAccount_preferredStyle_confirmationHandler___block_invoke;
  v27[3] = &unk_279E199B8;
  v28 = v7;
  v21 = v7;
  v22 = [v20 actionWithTitle:v19 style:2 handler:v27];
  [v17 addAction:v22];
  v23 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v24 = [v23 localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];

  v25 = [MEMORY[0x277D750F8] actionWithTitle:v24 style:1 handler:0];
  [v17 addAction:v25];

  return v17;
}

- (id)viewControllerToConfirmDeveloperIdentityProviderDeletionWithConfirmationHandler:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CE2238] currentDevice];
  v5 = [v4 developerIdentityProviderDeletionConfirmationMessage];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v5 message:0 preferredStyle:0];
  v7 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v8 = [v7 localizedStringForKey:@"DEVELOPER_DELETION_ACTION_TITLE" value:0 table:0];

  v9 = MEMORY[0x277D750F8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__VSViewControllerFactory_viewControllerToConfirmDeveloperIdentityProviderDeletionWithConfirmationHandler___block_invoke;
  v17[3] = &unk_279E199B8;
  v18 = v3;
  v10 = v3;
  v11 = [v9 actionWithTitle:v8 style:2 handler:v17];
  [v6 addAction:v11];
  v12 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v13 = [v12 localizedStringForKey:@"CANCEL_TITLE" value:0 table:0];

  v14 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:0];
  [v6 addAction:v14];
  v15 = [MEMORY[0x277CE2298] optionalWithObject:v6];

  return v15;
}

- (id)viewControllerForUnsupportedProvider:(id)a3 withRequestingAppDisplayName:(id)a4 storage:(id)a5 acknowledgementHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v44 = a6;
  v13 = [v10 displayName];
  v14 = [v13 forceUnwrapObject];

  v45 = v11;
  v43 = v14;
  if (v11)
  {
    v15 = v11;
    v16 = [v10 isProhibitedByStore];
    v17 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v18 = v17;
    if (v16)
    {
      v19 = [v17 localizedStringForKey:@"UNSUPPORTED_PROVIDER_TITLE_FORMAT" value:0 table:0];

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v14];
      v21 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v22 = [v21 localizedStringForKey:@"UNSUPPORTED_PROVIDER_MESSAGE_FORMAT" value:0 table:0];

      [MEMORY[0x277CCACA8] stringWithFormat:v22, v15, v41];
    }

    else
    {
      v19 = [v17 localizedStringForKey:@"UNSUPPORTED_APP_TITLE_FORMAT" value:0 table:0];

      v20 = [MEMORY[0x277CCACA8] stringWithFormat:v19, v15, v14];
      v25 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
      v22 = [v25 localizedStringForKey:@"UNSUPPORTED_APP_MESSAGE_FORMAT" value:0 table:0];

      [MEMORY[0x277CCACA8] stringWithFormat:v22, v14, v15];
    }
    v24 = ;
  }

  else
  {
    v23 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v15 = [v23 localizedStringForKey:@"UNSUPPORTED_PROVIDER_TITLE_FORMAT" value:0 table:0];

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:v15, v14];
    v19 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
    v24 = [v19 localizedStringForKey:@"UNSUPPORTED_PROVIDER_SYSTEM_MESSAGE" value:0 table:0];
  }

  v42 = v20;

  v26 = [MEMORY[0x277D75110] alertControllerWithTitle:v20 message:v24 preferredStyle:1];
  v27 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v28 = [v27 localizedStringForKey:@"ERROR_DISMISS_BUTTON_TITLE" value:0 table:0];

  v29 = MEMORY[0x277D750F8];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke;
  v48[3] = &unk_279E1A028;
  v49 = v10;
  v50 = v12;
  v30 = v44;
  v51 = self;
  v52 = v30;
  v31 = v12;
  v32 = v10;
  v33 = [v29 actionWithTitle:v28 style:0 handler:v48];
  [v26 addAction:v33];
  v34 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v35 = [v34 localizedStringForKey:@"CHOOSE_ANOTHER_PROVIDER_BUTTON_TITLE" value:0 table:0];

  v36 = MEMORY[0x277D750F8];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke_3;
  v46[3] = &unk_279E199B8;
  v47 = v30;
  v37 = v30;
  v38 = [v36 actionWithTitle:v35 style:1 handler:v46];
  [v26 addAction:v38];
  v39 = [MEMORY[0x277CE2298] optionalWithObject:v26];

  return v39;
}

void __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CE21B8]);
  if (([*(a1 + 32) isDeveloper] & 1) == 0)
  {
    v3 = [*(a1 + 32) providerID];
    v4 = [v3 forceUnwrapObject];

    [MEMORY[0x277CE2288] recordSignInEventWithProviderIdentifier:v4 supportedProvider:0 channelAdamID:0 signInType:*MEMORY[0x277CE24A8] error:0];
  }

  v5 = [*(a1 + 32) providerID];
  [v2 setIdentityProviderID:v5];

  v6 = [*(a1 + 32) displayName];
  [v2 setOptionalIdentityProviderDisplayName:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEA90]);
  v8 = [objc_alloc(MEMORY[0x277CE2290]) initWithSerializedData:v7];
  v9 = [MEMORY[0x277CE2298] optionalWithObject:v8];
  [v2 setAuthenticationToken:v9];

  v10 = objc_alloc_init(MEMORY[0x277CE21C0]);
  v11 = objc_alloc(MEMORY[0x277CE21E8]);
  v21[0] = v2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v13 = [v11 initWithUnsavedAccounts:v12 channels:v10 storage:*(a1 + 40)];

  v18 = MEMORY[0x277D85DD0];
  v19 = v13;
  v20 = *(a1 + 56);
  v14 = v13;
  v15 = VSMainThreadOperationWithBlock();
  [v15 addDependency:{v14, v18, 3221225472, __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke_2, &unk_279E1A000}];
  VSEnqueueCompletionOperation();
  v16 = [*(a1 + 48) privateQueue];
  [v16 addOperation:v14];

  v17 = *MEMORY[0x277D85DE8];
}

void __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CE2298];
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v3 = [v5 forceUnwrapObject];
  v4 = [v1 optionalWithObject:v3];
  (*(v2 + 16))(v2, v4);
}

void __124__VSViewControllerFactory_viewControllerForUnsupportedProvider_withRequestingAppDisplayName_storage_acknowledgementHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x277CE2298]);
  (*(v1 + 16))(v1, v2);
}

- (id)viewControllerForAppsSupportedByIdentityProvider:(id)a3 supportedApps:(id)a4 delegate:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(VSSupportedAppsViewController);
  [(VSSupportedAppsViewController *)v10 setDelegate:v8];

  v11 = [MEMORY[0x277CE2298] optionalWithObject:v9];

  [(VSSupportedAppsViewController *)v10 setIdentityProvider:v11];
  if (v7)
  {
    [(VSSupportedAppsViewController *)v10 setSupportedApps:v7];
  }

  [(VSSupportedAppsViewController *)v10 beginLoadingImages];
  v12 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v13 = [v12 localizedStringForKey:@"SUPPORTED_APPS_TITLE" value:0 table:0];
  [(VSSupportedAppsViewController *)v10 setTitle:v13];

  v14 = objc_alloc_init(MEMORY[0x277D757A0]);
  v19[0] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  [v14 setViewControllers:v15];

  [v14 setModalPresentationStyle:2];
  v16 = [MEMORY[0x277CE2298] optionalWithObject:v14];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)viewControllerForPlaybackActivityReportingFromAppsWithBundleIDs:(id)a3 grantingVouchers:(BOOL)a4 appleAccountName:(id)a5 identityProvider:(id)a6 completionHandler:(id)a7
{
  v9 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x277CBEB38];
  v15 = a3;
  v16 = objc_alloc_init(v14);
  v17 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v18 = [v17 localizedStringForKey:@"PLAYBACK_ACTIVITY_REPORTING_CONSENT_TITLE" value:0 table:0];

  v19 = 0x277CCA000;
  v40 = v12;
  if (v12)
  {
    v20 = MEMORY[0x277CCA8D8];
    v21 = v12;
    v22 = [v20 vs_frameworkBundle];
    v23 = [v22 localizedStringForKey:@"PLAYBACK_ACTIVITY_REPORTING_CONSENT_TITLE_FORMAT" value:0 table:0];

    v24 = [v21 displayName];

    v25 = [v24 forceUnwrapObject];

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:v23, v25];

    v19 = 0x277CCA000uLL;
    v18 = v26;
  }

  [v16 setObject:v18 forKey:*MEMORY[0x277D78320]];
  v27 = [MEMORY[0x277CCA8D8] vs_frameworkBundle];
  v28 = v27;
  if (v9)
  {
    v29 = @"PLAYBACK_ACTIVITY_REPORTING_COMBINED_CONSENT_MESSAGE_FORMAT";
  }

  else
  {
    v29 = @"PLAYBACK_ACTIVITY_REPORTING_CONSENT_MESSAGE_FORMAT";
  }

  v30 = [v27 localizedStringForKey:v29 value:0 table:0];

  v31 = [*(v19 + 3240) stringWithFormat:v30, v11];

  [v16 setObject:v31 forKey:*MEMORY[0x277D78318]];
  if (v11)
  {
    [v16 setObject:v11 forKey:*MEMORY[0x277D78310]];
  }

  v32 = objc_alloc(MEMORY[0x277D782F8]);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __160__VSViewControllerFactory_viewControllerForPlaybackActivityReportingFromAppsWithBundleIDs_grantingVouchers_appleAccountName_identityProvider_completionHandler___block_invoke;
  v41[3] = &unk_279E1A078;
  v42 = v13;
  v33 = v13;
  v34 = [v32 initWithBundleIDs:v15 options:v16 completionHandler:v41];

  v35 = objc_alloc_init(MEMORY[0x277D75D28]);
  v36 = [v35 view];
  [v35 addChildViewController:v34];
  v37 = [v34 view];
  [v36 bounds];
  [v37 setFrame:?];
  [v37 setAutoresizingMask:18];
  [v36 addSubview:v37];
  [v34 didMoveToParentViewController:v35];
  v38 = [MEMORY[0x277CE2298] optionalWithObject:v35];

  return v38;
}

void __160__VSViewControllerFactory_viewControllerForPlaybackActivityReportingFromAppsWithBundleIDs_grantingVouchers_appleAccountName_identityProvider_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    *buf = 138412290;
    v9 = v5;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Received access result: %@.", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  VSPerformBlockOnMainThread();

  v6 = *MEMORY[0x277D85DE8];
}

@end