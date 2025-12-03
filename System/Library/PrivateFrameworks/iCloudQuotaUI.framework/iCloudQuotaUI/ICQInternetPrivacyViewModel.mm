@interface ICQInternetPrivacyViewModel
- (ICQInternetPrivacyViewModel)init;
- (NSString)IPAddressLocationDisabledMessage;
- (NSString)IPAddressLocationDisabledTitle;
- (NSString)IPAddressLocationEnabledMessage;
- (NSString)IPAddressLocationEnabledTitle;
- (NSString)IPAddressLocationSettingsTitle;
- (NSString)IPAddressLocationTitle;
- (NSString)explanationButtonTitle;
- (NSString)explanationMessage;
- (NSString)explanationTitle;
- (NSString)incompatibleSitesMessage;
- (NSString)internetPrivacyLearnMoreMessage;
- (NSString)learnMoreButtonTitle;
- (NSString)learnMoreLinkTitle;
- (NSString)learnMoreTitle;
- (NSString)navTitle;
- (NSString)notSupportedTitle;
- (NSString)offTitle;
- (NSString)onTitle;
- (NSString)privateRelayPausedMessage;
- (NSString)privateRelayPausedTitle;
- (NSString)privateRelayStatusText;
- (NSString)proxyAccountTypeDescription;
- (NSString)proxyUserTierDescription;
- (NSString)statusDescription;
- (NSString)statusStringForPrefPane;
- (NSString)switchOffAlertLearnMore;
- (NSString)switchOffAlertMessage;
- (NSString)switchOffAlertPause;
- (NSString)switchOffAlertPrefPaneTitle;
- (NSString)switchOffAlertTitle;
- (NSString)switchOffAlertTurnOff;
- (NSString)switchTitle;
- (NSString)turnOnDNSAlertMessage;
- (NSString)turnOnDNSAlertTitle;
- (NSString)turnOnSafariAlertMessage;
- (NSString)turnOnSafariAlertTitle;
- (NSString)unavailableTitle;
- (NSString)unsupportedCellularSwitchOffAlertMessage;
- (NSString)unsupportedSwitchOffAlertTitle;
- (NSString)unsupportedSwitchOffCancel;
- (NSString)unsupportedSwitchOffCompletely;
- (NSString)unsupportedSwitchOffNetworkOnly;
- (NSString)unsupportedSwitchOffProviderOnly;
- (NSString)unsupportedTurnOffAlertOk;
- (NSString)unsupportedTurnOffAlertTitle;
- (NSString)unsupportedTurnOffCellularAlertMessage;
- (NSString)unsupportedTurnOffWifiAlertMessage;
- (NSString)unsupportedWifiSwitchOffAlertMessage;
- (NSString)upgradeTitle;
- (NSString)waitingTitle;
- (id)country;
- (id)issueTitle:(id)title;
- (id)pausedPrivateRelayFooter;
- (id)suggestionTitle:(id)title;
- (id)unsupportedTurnOffAlertTitleFor:(id)for;
- (id)unsupportedTurnOffCellularAlertTitle;
- (unint64_t)_statusForSubscriber;
- (void)_addNetworkOutageBannerTo:(id)to withCompletion:(id)completion;
- (void)_fetchAccountTypeWithCompletion:(id)completion;
- (void)_fetchBannerModelsForPaidTier:(id)tier;
- (void)_fetchUserTierWithCompletion:(id)completion;
- (void)_refreshOverallStatusWithCompletion:(id)completion;
- (void)_refreshServiceStatusWithCompletion:(id)completion;
- (void)enableCellular:(BOOL)cellular onNetworkName:(id)name completion:(id)completion;
- (void)enableDNS:(id)s;
- (void)enableLocationSharing:(BOOL)sharing completion:(id)completion;
- (void)enableSafari:(id)safari;
- (void)enableWifi:(BOOL)wifi onNetworkName:(id)name completion:(id)completion;
- (void)fetchBannerModels:(id)models;
- (void)isLocationSharingEnabled:(id)enabled;
- (void)pausePrivateRelayUntilTomorrow:(id)tomorrow;
- (void)setEnabled:(BOOL)enabled completion:(id)completion;
- (void)setStatusStringForPrefPane:(id)pane;
- (void)updateStatusStringForBannerModels:(id)models;
@end

@implementation ICQInternetPrivacyViewModel

- (ICQInternetPrivacyViewModel)init
{
  v3.receiver = self;
  v3.super_class = ICQInternetPrivacyViewModel;
  result = [(ICQInternetPrivacyViewModel *)&v3 init];
  if (result)
  {
    result->_status = 7;
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSString)proxyUserTierDescription
{
  proxyUserTier = [(ICQInternetPrivacyViewModel *)self proxyUserTier];
  if (proxyUserTier == 1)
  {
    v3 = @"Free";
  }

  else if (proxyUserTier == 2)
  {
    v3 = @"Subscriber";
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", proxyUserTier];
  }

  return v3;
}

- (NSString)proxyAccountTypeDescription
{
  proxyAccountType = [(ICQInternetPrivacyViewModel *)self proxyAccountType];
  if (proxyAccountType == 1)
  {
    v3 = @"Free";
  }

  else if (proxyAccountType == 2)
  {
    v3 = @"Subscriber";
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", proxyAccountType];
  }

  return v3;
}

- (NSString)statusDescription
{
  status = [(ICQInternetPrivacyViewModel *)self status];
  if (status - 1 > 7)
  {
    return @"None";
  }

  else
  {
    return &off_27A65C3F0[status - 1]->isa;
  }
}

- (unint64_t)_statusForSubscriber
{
  if (self->_paused)
  {
    return 8;
  }

  if ([(ICQInternetPrivacyViewModel *)self isEnabled:v2])
  {
    return 1;
  }

  return 2;
}

- (void)setEnabled:(BOOL)enabled completion:(id)completion
{
  enabledCopy = enabled;
  completionCopy = completion;
  v7 = MEMORY[0x277D2CA68];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__ICQInternetPrivacyViewModel_setEnabled_completion___block_invoke;
  v10[3] = &unk_27A65C218;
  v12 = enabledCopy;
  if (enabledCopy)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v7 setUserTier:v8 queue:MEMORY[0x277D85CD0] completionHandler:v10];
}

