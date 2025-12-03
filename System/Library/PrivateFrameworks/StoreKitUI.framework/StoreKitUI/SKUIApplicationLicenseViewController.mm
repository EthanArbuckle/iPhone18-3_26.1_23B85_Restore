@interface SKUIApplicationLicenseViewController
- (SKUIApplicationLicenseViewController)initWithLicenseAgreementPage:(id)page;
- (SKUIApplicationLicenseViewController)initWithLicenseAgreementURL:(id)l;
- (void)_displayPage:(id)page error:(id)error;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIApplicationLicenseViewController

- (SKUIApplicationLicenseViewController)initWithLicenseAgreementPage:(id)page
{
  pageCopy = page;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIApplicationLicenseViewController initWithLicenseAgreementPage:];
  }

  v9.receiver = self;
  v9.super_class = SKUIApplicationLicenseViewController;
  v5 = [(SKUIApplicationLicenseViewController *)&v9 init];
  if (v5)
  {
    v6 = [pageCopy copy];
    licensePage = v5->_licensePage;
    v5->_licensePage = v6;
  }

  return v5;
}

- (SKUIApplicationLicenseViewController)initWithLicenseAgreementURL:(id)l
{
  lCopy = l;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIApplicationLicenseViewController initWithLicenseAgreementURL:];
  }

  v9.receiver = self;
  v9.super_class = SKUIApplicationLicenseViewController;
  v5 = [(SKUIApplicationLicenseViewController *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    url = v5->_url;
    v5->_url = v6;
  }

  return v5;
}

- (void)reloadData
{
  if (!self->_licensePage && !self->_loadOperation)
  {
    if (self->_url)
    {
      v3 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURL:self->_url];
      loadOperation = self->_loadOperation;
      self->_loadOperation = v3;

      v5 = self->_loadOperation;
      v6 = +[(SSVURLDataConsumer *)SKUIApplicationLicenseDataConsumer];
      [(SSVLoadURLOperation *)v5 setDataConsumer:v6];

      v7 = self->_loadOperation;
      clientContext = [(SKUIViewController *)self clientContext];
      v9 = [clientContext valueForConfigurationKey:@"sfsuffix"];
      [(SSVLoadURLOperation *)v7 setStoreFrontSuffix:v9];

      objc_initWeak(&location, self);
      v10 = self->_loadOperation;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __50__SKUIApplicationLicenseViewController_reloadData__block_invoke;
      v15 = &unk_2781FFDA8;
      objc_copyWeak(&v16, &location);
      [(SSVLoadURLOperation *)v10 setOutputBlock:&v12];
      v11 = [(SKUIViewController *)self operationQueue:v12];
      [v11 addOperation:self->_loadOperation];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }
}

void __50__SKUIApplicationLicenseViewController_reloadData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SKUIApplicationLicenseViewController_reloadData__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __50__SKUIApplicationLicenseViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _displayPage:*(a1 + 32) error:*(a1 + 40)];
}

- (void)loadView
{
  webView = self->_webView;
  if (!webView)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE3850]);
    v5 = self->_webView;
    self->_webView = v4;

    v6 = self->_webView;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(WKWebView *)v6 setBackgroundColor:whiteColor];

    scrollView = [(WKWebView *)self->_webView scrollView];
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [scrollView setBackgroundColor:whiteColor2];

    licensePage = self->_licensePage;
    webView = self->_webView;
    if (licensePage)
    {
      licenseAgreementHTML = [(SKUIApplicationLicensePage *)licensePage licenseAgreementHTML];
      v12 = [(WKWebView *)webView loadHTMLString:licenseAgreementHTML baseURL:0];

      webView = self->_webView;
    }
  }

  [(SKUIApplicationLicenseViewController *)self setView:webView];

  [(SKUIViewController *)self showDefaultNavigationItems];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SKUIApplicationLicenseViewController *)self reloadData];
  v5.receiver = self;
  v5.super_class = SKUIApplicationLicenseViewController;
  [(SKUIViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)_displayPage:(id)page error:(id)error
{
  pageCopy = page;
  errorCopy = error;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;

  if (errorCopy)
  {
    [(SKUIViewController *)self showError:errorCopy];
  }

  else
  {
    objc_storeStrong(&self->_licensePage, page);
    webView = self->_webView;
    if (webView)
    {
      licenseAgreementHTML = [(SKUIApplicationLicensePage *)self->_licensePage licenseAgreementHTML];
      v11 = [(WKWebView *)webView loadHTMLString:licenseAgreementHTML baseURL:0];
    }

    title = [(SKUIApplicationLicensePage *)self->_licensePage title];
    [(SKUIApplicationLicenseViewController *)self setTitle:title];
  }
}

- (void)initWithLicenseAgreementPage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIApplicationLicenseViewController initWithLicenseAgreementPage:]";
}

- (void)initWithLicenseAgreementURL:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIApplicationLicenseViewController initWithLicenseAgreementURL:]";
}

@end