@interface PKBasicWebViewController
- (PKBasicWebViewController)initWithURL:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5;
- (void)webView:(id)a3 didFinishNavigation:(id)a4;
@end

@implementation PKBasicWebViewController

- (PKBasicWebViewController)initWithURL:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKBasicWebViewController;
  v6 = [(PKBasicWebViewController *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_url, a3);
    v8 = objc_alloc_init(MEMORY[0x1E69853A0]);
    webView = v7->_webView;
    v7->_webView = v8;

    [(WKWebView *)v7->_webView setNavigationDelegate:v7];
    v10 = [(PKBasicWebViewController *)v7 view];
    [v10 addSubview:v7->_webView];
  }

  return v7;
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = PKBasicWebViewController;
  [(PKBasicWebViewController *)&v21 viewDidLoad];
  v3 = [(PKBasicWebViewController *)self navigationItem];
  objc_initWeak(&location, self);
  v4 = objc_alloc(MEMORY[0x1E69DC708]);
  v5 = MEMORY[0x1E69DC628];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __39__PKBasicWebViewController_viewDidLoad__block_invoke;
  v18 = &unk_1E8010A60;
  objc_copyWeak(&v19, &location);
  v6 = [v5 actionWithHandler:&v15];
  v7 = [v4 initWithBarButtonSystemItem:24 primaryAction:{v6, v15, v16, v17, v18}];
  closeItem = self->_closeItem;
  self->_closeItem = v7;

  [v3 setLeftBarButtonItem:self->_closeItem];
  v9 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  activityIndicator = self->_activityIndicator;
  self->_activityIndicator = v9;

  v11 = self->_activityIndicator;
  v12 = [MEMORY[0x1E69DC888] systemGray3Color];
  [(UIActivityIndicatorView *)v11 setColor:v12];

  [(UIActivityIndicatorView *)self->_activityIndicator setHidesWhenStopped:1];
  v13 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:self->_activityIndicator];
  activityIndicatorItem = self->_activityIndicatorItem;
  self->_activityIndicatorItem = v13;

  [v3 setRightBarButtonItem:self->_activityIndicatorItem];
  [(UIActivityIndicatorView *)self->_activityIndicator startAnimating];
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __39__PKBasicWebViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained presentingViewController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (void)viewWillAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = PKBasicWebViewController;
  [(PKBasicWebViewController *)&v6 viewWillAppear:a3];
  v4 = [MEMORY[0x1E696AF68] requestWithURL:self->_url];
  v5 = [(WKWebView *)self->_webView loadRequest:v4];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKBasicWebViewController;
  [(PKBasicWebViewController *)&v5 viewWillLayoutSubviews];
  webView = self->_webView;
  v4 = [(PKBasicWebViewController *)self view];
  [v4 bounds];
  [(WKWebView *)webView setFrame:?];
}

- (void)webView:(id)a3 didFinishNavigation:(id)a4
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PKBasicWebViewController_webView_didFinishNavigation___block_invoke;
  v4[3] = &unk_1E8010998;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __56__PKBasicWebViewController_webView_didFinishNavigation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[126] stopAnimating];
    v2 = [v3 navigationItem];
    [v2 setRightBarButtonItem:0];

    WeakRetained = v3;
  }
}

- (void)webView:(id)a3 decidePolicyForNavigationAction:(id)a4 decisionHandler:(id)a5
{
  v10 = a5;
  v7 = [a4 request];
  v8 = [v7 URL];

  if (v8)
  {
    if ([v8 isEqual:self->_url])
    {
      v9 = 1;
      goto LABEL_6;
    }

    PKOpenURL();
  }

  v9 = 0;
LABEL_6:
  v10[2](v10, v9);
}

@end