void __53__ICQInternetPrivacyViewModel_setEnabled_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (*(a1 + 48))
    {
      v5 = @"YES";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Set internet privacy enabled status: %@ error: %@", &v7, 0x16u);
  }

  if (!v3)
  {
    [*(a1 + 32) setIsEnabled:*(a1 + 48)];
    if (*(a1 + 48))
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [*(a1 + 32) setStatus:v6];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enableSafari:(id)safari
{
  safariCopy = safari;
  v4 = MEMORY[0x277D2CA68];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__ICQInternetPrivacyViewModel_enableSafari___block_invoke;
  v6[3] = &unk_27A65C240;
  v7 = safariCopy;
  v5 = safariCopy;
  [v4 setTrafficState:12 proxyTraffic:12 queue:MEMORY[0x277D85CD0] completionHandler:v6];
}

void __44__ICQInternetPrivacyViewModel_enableSafari___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Turned on Safari for Porcupine with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)pausePrivateRelayUntilTomorrow:(id)tomorrow
{
  tomorrowCopy = tomorrow;
  v4 = MEMORY[0x277D2CA68];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__ICQInternetPrivacyViewModel_pausePrivateRelayUntilTomorrow___block_invoke;
  v6[3] = &unk_27A65C240;
  v7 = tomorrowCopy;
  v5 = tomorrowCopy;
  [v4 setFreeUserTierUntilTomorrow:MEMORY[0x277D85CD0] completionHandler:v6];
}

void __62__ICQInternetPrivacyViewModel_pausePrivateRelayUntilTomorrow___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Set free user tier until tomorrow. error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableDNS:(id)s
{
  sCopy = s;
  v4 = MEMORY[0x277D2CA68];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__ICQInternetPrivacyViewModel_enableDNS___block_invoke;
  v6[3] = &unk_27A65C240;
  v7 = sCopy;
  v5 = sCopy;
  [v4 setTrafficState:128 proxyTraffic:128 queue:MEMORY[0x277D85CD0] completionHandler:v6];
}

void __41__ICQInternetPrivacyViewModel_enableDNS___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Turned on DNS for Porcupine with error: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableWifi:(BOOL)wifi onNetworkName:(id)name completion:(id)completion
{
  wifiCopy = wifi;
  nameCopy = name;
  completionCopy = completion;
  v9 = MEMORY[0x277D2CA68];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ICQInternetPrivacyViewModel_enableWifi_onNetworkName_completion___block_invoke;
  v12[3] = &unk_27A65C218;
  v15 = wifiCopy;
  v13 = nameCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = nameCopy;
  [v9 reportWiFiNetworkStatus:wifiCopy networkName:v11 queue:MEMORY[0x277D85CD0] completionHandler:v12];
}

void __67__ICQInternetPrivacyViewModel_enableWifi_onNetworkName_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Porcupine on WiFi named %@ is enabled: %@ error: %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enableCellular:(BOOL)cellular onNetworkName:(id)name completion:(id)completion
{
  cellularCopy = cellular;
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  completionCopy = completion;
  if (nameCopy)
  {
    v9 = MEMORY[0x277D2CA68];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__ICQInternetPrivacyViewModel_enableCellular_onNetworkName_completion___block_invoke;
    v13[3] = &unk_27A65C218;
    v14 = nameCopy;
    v16 = cellularCopy;
    v15 = completionCopy;
    [v9 reportCellularNetworkStatus:cellularCopy networkName:v14 queue:MEMORY[0x277D85CD0] completionHandler:v13];

    v10 = v14;
  }

  else
  {
    v10 = ICQCreateErrorWithMessage();
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 description];
      *buf = 138412546;
      v18 = 0;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "Porcupine on cellular named %@ error: %@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, v10);
  }
}

void __71__ICQInternetPrivacyViewModel_enableCellular_onNetworkName_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    v7 = 138412802;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Porcupine on cellular named %@ is enabled: %@ error: %@", &v7, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchBannerModels:(id)models
{
  modelsCopy = models;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__ICQInternetPrivacyViewModel_fetchBannerModels___block_invoke;
  v6[3] = &unk_27A65C290;
  v6[4] = self;
  v7 = modelsCopy;
  v5 = modelsCopy;
  [(ICQInternetPrivacyViewModel *)self _refreshOverallStatusWithCompletion:v6];
}

void __49__ICQInternetPrivacyViewModel_fetchBannerModels___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) proxyAccountType] == 2)
  {
    v2 = *(a1 + 32);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __49__ICQInternetPrivacyViewModel_fetchBannerModels___block_invoke_2;
    v4[3] = &unk_27A65C268;
    v4[4] = v2;
    v5 = *(a1 + 40);
    [v2 _fetchBannerModelsForPaidTier:v4];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

void __49__ICQInternetPrivacyViewModel_fetchBannerModels___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 updateStatusStringForBannerModels:v4];
  (*(*(a1 + 40) + 16))();
}

