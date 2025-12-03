@interface PKPayLaterMerchandisingModalViewController
- (PKPayLaterMerchandisingModalViewController)initWithConfiguration:(id)configuration;
- (id)_webViewConfiguration;
- (void)_calculateWebViewHeightWithCompletion:(id)completion;
- (void)_setupWebView:(id)view;
- (void)_showSpinnerView:(BOOL)view showWebView:(BOOL)webView animate:(BOOL)animate completion:(id)completion;
- (void)loadView;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
- (void)webView:(id)view didFinishNavigation:(id)navigation;
- (void)webViewDidClose:(id)close;
@end

@implementation PKPayLaterMerchandisingModalViewController

- (PKPayLaterMerchandisingModalViewController)initWithConfiguration:(id)configuration
{
  v43 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v37.receiver = self;
  v37.super_class = PKPayLaterMerchandisingModalViewController;
  v6 = [(PKPayLaterMerchandisingModalViewController *)&v37 init];
  if (v6)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _viewControllerDescription = [(PKPayLaterMerchandisingModalViewController *)v6 _viewControllerDescription];
      *buf = 138412546;
      v40 = _viewControllerDescription;
      v41 = 2112;
      v42 = configurationCopy;
      _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Creating %@ with configuration %@", buf, 0x16u);
    }

    objc_storeStrong(&v6->_configuration, configuration);
    mEMORY[0x1E69B8B38] = [MEMORY[0x1E69B8B38] sharedInstance];
    utilities = v6->_utilities;
    v6->_utilities = mEMORY[0x1E69B8B38];

    v11 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v6->_spinner;
    v6->_spinner = v11;

    [(UIActivityIndicatorView *)v6->_spinner startAnimating];
    [(UIActivityIndicatorView *)v6->_spinner sizeToFit];
    v13 = objc_alloc(MEMORY[0x1E69853A0]);
    _webViewConfiguration = [(PKPayLaterMerchandisingModalViewController *)v6 _webViewConfiguration];
    v15 = [v13 initWithFrame:_webViewConfiguration configuration:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    webView = v6->_webView;
    v6->_webView = v15;

    [(WKWebView *)v6->_webView setUIDelegate:v6];
    [(WKWebView *)v6->_webView setNavigationDelegate:v6];
    [(PKPayLaterMerchandisingModalViewController *)v6 _setupWebView:v6->_webView];
    v17 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v6->_scrollView;
    v6->_scrollView = v17;

    pinchGestureRecognizer = [(UIScrollView *)v6->_scrollView pinchGestureRecognizer];
    [pinchGestureRecognizer setEnabled:0];

    [(UIScrollView *)v6->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v6->_scrollView setShowsVerticalScrollIndicator:1];
    [(UIScrollView *)v6->_scrollView setMultipleTouchEnabled:0];
    v20 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:25.0];
    v21 = MEMORY[0x1E69DCAD8];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v38[0] = secondaryLabelColor;
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    v38[1] = quaternarySystemFillColor;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v25 = [v21 configurationWithPaletteColors:v24];
    v26 = [v20 configurationByApplyingConfiguration:v25];

    v27 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill" withConfiguration:v26];
    plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
    [plainButtonConfiguration setImage:v27];
    objc_initWeak(buf, v6);
    v29 = MEMORY[0x1E69DC628];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __68__PKPayLaterMerchandisingModalViewController_initWithConfiguration___block_invoke;
    v35[3] = &unk_1E8010A60;
    objc_copyWeak(&v36, buf);
    v30 = [v29 actionWithHandler:v35];
    v31 = [MEMORY[0x1E69DC738] buttonWithConfiguration:plainButtonConfiguration primaryAction:v30];
    closeButton = v6->_closeButton;
    v6->_closeButton = v31;

    navigationItem = [(PKPayLaterMerchandisingModalViewController *)v6 navigationItem];
    [navigationItem _setPreferredNavigationBarVisibility:1];

    objc_destroyWeak(&v36);
    objc_destroyWeak(buf);
  }

  return v6;
}

