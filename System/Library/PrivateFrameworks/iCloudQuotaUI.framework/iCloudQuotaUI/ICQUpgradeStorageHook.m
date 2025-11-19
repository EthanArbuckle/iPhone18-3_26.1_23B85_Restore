@interface ICQUpgradeStorageHook
- (BOOL)isLiftUIFlow;
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (ICQUpgradeStorageHook)initWithOffer:(id)a3 flowDelegate:(id)a4;
- (RUIServerHookDelegate)delegate;
- (RUIServerHookResponse)serverHookResponse;
- (id)continuationResponseBody;
- (id)dummyRequestWithAccount:(id)a3 token:(id)a4;
- (id)storageContextJSONString;
- (id)upgradeStorageContextHeaderDictionary;
- (int64_t)_statusCode;
- (int64_t)offerAction;
- (void)_appGoesToBackground:(id)a3;
- (void)_firedStopActivityIndicatorTimer:(id)a3;
- (void)_handlePurchaseRequestSucceededNotification;
- (void)beginLegacyPurchaseFlow;
- (void)beginOsloPurchaseFlow;
- (void)beginPurchaseFlowUsingParameters:(id)a3 completion:(id)a4;
- (void)enableCloudPhotoLibraryWithCompletion:(id)a3;
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)handleDialogRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)managerDidCancel:(id)a3;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
- (void)registerForDarwinNotifications;
- (void)stopActivityIndicator;
@end

@implementation ICQUpgradeStorageHook

- (ICQUpgradeStorageHook)initWithOffer:(id)a3 flowDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ICQUpgradeStorageHook;
  v9 = [(ICQUpgradeStorageHook *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_offer, a3);
    objc_storeWeak(&v10->_flowDelegate, v8);
    v11 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v12 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQUpgradeFlowURLSession"];
    [v11 set_appleIDContext:v12];

    v13 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v11];
    session = v10->_session;
    v10->_session = v13;
  }

  return v10;
}

- (BOOL)shouldMatchElement:(id)a3
{
  v5 = a3;
  v6 = [v5 identifier];
  v7 = [v6 isEqualToString:@"upgradeButton"];

  if (v7)
  {
    objc_storeStrong(&self->_ruiElement, a3);
    v8 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__firedStopActivityIndicatorTimer_ selector:0 userInfo:0 repeats:45.0];
    stopActivityIndicatorTimer = self->_stopActivityIndicatorTimer;
    self->_stopActivityIndicatorTimer = v8;

    [v5 startActivityIndicator];
  }

  return 0;
}

- (void)_firedStopActivityIndicatorTimer:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Did not receive callback from AMS for 30s stopping spinner", v5, 2u);
  }

  [(ICQUpgradeStorageHook *)self stopActivityIndicator];
}

- (void)stopActivityIndicator
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Stopping activity indicator", buf, 2u);
  }

  [(NSTimer *)self->_stopActivityIndicatorTimer invalidate];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICQUpgradeStorageHook_stopActivityIndicator__block_invoke;
  block[3] = &unk_27A65A820;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a6;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v7 name];
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "Couldn't process element |%@|, It's not yet supported.", &v11, 0xCu);
  }

  (*(v8 + 2))(v8, 0, 0);
}

