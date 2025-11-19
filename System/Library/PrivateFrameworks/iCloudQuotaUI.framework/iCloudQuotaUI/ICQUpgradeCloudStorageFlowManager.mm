@interface ICQUpgradeCloudStorageFlowManager
+ (BOOL)_canDoTokenPurchaseWithOffer:(id)a3;
+ (BOOL)shouldSubclassShowForOffer:(id)a3;
- (NSDictionary)storagePurchaseKeybag;
- (id)_buyProductQueryDictionary;
- (id)_buyProductQueryKeySet;
- (id)_dummyRequestWithAccount:(id)a3 token:(id)a4;
- (id)_storageContextHeaderDictionary;
- (id)_storageContextJSONString;
- (id)initSubclassWithOffer:(id)a3;
- (void)_adoptRemoteUIWithPurchaseToken:(id)a3 buyParameters:(id)a4 requestHeaders:(id)a5;
- (void)_buyProductShouldUseToken:(BOOL)a3 completionHandler:(id)a4;
- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4;
- (void)_performPurchase;
- (void)_performPurchaseUsingSettingsUI;
- (void)_performPurchaseUsingTouchID;
- (void)manager:(id)a3 didCompleteWithError:(id)a4;
- (void)manager:(id)a3 loadDidFailWithError:(id)a4;
- (void)manager:(id)a3 willPresentViewController:(id)a4;
- (void)managerDidCancel:(id)a3;
@end

@implementation ICQUpgradeCloudStorageFlowManager

+ (BOOL)shouldSubclassShowForOffer:(id)a3
{
  v4 = a3;
  if ([v4 isBuddyOffer])
  {
    v5 = [a1 _canDoTokenPurchaseWithOffer:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)initSubclassWithOffer:(id)a3
{
  v9.receiver = self;
  v9.super_class = ICQUpgradeCloudStorageFlowManager;
  v3 = [(ICQUpgradeFlowManager *)&v9 initSubclassWithOffer:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v5 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQUpgradeFlowURLSession"];
    [v4 set_appleIDContext:v5];

    v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v4];
    v7 = v3[31];
    v3[31] = v6;
  }

  return v3;
}

- (void)_performPageButtonActionWithParameters:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _Block_copy(v7);
  purchaseCompletionHandler = self->_purchaseCompletionHandler;
  self->_purchaseCompletionHandler = v8;

  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D7F270]];
  storagePurchaseButtonId = self->_storagePurchaseButtonId;
  self->_storagePurchaseButtonId = v10;

  v12 = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
  [(ICQUpgradeFlowManager *)self setBindings:v12];

  if (!self->_storagePurchaseButtonId)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = v6;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Attempt to upgrade cloud storage without proper button ID (parameters: %@)", &v25, 0xCu);
    }
  }

  v14 = [(ICQUpgradeFlowManager *)self bindings];
  v15 = [v14 objectForKey:@"buyParams"];
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = v15;
  v17 = [v6 objectForKey:@"osloPurchase"];

  if (!v17)
  {
LABEL_11:
    [(ICQUpgradeCloudStorageFlowManager *)self _performPurchase];
    goto LABEL_12;
  }

  v18 = _ICQGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [(ICQUpgradeFlowManager *)self bindings];
    v20 = [v19 objectForKey:@"buyParams"];
    v25 = 138412290;
    v26 = v20;
    _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "Performing purchase using oslo with buyParams = %@", &v25, 0xCu);
  }

  v21 = [ICQUpgradeStorageHook alloc];
  v22 = [(ICQUpgradeFlowManager *)self offer];
  v23 = [(ICQUpgradeStorageHook *)v21 initWithOffer:v22 flowDelegate:self];

  [(ICQUpgradeStorageHook *)v23 setButtonId:self->_storagePurchaseButtonId];
  [(ICQUpgradeStorageHook *)v23 setFlowtype:@"native"];
  v24 = [ICQPurchase clearCacheAndNotifyClientsWithCompletion:v7];
  [(ICQUpgradeStorageHook *)v23 setCompletionHandler:v24];

  [(ICQUpgradeStorageHook *)v23 beginOsloPurchaseFlow];
LABEL_12:
}

- (NSDictionary)storagePurchaseKeybag
{
  v3 = [(ICQUpgradeFlowManager *)self offer];
  v4 = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseButtonId];
  v5 = [v3 storagePurchaseKeybagForButtonId:v4];

  return v5;
}

- (id)_buyProductQueryKeySet
{
  if (_buyProductQueryKeySet_onceToken != -1)
  {
    [ICQUpgradeCloudStorageFlowManager _buyProductQueryKeySet];
  }

  v3 = _buyProductQueryKeySet_sBuyProductQueryKeySet;

  return v3;
}

