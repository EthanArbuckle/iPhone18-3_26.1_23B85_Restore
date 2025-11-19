@interface TSBuddyMLViewController
- (BOOL)_isActionDismissToCancelFlow:(id)a3;
- (TSBuddyMLViewController)initWithCTPlan:(id)a3 inBuddy:(BOOL)a4;
- (TSBuddyMLViewController)initWithCTPlan:(id)a3 websheetURL:(id)a4 postdata:(id)a5;
- (TSSIMSetupFlowDelegate)delegate;
- (void)_configureRUIController;
- (void)_handlePlanAddition:(id)a3;
- (void)_requestCipherText:(id)a3 completion:(id)a4;
- (void)_setUserInPurchaseFlow;
- (void)dealloc;
- (void)prepare:(id)a3;
- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5;
- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5;
- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4;
- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6;
- (void)viewDidLoad;
@end

@implementation TSBuddyMLViewController

- (TSBuddyMLViewController)initWithCTPlan:(id)a3 websheetURL:(id)a4 postdata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v20.receiver = self;
  v20.super_class = TSBuddyMLViewController;
  v12 = [(TSBuddyMLViewController *)&v20 initWithNibName:0 bundle:0];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_plan, a3);
    objc_storeStrong(&v13->_buddyMLURL, a4);
    objc_storeStrong(&v13->_postdata, a5);
    v13->_initialRequest = 1;
    v13->_isBootstrapAsserted = 0;
  }

  v14 = objc_opt_new();
  objectModels = v13->_objectModels;
  v13->_objectModels = v14;

  v16 = objc_alloc(MEMORY[0x277CC37B0]);
  v17 = [v16 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = v13->_coreTelephonyClient;
  v13->_coreTelephonyClient = v17;

  [(TSBuddyMLViewController *)v13 _setUserInPurchaseFlow];
  return v13;
}

- (TSBuddyMLViewController)initWithCTPlan:(id)a3 inBuddy:(BOOL)a4
{
  v7 = a3;
  v16.receiver = self;
  v16.super_class = TSBuddyMLViewController;
  v8 = [(TSBuddyMLViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_plan, a3);
    v9->_inBuddy = a4;
    v9->_initialRequest = 1;
    v9->_isBootstrapAsserted = 0;
  }

  v10 = objc_opt_new();
  objectModels = v9->_objectModels;
  v9->_objectModels = v10;

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = v9->_coreTelephonyClient;
  v9->_coreTelephonyClient = v13;

  [(TSBuddyMLViewController *)v9 _setUserInPurchaseFlow];
  return v9;
}

- (void)dealloc
{
  if (self->_isBootstrapAsserted)
  {
    v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v3 deassertUserInPurchaseFlowWithForce:0 caller:self];
  }

  v4.receiver = self;
  v4.super_class = TSBuddyMLViewController;
  [(TSBuddyMLViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  [(TSBuddyMLViewController *)self _configureRUIController];
  v3 = [MEMORY[0x277CBEBC0] URLWithString:self->_buddyMLURL];
  v4 = [TSURLRequestFactory requestWithType:5 URL:v3 postdata:self->_postdata];

  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __38__TSBuddyMLViewController_viewDidLoad__block_invoke;
  v9 = &unk_279B44490;
  v10 = self;
  v11 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], &v6);
  [(TSBuddyMLViewController *)self setModalInPresentation:1, v6, v7, v8, v9, v10];
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteUIController];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2;
  v4[3] = &unk_279B45770;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  [v2 loadRequest:v3 completion:v4];
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2_cold_1();
    }

    [*(a1 + 32) setBuddyMLURL:0];
    v6 = [*(a1 + 32) delegate];
    [v6 viewControllerDidComplete:*(a1 + 32)];
  }

  *(*(a1 + 32) + 1049) = 0;
}

- (void)prepare:(id)a3
{
  v4 = a3;
  if ([(NSString *)self->_buddyMLURL length])
  {
    v4[2](v4, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = +[TSCoreTelephonyClientCache sharedInstance];
    plan = self->_plan;
    inBuddy = self->_inBuddy;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __35__TSBuddyMLViewController_prepare___block_invoke;
    v8[3] = &unk_279B45310;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    [v5 getWebsheetInfoForPlan:plan inBuddy:inBuddy completion:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __35__TSBuddyMLViewController_prepare___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 134, a2);
    objc_storeStrong(v9 + 135, a3);
    v10 = *(*(a1 + 32) + 16);
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __35__TSBuddyMLViewController_prepare___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 32) + 16);
  }

  v10();
}

