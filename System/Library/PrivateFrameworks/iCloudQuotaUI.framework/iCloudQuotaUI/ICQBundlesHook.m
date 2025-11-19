@interface ICQBundlesHook
- (BOOL)dynamicViewControllerShouldDismiss:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (ICQBundlesHook)initWithFlowManager:(id)a3;
- (RUIServerHookDelegate)delegate;
- (RUIServerHookResponse)serverHookResponse;
- (id)continuationResponseBody;
- (id)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4;
- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5;
- (void)launchBundleOffer;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
- (void)setAdditionalParameters:(id)a3;
@end

@implementation ICQBundlesHook

- (ICQBundlesHook)initWithFlowManager:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICQBundlesHook;
  v5 = [(ICQBundlesHook *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_flowManager, v4);
  }

  return v6;
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
  v3 = a3;
  v4 = [v3 clientInfo];
  v5 = [v4 objectForKeyedSubscript:@"action"];
  if ([v5 isEqualToString:@"LAUNCH_BUNDLE_OFFER_VIEW"])
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 clientInfo];
    v8 = [v7 objectForKeyedSubscript:@"action"];
    v6 = [v8 isEqualToString:@"ICQActionLaunchAppleOne"];
  }

  return v6;
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  clientInfo = self->_clientInfo;
  self->_clientInfo = v7;

  v9 = [ICQPurchase clearCacheAndNotifyClientsWithCompletion:v6];

  completionHandler = self->_completionHandler;
  self->_completionHandler = v9;

  [(ICQBundlesHook *)self launchBundleOffer];
}

- (RUIServerHookResponse)serverHookResponse
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"refreshUrl"];
  v4 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"refreshHttpMethod"];
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v7 = v4 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "No refresh URL or Http method found.", buf, 2u);
    }

    v8 = 0;
  }

  else
  {
    if (v6)
    {
      statusCode = self->_statusCode;
      amsErrorCode = self->_amsErrorCode;
      amsAction = self->_amsAction;
      *buf = 134218496;
      v19 = statusCode;
      v20 = 2048;
      v21 = amsAction;
      v22 = 2048;
      v23 = amsErrorCode;
      _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "_statusCode = %ld, _amsAction = %ld, _amsErrorCode = %ld", buf, 0x20u);
    }

    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      buyParamsStr = self->_buyParamsStr;
      *buf = 138412290;
      v19 = buyParamsStr;
      _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "_buyParamsStr = %@", buf, 0xCu);
    }

    v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v3];
    v14 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v5];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"<?xml version='1.0' encoding='UTF-8'?><!DOCTYPE plist PUBLIC '-//Apple//DTD PLIST 1.0//EN' 'http://www.apple.com/DTDs/PropertyList-1.0.dtd'><plist version='1.0'><dict><key>statusCode</key><integer>%ld</integer><key>amsAction</key><integer>%ld</integer><key>amsErrorCode</key><integer>%ld</integer><key>buyParams</key><string>%@</string></dict></plist>", self->_statusCode, self->_amsAction, self->_amsErrorCode, self->_buyParamsStr];
    v16 = [v15 dataUsingEncoding:4];
    [v14 setHTTPBody:v16];

    [v14 setHTTPMethod:v4];
    v8 = objc_alloc_init(MEMORY[0x277D46208]);
    [v8 setContinuationRequest:v14];
  }

  return v8;
}

- (id)continuationResponseBody
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"statusCode";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:self->_statusCode];
  v13[0] = v3;
  v12[1] = @"amsErrorCodes";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_amsErrorCode];
  v13[1] = v4;
  v12[2] = @"amsAction";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_amsAction];
  v13[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];
  v7 = [v6 mutableCopy];

  buyParamsStr = self->_buyParamsStr;
  if (buyParamsStr)
  {
    [v7 setObject:buyParamsStr forKeyedSubscript:@"buyParams"];
  }

  else
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ICQBundlesHook *)v9 continuationResponseBody];
    }
  }

  v10 = [v7 copy];

  return v10;
}