void __68__PKPayLaterMerchandisingModalViewController_initWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained presentingViewController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)webView:(id)view didFinishNavigation:(id)navigation
{
  v14 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  navigationCopy = navigation;
  v8 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    _viewControllerDescription = [(PKPayLaterMerchandisingModalViewController *)self _viewControllerDescription];
    *buf = 138412290;
    v13 = _viewControllerDescription;
    _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "%@ finished loading", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__PKPayLaterMerchandisingModalViewController_webView_didFinishNavigation___block_invoke;
  v10[3] = &unk_1E8010998;
  objc_copyWeak(&v11, buf);
  [(PKPayLaterMerchandisingModalViewController *)self _calculateWebViewHeightWithCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __74__PKPayLaterMerchandisingModalViewController_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showSpinnerView:0 showWebView:1 animate:1 completion:0];
    WeakRetained = v2;
  }
}

- (void)webViewDidClose:(id)close
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _viewControllerDescription = [(PKPayLaterMerchandisingModalViewController *)self _viewControllerDescription];
    v6 = 138412290;
    v7 = _viewControllerDescription;
    _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "%@ did close web view", &v6, 0xCu);
  }
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  utilities = self->_utilities;
  configuration = self->_configuration;
  actionCopy = action;
  v11 = [(PKPayLaterMerchandisingUtilities *)utilities merchandisingBaseURLForEnviornmentType:[(PKPayLaterMerchandisingConfiguration *)configuration environmentType]];
  request = [actionCopy request];

  v13 = [request URL];

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    _viewControllerDescription = [(PKPayLaterMerchandisingModalViewController *)self _viewControllerDescription];
    v23 = 138412546;
    v24 = _viewControllerDescription;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "%@ deciding policy for action: %@", &v23, 0x16u);
  }

  host = [v13 host];
  host2 = [v11 host];
  defaultWorkspace = host;
  v19 = host2;
  v20 = v19;
  if (defaultWorkspace == v19)
  {

    v22 = 1;
LABEL_12:

    goto LABEL_14;
  }

  if (!defaultWorkspace || !v19)
  {

    goto LABEL_10;
  }

  v21 = [defaultWorkspace isEqualToString:v19];

  if ((v21 & 1) == 0)
  {
LABEL_10:
    if (!v13)
    {
      v22 = 0;
      goto LABEL_14;
    }

    defaultWorkspace = [MEMORY[0x1E6963608] defaultWorkspace];
    [defaultWorkspace openURL:v13 withOptions:0];
    v22 = 0;
    goto LABEL_12;
  }

  v22 = 1;
LABEL_14:
  handlerCopy[2](handlerCopy, v22);
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = PKPayLaterMerchandisingModalViewController;
  [(PKPayLaterMerchandisingModalViewController *)&v6 loadView];
  view = [(PKPayLaterMerchandisingModalViewController *)self view];
  [view addSubview:self->_scrollView];
  [view addSubview:self->_spinner];
  [view addSubview:self->_closeButton];
  [(UIScrollView *)self->_scrollView addSubview:self->_webView];
  systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [view setBackgroundColor:systemBackgroundColor];

  [(PKPayLaterMerchandisingModalViewController *)self _showSpinnerView:1 showWebView:0 animate:0 completion:0];
  navigationItem = [(PKPayLaterMerchandisingModalViewController *)self navigationItem];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    [navigationItem pkui_setupScrollEdgeChromelessAppearance];
    [navigationItem pkui_enableManualScrollEdgeAppearanceWithInitialProgress:0.0];
  }

  [navigationItem setBackButtonDisplayMode:2];
}

