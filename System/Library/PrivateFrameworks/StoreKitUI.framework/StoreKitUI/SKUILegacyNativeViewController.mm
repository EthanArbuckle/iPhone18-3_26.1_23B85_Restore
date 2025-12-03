@interface SKUILegacyNativeViewController
- (SKUILegacyNativeViewController)initWithData:(id)data fromOperation:(id)operation;
- (id)_categoryController;
- (id)_storePageViewController;
- (void)_finishLoadWithResult:(BOOL)result error:(id)error;
- (void)_reloadNavigationItem;
- (void)categoryController:(id)controller didSelectCategory:(id)category;
- (void)dealloc;
- (void)loadView;
- (void)reloadData;
- (void)viewWillAppear:(BOOL)appear;
- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration;
@end

@implementation SKUILegacyNativeViewController

- (SKUILegacyNativeViewController)initWithData:(id)data fromOperation:(id)operation
{
  dataCopy = data;
  operationCopy = operation;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILegacyNativeViewController initWithData:fromOperation:];
  }

  v14.receiver = self;
  v14.super_class = SKUILegacyNativeViewController;
  v9 = [(SKUILegacyNativeViewController *)&v14 init];
  if (v9)
  {
    uRLRequest = [operationCopy URLRequest];
    v11 = [uRLRequest URL];
    activeURL = v9->_activeURL;
    v9->_activeURL = v11;

    objc_storeStrong(&v9->_defaultURL, v9->_activeURL);
    objc_storeStrong(&v9->_initialData, data);
    objc_storeStrong(&v9->_initialOperation, operation);
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
    _storePageViewController = [(SKUILegacyNativeViewController *)self _storePageViewController];
    initialData = self->_initialData;
    initialOperation = self->_initialOperation;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke;
    v13[3] = &unk_2781FA340;
    objc_copyWeak(&v14, &location);
    [_storePageViewController loadWithJSONData:initialData fromOperation:initialOperation completionBlock:v13];

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
    _storePageViewController2 = [(SKUILegacyNativeViewController *)self _storePageViewController];
    activeURL = self->_activeURL;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__SKUILegacyNativeViewController_reloadData__block_invoke_3;
    v11[3] = &unk_2781FA340;
    objc_copyWeak(&v12, &location);
    [_storePageViewController2 loadURL:activeURL withCompletionBlock:v11];

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
  _storePageViewController = [(SKUILegacyNativeViewController *)self _storePageViewController];
  view = [_storePageViewController view];

  [view bounds];
  [v5 setFrame:?];
  [view setAutoresizingMask:18];
  [v5 bounds];
  [view setFrame:?];
  [v5 addSubview:view];
  if (([MEMORY[0x277D75128] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    [(SKUIViewController *)self showDefaultNavigationItems];
  }

  [(SKUILegacyNativeViewController *)self setView:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  storePage = [(SKUIStorePageViewController *)self->_storePageViewController storePage];
  if (storePage || -[SKUIStorePageViewController isSkLoading](self->_storePageViewController, "isSkLoading") || [MEMORY[0x277D75128] shouldMakeUIForDefaultPNG])
  {
  }

  else
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    launchedToTest = [mEMORY[0x277D75128] launchedToTest];

    if ((launchedToTest & 1) == 0)
    {
      [(SKUILegacyNativeViewController *)self reloadData];
    }
  }

  [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  v8.receiver = self;
  v8.super_class = SKUILegacyNativeViewController;
  [(SKUIViewController *)&v8 viewWillAppear:appearCopy];
}

- (void)willAnimateRotationToInterfaceOrientation:(int64_t)orientation duration:(double)duration
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    [(SKUICategoryController *)self->_categoryController dismiss];
    [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  v9.receiver = self;
  v9.super_class = SKUILegacyNativeViewController;
  [(SKUIViewController *)&v9 willAnimateRotationToInterfaceOrientation:orientation duration:duration];
}

- (void)categoryController:(id)controller didSelectCategory:(id)category
{
  categoryCopy = category;
  v6 = [categoryCopy URL];
  activeURL = self->_activeURL;
  self->_activeURL = v6;

  navigationItem = [(SKUILegacyNativeViewController *)self navigationItem];
  name = [categoryCopy name];

  [navigationItem setTitle:name];
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
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUICategoryController *)v6 setClientContext:clientContext];

    [(SKUICategoryController *)self->_categoryController setDelegate:self];
    v8 = self->_categoryController;
    operationQueue = [(SKUIViewController *)self operationQueue];
    [(SKUICategoryController *)v8 setOperationQueue:operationQueue];

    categoryController = self->_categoryController;
  }

  return categoryController;
}

