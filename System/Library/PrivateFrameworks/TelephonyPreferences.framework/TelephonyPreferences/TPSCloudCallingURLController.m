@interface TPSCloudCallingURLController
- (TPSCarrierBundleController)carrierBundleController;
- (TPSCloudCallingURLController)init;
- (TPSCloudCallingURLController)initWithSubscriptionContext:(id)a3;
- (TPSCloudCallingURLControllerDelegate)delegate;
- (TPSCloudCallingWebViewController)webViewController;
- (TUSenderIdentityCapabilities)subscriptionCapabilities;
- (id)_webViewControllerWithType:(int64_t)a3;
- (id)genericErrorAlertController;
- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)a3;
- (void)loadWebViewController;
- (void)reloadWebViewController;
@end

@implementation TPSCloudCallingURLController

- (TPSCloudCallingURLController)init
{
  [(TPSCloudCallingURLController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSCloudCallingURLController)initWithSubscriptionContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSCloudCallingURLController;
  v6 = [(TPSCloudCallingURLController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, a3);
  }

  return v7;
}

- (TPSCarrierBundleController)carrierBundleController
{
  carrierBundleController = self->_carrierBundleController;
  if (!carrierBundleController)
  {
    v4 = objc_alloc_init(TPSCarrierBundleController);
    v5 = self->_carrierBundleController;
    self->_carrierBundleController = v4;

    carrierBundleController = self->_carrierBundleController;
  }

  return carrierBundleController;
}

- (TUSenderIdentityCapabilities)subscriptionCapabilities
{
  v3 = [(TPSCloudCallingURLController *)self subscriptionContext];
  v4 = [v3 uuid];
  v5 = [(TPSCloudCallingURLController *)self subscriptionCapabilitiesForSubscriptionContextUUID:v4];

  return v5;
}

- (id)subscriptionCapabilitiesForSubscriptionContextUUID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277D6EDE8] senderIdentityCapabilities];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 senderIdentityUUID];
        v12 = [v11 isEqual:v3];

        if (v12)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)genericErrorAlertController
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(TPSCloudCallingURLController *)self subscriptionContext];
  v4 = [(TPSCloudCallingURLController *)self carrierBundleController];
  v5 = [v4 objectForKey:@"CarrierName" subscriptionContext:v3];

  v6 = [(TPSCloudCallingURLController *)self carrierBundleController];
  v7 = [v6 objectForKey:@"VoWiFiCustomerCareWebsite" subscriptionContext:v3];

  if ([v7 length])
  {
    v8 = v7;
  }

  else
  {
    v9 = [(TPSCloudCallingURLController *)self carrierBundleController];
    v8 = [v9 objectForKey:@"VoLTECustomerCareWebsite" subscriptionContext:v3];

    v10 = TPSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "No VoWiFiCustomerCareWebsite URL specified so looking up VoLTECustomerCareWebsite URL (%@)", buf, 0xCu);
    }
  }

  v11 = TUStringKeyForNetwork();
  v12 = [TPSLocalizedString localizedStringForKey:v11];

  if ([v5 length])
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = TUStringKeyForNetwork();
    v15 = [TPSLocalizedString localizedStringForKey:v14];
    v16 = [v13 stringWithFormat:v15, v5];
  }

  else
  {
    v14 = TUStringKeyForNetwork();
    v16 = [TPSLocalizedString localizedStringForKey:v14];
  }

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v12 message:v16 preferredStyle:1];
  v18 = [v8 length];
  v19 = MEMORY[0x277D750F8];
  if (v18)
  {
    v20 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_SHOW_CARRIER_WEB_VIEW_ERROR_VISIT_WEBSITE"];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __59__TPSCloudCallingURLController_genericErrorAlertController__block_invoke;
    v29[3] = &unk_2782E3B60;
    v30 = v8;
    v21 = [v19 actionWithTitle:v20 style:0 handler:v29];
    [v17 addAction:v21];

    v22 = MEMORY[0x277D750F8];
    v23 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_ALERT_ACTION_TITLE_CANCEL"];
    v24 = [v22 actionWithTitle:v23 style:1 handler:0];
    [v17 addAction:v24];

    v25 = v30;
  }

  else
  {
    v25 = [TPSLocalizedString localizedStringForKey:@"CLOUD_CALLING_ALERT_ACTION_TITLE_CONFIRM"];
    v26 = [v19 actionWithTitle:v25 style:1 handler:0];
    [v17 addAction:v26];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v17;
}

void __59__TPSCloudCallingURLController_genericErrorAlertController__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  [v3 openURL:v2 options:MEMORY[0x277CBEC10] completionHandler:0];
}

