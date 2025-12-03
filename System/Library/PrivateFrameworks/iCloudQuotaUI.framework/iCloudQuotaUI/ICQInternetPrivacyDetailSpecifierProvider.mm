@interface ICQInternetPrivacyDetailSpecifierProvider
- (AAUISpecifierProviderDelegate)delegate;
- (ICQInternetPrivacyDetailDelegate)detailDelegate;
- (ICQInternetPrivacyDetailSpecifierProvider)initWithAccountManager:(id)manager;
- (ICQInternetPrivacyDetailSpecifierProvider)initWithViewModel:(id)model accountManager:(id)manager;
- (NSArray)specifiers;
- (UIViewController)presenter;
- (id)_IPAddressLocationSpecifier;
- (id)_bannerSpecifiers;
- (id)_explanationSpecifiers;
- (id)_serviceEnabledForSpecifier:(id)specifier;
- (id)_serviceEnabledSpecifier;
- (id)_switchOffAlert;
- (id)_switchOffUnsupportedCellularAlert;
- (id)_switchOffUnsupportedWifiAlert;
- (id)_turnOffUnsupportedCellularAlert;
- (id)_turnOffUnsupportedWifiAlert;
- (id)_turnOnDNSAlert;
- (id)_turnOnSafariAlert;
- (void)_IPAddressLocationSpecifierWasTapped:(id)tapped;
- (void)_openSystemStatusSpecifierWasTapped;
- (void)_pausePrivateRelay;
- (void)_refreshStatusAndPostNotification;
- (void)_reloadSpecifiers;
- (void)_setServiceEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)_startFetchingBannerModels;
- (void)_turnOffCellularSpecifierWasTapped;
- (void)_turnOffWifiSpecifierWasTapped;
- (void)_turnOnCellularSpecifierWasTapped;
- (void)_turnOnDNSSpecifierWasTapped;
- (void)_turnOnSafariSpecifierWasTapped;
- (void)_turnOnWifiSpecifierWasTapped;
- (void)_unsupportedCellularLearnMoreSpecifierWasTapped;
- (void)_unsupportedRegionLearnMoreSpecifierWasTapped;
- (void)_unsupportedWiFiLearnMoreSpecifierWasTapped;
- (void)_updateEnableStatusTo:(BOOL)to;
- (void)presentIncompatibleSitesHelp;
@end

@implementation ICQInternetPrivacyDetailSpecifierProvider

- (ICQInternetPrivacyDetailSpecifierProvider)initWithViewModel:(id)model accountManager:(id)manager
{
  modelCopy = model;
  managerCopy = manager;
  v24.receiver = self;
  v24.super_class = ICQInternetPrivacyDetailSpecifierProvider;
  v9 = [(ICQInternetPrivacyDetailSpecifierProvider *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    objc_storeStrong(&v10->_accountManager, manager);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    accounts = [managerCopy accounts];
    v14 = [accounts objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
    aa_altDSID = [v14 aa_altDSID];
    v16 = aa_altDSID;
    if (aa_altDSID)
    {
      aa_altDSID2 = aa_altDSID;
    }

    else
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
      aa_altDSID2 = [aa_primaryAppleAccount aa_altDSID];
    }

    v20 = MEMORY[0x277CFB450];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __78__ICQInternetPrivacyDetailSpecifierProvider_initWithViewModel_accountManager___block_invoke;
    v22[3] = &unk_27A65AD68;
    v23 = v10;
    [v20 requestGeoClassificationForFeatureID:@"networking.privacy.subscriber" bundleID:bundleIdentifier altDSID:aa_altDSID2 ignoreCache:0 completion:v22];
  }

  return v10;
}

uint64_t __78__ICQInternetPrivacyDetailSpecifierProvider_initWithViewModel_accountManager___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = a2 == 2;
  v4 = [*(a1 + 32) viewModel];
  [v4 setServiceIsLimited:v3];

  v5 = *(a1 + 32);

  return [v5 _startFetchingBannerModels];
}

- (ICQInternetPrivacyDetailSpecifierProvider)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v6 = [(ICQInternetPrivacyDetailSpecifierProvider *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountManager, manager);
  }

  return v7;
}