- (void)_finishLoadWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  if (resultCopy)
  {
    _categoryController = [(SKUILegacyNativeViewController *)self _categoryController];
    category = [_categoryController category];

    if (!category)
    {
      storePage = [(SKUIStorePageViewController *)self->_storePageViewController storePage];
      v10 = [storePage valueForPageKey:@"categoryList"];
      v11 = [storePage valueForPageKey:@"categoryListUrl"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [[SKUICategory alloc] initWithCategoryDictionary:v10];
        [_categoryController setCategory:v12];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [_categoryController setCategory:0];
          objc_initWeak(&location, self);
          v13 = [MEMORY[0x277CBEBC0] URLWithString:v11];
          v16 = MEMORY[0x277D85DD0];
          v17 = 3221225472;
          v18 = __62__SKUILegacyNativeViewController__finishLoadWithResult_error___block_invoke;
          v19 = &unk_2781FA340;
          objc_copyWeak(&v20, &location);
          [_categoryController loadFromURL:v13 withCompletionBlock:&v16];

          objc_destroyWeak(&v20);
          objc_destroyWeak(&location);
        }
      }
    }

    v14 = [(SKUIStorePageViewController *)self->_storePageViewController storePage:v16];
    title = [v14 title];
    [(SKUILegacyNativeViewController *)self setTitle:title];

    [(SKUILegacyNativeViewController *)self _reloadNavigationItem];
  }

  if (errorCopy)
  {
    [(SKUIViewController *)self showError:errorCopy];
  }
}

void __62__SKUILegacyNativeViewController__finishLoadWithResult_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reloadNavigationItem];
}

- (void)_reloadNavigationItem
{
  navigationItem = [(SKUILegacyNativeViewController *)self navigationItem];
  [navigationItem setLeftItemsSupplementBackButton:1];
  [navigationItem setLeftBarButtonItem:0];
  [navigationItem setTitleView:0];
  _categoryController = [(SKUILegacyNativeViewController *)self _categoryController];
  category = [_categoryController category];
  children = [category children];
  v6 = [children count];

  if (v6)
  {
    clientContext = [(SKUIViewController *)self clientContext];
    v8 = SKUIUserInterfaceIdiom(clientContext);

    if (v8 == 1 && (-[SKUIStorePageViewController storePage](self->_storePageViewController, "storePage"), v9 = objc_claimAutoreleasedReturnValue(), [v9 valueForPageKey:@"categoryListUrl"], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, !v10))
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      statusBarOrientation = [mEMORY[0x277D75128] statusBarOrientation];

      if ((statusBarOrientation - 1) < 2)
      {
        v14 = 4;
      }

      else
      {
        v14 = 5;
      }

      [_categoryController setSegmentedControlLength:v14];
      [_categoryController setDefaultURL:self->_defaultURL];
      [_categoryController setSelectedURL:self->_activeURL];
      segmentedControl = [_categoryController segmentedControl];
      [segmentedControl sizeToFit];
      [navigationItem setTitleView:segmentedControl];
    }

    else
    {
      [_categoryController setSelectedURL:self->_activeURL];
      [_categoryController setDefaultURL:self->_defaultURL];
      segmentedControl = [_categoryController categoryButton];
      [navigationItem setLeftBarButtonItem:segmentedControl];
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
    clientContext = [(SKUIViewController *)self clientContext];
    [(SKUIStorePageViewController *)v6 setClientContext:clientContext];

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