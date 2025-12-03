@interface PKRemoteDocumentationViewController
- (BOOL)isWithinBuddy;
- (PKRemoteDocumentationViewController)initWithContext:(int64_t)context URL:(id)l;
- (UIActivityIndicatorView)activityIndicatorView;
- (UIBarButtonItem)dismissButton;
- (WKWebView)webView;
- (int64_t)handleNavigationAction:(id)action;
- (void)loadContent;
- (void)navigation:(id)navigation didFinishWithError:(id)error;
- (void)presentFatalErrorAlert;
- (void)setIsLoading:(BOOL)loading;
- (void)setupActivityIndicatorView;
- (void)setupDismissButton;
- (void)setupWebView;
- (void)viewDidLoad;
- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler;
@end

@implementation PKRemoteDocumentationViewController

- (WKWebView)webView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_alloc(MEMORY[0x1E69853A0]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_webView;
    self->_webView = v5;

    [(WKWebView *)self->_webView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WKWebView *)self->_webView setNavigationDelegate:self];
    webView = self->_webView;
  }

  return webView;
}

- (UIActivityIndicatorView)activityIndicatorView
{
  activityIndicatorView = self->_activityIndicatorView;
  if (!activityIndicatorView)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
    v5 = self->_activityIndicatorView;
    self->_activityIndicatorView = v4;

    [(UIActivityIndicatorView *)self->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    activityIndicatorView = self->_activityIndicatorView;
  }

  return activityIndicatorView;
}

- (UIBarButtonItem)dismissButton
{
  dismissButton = self->_dismissButton;
  if (!dismissButton)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_handleDismiss_];
    v5 = self->_dismissButton;
    self->_dismissButton = v4;

    dismissButton = self->_dismissButton;
  }

  return dismissButton;
}

- (void)setIsLoading:(BOOL)loading
{
  if (self->_isLoading != loading)
  {
    v7[5] = v3;
    v7[6] = v4;
    self->_isLoading = loading;
    if (loading)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke;
      v7[3] = &unk_1E8010970;
      v7[4] = self;
      [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.3];
    }

    else
    {
      v5[4] = self;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke_2;
      v6[3] = &unk_1E8010970;
      v6[4] = self;
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke_3;
      v5[3] = &unk_1E8011D28;
      [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:v5 completion:0.3];
    }
  }
}

void __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicatorView];
  [v1 setAlpha:1.0];
}

void __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicatorView];
  [v1 setAlpha:0.0];
}

void __52__PKRemoteDocumentationViewController_setIsLoading___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) activityIndicatorView];
  [v1 stopAnimating];
}

- (PKRemoteDocumentationViewController)initWithContext:(int64_t)context URL:(id)l
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = PKRemoteDocumentationViewController;
  v8 = [(PKRemoteDocumentationViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_context = context;
    objc_storeStrong(&v8->_url, l);
  }

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKRemoteDocumentationViewController;
  [(PKRemoteDocumentationViewController *)&v5 viewDidLoad];
  v3 = PKProvisioningBackgroundColor();
  view = [(PKRemoteDocumentationViewController *)self view];
  [view setBackgroundColor:v3];

  [(PKRemoteDocumentationViewController *)self setupWebView];
  [(PKRemoteDocumentationViewController *)self setupActivityIndicatorView];
  [(PKRemoteDocumentationViewController *)self setupDismissButton];
  [(PKRemoteDocumentationViewController *)self loadContent];
}

