@interface ICQUpgradeCloudStorageFlowManager
+ (BOOL)_canDoTokenPurchaseWithOffer:(id)offer;
+ (BOOL)shouldSubclassShowForOffer:(id)offer;
- (NSDictionary)storagePurchaseKeybag;
- (id)_buyProductQueryDictionary;
- (id)_buyProductQueryKeySet;
- (id)_dummyRequestWithAccount:(id)account token:(id)token;
- (id)_storageContextHeaderDictionary;
- (id)_storageContextJSONString;
- (id)initSubclassWithOffer:(id)offer;
- (void)_adoptRemoteUIWithPurchaseToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers;
- (void)_buyProductShouldUseToken:(BOOL)token completionHandler:(id)handler;
- (void)_performPageButtonActionWithParameters:(id)parameters completion:(id)completion;
- (void)_performPurchase;
- (void)_performPurchaseUsingSettingsUI;
- (void)_performPurchaseUsingTouchID;
- (void)manager:(id)manager didCompleteWithError:(id)error;
- (void)manager:(id)manager loadDidFailWithError:(id)error;
- (void)manager:(id)manager willPresentViewController:(id)controller;
- (void)managerDidCancel:(id)cancel;
@end

@implementation ICQUpgradeCloudStorageFlowManager

+ (BOOL)shouldSubclassShowForOffer:(id)offer
{
  offerCopy = offer;
  if ([offerCopy isBuddyOffer])
  {
    v5 = [self _canDoTokenPurchaseWithOffer:offerCopy];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)initSubclassWithOffer:(id)offer
{
  v9.receiver = self;
  v9.super_class = ICQUpgradeCloudStorageFlowManager;
  v3 = [(ICQUpgradeFlowManager *)&v9 initSubclassWithOffer:offer];
  if (v3)
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    v5 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQUpgradeFlowURLSession"];
    [defaultSessionConfiguration set_appleIDContext:v5];

    v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
    v7 = v3[31];
    v3[31] = v6;
  }

  return v3;
}

- (void)_performPageButtonActionWithParameters:(id)parameters completion:(id)completion
{
  v27 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  completionCopy = completion;
  v8 = _Block_copy(completionCopy);
  purchaseCompletionHandler = self->_purchaseCompletionHandler;
  self->_purchaseCompletionHandler = v8;

  v10 = [parametersCopy objectForKeyedSubscript:*MEMORY[0x277D7F270]];
  storagePurchaseButtonId = self->_storagePurchaseButtonId;
  self->_storagePurchaseButtonId = v10;

  storagePurchaseKeybag = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
  [(ICQUpgradeFlowManager *)self setBindings:storagePurchaseKeybag];

  if (!self->_storagePurchaseButtonId)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = parametersCopy;
      _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "Attempt to upgrade cloud storage without proper button ID (parameters: %@)", &v25, 0xCu);
    }
  }

  bindings = [(ICQUpgradeFlowManager *)self bindings];
  v15 = [bindings objectForKey:@"buyParams"];
  if (!v15)
  {

    goto LABEL_11;
  }

  v16 = v15;
  v17 = [parametersCopy objectForKey:@"osloPurchase"];

  if (!v17)
  {
LABEL_11:
    [(ICQUpgradeCloudStorageFlowManager *)self _performPurchase];
    goto LABEL_12;
  }

  v18 = _ICQGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    bindings2 = [(ICQUpgradeFlowManager *)self bindings];
    v20 = [bindings2 objectForKey:@"buyParams"];
    v25 = 138412290;
    v26 = v20;
    _os_log_impl(&dword_275623000, v18, OS_LOG_TYPE_DEFAULT, "Performing purchase using oslo with buyParams = %@", &v25, 0xCu);
  }

  v21 = [ICQUpgradeStorageHook alloc];
  offer = [(ICQUpgradeFlowManager *)self offer];
  v23 = [(ICQUpgradeStorageHook *)v21 initWithOffer:offer flowDelegate:self];

  [(ICQUpgradeStorageHook *)v23 setButtonId:self->_storagePurchaseButtonId];
  [(ICQUpgradeStorageHook *)v23 setFlowtype:@"native"];
  v24 = [ICQPurchase clearCacheAndNotifyClientsWithCompletion:completionCopy];
  [(ICQUpgradeStorageHook *)v23 setCompletionHandler:v24];

  [(ICQUpgradeStorageHook *)v23 beginOsloPurchaseFlow];
