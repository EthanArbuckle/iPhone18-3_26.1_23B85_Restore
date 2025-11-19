@interface ICQUIOSLOPresenter
+ (id)parsePurchaseParams:(id)a3;
- (ICQUIOSLOPresenter)initWithOffer:(id)a3 link:(id)a4 presenter:(id)a5;
- (ICQUIOSLOPresenterDelegate)delegate;
- (NSString)_sceneIdentifier;
- (id)_createPostPurchaseICQLink;
- (void)_handlePostPurchaseFlow;
- (void)_handlePostPurchaseLiftUIFlow;
- (void)_handlePostPurchaseRemoteUIFlow;
- (void)beginOSLOPurchaseFlow;
- (void)handleAuthenticateRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)handleDialogRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)handleEngagementRequest:(id)a3 purchase:(id)a4 completion:(id)a5;
- (void)liftUIPresenterDidCancel:(id)a3;
- (void)liftUIPresenterDidComplete:(id)a3;
- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5;
- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4;
- (void)remoteUIFlowManager:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5;
@end

@implementation ICQUIOSLOPresenter

- (ICQUIOSLOPresenter)initWithOffer:(id)a3 link:(id)a4 presenter:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICQUIOSLOPresenter;
  v12 = [(ICQUIOSLOPresenter *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_offer, a3);
    objc_storeStrong(&v13->_link, a4);
    objc_storeWeak(&v13->_presenter, v11);
  }

  return v13;
}

- (NSString)_sceneIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v3 = [WeakRetained view];
  v4 = [v3 window];
  v5 = [v4 windowScene];
  v6 = [v5 _sceneIdentifier];

  return v6;
}

- (id)_createPostPurchaseICQLink
{
  v3 = objc_alloc(MEMORY[0x277D7F370]);
  v4 = [(NSDictionary *)self->_purchaseParams objectForKeyedSubscript:*MEMORY[0x277D7F410]];
  v5 = [v3 initWithActionString:v4];

  return v5;
}

- (void)beginOSLOPurchaseFlow
{
  purchase = self->_purchase;
  if (!purchase)
  {
    v4 = [ICQUIOSLOPresenter parsePurchaseParams:self->_link];
    v5 = [[ICQPurchase alloc] initWithOffer:self->_offer clientInfo:v4];
    v6 = self->_purchase;
    self->_purchase = v5;

    purchase = self->_purchase;
  }

  [(ICQPurchase *)purchase setIsLegacyNativeFlow:1];
  [(ICQPurchase *)self->_purchase setDelegate:self];
  WeakRetained = objc_loadWeakRetained(&self->_presenter);
  v8 = [WeakRetained view];
  v9 = [v8 window];
  v10 = [v9 windowScene];
  v11 = [v10 _sceneIdentifier];
  [(ICQPurchase *)self->_purchase setPresentingSceneIdentifier:v11];

  [(ICQPurchase *)self->_purchase setPresentingSceneBundleIdentifier:*MEMORY[0x277D7F408]];
  v12 = self->_purchase;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __43__ICQUIOSLOPresenter_beginOSLOPurchaseFlow__block_invoke;
  v13[3] = &unk_27A65A7F8;
  v13[4] = self;
  [(ICQPurchase *)v12 startPurchaseWithCompletion:v13];
}

void __43__ICQUIOSLOPresenter_beginOSLOPurchaseFlow__block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if ([*(*(a1 + 32) + 16) action] == 127)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __43__ICQUIOSLOPresenter_beginOSLOPurchaseFlow__block_invoke_cold_1(a2, v5, v6);
    }

    v7 = *(a1 + 32);
    if (a2)
    {
      [v7 _handlePostPurchaseFlow];
    }

    else
    {
      v8 = [v7 delegate];
      [v8 purchaseFlowCompletedWith:0 error:v5];
    }
  }
}

- (void)_handlePostPurchaseFlow
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ICQUIOSLOPresenter _handlePostPurchaseFlow]";
  _os_log_error_impl(&dword_275623000, log, OS_LOG_TYPE_ERROR, "%s Post purchase action not avaialble. Bailing", &v1, 0xCu);
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
  block[2] = __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v3 = objc_alloc(MEMORY[0x277CEE878]);
  v4 = [*(a1 + 40) account];
  v5 = [*(a1 + 40) options];
  v6 = [v3 initWithAccount:v4 presentingViewController:WeakRetained options:v5];

  v7 = [v6 performAuthentication];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke_2;
  v8[3] = &unk_27A65B038;
  v9 = *(a1 + 48);
  [v7 addFinishBlock:v8];
}