- (void)setupWebView
{
  v30[4] = *MEMORY[0x1E69E9840];
  webView = [(PKRemoteDocumentationViewController *)self webView];
  [webView setAlpha:0.0];

  webView2 = [(PKRemoteDocumentationViewController *)self webView];
  scrollView = [webView2 scrollView];
  [scrollView setContentInsetAdjustmentBehavior:3];

  view = [(PKRemoteDocumentationViewController *)self view];
  webView3 = [(PKRemoteDocumentationViewController *)self webView];
  [view addSubview:webView3];

  view2 = [(PKRemoteDocumentationViewController *)self view];
  view3 = [(PKRemoteDocumentationViewController *)self view];
  topAnchor = [view3 topAnchor];
  webView4 = [(PKRemoteDocumentationViewController *)self webView];
  topAnchor2 = [webView4 topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[0] = v25;
  view4 = [(PKRemoteDocumentationViewController *)self view];
  bottomAnchor = [view4 bottomAnchor];
  webView5 = [(PKRemoteDocumentationViewController *)self webView];
  bottomAnchor2 = [webView5 bottomAnchor];
  v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[1] = v20;
  view5 = [(PKRemoteDocumentationViewController *)self view];
  leftAnchor = [view5 leftAnchor];
  webView6 = [(PKRemoteDocumentationViewController *)self webView];
  leftAnchor2 = [webView6 leftAnchor];
  v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
  v30[2] = v11;
  view6 = [(PKRemoteDocumentationViewController *)self view];
  rightAnchor = [view6 rightAnchor];
  webView7 = [(PKRemoteDocumentationViewController *)self webView];
  rightAnchor2 = [webView7 rightAnchor];
  v16 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
  v30[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [view2 addConstraints:v17];
}

- (void)setupActivityIndicatorView
{
  v17[2] = *MEMORY[0x1E69E9840];
  view = [(PKRemoteDocumentationViewController *)self view];
  activityIndicatorView = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  [view addSubview:activityIndicatorView];

  view2 = [(PKRemoteDocumentationViewController *)self view];
  view3 = [(PKRemoteDocumentationViewController *)self view];
  centerXAnchor = [view3 centerXAnchor];
  activityIndicatorView2 = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  centerXAnchor2 = [activityIndicatorView2 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v17[0] = v7;
  view4 = [(PKRemoteDocumentationViewController *)self view];
  centerYAnchor = [view4 centerYAnchor];
  activityIndicatorView3 = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  centerYAnchor2 = [activityIndicatorView3 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [view2 addConstraints:v13];

  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
}

- (void)setupDismissButton
{
  dismissButton = [(PKRemoteDocumentationViewController *)self dismissButton];
  navigationItem = [(PKRemoteDocumentationViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:dismissButton];
}

- (void)loadContent
{
  [(PKRemoteDocumentationViewController *)self setIsLoading:1];
  v3 = MEMORY[0x1E696AF68];
  v4 = [(PKRemoteDocumentationViewController *)self url];
  v6 = [v3 requestWithURL:v4];

  v5 = [(WKWebView *)self->_webView loadRequest:v6];
}

- (void)navigation:(id)navigation didFinishWithError:(id)error
{
  errorCopy = error;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKRemoteDocumentationViewController_navigation_didFinishWithError___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

uint64_t __69__PKRemoteDocumentationViewController_navigation_didFinishWithError___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setIsLoading:0];
  if (*(a1 + 40))
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = [*(a1 + 32) url];
      v4 = *(a1 + 40);
      *buf = 138412546;
      v9 = v3;
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1BD026000, v2, OS_LOG_TYPE_DEFAULT, "PKRemoteDocumentationViewController - Error trying to load %@: %@", buf, 0x16u);
    }

    v5 = [*(a1 + 32) dismissButton];
    [v5 setEnabled:0];

    return [*(a1 + 32) presentFatalErrorAlert];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __69__PKRemoteDocumentationViewController_navigation_didFinishWithError___block_invoke_24;
    v7[3] = &unk_1E8010970;
    v7[4] = *(a1 + 32);
    return [MEMORY[0x1E69DD250] animateWithDuration:v7 animations:0.3];
  }
}

void __69__PKRemoteDocumentationViewController_navigation_didFinishWithError___block_invoke_24(uint64_t a1)
{
  v1 = [*(a1 + 32) webView];
  [v1 setAlpha:1.0];
}

- (void)presentFatalErrorAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = PKLocalizedPaymentString(&cfstr_CouldNotConnec.isa);
  v5 = PKLocalizedPaymentString(&cfstr_CouldNotConnec_0.isa);
  v6 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v7 = MEMORY[0x1E69DC648];
  v8 = PKLocalizedString(&cfstr_OkButtonTitle.isa);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PKRemoteDocumentationViewController_presentFatalErrorAlert__block_invoke;
  v10[3] = &unk_1E80112E8;
  v10[4] = self;
  v9 = [v7 actionWithTitle:v8 style:1 handler:v10];

  [v6 addAction:v9];
  [(PKRemoteDocumentationViewController *)self presentViewController:v6 animated:1 completion:0];
}

- (void)webView:(id)view decidePolicyForNavigationAction:(id)action decisionHandler:(id)handler
{
  handlerCopy = handler;
  handlerCopy[2](handlerCopy, [(PKRemoteDocumentationViewController *)self handleNavigationAction:action]);
}

- (int64_t)handleNavigationAction:(id)action
{
  actionCopy = action;
  navigationType = [actionCopy navigationType];
  if (navigationType == -1)
  {
    v8 = 1;
  }

  else
  {
    if (!navigationType && ![(PKRemoteDocumentationViewController *)self isWithinBuddy])
    {
      request = [actionCopy request];
      v7 = [request URL];

      PKOpenURL();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)isWithinBuddy
{
  [(PKRemoteDocumentationViewController *)self context];

  return PKPaymentSetupContextIsSetupAssistant();
}

@end