- (void)_fetchBannerModelsForPaidTier:(id)tier
{
  v156 = *MEMORY[0x277D85DE8];
  tierCopy = tier;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  array = [MEMORY[0x277CBEB18] array];
  v145 = 0;
  v146 = &v145;
  v147 = 0x3032000000;
  v148 = __Block_byref_object_copy__9;
  v149 = __Block_byref_object_dispose__9;
  v150 = 0;
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_serviceIsLimited)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    *buf = 138412290;
    v152 = v4;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "_serviceIsLimited %@", buf, 0xCu);
  }

  if ([(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus]== 6)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "Porcupine not available due to unsupported region", buf, 2u);
    }

    country = [(ICQInternetPrivacyViewModel *)self country];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_REGION_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v10 = [v7 stringWithFormat:v9, country];

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

    v13 = [ICQInternetPrivacyBannerModel alloc];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_REGION_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v16 = [(ICQInternetPrivacyBannerModel *)v13 initWithTitle:v15 message:v10 buttonTitle:v12 status:64 networkName:0];
    v17 = v146[5];
    v146[5] = v16;

    self->_status = 6;
    [array addObject:v146[5]];
    v18 = [array copy];
    tierCopy[2](tierCopy, v18);
LABEL_10:

    goto LABEL_27;
  }

  selfCopy2 = self;
  if (self->_serviceIsLimited)
  {
    serviceStatus = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus];
    selfCopy2 = self;
    if (serviceStatus)
    {
      v21 = _ICQGetLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v21, OS_LOG_TYPE_DEFAULT, "Porcupine is enabled in current region but not supported in user's account locale.", buf, 2u);
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v22 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

      v23 = [ICQInternetPrivacyBannerModel alloc];
      v24 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v25 = [v24 localizedStringForKey:@"INTERNET_PRIVACY_SUPPORTED_REGION_LIMITED_ACCOUNT_TITLE" value:&stru_28844FC60 table:@"Localizable"];
      v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v27 = [v26 localizedStringForKey:@"INTERNET_PRIVACY_SUPPORTED_REGION_LIMITED_ACCOUNT_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
      v28 = [(ICQInternetPrivacyBannerModel *)v23 initWithTitle:v25 message:v27 buttonTitle:v12 status:4096 networkName:0];
      v29 = v146[5];
      v146[5] = v28;

      self->_status = 1;
      [array addObject:v146[5]];
      country = [array copy];
      tierCopy[2](tierCopy, country);
      goto LABEL_27;
    }
  }

  if ([(PrivacyProxyServiceStatus *)selfCopy2->_proxyServiceStatus serviceStatus]== 5)
  {
    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v30 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

    v31 = [ICQInternetPrivacyBannerModel alloc];
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"INTERNET_PRIVACY_SYSTEM_INCOMPATIBLE_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v34 localizedStringForKey:@"INTERNET_PRIVACY_SYSTEM_INCOMPATIBLE_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v36 = [(ICQInternetPrivacyBannerModel *)v31 initWithTitle:v33 message:v35 buttonTitle:v12 status:512 networkName:0];
    v37 = v146[5];
    v146[5] = v36;

    self->_status = 5;
    [array addObject:v146[5]];
    country = [array copy];
    tierCopy[2](tierCopy, country);
LABEL_27:

LABEL_28:
    goto LABEL_29;
  }

  if ([(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus]== 3)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    v39 = [currentDevice userInterfaceIdiom] == 1;

    v40 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (v39)
    {
      [v40 localizedStringForKey:@"INTERNET_PRIVACY_FRAUD_IPAD_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    }

    else
    {
      [v40 localizedStringForKey:@"INTERNET_PRIVACY_FRAUD_IPHONE_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    }
    v12 = ;

    v49 = [ICQInternetPrivacyBannerModel alloc];
    v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"INTERNET_PRIVACY_FRAUD_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v52 = [(ICQInternetPrivacyBannerModel *)v49 initWithTitle:v51 message:v12 buttonTitle:0 status:1024 networkName:0];
    v53 = v146[5];
    v146[5] = v52;

    self->_status = 5;
    [array addObject:v146[5]];
    country = [array copy];
    tierCopy[2](tierCopy, country);
    goto LABEL_27;
  }

  if ([(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus]== 2)
  {
    v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v41 localizedStringForKey:@"INTERNET_PRIVACY_OPEN_SYSTEM_STATUS_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

    v42 = [ICQInternetPrivacyBannerModel alloc];
    v43 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v44 = [v43 localizedStringForKey:@"INTERNET_PRIVACY_OUTAGE_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v46 = [v45 localizedStringForKey:@"INTERNET_PRIVACY_OUTAGE_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v47 = [(ICQInternetPrivacyBannerModel *)v42 initWithTitle:v44 message:v46 buttonTitle:v12 status:2048 networkName:0];
    v48 = v146[5];
    v146[5] = v47;

    self->_status = 5;
    [array addObject:v146[5]];
    country = [array copy];
    tierCopy[2](tierCopy, country);
    goto LABEL_27;
  }

  if ([(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus]!= 7)
  {
    if ([(ICQInternetPrivacyViewModel *)self proxyUserTier]== 1)
    {
      v54 = _ICQGetLogSystem();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v54, OS_LOG_TYPE_DEFAULT, "Free tier detected: skipping network statuses", buf, 2u);
      }

      v12 = [array copy];
      tierCopy[2](tierCopy, v12);
      goto LABEL_28;
    }

    array2 = [MEMORY[0x277CBEB18] array];
    array3 = [MEMORY[0x277CBEB18] array];
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    networkStatuses = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus networkStatuses];
    v57 = [networkStatuses countByEnumeratingWithState:&v141 objects:v155 count:16];
    v123 = array3;
    if (!v57)
    {
      goto LABEL_85;
    }

    v128 = *v142;
    obj = networkStatuses;
LABEL_36:
    v129 = v57;
    v58 = 0;
    while (1)
    {
      if (*v142 != v128)
      {
        objc_enumerationMutation(obj);
      }

      v59 = *(*(&v141 + 1) + 8 * v58);
      v60 = _ICQGetLogSystem();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        serviceStatus2 = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus serviceStatus];
        networkStatus = [v59 networkStatus];
        *buf = 134218240;
        v152 = serviceStatus2;
        v153 = 2048;
        v154 = networkStatus;
        _os_log_impl(&dword_275623000, v60, OS_LOG_TYPE_DEFAULT, "Overall service status: %lu, network status: %lu", buf, 0x16u);
      }

      if ([v59 networkType] != 2)
      {
        break;
      }

      v63 = _ICQGetLogSystem();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        networkName = [v59 networkName];
        *buf = 138412290;
        v152 = networkName;
        _os_log_impl(&dword_275623000, v63, OS_LOG_TYPE_DEFAULT, "Found cellular network name: %@", buf, 0xCu);
      }

      networkName2 = [v59 networkName];
      [(ICQInternetPrivacyViewModel *)self setCellularName:networkName2];

      if ([v59 networkStatus] == 2 && -[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus") == 1)
      {
        v66 = _ICQGetLogSystem();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v66, OS_LOG_TYPE_DEFAULT, "Current cellular network does not support Porcupine", buf, 2u);
        }

        v67 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v114 = [v67 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_CELLULAR_ON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

        v69 = [ICQInternetPrivacyBannerModel alloc];
        v70 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v71 = [v70 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_CELLULAR_ON_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
        v72 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v73 = [v72 localizedStringForKey:@"INTERNET_PRIVACY_USE_WITHOUT_PRIVATE_RELAY_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
        networkName3 = [v59 networkName];
        v75 = [(ICQInternetPrivacyBannerModel *)v69 initWithTitle:v114 message:v71 buttonTitle:v73 status:4 networkName:networkName3];
        v76 = v146[5];
        v146[5] = v75;

        [array2 addObject:v146[5]];
LABEL_57:
        v93 = 0;
        goto LABEL_63;
      }

      if ([v59 networkStatus] || -[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus") != 1)
      {
        if ([v59 networkStatus] == 1 && !-[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus"))
        {
          v104 = _ICQGetLogSystem();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
          {
LABEL_81:
            *buf = 0;
            _os_log_impl(&dword_275623000, v104, OS_LOG_TYPE_DEFAULT, "Network status is active, service status is disabled. Don't display banners/buttons.", buf, 2u);
          }

LABEL_82:
          v93 = 0;
          v103 = 0;
          v114 = 0;
LABEL_83:

          goto LABEL_78;
        }

LABEL_77:
        v93 = 0;
        v103 = 0;
        v114 = 0;
        goto LABEL_78;
      }

      v94 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v93 = [v94 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

      v95 = _ICQGetLogSystem();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v95, OS_LOG_TYPE_DEFAULT, "Current cellular network is turned off for Porcupine", buf, 2u);
      }

      v96 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v114 = [v96 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_CELLULAR_OFF_TITLE" value:&stru_28844FC60 table:@"Localizable"];

      v97 = [ICQInternetPrivacyBannerModel alloc];
      v98 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v99 = [v98 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_CELLULAR_OFF_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
      networkName4 = [v59 networkName];
      v101 = [(ICQInternetPrivacyBannerModel *)v97 initWithTitle:v114 message:v99 buttonTitle:v93 status:8 networkName:networkName4];
      v102 = v146[5];
      v146[5] = v101;

      [array2 addObject:v146[5]];
LABEL_63:
      v103 = 0;
LABEL_78:

      if (v129 == ++v58)
      {
        networkStatuses = obj;
        v57 = [obj countByEnumeratingWithState:&v141 objects:v155 count:16];
        if (!v57)
        {
LABEL_85:

          v119 = dispatch_group_create();
          dispatch_group_enter(v119);
          v120 = MEMORY[0x277D2CA68];
          v137[0] = MEMORY[0x277D85DD0];
          v137[1] = 3221225472;
          v137[2] = __61__ICQInternetPrivacyViewModel__fetchBannerModelsForPaidTier___block_invoke;
          v137[3] = &unk_27A65C2B8;
          v140 = &v145;
          v121 = v123;
          v138 = v121;
          v12 = v119;
          v139 = v12;
          [v120 getTrafficState:MEMORY[0x277D85CD0] completionandler:v137];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __61__ICQInternetPrivacyViewModel__fetchBannerModelsForPaidTier___block_invoke_187;
          block[3] = &unk_27A65C2E0;
          v132 = array2;
          v133 = v121;
          selfCopy3 = self;
          v135 = array;
          v136 = tierCopy;
          v10 = v121;
          country = array2;
          v122 = MEMORY[0x277D85CD0];
          dispatch_group_notify(v12, MEMORY[0x277D85CD0], block);

          v18 = v138;
          goto LABEL_10;
        }

        goto LABEL_36;
      }
    }

    if ([v59 networkType] != 1)
    {
      goto LABEL_77;
    }

    v77 = _ICQGetLogSystem();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      networkName5 = [v59 networkName];
      *buf = 138412290;
      v152 = networkName5;
      _os_log_impl(&dword_275623000, v77, OS_LOG_TYPE_DEFAULT, "Found WiFi network name: %@", buf, 0xCu);
    }

    networkName6 = [v59 networkName];
    [(ICQInternetPrivacyViewModel *)self setWiFiName:networkName6];

    if ([v59 networkStatus] != 2 || -[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus") != 1)
    {
      if (![v59 networkStatus] && -[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus") == 1)
      {
        v105 = _ICQGetLogSystem();
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v105, OS_LOG_TYPE_DEFAULT, "Current Wi-Fi network is turned off for Porcupine", buf, 2u);
        }

        v106 = MGGetBoolAnswer();
        v107 = @"WIFI";
        if (v106)
        {
          v107 = @"WLAN";
        }

        v104 = v107;
        v104 = [MEMORY[0x277CCACA8] stringWithFormat:@"INTERNET_PRIVACY_UNSUPPORTED_%@_OFF_MESSAGE", v104];
        v109 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v103 = [v109 localizedStringForKey:v104 value:&stru_28844FC60 table:@"Localizable"];

        v110 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v93 = [v110 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

        v111 = MEMORY[0x277CCACA8];
        v112 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v113 = [v112 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_NETWORK_OFF_TITLE" value:&stru_28844FC60 table:@"Localizable"];
        networkName7 = [v59 networkName];
        v114 = [v111 stringWithFormat:v113, networkName7];

        v115 = [ICQInternetPrivacyBannerModel alloc];
        networkName8 = [v59 networkName];
        v117 = [(ICQInternetPrivacyBannerModel *)v115 initWithTitle:v114 message:v103 buttonTitle:v93 status:2 networkName:networkName8];
        v118 = v146[5];
        v146[5] = v117;

        [array2 addObject:v146[5]];
        goto LABEL_83;
      }

      if ([v59 networkStatus] == 1 && !-[PrivacyProxyServiceStatus serviceStatus](self->_proxyServiceStatus, "serviceStatus"))
      {
        v104 = _ICQGetLogSystem();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_81;
        }

        goto LABEL_82;
      }

      goto LABEL_77;
    }

    v80 = _ICQGetLogSystem();
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v80, OS_LOG_TYPE_DEFAULT, "Current Wi-Fi network does not support Porcupine", buf, 2u);
    }

    v81 = MEMORY[0x277CCACA8];
    v82 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v83 = [v82 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_NETWORK_ON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    networkName9 = [v59 networkName];
    v114 = [v81 stringWithFormat:v83, networkName9];

    v85 = [ICQInternetPrivacyBannerModel alloc];
    v86 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v87 = [v86 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_WIFI_ON_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v88 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v89 = [v88 localizedStringForKey:@"INTERNET_PRIVACY_USE_WITHOUT_PRIVATE_RELAY_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    networkName10 = [v59 networkName];
    v91 = [(ICQInternetPrivacyBannerModel *)v85 initWithTitle:v114 message:v87 buttonTitle:v89 status:1 networkName:networkName10];
    v92 = v146[5];
    v146[5] = v91;

    [array2 addObject:v146[5]];
    goto LABEL_57;
  }

  [(ICQInternetPrivacyViewModel *)self _addNetworkOutageBannerTo:array withCompletion:tierCopy];
LABEL_29:
  _Block_object_dispose(&v145, 8);
}

void __61__ICQInternetPrivacyViewModel__fetchBannerModelsForPaidTier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 0x80) == 0)
  {
    v28 = v5;
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Porcupine DNS is unavailable", buf, 2u);
    }

    v27 = [ICQInternetPrivacyBannerModel alloc];
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"INTERNET_PRIVACY_DNS_OFF_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"INTERNET_PRIVACY_DNS_OFF_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_DNS_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v14 = [(ICQInternetPrivacyBannerModel *)v27 initWithTitle:v9 message:v11 buttonTitle:v13 status:32 networkName:0];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
    v6 = v28;
  }

  if ((a2 & 8) == 0)
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Porcupine Safari is unavailable", v30, 2u);
    }

    v29 = [ICQInternetPrivacyBannerModel alloc];
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"INTERNET_PRIVACY_SAFARI_OFF_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"INTERNET_PRIVACY_SAFARI_OFF_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_SAFARI_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];
    v24 = [(ICQInternetPrivacyBannerModel *)v29 initWithTitle:v19 message:v21 buttonTitle:v23 status:16 networkName:0];
    v25 = *(*(a1 + 48) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;

    [*(a1 + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __61__ICQInternetPrivacyViewModel__fetchBannerModelsForPaidTier___block_invoke_187(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) count];
  if (v3 >= [*(a1 + 40) count] && objc_msgSend(*v2, "count"))
  {
    v4 = 3;
  }

  else
  {
    v5 = [*v2 count];
    if (v5 >= [*(a1 + 40) count])
    {
      goto LABEL_7;
    }

    v4 = 4;
    v2 = (a1 + 40);
  }

  [*(a1 + 48) setStatus:v4];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*v2, "count")}];
  [*(a1 + 48) setIssueOrSuggestionCount:v6];

LABEL_7:
  v7 = [*(a1 + 32) count];
  if (v7 == 2)
  {
    v8 = 32;
  }

  else
  {
    v8 = 40;
  }

  if (v7 == 2)
  {
    v9 = 40;
  }

  else
  {
    v9 = 32;
  }

  [*(a1 + 56) addObjectsFromArray:*(a1 + v8)];
  [*(a1 + 56) addObjectsFromArray:*(a1 + v9)];
  v10 = _ICQGetLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 56) copy];
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_275623000, v10, OS_LOG_TYPE_DEFAULT, "Banners returned: %@", &v14, 0xCu);
  }

  v12 = *(a1 + 64);
  v13 = [*(a1 + 56) copy];
  (*(v12 + 16))(v12, v13);
}

