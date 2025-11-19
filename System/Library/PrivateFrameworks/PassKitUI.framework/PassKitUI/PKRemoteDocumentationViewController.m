@interface PKRemoteDocumentationViewController
- (BOOL)isWithinBuddy;
- (PKRemoteDocumentationViewController)initWithContext:(int64_t)a3 URL:(id)a4;
- (UIActivityIndicatorView)activityIndicatorView;
- (UIBarButtonItem)dismissButton;
- (WKWebView)webView;
- (int64_t)handleNavigationAction:(id)a3;
- (void)loadContent;
- (void)navigation:(id)a3 didFinishWithError:(id)a4;
- (void)presentFatalErrorAlert;
- (void)setIsLoading:(BOOL)a3;
- (void)setupActivityIndicatorView;
- (void)setupDismissButton;
- (void)setupWebView;
- (void)viewDidLoad;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
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

- (void)setIsLoading:(BOOL)a3
{
  if (self->_isLoading != a3)
  {
    v7[5] = v3;
    v7[6] = v4;
    self->_isLoading = a3;
    if (a3)
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

- (PKRemoteDocumentationViewController)initWithContext:(int64_t)a3 URL:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKRemoteDocumentationViewController;
  v8 = [(PKRemoteDocumentationViewController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_context = a3;
    objc_storeStrong(&v8->_url, a4);
  }

  return v9;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = PKRemoteDocumentationViewController;
  [(PKRemoteDocumentationViewController *)&v5 viewDidLoad];
  v3 = PKProvisioningBackgroundColor();
  v4 = [(PKRemoteDocumentationViewController *)self view];
  [v4 setBackgroundColor:v3];

  [(PKRemoteDocumentationViewController *)self setupWebView];
  [(PKRemoteDocumentationViewController *)self setupActivityIndicatorView];
  [(PKRemoteDocumentationViewController *)self setupDismissButton];
  [(PKRemoteDocumentationViewController *)self loadContent];
}

- (void)setupWebView
{
  v30[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKRemoteDocumentationViewController *)self webView];
  [v3 setAlpha:0.0];

  v4 = [(PKRemoteDocumentationViewController *)self webView];
  v5 = [v4 scrollView];
  [v5 setContentInsetAdjustmentBehavior:3];

  v6 = [(PKRemoteDocumentationViewController *)self view];
  v7 = [(PKRemoteDocumentationViewController *)self webView];
  [v6 addSubview:v7];

  v8 = [(PKRemoteDocumentationViewController *)self view];
  v29 = [(PKRemoteDocumentationViewController *)self view];
  v27 = [v29 topAnchor];
  v28 = [(PKRemoteDocumentationViewController *)self webView];
  v26 = [v28 topAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v30[0] = v25;
  v24 = [(PKRemoteDocumentationViewController *)self view];
  v22 = [v24 bottomAnchor];
  v23 = [(PKRemoteDocumentationViewController *)self webView];
  v21 = [v23 bottomAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v30[1] = v20;
  v19 = [(PKRemoteDocumentationViewController *)self view];
  v18 = [v19 leftAnchor];
  v9 = [(PKRemoteDocumentationViewController *)self webView];
  v10 = [v9 leftAnchor];
  v11 = [v18 constraintEqualToAnchor:v10];
  v30[2] = v11;
  v12 = [(PKRemoteDocumentationViewController *)self view];
  v13 = [v12 rightAnchor];
  v14 = [(PKRemoteDocumentationViewController *)self webView];
  v15 = [v14 rightAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v30[3] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v8 addConstraints:v17];
}

- (void)setupActivityIndicatorView
{
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(PKRemoteDocumentationViewController *)self view];
  v4 = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  [v3 addSubview:v4];

  v5 = [(PKRemoteDocumentationViewController *)self view];
  v16 = [(PKRemoteDocumentationViewController *)self view];
  v14 = [v16 centerXAnchor];
  v15 = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  v6 = [v15 centerXAnchor];
  v7 = [v14 constraintEqualToAnchor:v6];
  v17[0] = v7;
  v8 = [(PKRemoteDocumentationViewController *)self view];
  v9 = [v8 centerYAnchor];
  v10 = [(PKRemoteDocumentationViewController *)self activityIndicatorView];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v5 addConstraints:v13];

  [(UIActivityIndicatorView *)self->_activityIndicatorView startAnimating];
}

- (void)setupDismissButton
{
  v4 = [(PKRemoteDocumentationViewController *)self dismissButton];
  v3 = [(PKRemoteDocumentationViewController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)loadContent
{
  [(PKRemoteDocumentationViewController *)self setIsLoading:1];
  v3 = MEMORY[0x1E696AF68];
  v4 = [(PKRemoteDocumentationViewController *)self url];
  v6 = [v3 requestWithURL:v4];

  v5 = [(WKWebView *)self->_webView loadRequest:v6];
}

- (void)navigation:(id)a3 didFinishWithError:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKRemoteDocumentationViewController_navigation_didFinishWithError___block_invoke;
  v7[3] = &unk_1E8010A10;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v7 = a5;
  v7[2](v7, [(PKRemoteDocumentationViewController *)self handleNavigationAction:a4]);
}

- (int64_t)handleNavigationAction:(id)a3
{
  v4 = a3;
  v5 = [v4 navigationType];
  if (v5 == -1)
  {
    v8 = 1;
  }

  else
  {
    if (!v5 && ![(PKRemoteDocumentationViewController *)self isWithinBuddy])
    {
      v6 = [v4 request];
      v7 = [v6 URL];

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