void __59__ICQUpgradeCloudStorageFlowManager__buyProductQueryKeySet__block_invoke()
{
  v0 = [MEMORY[0x277CBEB98] setWithArray:&unk_288479B40];
  v1 = _buyProductQueryKeySet_sBuyProductQueryKeySet;
  _buyProductQueryKeySet_sBuyProductQueryKeySet = v0;
}

- (id)_buyProductQueryDictionary
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryKeySet];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v18;
    *&v7 = 138412290;
    v16 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v4 objectForKey:{v11, v16}];
        if (v12)
        {
          [v3 setObject:v12 forKey:v11];
        }

        else
        {
          v13 = _ICQGetLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v16;
            v22 = v11;
            _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "query item %@ missing from keybag", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)_dummyRequestWithAccount:(id)a3 token:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
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
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v6;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "adding storageBuyingToken: %@", &v15, 0xCu);
    }

    v12 = [v5 aa_altDSID];
    [v8 ak_addAuthorizationHeaderWithServiceToken:v6 forAltDSID:v12];
  }

  v13 = [v8 copy];

  return v13;
}

- (id)_storageContextJSONString
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
      _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "Could not convert storage context for bundleID %@ to JSON. Error: %@", buf, 0x16u);
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

- (id)_storageContextHeaderDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextJSONString];
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

- (void)_buyProductShouldUseToken:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v37 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CB8F48] defaultStore];
  v8 = [v7 aa_primaryAppleAccount];
  if (!v4)
  {
    v19 = 0;
LABEL_10:
    v9 = [(ICQUpgradeCloudStorageFlowManager *)self _dummyRequestWithAccount:v8 token:v19];
    v20 = [(NSURLSession *)self->_buyProductSession configuration];
    v21 = [v20 _appleIDContext];
    v12 = [v21 appleIDHeadersForRequest:v9];

    v22 = _ICQGetLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "count")}];
      *buf = 138412290;
      v36 = v23;
      _os_log_impl(&dword_275623000, v22, OS_LOG_TYPE_DEFAULT, "AKAppleIDSession returned %@ headers", buf, 0xCu);
    }

    if ([v12 count] < 2)
    {
      v10 = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
      v25 = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
      v26 = self;
      v27 = 0;
      v28 = v10;
      v29 = v25;
    }

    else
    {
      v10 = [v12 mutableCopy];
      v24 = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
      [v10 addEntriesFromDictionary:v24];

      v25 = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
      v26 = self;
      v27 = v19;
      v28 = v25;
      v29 = v10;
    }

    [(ICQUpgradeCloudStorageFlowManager *)v26 _adoptRemoteUIWithPurchaseToken:v27 buyParameters:v28 requestHeaders:v29];

    goto LABEL_29;
  }

  v9 = [v7 aa_grandSlamAccountForiCloudAccount:v8];
  v34 = 0;
  v10 = [v7 credentialForAccount:v9 serviceID:@"com.apple.gs.icloud.storage.buy" error:&v34];
  v11 = v34;
  v12 = v11;
  if (v11)
  {
    v13 = [v11 userInfo];
    v14 = [v13 objectForKey:*MEMORY[0x277CCA7E8]];

    v15 = [v14 domain];
    if ([v15 isEqualToString:@"com.apple.accounts.keychain"])
    {
      v16 = [v14 code];

      if (v16 == -128)
      {
        v17 = _ICQGetLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "user canceled", buf, 2u);
        }

        if (!v6)
        {
          goto LABEL_27;
        }

        v18 = 3;
LABEL_26:
        v6[2](v6, v18);
LABEL_27:

LABEL_28:
        v19 = 0;
        goto LABEL_29;
      }
    }

    else
    {
    }

    v32 = _ICQGetLogSystem();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v12;
      _os_log_impl(&dword_275623000, v32, OS_LOG_TYPE_DEFAULT, "storage buy get token error %@", buf, 0xCu);
    }

    if (!v6)
    {
      goto LABEL_27;
    }

    v18 = 2;
    goto LABEL_26;
  }

  v19 = [v10 token];
  if (v10)
  {
    v30 = _ICQGetLogSystem();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!v19)
    {
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v30, OS_LOG_TYPE_DEFAULT, "no storage buy token present", buf, 2u);
      }

      if (v6)
      {
        v6[2](v6, 2);
      }

      goto LABEL_28;
    }

    if (v31)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v30, OS_LOG_TYPE_DEFAULT, "valid purchase", buf, 2u);
    }

    goto LABEL_10;
  }

  v33 = _ICQGetLogSystem();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v33, OS_LOG_TYPE_DEFAULT, "credential nil but no error reported", buf, 2u);
  }

  if (v6)
  {
    v6[2](v6, 2);
  }

LABEL_29:
}

