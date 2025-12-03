@interface ICSPrivateEmailSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (BOOL)handleURL:(id)l;
- (ICSPrivateEmailSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter;
- (NSArray)specifiers;
- (UIViewController)presenter;
- (id)account;
- (void)_fetchCloudStorageSummary;
- (void)_privateEmailSpecifierWasTapped:(id)tapped;
- (void)_reloadPrivateEmailSpecifier;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
@end

@implementation ICSPrivateEmailSpecifierProvider

- (ICSPrivateEmailSpecifierProvider)initWithAccountManager:(id)manager presenter:(id)presenter
{
  objc_storeStrong(&self->_accountManager, manager);
  presenterCopy = presenter;
  objc_storeWeak(&self->_presenter, presenterCopy);

  [(ICSPrivateEmailSpecifierProvider *)self _fetchCloudStorageSummary];
  return self;
}

- (id)account
{
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v3 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  return v3;
}

- (NSArray)specifiers
{
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"PRIVATE_EMAIL_ADDRESSES" value:&stru_288487370 table:@"Localizable-AppleID"];
    v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:1 edit:0];
    privateEmailSpecifier = self->privateEmailSpecifier;
    self->privateEmailSpecifier = v8;

    [(PSSpecifier *)self->privateEmailSpecifier setControllerLoadAction:sel__privateEmailSpecifierWasTapped_];
    [(PSSpecifier *)self->privateEmailSpecifier setIdentifier:@"PRIVATE_EMAIL_MANAGE"];
    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v10 imageNamed:@"privateEmailAddressIcon.png" inBundle:v11];

    [(PSSpecifier *)self->privateEmailSpecifier setProperty:v12 forKey:*MEMORY[0x277D3FFC0]];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      storageSummary = self->_storageSummary;
      if (!storageSummary)
      {

        goto LABEL_9;
      }

      subscriptionInfo = [(ICQCloudStorageSummary *)storageSummary subscriptionInfo];
      isiCloudPlusSubscriber = [subscriptionInfo isiCloudPlusSubscriber];

      if (isiCloudPlusSubscriber)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    [array addObject:self->privateEmailSpecifier];
LABEL_9:
    v17 = [array copy];
    v18 = self->_specifiers;
    self->_specifiers = v17;

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (void)_reloadPrivateEmailSpecifier
{
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:0];
}

- (void)_privateEmailSpecifierWasTapped:(id)tapped
{
  v25[3] = *MEMORY[0x277D85DE8];
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained specifierProvider:self willBeginLoadingSpecifier:tappedCopy];

  v6 = [MEMORY[0x277CF02F0] bagForAltDSID:0];
  privateEmailManageURL = [v6 privateEmailManageURL];

  v8 = objc_alloc_init(MEMORY[0x277CCAB70]);
  v24 = privateEmailManageURL;
  [v8 setURL:privateEmailManageURL];
  [v8 setHTTPMethod:@"GET"];
  v9 = LogSubsystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(ICSPrivateEmailSpecifierProvider *)v8 _privateEmailSpecifierWasTapped:v9];
  }

  v10 = objc_alloc_init(ICSMatterhornUpsellHook);
  v11 = objc_alloc_init(ICSPrivateEmailUpdateCacheHook);
  accounts = [(AIDAAccountManager *)self->_accountManager accounts];
  v13 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];

  v14 = objc_alloc(MEMORY[0x277CECA40]);
  aa_altDSID = [v13 aa_altDSID];
  v16 = [v14 initWithAltDSID:aa_altDSID upgradeContext:*MEMORY[0x277CF00A0]];

  v25[0] = v10;
  v25[1] = v11;
  v25[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:3];
  v18 = objc_alloc(MEMORY[0x277CECA58]);
  accountManager = self->_accountManager;
  v20 = objc_loadWeakRetained(&self->_presenter);
  v21 = [v18 initWithAccountManager:accountManager presenter:v20 hooks:v17];
  privateEmailPresenter = self->_privateEmailPresenter;
  self->_privateEmailPresenter = v21;

  [(AAUIGrandSlamRemoteUIPresenter *)self->_privateEmailPresenter setDelegate:self];
  [(AAUIGrandSlamRemoteUIPresenter *)self->_privateEmailPresenter loadRequest:v8];

  v23 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  errorCopy = error;
  v6 = LogSubsystem();
  v7 = v6;
  if (errorCopy)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [ICSPrivateEmailSpecifierProvider remoteUIRequestComplete:errorCopy error:v7];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275819000, v7, OS_LOG_TYPE_DEFAULT, "private email specifier provider success", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__ICSPrivateEmailSpecifierProvider_remoteUIRequestComplete_error___block_invoke;
  block[3] = &unk_27A666198;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__ICSPrivateEmailSpecifierProvider_remoteUIRequestComplete_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((*(a1 + 32) + 40));
    v3 = *(a1 + 32);
    v4 = [*(v3 + 48) specifierForID:@"PRIVATE_EMAIL_MANAGE"];
    [v5 specifierProvider:v3 didFinishLoadingSpecifier:v4];
  }
}

- (void)_fetchCloudStorageSummary
{
  v3 = objc_alloc(MEMORY[0x277D7F338]);
  account = [(ICSPrivateEmailSpecifierProvider *)self account];
  v5 = [v3 initWithAccount:account];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__ICSPrivateEmailSpecifierProvider__fetchCloudStorageSummary__block_invoke;
  v6[3] = &unk_27A666840;
  v6[4] = self;
  [v5 fetchStorageSummaryWithCompletion:v6];
}

void __61__ICSPrivateEmailSpecifierProvider__fetchCloudStorageSummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v5;
  v9 = v5;

  if (v6)
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __61__ICSPrivateEmailSpecifierProvider__fetchCloudStorageSummary__block_invoke_cold_1(v6, v10);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__ICSPrivateEmailSpecifierProvider__fetchCloudStorageSummary__block_invoke_80;
  block[3] = &unk_27A666198;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)handleURL:(id)l
{
  v4 = [l objectForKeyedSubscript:@"path"];
  v5 = [v4 isEqualToString:@"PRIVATE_EMAIL_MANAGE"];
  if (v5)
  {
    [(ICSPrivateEmailSpecifierProvider *)self _privateEmailSpecifierWasTapped:self->privateEmailSpecifier];
  }

  return v5;
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

- (void)_privateEmailSpecifierWasTapped:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_275819000, a2, OS_LOG_TYPE_DEBUG, "Private email specifier tapped, url %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIRequestComplete:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "private email specifier failed with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__ICSPrivateEmailSpecifierProvider__fetchCloudStorageSummary__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_275819000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch storage summary with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end