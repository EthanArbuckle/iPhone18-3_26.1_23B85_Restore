@interface SSCellularPlanScanViewController
- (SSCellularPlanScanViewController)initWithBackButton:(BOOL)a3;
- (void)_addNewPlanWithCardData:(id)a3 confirmationCode:(id)a4;
- (void)_learnMoreTapped;
- (void)onCodeDetected:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation SSCellularPlanScanViewController

- (SSCellularPlanScanViewController)initWithBackButton:(BOOL)a3
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"GSMA_SCAN_TITLE" value:&stru_28753DF48 table:@"Localizable"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"GSMA_SCAN_DETAIL" value:&stru_28753DF48 table:@"Localizable"];
  v11.receiver = self;
  v11.super_class = SSCellularPlanScanViewController;
  v9 = [(SSScanViewController *)&v11 initWithTitle:v6 detail:v8];

  if (v9)
  {
    v9->_withBackButton = a3;
    [(SSScanViewController *)v9 setQrcodeDelegate:v9];
  }

  return v9;
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = SSCellularPlanScanViewController;
  [(SSScanViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277D37638] accessoryButton];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"LEARN_MORE" value:&stru_28753DF48 table:@"Localizable"];
  [v3 setTitle:v5 forState:0];

  [v3 addTarget:self action:sel__learnMoreTapped forControlEvents:64];
  if (+[TSUtilities inBuddy])
  {
    [v3 setHidden:1];
  }

  else
  {
    v6 = +[TSCoreTelephonyClientCache sharedInstance];
    [v3 setHidden:{objc_msgSend(v6, "usingBootstrapDataService")}];
  }

  v7 = [(SSCellularPlanScanViewController *)self headerView];
  [v7 addAccessoryButton:v3];
}

- (void)onCodeDetected:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(SSScanViewController *)self delegate];
    [v8 waitForResponse:self];

    if ([v6 hasPrefix:@"LPA:1$TR$"])
    {
      self->_transferViaQRCode = 1;
      v9 = [(SSScanViewController *)self delegate];
      [v9 receivedResponse];

      v10 = [(SSScanViewController *)self delegate];
      [v10 viewControllerDidComplete:self];
    }

    else
    {
      [(SSCellularPlanScanViewController *)self _addNewPlanWithCardData:v6 confirmationCode:0];
    }
  }

  else
  {
    v11 = _TSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SSCellularPlanScanViewController onCodeDetected:v11 completion:?];
    }
  }
}

- (void)_learnMoreTapped
{
  if (+[TSUtilities isPad])
  {
    v2 = @"https://support.apple.com/HT203089?cid=mc-ols-esim-article_ht203089-ipados_ui-07212023#esim";
  }

  else
  {
    v2 = @"https://support.apple.com/ht209096?cid=mc-ols-esim-article_ht209096-ios_ui-07192022";
  }

  [TSUtilities launchURL:v2];
}

- (void)_addNewPlanWithCardData:(id)a3 confirmationCode:(id)a4
{
  v7 = a3;
  v8 = a4;
  objc_storeStrong(&self->_fauxCardData, a3);
  v9 = [(SSScanViewController *)self delegate];
  [v9 waitForResponse:self];

  objc_initWeak(&location, self);
  v10 = +[TSCellularPlanManagerCache sharedInstance];
  v11 = [(SSScanViewController *)self delegate];
  v12 = [v11 signupUserConsentResponse];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke;
  v13[3] = &unk_279B44278;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  [v10 addNewPlanWithCardData:v7 confirmationCode:v8 userConsentResponse:v12 completion:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2;
  block[3] = &unk_279B44250;
  v6 = v3;
  v4 = v3;
  objc_copyWeak(&v8, (a1 + 40));
  v7 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v8);
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2(uint64_t a1)
{
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:*MEMORY[0x277CF9680]];

    if (v6)
    {
      if ([*(a1 + 32) code] == 19)
      {
        *(*(a1 + 40) + 1305) = 1;
        v7 = [WeakRetained delegate];
        [v7 viewControllerDidComplete:WeakRetained];
LABEL_12:

        goto LABEL_13;
      }

      v8 = [TSUtilities isRegulatoryRestrictionActive:*(a1 + 32)];
      v9 = *(a1 + 32);
      if (v8)
      {
        if (v9)
        {
          v7 = [MEMORY[0x277CCAB98] defaultCenter];
          [v7 postNotificationName:@"install.failed" object:*(a1 + 32)];
          goto LABEL_12;
        }
      }

      else if ([v9 code] == 2)
      {
        v7 = [TSUtilities getErrorTitleDetail:*(a1 + 32) forCarrier:&stru_28753DF48];
        v10 = MEMORY[0x277D75110];
        v11 = [v7 objectForKeyedSubscript:@"ErrorHeader"];
        v12 = [v7 objectForKeyedSubscript:@"ErrorDetail"];
        v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:1];

        v14 = MEMORY[0x277D750F8];
        v15 = *(a1 + 40);
        v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v17 = [v16 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_62;
        v22[3] = &unk_279B44228;
        v23 = *(a1 + 32);
        v24 = WeakRetained;
        v25 = *(a1 + 40);
        v18 = [v14 actionWithTitle:v17 style:1 handler:v22];
        [v13 addAction:v18];

        v19 = [WeakRetained navigationController];
        v20 = [v19 visibleViewController];
        [v20 presentViewController:v13 animated:1 completion:0];

        v21 = [WeakRetained delegate];
        [v21 receivedResponse];

        goto LABEL_12;
      }
    }
  }

LABEL_13:
}

uint64_t __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_62(uint64_t a1)
{
  result = [*(a1 + 32) code];
  if (result == 2)
  {
    v3 = [*(a1 + 40) delegate];
    [v3 receivedResponse];

    v4 = [*(a1 + 40) delegate];
    [v4 setCancelNavigationBarItems:*(a1 + 48)];

    v5 = *(a1 + 40);

    return [v5 viewWillAppear:1];
  }

  return result;
}

- (void)onCodeDetected:(os_log_t)log completion:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SSCellularPlanScanViewController onCodeDetected:completion:]";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]missing completion @%s", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __77__SSCellularPlanScanViewController__addNewPlanWithCardData_confirmationCode___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412546;
  v5 = v2;
  v6 = 2080;
  v7 = "[SSCellularPlanScanViewController _addNewPlanWithCardData:confirmationCode:]_block_invoke_2";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]error: %@ @%s", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end