- (BOOL)shouldMatchModel:(id)a3
{
  v4 = a3;
  v5 = [v4 clientInfo];
  v6 = [v5 objectForKeyedSubscript:@"action"];
  v7 = [v6 isEqualToString:@"UPGRADE_ICLOUD_STORAGE"];
  v30 = v6;
  if (v7)
  {
    v8 = v5;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v12 = [v4 clientInfo];
    v27 = [v12 objectForKeyedSubscript:@"action"];
    v28 = v12;
    if ([v27 isEqualToString:@"UPGRADE_ICLOUD_STORAGE_OSLO"])
    {
      v8 = v5;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v18 = [v4 clientInfo];
      v19 = [v18 objectForKeyedSubscript:@"action"];
      if ([v19 isEqualToString:@"UPGRADE_ENABLE_ICPL"])
      {
        v8 = v5;
        v3 = v19;
        v26 = v18;
        v10 = 0;
        v11 = 0;
        v9 = 1;
      }

      else
      {
        v20 = [v4 clientInfo];
        v21 = [v20 objectForKeyedSubscript:@"action"];
        if ([v21 isEqualToString:@"UPGRADE_ICLOUD_STORAGE_DIRECT_TO_OSLO"])
        {
          v29 = v21;
          v8 = v5;
          v5 = v20;
          v3 = v19;
          v26 = v18;
          v11 = 0;
          v9 = 1;
          v10 = 1;
        }

        else
        {
          v22 = [v4 clientInfo];
          v23 = [v22 objectForKeyedSubscript:@"action"];
          if (([v23 isEqualToString:@"UPGRADE_ENABLE_ICPL_OSLO"] & 1) == 0)
          {

            v15 = 0;
            goto LABEL_10;
          }

          v24 = v23;
          v25 = v22;
          v29 = v21;
          v8 = v5;
          v5 = v20;
          v3 = v19;
          v26 = v18;
          v9 = 1;
          v10 = 1;
          v11 = 1;
        }
      }
    }
  }

  v13 = [v4 clientInfo];
  v14 = [v13 objectForKeyedSubscript:@"parameters"];
  v15 = v14 != 0;

  if (v11)
  {

    v16 = v29;
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v16 = v29;
    if (!v10)
    {
LABEL_7:
      v5 = v8;
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  v5 = v8;
  if (v9)
  {
LABEL_8:
  }

LABEL_9:
  v6 = v30;
  if ((v7 & 1) == 0)
  {
LABEL_10:
  }

  return v15;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 clientInfo];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v8;

  v10 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"parameters"];
  v11 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"action"];
  v12 = [ICQPurchase parseParameters:v10 action:[(ICQUpgradeStorageHook *)self offerAction]];
  if (v12)
  {
    v13 = [ICQPurchase clearCacheAndNotifyClientsWithCompletion:v7];
    [(ICQUpgradeStorageHook *)self setCompletionHandler:v13];

    [(ICQOffer *)self->_offer updateOfferWithPlanDetails:v12 actionString:v11];
    v14 = [(ICQUpgradeStorageHook *)self completionHandler];
    [(ICQUpgradeStorageHook *)self beginPurchaseFlowUsingParameters:v10 completion:v14];
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v6 name];
      v18 = 138412290;
      v19 = v16;
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't process object model |%@|, No plan details found.", &v18, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
    [WeakRetained dismissUpgradeFlowWithSuccess:0];
  }
}

- (RUIServerHookResponse)serverHookResponse
{
  v3 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"refreshUrl"];
  v4 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"refreshHttpMethod"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "No refresh URL or Http method found.", buf, 2u);
    }

    v15 = 0;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v3];
    v9 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v8];
    v10 = MEMORY[0x277CCACA8];
    v11 = [(ICQUpgradeStorageHook *)self _statusCode];
    v12 = [(ICQUpgradeStorageHook *)self purchase];
    v13 = [v10 stringWithFormat:@"<?xml version='1.0' encoding='UTF-8'?><!DOCTYPE plist PUBLIC '-//Apple//DTD PLIST 1.0//EN' 'http://www.apple.com/DTDs/PropertyList-1.0.dtd'><plist version='1.0'><dict><key>statusCode</key><integer>%ld</integer><key>AMSServerErrorCode</key><integer>%ld</integer></dict></plist>", v11, objc_msgSend(v12, "amsServerErrorCode")];

    v14 = [v13 dataUsingEncoding:4];
    [v9 setHTTPBody:v14];

    [v9 setHTTPMethod:v5];
    v15 = objc_alloc_init(MEMORY[0x277D46208]);
    [v15 setContinuationRequest:v9];
  }

  return v15;
}

- (id)continuationResponseBody
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"purchaseStatus";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQUpgradeStorageHook _statusCode](self, "_statusCode")}];
  v9[1] = @"amsErrorCodes";
  v10[0] = v3;
  v4 = MEMORY[0x277CCABB0];
  v5 = [(ICQUpgradeStorageHook *)self purchase];
  v6 = [v4 numberWithInteger:{objc_msgSend(v5, "amsServerErrorCode")}];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (void)beginPurchaseFlowUsingParameters:(id)a3 completion:(id)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  v6 = [WeakRetained hostingNavigationController];

  if (v6)
  {
    v7 = MEMORY[0x277CBEA60];
    v8 = [WeakRetained hostingNavigationController];
    v9 = [v8 topViewController];
    v10 = [v7 arrayWithObject:v9];

    v11 = [WeakRetained hostingNavigationController];
    [v11 setViewControllers:v10];
  }

  if ([MEMORY[0x277D7F3E0] isServerMockingEnabled])
  {
    [(ICQUpgradeStorageHook *)self mockPurchaseFlow];
  }

  else
  {
    v12 = [(ICQUpgradeStorageHook *)self offerAction];
    if ((v12 - 116) >= 3)
    {
      if (v12 == 108 || v12 == 105)
      {
        [(ICQUpgradeStorageHook *)self beginLegacyPurchaseFlow];
      }

      else
      {
        v13 = _ICQGetLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [ICQUpgradeStorageHook beginPurchaseFlowUsingParameters:v13 completion:?];
        }
      }
    }

    else
    {
      [(ICQUpgradeStorageHook *)self beginOsloPurchaseFlow];
    }
  }
}