- (NSArray)specifiers
{
  v14 = *MEMORY[0x277D85DE8];
  specifiers = self->_specifiers;
  if (!specifiers)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _explanationSpecifiers = [(ICQInternetPrivacyDetailSpecifierProvider *)self _explanationSpecifiers];
    [v4 addObjectsFromArray:_explanationSpecifiers];

    if ([(NSArray *)self->_banners count])
    {
      _bannerSpecifiers = [(ICQInternetPrivacyDetailSpecifierProvider *)self _bannerSpecifiers];
      [v4 addObjectsFromArray:_bannerSpecifiers];
    }

    v7 = [v4 copy];
    v8 = self->_specifiers;
    self->_specifiers = v7;

    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_specifiers;
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "ICQInternetPrivacyDetailSpecifierProvider returning specifiers %@", &v12, 0xCu);
    }

    specifiers = self->_specifiers;
  }

  return specifiers;
}

- (id)_serviceEnabledSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  switchTitle = [viewModel switchTitle];
  v6 = [v3 preferenceSpecifierNamed:switchTitle target:self set:sel__setServiceEnabled_forSpecifier_ get:sel__serviceEnabledForSpecifier_ detail:0 cell:6 edit:0];

  [v6 setButtonAction:sel__setServiceEnabled_forSpecifier_];

  return v6;
}

- (id)_IPAddressLocationSpecifier
{
  v3 = MEMORY[0x277D3FAD8];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  iPAddressLocationTitle = [viewModel IPAddressLocationTitle];
  v6 = [v3 preferenceSpecifierNamed:iPAddressLocationTitle target:self set:0 get:0 detail:0 cell:2 edit:0];

  [v6 setControllerLoadAction:sel__IPAddressLocationSpecifierWasTapped_];

  return v6;
}

- (id)_explanationSpecifiers
{
  v44 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"INTERNET_PRIVACY_EXPLANATION"];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 setProperty:v5 forKey:*MEMORY[0x277D3FF48]];

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  privateRelayPausedMessage = [viewModel privateRelayPausedMessage];
  v8 = [privateRelayPausedMessage mutableCopy];

  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  incompatibleSitesMessage = [viewModel2 incompatibleSitesMessage];
  [v8 appendString:incompatibleSitesMessage];

  [v8 appendString:@" "];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  learnMoreLinkTitle = [viewModel3 learnMoreLinkTitle];
  [v8 appendString:learnMoreLinkTitle];

  v45 = v8;
  v13 = [v8 copy];
  [v3 setProperty:v13 forKey:*MEMORY[0x277D3FF70]];

  viewModel4 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  privateRelayPausedMessage2 = [viewModel4 privateRelayPausedMessage];
  v16 = [privateRelayPausedMessage2 length];
  viewModel5 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  incompatibleSitesMessage2 = [viewModel5 incompatibleSitesMessage];
  v19 = v16 + [incompatibleSitesMessage2 length];
  viewModel6 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  learnMoreLinkTitle2 = [viewModel6 learnMoreLinkTitle];
  v22 = [learnMoreLinkTitle2 length];

  v47.location = v19 + 1;
  v47.length = v22;
  v23 = NSStringFromRange(v47);
  [v3 setProperty:v23 forKey:*MEMORY[0x277D3FF58]];

  v24 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
  [v3 setProperty:v24 forKey:*MEMORY[0x277D3FF68]];

  [v3 setProperty:@"presentIncompatibleSitesHelp" forKey:*MEMORY[0x277D3FF50]];
  [v44 addObject:v3];
  v25 = MEMORY[0x277D3FAD8];
  viewModel7 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  explanationTitle = [viewModel7 explanationTitle];
  v28 = [v25 preferenceSpecifierNamed:explanationTitle target:self set:0 get:0 detail:0 cell:3 edit:0];

  [v28 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  viewModel8 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  explanationTitle2 = [viewModel8 explanationTitle];
  [v28 setProperty:explanationTitle2 forKey:*MEMORY[0x277D40170]];

  viewModel9 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  explanationMessage = [viewModel9 explanationMessage];
  [v28 setProperty:explanationMessage forKey:*MEMORY[0x277D40160]];

  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"ABOUT_PRIVATE_RELAY_LINK_URL" value:&stru_28844FC60 table:@"Localizable"];
  [v28 setObject:v34 forKeyedSubscript:*MEMORY[0x277CEC990]];

  v35 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v36 = [v35 localizedStringForKey:@"ABOUT_PRIVATE_RELAY_LINK_TITLE" value:&stru_28844FC60 table:@"Localizable"];
  [v28 setObject:v36 forKeyedSubscript:*MEMORY[0x277CEC998]];

  v37 = [MEMORY[0x277D755B8] icqBundleImageNamed:@"PrivateRelayLargeIcon"];
  [v28 setProperty:v37 forKey:*MEMORY[0x277D3FFC0]];
  [v28 setProperty:&unk_288479C60 forKey:*MEMORY[0x277D3FD78]];
  [v44 addObject:v28];
  viewModel10 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  LODWORD(explanationTitle) = [viewModel10 isEnabled];

  if (explanationTitle)
  {
    _IPAddressLocationSpecifier = [(ICQInternetPrivacyDetailSpecifierProvider *)self _IPAddressLocationSpecifier];
    [v44 addObject:_IPAddressLocationSpecifier];
  }

  _serviceEnabledSpecifier = [(ICQInternetPrivacyDetailSpecifierProvider *)self _serviceEnabledSpecifier];
  enableSwitchSpecifer = self->_enableSwitchSpecifer;
  self->_enableSwitchSpecifer = _serviceEnabledSpecifier;

  [v44 addObject:self->_enableSwitchSpecifer];
  v42 = [v44 copy];

  return v42;
}