LABEL_12:
}

- (NSDictionary)storagePurchaseKeybag
{
  offer = [(ICQUpgradeFlowManager *)self offer];
  storagePurchaseButtonId = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseButtonId];
  v5 = [offer storagePurchaseKeybagForButtonId:storagePurchaseButtonId];

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
  storagePurchaseKeybag = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _buyProductQueryKeySet = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryKeySet];
  v6 = [_buyProductQueryKeySet countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(_buyProductQueryKeySet);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [storagePurchaseKeybag objectForKey:{v11, v16}];
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

      v8 = [_buyProductQueryKeySet countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v14 = [v3 copy];

  return v14;
}

- (id)_dummyRequestWithAccount:(id)account token:(id)token
{
  v17 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  tokenCopy = token;
  v7 = [MEMORY[0x277CBEBC0] URLWithString:@"https://www.apple.com/example"];
  v8 = [MEMORY[0x277CCAB70] requestWithURL:v7 cachePolicy:1 timeoutInterval:30.0];
  [v8 aa_addBasicAuthorizationHeaderWithAccount:accountCopy preferUsingPassword:0];
  [v8 ak_addClientInfoHeader];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  abbreviation = [systemTimeZone abbreviation];
  [v8 setValue:abbreviation forHTTPHeaderField:@"X-MMe-Timezone"];

  [v8 ak_addCountryHeader];
  if (tokenCopy)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = tokenCopy;
      _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "adding storageBuyingToken: %@", &v15, 0xCu);
    }

    aa_altDSID = [accountCopy aa_altDSID];
    [v8 ak_addAuthorizationHeaderWithServiceToken:tokenCopy forAltDSID:aa_altDSID];
  }

  v13 = [v8 copy];

  return v13;
}

