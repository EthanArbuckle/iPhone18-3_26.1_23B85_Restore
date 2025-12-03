@interface SKUILoadingViewController
- (SKUILoadingViewController)initWithClientContext:(id)context;
- (void)_initializeLoadingView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SKUILoadingViewController

- (SKUILoadingViewController)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUILoadingViewController initWithClientContext:];
  }

  v9.receiver = self;
  v9.super_class = SKUILoadingViewController;
  v6 = [(SKUILoadingViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SKUILoadingViewController;
  [(SKUILoadingViewController *)&v7 viewDidLoad];
  backgroundColor = [(SKUILoadingViewController *)self backgroundColor];
  systemBackgroundColor = backgroundColor;
  if (!backgroundColor)
  {
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  view = [(SKUILoadingViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  if (!backgroundColor)
  {
  }

  view2 = [(SKUILoadingViewController *)self view];
  [view2 setAccessibilityIgnoresInvertColors:1];

  [(SKUILoadingViewController *)self _initializeLoadingView];
}

- (void)_initializeLoadingView
{
  clientContext = 0x2781F6000uLL;
  v4 = objc_alloc_init(SKUILoadingView);
  [(SKUILoadingViewController *)self setLoadingView:v4];

  loadingText = [(SKUILoadingViewController *)self loadingText];
  if (loadingText)
  {
    [(SKUILoadingViewController *)self loadingText];
  }

  else
  {
    clientContext = [(SKUILoadingViewController *)self clientContext];
    [SKUILoadingView defaultLoadingTextWithClientContext:clientContext];
  }
  v6 = ;
  loadingView = [(SKUILoadingViewController *)self loadingView];
  [loadingView setLoadingText:v6];

  if (!loadingText)
  {

    v6 = clientContext;
  }

  view = [(SKUILoadingViewController *)self view];
  backgroundColor = [view backgroundColor];
  loadingView2 = [(SKUILoadingViewController *)self loadingView];
  [loadingView2 setBackgroundColor:backgroundColor];

  spinnerColorScheme = [(SKUILoadingViewController *)self spinnerColorScheme];
  loadingView3 = [(SKUILoadingViewController *)self loadingView];
  [loadingView3 setColorScheme:spinnerColorScheme];

  loadingView4 = [(SKUILoadingViewController *)self loadingView];
  [loadingView4 sizeToFit];

  view2 = [(SKUILoadingViewController *)self view];
  loadingView5 = [(SKUILoadingViewController *)self loadingView];
  [view2 addSubview:loadingView5];
}

- (void)viewDidLayoutSubviews
{
  view = [(SKUILoadingViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect.origin.x = *MEMORY[0x277CBF3A0];
  loadingView = [(SKUILoadingViewController *)self loadingView];
  [loadingView bounds];
  v15 = v14;
  v17 = v16;

  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  Width = CGRectGetWidth(v24);
  v25.origin.x = rect.origin.x;
  v25.origin.y = v12;
  v25.size.width = v15;
  v25.size.height = v17;
  v19 = floor((Width - CGRectGetWidth(v25)) * 0.5);
  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  v20 = CGRectGetHeight(v26) * 0.5;
  v27.origin.x = v19;
  v27.origin.y = v12;
  v27.size.width = v15;
  v27.size.height = v17;
  v21 = floor(v20 - CGRectGetHeight(v27));
  loadingView2 = [(SKUILoadingViewController *)self loadingView];
  [loadingView2 setFrame:{v19, v21, v15, v17}];

  *&rect.origin.y = self;
  *&rect.size.width = SKUILoadingViewController;
  [(CGFloat *)&rect.origin.y viewDidLayoutSubviews];
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadingViewController initWithClientContext:]";
}

@end