- (void)viewWillLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = PKPayLaterMerchandisingModalViewController;
  [(PKPayLaterMerchandisingModalViewController *)&v24 viewWillLayoutSubviews];
  view = [(PKPayLaterMerchandisingModalViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [view safeAreaInsets];
  v13 = v12;
  v15 = v14;
  spinner = self->_spinner;
  [(UIActivityIndicatorView *)spinner frame];
  PKRectCenteredIntegralRect();
  [(UIActivityIndicatorView *)spinner setFrame:?];
  [(UIScrollView *)self->_scrollView setFrame:v5 + 0.0, v7 + v13, v9, v11 - (v13 + v15)];
  [(UIScrollView *)self->_scrollView setContentSize:v9, self->_webViewHeight];
  [(UIScrollView *)self->_scrollView bounds];
  [(WKWebView *)self->_webView setFrame:*MEMORY[0x1E695EFF8] + 16.0, *(MEMORY[0x1E695EFF8] + 8) + 0.0, v17 + -32.0, self->_webViewHeight];
  [(UIButton *)self->_closeButton frame];
  configuration = [(UIButton *)self->_closeButton configuration];
  image = [configuration image];
  [image size];
  v21 = v20;
  v23 = v22;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  [(UIButton *)self->_closeButton setFrame:v9 - v21 + -20.0, CGRectGetMinY(v25) + 20.0, v21, v23];
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [message name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController received script message with name %@", &v7, 0xCu);
  }
}

- (id)_webViewConfiguration
{
  v3 = objc_alloc_init(MEMORY[0x1E6985350]);
  [v3 addScriptMessageHandler:self name:@"modal"];
  v4 = objc_alloc_init(MEMORY[0x1E69853A8]);
  defaultWebpagePreferences = [v4 defaultWebpagePreferences];
  [defaultWebpagePreferences setAllowsContentJavaScript:1];

  [v4 setUserContentController:v3];
  [v4 setApplicationNameForUserAgent:@"modal"];
  v6 = objc_alloc(MEMORY[0x1E6985358]);
  v7 = [v6 initWithSource:*MEMORY[0x1E69BC048] injectionTime:1 forMainFrameOnly:1];
  [v3 addUserScript:v7];

  return v4;
}

- (void)_setupWebView:(id)view
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  [viewCopy setAllowsLinkPreview:0];
  scrollView = [viewCopy scrollView];
  [scrollView setScrollEnabled:0];
  pinchGestureRecognizer = [scrollView pinchGestureRecognizer];
  [pinchGestureRecognizer setEnabled:0];

  [scrollView setShowsHorizontalScrollIndicator:0];
  [scrollView setShowsVerticalScrollIndicator:0];
  [scrollView setMultipleTouchEnabled:0];
  v7 = [(PKPayLaterMerchandisingUtilities *)self->_utilities merchandisingModalURLWithConfiguration:self->_configuration];
  v8 = [MEMORY[0x1E696AF68] requestWithURL:v7 cachePolicy:0 timeoutInterval:10.0];
  v9 = [viewCopy loadRequest:v8];
  v10 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    _viewControllerDescription = [(PKPayLaterMerchandisingModalViewController *)self _viewControllerDescription];
    v12 = 138412546;
    v13 = _viewControllerDescription;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "%@ loading request %@", &v12, 0x16u);
  }
}

