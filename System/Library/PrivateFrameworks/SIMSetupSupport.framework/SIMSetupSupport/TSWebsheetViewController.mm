@interface TSWebsheetViewController
- (BOOL)_currentLanguageIsRTL;
- (BOOL)_isHexadecimalString:(id)string;
- (BOOL)_shouldIgnoreWebviewError:(id)error;
- (TSEntitlementJSHandlerDelegate)callbackDelegate;
- (TSSIMSetupFlowDelegate)delegate;
- (TSWebsheetViewController)initWithURL:(id)l postdata:(id)postdata carrierName:(id)name;
- (id)_processPool;
- (id)_webViewConfigurationWithProcessPool:(id)pool;
- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name skipUIDismissal:(BOOL)dismissal showCarrierWarning:(BOOL)warning;
- (void)_cancelButtonTapped;
- (void)_dismissDueToLoadFailure;
- (void)_doneButtonTapped;
- (void)_handlePlanPurchaseWithMessageBody:(id)body;
- (void)_handleTransferWithMessageBody:(id)body;
- (void)_showCancelButton:(BOOL)button;
- (void)_showFailureAlert;
- (void)_showVerifyingIndicator:(BOOL)indicator;
- (void)_transferESimInstallationStarted;
- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change;
- (void)loadRequest:(id)request completion:(id)completion;
- (void)loadView;
- (void)prepare:(id)prepare;
- (void)scrollViewDidScroll:(id)scroll;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
@end

@implementation TSWebsheetViewController

- (id)initForRemotePlan:(BOOL)plan carrierName:(id)name skipUIDismissal:(BOOL)dismissal showCarrierWarning:(BOOL)warning
{
  warningCopy = warning;
  nameCopy = name;
  v30.receiver = self;
  v30.super_class = TSWebsheetViewController;
  v12 = [(TSWebsheetViewController *)&v30 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277CE3850]);
    _processPool = [(TSWebsheetViewController *)v12 _processPool];
    v15 = [(TSWebsheetViewController *)v12 _webViewConfigurationWithProcessPool:_processPool];
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
    scrollView = [(WKWebView *)v12->_webView scrollView];
    [scrollView setDelegate:v12];

    [(WKWebView *)v12->_webView setAutoresizesSubviews:1];
    if (!plan)
    {
      if (warningCopy && [nameCopy length])
      {
        v23 = [[TSCellularSetupLoadingView alloc] initWithCarrierName:nameCopy];
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
    v12->_isRemotePlan = plan;
    objc_storeStrong(&v12->_currentTitle, name);
    v12->_skipUIDismissal = dismissal;
  }

  return v12;
}