- (void)updateStatusStringForBannerModels:(id)models
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  modelsCopy = models;
  v5 = [modelsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"INTERNET_PRIVACY_STATUS_MAC_UNSUPPORTED_WIFI";
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(modelsCopy);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 status] == 1)
        {
          goto LABEL_25;
        }

        if ([v10 status] == 128)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_WIFI_OFF";
          goto LABEL_25;
        }

        if ([v10 status] == 32)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_DNS_OFF";
          goto LABEL_25;
        }

        if ([v10 status] == 16)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_SAFARI_OFF";
          goto LABEL_25;
        }

        if ([v10 status] == 64)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_UNAVAILABLE_REGION";
          goto LABEL_25;
        }

        if ([v10 status] == 512)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_UNAVAILABLE_SYSTEM";
          goto LABEL_25;
        }

        if ([v10 status] == 1024 || objc_msgSend(v10, "status") == 2048 || objc_msgSend(v10, "status") == 0x2000)
        {
          v7 = @"INTERNET_PRIVACY_STATUS_MAC_UNAVAILABLE_FRAUD";
LABEL_25:
          v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v11 = [v12 localizedStringForKey:v7 value:&stru_28844FC60 table:@"Localizable"];

          goto LABEL_26;
        }
      }

      v6 = [modelsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
      v11 = 0;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_26:

  [(ICQInternetPrivacyViewModel *)self setStatusStringForPrefPane:v11];
}

