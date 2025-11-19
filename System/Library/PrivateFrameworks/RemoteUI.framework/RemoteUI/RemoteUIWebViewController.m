@interface RemoteUIWebViewController
- (RemoteUIWebViewControllerDelegate)delegate;
- (WKWebView)webView;
- (id)_spinnerManagerIdentifier;
- (id)navigationBar;
- (id)navigationItem;
- (id)scriptForJSBridge;
- (id)scriptForScalesPageToFit;
- (void)_dismissWithPayload:(id)a3;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)dealloc;
- (void)loadURL:(id)a3 completion:(id)a4;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation RemoteUIWebViewController

- (void)viewDidLoad
{
  v73[8] = *MEMORY[0x277D85DE8];
  v72.receiver = self;
  v72.super_class = RemoteUIWebViewController;
  [(RemoteUIWebViewController *)&v72 viewDidLoad];
  if (!self->_webView)
  {
    v3 = objc_opt_new();
    v4 = [MEMORY[0x277D75418] currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1 || self->_scalesPageToFit)
    {
      v6 = [(RemoteUIWebViewController *)self scriptForScalesPageToFit];
      [v3 addUserScript:v6];
    }

    v7 = [(RemoteUIWebViewController *)self scriptForJSBridge];
    [v3 addUserScript:v7];

    [v3 addScriptMessageHandler:self name:@"dismissWebView"];
    [v3 addScriptMessageHandler:self name:@"startActivityIndicator"];
    [v3 addScriptMessageHandler:self name:@"stopActivityIndicator"];
    [v3 addScriptMessageHandler:self name:@"log"];
    [v3 addScriptMessageHandler:self name:@"error"];
    v8 = objc_opt_new();
    v70 = v3;
    [v8 setUserContentController:v3];
    [(RemoteUIWebViewController *)self setEdgesForExtendedLayout:1];
    +[RUIPlatform assertWebkitAllowed];
    v9 = objc_alloc(MEMORY[0x277CE3850]);
    v69 = v8;
    v10 = [v9 initWithFrame:v8 configuration:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    webView = self->_webView;
    self->_webView = v10;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [(WKWebView *)self->_webView scrollView];
    [v12 setContentInsetAdjustmentBehavior:3];

    v13 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    v14 = [v13 view];
    [v14 addSubview:self->_webView];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
    [(RemoteUIWebViewController *)self addChildViewController:v15];
    v16 = [(RemoteUIWebViewController *)self view];
    v17 = [v15 view];
    [v16 addSubview:v17];

    v18 = [v15 view];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x277CCAAD0];
    v66 = [(WKWebView *)self->_webView topAnchor];
    v67 = [v13 view];
    v65 = [v67 topAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v73[0] = v64;
    v62 = [(WKWebView *)self->_webView leadingAnchor];
    v63 = [v13 view];
    v61 = [v63 leadingAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v73[1] = v60;
    v58 = [(WKWebView *)self->_webView trailingAnchor];
    v59 = [v13 view];
    v57 = [v59 trailingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v73[2] = v56;
    v54 = [(WKWebView *)self->_webView bottomAnchor];
    v68 = v13;
    v55 = [v13 view];
    v53 = [v55 bottomAnchor];
    v51 = [v54 constraintEqualToAnchor:v53];
    v73[3] = v51;
    v50 = [v15 view];
    v48 = [v50 topAnchor];
    v49 = [(RemoteUIWebViewController *)self view];
    v47 = [v49 topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v73[4] = v46;
    v45 = [v15 view];
    v43 = [v45 leadingAnchor];
    v44 = [(RemoteUIWebViewController *)self view];
    v42 = [v44 leadingAnchor];
    v41 = [v43 constraintEqualToAnchor:v42];
    v73[5] = v41;
    v40 = [v15 view];
    v38 = [v40 trailingAnchor];
    v39 = [(RemoteUIWebViewController *)self view];
    v19 = [v39 trailingAnchor];
    v20 = [v38 constraintEqualToAnchor:v19];
    v73[6] = v20;
    v21 = [v15 view];
    v22 = [v21 bottomAnchor];
    v23 = [(RemoteUIWebViewController *)self view];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintEqualToAnchor:v24];
    v73[7] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:8];
    [v52 activateConstraints:v26];

    [v15 didMoveToParentViewController:self];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __40__RemoteUIWebViewController_viewDidLoad__block_invoke;
    v71[3] = &unk_2782E7F30;
    v71[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v71];
    v27 = [(RemoteUIWebViewController *)self dismissButtonLabel];

    v28 = objc_alloc(MEMORY[0x277D751E0]);
    v29 = v28;
    if (v27)
    {
      v30 = [(RemoteUIWebViewController *)self dismissButtonLabel];
      v31 = [v29 initWithTitle:v30 style:0 target:self action:sel_donePressed_];
    }

    else
    {
      v31 = [v28 initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
    }

    v32 = [(RemoteUIWebViewController *)self dismissButtonAlignment];
    v33 = [v32 isEqualToString:@"leading"];

    v34 = [v68 navigationItem];
    v35 = v34;
    if (v33)
    {
      [v34 setLeftBarButtonItem:v31];
    }

    else
    {
      [v34 setRightBarButtonItem:v31];
    }

    style = self->_style;
    v37 = [v15 navigationBar];
    [(RUIStyle *)style applyToNavigationBar:v37];
  }
}

uint64_t __40__RemoteUIWebViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = RemoteUIPreferredContentSize();
  v3 = *(a1 + 32);

  return [v3 setPreferredContentSize:v2];
}

- (id)navigationItem
{
  v2 = [(UINavigationController *)self->_navigationController topViewController];
  v3 = [v2 navigationItem];

  return v3;
}

- (void)_startActivityIndicator
{
  v5 = +[RUINavBarSpinnerManager sharedSpinnerManager];
  v3 = [(RemoteUIWebViewController *)self navigationItem];
  v4 = [(RemoteUIWebViewController *)self _spinnerManagerIdentifier];
  [v5 startAnimatingInNavItem:v3 title:0 forIdentifier:v4 hideBackButton:0 hideLeftItems:0];
}

- (void)_stopActivityIndicator
{
  v4 = +[RUINavBarSpinnerManager sharedSpinnerManager];
  v3 = [(RemoteUIWebViewController *)self _spinnerManagerIdentifier];
  [v4 stopAnimatingForIdentifier:v3];
}

- (id)_spinnerManagerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)scriptForJSBridge
{
  v2 = [@"var remoteUIBridge = {};" mutableCopy];
  [v2 appendFormat:@"remoteUIBridge.%1$@ = function(payload) {         webkit.messageHandlers.%1$@.postMessage(payload);     };", @"dismissWebView"];
  [v2 appendFormat:@"remoteUIBridge.%1$@ = function() {         webkit.messageHandlers.%1$@.postMessage(null);     };", @"startActivityIndicator"];
  [v2 appendFormat:@"remoteUIBridge.%1$@ = function() {         webkit.messageHandlers.%1$@.postMessage(null);     };", @"stopActivityIndicator"];
  [v2 appendFormat:@"remoteUIBridge.%1$@ = function(message) {         webkit.messageHandlers.%1$@.postMessage(message);     };", @"log"];
  [v2 appendString:@"window.onerror = function(message) {         webkit.messageHandlers.error.postMessage(message);     };"];
  v3 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:v2 injectionTime:0 forMainFrameOnly:0];

  return v3;
}

