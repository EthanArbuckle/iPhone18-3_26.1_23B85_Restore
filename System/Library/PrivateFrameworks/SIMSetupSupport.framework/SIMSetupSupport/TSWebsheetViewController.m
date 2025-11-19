@interface TSWebsheetViewController
- (BOOL)_currentLanguageIsRTL;
- (BOOL)_isHexadecimalString:(id)a3;
- (BOOL)_shouldIgnoreWebviewError:(id)a3;
- (TSEntitlementJSHandlerDelegate)callbackDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (TSWebsheetViewController)initWithURL:(id)a3 postdata:(id)a4 carrierName:(id)a5;
- (id)_processPool;
- (id)_webViewConfigurationWithProcessPool:(id)a3;
- (id)initForRemotePlan:(BOOL)a3 carrierName:(id)a4 skipUIDismissal:(BOOL)a5 showCarrierWarning:(BOOL)a6;
- (void)_cancelButtonTapped;
- (void)_dismissDueToLoadFailure;
- (void)_doneButtonTapped;
- (void)_handlePlanPurchaseWithMessageBody:(id)a3;
- (void)_handleTransferWithMessageBody:(id)a3;
- (void)_showCancelButton:(BOOL)a3;
- (void)_showFailureAlert;
- (void)_showVerifyingIndicator:(BOOL)a3;
- (void)_transferESimInstallationStarted;
- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4;
- (void)loadRequest:(id)a3 completion:(id)a4;
- (void)loadView;
- (void)prepare:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation TSWebsheetViewController

- (id)initForRemotePlan:(BOOL)a3 carrierName:(id)a4 skipUIDismissal:(BOOL)a5 showCarrierWarning:(BOOL)a6
{
  v6 = a6;
  v11 = a4;
  v30.receiver = self;
  v30.super_class = TSWebsheetViewController;
  v12 = [(TSWebsheetViewController *)&v30 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CE3850]);
    v14 = [(TSWebsheetViewController *)v12 _processPool];
    v15 = [(TSWebsheetViewController *)v12 _webViewConfigurationWithProcessPool:v14];
    v16 = *MEMORY[0x277CBF3A0];
    v17 = *(MEMORY[0x277CBF3A0] + 8);
    v18 = *(MEMORY[0x277CBF3A0] + 16);
    v19 = *(MEMORY[0x277CBF3A0] + 24);
    v20 = [v13 initWithFrame:v15 configuration:{*MEMORY[0x277CBF3A0], v17, v18, v19}];
    webView = v12->_webView;
    v12->_webView = v20;

    [(WKWebView *)v12->_webView setNavigationDelegate:v12];
    [(WKWebView *)v12->_webView setUIDelegate:v12];
    [(WKWebView *)v12->_webView _setInputDelegate:v12];
    [(WKWebView *)v12->_webView setAutoresizingMask:18];
    v22 = [(WKWebView *)v12->_webView scrollView];
    [v22 setDelegate:v12];

    [(WKWebView *)v12->_webView setAutoresizesSubviews:1];
    if (!a3)
    {
      if (v6 && [v11 length])
      {
        v23 = [[TSCellularSetupLoadingView alloc] initWithCarrierName:v11];
      }

      else
      {
        v23 = [[TSCellularSetupLoadingView alloc] initWithFrame:v16, v17, v18, v19];
      }

      loadingView = v12->_loadingView;
      v12->_loadingView = v23;

      [(WKWebView *)v12->_webView addSubview:v12->_loadingView];
    }

    v25 = [objc_alloc(MEMORY[0x277CDB7C8]) initWithWebView:v12->_webView delegate:v12];
    autoFillController = v12->_autoFillController;
    v12->_autoFillController = v25;

    [(TSWebsheetViewController *)v12 setModalInPresentation:1];
    v27 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v12 action:sel__cancelButtonTapped];
    cancelButton = v12->_cancelButton;
    v12->_cancelButton = v27;

    v12->_dismissCause = 2;
    v12->_didReceivePurchaseCallback = 0;
    v12->_didViewAppear = 0;
    v12->_isRemotePlan = a3;
    objc_storeStrong(&v12->_currentTitle, a4);
    v12->_skipUIDismissal = a5;
  }

  return v12;
}