- (void)_adoptRemoteUIWithPurchaseToken:(id)a3 buyParameters:(id)a4 requestHeaders:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ICQUpgradeFlowManager *)self offer];
  v12 = [v11 isBuddyOffer];

  if (v10)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || v8 == 0;
  if (!v14 || !v12)
  {
    if (!self->_storageOffersManager)
    {
      v20 = objc_alloc_init(ICQUICloudStorageOffersManager);
      storageOffersManager = self->_storageOffersManager;
      self->_storageOffersManager = v20;

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setSkipCompletionAlert:1];
      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setSupportsModernAlerts:1];
      v22 = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
      v23 = [v22 objectForKeyedSubscript:@"totalStorage"];

      if (v23)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v23 doubleValue];
          [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setRequiredStorageThreshold:(v24 * 1000000000.0)];
        }
      }

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setDelegate:self];
    }

    v25 = [(ICQUpgradeFlowManager *)self offer];
    -[ICQUICloudStorageOffersManager setSkipRetryWithoutToken:](self->_storageOffersManager, "setSkipRetryWithoutToken:", [v25 isBuddyOffer]);

    v26 = _ICQGetLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[ICQUICloudStorageOffersManager skipRetryWithoutToken](self->_storageOffersManager, "skipRetryWithoutToken")}];
      v31 = 138543362;
      v32 = v27;
      _os_log_impl(&dword_275623000, v26, OS_LOG_TYPE_DEFAULT, "skipRetryWithoutToken == %{public}@", &v31, 0xCu);
    }

    v28 = _ICQGetLogSystem();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = @"YES";
      if (!v8)
      {
        v29 = @"NO";
      }

      v31 = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = v9;
      _os_log_impl(&dword_275623000, v28, OS_LOG_TYPE_DEFAULT, "Calling out to ICQUICloudStorageOffersManager with purchaseToken:%{public}@, buyParameters:%{public}@", &v31, 0x16u);
    }

    v30 = self->_storageOffersManager;
    purchaseCompletionHandler = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [(ICQUICloudStorageOffersManager *)v30 beginFlowWithNavigationController:purchaseCompletionHandler purchaseToken:v8 buyParameters:v9 requestHeaders:v10 modally:0];
    goto LABEL_26;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Token not available and legacy flow cannot be used in Buddy; returning token missing failure", &v31, 2u);
  }

  v16 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

  if (v16)
  {
    v17 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
    v18 = [(ICQUpgradeCloudStorageFlowManager *)self secureTokenMissingError];
    (v17)[2](v17, 0, v18);

    purchaseCompletionHandler = self->_purchaseCompletionHandler;
    self->_purchaseCompletionHandler = 0;
LABEL_26:
  }
}

- (void)_performPurchaseUsingSettingsUI
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Switch to purchase flow using settings UI", v6, 2u);
  }

  v4 = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
  v5 = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
  [(ICQUpgradeCloudStorageFlowManager *)self _adoptRemoteUIWithPurchaseToken:0 buyParameters:v4 requestHeaders:v5];
}

- (void)_performPurchaseUsingTouchID
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v3, OS_LOG_TYPE_DEFAULT, "Authenticating purchase using Touch ID", buf, 2u);
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__ICQUpgradeCloudStorageFlowManager__performPurchaseUsingTouchID__block_invoke;
  v4[3] = &unk_27A65B280;
  v4[4] = self;
  [(ICQUpgradeCloudStorageFlowManager *)self _buyProductShouldUseToken:1 completionHandler:v4];
}

void __65__ICQUpgradeCloudStorageFlowManager__performPurchaseUsingTouchID__block_invoke(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __65__ICQUpgradeCloudStorageFlowManager__performPurchaseUsingTouchID__block_invoke_2;
  v2[3] = &unk_27A65B1C8;
  v2[4] = *(a1 + 32);
  v2[5] = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

uint64_t __65__ICQUpgradeCloudStorageFlowManager__performPurchaseUsingTouchID__block_invoke_2(uint64_t result)
{
  v1 = result;
  v2 = *(result + 40);
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return result;
      }

      goto LABEL_7;
    }

    v5 = *(result + 32);

    return [v5 _cancelFlow];
  }

  else
  {
    if (v2)
    {
      if (v2 != 2)
      {
        return result;
      }

LABEL_7:
      [*(result + 32) _clearBusyOfferViewController];
      v3 = *(v1 + 32);

      return [v3 _performPurchaseUsingSettingsUI];
    }

    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "ERROR: Unexpected ICQBuyProductSucceeded -- should go through ICQUICloudStorageOffersManager", v6, 2u);
    }

    [*(v1 + 32) _presentUpgradeComplete];
    return [*(v1 + 32) _clearBusyOfferViewController];
  }
}