- (void)beginLegacyPurchaseFlow
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CB8F48] defaultStore];
  v4 = [v3 aa_primaryAppleAccount];
  v5 = [v3 aa_grandSlamAccountForiCloudAccount:v4];
  v40 = 0;
  v6 = [v3 credentialForAccount:v5 serviceID:@"com.apple.gs.icloud.storage.buy" error:&v40];
  v7 = v40;
  v8 = v7;
  if (!v7)
  {
LABEL_12:
    if (!v6)
    {
      v18 = _ICQGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "Credential is nil but no error reported.", buf, 2u);
      }
    }

    v10 = [v6 token];
    if (v10)
    {
      goto LABEL_23;
    }

    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "No storage buy token present.", buf, 2u);
    }

    if (![(ICQOffer *)self->_offer isBuddyOffer])
    {
LABEL_23:
      v21 = v8;
      v22 = objc_alloc(MEMORY[0x277CBEB38]);
      v23 = [(ICQUpgradeStorageHook *)self upgradeStorageContextHeaderDictionary];
      v24 = [v22 initWithDictionary:v23];

      if (v10)
      {
        v38 = v6;
        v39 = v3;
        v25 = v5;
        v26 = v4;
        v27 = [(ICQUpgradeStorageHook *)self dummyRequestWithAccount:v4 token:v10];
        v28 = [(NSURLSession *)self->_session configuration];
        v29 = [v28 _appleIDContext];
        v30 = [v29 appleIDHeadersForRequest:v27];

        if ([v30 count] < 2)
        {

          v10 = 0;
        }

        else
        {
          [v24 addEntriesFromDictionary:v30];
        }

        v4 = v26;
        v5 = v25;
        v6 = v38;
        v3 = v39;
      }

      v8 = v21;
      v31 = v5;
      if (!self->_cloudStorageOffersManager)
      {
        v32 = objc_alloc_init(ICQUICloudStorageOffersManager);
        cloudStorageOffersManager = self->_cloudStorageOffersManager;
        self->_cloudStorageOffersManager = v32;

        [(ICQUICloudStorageOffersManager *)self->_cloudStorageOffersManager setSkipCompletionAlert:1];
        [(ICQUICloudStorageOffersManager *)self->_cloudStorageOffersManager setSupportsModernAlerts:1];
        [(ICQUICloudStorageOffersManager *)self->_cloudStorageOffersManager setDelegate:self];
      }

      [(ICQUICloudStorageOffersManager *)self->_cloudStorageOffersManager setSkipRetryWithoutToken:[(ICQOffer *)self->_offer isBuddyOffer]];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v35 = [WeakRetained presentationContextForHook:self];

      v36 = self->_cloudStorageOffersManager;
      v37 = [ICQPurchase upgradeStorageQueryDictionaryForOffer:self->_offer buttonID:self->_buttonId];
      [(ICQUICloudStorageOffersManager *)v36 beginFlowWithNavigationController:v35 purchaseToken:v10 buyParameters:v37 requestHeaders:v24 modally:0];

      v5 = v31;
    }

    else
    {
      v20 = _ICQGetLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v20, OS_LOG_TYPE_DEFAULT, "Dismissing the flow as it's a buddy offer and no token received.", buf, 2u);
      }

      v10 = objc_loadWeakRetained(&self->_flowDelegate);
      [v10 dismissUpgradeFlowWithSuccess:0];
    }

    goto LABEL_31;
  }

  v9 = [v7 userInfo];
  v10 = [v9 objectForKey:*MEMORY[0x277CCA7E8]];

  v11 = [v10 domain];
  if (![v11 isEqualToString:@"com.apple.accounts.keychain"])
  {

LABEL_9:
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v42 = v8;
      _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "Buy storage failed to get token with error: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v12 = v8;
  v13 = [v10 code];

  v14 = v13 == -128;
  v8 = v12;
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "User cancelled.", buf, 2u);
  }

  v16 = objc_loadWeakRetained(&self->_flowDelegate);
  [v16 dismissUpgradeFlowWithSuccess:0];

LABEL_31:
}