- (TSWebsheetViewController)initWithURL:(id)a3 postdata:(id)a4 carrierName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [(TSWebsheetViewController *)self initForRemotePlan:0 carrierName:a5 skipUIDismissal:0 showCarrierWarning:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 132, a3);
    objc_storeStrong(&v12->_postdata, a4);
  }

  return v12;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = TSWebsheetViewController;
  [(TSWebsheetViewController *)&v3 loadView];
  [(TSWebsheetViewController *)self setView:self->_webView];
  if (!self->_isRemotePlan)
  {
    [(WKWebView *)self->_webView bringSubviewToFront:self->_loadingView];
  }
}

- (void)loadRequest:(id)a3 completion:(id)a4
{
  v9 = a3;
  v6 = MEMORY[0x2667315D0](a4);
  requestLoadedCompletion = self->_requestLoadedCompletion;
  self->_requestLoadedCompletion = v6;

  if (v9)
  {
    v8 = [(WKWebView *)self->_webView loadRequest:v9];
  }

  else
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (BOOL)_shouldIgnoreWebviewError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  if ([v3 _web_errorIsInDomain:*MEMORY[0x277D7B820]] && v4 == 102)
  {
    v5 = 1;
  }

  else if ([v3 _web_errorIsInDomain:*MEMORY[0x277CCA738]])
  {
    v5 = v4 == -999 || v4 == -1012;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailProvisionalNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:v6])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_isRemotePlan)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v9 = viewController;
      if (([(UIViewController *)v9 isProcessCanceled]& 1) != 0 || self->_dismissCause == 1)
      {
        v10 = _TSLogDomain();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[TSWebsheetViewController webView:didFinishNavigation:]";
          _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, "Process Got Cancel or Come Back with error in Loading Page @%s", &v16, 0xCu);
        }
      }

      else
      {
        v11 = _TSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[TSWebsheetViewController webView:didFinishNavigation:]";
          _os_log_impl(&dword_262AA8000, v11, OS_LOG_TYPE_DEFAULT, "Start Load the view @%s", &v16, 0xCu);
        }

        v10 = [(UIViewController *)self->_viewController navigationController];
        [v10 pushViewController:self animated:1];
      }

      v12 = self->_viewController;
      self->_viewController = 0;
    }
  }

  else
  {
    [(TSCellularSetupLoadingView *)self->_loadingView removeFromSuperview];
  }

  requestLoadedCompletion = self->_requestLoadedCompletion;
  if (requestLoadedCompletion)
  {
    requestLoadedCompletion[2](requestLoadedCompletion, 1);
    v14 = self->_requestLoadedCompletion;
    self->_requestLoadedCompletion = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v6 = a5;
  v7 = MEMORY[0x277D75128];
  v8 = a4;
  v9 = [v7 sharedApplication];
  v10 = [v8 request];

  v11 = [v10 URL];

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TSWebsheetViewController webView:decidePolicyForNavigationAction:decisionHandler:];
  }

  v13 = [v11 scheme];
  v14 = [v13 isEqualToString:@"tel"];

  if (v14 && [v9 canOpenURL:v11])
  {
    [v9 openURL:v11 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_17];
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v6[2](v6, v15);
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v6 = a5;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:v6])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)_webView:(id)a3 renderingProgressDidChange:(unint64_t)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (self->_isRemotePlan)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v8 = viewController;
      if ([(UIViewController *)v8 isProcessCanceled])
      {
        v9 = _TSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = "[TSWebsheetViewController _webView:renderingProgressDidChange:]";
          _os_log_impl(&dword_262AA8000, v9, OS_LOG_TYPE_DEFAULT, "Cancel Request set PurchaseFlow to NO then return @%s", &v12, 0xCu);
        }

        v10 = self->_viewController;
        self->_viewController = 0;

        goto LABEL_10;
      }
    }
  }

  if (v4)
  {
    self->_didFirstLayout = 1;
    [(_SFFormAutoFillController *)self->_autoFillController prefillFormsSoonIfNeeded];
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_transferESimInstallationStarted
{
  if (!+[TSUtilities isPad])
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 postNotificationName:@"transfer.websheet.install.started" object:0 userInfo:0];
  }

  [(TSWebsheetViewController *)self setDismissCause:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 name];
    v8 = [v5 body];
    v38 = 138412802;
    v39 = v7;
    v40 = 2112;
    v41 = v8;
    v42 = 2080;
    v43 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "js callback: %@ - %@ @%s", &v38, 0x20u);
  }

  v9 = [v5 name];
  if (![v9 isEqualToString:@"dataPlanAccountUpdatedWithIccid"])
  {
    v10 = [v5 name];
    v11 = [v10 isEqualToString:@"dataPlanAccountUpdatedWithInfo"];

    if (v11)
    {
      goto LABEL_6;
    }

    v14 = [v5 name];
    v15 = [v14 isEqualToString:@"dataPlanTransferAccountUpdatedWithInfo"];

    if (v15)
    {
      v12 = [v5 body];
      [(TSWebsheetViewController *)self _handleTransferWithMessageBody:v12];
      goto LABEL_7;
    }

    v16 = [v5 name];
    v17 = [v16 isEqualToString:@"showCancelButtonSelected"];

    if (v17)
    {
      WeakRetained = _TSLogDomain();
      if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
      {
        v38 = 136315138;
        v39 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
        v19 = "No longer supported @%s";
LABEL_17:
        _os_log_impl(&dword_262AA8000, WeakRetained, OS_LOG_TYPE_DEFAULT, v19, &v38, 0xCu);
      }
    }

    else
    {
      v20 = [v5 name];
      v21 = [v20 isEqualToString:@"hideCancelButtonSelected"];

      if (v21)
      {
        WeakRetained = _TSLogDomain();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315138;
          v39 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
          v19 = "No longer supported @%s";
          goto LABEL_17;
        }
      }

      else
      {
        v22 = [v5 name];
        v23 = [v22 isEqualToString:@"doneSelected"];

        if (v23)
        {
          [(TSWebsheetViewController *)self _doneButtonTapped];
          goto LABEL_8;
        }

        v24 = [v5 name];
        v25 = [v24 isEqualToString:@"dataPlanAccountUpdated"];

        if (!v25)
        {
          v26 = [v5 name];
          v27 = [v26 isEqualToString:@"showVerifyingIndicator"];

          if (v27)
          {
            v28 = self;
            v29 = 1;
          }

          else
          {
            v30 = [v5 name];
            v31 = [v30 isEqualToString:@"hideVerifyingIndicator"];

            if (!v31)
            {
              v32 = [v5 name];
              v33 = [v32 isEqualToString:@"dismissKeyboard"];

              if (v33)
              {
                WeakRetained = [(TSWebsheetViewController *)self navigationController];
                [WeakRetained _endPinningInputViews];
              }

              else
              {
                v34 = [v5 name];
                v35 = [v34 isEqualToString:@"dataPlanAccountCancelled"];

                if (v35)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
                  [WeakRetained accountCancelled];
                }

                else
                {
                  v36 = [v5 name];
                  v37 = [v36 isEqualToString:@"dataPlanPendingRelease"];

                  if (!v37)
                  {
                    goto LABEL_8;
                  }

                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
                  [WeakRetained accountPendingRelease];
                }
              }

              goto LABEL_18;
            }

            v28 = self;
            v29 = 0;
          }

          [(TSWebsheetViewController *)v28 _showVerifyingIndicator:v29];
          goto LABEL_8;
        }

        WeakRetained = _TSLogDomain();
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 136315138;
          v39 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
          v19 = "No longer handled @%s";
          goto LABEL_17;
        }
      }
    }