- (NSString)statusStringForPrefPane
{
  v8 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_statusStringForPrefPane;
  os_unfair_lock_unlock(&self->_lock);
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Returning status string %@", &v6, 0xCu);
  }

  return v3;
}

- (void)setStatusStringForPrefPane:(id)pane
{
  v13 = *MEMORY[0x277D85DE8];
  paneCopy = pane;
  os_unfair_lock_lock(&self->_lock);
  v6 = self->_statusStringForPrefPane;
  objc_storeStrong(&self->_statusStringForPrefPane, pane);
  os_unfair_lock_unlock(&self->_lock);
  if (([v6 isEqualToString:paneCopy] & 1) == 0 && paneCopy | v6)
  {
    v8 = _ICQGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = paneCopy;
      _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Private Relay status string has changed! old status: %@, new status: %@", &v9, 0x16u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"PorcupineStatusDidChange" object:0];
  }

  else
  {
    defaultCenter = _ICQGetLogSystem();
    if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEBUG))
    {
      [ICQInternetPrivacyViewModel setStatusStringForPrefPane:defaultCenter];
    }
  }
}

- (id)country
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  details = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus details];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    details2 = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus details];
    v7 = [details2 objectForKeyedSubscript:*MEMORY[0x277D2CA78]];
    v8 = [v7 componentsSeparatedByString:@"-"];
    v9 = *MEMORY[0x277CBE690];
    v10 = [v8 objectAtIndexedSubscript:0];
    v11 = [currentLocale displayNameForKey:v9 value:v10];
  }

  else
  {
    v12 = *MEMORY[0x277CBE690];
    details2 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
    v11 = [currentLocale displayNameForKey:v12 value:details2];
  }

  return v11;
}