+ (BOOL)_canDoTokenPurchaseWithOffer:(id)a3
{
  v3 = a3;
  if ([v3 iTunesAccountExists])
  {
    v4 = [MEMORY[0x277D262A0] sharedConnection];
    v5 = [v4 isPasscodeSet];

    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "checking biometric state", buf, 2u);
      }

      *buf = 0;
      v23 = buf;
      v24 = 0x2020000000;
      v25 = 5;
      v8 = dispatch_semaphore_create(0);
      v9 = objc_alloc_init(MEMORY[0x277D69A70]);
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __66__ICQUpgradeCloudStorageFlowManager__canDoTokenPurchaseWithOffer___block_invoke;
      v19[3] = &unk_27A65B2A8;
      v21 = buf;
      v10 = v8;
      v20 = v10;
      [v9 getStateWithCompletionBlock:v19];
      dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      v11 = *(v23 + 3);
      v12 = v11 == 1;
      if (v11 == 1)
      {
        v15 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
LABEL_18:

          _Block_object_dispose(buf, 8);
          goto LABEL_19;
        }

        *v18 = 0;
        v13 = "Touch ID purchase should be available";
      }

      else
      {
        v15 = _ICQGetLogSystem();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *v18 = 0;
        v13 = "Touch ID purchase not enabled";
      }

      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, v13, v18, 2u);
      goto LABEL_18;
    }

    if (v7)
    {
      *buf = 0;
      v14 = "no Touch ID purchase: Passcode not set";
      goto LABEL_13;
    }
  }

  else
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v14 = "no Touch ID purchase: iTunes account does not exist";
LABEL_13:
      _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, v14, buf, 2u);
    }
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (void)_performPurchase
{
  v3 = objc_opt_class();
  v4 = [(ICQUpgradeFlowManager *)self offer];
  LODWORD(v3) = [v3 _canDoTokenPurchaseWithOffer:v4];

  if (v3)
  {

    [(ICQUpgradeCloudStorageFlowManager *)self _performPurchaseUsingTouchID];
  }

  else
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "_performPurchase: _canDoTokenPurchaseWithOffer: says NO", v6, 2u);
    }

    [(ICQUpgradeCloudStorageFlowManager *)self _performPurchaseUsingSettingsUI];
  }
}

- (void)manager:(id)a3 willPresentViewController:(id)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "will present view controller %@", &v7, 0xCu);
  }

  [(ICQUpgradeFlowManager *)self _clearBusyOfferViewController];
}

- (void)manager:(id)a3 loadDidFailWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "load failed with error %@", &v19, 0xCu);
  }

  if (v5)
  {
    v7 = v5;
    v8 = [v7 domain];
    v9 = [v8 isEqualToString:@"com.apple.Preferences.cloud-storage-offers"];

    if (v9)
    {
      v10 = [v7 code];
      v11 = [v7 userInfo];
      v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v7 = v12;
      if (v10 != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v13 = [v7 domain];
      if ([v13 isEqualToString:*MEMORY[0x277D6A110]])
      {
      }

      else
      {
        v14 = [v7 domain];
        v15 = [v14 isEqualToString:*MEMORY[0x277D6A5A8]];

        if (!v15)
        {
          goto LABEL_13;
        }
      }

      if ([v7 code] != 16 && objc_msgSend(v7, "code") != 140)
      {
LABEL_13:
        v16 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

        if (v16)
        {
          v17 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
          (v17)[2](v17, 0, v7);

          purchaseCompletionHandler = self->_purchaseCompletionHandler;
          self->_purchaseCompletionHandler = 0;
        }

        goto LABEL_15;
      }
    }

    [(ICQUpgradeFlowManager *)self _cancelFlow];
LABEL_15:
  }
}

- (void)managerDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "cloud storage offers manager canceled", v5, 2u);
  }

  [(ICQUpgradeFlowManager *)self _cancelFlow];
}

- (void)manager:(id)a3 didCompleteWithError:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers manager did complete with error %@", &v16, 0xCu);
  }

  v7 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

  if (v7)
  {
    v8 = [v5 userInfo];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v10 = v5 == 0;
    v11 = [v5 domain];
    v12 = [v11 isEqualToString:@"com.apple.Preferences.cloud-storage-offers"];

    if (v12)
    {
      if ([v5 code])
      {
        v10 = [v5 code] == 2;
      }

      else
      {
        v10 = 1;
      }
    }

    v14 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
    (v14)[2](v14, v10, v9);

    purchaseCompletionHandler = self->_purchaseCompletionHandler;
    self->_purchaseCompletionHandler = 0;
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "ERROR: purchaseCompletionHandler missing -- using fallback", &v16, 2u);
    }

    [(ICQUpgradeFlowManager *)self _presentUpgradeComplete];
    [(ICQUpgradeFlowManager *)self _clearBusyOfferViewController];
  }
}

@end