- (id)scriptForScalesPageToFit
{
  v2 = [objc_alloc(MEMORY[0x277CE3838]) initWithSource:@"var meta = document.createElement('meta');     meta.name = 'viewport';     meta.content = 'width=device-width';     var head = document.getElementsByTagName('head')[0];    head.appendChild(meta);" injectionTime:1 forMainFrameOnly:0];

  return v2;
}

- (id)navigationBar
{
  [(RemoteUIWebViewController *)self loadViewIfNeeded];
  navigationController = self->_navigationController;

  return [(UINavigationController *)navigationController navigationBar];
}

- (WKWebView)webView
{
  webView = self->_webView;
  if (!webView)
  {
    [(RemoteUIWebViewController *)self loadView];
    webView = self->_webView;
  }

  return webView;
}

- (void)dealloc
{
  [(WKWebView *)self->_webView setNavigationDelegate:0];
  v3.receiver = self;
  v3.super_class = RemoteUIWebViewController;
  [(RemoteUIWebViewController *)&v3 dealloc];
}

- (void)_dismissWithPayload:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  v6 = objc_loadWeakRetained(&self->_delegate);
  v7 = v6;
  if (v5)
  {
    [v6 remoteUIWebViewController:self dismissWithPayload:0];
  }

  else
  {
    [v6 remoteUIWebViewControllerDonePressed:self];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(RemoteUIWebViewController *)self isBeingDismissed];
  v9.receiver = self;
  v9.super_class = RemoteUIWebViewController;
  [(RemoteUIWebViewController *)&v9 viewDidDisappear:v3];
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 remoteUIWebViewControllerDidDismiss:self];
    }
  }
}