LABEL_18:

    goto LABEL_8;
  }

LABEL_6:
  v12 = [v5 body];
  [(TSWebsheetViewController *)self _handlePlanPurchaseWithMessageBody:v12];
LABEL_7:

  [(TSWebsheetViewController *)self _transferESimInstallationStarted];
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(id)a3
{
  (*(a3 + 2))(a3, 1);
  if ([(NSString *)self->_url length])
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:self->_url];
    v5 = [TSURLRequestFactory requestWithType:2 URL:v4 postdata:self->_postdata];

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__TSWebsheetViewController_prepare___block_invoke;
    block[3] = &unk_279B44490;
    block[4] = self;
    v8 = v5;
    v6 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&location);
  }
}

- (id)_processPool
{
  v2 = objc_alloc_init(MEMORY[0x277CE3890]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 builtInPlugInsURL];
  v5 = [v4 URLByAppendingPathComponent:@"SafariServices.wkbundle"];
  [v2 setInjectedBundleURL:v5];

  v6 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v2];

  return v6;
}

- (id)_webViewConfigurationWithProcessPool:(id)a3
{
  v4 = MEMORY[0x277CE38C8];
  v5 = a3;
  v6 = [[v4 alloc] initNonPersistentConfiguration];
  [v6 setSuppressesConnectionTerminationOnSystemChange:1];
  [v6 setSourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
  v7 = [objc_alloc(MEMORY[0x277CE3868]) _initWithConfiguration:v6];
  v8 = [v7 httpCookieStore];
  [v8 _setCookieAcceptPolicy:2 completionHandler:&__block_literal_global_104];

  v9 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v9 setAllowsInlineMediaPlayback:1];
  [v9 setDataDetectorTypes:0];
  [v9 setProcessPool:v5];

  [v9 setWebsiteDataStore:v7];
  if (+[TSUtilities isPad])
  {
    v10 = [v9 defaultWebpagePreferences];
    [v10 setPreferredContentMode:1];

    [v9 _setApplePayEnabled:1];
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 pathForResource:@"MessageCallbackHandler" ofType:@"js"];

  v19 = 0;
  v13 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v12 encoding:4 error:&v19];
  v14 = v19;
  if (v14)
  {
    v15 = _TSLogDomain();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [TSWebsheetViewController _webViewConfigurationWithProcessPool:];
    }
  }

  if ([v13 length])
  {
    v16 = objc_alloc_init(MEMORY[0x277CE3830]);
    if (v13)
    {
      v17 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v13 injectionTime:0 forMainFrameOnly:1];
      [v16 addUserScript:v17];
    }

    [v16 addScriptMessageHandler:self name:@"dataPlanAccountUpdatedWithIccid"];
    [v16 addScriptMessageHandler:self name:@"showCancelButtonSelected"];
    [v16 addScriptMessageHandler:self name:@"hideCancelButtonSelected"];
    [v16 addScriptMessageHandler:self name:@"dataPlanAccountUpdated"];
    [v16 addScriptMessageHandler:self name:@"doneSelected"];
    [v16 addScriptMessageHandler:self name:@"showVerifyingIndicator"];
    [v16 addScriptMessageHandler:self name:@"hideVerifyingIndicator"];
    [v16 addScriptMessageHandler:self name:@"dismissKeyboard"];
    [v16 addScriptMessageHandler:self name:@"dataPlanAccountUpdatedWithInfo"];
    [v16 addScriptMessageHandler:self name:@"dataPlanTransferAccountUpdatedWithInfo"];
    [v16 addScriptMessageHandler:self name:@"dataPlanAccountCancelled"];
    [v16 addScriptMessageHandler:self name:@"dataPlanPendingRelease"];
    [v9 setUserContentController:v16];
    objc_storeWeak(&self->_wkUserContentController, v16);
  }

  return v9;
}