- (void)launchBundleOffer
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_flowManager);
  v4 = [WeakRetained offer];
  v5 = [v4 action];

  if (v5 == 118)
  {
    v6 = objc_loadWeakRetained(&self->_flowManager);
    [v6 presentHostingNavigationController];
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "present bundle start from server hook path", buf, 2u);
  }

  v8 = [MEMORY[0x277CEE3F8] quotaBag];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v8;
    _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, "bag = %@", buf, 0xCu);
  }

  v10 = [objc_alloc(MEMORY[0x277CEE8E8]) initWithServiceType:@"icloud" placement:@"iCloudPreBuyFlow" bag:v8];
  [v10 setDelegate:self];
  [(ICQBundlesHook *)self setAdditionalParameters:v10];
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "replacing the spinner with bundle view", buf, 2u);
  }

  v12 = objc_loadWeakRetained(&self->_flowManager);
  v13 = [v12 hostingNavigationController];
  v14 = [v13 presentingViewController];
  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = v14;

  v16 = [MEMORY[0x277CBEA60] arrayWithObject:v10];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = objc_loadWeakRetained(&self->_flowManager);
  v18 = [v17 hostingNavigationController];
  v19 = [v18 navigationBar];
  v20 = [v19 subviews];

  v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v31;
    do
    {
      v24 = 0;
      do
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v30 + 1) + 8 * v24);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v25 setHidden:1];
        }

        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v22);
  }

  v26 = objc_loadWeakRetained(&self->_flowManager);
  v27 = [v26 hostingNavigationController];
  [v27 setNavigationBarHidden:0 animated:0];

  v28 = objc_loadWeakRetained(&self->_flowManager);
  v29 = [v28 hostingNavigationController];
  [v29 setViewControllers:v16];
}

- (void)setAdditionalParameters:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v6 = [v5 ams_activeiTunesAccount];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v6;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "acc = %@", buf, 0xCu);
  }

  [v4 setAccount:v6];
  v8 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"amsParams"];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"amsParams"];
    v11 = [v9 initWithBase64EncodedString:v10 options:0];

    if (v11)
    {
      v39 = 0;
      v12 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v11 options:0 error:&v39];
      v13 = v39;
      if (v13)
      {
        v14 = v13;
        v15 = _ICQGetLogSystem();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v14;
          _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "error parsing ams bundle dictionary: %@", buf, 0xCu);
        }

LABEL_13:
        goto LABEL_14;
      }

      if (v12)
      {
        v16 = _ICQGetLogSystem();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v12;
          _os_log_impl(&dword_275623000, v16, OS_LOG_TYPE_DEFAULT, "AMS Bundle additional Parameters = %@", buf, 0xCu);
        }

        [v4 setClientOptions:v12];
        v14 = v12;
        goto LABEL_13;
      }
    }

LABEL_14:
  }

  v17 = [MEMORY[0x277CEE620] currentProcess];
  WeakRetained = objc_loadWeakRetained(&self->_flowManager);
  v19 = [WeakRetained offer];

  v20 = [v19 appVersionId];
  v21 = MEMORY[0x277CCACA8];
  v22 = [v19 bundleIdentifier];
  v23 = [v21 stringWithFormat:@"%@/%@ MBF/1.0 CastleSettings/1.0", v22, v20];
  [v17 setUserAgentSuffix:v23];

  [v4 setClientInfo:v17];
  [v4 setMediaClientIdentifier:@"com.apple.RemoteICloudQuotaUI"];
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v24 setObject:@"icloud" forKey:@"app"];
  [v24 setObject:@"xp_its_main" forKey:@"topic"];
  v25 = [v6 ams_DSID];

  if (v25)
  {
    v26 = [v6 ams_DSID];
    [v24 setObject:v26 forKey:@"DSID"];
  }

  v27 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"precedingMarketing"];

  if (v27)
  {
    v28 = objc_alloc(MEMORY[0x277CBEA90]);
    v29 = [(NSDictionary *)self->_clientInfo objectForKeyedSubscript:@"precedingMarketing"];
    v30 = [v28 initWithBase64EncodedString:v29 options:0];

    if (v30)
    {
      v37 = v5;
      v38 = 0;
      v31 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v30 options:0 error:&v38];
      v32 = v38;
      if (v32)
      {
        v33 = v32;
        v34 = _ICQGetLogSystem();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v33;
          _os_log_impl(&dword_275623000, v34, OS_LOG_TYPE_DEFAULT, "error parsing precedingMarketing dictionary: %@", buf, 0xCu);
        }

LABEL_27:
        v5 = v37;
        goto LABEL_28;
      }

      if (v31)
      {
        v35 = _ICQGetLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v41 = v31;
          _os_log_impl(&dword_275623000, v35, OS_LOG_TYPE_DEFAULT, "AMS precedingMarketing = %@", buf, 0xCu);
        }

        [v24 setObject:v31 forKey:@"precedingMarketing"];
        v33 = v31;
        goto LABEL_27;
      }
    }