void __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
  block[2] = __62__ICQUIOSLOPresenter_handleDialogRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__ICQUIOSLOPresenter_handleDialogRequest_purchase_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v2 = [objc_alloc(MEMORY[0x277CEE868]) initWithRequest:a1[5] presentingViewController:WeakRetained];
  v3 = [v2 present];
  [v3 addFinishBlock:a1[6]];
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
  block[2] = __66__ICQUIOSLOPresenter_handleEngagementRequest_purchase_completion___block_invoke;
  block[3] = &unk_27A65B060;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __66__ICQUIOSLOPresenter_handleEngagementRequest_purchase_completion___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 48));
  v2 = objc_alloc(MEMORY[0x277CEE8D8]);
  v3 = a1[5];
  v4 = [MEMORY[0x277CEE3F8] quotaBag];
  v5 = [v2 initWithRequest:v3 bag:v4 presentingViewController:WeakRetained];

  v6 = [v5 presentEngagement];
  [v6 addFinishBlock:a1[6]];
}

+ (id)parsePurchaseParams:(id)a3
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = _ICQStringForAction();
  [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x277D7F430]];

  v7 = [v4 parameters];
  v8 = *MEMORY[0x277D7F418];
  v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D7F418]];
  [v5 setObject:v9 forKeyedSubscript:v8];

  v10 = [v4 parameters];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D7F428]];
  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D7F400]];

  v12 = [v4 parameters];
  v13 = *MEMORY[0x277D7F420];
  v14 = [v12 objectForKeyedSubscript:*MEMORY[0x277D7F420]];
  [v5 setObject:v14 forKeyedSubscript:v13];

  v15 = [v4 parameters];
  v16 = *MEMORY[0x277D7F448];
  v17 = [v15 objectForKeyedSubscript:*MEMORY[0x277D7F448]];
  [v5 setObject:v17 forKeyedSubscript:v16];

  v18 = [v4 parameters];
  v19 = *MEMORY[0x277D7F438];
  v20 = [v18 objectForKeyedSubscript:*MEMORY[0x277D7F438]];
  [v5 setObject:v20 forKeyedSubscript:v19];

  v21 = [v4 parameters];
  v22 = *MEMORY[0x277D7F440];
  v23 = [v21 objectForKeyedSubscript:*MEMORY[0x277D7F440]];
  [v5 setObject:v23 forKeyedSubscript:v22];

  v24 = [v4 parameters];

  v25 = *MEMORY[0x277D7F410];
  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x277D7F410]];
  [v5 setObject:v26 forKeyedSubscript:v25];

  v27 = [v5 copy];

  return v27;
}

- (void)_handlePostPurchaseLiftUIFlow
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_liftUIPresenter)
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[ICQUIOSLOPresenter _handlePostPurchaseLiftUIFlow]";
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "LiftUI presenter has already been dismissed, %s will be ignored", buf, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v2 = [v4 aa_primaryAppleAccount];

    v5 = [ICQUIOSLOPresenter parsePurchaseParams:self->_link];
    v6 = objc_alloc(MEMORY[0x277CBEBC0]);
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D7F438]];
    v8 = [v6 initWithString:v7];

    v9 = [ICQLiftUIPresenter alloc];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQPurchase statusCode](self->_purchase, "statusCode", @"purchaseStatus"}];
    v17[1] = @"amsErrorCodes";
    v18[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQPurchase amsServerErrorCode](self->_purchase, "amsServerErrorCode")}];
    v18[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v13 = [(ICQLiftUIPresenter *)v9 initWithURL:v8 account:v2 data:v12];
    liftUIPresenter = self->_liftUIPresenter;
    self->_liftUIPresenter = v13;

    [(ICQLiftUIPresenter *)self->_liftUIPresenter setDelegate:self];
    v15 = self->_liftUIPresenter;
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    [(ICQLiftUIPresenter *)v15 presentInViewController:WeakRetained animated:1];
  }
}