- (void)isLocationSharingEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = MEMORY[0x277D2CA68];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__ICQInternetPrivacyViewModel_isLocationSharingEnabled___block_invoke;
  v6[3] = &unk_27A65C308;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [v4 getGeohashSharingPreference:MEMORY[0x277D85CD0] completionHandler:v6];
}

void __56__ICQInternetPrivacyViewModel_isLocationSharingEnabled___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v8 = 138412546;
    v9 = v7;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Porcupine location sharing is enabled: %@ error: %@", &v8, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)enableLocationSharing:(BOOL)sharing completion:(id)completion
{
  sharingCopy = sharing;
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (sharingCopy)
    {
      v7 = @"YES";
    }

    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Porcupine should location sharing %@", buf, 0xCu);
  }

  v8 = MEMORY[0x277D2CA68];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__ICQInternetPrivacyViewModel_enableLocationSharing_completion___block_invoke;
  v10[3] = &unk_27A65C330;
  v12 = sharingCopy;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 setGeohashSharingPreference:sharingCopy queue:MEMORY[0x277D85CD0] completionHandler:v10];
}

void __64__ICQInternetPrivacyViewModel_enableLocationSharing_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (*(a1 + 40))
    {
      v5 = @"YES";
    }

    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Set Porcupine location sharing enabled status: %@ error: %@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_fetchUserTierWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277D2CA68];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__ICQInternetPrivacyViewModel__fetchUserTierWithCompletion___block_invoke;
  v7[3] = &unk_27A65C358;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getUserTierExtended:MEMORY[0x277D85CD0] completionHandler:v7];
}

void __60__ICQInternetPrivacyViewModel__fetchUserTierWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 == 1)
    {
      v9 = @"Free";
    }

    else if (a2 == 2)
    {
      v9 = @"Subscriber";
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", a2];
    }

    v10 = @"NO";
    *buf = 136315906;
    v12 = "[ICQInternetPrivacyViewModel _fetchUserTierWithCompletion:]_block_invoke";
    if (a3)
    {
      v10 = @"YES";
    }

    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s: Got NSP user tier: %@ isPaused: %@, error: %@", buf, 0x2Au);
  }

  if (!v7)
  {
    [*(a1 + 32) setPaused:a3];
    [*(a1 + 32) setProxyUserTier:a2];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_fetchAccountTypeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CFB450];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__ICQInternetPrivacyViewModel__fetchAccountTypeWithCompletion___block_invoke;
  v7[3] = &unk_27A65C380;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 requestFeatureWithId:@"networking.privacy.subscriber" completion:v7];
}

void __63__ICQInternetPrivacyViewModel__fetchAccountTypeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if ([v5 canUse])
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    [*(a1 + 32) setProxyAccountType:v7];
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 32) proxyAccountType];
    if (v9 == 1)
    {
      v10 = @"Free";
    }

    else if (v9 == 2)
    {
      v10 = @"Subscriber";
    }

    else
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", v9];
    }

    *buf = 136315650;
    v12 = "[ICQInternetPrivacyViewModel _fetchAccountTypeWithCompletion:]_block_invoke";
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "%s: Got account type: %@, error: %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_refreshServiceStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277D2CA68];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__ICQInternetPrivacyViewModel__refreshServiceStatusWithCompletion___block_invoke;
  v7[3] = &unk_27A65C3A8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [v5 getServiceStatus:MEMORY[0x277D85CD0] completionHandler:v7];
}

