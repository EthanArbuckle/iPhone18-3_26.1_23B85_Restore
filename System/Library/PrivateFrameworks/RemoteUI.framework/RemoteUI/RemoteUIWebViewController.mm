@interface RemoteUIWebViewController
- (RemoteUIWebViewControllerDelegate)delegate;
- (WKWebView)webView;
- (id)_spinnerManagerIdentifier;
- (id)navigationBar;
- (id)navigationItem;
- (id)scriptForJSBridge;
- (id)scriptForScalesPageToFit;
- (void)_dismissWithPayload:(id)payload;
- (void)_startActivityIndicator;
- (void)_stopActivityIndicator;
- (void)dealloc;
- (void)loadURL:(id)l completion:(id)completion;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
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
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || self->_scalesPageToFit)
    {
      scriptForScalesPageToFit = [(RemoteUIWebViewController *)self scriptForScalesPageToFit];
      [v3 addUserScript:scriptForScalesPageToFit];
    }

    scriptForJSBridge = [(RemoteUIWebViewController *)self scriptForJSBridge];
    [v3 addUserScript:scriptForJSBridge];

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
    scrollView = [(WKWebView *)self->_webView scrollView];
    [scrollView setContentInsetAdjustmentBehavior:3];

    v13 = [objc_alloc(MEMORY[0x277D75D28]) initWithNibName:0 bundle:0];
    view = [v13 view];
    [view addSubview:self->_webView];

    v15 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v13];
    [(RemoteUIWebViewController *)self addChildViewController:v15];
    view2 = [(RemoteUIWebViewController *)self view];
    view3 = [v15 view];
    [view2 addSubview:view3];

    view4 = [v15 view];
    [view4 setTranslatesAutoresizingMaskIntoConstraints:0];

    v52 = MEMORY[0x277CCAAD0];
    topAnchor = [(WKWebView *)self->_webView topAnchor];
    view5 = [v13 view];
    topAnchor2 = [view5 topAnchor];
    v64 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v73[0] = v64;
    leadingAnchor = [(WKWebView *)self->_webView leadingAnchor];
    view6 = [v13 view];
    leadingAnchor2 = [view6 leadingAnchor];
    v60 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v73[1] = v60;
    trailingAnchor = [(WKWebView *)self->_webView trailingAnchor];
    view7 = [v13 view];
    trailingAnchor2 = [view7 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[2] = v56;
    bottomAnchor = [(WKWebView *)self->_webView bottomAnchor];
    v68 = v13;
    view8 = [v13 view];
    bottomAnchor2 = [view8 bottomAnchor];
    v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v73[3] = v51;
    view9 = [v15 view];
    topAnchor3 = [view9 topAnchor];
    view10 = [(RemoteUIWebViewController *)self view];
    topAnchor4 = [view10 topAnchor];
    v46 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v73[4] = v46;
    view11 = [v15 view];
    leadingAnchor3 = [view11 leadingAnchor];
    view12 = [(RemoteUIWebViewController *)self view];
    leadingAnchor4 = [view12 leadingAnchor];
    v41 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v73[5] = v41;
    view13 = [v15 view];
    trailingAnchor3 = [view13 trailingAnchor];
    view14 = [(RemoteUIWebViewController *)self view];
    trailingAnchor4 = [view14 trailingAnchor];
    v20 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v73[6] = v20;
    view15 = [v15 view];
    bottomAnchor3 = [view15 bottomAnchor];
    view16 = [(RemoteUIWebViewController *)self view];
    bottomAnchor4 = [view16 bottomAnchor];
    v25 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
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
    dismissButtonLabel = [(RemoteUIWebViewController *)self dismissButtonLabel];

    v28 = objc_alloc(MEMORY[0x277D751E0]);
    v29 = v28;
    if (dismissButtonLabel)
    {
      dismissButtonLabel2 = [(RemoteUIWebViewController *)self dismissButtonLabel];
      v31 = [v29 initWithTitle:dismissButtonLabel2 style:0 target:self action:sel_donePressed_];
    }

    else
    {
      v31 = [v28 initWithBarButtonSystemItem:0 target:self action:sel_donePressed_];
    }

    dismissButtonAlignment = [(RemoteUIWebViewController *)self dismissButtonAlignment];
    v33 = [dismissButtonAlignment isEqualToString:@"leading"];

    navigationItem = [v68 navigationItem];
    v35 = navigationItem;
    if (v33)
    {
      [navigationItem setLeftBarButtonItem:v31];
    }

    else
    {
      [navigationItem setRightBarButtonItem:v31];
    }

    style = self->_style;
    navigationBar = [v15 navigationBar];
    [(RUIStyle *)style applyToNavigationBar:navigationBar];
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
  topViewController = [(UINavigationController *)self->_navigationController topViewController];
  navigationItem = [topViewController navigationItem];

  return navigationItem;
}