- (id)_storageContextJSONString
{
  v16[1] = *MEMORY[0x277D85DE8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (![bundleIdentifier length])
  {
    v8 = 0;
    goto LABEL_11;
  }

  v15 = @"appName";
  v16[0] = bundleIdentifier;
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
      v12 = bundleIdentifier;
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
  _storageContextJSONString = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextJSONString];
  if ([_storageContextJSONString length])
  {
    v5 = @"X-Apple-Storage-Context";
    v6[0] = _storageContextJSONString;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (void)_buyProductShouldUseToken:(BOOL)token completionHandler:(id)handler
{
  tokenCopy = token;
  v37 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  if (!tokenCopy)
  {
    token = 0;
LABEL_10:
    v9 = [(ICQUpgradeCloudStorageFlowManager *)self _dummyRequestWithAccount:aa_primaryAppleAccount token:token];
    configuration = [(NSURLSession *)self->_buyProductSession configuration];
    _appleIDContext = [configuration _appleIDContext];
    v12 = [_appleIDContext appleIDHeadersForRequest:v9];

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
      _buyProductQueryDictionary = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
      _storageContextHeaderDictionary = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
      selfCopy2 = self;
      v27 = 0;
      v28 = _buyProductQueryDictionary;
      v29 = _storageContextHeaderDictionary;
    }

    else
    {
      _buyProductQueryDictionary = [v12 mutableCopy];
      _storageContextHeaderDictionary2 = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
      [_buyProductQueryDictionary addEntriesFromDictionary:_storageContextHeaderDictionary2];

      _storageContextHeaderDictionary = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
      selfCopy2 = self;
      v27 = token;
      v28 = _storageContextHeaderDictionary;
      v29 = _buyProductQueryDictionary;
    }

    [(ICQUpgradeCloudStorageFlowManager *)selfCopy2 _adoptRemoteUIWithPurchaseToken:v27 buyParameters:v28 requestHeaders:v29];

    goto LABEL_29;
  }

  v9 = [defaultStore aa_grandSlamAccountForiCloudAccount:aa_primaryAppleAccount];
  v34 = 0;
  _buyProductQueryDictionary = [defaultStore credentialForAccount:v9 serviceID:@"com.apple.gs.icloud.storage.buy" error:&v34];
  v11 = v34;
  v12 = v11;
  if (v11)
  {
    userInfo = [v11 userInfo];
    v14 = [userInfo objectForKey:*MEMORY[0x277CCA7E8]];

    domain = [v14 domain];
    if ([domain isEqualToString:@"com.apple.accounts.keychain"])
    {
      code = [v14 code];

      if (code == -128)
      {
        v17 = _ICQGetLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275623000, v17, OS_LOG_TYPE_DEFAULT, "user canceled", buf, 2u);
        }

        if (!handlerCopy)
        {
          goto LABEL_27;
        }

        v18 = 3;
LABEL_26:
        handlerCopy[2](handlerCopy, v18);
LABEL_27:

LABEL_28:
        token = 0;
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

    if (!handlerCopy)
    {
      goto LABEL_27;
    }

    v18 = 2;
    goto LABEL_26;
  }

  token = [_buyProductQueryDictionary token];
  if (_buyProductQueryDictionary)
  {
    v30 = _ICQGetLogSystem();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (!token)
    {
      if (v31)
      {
        *buf = 0;
        _os_log_impl(&dword_275623000, v30, OS_LOG_TYPE_DEFAULT, "no storage buy token present", buf, 2u);
      }

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 2);
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

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 2);
  }

LABEL_29:
}

- (void)_adoptRemoteUIWithPurchaseToken:(id)token buyParameters:(id)parameters requestHeaders:(id)headers
{
  v35 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  parametersCopy = parameters;
  headersCopy = headers;
  offer = [(ICQUpgradeFlowManager *)self offer];
  isBuddyOffer = [offer isBuddyOffer];

  if (headersCopy)
  {
    v13 = parametersCopy == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13 || tokenCopy == 0;
  if (!v14 || !isBuddyOffer)
  {
    if (!self->_storageOffersManager)
    {
      v20 = objc_alloc_init(ICQUICloudStorageOffersManager);
      storageOffersManager = self->_storageOffersManager;
      self->_storageOffersManager = v20;

      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setSkipCompletionAlert:1];
      [(ICQUICloudStorageOffersManager *)self->_storageOffersManager setSupportsModernAlerts:1];
      storagePurchaseKeybag = [(ICQUpgradeCloudStorageFlowManager *)self storagePurchaseKeybag];
      v23 = [storagePurchaseKeybag objectForKeyedSubscript:@"totalStorage"];

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

    offer2 = [(ICQUpgradeFlowManager *)self offer];
    -[ICQUICloudStorageOffersManager setSkipRetryWithoutToken:](self->_storageOffersManager, "setSkipRetryWithoutToken:", [offer2 isBuddyOffer]);

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
      if (!tokenCopy)
      {
        v29 = @"NO";
      }

      v31 = 138543618;
      v32 = v29;
      v33 = 2114;
      v34 = parametersCopy;
      _os_log_impl(&dword_275623000, v28, OS_LOG_TYPE_DEFAULT, "Calling out to ICQUICloudStorageOffersManager with purchaseToken:%{public}@, buyParameters:%{public}@", &v31, 0x16u);
    }

    v30 = self->_storageOffersManager;
    purchaseCompletionHandler = [(ICQUpgradeFlowManager *)self hostingNavigationController];
    [(ICQUICloudStorageOffersManager *)v30 beginFlowWithNavigationController:purchaseCompletionHandler purchaseToken:tokenCopy buyParameters:parametersCopy requestHeaders:headersCopy modally:0];
    goto LABEL_26;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "Token not available and legacy flow cannot be used in Buddy; returning token missing failure", &v31, 2u);
  }

  purchaseCompletionHandler = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

  if (purchaseCompletionHandler)
  {
    purchaseCompletionHandler2 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
    secureTokenMissingError = [(ICQUpgradeCloudStorageFlowManager *)self secureTokenMissingError];
    (purchaseCompletionHandler2)[2](purchaseCompletionHandler2, 0, secureTokenMissingError);

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

  _buyProductQueryDictionary = [(ICQUpgradeCloudStorageFlowManager *)self _buyProductQueryDictionary];
  _storageContextHeaderDictionary = [(ICQUpgradeCloudStorageFlowManager *)self _storageContextHeaderDictionary];
  [(ICQUpgradeCloudStorageFlowManager *)self _adoptRemoteUIWithPurchaseToken:0 buyParameters:_buyProductQueryDictionary requestHeaders:_storageContextHeaderDictionary];
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

+ (BOOL)_canDoTokenPurchaseWithOffer:(id)offer
{
  offerCopy = offer;
  if ([offerCopy iTunesAccountExists])
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (isPasscodeSet)
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
  offer = [(ICQUpgradeFlowManager *)self offer];
  LODWORD(v3) = [v3 _canDoTokenPurchaseWithOffer:offer];

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

- (void)manager:(id)manager willPresentViewController:(id)controller
{
  v9 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = controllerCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "will present view controller %@", &v7, 0xCu);
  }

  [(ICQUpgradeFlowManager *)self _clearBusyOfferViewController];
}