- (id)_bannerSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  banners = self->_banners;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __62__ICQInternetPrivacyDetailSpecifierProvider__bannerSpecifiers__block_invoke;
  v11 = &unk_27A65BFF8;
  v12 = array;
  selfCopy = self;
  v5 = array;
  [(NSArray *)banners enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];

  return v6;
}

void __62__ICQInternetPrivacyDetailSpecifierProvider__bannerSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D3FAD8];
  v5 = [v3 title];
  v6 = [v4 groupSpecifierWithID:v5];

  [*(a1 + 32) addObject:v6];
  v7 = MEMORY[0x277D3FAD8];
  v8 = [v3 title];
  v9 = [v7 preferenceSpecifierNamed:v8 target:*(a1 + 40) set:0 get:0 detail:0 cell:3 edit:0];

  [v9 setProperty:objc_opt_class() forKey:*MEMORY[0x277D3FE58]];
  v10 = [v3 title];
  [v9 setProperty:v10 forKey:*MEMORY[0x277D40170]];

  v11 = [v3 message];
  [v9 setProperty:v11 forKey:*MEMORY[0x277D40160]];

  [*(a1 + 32) addObject:v9];
  v12 = MEMORY[0x277D3FAD8];
  v13 = [v3 buttonTitle];
  v14 = [v12 preferenceSpecifierNamed:v13 target:*(a1 + 40) set:0 get:0 detail:0 cell:13 edit:0];

  [v14 setProperty:&unk_288479C78 forKey:*MEMORY[0x277D3FD78]];
  if ([v3 status] == 1)
  {
    v15 = &selRef__turnOffWifiSpecifierWasTapped;
  }

  else if ([v3 status] == 2)
  {
    v15 = &selRef__unsupportedWiFiLearnMoreSpecifierWasTapped;
  }

  else if ([v3 status] == 4)
  {
    v15 = &selRef__turnOffCellularSpecifierWasTapped;
  }

  else if ([v3 status] == 8)
  {
    v15 = &selRef__unsupportedCellularLearnMoreSpecifierWasTapped;
  }

  else if ([v3 status] == 16)
  {
    v15 = &selRef__turnOnSafariSpecifierWasTapped;
  }

  else if ([v3 status] == 32)
  {
    v15 = &selRef__turnOnDNSSpecifierWasTapped;
  }

  else if ([v3 status] == 64)
  {
    v15 = &selRef__unsupportedRegionLearnMoreSpecifierWasTapped;
  }

  else if ([v3 status] == 128)
  {
    v15 = &selRef__turnOnWifiSpecifierWasTapped;
  }

  else if ([v3 status] == 256)
  {
    v15 = &selRef__turnOnCellularSpecifierWasTapped;
  }

  else
  {
    if ([v3 status] != 2048)
    {
      goto LABEL_22;
    }

    v15 = &selRef__openSystemStatusSpecifierWasTapped;
  }

  [v14 setButtonAction:*v15];
LABEL_22:
  v16 = [v3 buttonTitle];

  if (v16)
  {
    [*(a1 + 32) addObject:v14];
  }

  v17 = _ICQGetLogSystem();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    *buf = 138412290;
    v20 = v18;
    _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Added specifier: %@", buf, 0xCu);
  }
}