- (void)_startActivityIndicator
{
  v5 = +[RUINavBarSpinnerManager sharedSpinnerManager];
  navigationItem = [(RemoteUIWebViewController *)self navigationItem];
  _spinnerManagerIdentifier = [(RemoteUIWebViewController *)self _spinnerManagerIdentifier];
  [v5 startAnimatingInNavItem:navigationItem title:0 forIdentifier:_spinnerManagerIdentifier hideBackButton:0 hideLeftItems:0];
}

- (void)_stopActivityIndicator
{
  v4 = +[RUINavBarSpinnerManager sharedSpinnerManager];
  _spinnerManagerIdentifier = [(RemoteUIWebViewController *)self _spinnerManagerIdentifier];
  [v4 stopAnimatingForIdentifier:_spinnerManagerIdentifier];
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

- (void)_dismissWithPayload:(id)payload
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

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  isBeingDismissed = [(RemoteUIWebViewController *)self isBeingDismissed];
  v9.receiver = self;
  v9.super_class = RemoteUIWebViewController;
  [(RemoteUIWebViewController *)&v9 viewDidDisappear:disappearCopy];
  if (isBeingDismissed)
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

- (void)loadURL:(id)l completion:(id)completion
{
  lCopy = l;
  v7 = [completion copy];
  loadCompletion = self->_loadCompletion;
  self->_loadCompletion = v7;

  [(RemoteUIWebViewController *)self loadViewIfNeeded];
  v10 = [MEMORY[0x277CCAB70] requestWithURL:lCopy];

  [v10 setTimeoutInterval:30.0];
  v9 = [(WKWebView *)self->_webView loadRequest:v10];
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 1, 0, navigation);
    v6 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)webView:(id)view didFailNavigation:(id)navigation withError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (_isInternalInstall())
  {
    v7 = _RUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "WebView load failed with error %@", &v10, 0xCu);
    }
  }

  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 0, errorCopy);
    v9 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)webView:(id)view didFailProvisionalNavigation:(id)navigation withError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (_isInternalInstall())
  {
    v7 = _RUILoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = errorCopy;
      _os_log_impl(&dword_21B93D000, v7, OS_LOG_TYPE_DEFAULT, "WebView load failed with error %@", &v10, 0xCu);
    }
  }

  loadCompletion = self->_loadCompletion;
  if (loadCompletion)
  {
    loadCompletion[2](loadCompletion, 0, errorCopy);
    v9 = self->_loadCompletion;
    self->_loadCompletion = 0;
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (_isInternalInstall())
  {
    v6 = _RUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      name = [messageCopy name];
      v22 = 138543362;
      v23 = name;
      _os_log_impl(&dword_21B93D000, v6, OS_LOG_TYPE_DEFAULT, "didReceiveScriptMessage: %{public}@", &v22, 0xCu);
    }
  }

  name2 = [messageCopy name];
  v9 = [name2 isEqualToString:@"dismissWebView"];

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    body = [messageCopy body];
    [WeakRetained remoteUIWebViewController:self dismissWithPayload:body];
  }

  else
  {
    name3 = [messageCopy name];
    v13 = [name3 isEqualToString:@"startActivityIndicator"];

    if (v13)
    {
      [(RemoteUIWebViewController *)self _startActivityIndicator];
    }

    else
    {
      name4 = [messageCopy name];
      v15 = [name4 isEqualToString:@"stopActivityIndicator"];

      if (!v15)
      {
        name5 = [messageCopy name];
        v17 = [name5 isEqualToString:@"log"];

        if (v17)
        {
          if (!_isInternalInstall())
          {
            goto LABEL_19;
          }

          v18 = _RUILoggingFacility();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            body2 = [messageCopy body];
            v22 = 138412290;
            v23 = body2;
            _os_log_impl(&dword_21B93D000, v18, OS_LOG_TYPE_DEFAULT, "remoteUIBridge.log: %@", &v22, 0xCu);
          }
        }

        else
        {
          name6 = [messageCopy name];
          v21 = [name6 isEqualToString:@"error"];

          if (!v21)
          {
            goto LABEL_19;
          }

          v18 = _RUILoggingFacility();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [RemoteUIWebViewController userContentController:messageCopy didReceiveScriptMessage:v18];
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