- (void)remoteUIController:(id)a3 didRemoveObjectModel:(id)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(NSMutableArray *)self->_objectModels indexOfObject:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = _TSLogDomain();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412546;
      v10 = v5;
      v11 = 2080;
      v12 = "[TSBuddyMLViewController remoteUIController:didRemoveObjectModel:]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "RemoteUI removed an object model that is not on stack: %@ @%s", &v9, 0x16u);
    }
  }

  else
  {
    [(NSMutableArray *)self->_objectModels removeObjectAtIndex:v6];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 didReceiveObjectModel:(id)a4 actionSignal:(unint64_t *)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v37 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = *a5;
    if (*a5 == 1)
    {
      v10 = _TSLogDomain();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v63 = "[TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:]";
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "ActionSignalDismiss!!! @%s", buf, 0xCu);
      }

      v11 = [v8 clientInfo];
      v12 = [(TSBuddyMLViewController *)self _isActionDismissToCancelFlow:v11];

      if (v12)
      {
        v13 = [(TSBuddyMLViewController *)self delegate];
        [v13 userDidTapCancel];
      }

      v9 = *a5;
    }

    if (v9 == 2)
    {
      v14 = _TSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v63 = "[TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:]";
        _os_log_impl(&dword_262AA8000, v14, OS_LOG_TYPE_DEFAULT, "ActionSignalPush!!! @%s", buf, 0xCu);
      }
    }

    v15 = [(RemoteUIController *)self->_remoteUIController displayedPages];
    v16 = [v15 count];

    if (!v16)
    {
      if (*a5 == 4)
      {
        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:];
        }

        v18 = 0;
      }

      else
      {
        if (*a5 != 3)
        {
          goto LABEL_22;
        }

        v17 = _TSLogDomain();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [TSBuddyMLViewController remoteUIController:didReceiveObjectModel:actionSignal:];
        }

        v18 = 2;
      }

      *a5 = v18;
    }
  }

LABEL_22:
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v8 allPages];
  v40 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v40)
  {
    v39 = *v56;
    do
    {
      v19 = 0;
      do
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v19;
        v20 = [*(*(&v55 + 1) + 8 * v19) tableViewOM];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v41 = v20;
        v43 = [v20 sections];
        v45 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v45)
        {
          v44 = *v52;
          do
          {
            v21 = 0;
            do
            {
              if (*v52 != v44)
              {
                objc_enumerationMutation(v43);
              }

              v46 = v21;
              v22 = *(*(&v51 + 1) + 8 * v21);
              v47 = 0u;
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v23 = [v22 rows];
              v24 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v48;
                do
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (*v48 != v26)
                    {
                      objc_enumerationMutation(v23);
                    }

                    v28 = *(*(&v47 + 1) + 8 * i);
                    v29 = [v28 attributes];
                    v30 = [v29 objectForKeyedSubscript:@"secure"];
                    v31 = [v30 BOOLValue];

                    if (v31)
                    {
                      v32 = [v28 attributes];
                      v33 = [v32 objectForKey:@"id"];
                      idNeedsEncryption = self->_idNeedsEncryption;
                      self->_idNeedsEncryption = v33;
                    }
                  }

                  v25 = [v23 countByEnumeratingWithState:&v47 objects:v59 count:16];
                }

                while (v25);
              }

              v21 = v46 + 1;
            }

            while (v46 + 1 != v45);
            v45 = [v43 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v45);
        }

        v19 = v42 + 1;
      }

      while (v42 + 1 != v40);
      v40 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v40);
  }

  v35 = [v8 clientInfo];
  [(TSBuddyMLViewController *)self _handlePlanAddition:v35];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:(id)a3 shouldLoadRequest:(id)a4 redirectResponse:(id)a5 withCompletionHandler:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableArray *)self->_objectModels lastObject];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v14 populatePostbackDictionary:v15];
  v16 = [v15 objectForKey:self->_idNeedsEncryption];
  [v11 setValue:@"iOS Device Activation" forHTTPHeaderField:@"User-Agent"];
  if (self->_initialRequest)
  {
    v17 = _TSLogDomain();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSBuddyMLViewController remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]";
      _os_log_impl(&dword_262AA8000, v17, OS_LOG_TYPE_DEFAULT, "Set type as json for initial request @%s", buf, 0xCu);
    }

    [v11 setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    v13[2](v13, 1, 0);
  }

  else if (v16)
  {
    objc_initWeak(buf, self);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke;
    v20[3] = &unk_279B45798;
    objc_copyWeak(&v24, buf);
    v23 = v13;
    v21 = v15;
    v22 = v11;
    [(TSBuddyMLViewController *)self _requestCipherText:v16 completion:v20];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    v18 = _TSLogDomain();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v26 = "[TSBuddyMLViewController remoteUIController:shouldLoadRequest:redirectResponse:withCompletionHandler:]";
      _os_log_impl(&dword_262AA8000, v18, OS_LOG_TYPE_DEFAULT, "No encryption needed @%s", buf, 0xCu);
    }

    v13[2](v13, 1, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_2();
    }

    goto LABEL_9;
  }

  if (!v3)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1();
    }

