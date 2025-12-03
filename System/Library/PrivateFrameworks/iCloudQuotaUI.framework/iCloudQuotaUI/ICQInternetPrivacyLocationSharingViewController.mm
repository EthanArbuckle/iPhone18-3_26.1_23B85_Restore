@interface ICQInternetPrivacyLocationSharingViewController
- (ICQInternetPrivacyLocationSharingViewController)init;
- (id)specifiers;
- (void)_setupNavigationBar;
- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ICQInternetPrivacyLocationSharingViewController

- (ICQInternetPrivacyLocationSharingViewController)init
{
  v6.receiver = self;
  v6.super_class = ICQInternetPrivacyLocationSharingViewController;
  v2 = [(ICQInternetPrivacyLocationSharingViewController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICQInternetPrivacyLocationSharingSpecifierProvider);
    specifierProvider = v2->_specifierProvider;
    v2->_specifierProvider = v3;

    [(ICQInternetPrivacyLocationSharingSpecifierProvider *)v2->_specifierProvider setDelegate:v2];
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = ICQInternetPrivacyLocationSharingViewController;
  [(ICQInternetPrivacyLocationSharingViewController *)&v4 viewWillAppear:appear];
  [(ICQInternetPrivacyLocationSharingViewController *)self _setupNavigationBar];
}

- (void)_setupNavigationBar
{
  navigationItem = [(ICQInternetPrivacyLocationSharingViewController *)self navigationItem];
  iPAddressLocationSettingsTitle = [(ICQInternetPrivacyViewModel *)self->_viewModel IPAddressLocationSettingsTitle];
  [navigationItem setTitle:iPAddressLocationSettingsTitle];
}

- (id)specifiers
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D3FC48];
  if (!*(&self->super.super.super.super.super.isa + v3))
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyLocationSharingViewController is loading specifiers.", &v13, 2u);
    }

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    specifierProvider = [(ICQInternetPrivacyLocationSharingViewController *)self specifierProvider];
    specifiers = [specifierProvider specifiers];
    [v5 addObjectsFromArray:specifiers];

    v8 = *(&self->super.super.super.super.super.isa + v3);
    *(&self->super.super.super.super.super.isa + v3) = v5;
  }

  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(&self->super.super.super.super.super.isa + v3);
    v13 = 138412290;
    v14 = v10;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyLocationSharingViewController specifiers: returning %@", &v13, 0xCu);
  }

  v11 = *(&self->super.super.super.super.super.isa + v3);

  return v11;
}

- (void)reloadSpecifiersForProvider:(id)provider oldSpecifiers:(id)specifiers animated:(BOOL)animated
{
  v10 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = providerCopy;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Reloading specifiers for provider %@", &v8, 0xCu);
  }

  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [(ICQInternetPrivacyLocationSharingViewController *)self reloadSpecifiers];
}

@end