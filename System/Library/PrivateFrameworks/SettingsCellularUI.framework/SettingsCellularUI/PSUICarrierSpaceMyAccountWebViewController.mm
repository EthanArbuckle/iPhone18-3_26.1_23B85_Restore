@interface PSUICarrierSpaceMyAccountWebViewController
- (PSUICarrierSpaceMyAccountWebViewController)initWithURLString:(id)string;
- (PSUICarrierSpaceMyAccountWebViewController)initWithWebView:(id)view url:(id)url;
- (void)addCancelButton;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation PSUICarrierSpaceMyAccountWebViewController

- (PSUICarrierSpaceMyAccountWebViewController)initWithURLString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = PSUICarrierSpaceMyAccountWebViewController;
  v5 = [(PSUICarrierSpaceMyAccountWebViewController *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    myAccountURL = v5->_myAccountURL;
    v5->_myAccountURL = v6;

    v8 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v5 action:sel_dismissMyAccount];
    cancelButton = v5->_cancelButton;
    v5->_cancelButton = v8;
  }

  return v5;
}

- (PSUICarrierSpaceMyAccountWebViewController)initWithWebView:(id)view url:(id)url
{
  viewCopy = view;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = PSUICarrierSpaceMyAccountWebViewController;
  v9 = [(PSUICarrierSpaceMyAccountWebViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_webView, view);
    objc_storeStrong(&v10->_myAccountURL, url);
    v11 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v10 action:sel_dismissMyAccount];
    cancelButton = v10->_cancelButton;
    v10->_cancelButton = v11;
  }

  return v10;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = PSUICarrierSpaceMyAccountWebViewController;
  [(PSUICarrierSpaceMyAccountWebViewController *)&v11 loadView];
  [(PSUICarrierSpaceMyAccountWebViewController *)self addCancelButton];
  if (!self->_webView)
  {
    v5 = objc_alloc(MEMORY[0x277CE3850]);
    view = [(PSUICarrierSpaceMyAccountWebViewController *)self view];
    [view bounds];
    v7 = [v5 initWithFrame:?];
    webView = self->_webView;
    self->_webView = v7;

    scrollView = [(WKWebView *)self->_webView scrollView];
    systemGroupedBackgroundColor = [MEMORY[0x277D75348] systemGroupedBackgroundColor];
    [scrollView setBackgroundColor:systemGroupedBackgroundColor];

    goto LABEL_5;
  }

  view2 = [(PSUICarrierSpaceMyAccountWebViewController *)self view];
  v4 = self->_webView;

  if (view2 != v4)
  {
LABEL_5:
    [(PSUICarrierSpaceMyAccountWebViewController *)self setView:self->_webView];
  }
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = PSUICarrierSpaceMyAccountWebViewController;
  [(PSUICarrierSpaceMyAccountWebViewController *)&v7 viewDidLoad];
  if (self->_webView)
  {
    v3 = MEMORY[0x277CCAD20];
    myAccountURL = [(PSUICarrierSpaceMyAccountWebViewController *)self myAccountURL];
    v5 = [v3 requestWithURL:myAccountURL];

    v6 = [(WKWebView *)self->_webView loadRequest:v5];
  }
}

- (void)addCancelButton
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  navigationItem = [(PSUICarrierSpaceMyAccountWebViewController *)self navigationItem];
  cancelButton = self->_cancelButton;
  v7 = navigationItem;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [navigationItem setRightBarButtonItem:cancelButton animated:1];
  }

  else
  {
    [navigationItem setLeftBarButtonItem:cancelButton animated:1];
  }
}

@end