- (void)_dismissDueToLoadFailure
{
  self->_dismissCause = 1;
  requestLoadedCompletion = self->_requestLoadedCompletion;
  if (requestLoadedCompletion)
  {
    requestLoadedCompletion[2](requestLoadedCompletion, 0);
    v4 = self->_requestLoadedCompletion;
    self->_requestLoadedCompletion = 0;
  }

  else
  {

    [(TSWebsheetViewController *)self _showFailureAlert];
  }
}

- (void)_showFailureAlert
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"Connection Failed" value:&stru_28753DF48 table:@"Localizable"];

  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"The connection to the server was lost.  Please try again later." value:&stru_28753DF48 table:@"Localizable"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v8 = MEMORY[0x277D750F8];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"ERROR_OK" value:&stru_28753DF48 table:@"Localizable"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__TSWebsheetViewController__showFailureAlert__block_invoke;
  v22[3] = &unk_279B44550;
  objc_copyWeak(&v23, &location);
  v11 = [v8 actionWithTitle:v10 style:0 handler:v22];
  [v7 addObject:v11];

  v12 = [MEMORY[0x277D75110] alertControllerWithTitle:v4 message:v6 preferredStyle:1];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
  if (v14)
  {
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [v12 addAction:{*(*(&v18 + 1) + 8 * v16++), v18}];
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v18 objects:v25 count:16];
    }

    while (v14);
  }

  [(TSWebsheetViewController *)self presentViewController:v12 animated:1 completion:0];
  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];
}

void __45__TSWebsheetViewController__showFailureAlert__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 viewControllerDidComplete:v3];
}