LABEL_28:
  }

  v36 = _ICQGetLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v41 = v24;
    _os_log_impl(&dword_275623000, v36, OS_LOG_TYPE_DEFAULT, "Setting overlayDictionary = %@", buf, 0xCu);
  }

  [v4 setMetricsOverlay:v24];
}

- (void)dynamicViewController:(id)a3 didFinishPurchaseWithResult:(id)a4 error:(id)a5
{
  v50[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v43) = 0;
    _os_log_impl(&dword_275623000, v11, OS_LOG_TYPE_DEFAULT, "AMSUIDynamicViewControllerDelegate:didFinishPurchaseWithResult", &v43, 2u);
  }

  v12 = _ICQGetLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = v8;
    _os_log_impl(&dword_275623000, v12, OS_LOG_TYPE_DEFAULT, "AMSUIDynamicViewController = %@", &v43, 0xCu);
  }

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = v9;
    _os_log_impl(&dword_275623000, v13, OS_LOG_TYPE_DEFAULT, "AMSPurchaseResult = %@", &v43, 0xCu);
  }

  v14 = _ICQGetLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v43 = 138412290;
    v44 = v10;
    _os_log_impl(&dword_275623000, v14, OS_LOG_TYPE_DEFAULT, "error = %@", &v43, 0xCu);
  }

  self->_amsErrorCode = [v10 code];
  self->_purchaseSuccess = 0;
  objc_storeStrong(&self->_purchaseError, a5);
  if (v9)
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v43 = 136315138;
      v44 = "[ICQBundlesHook dynamicViewController:didFinishPurchaseWithResult:error:]";
      _os_log_impl(&dword_275623000, v15, OS_LOG_TYPE_DEFAULT, "%s: We have a purchase result", &v43, 0xCu);
    }

    v16 = MEMORY[0x277CBEA60];
    v17 = objc_alloc_init(MEMORY[0x277CECAF8]);
    v18 = [v16 arrayWithObject:v17];

    WeakRetained = objc_loadWeakRetained(&self->_flowManager);
    v20 = [WeakRetained hostingNavigationController];
    [v20 setViewControllers:v18];

    v21 = objc_loadWeakRetained(&self->_flowManager);
    v22 = [v21 hostingNavigationController];
    if (v22)
    {
      v23 = v22;
      v24 = [(UIViewController *)self->_presentingViewController presentedViewController];

      if (!v24)
      {
        presentingViewController = self->_presentingViewController;
        v26 = objc_loadWeakRetained(&self->_flowManager);
        v27 = [v26 hostingNavigationController];
        [(UIViewController *)presentingViewController presentPreferredSizeWithViewController:v27 animated:1 completion:0];

LABEL_22:
        self->_statusCode = 0;
        v31 = [v9 purchase];
        v49 = @"mtTopic";
        v50[0] = @"xp_its_main";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
        [v31 setMetricsOverlay:v32];

        v33 = [v31 buyParams];
        v34 = v33;
        if (v33)
        {
          v35 = [v33 stringValue];
          buyParamsStr = self->_buyParamsStr;
          self->_buyParamsStr = v35;

          v37 = [MEMORY[0x277D7F3E0] base64EncodeString:self->_buyParamsStr];
          v38 = self->_buyParamsStr;
          self->_buyParamsStr = v37;
        }

        else
        {
          v38 = _ICQGetLogSystem();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [ICQBundlesHook dynamicViewController:v38 didFinishPurchaseWithResult:? error:?];
          }
        }

        self->_amsAction = 2;
        self->_purchaseSuccess = 1;
        purchaseError = self->_purchaseError;
        self->_purchaseError = 0;

        goto LABEL_33;
      }
    }

    else
    {
    }

    v26 = _ICQGetLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ICQBundlesHook dynamicViewController:self didFinishPurchaseWithResult:v26 error:?];
    }

    goto LABEL_22;
  }

  amsErrorCode = self->_amsErrorCode;
  v29 = _ICQGetLogSystem();
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (amsErrorCode)
  {
    if (amsErrorCode == 6)
    {
      if (v30)
      {
        v43 = 136315138;
        v44 = "[ICQBundlesHook dynamicViewController:didFinishPurchaseWithResult:error:]";
        _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "%s: Cancelled", &v43, 0xCu);
      }
    }

    else if (v30)
    {
      v41 = self->_amsErrorCode;
      v42 = [v10 localizedDescription];
      v43 = 136315650;
      v44 = "[ICQBundlesHook dynamicViewController:didFinishPurchaseWithResult:error:]";
      v45 = 2048;
      v46 = v41;
      v47 = 2112;
      v48 = v42;
      _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "%s: Error code %ld. Error: %@", &v43, 0x20u);
    }

    self->_statusCode = 1;
    self->_amsAction = 1;
  }

  else
  {
    if (v30)
    {
      v43 = 136315138;
      v44 = "[ICQBundlesHook dynamicViewController:didFinishPurchaseWithResult:error:]";
      _os_log_impl(&dword_275623000, v29, OS_LOG_TYPE_DEFAULT, "%s: no error & no purchase result -- counting this as success.", &v43, 0xCu);
    }

    self->_statusCode = 1;
    self->_amsAction = 2;
    self->_purchaseSuccess = 1;
    v40 = self->_purchaseError;
    self->_purchaseError = 0;
  }