void __67__ICQInternetPrivacyViewModel__refreshServiceStatusWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = [v5 serviceStatus];
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "PrivacyProxy serviceStatus: %lu error: %@", &v10, 0x16u);
  }

  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v5 networkStatuses];
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "PrivacyProxy networkStatuses: %@ error: %@", &v10, 0x16u);
  }

  [*(a1 + 32) setProxyServiceStatus:v5];
  (*(*(a1 + 40) + 16))();
}

- (void)_refreshOverallStatusWithCompletion:(id)completion
{
  completionCopy = completion;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__9;
  v22[4] = __Block_byref_object_dispose__9;
  v23 = 0;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke;
  v19[3] = &unk_27A65C3D0;
  v21 = v22;
  v6 = v5;
  v20 = v6;
  [(ICQInternetPrivacyViewModel *)self _fetchUserTierWithCompletion:v19];
  dispatch_group_enter(v6);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_2;
  v16[3] = &unk_27A65C3D0;
  v18 = v22;
  v7 = v6;
  v17 = v7;
  [(ICQInternetPrivacyViewModel *)self _fetchAccountTypeWithCompletion:v16];
  dispatch_group_enter(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_3;
  v13[3] = &unk_27A65C3D0;
  v15 = v22;
  v8 = v7;
  v14 = v8;
  [(ICQInternetPrivacyViewModel *)self _refreshServiceStatusWithCompletion:v13];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_4;
  block[3] = &unk_27A65AD90;
  v11 = completionCopy;
  v12 = v22;
  block[4] = self;
  v9 = completionCopy;
  dispatch_group_notify(v8, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v22, 8);
}

void __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __67__ICQInternetPrivacyViewModel__refreshOverallStatusWithCompletion___block_invoke_4(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) proxyAccountType];
  v3 = *(a1 + 32);
  if (v2 == 2)
  {
    [*(a1 + 32) setIsEnabled:{objc_msgSend(v3, "proxyUserTier") == 2}];
    v5 = [*(a1 + 32) _statusForSubscriber];
    v4 = *(a1 + 32);
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    [v3 setIsEnabled:0];
    v4 = *(a1 + 32);
    v5 = 0;
LABEL_5:
    [v4 setStatus:v5];
    goto LABEL_7;
  }

  [v3 setStatus:7];
  [*(a1 + 32) setIsEnabled:0];
LABEL_7:
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) status] - 1;
    if (v7 > 7)
    {
      v8 = @"None";
    }

    else
    {
      v8 = off_27A65C3F0[v7];
    }

    v9 = [*(a1 + 32) isEnabled];
    v10 = [*(a1 + 32) proxyAccountType];
    if (v10 == 1)
    {
      v11 = @"Free";
    }

    else if (v10 == 2)
    {
      v11 = @"Subscriber";
    }

    else
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown (%lu)", v10];
    }

    v12 = *(*(*(a1 + 48) + 8) + 40);
    *buf = 138413058;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Refreshed overall status, got status: %@, enabled: %d, account type: %@, error: %@", buf, 0x26u);
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, *(*(*(a1 + 48) + 8) + 40));
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "Fetched user tier and service information upon ICQInternetPrivacyViewModel initiation.", buf, 2u);
  }
}

- (void)_addNetworkOutageBannerTo:(id)to withCompletion:(id)completion
{
  v31 = *MEMORY[0x277D85DE8];
  toCopy = to;
  completionCopy = completion;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  networkStatuses = [(PrivacyProxyServiceStatus *)self->_proxyServiceStatus networkStatuses];
  v9 = [networkStatuses countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(networkStatuses);
      }

      v13 = *(*(&v26 + 1) + 8 * v12);
      if ([v13 networkType] == 1)
      {
        networkName = [v13 networkName];

        if (networkName)
        {
          break;
        }
      }

      if (v10 == ++v12)
      {
        v10 = [networkStatuses countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    networkName2 = [v13 networkName];

    if (networkName2)
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_10:
  }

  v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  networkName2 = [v16 localizedStringForKey:@"INTERNET_PRIVACY_UNKOWN_NETWORK_NAME" value:&stru_28844FC60 table:@"Localizable"];

LABEL_13:
  v17 = MEMORY[0x277CCACA8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"INTERNET_PRIVACY_NETWORK_OUTAGE_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
  v20 = [v17 stringWithFormat:v19, networkName2];

  v21 = [ICQInternetPrivacyBannerModel alloc];
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = [v22 localizedStringForKey:@"INTERNET_PRIVACY_NETWORK_OUTAGE_TITLE" value:&stru_28844FC60 table:@"Localizable"];
  v24 = [(ICQInternetPrivacyBannerModel *)v21 initWithTitle:v23 message:v20 buttonTitle:0 status:0x2000 networkName:0];

  self->_status = 5;
  [toCopy addObject:v24];
  v25 = [toCopy copy];
  completionCopy[2](completionCopy, v25);
}

- (NSString)navTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)onTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_ON" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)offTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_OFF" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unavailableTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UNAVAILABLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)notSupportedTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_NOT_SUPPORTED_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (id)issueTitle:(id)title
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  titleCopy = title;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ISSUE_COUNT_FORMAT" value:&stru_28844FC60 table:@"Localizable"];
  [titleCopy doubleValue];
  v9 = v8;

  v10 = [v3 localizedStringWithFormat:v7, v9];

  return v10;
}

- (id)suggestionTitle:(id)title
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  titleCopy = title;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"SUGGESTION_COUNT_FORMAT" value:&stru_28844FC60 table:@"Localizable"];
  [titleCopy doubleValue];
  v9 = v8;

  v10 = [v3 localizedStringWithFormat:v7, v9];

  return v10;
}