- (void)_doneButtonTapped
{
  if (self->_dismissCause == 2)
  {
    self->_dismissCause = 4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  if (!self->_skipUIDismissal)
  {

    [(TSWebsheetViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (void)_cancelButtonTapped
{
  self->_dismissCause = 4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained viewControllerDidComplete:self];

  if (!self->_skipUIDismissal)
  {

    [(TSWebsheetViewController *)self dismissViewControllerWithTransition:7 completion:0];
  }
}

- (void)_showCancelButton:(BOOL)a3
{
  v3 = a3;
  v5 = +[TSUtilities isPad];
  v6 = [(TSWebsheetViewController *)self navigationItem];
  v9 = v6;
  if (v5)
  {
    if (v3)
    {
      cancelButton = self->_cancelButton;
    }

    else
    {
      cancelButton = 0;
    }

    [v6 setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    if (v3)
    {
      v8 = self->_cancelButton;
    }

    else
    {
      v8 = 0;
    }

    [v6 setLeftBarButtonItem:v8 animated:1];
  }
}

- (void)_showVerifyingIndicator:(BOOL)a3
{
  if (a3)
  {
    v4 = [(TSWebsheetViewController *)self title];
    currentTitle = self->_currentTitle;
    self->_currentTitle = v4;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Verifying" value:&stru_28753DF48 table:@"Localizable"];
    [(TSWebsheetViewController *)self setTitle:v7];

    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    v8 = [(TSWebsheetViewController *)self navigationController];
    v9 = [v8 navigationItem];
    v10 = [objc_opt_class() description];
    [v11 startSpinnerInNavigationItem:v9 withIdentifier:v10];
  }

  else
  {
    [(TSWebsheetViewController *)self setTitle:self->_currentTitle];
    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    v8 = [objc_opt_class() description];
    [v11 stopSpinnerForIdentifier:v8];
  }
}

- (void)_handlePlanPurchaseWithMessageBody:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_didReceivePurchaseCallback)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 136315138;
      v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
      v7 = "Received 2nd purchase callback - skipping @%s";
LABEL_10:
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, v7, &v37, 0xCu);
      goto LABEL_56;
    }

    goto LABEL_56;
  }

  self->_didReceivePurchaseCallback = 1;
  if (!v4)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 136315138;
      v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
      v7 = "Invalid message @%s";
      goto LABEL_10;
    }

LABEL_56:

    goto LABEL_57;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if ([(TSWebsheetViewController *)self _isHexadecimalString:v6])
    {
      WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
      [WeakRetained didPurchasePlanSuccessfullyWithEid:0 imei:0 meid:0 iccid:v6 alternateSDMP:0 state:0];
LABEL_55:

      goto LABEL_56;
    }

    WeakRetained = _TSLogDomain();
    if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v37 = 138412546;
    v38 = v6;
    v39 = 2080;
    v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
    v11 = "Invalid ICCID: %@ @%s";
    v12 = WeakRetained;
    v13 = 22;