LABEL_33:
}

- (id)dynamicViewController:(id)a3 contentViewControllerWithDictionary:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_275623000, v6, OS_LOG_TYPE_DEFAULT, "AMSUIDynamicViewControllerDelegate:contentViewControllerWithDictionary", &v11, 2u);
  }

  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_275623000, v7, OS_LOG_TYPE_DEFAULT, "contentViewControllerDictionary = %@", &v11, 0xCu);
  }

  v8 = [objc_alloc(MEMORY[0x277CECAF8]) initWithNibName:0 bundle:0];
  self->_statusCode = 1;
  self->_amsErrorCode = 0;
  self->_amsAction = 0;
  buyParamsStr = self->_buyParamsStr;
  self->_buyParamsStr = &stru_28844FC60;

  (*(self->_completionHandler + 2))();

  return v8;
}

- (BOOL)dynamicViewControllerShouldDismiss:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    purchaseSuccess = self->_purchaseSuccess;
    purchaseError = self->_purchaseError;
    v9 = 136315650;
    v10 = "[ICQBundlesHook dynamicViewControllerShouldDismiss:]";
    v11 = 1024;
    v12 = purchaseSuccess;
    v13 = 2112;
    v14 = purchaseError;
    _os_log_impl(&dword_275623000, v4, OS_LOG_TYPE_DEFAULT, "%s, purchaseSuccess: %d, purchaseError: %@", &v9, 0x1Cu);
  }

  (*(self->_completionHandler + 2))();
  WeakRetained = objc_loadWeakRetained(&self->_flowManager);
  [WeakRetained dismissUpgradeFlowWithSuccess:self->_purchaseSuccess];

  return 0;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dynamicViewController:(id *)a1 didFinishPurchaseWithResult:(uint64_t)a2 error:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1);
  v6 = [WeakRetained hostingNavigationController];
  v7 = [*(a2 + 64) presentedViewController];
  v8 = @"YES";
  v10 = "[ICQBundlesHook dynamicViewController:didFinishPurchaseWithResult:error:]";
  v9 = 136315650;
  if (!v7)
  {
    v8 = @"NO";
  }

  v11 = 2112;
  v12 = v6;
  v13 = 2112;
  v14 = v8;
  _os_log_error_impl(&dword_275623000, a3, OS_LOG_TYPE_ERROR, "%s: failed to present with _flowManager.hostingNavigationController: %@, _presentingViewController.presentedViewController: %@", &v9, 0x20u);
}

@end