- (void)loadURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  loadCompletion = self->_loadCompletion;
  self->_loadCompletion = v7;

  [(RemoteUIWebViewController *)self loadViewIfNeeded];
  v10 = [MEMORY[0x277CCAB70] requestWithURL:v6];

  [v10 setTimeoutInterval:30.0];
  v9 = [(WKWebView *)self->_webView loadRequest:v10];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 1, 0, a4);
    v6 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)webView:(id)a3 didFailNavigation:(id)a4 withError:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if (_isInternalInstall())
  {
    v7 = _RUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "WebView load failed with error %@", &v10, 0xCu);
    }
  }

  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 0, v6);
    v9 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)webView:(id)a3 didFailProvisionalNavigation:(id)a4 withError:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a5;
  if (_isInternalInstall())
  {
    v7 = _RUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "WebView load failed with error %@", &v10, 0xCu);
    }
  }

  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 0, v6);
    v9 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 name];
      v22 = 138543362;
      v23 = v7;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "didReceiveScriptMessage: %{public}@", &v22, 0xCu);
    }
  }

  v8 = [v5 name];
  v9 = [v8 isEqualToString:@"dismissWebView"];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = [v5 body];
    [WeakRetained remoteUIWebViewController:self dismissWithPayload:v11];
  }

  else
  {
    v12 = [v5 name];
    v13 = [v12 isEqualToString:@"startActivityIndicator"];

    if (v13)
    {
      [(RemoteUIWebViewController *)self _startActivityIndicator];
    }

    else
    {
      v14 = [v5 name];
      v15 = [v14 isEqualToString:@"stopActivityIndicator"];

      if (!v15)
      {
        v16 = [v5 name];
        v17 = [v16 isEqualToString:@"log"];

        if (v17)
        {
          if (!_isInternalInstall())
          {
            goto LABEL_19;
          }

          v18 = _RUILoggingFacility();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v5 body];
            v22 = 138412290;
            v23 = v19;
            _os_log_impl(&dword_21B93D000, v18, OS_LOG_TYPE_DEFAULT, "remoteUIBridge.log: %@", &v22, 0xCu);
          }
        }

        else
        {
          v20 = [v5 name];
          v21 = [v20 isEqualToString:@"error"];

          if (!v21)
          {
            goto LABEL_19;
          }

          v18 = _RUILoggingFacility();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [RemoteUIWebViewController userContentController:v5 didReceiveScriptMessage:v18];
          }
        }

        goto LABEL_19;
      }

      [(RemoteUIWebViewController *)self _stopActivityIndicator];
    }
  }

LABEL_19:
}

- (RemoteUIWebViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)userContentController:(void *)a1 didReceiveScriptMessage:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 body];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21B93D000, a2, OS_LOG_TYPE_ERROR, "JS error from webview: %@", &v4, 0xCu);
}

@end