- (TSWebsheetViewController)initWithURL:(id)l postdata:(id)postdata carrierName:(id)name
{
  lCopy = l;
  postdataCopy = postdata;
  v11 = [(TSWebsheetViewController *)self initForRemotePlan:0 carrierName:name skipUIDismissal:0 showCarrierWarning:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 132, l);
    objc_storeStrong(&v12->_postdata, postdata);
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

- (void)loadRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  v6 = MEMORY[0x2667315D0](completion);
  requestLoadedCompletion = self->_requestLoadedCompletion;
  self->_requestLoadedCompletion = v6;

  if (requestCopy)
  {
    v8 = [(WKWebView *)self->_webView loadRequest:requestCopy];
  }

  else
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (BOOL)_shouldIgnoreWebviewError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  if ([errorCopy _web_errorIsInDomain:*MEMORY[0x277D7B820]] && code == 102)
  {
    v5 = 1;
  }

  else if ([errorCopy _web_errorIsInDomain:*MEMORY[0x277CCA738]])
  {
    v5 = code == -999 || code == -1012;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailProvisionalNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:errorCopy])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v18 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  navigationCopy = navigation;
  if (self->_isRemotePlan)
  {
    viewController = self->_viewController;
    if (viewController)
    {
      v9 = viewController;
      if (([(UIViewController *)v9 isProcessCanceled]& 1) != 0 || self->_dismissCause == 1)
      {
        navigationController = _TSLogDomain();
        if (os_log_type_enabled(navigationController, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136315138;
          v17 = "[TSWebsheetViewController webView:didFinishNavigation:]";
          _os_log_impl(&dword_262AA8000, navigationController, OS_LOG_TYPE_DEFAULT, "Process Got Cancel or Come Back with error in Loading Page @%s", &v16, 0xCu);
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

        navigationController = [(UIViewController *)self->_viewController navigationController];
        [navigationController pushViewController:self animated:1];
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

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x277D75128];
  actionCopy = action;
  sharedApplication = [v7 sharedApplication];
  request = [actionCopy request];

  v11 = [request URL];

  v12 = _TSLogDomain();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [TSWebsheetViewController webView:decidePolicyForNavigationAction:decisionHandler:];
  }

  scheme = [v11 scheme];
  v14 = [scheme isEqualToString:@"tel"];

  if (v14 && [sharedApplication canOpenURL:v11])
  {
    [sharedApplication openURL:v11 options:MEMORY[0x277CBEC10] completionHandler:&__block_literal_global_17];
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  handlerCopy[2](handlerCopy, v15);
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  errorCopy = error;
  v7 = _TSLogDomain();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [TSWebsheetViewController webView:didFailNavigation:withError:];
  }

  if (!self->_isRemotePlan || ![(TSWebsheetViewController *)self _shouldIgnoreWebviewError:errorCopy])
  {
    [(TSWebsheetViewController *)self _dismissDueToLoadFailure];
  }
}

- (void)_webView:(id)view renderingProgressDidChange:(unint64_t)change
{
  changeCopy = change;
  v14 = *MEMORY[0x277D85DE8];
  viewCopy = view;
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

  if (changeCopy)
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"transfer.websheet.install.started" object:0 userInfo:0];
  }

  [(TSWebsheetViewController *)self setDismissCause:3];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained startTimer:1];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v44 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = _TSLogDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    name = [messageCopy name];
    body = [messageCopy body];
    v38 = 138412802;
    v39 = name;
    v40 = 2112;
    v41 = body;
    v42 = 2080;
    v43 = "[TSWebsheetViewController userContentController:didReceiveScriptMessage:]";
    _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "js callback: %@ - %@ @%s", &v38, 0x20u);
  }

  name2 = [messageCopy name];
  if (![name2 isEqualToString:@"dataPlanAccountUpdatedWithIccid"])
  {
    name3 = [messageCopy name];
    v11 = [name3 isEqualToString:@"dataPlanAccountUpdatedWithInfo"];

    if (v11)
    {
      goto LABEL_6;
    }

    name4 = [messageCopy name];
    v15 = [name4 isEqualToString:@"dataPlanTransferAccountUpdatedWithInfo"];

    if (v15)
    {
      body2 = [messageCopy body];
      [(TSWebsheetViewController *)self _handleTransferWithMessageBody:body2];
      goto LABEL_7;
    }

    name5 = [messageCopy name];
    v17 = [name5 isEqualToString:@"showCancelButtonSelected"];

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
      name6 = [messageCopy name];
      v21 = [name6 isEqualToString:@"hideCancelButtonSelected"];

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
        name7 = [messageCopy name];
        v23 = [name7 isEqualToString:@"doneSelected"];

        if (v23)
        {
          [(TSWebsheetViewController *)self _doneButtonTapped];
          goto LABEL_8;
        }

        name8 = [messageCopy name];
        v25 = [name8 isEqualToString:@"dataPlanAccountUpdated"];

        if (!v25)
        {
          name9 = [messageCopy name];
          v27 = [name9 isEqualToString:@"showVerifyingIndicator"];

          if (v27)
          {
            selfCopy2 = self;
            v29 = 1;
          }

          else
          {
            name10 = [messageCopy name];
            v31 = [name10 isEqualToString:@"hideVerifyingIndicator"];

            if (!v31)
            {
              name11 = [messageCopy name];
              v33 = [name11 isEqualToString:@"dismissKeyboard"];

              if (v33)
              {
                WeakRetained = [(TSWebsheetViewController *)self navigationController];
                [WeakRetained _endPinningInputViews];
              }

              else
              {
                name12 = [messageCopy name];
                v35 = [name12 isEqualToString:@"dataPlanAccountCancelled"];

                if (v35)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_callbackDelegate);
                  [WeakRetained accountCancelled];
                }

                else
                {
                  name13 = [messageCopy name];
                  v37 = [name13 isEqualToString:@"dataPlanPendingRelease"];

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

            selfCopy2 = self;
            v29 = 0;
          }

          [(TSWebsheetViewController *)selfCopy2 _showVerifyingIndicator:v29];
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
  body2 = [messageCopy body];
  [(TSWebsheetViewController *)self _handlePlanPurchaseWithMessageBody:body2];
LABEL_7:

  [(TSWebsheetViewController *)self _transferESimInstallationStarted];
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)prepare:(id)prepare
{
  (*(prepare + 2))(prepare, 1);
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
  builtInPlugInsURL = [v3 builtInPlugInsURL];
  v5 = [builtInPlugInsURL URLByAppendingPathComponent:@"SafariServices.wkbundle"];
  [v2 setInjectedBundleURL:v5];

  v6 = [objc_alloc(MEMORY[0x277CE3820]) _initWithConfiguration:v2];

  return v6;
}

- (id)_webViewConfigurationWithProcessPool:(id)pool
{
  v4 = MEMORY[0x277CE38C8];
  poolCopy = pool;
  initNonPersistentConfiguration = [[v4 alloc] initNonPersistentConfiguration];
  [initNonPersistentConfiguration setSuppressesConnectionTerminationOnSystemChange:1];
  [initNonPersistentConfiguration setSourceApplicationSecondaryIdentifier:@"com.apple.CommCenter.CellularPlanProvisioning"];
  v7 = [objc_alloc(MEMORY[0x277CE3868]) _initWithConfiguration:initNonPersistentConfiguration];
  httpCookieStore = [v7 httpCookieStore];
  [httpCookieStore _setCookieAcceptPolicy:2 completionHandler:&__block_literal_global_104];

  v9 = objc_alloc_init(MEMORY[0x277CE3858]);
  [v9 setAllowsInlineMediaPlayback:1];
  [v9 setDataDetectorTypes:0];
  [v9 setProcessPool:poolCopy];

  [v9 setWebsiteDataStore:v7];
  if (+[TSUtilities isPad])
  {
    defaultWebpagePreferences = [v9 defaultWebpagePreferences];
    [defaultWebpagePreferences setPreferredContentMode:1];

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

- (void)_showCancelButton:(BOOL)button
{
  buttonCopy = button;
  v5 = +[TSUtilities isPad];
  navigationItem = [(TSWebsheetViewController *)self navigationItem];
  v9 = navigationItem;
  if (v5)
  {
    if (buttonCopy)
    {
      cancelButton = self->_cancelButton;
    }

    else
    {
      cancelButton = 0;
    }

    [navigationItem setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    if (buttonCopy)
    {
      v8 = self->_cancelButton;
    }

    else
    {
      v8 = 0;
    }

    [navigationItem setLeftBarButtonItem:v8 animated:1];
  }
}

- (void)_showVerifyingIndicator:(BOOL)indicator
{
  if (indicator)
  {
    title = [(TSWebsheetViewController *)self title];
    currentTitle = self->_currentTitle;
    self->_currentTitle = title;

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Verifying" value:&stru_28753DF48 table:@"Localizable"];
    [(TSWebsheetViewController *)self setTitle:v7];

    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    navigationController = [(TSWebsheetViewController *)self navigationController];
    navigationItem = [navigationController navigationItem];
    v10 = [objc_opt_class() description];
    [v11 startSpinnerInNavigationItem:navigationItem withIdentifier:v10];
  }

  else
  {
    [(TSWebsheetViewController *)self setTitle:self->_currentTitle];
    v11 = +[TSNavigationBarSpinnerManager sharedManager];
    navigationController = [objc_opt_class() description];
    [v11 stopSpinnerForIdentifier:navigationController];
  }
}

- (void)_handlePlanPurchaseWithMessageBody:(id)body
{
  v41 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = bodyCopy;
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
  if (!bodyCopy)
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

- (void)_handleTransferWithMessageBody:(id)body
{
  v45 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  if (!bodyCopy)
  {
    v6 = _TSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v42 = "[TSWebsheetViewController _handleTransferWithMessageBody:]";
      _os_log_impl(&dword_262AA8000, v6, OS_LOG_TYPE_DEFAULT, "Invalid message @%s", buf, 0xCu);
    }

LABEL_8:
    v5 = bodyCopy;
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
  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  if ([preferredLanguages count])
  {
    v3 = MEMORY[0x277CBEAF8];
    firstObject = [preferredLanguages firstObject];
    v5 = [v3 characterDirectionForLanguage:firstObject];

    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHexadecimalString:(id)string
{
  v3 = MEMORY[0x277CCA900];
  stringCopy = string;
  v5 = [v3 characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];
  invertedSet = [v5 invertedSet];

  v7 = [stringCopy rangeOfCharacterFromSet:invertedSet];
  return v7 == 0x7FFFFFFFFFFFFFFFLL;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (!self->_didViewAppear)
  {
    v6 = scrollCopy;
    [scrollCopy contentOffset];
    scrollCopy = v6;
    if (v5 > 0.0)
    {
      [v6 setContentOffset:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
      scrollCopy = v6;
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