@interface TSCellularSetupLoadingViewController
- (TSSIMSetupFlowDelegate)delegate;
- (id)navBarTitle;
- (void)_showFailureAlert:(id)a3 completion:(id)a4;
- (void)cancelButtonTapped;
- (void)deactivate;
- (void)presentationControllerDidDismiss:(id)a3;
- (void)safariViewController:(id)a3 didCompleteInitialLoad:(BOOL)a4;
- (void)safariViewController:(id)a3 url:(id)a4 postdata:(id)a5 completion:(id)a6;
- (void)safariViewControllerDidFinish:(id)a3;
- (void)setupCoreTelephonyClientForRemoteSignup;
- (void)setupNavigationBarItems;
- (void)viewDidLoad;
@end

@implementation TSCellularSetupLoadingViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = TSCellularSetupLoadingViewController;
  [(OBBaseWelcomeController *)&v5 viewDidLoad];
  [(TSCellularSetupLoadingViewController *)self setupNavigationBarItems];
  v3 = [TSUtilities backgroundColorForRemotePlan:[(TSCellularSetupLoadingViewController *)self isRemotePlan]];
  v4 = [(TSCellularSetupLoadingViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(TSCellularSetupLoadingViewController *)self setupCoreTelephonyClientForRemoteSignup];
}

- (void)setupNavigationBarItems
{
  v3 = [(OBBaseWelcomeController *)self navigationItem];
  [v3 setHidesBackButton:1];

  v4 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_cancelButtonTapped];
  v5 = [(OBBaseWelcomeController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v7 = [(TSCellularSetupLoadingViewController *)self navBarTitle];
  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setTitle:v7];
}

- (void)setupCoreTelephonyClientForRemoteSignup
{
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke;
  v21[3] = &unk_279B44850;
  v21[4] = self;
  v3 = MEMORY[0x2667315D0](v21, a2);
  v4 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  v5 = [v4 url];

  if (v5)
  {
    v6 = MEMORY[0x277CBEBC0];
    v7 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    v8 = [v7 url];
    v9 = [v6 URLWithString:v8];
    v10 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    v11 = [v10 postdata];
    (v3)[2](v3, v9, v11, 0);

LABEL_7:
    goto LABEL_8;
  }

  v12 = objc_alloc(MEMORY[0x277CC37B0]);
  v13 = [v12 initWithQueue:MEMORY[0x277D85CD0]];
  coreTelephonyClient = self->_coreTelephonyClient;
  self->_coreTelephonyClient = v13;

  v15 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  v16 = [v15 flowType];

  if (v16 == 8)
  {
    v17 = self->_coreTelephonyClient;
    v7 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    v8 = [v7 iccid];
    [(CoreTelephonyClient *)v17 getRemotePlanManageAccountInfoFor:v8 completion:v3];
    goto LABEL_7;
  }

  v18 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  v19 = [v18 flowType];

  if (v19 == 7)
  {
    v20 = self->_coreTelephonyClient;
    v7 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    v8 = [v7 subscriptionContext];
    [(CoreTelephonyClient *)v20 remotePlanSignupInfoFor:v8 userConsent:0 completion:v3];
    goto LABEL_7;
  }

LABEL_8:
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 32);
  if (!a4)
  {
    v10 = [v9 isProcessCanceled];
    v11 = _TSLogDomain();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 136315394;
        v20 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke_2";
        v21 = 2080;
        v22 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke_2";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Flow Stop by Cancel Set Purchase to NO %s @%s", buf, 0x16u);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 136315138;
        v20 = "[TSCellularSetupLoadingViewController setupCoreTelephonyClientForRemoteSignup]_block_invoke";
        _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Flow Start @%s", buf, 0xCu);
      }

      [*(a1 + 32) setCarrierURL:v7];
      [*(a1 + 32) setPostdata:v8];
      v13 = [*(a1 + 32) remotePlanWebsheetContext];
      v14 = [v13 useLiveID];

      v15 = *(a1 + 32);
      if (v14)
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_58;
        v17[3] = &unk_279B44578;
        v17[4] = v15;
        [v15 safariViewController:v15 url:v7 postdata:v8 completion:v17];
        goto LABEL_12;
      }

      v11 = [v15 delegate];
      [v11 viewControllerDidComplete:*(a1 + 32)];
    }

    goto LABEL_12;
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_2;
  v18[3] = &unk_279B44578;
  v18[4] = v9;
  [v9 _showFailureAlert:v9 completion:v18];
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) presentingViewController];
  [v2 dismissViewControllerAnimated:0 completion:0];

  v3 = [*(a1 + 32) delegate];
  [v3 userDidTapCancel];
}

void __79__TSCellularSetupLoadingViewController_setupCoreTelephonyClientForRemoteSignup__block_invoke_58(uint64_t a1)
{
  v1 = [*(a1 + 32) delegate];
  [v1 userDidTapCancel];
}