- (void)_startFetchingBannerModels
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ICQInternetPrivacyDetailSpecifierProvider _startFetchingBannerModels]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __71__ICQInternetPrivacyDetailSpecifierProvider__startFetchingBannerModels__block_invoke;
  v5[3] = &unk_27A65C020;
  v5[4] = self;
  [viewModel fetchBannerModels:v5];
}

uint64_t __71__ICQInternetPrivacyDetailSpecifierProvider__startFetchingBannerModels__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setBanners:a2];
  v3 = *(a1 + 32);

  return [v3 _reloadSpecifiers];
}

- (void)_turnOnSafariSpecifierWasTapped
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnSafariSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v6, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  _turnOnSafariAlert = [(ICQInternetPrivacyDetailSpecifierProvider *)self _turnOnSafariAlert];
  [detailDelegate showAlert:_turnOnSafariAlert];
}

- (void)_turnOnDNSSpecifierWasTapped
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnDNSSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v6, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  _turnOnDNSAlert = [(ICQInternetPrivacyDetailSpecifierProvider *)self _turnOnDNSAlert];
  [detailDelegate showAlert:_turnOnDNSAlert];
}

- (void)_turnOffWifiSpecifierWasTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOffWifiSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  wiFiName = [viewModel2 wiFiName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__ICQInternetPrivacyDetailSpecifierProvider__turnOffWifiSpecifierWasTapped__block_invoke;
  v7[3] = &unk_27A65AFF0;
  v7[4] = self;
  [viewModel enableWifi:0 onNetworkName:wiFiName completion:v7];
}

void __75__ICQInternetPrivacyDetailSpecifierProvider__turnOffWifiSpecifierWasTapped__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) _startFetchingBannerModels];
    v5 = [*(a1 + 32) detailDelegate];
    v4 = [*(a1 + 32) _turnOffUnsupportedWifiAlert];
    [v5 showAlert:v4];
  }
}

- (void)_turnOffCellularSpecifierWasTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOffCellularSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  cellularName = [viewModel2 cellularName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__ICQInternetPrivacyDetailSpecifierProvider__turnOffCellularSpecifierWasTapped__block_invoke;
  v7[3] = &unk_27A65AFF0;
  v7[4] = self;
  [viewModel enableCellular:0 onNetworkName:cellularName completion:v7];
}

void __79__ICQInternetPrivacyDetailSpecifierProvider__turnOffCellularSpecifierWasTapped__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) _startFetchingBannerModels];
    v5 = [*(a1 + 32) detailDelegate];
    v4 = [*(a1 + 32) _turnOffUnsupportedCellularAlert];
    [v5 showAlert:v4];
  }
}

- (void)_turnOnWifiSpecifierWasTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnWifiSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  wiFiName = [viewModel2 wiFiName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ICQInternetPrivacyDetailSpecifierProvider__turnOnWifiSpecifierWasTapped__block_invoke;
  v7[3] = &unk_27A65AFF0;
  v7[4] = self;
  [viewModel enableWifi:1 onNetworkName:wiFiName completion:v7];
}

uint64_t __74__ICQInternetPrivacyDetailSpecifierProvider__turnOnWifiSpecifierWasTapped__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _refreshStatusAndPostNotification];
  }

  return result;
}

- (void)_turnOnCellularSpecifierWasTapped
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnCellularSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  cellularName = [viewModel2 cellularName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__ICQInternetPrivacyDetailSpecifierProvider__turnOnCellularSpecifierWasTapped__block_invoke;
  v7[3] = &unk_27A65AFF0;
  v7[4] = self;
  [viewModel enableCellular:1 onNetworkName:cellularName completion:v7];
}

uint64_t __78__ICQInternetPrivacyDetailSpecifierProvider__turnOnCellularSpecifierWasTapped__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) _refreshStatusAndPostNotification];
  }

  return result;
}

- (void)_openSystemStatusSpecifierWasTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacyDetailSpecifierProvider _openSystemStatusSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v5, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate presentSystemStatus];
}

- (void)_unsupportedWiFiLearnMoreSpecifierWasTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacyDetailSpecifierProvider _unsupportedWiFiLearnMoreSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v5, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate presentLearnMoreFrom:@"com.apple.icloud.privaterelay.learnmoreunsupportednetwork"];
}

- (void)_unsupportedCellularLearnMoreSpecifierWasTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacyDetailSpecifierProvider _unsupportedCellularLearnMoreSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v5, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate presentLearnMoreFrom:@"com.apple.icloud.privaterelay.learnmoreunsupportednetwork"];
}