LABEL_9:

    (*(*(a1 + 48) + 16))();
    goto LABEL_10;
  }

  [*(a1 + 32) setObject:v3 forKey:WeakRetained[125]];
  v5 = [MEMORY[0x277CCAC58] dataWithPropertyList:*(a1 + 32) format:100 options:0 error:0];
  [*(a1 + 40) setHTTPBody:v5];
  [*(a1 + 40) setTimeoutInterval:180.0];
  (*(*(a1 + 48) + 16))();

LABEL_10:
}

- (void)remoteUIController:(id)a3 didFinishLoadWithError:(id)a4 forRequest:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = v9;
      v26 = 2080;
      v27 = "[TSBuddyMLViewController remoteUIController:didFinishLoadWithError:forRequest:]";
      _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "RemoteUI didFinishLoadWithError: %{public}@ @%s", buf, 0x16u);
    }

    if ([v9 code] == -1001)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v12 localizedStringForKey:@"ERROR_TRANSFER_ITEM_TITLE" value:&stru_28753DF48 table:@"Localizable"];

      v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v14 = [v13 localizedStringForKey:@"CARRRIER_SETUP_TIMEOUT_MESSAGE" value:&stru_28753DF48 table:@"Localizable"];

      v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v21 message:v14 preferredStyle:1];
      objc_initWeak(buf, self);
      v16 = MEMORY[0x277D750F8];
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v18 = [v17 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __80__TSBuddyMLViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke;
      v22[3] = &unk_279B44550;
      objc_copyWeak(&v23, buf);
      v19 = [v16 actionWithTitle:v18 style:1 handler:v22];
      [v15 addAction:v19];

      [(TSBuddyMLViewController *)self presentViewController:v15 animated:1 completion:0];
      objc_destroyWeak(&v23);
      objc_destroyWeak(buf);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __80__TSBuddyMLViewController_remoteUIController_didFinishLoadWithError_forRequest___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSBuddyMLViewController remoteUIController:didFinishLoadWithError:forRequest:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "Complete viewController to allow user continue flow @%s", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  [v4 viewControllerDidComplete:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_configureRUIController
{
  if (!self->_remoteUIController)
  {
    v3 = objc_alloc_init(MEMORY[0x277D46220]);
    remoteUIController = self->_remoteUIController;
    self->_remoteUIController = v3;

    [(RemoteUIController *)self->_remoteUIController setDelegate:self];
    v5 = self->_remoteUIController;
    v6 = [MEMORY[0x277D46210] setupAssistantStyle];
    [(RemoteUIController *)v5 setStyle:v6];

    v7 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    [v7 set_sourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
    [(RemoteUIController *)self->_remoteUIController setSessionConfiguration:v7];
    objc_initWeak(&location, self);
    v8 = self->_remoteUIController;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__TSBuddyMLViewController__configureRUIController__block_invoke;
    v9[3] = &unk_279B457C0;
    objc_copyWeak(&v10, &location);
    [(RemoteUIController *)v8 setHandlerForElementName:@"cancel" handler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __50__TSBuddyMLViewController__configureRUIController__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[TSBuddyMLViewController _configureRUIController]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "User canceled flow @%s", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 userDidTapCancel];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handlePlanAddition:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"eid"];
  v34 = [v4 objectForKeyedSubscript:@"iccid"];
  v33 = [v4 objectForKeyedSubscript:@"phoneNumber"];
  v6 = [v4 objectForKeyedSubscript:@"mcc"];
  mcc = self->_mcc;
  self->_mcc = v6;

  v8 = [v4 objectForKeyedSubscript:@"mnc"];
  mnc = self->_mnc;
  self->_mnc = v8;

  v10 = [v4 objectForKeyedSubscript:@"gid1"];
  gid1 = self->_gid1;
  self->_gid1 = v10;

  v12 = [v4 objectForKeyedSubscript:@"gid2"];
  gid2 = self->_gid2;
  self->_gid2 = v12;

  v32 = v5;
  if (v5 && v34 && v33)
  {
    v28 = objc_alloc(MEMORY[0x277CC3640]);
    v30 = [v4 objectForKeyedSubscript:@"sourceIccid"];
    v29 = [v4 objectForKeyedSubscript:@"UnusableIccid"];
    v27 = [v4 objectForKeyedSubscript:@"mcc"];
    v31 = [v4 objectForKeyedSubscript:@"mnc"];
    v14 = [v4 objectForKeyedSubscript:@"gid1"];
    v26 = [v4 objectForKeyedSubscript:@"gid2"];
    v25 = [v4 objectForKeyedSubscript:@"smdpAddress"];
    v15 = [v4 objectForKeyedSubscript:@"useDS"];
    v16 = [v15 BOOLValue];
    v17 = [v4 objectForKeyedSubscript:@"isESim"];
    v18 = [v17 BOOLValue];
    v19 = [v4 objectForKeyedSubscript:@"flowType"];
    BYTE1(v24) = v18;
    LOBYTE(v24) = v16;
    v20 = [v28 initWithDetails:v5 installIccid:v34 sourceIccid:v30 unusableIccid:v29 phoneNumber:v33 mcc:v27 mnc:v31 gid1:v14 gid2:v26 smdp:v25 useDS:v24 esim:v19 flowType:?];

    if (v20)
    {
      v21 = _TSLogDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v36 = "[TSBuddyMLViewController _handlePlanAddition:]";
        _os_log_impl(&dword_262AA8000, v21, OS_LOG_TYPE_DEFAULT, "Adding cellular plan... @%s", buf, 0xCu);
      }

      [(CoreTelephonyClient *)self->_coreTelephonyClient addPlanWith:v20 completionHandler:&__block_literal_global_22];
      v22 = [(TSBuddyMLViewController *)self delegate];
      [v22 viewControllerDidComplete:self];
    }
  }

  else
  {
    v20 = _TSLogDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [TSBuddyMLViewController _handlePlanAddition:];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __47__TSBuddyMLViewController__handlePlanAddition___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a2 != 2)
  {
    v5 = _TSLogDomain();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __47__TSBuddyMLViewController__handlePlanAddition___block_invoke_cold_1();
    }
  }
}

- (void)_requestCipherText:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TSLogDomain();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [TSBuddyMLViewController _requestCipherText:v8 completion:?];
  }

  objc_initWeak(&location, self);
  coreTelephonyClient = self->_coreTelephonyClient;
  mcc = self->_mcc;
  mnc = self->_mnc;
  gid1 = self->_gid1;
  gid2 = self->_gid2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke;
  v15[3] = &unk_279B44E08;
  objc_copyWeak(&v17, &location);
  v14 = v7;
  v16 = v14;
  [(CoreTelephonyClient *)coreTelephonyClient encryptDataWithCarrierIdentifiers:mcc mnc:mnc gid1:gid1 gid2:gid2 data:v6 completion:v15];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = _TSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke_cold_1();
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