- (void)_handlePostPurchaseRemoteUIFlow
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_remoteUIPresenter)
  {
    v2 = _ICQGetLogSystem();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[ICQUIOSLOPresenter _handlePostPurchaseRemoteUIFlow]";
      _os_log_impl(&dword_275623000, v2, OS_LOG_TYPE_DEFAULT, "RemoteUI presenter has already been dismissed, %s will be ignored", buf, 0xCu);
    }
  }

  else
  {
    v4 = [MEMORY[0x277CB8F48] defaultStore];
    v2 = [v4 aa_primaryAppleAccount];

    v5 = [ICQUIRemoteUIPresenter alloc];
    WeakRetained = objc_loadWeakRetained(&self->_presenter);
    v7 = [(ICQUIRemoteUIPresenter *)v5 initWithAccount:v2 presenter:WeakRetained];
    remoteUIPresenter = self->_remoteUIPresenter;
    self->_remoteUIPresenter = v7;

    [(ICQUIRemoteUIPresenter *)self->_remoteUIPresenter setDelegate:self];
    v9 = [ICQUIOSLOPresenter parsePurchaseParams:self->_link];
    v10 = objc_alloc(MEMORY[0x277CBEBC0]);
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D7F438]];
    v12 = [v10 initWithString:v11];

    v13 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
    [v13 setHTTPMethod:@"POST"];
    [v13 setValue:@"application/x-plist" forHTTPHeaderField:@"Accept"];
    [v13 setValue:@"application/x-plist" forHTTPHeaderField:@"Content-Type"];
    v23[0] = @"purchaseStatus";
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQPurchase statusCode](self->_purchase, "statusCode")}];
    v23[1] = @"amsErrorCodes";
    v24[0] = v14;
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQPurchase amsServerErrorCode](self->_purchase, "amsServerErrorCode")}];
    v24[1] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

    v22 = 0;
    v17 = [MEMORY[0x277CCAC58] dataWithPropertyList:v16 format:100 options:0 error:&v22];
    v18 = v22;
    if (v18)
    {
      v19 = _ICQGetLogSystem();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v18;
        _os_log_impl(&dword_275623000, v19, OS_LOG_TYPE_DEFAULT, "Could not convert message body to XML for post purchase flow. Error: %@", buf, 0xCu);
      }
    }

    else
    {
      [v13 setHTTPBody:v17];
    }

    v20 = self->_remoteUIPresenter;
    v21 = [v13 copy];
    [(ICQUIRemoteUIPresenter *)v20 beginRUIFlowWithRequest:v21];
  }
}

- (void)remoteUIFlowManager:(id)a3 didCompleteFlowWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOSLOPresenter remoteUIFlowManager:v5 didCompleteFlowWithSuccess:v7 error:?];
  }

  v9 = [(ICQUIOSLOPresenter *)self delegate];
  [v9 purchaseFlowCompletedWith:v5 error:v7];
}

- (void)remoteUIFlowManager:(id)a3 didDismissWithError:(id)a4
{
  v5 = a4;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOSLOPresenter remoteUIFlowManager:v5 didDismissWithError:?];
  }

  v7 = [(ICQUIOSLOPresenter *)self delegate];
  [v7 purchaseFlowCompletedWith:0 error:v5];
}

- (void)remoteUIFlowManager:(id)a3 didLoadWithSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v6 = a5;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOSLOPresenter remoteUIFlowManager:v5 didLoadWithSuccess:v6 error:?];
  }
}

- (void)liftUIPresenterDidComplete:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOSLOPresenter liftUIPresenterDidComplete:v4];
  }

  v5 = [(ICQUIOSLOPresenter *)self delegate];
  [v5 purchaseFlowCompletedWith:1 error:0];
}

- (void)liftUIPresenterDidCancel:(id)a3
{
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [ICQUIOSLOPresenter liftUIPresenterDidComplete:v4];
  }

  v5 = [(ICQUIOSLOPresenter *)self delegate];
  [v5 purchaseFlowCompletedWith:0 error:0];
}

- (ICQUIOSLOPresenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __43__ICQUIOSLOPresenter_beginOSLOPurchaseFlow__block_invoke_cold_1(char a1, uint64_t a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109378;
  v3[1] = a1 & 1;
  v4 = 2112;
  v5 = a2;
  _os_log_debug_impl(&dword_275623000, log, OS_LOG_TYPE_DEBUG, "OSLO Flow completed with success: %d and error: %@", v3, 0x12u);
}

void __68__ICQUIOSLOPresenter_handleAuthenticateRequest_purchase_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "Error attempting silent auth: %@", &v2, 0xCu);
}

- (void)remoteUIFlowManager:(uint64_t)a1 didCompleteFlowWithSuccess:(void *)a2 error:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)remoteUIFlowManager:(void *)a1 didDismissWithError:.cold.1(void *a1)
{
  v6 = [a1 localizedDescription];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)remoteUIFlowManager:(uint64_t)a1 didLoadWithSuccess:(void *)a2 error:.cold.1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end