- (void)_unsupportedRegionLearnMoreSpecifierWasTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQInternetPrivacyDetailSpecifierProvider _unsupportedRegionLearnMoreSpecifierWasTapped]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v5, 0xCu);
  }

  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate presentLearnMoreFrom:@"com.apple.icloud.privaterelay.learnmoreunsupportedregion"];
}

- (void)_IPAddressLocationSpecifierWasTapped:(id)tapped
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQInternetPrivacyDetailSpecifierProvider _IPAddressLocationSpecifierWasTapped:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Tap action: %s", &v8, 0xCu);
  }

  v5 = objc_alloc_init(ICQInternetPrivacyLocationSharingViewController);
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  [(ICQInternetPrivacyLocationSharingViewController *)v5 setViewModel:viewModel];

  delegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self delegate];
  [delegate specifierProvider:self showViewController:v5];
}

- (id)_serviceEnabledForSpecifier:(id)specifier
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
    isEnabled = [viewModel isEnabled];
    v7 = @"NO";
    if (isEnabled)
    {
      v7 = @"YES";
    }

    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "viewModel.isEnabled: %@", &v12, 0xCu);
  }

  v8 = MEMORY[0x277CCABB0];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  v10 = [v8 numberWithBool:{objc_msgSend(viewModel2, "isEnabled")}];

  return v10;
}

- (void)_setServiceEnabled:(id)enabled forSpecifier:(id)specifier
{
  if ([enabled BOOLValue])
  {

    [(ICQInternetPrivacyDetailSpecifierProvider *)self _updateEnableStatusTo:1];
  }

  else
  {
    if ([(NSArray *)self->_banners count])
    {
      banners = self->_banners;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __77__ICQInternetPrivacyDetailSpecifierProvider__setServiceEnabled_forSpecifier___block_invoke;
      v10[3] = &unk_27A65C048;
      v10[4] = self;
      [(NSArray *)banners enumerateObjectsUsingBlock:v10];
      detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
      _switchOffAlert = [(ICQInternetPrivacyDetailSpecifierProvider *)self _switchOffAlert];
      [detailDelegate showAlert:_switchOffAlert];
    }

    detailDelegate2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
    _switchOffAlert2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self _switchOffAlert];
    [detailDelegate2 showAlert:_switchOffAlert2];
  }
}

void __77__ICQInternetPrivacyDetailSpecifierProvider__setServiceEnabled_forSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == 4)
  {
    v3 = [*(a1 + 32) detailDelegate];
    v4 = [*(a1 + 32) _switchOffUnsupportedCellularAlert];
  }

  else
  {
    if ([v6 status] != 1)
    {
      goto LABEL_6;
    }

    v3 = [*(a1 + 32) detailDelegate];
    v4 = [*(a1 + 32) _switchOffUnsupportedWifiAlert];
  }

  v5 = v4;
  [v3 showAlert:v4];

LABEL_6:
}

- (id)_turnOffUnsupportedWifiAlert
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOffUnsupportedWifiAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  wiFiName = [viewModel2 wiFiName];
  v8 = [viewModel unsupportedTurnOffAlertTitleFor:wiFiName];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffWifiAlertMessage = [viewModel3 unsupportedTurnOffWifiAlertMessage];
  v11 = [v4 alertControllerWithTitle:v8 message:unsupportedTurnOffWifiAlertMessage preferredStyle:1];

  v12 = MEMORY[0x277D750F8];
  viewModel4 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffAlertOk = [viewModel4 unsupportedTurnOffAlertOk];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__ICQInternetPrivacyDetailSpecifierProvider__turnOffUnsupportedWifiAlert__block_invoke;
  v17[3] = &unk_27A65B1A0;
  v17[4] = self;
  v15 = [v12 actionWithTitle:unsupportedTurnOffAlertOk style:1 handler:v17];

  [v11 addAction:v15];

  return v11;
}

void __73__ICQInternetPrivacyDetailSpecifierProvider__turnOffUnsupportedWifiAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) detailDelegate];
  [v1 statusDidChange];
}

- (id)_turnOffUnsupportedCellularAlert
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOffUnsupportedCellularAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffCellularAlertTitle = [viewModel unsupportedTurnOffCellularAlertTitle];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffCellularAlertMessage = [viewModel2 unsupportedTurnOffCellularAlertMessage];
  v9 = [v4 alertControllerWithTitle:unsupportedTurnOffCellularAlertTitle message:unsupportedTurnOffCellularAlertMessage preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffAlertOk = [viewModel3 unsupportedTurnOffAlertOk];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__ICQInternetPrivacyDetailSpecifierProvider__turnOffUnsupportedCellularAlert__block_invoke;
  v15[3] = &unk_27A65B1A0;
  v15[4] = self;
  v13 = [v10 actionWithTitle:unsupportedTurnOffAlertOk style:1 handler:v15];

  [v9 addAction:v13];

  return v9;
}