- (BOOL)_isActionDismissToCancelFlow:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"eid"];
  v4 = v3 == 0;

  return v4;
}

- (void)_setUserInPurchaseFlow
{
  if (+[TSUtilities isOnBootstrap])
  {
    self->_isBootstrapAsserted = 1;
    v3 = +[TSUserInPurchaseFlowAssertion sharedInstance];
    [v3 assertUserInPurchaseFlowStartOver:0 caller:self];
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __38__TSBuddyMLViewController_viewDidLoad__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __35__TSBuddyMLViewController_prepare___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:didReceiveObjectModel:actionSignal:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)remoteUIController:didReceiveObjectModel:actionSignal:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __103__TSBuddyMLViewController_remoteUIController_shouldLoadRequest_redirectResponse_withCompletionHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_handlePlanAddition:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__TSBuddyMLViewController__handlePlanAddition___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_requestCipherText:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1016);
  v3 = *(a1 + 1024);
  v5 = 138412802;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  v9 = 2080;
  v10 = "[TSBuddyMLViewController _requestCipherText:completion:]";
  _os_log_debug_impl(&dword_262AA8000, a2, OS_LOG_TYPE_DEBUG, "[Db] IMSI %@/%@ @%s", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __57__TSBuddyMLViewController__requestCipherText_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end