LABEL_18:
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, v11, &v37, v13);
    goto LABEL_55;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v5;
    v6 = v9;
    if (self->_isRemotePlan)
    {
      WeakRetained = [v9 objectForKeyedSubscript:@"state"];
      if (WeakRetained && [(TSWebsheetViewController *)self _isProfilePendingRelease:WeakRetained])
      {
        v10 = objc_loadWeakRetained(&self->_callbackDelegate);
        [v10 accountPendingRelease];
LABEL_49:

        goto LABEL_55;
      }
    }

    else
    {
      WeakRetained = 0;
    }

    v14 = WeakRetained;
    WeakRetained = [v6 objectForKeyedSubscript:@"eid"];

    v15 = WeakRetained != 0;
    if (WeakRetained && (!isValidNSString(WeakRetained) || [WeakRetained length]!= 32 || ![(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained]))
    {
      v10 = _TSLogDomain();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_49;
      }

      v37 = 138412546;
      v38 = WeakRetained;
      v39 = 2080;
      v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
      v24 = "Invalid EID: %@ @%s";
      goto LABEL_48;
    }

    v16 = [v6 objectForKeyedSubscript:@"imei"];

    if (v16)
    {
      if (!isValidNSString(v16) || [v16 length] != 15 && objc_msgSend(v16, "length") != 16 || !-[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
      {
        v25 = _TSLogDomain();
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_54;
        }

        v37 = 138412546;
        v38 = v16;
        v39 = 2080;
        v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v26 = "Invalid IMEI: %@ @%s";
        goto LABEL_52;
      }

      v15 = 1;
    }

    WeakRetained = [v6 objectForKeyedSubscript:@"meid"];

    if (WeakRetained)
    {
      if (!isValidNSString(WeakRetained) || [WeakRetained length]!= 14 && [WeakRetained length]!= 15 || ![(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained])
      {
        v10 = _TSLogDomain();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v37 = 138412546;
        v38 = WeakRetained;
        v39 = 2080;
        v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v24 = "Invalid MEID: %@ @%s";
        goto LABEL_48;
      }

      v15 = 1;
    }

    v16 = [v6 objectForKeyedSubscript:@"iccid"];

    if (!v16)
    {
      v30 = _TSLogDomain();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 136315138;
        v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        _os_log_impl(&dword_262AA8000, v30, OS_LOG_TYPE_DEFAULT, "Missing ICCID @%s", &v37, 0xCu);
      }

      v31 = [v6 objectForKeyedSubscript:@"mcc"];
      if (v31)
      {
        WeakRetained = v31;
        if (!isValidNSString(v31) || [WeakRetained length]!= 3 || ![(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained])
        {
          v10 = _TSLogDomain();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_49;
          }

          v37 = 138412546;
          v38 = WeakRetained;
          v39 = 2080;
          v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
          v24 = "Invalid mcc: %@ @%s";
          goto LABEL_48;
        }

        v16 = [v6 objectForKeyedSubscript:@"mnc"];

        if (v16)
        {
          if (isValidNSString(v16) && ([v16 length] == 2 || objc_msgSend(v16, "length") == 3) && -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
          {
            WeakRetained = [v6 objectForKeyedSubscript:@"gid1"];

            if (WeakRetained && (!isValidNSString(WeakRetained) || [WeakRetained length]!= 3 || ![(TSWebsheetViewController *)self _isHexadecimalString:WeakRetained]))
            {
              v10 = _TSLogDomain();
              if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_49;
              }

              v37 = 138412546;
              v38 = WeakRetained;
              v39 = 2080;
              v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
              v24 = "Invalid gid1: %@ @%s";
              goto LABEL_48;
            }

            v16 = [v6 objectForKeyedSubscript:@"gid2"];

            if (!v16 || isValidNSString(v16) && [v16 length] == 3 && -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
            {
              v25 = objc_loadWeakRetained(&self->_callbackDelegate);
              v32 = [v6 objectForKeyedSubscript:@"mcc"];
              v33 = [v6 objectForKeyedSubscript:@"mnc"];
              v34 = [v6 objectForKeyedSubscript:@"gid1"];
              v35 = [v6 objectForKeyedSubscript:@"gid2"];
              v36 = [v6 objectForKeyedSubscript:@"state"];
              [v25 didPurchasePlanSuccessfullyWithCarrier:v32 mnc:v33 gid1:v34 gid2:v35 state:v36];

              goto LABEL_54;
            }

            v25 = _TSLogDomain();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_54;
            }

            v37 = 138412546;
            v38 = v16;
            v39 = 2080;
            v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v26 = "Invalid gid2: %@ @%s";
          }

          else
          {
            v25 = _TSLogDomain();
            if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_54;
            }

            v37 = 138412546;
            v38 = v16;
            v39 = 2080;
            v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
            v26 = "Invalid mnc: %@ @%s";
          }

          goto LABEL_52;
        }

        WeakRetained = _TSLogDomain();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        v37 = 136315138;
        v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v11 = "Missing mnc @%s";
      }

      else
      {
        WeakRetained = _TSLogDomain();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_55;
        }

        v37 = 136315138;
        v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v11 = "Missing mcc @%s";
      }

      v12 = WeakRetained;
      v13 = 12;
      goto LABEL_18;
    }

    if (isValidNSString(v16) && ([v16 length] == 19 || objc_msgSend(v16, "length") == 20) && -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
    {
      if (v15)
      {
        WeakRetained = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];

        if (!WeakRetained || isValidNSString(WeakRetained) && ([MEMORY[0x277CBEBC0] URLWithString:WeakRetained], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
        {
          v10 = objc_loadWeakRetained(&self->_callbackDelegate);
          v18 = [v6 objectForKeyedSubscript:@"eid"];
          v19 = [v6 objectForKeyedSubscript:@"imei"];
          v20 = [v6 objectForKeyedSubscript:@"meid"];
          v21 = [v6 objectForKeyedSubscript:@"iccid"];
          v22 = [v6 objectForKeyedSubscript:@"alternateSmdpFqdn"];
          v23 = [v6 objectForKeyedSubscript:@"state"];
          [v10 didPurchasePlanSuccessfullyWithEid:v18 imei:v19 meid:v20 iccid:v21 alternateSDMP:v22 state:v23];

          goto LABEL_49;
        }

        v10 = _TSLogDomain();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        v37 = 138412546;
        v38 = WeakRetained;
        v39 = 2080;
        v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v24 = "Invalid alternateSmdpFqdn: %@ @%s";
LABEL_48:
        _os_log_impl(&dword_262AA8000, v10, OS_LOG_TYPE_DEFAULT, v24, &v37, 0x16u);
        goto LABEL_49;
      }

      v25 = _TSLogDomain();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v37 = 136315138;
        v38 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
        v26 = "Missing identifier @%s";
        v27 = v25;
        v28 = 12;
        goto LABEL_53;
      }

LABEL_54:

      WeakRetained = v16;
      goto LABEL_55;
    }

    v25 = _TSLogDomain();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_54;
    }

    v37 = 138412546;
    v38 = v16;
    v39 = 2080;
    v40 = "[TSWebsheetViewController _handlePlanPurchaseWithMessageBody:]";
    v26 = "Invalid ICCID: %@ @%s";