void __77__ICQInternetPrivacyDetailSpecifierProvider__turnOffUnsupportedCellularAlert__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) detailDelegate];
  [v1 statusDidChange];
}

- (id)_switchOffUnsupportedWifiAlert
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[ICQInternetPrivacyDetailSpecifierProvider _switchOffUnsupportedWifiAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Switch action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277CCACA8];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedWifiSwitchOffAlertMessage = [viewModel unsupportedWifiSwitchOffAlertMessage];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  wiFiName = [viewModel2 wiFiName];
  v9 = [v4 stringWithFormat:unsupportedWifiSwitchOffAlertMessage, wiFiName];

  v10 = MEMORY[0x277D75110];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffAlertTitle = [viewModel3 unsupportedSwitchOffAlertTitle];
  v13 = [v10 alertControllerWithTitle:unsupportedSwitchOffAlertTitle message:v9 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  viewModel4 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffNetworkOnly = [viewModel4 unsupportedSwitchOffNetworkOnly];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke;
  v29[3] = &unk_27A65B1A0;
  v29[4] = self;
  v17 = [v14 actionWithTitle:unsupportedSwitchOffNetworkOnly style:0 handler:v29];

  [v13 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  viewModel5 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffCompletely = [viewModel5 unsupportedSwitchOffCompletely];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke_3;
  v28[3] = &unk_27A65B1A0;
  v28[4] = self;
  v21 = [v18 actionWithTitle:unsupportedSwitchOffCompletely style:0 handler:v28];

  [v13 addAction:v21];
  v22 = MEMORY[0x277D750F8];
  viewModel6 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffCancel = [viewModel6 unsupportedSwitchOffCancel];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke_4;
  v27[3] = &unk_27A65B1A0;
  v27[4] = self;
  v25 = [v22 actionWithTitle:unsupportedSwitchOffCancel style:1 handler:v27];

  [v13 addAction:v25];

  return v13;
}

void __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) viewModel];
  v5 = [*(a1 + 32) viewModel];
  v6 = [v5 wiFiName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke_2;
  v7[3] = &unk_27A65C070;
  objc_copyWeak(&v8, &location);
  v7[4] = *(a1 + 32);
  [v4 enableWifi:0 onNetworkName:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2 && WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _setServiceEnabled:&unk_288479C78 forSpecifier:*(*(a1 + 32) + 64)];
    [v6 _startFetchingBannerModels];
    v5 = [v6 detailDelegate];
    [v5 statusDidChange];

    WeakRetained = v6;
  }
}

uint64_t __75__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedWifiAlert__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setServiceEnabled:&unk_288479C78 forSpecifier:*(*(a1 + 32) + 64)];
  v2 = *(a1 + 32);

  return [v2 _reloadSpecifiers];
}

- (id)_switchOffUnsupportedCellularAlert
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v31 = "[ICQInternetPrivacyDetailSpecifierProvider _switchOffUnsupportedCellularAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Switch action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277CCACA8];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedCellularSwitchOffAlertMessage = [viewModel unsupportedCellularSwitchOffAlertMessage];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  cellularName = [viewModel2 cellularName];
  v9 = [v4 stringWithFormat:unsupportedCellularSwitchOffAlertMessage, cellularName];

  v10 = MEMORY[0x277D75110];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffAlertTitle = [viewModel3 unsupportedSwitchOffAlertTitle];
  v13 = [v10 alertControllerWithTitle:unsupportedSwitchOffAlertTitle message:v9 preferredStyle:1];

  v14 = MEMORY[0x277D750F8];
  viewModel4 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffProviderOnly = [viewModel4 unsupportedSwitchOffProviderOnly];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke;
  v29[3] = &unk_27A65B1A0;
  v29[4] = self;
  v17 = [v14 actionWithTitle:unsupportedSwitchOffProviderOnly style:0 handler:v29];

  [v13 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  viewModel5 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffCompletely = [viewModel5 unsupportedSwitchOffCompletely];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke_3;
  v28[3] = &unk_27A65B1A0;
  v28[4] = self;
  v21 = [v18 actionWithTitle:unsupportedSwitchOffCompletely style:0 handler:v28];

  [v13 addAction:v21];
  v22 = MEMORY[0x277D750F8];
  viewModel6 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffCancel = [viewModel6 unsupportedSwitchOffCancel];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke_4;
  v27[3] = &unk_27A65B1A0;
  v27[4] = self;
  v25 = [v22 actionWithTitle:unsupportedSwitchOffCancel style:1 handler:v27];

  [v13 addAction:v25];

  return v13;
}