- (NSString)learnMoreTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)learnMoreButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)learnMoreLinkTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_LINK_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)upgradeTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UPGRADE_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)waitingTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_WAITING_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)explanationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_EXPLANATION_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)explanationMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_EXPLANATION_SUBSCRIBED_ON_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)explanationButtonTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SET_UP_MATTERHORN_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)privateRelayPausedTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_PAUSED_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)privateRelayPausedMessage
{
  if ([(ICQInternetPrivacyViewModel *)self isPaused])
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringForKey:@"PRIVATE_RELAY_PAUSED_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];
  }

  else
  {
    v3 = &stru_28844FC60;
  }

  return v3;
}

- (NSString)incompatibleSitesMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_INCOMPATIBLE_SITES_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (id)pausedPrivateRelayFooter
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"PRIVATE_RELAY_IN_SNOOZE_MODE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationSettingsTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_SETTINGS_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationEnabledTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_ENABLED_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationDisabledTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_DISABLED_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationEnabledMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_ENABLED_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)IPAddressLocationDisabledMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_IPADDRESS_LOCATION_DISABLED_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedTurnOffAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_ALERT_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (id)unsupportedTurnOffAlertTitleFor:(id)for
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  forCopy = for;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_WIFI_ALERT_TITLE" value:&stru_28844FC60 table:@"Localizable"];
  forCopy = [v3 stringWithFormat:v7, forCopy];

  return forCopy;
}

- (id)unsupportedTurnOffCellularAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_CELLULAR_ALERT_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedTurnOffWifiAlertMessage
{
  v2 = MGGetBoolAnswer();
  v3 = @"WIFI";
  if (v2)
  {
    v3 = @"WLAN";
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = v3;
  v6 = [v4 stringWithFormat:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_ALERT_%@_MESSAGE", v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  v8 = [v7 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v8;
}

- (NSString)unsupportedTurnOffCellularAlertMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_ALERT_CELLULAR_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedTurnOffAlertOk
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_UNSUPPORTED_TURN_OFF_ALERT_OK" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedSwitchOffAlertTitle
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_IPAD_TITLE";
  }

  else
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_IPHONE_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v7;
}

- (NSString)unsupportedWifiSwitchOffAlertMessage
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_WIFI_IPAD_MESSAGE";
  }

  else
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_WIFI_IPHONE_MESSAGE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v7;
}

- (NSString)unsupportedCellularSwitchOffAlertMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_CELLULAR_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedSwitchOffNetworkOnly
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_NETWORK_ONLY" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedSwitchOffProviderOnly
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_PROVIDER_ONLY" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)unsupportedSwitchOffCompletely
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_IPAD_COMPLETELY";
  }

  else
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_IPHONE_COMPLETELY";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v7;
}

- (NSString)unsupportedSwitchOffCancel
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_UNSUPPORTED_ALERT_CANCEL" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchOffAlertTitle
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = v4;
  if (userInterfaceIdiom == 1)
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_IPAD_ALERT_TITLE";
  }

  else
  {
    v6 = @"INTERNET_PRIVACY_SWITCH_OFF_ALERT_TITLE";
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v7;
}

- (NSString)switchOffAlertPrefPaneTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_MAC_ALERT_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchOffAlertMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_ALERT_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchOffAlertTurnOff
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_ALERT_TURN_OFF" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchOffAlertPause
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_SWITCH_OFF_ALERT_PAUSE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)switchOffAlertLearnMore
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_LEARN_MORE_BUTTON_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)turnOnSafariAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_SAFARI_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)turnOnSafariAlertMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_SAFARI_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)turnOnDNSAlertTitle
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_DNS_TITLE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)turnOnDNSAlertMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"INTERNET_PRIVACY_TURN_ON_DNS_MESSAGE" value:&stru_28844FC60 table:@"Localizable"];

  return v3;
}

- (NSString)internetPrivacyLearnMoreMessage
{
  v2 = MGGetBoolAnswer();
  v3 = @"WIFI";
  if (v2)
  {
    v3 = @"WLAN";
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = v3;
  v6 = [v4 stringWithFormat:@"INTERNET_PRIVACY_LEARN_MORE_%@_NETWORK_BODY", v5];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  v8 = [v7 localizedStringForKey:v6 value:&stru_28844FC60 table:@"Localizable"];

  return v8;
}

- (NSString)privateRelayStatusText
{
  status = self->_status;
  if (status <= 3)
  {
    if (status <= 1)
    {
      if (status)
      {
        if (status != 1)
        {
          goto LABEL_22;
        }

        onTitle = [(ICQInternetPrivacyViewModel *)self onTitle];
      }

      else
      {
        onTitle = [(ICQInternetPrivacyViewModel *)self upgradeTitle];
      }

      goto LABEL_21;
    }

    if (status == 2)
    {
      onTitle = [(ICQInternetPrivacyViewModel *)self offTitle];
      goto LABEL_21;
    }

    issueOrSuggestionCount = [(ICQInternetPrivacyViewModel *)self issueOrSuggestionCount];
    v7 = [(ICQInternetPrivacyViewModel *)self issueTitle:issueOrSuggestionCount];
LABEL_19:
    v2 = v7;

    goto LABEL_22;
  }

  if (status > 5)
  {
    switch(status)
    {
      case 6:
        onTitle = [(ICQInternetPrivacyViewModel *)self notSupportedTitle];
        break;
      case 7:
        onTitle = [(ICQInternetPrivacyViewModel *)self waitingTitle];
        break;
      case 8:
        onTitle = [(ICQInternetPrivacyViewModel *)self privateRelayPausedTitle];
        break;
      default:
        goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (status == 4)
  {
    issueOrSuggestionCount = [(ICQInternetPrivacyViewModel *)self issueOrSuggestionCount];
    v7 = [(ICQInternetPrivacyViewModel *)self suggestionTitle:issueOrSuggestionCount];
    goto LABEL_19;
  }

  onTitle = [(ICQInternetPrivacyViewModel *)self unavailableTitle];
LABEL_21:
  v2 = onTitle;
LABEL_22:

  return v2;
}

@end