LABEL_52:
    v27 = v25;
    v28 = 22;
LABEL_53:
    _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, v26, &v37, v28);
    goto LABEL_54;
  }

LABEL_57:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)_handleTransferWithMessageBody:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Invalid message @%s", buf, 0xCu);
    }

LABEL_8:
    v5 = v4;
    v7 = [v5 objectForKeyedSubscript:@"eid"];
    v8 = v7;
    v9 = v7 != 0;
    if (v7 && ([v7 length] != 32 || !-[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v8)))
    {
      v12 = _TSLogDomain();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v42 = v8;
        v43 = 2080;
        v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Invalid EID: %@ @%s", buf, 0x16u);
      }

      goto LABEL_44;
    }

    v10 = [v5 objectForKeyedSubscript:@"alternateSmdpFqdn"];

    if (v10)
    {
      v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];

      if (!v11)
      {
        v12 = _TSLogDomain();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v42 = v10;
          v43 = 2080;
          v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
          _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "Invalid alternateSmdpFqdn: %@ @%s", buf, 0x16u);
        }

        goto LABEL_43;
      }
    }

    v12 = [v5 objectForKeyedSubscript:@"targetIccids"];
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if (![v12 count])
      {
        v15 = _TSLogDomain();
        if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_42;
        }

        *buf = 136315138;
        v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v22 = "Missing target ICCIDs @%s";
        goto LABEL_41;
      }

      v13 = [v12 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v15 = [v12 objectAtIndexedSubscript:0];
        v16 = [v15 objectForKeyedSubscript:@"imei"];

        if (v16)
        {
          if ([v16 length] != 15 && objc_msgSend(v16, "length") != 16 || !-[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
          {
            v24 = _TSLogDomain();
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_64;
            }

            *buf = 138412546;
            v42 = v16;
            v43 = 2080;
            v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
            v25 = "Invalid IMEI: %@ @%s";
            goto LABEL_60;
          }

          v9 = 1;
        }

        v17 = [v15 objectForKeyedSubscript:@"meid"];

        if (v17)
        {
          if ([v17 length] != 14 && objc_msgSend(v17, "length") != 15 || !-[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v17))
          {
            v24 = _TSLogDomain();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v42 = v17;
              v43 = 2080;
              v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
              v26 = "Invalid MEID: %@ @%s";
              v27 = v24;
              v28 = 22;
LABEL_56:
              _os_log_impl(&dword_262AA8000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
            }

LABEL_57:
            v16 = v17;
            goto LABEL_64;
          }

          v9 = 1;
        }

        v16 = [v15 objectForKeyedSubscript:@"iccid"];

        if (!v16)
        {
          v24 = _TSLogDomain();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
            _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, "ICCID missing @%s", buf, 0xCu);
          }

          v16 = 0;
          goto LABEL_64;
        }

        if (([v16 length] == 19 || objc_msgSend(v16, "length") == 20) && -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v16))
        {
          v17 = [v15 objectForKeyedSubscript:@"src-iccid"];

          if (v17)
          {
            if (([v17 length] == 19 || objc_msgSend(v17, "length") == 20) && -[TSWebsheetViewController _isHexadecimalString:](self, "_isHexadecimalString:", v17))
            {
LABEL_69:
              if (v9)
              {
                v16 = [v15 objectForKeyedSubscript:@"state"];

                if (!v16 || [v16 length] < 0x33)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

                  if (WeakRetained)
                  {
                    v24 = objc_loadWeakRetained(&self->_callbackDelegate);
                    v40 = [v5 objectForKeyedSubscript:@"eid"];
                    v39 = [v15 objectForKeyedSubscript:@"imei"];
                    v38 = [v15 objectForKeyedSubscript:@"meid"];
                    v30 = [v15 objectForKeyedSubscript:@"iccid"];
                    v31 = [v15 objectForKeyedSubscript:@"src-iccid"];
                    v32 = [v5 objectForKeyedSubscript:@"alternateSmdpFqdn"];
                    v33 = [v15 objectForKeyedSubscript:@"state"];
                    [v24 didTransferPlanSuccessfullyWithEid:v40 imei:v39 meid:v38 iccid:v30 srcIccid:v31 alternateSDMP:v32 state:v33];
                  }

                  else
                  {
                    v24 = +[TSCellularPlanManagerCache sharedInstance];
                    v40 = [v5 objectForKeyedSubscript:@"eid"];
                    v34 = [v15 objectForKeyedSubscript:@"iccid"];
                    v35 = [v15 objectForKeyedSubscript:@"src-iccid"];
                    v36 = [v5 objectForKeyedSubscript:@"alternateSmdpFqdn"];
                    v37 = [v15 objectForKeyedSubscript:@"state"];
                    [v24 didTransferPlanForEid:v40 iccid:v34 srcIccid:v35 smdpURL:v36 state:v37];
                  }

                  goto LABEL_64;
                }

                v24 = _TSLogDomain();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v42 = v16;
                  v43 = 2080;
                  v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                  v25 = "Invalid state: %@ @%s";
                  goto LABEL_60;
                }

LABEL_64:

                v10 = v16;
                goto LABEL_42;
              }

              v24 = _TSLogDomain();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315138;
                v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
                v26 = "No identifier found @%s";
                v27 = v24;
                v28 = 12;
                goto LABEL_56;
              }

              goto LABEL_57;
            }

            v18 = _TSLogDomain();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v42 = v17;
              v43 = 2080;
              v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
              v19 = "Invalid source ICCID: %@ @%s";
              v20 = v18;
              v21 = 22;