void __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, *(a1 + 32));
  v4 = [*(a1 + 32) viewModel];
  v5 = [*(a1 + 32) viewModel];
  v6 = [v5 cellularName];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke_2;
  v7[3] = &unk_27A65C070;
  objc_copyWeak(&v8, &location);
  v7[4] = *(a1 + 32);
  [v4 enableCellular:0 onNetworkName:v6 completion:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2 && WeakRetained)
  {
    v6 = WeakRetained;
    [WeakRetained _setServiceEnabled:&unk_288479C78 forSpecifier:*(*(a1 + 32) + 64)];
    [v6 _startFetchingBannerModels];
    v5 = [v6 detailDelegate];
    [v5 statusDidChange];

    WeakRetained = v6;
  }
}

uint64_t __79__ICQInternetPrivacyDetailSpecifierProvider__switchOffUnsupportedCellularAlert__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _setServiceEnabled:&unk_288479C78 forSpecifier:*(*(a1 + 32) + 64)];
  v2 = *(a1 + 32);

  return [v2 _reloadSpecifiers];
}

- (id)_switchOffAlert
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v27 = "[ICQInternetPrivacyDetailSpecifierProvider _switchOffAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Switch action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  switchOffAlertTitle = [viewModel switchOffAlertTitle];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  switchOffAlertMessage = [viewModel2 switchOffAlertMessage];
  v9 = [v4 alertControllerWithTitle:switchOffAlertTitle message:switchOffAlertMessage preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  switchOffAlertPause = [viewModel3 switchOffAlertPause];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __60__ICQInternetPrivacyDetailSpecifierProvider__switchOffAlert__block_invoke;
  v25[3] = &unk_27A65B1A0;
  v25[4] = self;
  v13 = [v10 actionWithTitle:switchOffAlertPause style:0 handler:v25];

  [v9 addAction:v13];
  v14 = MEMORY[0x277D750F8];
  viewModel4 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  switchOffAlertTurnOff = [viewModel4 switchOffAlertTurnOff];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __60__ICQInternetPrivacyDetailSpecifierProvider__switchOffAlert__block_invoke_2;
  v24[3] = &unk_27A65B1A0;
  v24[4] = self;
  v17 = [v14 actionWithTitle:switchOffAlertTurnOff style:2 handler:v24];

  [v9 addAction:v17];
  v18 = MEMORY[0x277D750F8];
  viewModel5 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedSwitchOffCancel = [viewModel5 unsupportedSwitchOffCancel];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__ICQInternetPrivacyDetailSpecifierProvider__switchOffAlert__block_invoke_3;
  v23[3] = &unk_27A65B1A0;
  v23[4] = self;
  v21 = [v18 actionWithTitle:unsupportedSwitchOffCancel style:1 handler:v23];

  [v9 addAction:v21];

  return v9;
}

- (void)presentIncompatibleSitesHelp
{
  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate presentIncompatibleSitesHelp];
}

- (id)_turnOnSafariAlert
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnSafariAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  turnOnSafariAlertTitle = [viewModel turnOnSafariAlertTitle];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  turnOnSafariAlertMessage = [viewModel2 turnOnSafariAlertMessage];
  v9 = [v4 alertControllerWithTitle:turnOnSafariAlertTitle message:turnOnSafariAlertMessage preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffAlertOk = [viewModel3 unsupportedTurnOffAlertOk];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__ICQInternetPrivacyDetailSpecifierProvider__turnOnSafariAlert__block_invoke;
  v15[3] = &unk_27A65B1A0;
  v15[4] = self;
  v13 = [v10 actionWithTitle:unsupportedTurnOffAlertOk style:1 handler:v15];

  [v9 addAction:v13];

  return v9;
}

