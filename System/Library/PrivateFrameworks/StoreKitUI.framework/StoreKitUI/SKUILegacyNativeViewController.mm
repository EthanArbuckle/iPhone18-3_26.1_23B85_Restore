@interface SKUILegacyNativeViewController
- (SKUILegacyNativeViewController)initWithData:(id)a3 fromOperation:(id)a4;
- (id)_categoryController;
- (id)_storePageViewController;
- (void)_finishLoadWithResult:(BOOL)a3 error:(id)a4;
- (void)_reloadNavigationItem;
- (void)categoryController:(id)a3 didSelectCategory:(id)a4;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)a3;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4;
@end

@implementation SKUILegacyNativeViewController

- (SKUILegacyNativeViewController)initWithData:(id)a3 fromOperation:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILegacyNativeViewController initWithData:fromOperation:];
  }

  v14.receiver = self;
  v14.super_class = SKUILegacyNativeViewController;
  v9 = [(SKUILegacyNativeViewController *)&v14 init];
  if (v9)
  {
    v10 = [v8 URLRequest];
    v11 = [v10 URL];
    activeURL = v9->_activeURL;
    v9->_activeURL = v11;

    objc_storeStrong(&v9->_defaultURL, v9->_activeURL);
    objc_storeStrong(&v9->_initialData, a3);
    objc_storeStrong(&v9->_initialOperation, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(SKUICategoryController *)self->_categoryController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SKUILegacyNativeViewController;
  [(SKUIViewController *)&v3 dealloc];
}

- (void)reloadData
{
  if (self->_initialData)
  {
    objc_initWeak(&location, self);
    v3 = [(SKUILegacyNativeViewController *)self _storePageViewController];
    initialData = self->_initialData;
    initialOperation = self->_initialOperation;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke;
    v13[3] = &unk_2781FA340;
    objc_copyWeak(&v14, &location);
    [v3 loadWithJSONData:initialData fromOperation:initialOperation completionBlock:v13];

    v6 = self->_initialData;
    self->_initialData = 0;

    v7 = self->_initialOperation;
    self->_initialOperation = 0;

    v8 = &v14;
  }

  else
  {
    if (!self->_activeURL)
    {
      goto LABEL_6;
    }

    objc_initWeak(&location, self);
    v9 = [(SKUILegacyNativeViewController *)self _storePageViewController];
    activeURL = self->_activeURL;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke_3;
    v11[3] = &unk_2781FA340;
    objc_copyWeak(&v12, &location);
    [v9 loadURL:activeURL withCompletionBlock:v11];

    v8 = &v12;
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
LABEL_6:
  if ([(SKUILegacyNativeViewController *)self isViewLoaded])
  {
    [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  }
}

void __44__SKUILegacyNativeViewController_reloadData__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke_2;
  block[3] = &unk_2781FA318;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __44__SKUILegacyNativeViewController_reloadData__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

void __44__SKUILegacyNativeViewController_reloadData__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke_4;
  block[3] = &unk_2781FA318;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __44__SKUILegacyNativeViewController_reloadData__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _finishLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

- (void)loadView
{
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  v3 = [(SKUILegacyNativeViewController *)self _storePageViewController];
  v4 = [v3 view];

  [v4 bounds];
  [v5 setFrame:?];
  [v4 setAutoresizingMask:18];
  [v5 bounds];
  [v4 setFrame:?];
  [v5 addSubview:v4];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    [(SKUIViewController *)self showDefaultNavigationItems];
  }

  [(SKUILegacyNativeViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SKUIStorePageViewController *)self->_storePageViewController storePage];
  if (v5 || -[SKUIStorePageViewController isSkLoading](self->_storePageViewController, "isSkLoading") || [MEMORY[0x277D75128] shouldMakeUIForDefaultPNG])
  {
  }

  else
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v7 = [v6 launchedToTest];

    if ((v7 & 1) == 0)
    {
      [(SKUILegacyNativeViewController *)self reloadData];
    }
  }

  [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  v8.receiver = self;
  v8.super_class = SKUILegacyNativeViewController;
  [(SKUIViewController *)&v8 viewWillAppear:v3];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)a3 duration:(double)a4
{
  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = [v7 userInterfaceIdiom];

  if (v8 == 1)
  {
    [(SKUICategoryController *)self->_categoryController dismiss];
    [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  v9.receiver = self;
  v9.super_class = SKUILegacyNativeViewController;
  [(SKUIViewController *)&v9 willAnimateRotationToInterfaceOrientation:a3 duration:a4];
}

- (void)categoryController:(id)a3 didSelectCategory:(id)a4
{
  v5 = a4;
  v6 = [v5 URL];
  activeURL = self->_activeURL;
  self->_activeURL = v6;

  v8 = [(SKUILegacyNativeViewController *)self navigationItem];
  v9 = [v5 name];

  [v8 setTitle:v9];
  [(SKUIStorePageViewController *)self->_storePageViewController setStorePage:0];

  [(SKUILegacyNativeViewController *)self reloadData];
}

- (id)_categoryController
{
  categoryController = self->_categoryController;
  if (!categoryController)
  {
    v4 = [[SKUICategoryController alloc] initWithContentsController:self];
    v5 = self->_categoryController;
    self->_categoryController = v4;

    v6 = self->_categoryController;
    v7 = [(SKUIViewController *)self clientContext];
    [(SKUICategoryController *)v6 setClientContext:v7];

    [(SKUICategoryController *)self->_categoryController setDelegate:self];
    v8 = self->_categoryController;
    v9 = [(SKUIViewController *)self operationQueue];
    [(SKUICategoryController *)v8 setOperationQueue:v9];

    categoryController = self->_categoryController;
  }

  return categoryController;
}

- (void)_finishLoadWithResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  v6 = a4;
  if (v4)
  {
    v7 = [(SKUILegacyNativeViewController *)self _categoryController];
    v8 = [v7 category];

    if (!v8)
    {
      v9 = [(SKUIStorePageViewController *)self->_storePageViewController storePage];
      v10 = [v9 valueForPageKey:@"categoryList"];
      v11 = [v9 valueForPageKey:@"categoryListUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[SKUICategory alloc] initWithCategoryDictionary:v10];
        [v7 setCategory:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 setCategory:0];
          objc_initWeak(&location, self);
          v13 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          v16 = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __62__SKUILegacyNativeViewController__finishLoadWithResult_error___block_invoke;
          v19 = &unk_2781FA340;
          objc_copyWeak(&v20, &location);
          [v7 loadFromURL:v13 withCompletionBlock:&v16];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }
      }
    }

    v14 = [(SKUIStorePageViewController *)self->_storePageViewController storePage:v16];
    v15 = [v14 title];
    [(SKUILegacyNativeViewController *)self setTitle:v15];

    [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  if (v6)
  {
    [(SKUIViewController *)self showError:v6];
  }
}

void __62__SKUILegacyNativeViewController__finishLoadWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadNavigationItem];
}

- (void)_reloadNavigationItem
{
  v15 = [(SKUILegacyNativeViewController *)self navigationItem];
  [v15 setLeftItemsSupplementBackButton:1];
  [v15 setLeftBarButtonItem:0];
  [v15 setTitleView:0];
  v3 = [(SKUILegacyNativeViewController *)self _categoryController];
  v4 = [v3 category];
  v5 = [v4 children];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(SKUIViewController *)self clientContext];
    v8 = SKUIUserInterfaceIdiom(v7);

    if (v8 == 1 && (-[SKUIStorePageViewController storePage](self->_storePageViewController, "storePage"), v9 = objc_claimAutoreleasedReturnValue(), [v9 valueForPageKey:@"categoryListUrl"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      v12 = [MEMORY[0x277D75128] sharedApplication];
      v13 = [v12 statusBarOrientation];

      if ((v13 - 1) < 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 5;
      }

      [v3 setSegmentedControlLength:v14];
      [v3 setDefaultURL:self->_defaultURL];
      [v3 setSelectedURL:self->_activeURL];
      v11 = [v3 segmentedControl];
      [v11 sizeToFit];
      [v15 setTitleView:v11];
    }

    else
    {
      [v3 setSelectedURL:self->_activeURL];
      [v3 setDefaultURL:self->_defaultURL];
      v11 = [v3 categoryButton];
      [v15 setLeftBarButtonItem:v11];
    }
  }
}

- (id)_storePageViewController
{
  storePageViewController = self->_storePageViewController;
  if (!storePageViewController)
  {
    v4 = objc_alloc_init(SKUIStorePageViewController);
    v5 = self->_storePageViewController;
    self->_storePageViewController = v4;

    v6 = self->_storePageViewController;
    v7 = [(SKUIViewController *)self clientContext];
    [(SKUIStorePageViewController *)v6 setClientContext:v7];

    [(SKUILegacyNativeViewController *)self addChildViewController:self->_storePageViewController];
    storePageViewController = self->_storePageViewController;
  }

  return storePageViewController;
}

- (void)initWithData:fromOperation:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILegacyNativeViewController initWithData:fromOperation:]";
}

@end