- (void)_calculateWebViewHeightWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x1E69B8658]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke;
  aBlock[3] = &unk_1E80111D0;
  objc_copyWeak(&v22, &location);
  v6 = completionCopy;
  v21 = v6;
  v7 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_2;
  v19[3] = &unk_1E8019220;
  v19[4] = self;
  [v5 addOperation:v19];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_49;
  v17[3] = &unk_1E801D128;
  v17[4] = self;
  objc_copyWeak(&v18, &location);
  v17[5] = v23;
  [v5 addOperation:v17];
  null = [MEMORY[0x1E695DFB0] null];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_55;
  v12[3] = &unk_1E801D150;
  objc_copyWeak(&v16, &location);
  v9 = v7;
  v13 = v9;
  v10 = v6;
  v14 = v10;
  v15 = v23;
  v11 = [v5 evaluateWithInput:null completion:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&location);
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 131) = 0;
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = v3;
      (*(v4 + 16))();
      v3 = v5;
    }
  }
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = *(*(a1 + 32) + 1016);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_3;
  v11[3] = &unk_1E801D0D8;
  v12 = v6;
  v13 = v7;
  v9 = v6;
  v10 = v7;
  [v8 evaluateJavaScript:@"document.readyState" completionHandler:v11];
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a2 stringValue];
  v4 = v3;
  if (v3 != @"complete" && v3)
  {
    [(__CFString *)v3 caseInsensitiveCompare:@"complete"];
  }

  v5 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController readyState: %@", &v6, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_49(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 32) + 1016);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_2_53;
  v14[3] = &unk_1E801D100;
  objc_copyWeak(&v18, (a1 + 48));
  v11 = v9;
  v16 = v11;
  v12 = v8;
  v13 = *(a1 + 40);
  v15 = v12;
  v17 = v13;
  [v10 evaluateJavaScript:@"document.body.scrollHeight" completionHandler:v14];

  objc_destroyWeak(&v18);
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_2_53(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [v5 floatValue];
    *(*(*(a1 + 48) + 8) + 24) = v8;
    v9 = PKLogFacilityTypeGetObject();
    v10 = v9;
    if (v6)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController encountered error getting height %@", &v12, 0xCu);
      }
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 48) + 8) + 24);
      v12 = 134217984;
      v13 = v11;
      _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController recalcuated height to %f", &v12, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_55(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  if ([v5 isCanceled])
  {
    v7 = *(WeakRetained + 131) + 1;
    *(WeakRetained + 131) = v7;
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v14 = 25;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController WKWebView document wasn't ready to load. Trying again in %ld miliseconds. Current rety count %ld", buf, 0x16u);
    }

    if (*(WeakRetained + 131) != 200)
    {
      v10 = dispatch_time(0, 25000000);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __84__PKPayLaterMerchandisingModalViewController__calculateWebViewHeightWithCompletion___block_invoke_56;
      v11[3] = &unk_1E8010DD0;
      v11[4] = WeakRetained;
      v12 = *(a1 + 40);
      dispatch_after(v10, MEMORY[0x1E69E96A0], v11);

      goto LABEL_12;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKPayLaterMerchandisingModalViewController WKWebView retry limit reached.", buf, 2u);
    }

    goto LABEL_10;
  }

  v9 = *(*(*(a1 + 48) + 8) + 24);
  if (v9 != WeakRetained[130])
  {
    WeakRetained[130] = v9;
    v8 = [WeakRetained view];
    [v8 setNeedsLayout];
LABEL_10:
  }

LABEL_11:
  (*(*(a1 + 32) + 16))();
LABEL_12:
}

- (void)_showSpinnerView:(BOOL)view showWebView:(BOOL)webView animate:(BOOL)animate completion:(id)completion
{
  animateCopy = animate;
  webViewCopy = webView;
  viewCopy = view;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke;
  aBlock[3] = &unk_1E8012188;
  aBlock[4] = self;
  *&aBlock[5] = webViewCopy;
  *&aBlock[6] = viewCopy;
  v11 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke_2;
  v19[3] = &unk_1E8010B50;
  v12 = completionCopy;
  v20 = v12;
  v13 = _Block_copy(v19);
  if (animateCopy)
  {
    v14 = MEMORY[0x1E69DD250];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke_3;
    v17[3] = &unk_1E8010B50;
    v18 = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke_4;
    v15[3] = &unk_1E8010AD8;
    v16 = v13;
    [v14 pkui_animateUsingOptions:4 animations:v17 completion:v15];
  }

  else
  {
    v11[2](v11);
    v13[2](v13);
  }
}

uint64_t __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1016) setAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 1008);
  v3 = *(a1 + 48);

  return [v2 setAlpha:v3];
}

uint64_t __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __94__PKPayLaterMerchandisingModalViewController__showSpinnerView_showWebView_animate_completion___block_invoke_4(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

@end