- (void)cancelButtonTapped
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[TSCellularSetupLoadingViewController cancelButtonTapped]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "Cancel Process in Loading @%s", &v5, 0xCu);
  }

  [(TSCellularSetupLoadingViewController *)self setIsProcessCanceled:1];
  [(TSCellularSetupLoadingViewController *)self dismissViewControllerWithTransition:7 completion:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (id)navBarTitle
{
  v3 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
  v4 = [v3 carrierName];
  if (v4)
  {
    v5 = v4;
    v6 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
    v7 = [v6 carrierName];
    v8 = [v7 length];

    if (v8)
    {
      v9 = [(TSCellularSetupLoadingViewController *)self remotePlanWebsheetContext];
      v10 = [v9 carrierName];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CELLULAR ACCOUNT" value:&stru_28753DF48 table:@"Localizable"];
LABEL_6:
  v11 = v10;

  return v11;
}

- (void)_showFailureAlert:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"The connection to the server was lost.  Please try again later." value:&stru_28753DF48 table:@"Localizable"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __69__TSCellularSetupLoadingViewController__showFailureAlert_completion___block_invoke;
  v28[3] = &unk_279B44878;
  v15 = v6;
  v29 = v15;
  v16 = [v12 actionWithTitle:v14 style:0 handler:v28];
  [v11 addObject:v16];

  v17 = [MEMORY[0x277D75110] alertControllerWithTitle:v8 message:v10 preferredStyle:1];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = v11;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [v17 addAction:{*(*(&v24 + 1) + 8 * v22++), v24}];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v20);
  }

  [v5 presentViewController:v17 animated:1 completion:0];
  v23 = *MEMORY[0x277D85DE8];
}

- (void)safariViewController:(id)a3 url:(id)a4 postdata:(id)a5 completion:(id)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCAD18];
  v8 = a3;
  v9 = [(TSCellularSetupLoadingViewController *)self postdata];
  v10 = [v9 valueForKey:@"carrierPostData"];
  v11 = [v7 queryItemWithName:@"signup-url-data" value:v10];

  v12 = MEMORY[0x277CCACE0];
  v13 = [(TSCellularSetupLoadingViewController *)self carrierURL];
  v14 = [v12 componentsWithURL:v13 resolvingAgainstBaseURL:0];

  v23[0] = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  [v14 setQueryItems:v15];

  v16 = objc_alloc_init(MEMORY[0x277CDB708]);
  [v16 setEntersReaderIfAvailable:0];
  [v16 _setEphemeral:1];
  v17 = objc_alloc(MEMORY[0x277CDB700]);
  v18 = [v14 URL];
  v19 = [v17 initWithURL:v18 configuration:v16];

  [v19 setDelegate:self];
  [v19 _setShowingLinkPreview:0];
  [v19 _setShowingLinkPreviewWithMinimalUI:0];
  [v19 setModalPresentationStyle:1];
  v20 = [v19 presentationController];
  [v20 setDelegate:self];

  v21 = [v8 navigationController];

  [v21 presentViewController:v19 animated:1 completion:0];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)deactivate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _TSLogDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[TSCellularSetupLoadingViewController deactivate]";
    v8 = 2080;
    v9 = "[TSCellularSetupLoadingViewController deactivate]";
    _os_log_impl(&dword_262AA8000, v3, OS_LOG_TYPE_DEFAULT, "%s @%s", &v6, 0x16u);
  }

  v4 = [(TSCellularSetupLoadingViewController *)self _remoteViewControllerProxy];
  [v4 dismiss];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSCellularSetupLoadingViewController presentationControllerDidDismiss:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "safariViewController dismiss @%s", &v7, 0xCu);
  }

  v5 = [(TSCellularSetupLoadingViewController *)self presentingViewController];
  [v5 dismissViewControllerAnimated:0 completion:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)safariViewControllerDidFinish:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke;
  block[3] = &unk_279B44578;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _TSLogDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[TSCellularSetupLoadingViewController safariViewControllerDidFinish:]_block_invoke";
    _os_log_impl(&dword_262AA8000, v2, OS_LOG_TYPE_DEFAULT, "safariViewController did finish @%s", buf, 0xCu);
  }

  v3 = [MEMORY[0x277CF96D8] sharedManager];
  [v3 userSignupInitiatedOrFailed];

  v4 = *(a1 + 32);
  [objc_opt_class() durationForTransition:7];
  v5 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__TSCellularSetupLoadingViewController_safariViewControllerDidFinish___block_invoke_91;
  v8[3] = &unk_279B44578;
  v8[4] = v5;
  [v5 dismissViewControllerWithTransition:7 completion:v8];
  result = UIKeyboardOrderOutAutomaticToDirectionWithDuration();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)safariViewController:(id)a3 didCompleteInitialLoad:(BOOL)a4
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = _TSLogDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[TSCellularSetupLoadingViewController safariViewController:didCompleteInitialLoad:]";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "safariViewController load complete @%s", &v7, 0xCu);
  }

  v5 = [MEMORY[0x277CF96D8] sharedManager];
  [v5 userSignupInitiatedOrFailed];

  v6 = *MEMORY[0x277D85DE8];
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end