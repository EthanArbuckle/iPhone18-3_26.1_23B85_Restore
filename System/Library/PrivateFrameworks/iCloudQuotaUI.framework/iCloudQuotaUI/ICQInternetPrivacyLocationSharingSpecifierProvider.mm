@interface ICQInternetPrivacyLocationSharingSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQInternetPrivacyLocationSharingSpecifierProvider)init;
- (ICQInternetPrivacyLocationSharingSpecifierProvider)initWithAccountManager:(id)a3;
- (NSArray)specifiers;
- (void)_reloadSpecifiers;
- (void)_specifierWasTapped:(id)a3;
- (void)_startFetchingSharingLocationPreference;
@end

@implementation ICQInternetPrivacyLocationSharingSpecifierProvider

- (ICQInternetPrivacyLocationSharingSpecifierProvider)init
{
  v7.receiver = self;
  v7.super_class = ICQInternetPrivacyLocationSharingSpecifierProvider;
  v2 = [(ICQInternetPrivacyLocationSharingSpecifierProvider *)&v7 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_viewModel)
    {
      v4 = objc_alloc_init(ICQInternetPrivacyViewModel);
      viewModel = v3->_viewModel;
      v3->_viewModel = v4;
    }

    [(ICQInternetPrivacyLocationSharingSpecifierProvider *)v3 _startFetchingSharingLocationPreference];
  }

  return v3;
}

- (ICQInternetPrivacyLocationSharingSpecifierProvider)initWithAccountManager:(id)a3
{
  v5 = a3;
  v6 = [(ICQInternetPrivacyLocationSharingSpecifierProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, a3);
  }

  return v7;
}

- (NSArray)specifiers
{
  v26 = *MEMORY[0x277D85DE8];
  p_specifiers = &self->_specifiers;
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = MEMORY[0x277D3FAD8];
    v7 = [(ICQInternetPrivacyViewModel *)self->_viewModel IPAddressLocationEnabledTitle];
    v8 = [v6 groupSpecifierWithID:v7];

    [v5 addObject:v8];
    v9 = MEMORY[0x277D3FAD8];
    v10 = [(ICQInternetPrivacyViewModel *)self->_viewModel IPAddressLocationEnabledTitle];
    v11 = [v9 preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];
    enableSpecifier = self->_enableSpecifier;
    self->_enableSpecifier = v11;

    if (self->_locationSharingEnabled)
    {
      v13 = &unk_288479BD0;
    }

    else
    {
      v13 = &unk_288479BE8;
    }

    v14 = *MEMORY[0x277D3FD68];
    [(PSSpecifier *)self->_enableSpecifier setProperty:v13 forKey:*MEMORY[0x277D3FD68]];
    [(PSSpecifier *)self->_enableSpecifier setButtonAction:sel__specifierWasTapped_];
    [(PSSpecifier *)self->_enableSpecifier setUserInfo:MEMORY[0x277CBEC38]];
    [v5 addObject:self->_enableSpecifier];
    v15 = MEMORY[0x277D3FAD8];
    v16 = [(ICQInternetPrivacyViewModel *)self->_viewModel IPAddressLocationDisabledTitle];
    v17 = [v15 preferenceSpecifierNamed:v16 target:self set:0 get:0 detail:0 cell:3 edit:0];

    if (self->_locationSharingEnabled)
    {
      v18 = &unk_288479BE8;
    }

    else
    {
      v18 = &unk_288479BD0;
    }

    [v17 setProperty:v18 forKey:v14];
    [v17 setButtonAction:sel__specifierWasTapped_];
    [v17 setUserInfo:MEMORY[0x277CBEC28]];
    [v5 addObject:v17];
    viewModel = self->_viewModel;
    if (self->_locationSharingEnabled)
    {
      [(ICQInternetPrivacyViewModel *)viewModel IPAddressLocationEnabledMessage];
    }

    else
    {
      [(ICQInternetPrivacyViewModel *)viewModel IPAddressLocationDisabledMessage];
    }
    v20 = ;
    [v8 setProperty:v20 forKey:*MEMORY[0x277D3FF88]];
    objc_storeStrong(p_specifiers, v5);
    v21 = _ICQGetLogSystem();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *p_specifiers;
      *buf = 138412290;
      v25 = v22;
      _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyLocationSharingSpecifierProvider returning specifiers %@", buf, 0xCu);
    }

    specifiers = *p_specifiers;
  }

  return specifiers;
}

- (void)_specifierWasTapped:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Location Sharing Specifier Tapped: %@", buf, 0xCu);
  }

  v6 = [v4 userInfo];
  viewModel = self->_viewModel;
  v8 = [v6 BOOLValue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__ICQInternetPrivacyLocationSharingSpecifierProvider__specifierWasTapped___block_invoke;
  v9[3] = &unk_27A65AFF0;
  v9[4] = self;
  [(ICQInternetPrivacyViewModel *)viewModel enableLocationSharing:v8 completion:v9];
}

uint64_t __74__ICQInternetPrivacyLocationSharingSpecifierProvider__specifierWasTapped___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _startFetchingSharingLocationPreference];
  }

  return result;
}

- (void)_startFetchingSharingLocationPreference
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICQInternetPrivacyLocationSharingSpecifierProvider _startFetchingSharingLocationPreference]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  viewModel = self->_viewModel;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __93__ICQInternetPrivacyLocationSharingSpecifierProvider__startFetchingSharingLocationPreference__block_invoke;
  v5[3] = &unk_27A65A750;
  v5[4] = self;
  [(ICQInternetPrivacyViewModel *)viewModel isLocationSharingEnabled:v5];
}

- (void)_reloadSpecifiers
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v5 = [(NSArray *)self->_specifiers copy];
  specifiers = self->_specifiers;
  self->_specifiers = 0;

  v4 = [(ICQInternetPrivacyLocationSharingSpecifierProvider *)self delegate];
  [v4 reloadSpecifiersForProvider:self oldSpecifiers:v5 animated:0];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end