LABEL_67:
              _os_log_impl(&dword_262AA8000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
            }
          }

          else
          {
            v18 = _TSLogDomain();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
              v19 = "source ICCID missing @%s";
              v20 = v18;
              v21 = 12;
              goto LABEL_67;
            }
          }

          goto LABEL_69;
        }

        v24 = _TSLogDomain();
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_64;
        }

        *buf = 138412546;
        v42 = v16;
        v43 = 2080;
        v44 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v25 = "Invalid ICCID: %@ @%s";
LABEL_60:
        _os_log_impl(&dword_262AA8000, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
        goto LABEL_64;
      }

      v15 = _TSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v22 = "Invalid target device information @%s";
        goto LABEL_41;
      }
    }

    else
    {
      v15 = _TSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
        v22 = "Invalid target ICCIDs @%s";
LABEL_41:
        _os_log_impl(&dword_262AA8000, v15, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

LABEL_42:

LABEL_43:
    v8 = v10;
LABEL_44:

    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_8;
  }

  v5 = _TSLogDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
    _os_log_impl(&dword_262AA8000, v5, OS_LOG_TYPE_DEFAULT, "Invalid body type @%s", buf, 0xCu);
  }

LABEL_45:

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_currentLanguageIsRTL
{
  v2 = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([v2 count])
  {
    v3 = MEMORY[0x277CBEAF8];
    v4 = [v2 firstObject];
    v5 = [v3 characterDirectionForLanguage:v4];

    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHexadecimalString:(id)a3
{
  v3 = MEMORY[0x277CCA900];
  v4 = a3;
  v5 = [v3 characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  v6 = [v5 invertedSet];

  v7 = [v4 rangeOfCharacterFromSet:v6];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  if (!self->_didViewAppear)
  {
    v6 = v4;
    [v4 contentOffset];
    v4 = v6;
    if (v5 > 0.0)
    {
      [v6 setContentOffset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      v4 = v6;
    }
  }
}

- (TSSIMSetupFlowDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TSEntitlementJSHandlerDelegate)callbackDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);

  return WeakRetained;
}

- (void)webView:didFailProvisionalNavigation:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Error: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)webView:decidePolicyForNavigationAction:decisionHandler:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = "[TSWebsheetViewController webView:decidePolicyForNavigationAction:decisionHandler:]";
  _os_log_debug_impl(&dword_262AA8000, v0, OS_LOG_TYPE_DEBUG, "[Db] %@ @%s", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)webView:didFailNavigation:withError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]Error: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_webViewConfigurationWithProcessPool:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_262AA8000, v0, v1, "[E]error loading js file: %@ @%s", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end