- (void)manager:(id)manager loadDidFailWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412290;
    v20 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "load failed with error %@", &v19, 0xCu);
  }

  if (errorCopy)
  {
    v7 = errorCopy;
    domain = [v7 domain];
    v9 = [domain isEqualToString:@"com.apple.Preferences.cloud-storage-offers"];

    if (v9)
    {
      code = [v7 code];
      userInfo = [v7 userInfo];
      v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v7 = v12;
      if (code != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      domain2 = [v7 domain];
      if ([domain2 isEqualToString:*MEMORY[0x277D6A110]])
      {
      }

      else
      {
        domain3 = [v7 domain];
        v15 = [domain3 isEqualToString:*MEMORY[0x277D6A5A8]];

        if (!v15)
        {
          goto LABEL_13;
        }
      }

      if ([v7 code] != 16 && objc_msgSend(v7, "code") != 140)
      {
LABEL_13:
        purchaseCompletionHandler = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

        if (purchaseCompletionHandler)
        {
          purchaseCompletionHandler2 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
          (purchaseCompletionHandler2)[2](purchaseCompletionHandler2, 0, v7);

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

- (void)managerDidCancel:(id)cancel
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "cloud storage offers manager canceled", v5, 2u);
  }

  [(ICQUpgradeFlowManager *)self _cancelFlow];
}

- (void)manager:(id)manager didCompleteWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = errorCopy;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "Cloud storage offers manager did complete with error %@", &v16, 0xCu);
  }

  purchaseCompletionHandler = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];

  if (purchaseCompletionHandler)
  {
    userInfo = [errorCopy userInfo];
    v9 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

    v10 = errorCopy == 0;
    domain = [errorCopy domain];
    v12 = [domain isEqualToString:@"com.apple.Preferences.cloud-storage-offers"];

    if (v12)
    {
      if ([errorCopy code])
      {
        v10 = [errorCopy code] == 2;
      }

      else
      {
        v10 = 1;
      }
    }

    purchaseCompletionHandler2 = [(ICQUpgradeCloudStorageFlowManager *)self purchaseCompletionHandler];
    (purchaseCompletionHandler2)[2](purchaseCompletionHandler2, v10, v9);

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