void __63__ICQInternetPrivacyDetailSpecifierProvider__turnOnSafariAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __63__ICQInternetPrivacyDetailSpecifierProvider__turnOnSafariAlert__block_invoke_2;
  v3[3] = &unk_27A65AFF0;
  v3[4] = *(a1 + 32);
  [v2 enableSafari:v3];
}

void __63__ICQInternetPrivacyDetailSpecifierProvider__turnOnSafariAlert__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) _startFetchingBannerModels];
    v4 = [*(a1 + 32) detailDelegate];
    [v4 statusDidChange];
  }
}

- (id)_turnOnDNSAlert
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "[ICQInternetPrivacyDetailSpecifierProvider _turnOnDNSAlert]";
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Tap action: %s", buf, 0xCu);
  }

  v4 = MEMORY[0x277D75110];
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  turnOnDNSAlertTitle = [viewModel turnOnDNSAlertTitle];
  viewModel2 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  turnOnDNSAlertMessage = [viewModel2 turnOnDNSAlertMessage];
  v9 = [v4 alertControllerWithTitle:turnOnDNSAlertTitle message:turnOnDNSAlertMessage preferredStyle:1];

  v10 = MEMORY[0x277D750F8];
  viewModel3 = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  unsupportedTurnOffAlertOk = [viewModel3 unsupportedTurnOffAlertOk];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__ICQInternetPrivacyDetailSpecifierProvider__turnOnDNSAlert__block_invoke;
  v15[3] = &unk_27A65B1A0;
  v15[4] = self;
  v13 = [v10 actionWithTitle:unsupportedTurnOffAlertOk style:1 handler:v15];

  [v9 addAction:v13];

  return v9;
}

void __60__ICQInternetPrivacyDetailSpecifierProvider__turnOnDNSAlert__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) viewModel];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__ICQInternetPrivacyDetailSpecifierProvider__turnOnDNSAlert__block_invoke_2;
  v3[3] = &unk_27A65AFF0;
  v3[4] = *(a1 + 32);
  [v2 enableDNS:v3];
}

void __60__ICQInternetPrivacyDetailSpecifierProvider__turnOnDNSAlert__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) _startFetchingBannerModels];
    v4 = [*(a1 + 32) detailDelegate];
    [v4 statusDidChange];
  }
}

- (void)_reloadSpecifiers
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__ICQInternetPrivacyDetailSpecifierProvider__reloadSpecifiers__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__ICQInternetPrivacyDetailSpecifierProvider__reloadSpecifiers__block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 16) copy];
  [*(a1 + 32) setSpecifiers:0];
  v2 = [*(a1 + 32) delegate];
  [v2 reloadSpecifiersForProvider:*(a1 + 32) oldSpecifiers:v3 animated:0];
}

- (void)_pausePrivateRelay
{
  objc_initWeak(&location, self);
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__ICQInternetPrivacyDetailSpecifierProvider__pausePrivateRelay__block_invoke;
  v4[3] = &unk_27A65C098;
  objc_copyWeak(&v5, &location);
  [viewModel pausePrivateRelayUntilTomorrow:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __63__ICQInternetPrivacyDetailSpecifierProvider__pausePrivateRelay__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _startFetchingBannerModels];
    v4 = [v5 detailDelegate];
    [v4 statusDidChange];

    WeakRetained = v5;
  }
}

- (void)_updateEnableStatusTo:(BOOL)to
{
  toCopy = to;
  objc_initWeak(&location, self);
  viewModel = [(ICQInternetPrivacyDetailSpecifierProvider *)self viewModel];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ICQInternetPrivacyDetailSpecifierProvider__updateEnableStatusTo___block_invoke;
  v6[3] = &unk_27A65C098;
  objc_copyWeak(&v7, &location);
  [viewModel setEnabled:toCopy completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __67__ICQInternetPrivacyDetailSpecifierProvider__updateEnableStatusTo___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!a2 && WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained _startFetchingBannerModels];
    v4 = [v5 detailDelegate];
    [v4 statusDidChange];

    WeakRetained = v5;
  }
}

- (void)_refreshStatusAndPostNotification
{
  [(ICQInternetPrivacyDetailSpecifierProvider *)self _startFetchingBannerModels];
  detailDelegate = [(ICQInternetPrivacyDetailSpecifierProvider *)self detailDelegate];
  [detailDelegate statusDidChange];
}

- (AAUISpecifierProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (ICQInternetPrivacyDetailDelegate)detailDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_detailDelegate);

  return WeakRetained;
}

- (UIViewController)presenter
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);

  return WeakRetained;
}

@end