- (void)reloadWebViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  if (WeakRetained)
  {

    [(TPSCloudCallingURLController *)self loadWebViewController];
  }
}

- (void)loadWebViewController
{
  v3 = [(TPSCloudCallingURLController *)self webViewController];
  if ([v3 type] == 1)
  {
    if ([(TPSCloudCallingURLController *)self shouldEnableCapability])
    {

LABEL_15:
      v12 = [(TPSCloudCallingURLController *)self isCapabilityEnabled];
      v13 = TPSLog();
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that is already enabled. Skipping loading web view", buf, 2u);
        }
      }

      else
      {
        if (v14)
        {
          *buf = 0;
          _os_log_impl(&dword_21B8E9000, v13, OS_LOG_TYPE_DEFAULT, "Asked to load a provision capability web view controller for a capability that should be enabled automatically. Skipping loading web view and enabling capability now", buf, 2u);
        }

        [(TPSCloudCallingURLController *)self enableCapability];
      }

      v6 = [(TPSCloudCallingURLController *)self webViewController];
      [v6 cancelWebView];
      goto LABEL_23;
    }

    v11 = [(TPSCloudCallingURLController *)self isCapabilityEnabled];

    if (v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ([(TPSCloudCallingURLController *)self isCapabilityProvisioningURLInvalid])
  {
    v4 = [(TPSCloudCallingURLController *)self webViewController];
    v5 = [v4 isPresentingURL];

    if (v5)
    {
      v6 = TPSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "Asked to load web view with spinner when web view controller was already presenting a URL";
LABEL_13:
        _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v15 = [(TPSCloudCallingURLController *)self webViewController];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __53__TPSCloudCallingURLController_loadWebViewController__block_invoke;
    v21[3] = &unk_2782E3CA8;
    v21[4] = self;
    [v15 loadWebViewWithSpinner:v21];
  }

  else
  {
    v8 = [(TPSCloudCallingURLController *)self capabilityProvisioningURL];

    if (v8)
    {
      v9 = [(TPSCloudCallingURLController *)self webViewController];
      v10 = [v9 isPresentingURL];

      if (v10)
      {
        v6 = TPSLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v7 = "Asked to load URL when web view controller was already presenting a URL";
          goto LABEL_13;
        }

LABEL_23:

        return;
      }

      v15 = [(TPSCloudCallingURLController *)self webViewController];
      v18 = [(TPSCloudCallingURLController *)self capabilityProvisioningURL];
      v19 = [(TPSCloudCallingURLController *)self capabilityProvisioningPostData];
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_58;
      v20[3] = &unk_2782E3CA8;
      v20[4] = self;
      [v15 loadURL:v18 body:v19 completion:v20];
    }

    else
    {
      v16 = TPSLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [TPSCloudCallingURLController loadWebViewController];
      }

      v15 = [(TPSCloudCallingURLController *)self delegate];
      v17 = [(TPSCloudCallingURLController *)self genericErrorAlertController];
      [v15 presentOrUpdateViewController:v17];
    }
  }
}

void __53__TPSCloudCallingURLController_loadWebViewController__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v3 = TPSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

void __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_58(uint64_t a1, uint64_t a2)
{
  if ((a2 - 2) >= 2)
  {
    if (!a2)
    {
      v6 = TPSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Successfully loaded web view URL", v7, 2u);
      }

      [*(a1 + 32) webSheetCompletion];
    }
  }

  else
  {
    v3 = TPSLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__TPSCloudCallingURLController_loadWebViewController__block_invoke_cold_1();
    }

    v4 = [*(a1 + 32) delegate];
    v5 = [*(a1 + 32) genericErrorAlertController];
    [v4 presentOrUpdateViewController:v5];
  }
}

- (id)_webViewControllerWithType:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    v12 = a3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "_webViewControllerWithType: %ld", &v11, 0xCu);
  }

  if ([(TPSCloudCallingURLController *)self capabilityProvisioningStatus]< 1)
  {
    v8 = TPSLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [TPSCloudCallingURLController _webViewControllerWithType:];
    }

    v7 = [(TPSCloudCallingURLController *)self genericErrorAlertController];
  }

  else
  {
    v6 = [[TPSCloudCallingWebViewController alloc] initWithType:a3];
    [(TPSCloudCallingURLController *)self setWebViewController:v6];
    [(TPSCloudCallingURLController *)self loadWebViewController];
    v7 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v6];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TPSCloudCallingURLControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TPSCloudCallingWebViewController)webViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_webViewController);

  return WeakRetained;
}

@end