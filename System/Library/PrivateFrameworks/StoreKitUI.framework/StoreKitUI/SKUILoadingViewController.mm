@interface SKUILoadingViewController
- (SKUILoadingViewController)initWithClientContext:(id)a3;
- (void)_initializeLoadingView;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation SKUILoadingViewController

- (SKUILoadingViewController)initWithClientContext:(id)a3
{
  v5 = a3;
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
    objc_storeStrong(&v6->_clientContext, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = SKUILoadingViewController;
  [(SKUILoadingViewController *)&v7 viewDidLoad];
  v3 = [(SKUILoadingViewController *)self backgroundColor];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277D75348] systemBackgroundColor];
  }

  v5 = [(SKUILoadingViewController *)self view];
  [v5 setBackgroundColor:v4];

  if (!v3)
  {
  }

  v6 = [(SKUILoadingViewController *)self view];
  [v6 setAccessibilityIgnoresInvertColors:1];

  [(SKUILoadingViewController *)self _initializeLoadingView];
}

- (void)_initializeLoadingView
{
  v3 = 0x2781F6000uLL;
  v4 = objc_alloc_init(SKUILoadingView);
  [(SKUILoadingViewController *)self setLoadingView:v4];

  v5 = [(SKUILoadingViewController *)self loadingText];
  if (v5)
  {
    [(SKUILoadingViewController *)self loadingText];
  }

  else
  {
    v3 = [(SKUILoadingViewController *)self clientContext];
    [SKUILoadingView defaultLoadingTextWithClientContext:v3];
  }
  v6 = ;
  v7 = [(SKUILoadingViewController *)self loadingView];
  [v7 setLoadingText:v6];

  if (!v5)
  {

    v6 = v3;
  }

  v8 = [(SKUILoadingViewController *)self view];
  v9 = [v8 backgroundColor];
  v10 = [(SKUILoadingViewController *)self loadingView];
  [v10 setBackgroundColor:v9];

  v11 = [(SKUILoadingViewController *)self spinnerColorScheme];
  v12 = [(SKUILoadingViewController *)self loadingView];
  [v12 setColorScheme:v11];

  v13 = [(SKUILoadingViewController *)self loadingView];
  [v13 sizeToFit];

  v15 = [(SKUILoadingViewController *)self view];
  v14 = [(SKUILoadingViewController *)self loadingView];
  [v15 addSubview:v14];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(SKUILoadingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(MEMORY[0x277CBF3A0] + 8);
  rect.origin.x = *MEMORY[0x277CBF3A0];
  v13 = [(SKUILoadingViewController *)self loadingView];
  [v13 bounds];
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
  v22 = [(SKUILoadingViewController *)self loadingView];
  [v22 setFrame:{v19, v21, v15, v17}];

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