- (void)beginOsloPurchaseFlow
{
  v3 = [[ICQPurchase alloc] initWithOffer:self->_offer clientInfo:self->_clientInfo];
  [(ICQUpgradeStorageHook *)self setPurchase:v3];

  v4 = [(ICQUpgradeStorageHook *)self flowtype];
  v5 = [v4 isEqualToString:@"native"];
  v6 = [(ICQUpgradeStorageHook *)self purchase];
  [v6 setIsLegacyNativeFlow:v5];

  v7 = [(ICQUpgradeStorageHook *)self purchase];
  [v7 setDelegate:self];

  presentingSceneIdentifier = self->_presentingSceneIdentifier;
  v9 = [(ICQUpgradeStorageHook *)self purchase];
  [v9 setPresentingSceneIdentifier:presentingSceneIdentifier];

  presentingSceneBundleIdentifier = self->_presentingSceneBundleIdentifier;
  v11 = [(ICQUpgradeStorageHook *)self purchase];
  [v11 setPresentingSceneBundleIdentifier:presentingSceneBundleIdentifier];

  v12 = [(ICQUpgradeStorageHook *)self purchase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__ICQUpgradeStorageHook_beginOsloPurchaseFlow__block_invoke;
  v13[3] = &unk_27A65A7F8;
  v13[4] = self;
  [v12 startPurchaseWithCompletion:v13];
}

void __46__ICQUpgradeStorageHook_beginOsloPurchaseFlow__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([*(*(a1 + 32) + 8) action] == 118)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v11 = a2;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Direct to Oslo purchase finished with success: %d, error: %@", buf, 0x12u);
    }

    if ((a2 & 1) != 0 || [v5 code] != 6)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__ICQUpgradeStorageHook_beginOsloPurchaseFlow__block_invoke_106;
      block[3] = &unk_27A65A820;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
      [WeakRetained dismissUpgradeFlowWithSuccess:0];
    }
  }

  v8 = [*(a1 + 32) completionHandler];
  (v8)[2](v8, a2, v5);
}

void __46__ICQUpgradeStorageHook_beginOsloPurchaseFlow__block_invoke_106(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained presentHostingNavigationController];
}

- (int64_t)offerAction
{
  v2 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"action"];
  v3 = _ICQActionForServerActionString();

  return v3;
}

- (id)dummyRequestWithAccount:(id)a3 token:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/example"];
  v8 = [MEMORY[0x277CCAB70] requestWithURL:v7 cachePolicy:1 timeoutInterval:30.0];
  [v8 aa_addBasicAuthorizationHeaderWithAccount:v5 preferUsingPassword:0];
  [v8 ak_addClientInfoHeader];
  v9 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v10 = [v9 abbreviation];
  [v8 setValue:v10 forHTTPHeaderField:@"X-MMe-Timezone"];

  [v8 ak_addCountryHeader];
  if (v6)
  {
    v11 = [v5 aa_altDSID];
    [v8 ak_addAuthorizationHeaderWithServiceToken:v6 forAltDSID:v11];
  }

  return v8;
}

- (id)upgradeStorageContextHeaderDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(ICQUpgradeStorageHook *)self storageContextJSONString];
  if ([v2 length])
  {
    v5 = @"X-Apple-Storage-Context";
    v6[0] = v2;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (id)storageContextJSONString
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (![v3 length])
  {
    v8 = 0;
    goto LABEL_11;
  }

  v15 = @"appName";
  v16[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = v3;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Failed to parse storage context for bundleID %@ with error: %@", buf, 0x16u);
    }
  }

  else if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

LABEL_11:

  return v8;
}

- (int64_t)_statusCode
{
  v3 = [(ICQUpgradeStorageHook *)self purchase];

  if (!v3)
  {
    return self->_legacyStatusCode;
  }

  v4 = [(ICQUpgradeStorageHook *)self purchase];
  v5 = [v4 statusCode];

  return v5;
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "ICQUICloudStorageOffersManager: willPresentViewController: %@", &v6, 0xCu);
  }
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Failed to upgrade storage with error: %@", &v7, 0xCu);
  }

  self->_legacyStatusCode = [v5 code];
  (*(self->_completionHandler + 2))();
}

- (void)managerDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "Upgrade storage cancelled.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  [WeakRetained dismissUpgradeFlowWithSuccess:0];
}

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Failed to upgrade storage with error: %@", &v11, 0xCu);
    }

    self->_legacyStatusCode = [v5 code];
    v8 = *(self->_completionHandler + 2);
  }

  else
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Storage upgraded successfully. Call completion handler and it'll load refreshURL if exist.", &v11, 2u);
    }

    self->_legacyStatusCode = 0;
    v9 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"action"];
    v10 = [v9 isEqualToString:@"UPGRADE_ENABLE_ICPL"];

    if (v10)
    {
      [ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:&__block_literal_global_23];
    }

    v8 = *(self->_completionHandler + 2);
  }

  v8();
}

- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "We were asked to authenticate.  Attempting silent authentication.", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__ICQUpgradeStorageHook_handleAuthenticateRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __71__ICQUpgradeStorageHook_handleAuthenticateRequest_purchase_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v3 = [WeakRetained presentationContext];

  v4 = objc_alloc(MEMORY[0x277CEE878]);
  v5 = [*(a1 + 40) account];
  v6 = [*(a1 + 40) options];
  v7 = [v4 initWithAccount:v5 presentingViewController:v3 options:v6];

  v8 = [v7 performAuthentication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__ICQUpgradeStorageHook_handleAuthenticateRequest_purchase_completion___block_invoke_2;
  v9[3] = &unk_27A65B038;
  v10 = *(a1 + 48);
  [v8 addFinishBlock:v9];
}

void __71__ICQUpgradeStorageHook_handleAuthenticateRequest_purchase_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke_2_cold_1(v5, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_275623000, v8, OS_LOG_TYPE_DEFAULT, "Successfully finished silent authentication.", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)handleDialogRequest:(id)a3 purchase:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "We were asked to handle a dialog request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__ICQUpgradeStorageHook_handleDialogRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __65__ICQUpgradeStorageHook_handleDialogRequest_purchase_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v5 = [WeakRetained presentationContext];

  v3 = [objc_alloc(MEMORY[0x277CEE868]) initWithRequest:a1[5] presentingViewController:v5];
  v4 = [v3 present];
  [v4 addFinishBlock:a1[6]];
}

- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "We were asked to handle an engagement request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ICQUpgradeStorageHook_handleEngagementRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __69__ICQUpgradeStorageHook_handleEngagementRequest_purchase_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 32));
  v8 = [WeakRetained presentationContext];

  v3 = objc_alloc(MEMORY[0x277CEE8D8]);
  v4 = a1[5];
  v5 = [MEMORY[0x277CEE3F8] quotaBag];
  v6 = [v3 initWithRequest:v4 bag:v5 presentingViewController:v8];

  v7 = [v6 presentEngagement];
  [v7 addFinishBlock:a1[6]];
}

- (BOOL)isLiftUIFlow
{
  WeakRetained = objc_loadWeakRetained(&self->_flowDelegate);
  v3 = [WeakRetained isLiftUIFlow];

  return v3;
}

- (void)_handlePurchaseRequestSucceededNotification
{
  v3 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"action"];
  if ([v3 isEqualToString:@"UPGRADE_ENABLE_ICPL_OSLO"])
  {
  }

  else
  {
    v4 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"action"];
    v5 = [v4 isEqualToString:@"UPGRADE_ICLOUD_STORAGE_DIRECT_TO_OSLO"];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  [ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:&__block_literal_global_130];
LABEL_5:
  self->_legacyStatusCode = 0;
  v6 = *(self->_completionHandler + 2);

  v6();
}

- (void)_appGoesToBackground:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "app goes to background", buf, 2u);
  }

  if (self->_isListeningToAMS)
  {
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterRemoveObserver(DistributedCenter, self, @"kSSPurchaseRequestFinishedNotification", 0);
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self];

    self->_isListeningToAMS = 0;
    v7 = _ICQGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "remove observers", v8, 2u);
    }
  }
}

- (void)registerForDarwinNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  isListeningToAMS = self->_isListeningToAMS;
  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isListeningToAMS)
  {
    if (v5)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "already registered to kSSPurchaseRequestSucceededNotification", &v11, 2u);
    }
  }

  else
  {
    if (v5)
    {
      v11 = 138412290;
      v12 = @"kSSPurchaseRequestFinishedNotification";
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "registering for darwin notification %@", &v11, 0xCu);
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, self, _handleReceivedDarwinNotification, @"kSSPurchaseRequestFinishedNotification", 0, 1024);
    v7 = _ICQGetLogSystem();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = *MEMORY[0x277D76660];
    if (v8)
    {
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "registering for ns notification %@", &v11, 0xCu);
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__appGoesToBackground_ name:v9 object:0];

    self->_isListeningToAMS = 1;
  }
}

- (void)enableCloudPhotoLibraryWithCompletion:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[ICQUpgradeStorageHook enableCloudPhotoLibraryWithCompletion:]";
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [ICQUIPhotosHelper enableCloudPhotosLibraryWithCompletion:v3];
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end