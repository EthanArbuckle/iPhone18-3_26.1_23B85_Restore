@interface SKUIStorePageViewController
+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder;
- (BOOL)performTestWithName:(id)name options:(id)options;
- (BOOL)sectionsViewController:(id)controller showProductPageForItem:(id)item;
- (BOOL)sectionsViewController:(id)controller showStorePageForURL:(id)l;
- (NSOperationQueue)operationQueue;
- (SKUIStorePageDelegate)delegate;
- (SKUIStorePageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)_colorScheme;
- (id)_sectionsViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)_loadWithOperation:(id)operation completionBlock:(id)block;
- (void)_metricsEnterEventNotification:(id)notification;
- (void)_recordMetricsPageEvent:(id)event forStorePage:(id)page;
- (void)_reloadStorePage;
- (void)_runPerformanceTestAfterIdle;
- (void)_runPerformanceTestAfterPageLoad;
- (void)_runScrollTestWithName:(id)name options:(id)options;
- (void)_setMetricsController:(id)controller;
- (void)_setStorePage:(id)page error:(id)error;
- (void)_showProductPage:(id)page withPageEvent:(id)event;
- (void)cancelPageLoad;
- (void)dealloc;
- (void)decodeRestorableStateWithCoder:(id)coder;
- (void)didRotateFromInterfaceOrientation:(int64_t)orientation;
- (void)encodeRestorableStateWithCoder:(id)coder;
- (void)loadURL:(id)l withCompletionBlock:(id)block;
- (void)loadURL:(id)l withDataConsumer:(id)consumer completionBlock:(id)block;
- (void)loadURLRequest:(id)request withCompletionBlock:(id)block;
- (void)loadURLRequest:(id)request withDataConsumer:(id)consumer completionBlock:(id)block;
- (void)loadView;
- (void)loadWithJSONData:(id)data fromOperation:(id)operation completionBlock:(id)block;
- (void)sectionsViewControllerDidDismissOverlayController:(id)controller;
- (void)setMetricsController:(id)controller;
- (void)setRefreshControl:(id)control;
- (void)setStorePage:(id)page;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKUIStorePageViewController

- (SKUIStorePageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIStorePageViewController initWithNibName:bundle:];
  }

  v13.receiver = self;
  v13.super_class = SKUIStorePageViewController;
  v8 = [(SKUIStorePageViewController *)&v13 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    [(SKUIStorePageViewController *)v8 setRestorationClass:objc_opt_class()];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    [(SKUIStorePageViewController *)v8 setRestorationIdentifier:v10];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__metricsEnterEventNotification_ name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SKUIMetricsDidRecordEnterEventNotification" object:0];
  [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setDelegate:0];

  v4.receiver = self;
  v4.super_class = SKUIStorePageViewController;
  [(SKUIStorePageViewController *)&v4 dealloc];
}

- (void)cancelPageLoad
{
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)loadURL:(id)l withCompletionBlock:(id)block
{
  v6 = MEMORY[0x277CBABA0];
  blockCopy = block;
  lCopy = l;
  v9 = [[v6 alloc] initWithURL:lCopy];

  [(SKUIStorePageViewController *)self loadURLRequest:v9 withCompletionBlock:blockCopy];
}

- (void)loadURL:(id)l withDataConsumer:(id)consumer completionBlock:(id)block
{
  v8 = MEMORY[0x277CBABA0];
  blockCopy = block;
  consumerCopy = consumer;
  lCopy = l;
  v12 = [[v8 alloc] initWithURL:lCopy];

  [(SKUIStorePageViewController *)self loadURLRequest:v12 withDataConsumer:consumerCopy completionBlock:blockCopy];
}

- (void)loadURLRequest:(id)request withCompletionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = +[(SSVURLDataConsumer *)SKUIStorePageDataConsumer];
  [(SKUIStorePageViewController *)self loadURLRequest:requestCopy withDataConsumer:v8 completionBlock:blockCopy];
}

- (void)loadURLRequest:(id)request withDataConsumer:(id)consumer completionBlock:(id)block
{
  requestCopy = request;
  consumerCopy = consumer;
  blockCopy = block;
  v10 = requestCopy;
  if (requestCopy)
  {
    if (consumerCopy)
    {
      goto LABEL_6;
    }

    v11 = @"nil consumer";
  }

  else
  {
    v11 = @"nil request";
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:v11];
  v10 = requestCopy;
LABEL_6:
  if (self->_lastRequest != v10)
  {
    v12 = [(NSURLRequest *)requestCopy copy];
    lastRequest = self->_lastRequest;
    self->_lastRequest = v12;
  }

  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = v15;

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  v18 = [objc_alloc(MEMORY[0x277D69CD8]) initWithURLRequest:requestCopy];
  [v18 setDataConsumer:consumerCopy];
  v19 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"sfsuffix"];
  [v18 setStoreFrontSuffix:v19];

  [(SKUIStorePageViewController *)self _loadWithOperation:v18 completionBlock:blockCopy];
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:4];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setMetricsController:(id)controller
{
  metricsController = self->_metricsController;
  self->_metricsController = 0;
  controllerCopy = controller;

  [(SKUIStorePageViewController *)self _setMetricsController:controllerCopy];
}

- (void)setRefreshControl:(id)control
{
  controlCopy = control;
  refreshControl = self->_refreshControl;
  if (refreshControl != controlCopy)
  {
    v12 = controlCopy;
    [(UIRefreshControl *)refreshControl removeFromSuperview];
    objc_storeStrong(&self->_refreshControl, control);
    [(UIRefreshControl *)self->_refreshControl setAutoresizingMask:2];
    collectionView = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
    if (collectionView)
    {
      [(UIRefreshControl *)self->_refreshControl frame];
      v9 = v8;
      v11 = v10;
      [collectionView bounds];
      [(UIRefreshControl *)self->_refreshControl setFrame:v9, v11];
      [collectionView _addContentSubview:self->_refreshControl atBack:1];
    }

    controlCopy = v12;
  }

  MEMORY[0x2821F96F8](refreshControl, controlCopy);
}

- (void)setStorePage:(id)page
{
  if (self->_storePage != page)
  {
    v4 = [page copy];
    storePage = self->_storePage;
    self->_storePage = v4;

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController dismissOverlays];
    [(SKUIStorePageViewController *)self _reloadStorePage];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SKUIApplicationPageDidDisplayNotification" object:self];
  }
}

- (void)decodeRestorableStateWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  [(SKUIStorePageViewController *)self setTitle:v5];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"consumerClass"];
  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
  lastRequest = self->_lastRequest;
  self->_lastRequest = v8;

  self->_loadOnAppear = self->_lastRequest != 0;
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorScheme"];
  placeholderColorScheme = self->_placeholderColorScheme;
  self->_placeholderColorScheme = v10;

  _sectionsViewController = [(SKUIStorePageViewController *)self _sectionsViewController];
  SKUIDecodeRestorableStateWithCoder(coderCopy, @"sectionsVC", _sectionsViewController);
  _colorScheme = [(SKUIStorePageViewController *)self _colorScheme];
  [_sectionsViewController setColorScheme:_colorScheme];

  v14.receiver = self;
  v14.super_class = SKUIStorePageViewController;
  [(SKUIStorePageViewController *)&v14 decodeRestorableStateWithCoder:coderCopy];
}

- (void)didRotateFromInterfaceOrientation:(int64_t)orientation
{
  metricsController = self->_metricsController;
  v6 = SKUIMetricsWindowOrientationForInterfaceOrientation([(SKUIStorePageViewController *)self interfaceOrientation]);
  [(SKUIMetricsController *)metricsController setWindowOrientation:v6];

  v7.receiver = self;
  v7.super_class = SKUIStorePageViewController;
  [(SKUIStorePageViewController *)&v7 didRotateFromInterfaceOrientation:orientation];
}

- (void)encodeRestorableStateWithCoder:(id)coder
{
  sectionsViewController = self->_sectionsViewController;
  coderCopy = coder;
  SKUIEncodeRestorableStateWithCoder(coderCopy, @"sectionsVC", sectionsViewController);
  _colorScheme = [(SKUIStorePageViewController *)self _colorScheme];
  [coderCopy encodeObject:_colorScheme forKey:@"colorScheme"];

  title = [(SKUIStorePageViewController *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  [coderCopy encodeObject:self->_lastDataConsumerClassName forKey:@"consumerClass"];
  [coderCopy encodeObject:self->_lastRequest forKey:@"request"];
  v8.receiver = self;
  v8.super_class = SKUIStorePageViewController;
  [(SKUIStorePageViewController *)&v8 encodeRestorableStateWithCoder:coderCopy];
}

- (void)loadView
{
  v6 = objc_alloc_init(MEMORY[0x277D75D18]);
  _sectionsViewController = [(SKUIStorePageViewController *)self _sectionsViewController];
  view = [_sectionsViewController view];
  [view setAutoresizingMask:18];
  [v6 bounds];
  [view setFrame:?];
  [v6 addSubview:view];
  if (self->_refreshControl)
  {
    collectionView = [_sectionsViewController collectionView];
    [collectionView _addContentSubview:self->_refreshControl atBack:1];
  }

  [(SKUIStorePageViewController *)self setView:v6];
}

- (unint64_t)supportedInterfaceOrientations
{
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    return 30;
  }

  if (SKUIAllowsLandscapePhone())
  {
    return 26;
  }

  return 2;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (self->_loadOnAppear)
  {
    self->_loadOnAppear = 0;
    if (!self->_storePage && !self->_loadOperation)
    {
      lastRequest = self->_lastRequest;
      if (lastRequest)
      {
        lastDataConsumerClassName = self->_lastDataConsumerClassName;
        if (lastDataConsumerClassName && ([NSClassFromString(lastDataConsumerClassName) consumer], v7 = objc_claimAutoreleasedReturnValue(), lastRequest = self->_lastRequest, v7))
        {
          v8 = v7;
          [(SKUIStorePageViewController *)self loadURLRequest:lastRequest withDataConsumer:v7 completionBlock:0];
        }

        else
        {
          [(SKUIStorePageViewController *)self loadURLRequest:lastRequest withCompletionBlock:0];
        }
      }
    }
  }

  else if (self->_metricsController)
  {
    lastPageEvent = self->_lastPageEvent;
    if (lastPageEvent)
    {
      date = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

      [(SKUIMetricsController *)self->_metricsController recordEvent:self->_lastPageEvent];
    }
  }

  v11.receiver = self;
  v11.super_class = SKUIStorePageViewController;
  [(SKUIStorePageViewController *)&v11 viewWillAppear:appearCopy];
}

- (BOOL)sectionsViewController:(id)controller showProductPageForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 storePage:self showProductPageForItem:itemCopy];
  }

  return v7 & 1;
}

- (BOOL)sectionsViewController:(id)controller showStorePageForURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 storePage:self showStorePageForURL:lCopy];
  }

  return v7 & 1;
}

- (void)sectionsViewControllerDidDismissOverlayController:(id)controller
{
  if (SKUIViewControllerIsVisible(self))
  {
    if (self->_metricsController)
    {
      lastPageEvent = self->_lastPageEvent;
      if (lastPageEvent)
      {
        date = [MEMORY[0x277CBEAA8] date];
        [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

        metricsController = self->_metricsController;
        v7 = self->_lastPageEvent;

        [(SKUIMetricsController *)metricsController recordEvent:v7];
      }
    }
  }
}

- (BOOL)performTestWithName:(id)name options:(id)options
{
  optionsCopy = options;
  v7 = [name copy];
  performanceTestName = self->_performanceTestName;
  self->_performanceTestName = v7;

  v9 = [optionsCopy copy];
  performanceTestOptions = self->_performanceTestOptions;
  self->_performanceTestOptions = v9;

  return 1;
}

+ (id)viewControllerWithRestorationIdentifierPath:(id)path coder:(id)coder
{
  v4 = objc_alloc_init(self);
  v5 = +[SKUIStateRestorationContext sharedContext];
  clientContext = [v5 clientContext];
  [v4 setClientContext:clientContext];

  return v4;
}

- (void)_metricsEnterEventNotification:(id)notification
{
  if (SKUIViewControllerIsVisible(self) && self->_lastPageEvent)
  {
    presentedViewController = [(SKUIStorePageViewController *)self presentedViewController];
    if (presentedViewController)
    {
    }

    else if (![(SKUIStorePageSectionsViewController *)self->_sectionsViewController isDisplayingOverlays])
    {
      lastPageEvent = self->_lastPageEvent;
      date = [MEMORY[0x277CBEAA8] date];
      [(SSMetricsPageEvent *)lastPageEvent setOriginalTimeUsingDate:date];

      metricsController = self->_metricsController;
      v8 = self->_lastPageEvent;

      [(SKUIMetricsController *)metricsController recordEvent:v8];
    }
  }
}

- (void)loadWithJSONData:(id)data fromOperation:(id)operation completionBlock:(id)block
{
  blockCopy = block;
  operationCopy = operation;
  dataCopy = data;
  obj = [operationCopy URLRequest];
  if (self->_lastRequest != obj)
  {
    objc_storeStrong(&self->_lastRequest, obj);
  }

  lastDataConsumerClassName = self->_lastDataConsumerClassName;
  self->_lastDataConsumerClassName = @"SKUIStorePageDataConsumer";

  lastPageEvent = self->_lastPageEvent;
  self->_lastPageEvent = 0;

  v13 = [objc_alloc(MEMORY[0x277D69CD8]) initWithData:dataCopy fromOperation:operationCopy];
  v14 = +[(SSVURLDataConsumer *)SKUIStorePageDataConsumer];
  [v13 setDataConsumer:v14];

  [(SKUIStorePageViewController *)self _loadWithOperation:v13 completionBlock:blockCopy];
}

- (id)_colorScheme
{
  storePage = self->_storePage;
  if (storePage)
  {
    uber = [(SKUIStorePage *)storePage uber];
    v5 = uber;
    if (!uber || ([uber colorScheme], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      backgroundArtwork = [(SKUIStorePage *)self->_storePage backgroundArtwork];

      if (backgroundArtwork)
      {
        v6 = objc_alloc_init(SKUIColorScheme);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = self->_placeholderColorScheme;
  }

  return v6;
}

- (void)_loadWithOperation:(id)operation completionBlock:(id)block
{
  operationCopy = operation;
  blockCopy = block;
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  [(SSVLoadURLOperation *)self->_loadOperation cancel];
  objc_storeStrong(&self->_loadOperation, operation);
  objc_initWeak(&location, self);
  loadOperation = self->_loadOperation;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke;
  v18[3] = &unk_2781FB450;
  objc_copyWeak(&v20, &location);
  v10 = blockCopy;
  v19 = v10;
  [(SSVLoadURLOperation *)loadOperation setOutputBlock:v18];
  if (!self->_metricsController)
  {
    clientContext = self->_clientContext;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_3;
    v16 = &unk_2781FB478;
    objc_copyWeak(&v17, &location);
    [(SKUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:&v13];
    objc_destroyWeak(&v17);
  }

  v12 = [(SKUIStorePageViewController *)self operationQueue:v13];
  [v12 addOperation:self->_loadOperation];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_2;
  v9[3] = &unk_2781FB428;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v11 = v6;
  v12 = *(a1 + 32);
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_2(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _setStorePage:v4 error:*(a1 + 40)];

  v3 = *(a1 + 48);
  if (v3)
  {
    (*(v3 + 16))(v3, v4 != 0, *(a1 + 40));
  }
}

void __66__SKUIStorePageViewController__loadWithOperation_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setMetricsController:v3];
}

- (void)_recordMetricsPageEvent:(id)event forStorePage:(id)page
{
  eventCopy = event;
  pageCopy = page;
  v9 = pageCopy;
  if (self->_metricsController)
  {
    if (self->_storePage == pageCopy)
    {
      navigationController = [(SKUIStorePageViewController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      v12 = [viewControllers count];

      if (v12 >= 2)
      {
        [eventCopy setNavigationType:*MEMORY[0x277D6A4C0]];
      }

      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      [eventCopy setPageRenderTime:?];

      uber = [(SKUIStorePage *)v9 uber];
      [eventCopy setUbered:uber != 0];

      if (![(SKUIStorePageSectionsViewController *)self->_sectionsViewController isDisplayingOverlays])
      {
        [(SKUIMetricsController *)self->_metricsController recordEvent:eventCopy];
      }

      objc_storeStrong(&self->_lastPageEvent, event);
    }
  }

  else
  {
    objc_initWeak(&location, self);
    clientContext = self->_clientContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__SKUIStorePageViewController__recordMetricsPageEvent_forStorePage___block_invoke;
    v16[3] = &unk_2781FB4A0;
    objc_copyWeak(&v19, &location);
    v17 = eventCopy;
    v18 = v9;
    [(SKUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v16];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __68__SKUIStorePageViewController__recordMetricsPageEvent_forStorePage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setMetricsController:v3];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 _recordMetricsPageEvent:*(a1 + 32) forStorePage:*(a1 + 40)];
  }
}

- (void)_reloadStorePage
{
  metricsController = self->_metricsController;
  metricsConfiguration = [(SKUIStorePage *)self->_storePage metricsConfiguration];
  [(SKUIMetricsController *)metricsController setPageConfiguration:metricsConfiguration];

  v5 = self->_metricsController;
  pageURL = [(SKUIStorePage *)self->_storePage pageURL];
  absoluteString = [pageURL absoluteString];
  [(SKUIMetricsController *)v5 setPageURL:absoluteString];

  sectionsViewController = self->_sectionsViewController;
  _colorScheme = [(SKUIStorePageViewController *)self _colorScheme];
  [(SKUIStorePageSectionsViewController *)sectionsViewController setColorScheme:_colorScheme];

  v10 = self->_sectionsViewController;
  pageComponents = [(SKUIStorePage *)self->_storePage pageComponents];
  [(SKUIStorePageSectionsViewController *)v10 setSectionsWithPageComponents:pageComponents];
}

- (void)_runPerformanceTestAfterIdle
{
  if ([(NSString *)self->_performanceTestName hasPrefix:@"Switch"])
  {
    v14 = SKUIViewControllerGetAncestorTabBarController(self);
    v3 = [(NSDictionary *)self->_performanceTestOptions objectForKey:@"destinationTabIndex"];
    integerValue = [v3 integerValue];

    if ([v14 selectedIndex] != integerValue)
    {
      viewControllers = [v14 viewControllers];
      v6 = [viewControllers objectAtIndex:integerValue];

      topViewController = [v6 topViewController];
      v8 = objc_opt_respondsToSelector();
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      v10 = mEMORY[0x277D75128];
      performanceTestName = self->_performanceTestName;
      if (v8)
      {
        [mEMORY[0x277D75128] startedTest:performanceTestName];

        [topViewController performTestWithName:self->_performanceTestName options:self->_performanceTestOptions];
        [v14 setSelectedIndex:integerValue];
      }

      else
      {
        [mEMORY[0x277D75128] failedTest:performanceTestName];
      }

      v12 = self->_performanceTestName;
      self->_performanceTestName = 0;

      performanceTestOptions = self->_performanceTestOptions;
      self->_performanceTestOptions = 0;
    }
  }
}

- (void)_runPerformanceTestAfterPageLoad
{
  if ([(NSString *)self->_performanceTestName hasPrefix:@"launch"])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] finishedTest:self->_performanceTestName extraResults:0];

    performanceTestName = self->_performanceTestName;
    self->_performanceTestName = 0;

    performanceTestOptions = self->_performanceTestOptions;
    self->_performanceTestOptions = 0;
LABEL_3:

    return;
  }

  if ([(NSString *)self->_performanceTestName hasPrefix:@"Scroll"])
  {
    v6 = dispatch_time(0, 2000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__SKUIStorePageViewController__runPerformanceTestAfterPageLoad__block_invoke;
    block[3] = &unk_2781F80F0;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x277D85CD0], block);
    return;
  }

  if ([(NSString *)self->_performanceTestName hasPrefix:@"Switch"])
  {
    v7 = [(NSDictionary *)self->_performanceTestOptions objectForKey:@"destinationTabIndex"];
    integerValue = [v7 integerValue];

    v12 = SKUIViewControllerGetAncestorTabBarController(self);
    if ([(NSDictionary *)v12 selectedIndex]== integerValue)
    {
      mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
      [mEMORY[0x277D75128]2 finishedTest:self->_performanceTestName extraResults:0];

      v10 = self->_performanceTestName;
      self->_performanceTestName = 0;

      v11 = self->_performanceTestOptions;
      self->_performanceTestOptions = 0;
    }

    performanceTestOptions = v12;
    goto LABEL_3;
  }
}

void __63__SKUIStorePageViewController__runPerformanceTestAfterPageLoad__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _runScrollTestWithName:*(*(a1 + 32) + 1064) options:*(*(a1 + 32) + 1072)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1064);
  *(v2 + 1064) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 1072);
  *(v4 + 1072) = 0;
}

- (void)_runScrollTestWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  collectionView = [(SKUIStorePageSectionsViewController *)self->_sectionsViewController collectionView];
  v8 = collectionView;
  if (([collectionView isScrollEnabled] & 1) == 0)
  {
    v9 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v10 = [collectionView cellForItemAtIndexPath:v9];

    subviews = [v10 subviews];
    v12 = [subviews mutableCopy];

    v13 = [v12 count];
    v8 = collectionView;
    if (v13 >= 1)
    {
      v14 = v13;
      v15 = 0;
      while (1)
      {
        v8 = [v12 objectAtIndex:v15];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        subviews2 = [v8 subviews];
        if (subviews2)
        {
          [v12 addObjectsFromArray:subviews2];
          v14 = [v12 count];
        }

        if (++v15 >= v14)
        {
          v8 = collectionView;
          goto LABEL_10;
        }
      }
    }

LABEL_10:
  }

  v17 = [optionsCopy objectForKey:@"iterations"];
  intValue = [v17 intValue];
  v19 = [optionsCopy objectForKey:@"offset"];
  intValue2 = [v19 intValue];
  [v8 contentSize];
  [v8 _performScrollTest:nameCopy iterations:intValue delta:intValue2 length:v21];
}

- (id)_sectionsViewController
{
  sectionsViewController = self->_sectionsViewController;
  if (!sectionsViewController)
  {
    v4 = objc_alloc_init(SKUIStorePageSectionsViewController);
    v5 = self->_sectionsViewController;
    self->_sectionsViewController = v4;

    v6 = self->_sectionsViewController;
    clientContext = [(SKUIStorePageViewController *)self clientContext];
    [(SKUIViewController *)v6 setClientContext:clientContext];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setDelegate:self];
    v8 = self->_sectionsViewController;
    operationQueue = [(SKUIStorePageViewController *)self operationQueue];
    [(SKUIViewController *)v8 setOperationQueue:operationQueue];

    v10 = self->_sectionsViewController;
    _colorScheme = [(SKUIStorePageViewController *)self _colorScheme];
    [(SKUIStorePageSectionsViewController *)v10 setColorScheme:_colorScheme];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setMetricsController:self->_metricsController];
    storePage = self->_storePage;
    if (storePage)
    {
      v13 = self->_sectionsViewController;
      pageComponents = [(SKUIStorePage *)storePage pageComponents];
      [(SKUIStorePageSectionsViewController *)v13 setSectionsWithPageComponents:pageComponents];
    }

    [(SKUIStorePageViewController *)self addChildViewController:self->_sectionsViewController];
    sectionsViewController = self->_sectionsViewController;
  }

  return sectionsViewController;
}

- (void)_setMetricsController:(id)controller
{
  controllerCopy = controller;
  if (!self->_metricsController)
  {
    v19 = controllerCopy;
    objc_storeStrong(&self->_metricsController, controller);
    metricsController = self->_metricsController;
    metricsConfiguration = [(SKUIStorePage *)self->_storePage metricsConfiguration];
    [(SKUIMetricsController *)metricsController setPageConfiguration:metricsConfiguration];

    v8 = self->_metricsController;
    v9 = [(SKUIClientContext *)self->_clientContext metricsPageContextForViewController:self];
    [(SKUIMetricsController *)v8 setPageContext:v9];

    v10 = self->_metricsController;
    pageURL = [(SKUIStorePage *)self->_storePage pageURL];
    absoluteString = [pageURL absoluteString];
    [(SKUIMetricsController *)v10 setPageURL:absoluteString];

    v13 = self->_metricsController;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v15 = SKUIMetricsWindowOrientationForInterfaceOrientation([mEMORY[0x277D75128] statusBarOrientation]);
    [(SKUIMetricsController *)v13 setWindowOrientation:v15];

    [(SKUIStorePageSectionsViewController *)self->_sectionsViewController setMetricsController:self->_metricsController];
    v16 = self->_metricsController;
    metricsConfiguration2 = [(SKUIStorePage *)self->_storePage metricsConfiguration];
    pingURLs = [metricsConfiguration2 pingURLs];
    [(SKUIMetricsController *)v16 pingURLs:pingURLs withClientContext:self->_clientContext];

    controllerCopy = v19;
  }
}

- (void)_setStorePage:(id)page error:(id)error
{
  pageCopy = page;
  productPage = [pageCopy productPage];
  if (productPage)
  {
    metricsPageEvent = [(SSVLoadURLOperation *)self->_loadOperation metricsPageEvent];
    [(SKUIStorePageViewController *)self _showProductPage:productPage withPageEvent:metricsPageEvent];
LABEL_10:

    goto LABEL_11;
  }

  pageType = [pageCopy pageType];
  v10 = [pageType isEqualToString:@"itml"];

  if (v10)
  {
    metricsPageEvent = [(SKUIStorePageViewController *)self clientContext];
    iTMLData = [pageCopy ITMLData];
    iTMLResponse = [pageCopy ITMLResponse];
    [metricsPageEvent sendOnPageResponseWithDocument:0 data:iTMLData URLResponse:iTMLResponse performanceMetrics:0];

LABEL_9:
    goto LABEL_10;
  }

  if (pageCopy)
  {
    objc_storeStrong(&self->_storePage, page);
    [(SKUIStorePageViewController *)self _reloadStorePage];
    metricsPageEvent2 = [(SSVLoadURLOperation *)self->_loadOperation metricsPageEvent];
    metricsPageEvent = metricsPageEvent2;
    if (metricsPageEvent2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__SKUIStorePageViewController__setStorePage_error___block_invoke;
      block[3] = &unk_2781F8680;
      block[4] = self;
      v19 = metricsPageEvent2;
      v20 = pageCopy;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    metricsController = self->_metricsController;
    metricsConfiguration = [(SKUIStorePage *)self->_storePage metricsConfiguration];
    pingURLs = [metricsConfiguration pingURLs];
    [(SKUIMetricsController *)metricsController pingURLs:pingURLs withClientContext:self->_clientContext];

    [(SKUIStorePageViewController *)self _runPerformanceTestAfterPageLoad];
    iTMLData = [MEMORY[0x277CCAB98] defaultCenter];
    [iTMLData postNotificationName:@"SKUIApplicationPageDidDisplayNotification" object:self];
    goto LABEL_9;
  }

LABEL_11:
  [(SSVLoadURLOperation *)self->_loadOperation setOutputBlock:0];
  loadOperation = self->_loadOperation;
  self->_loadOperation = 0;
}

- (void)_showProductPage:(id)page withPageEvent:(id)event
{
  pageCopy = page;
  eventCopy = event;
  item = [pageCopy item];
  itemKind = [item itemKind];

  if (SKUIItemKindIsSoftwareKind(itemKind) || itemKind == 5)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      [(SKUIStorePageSectionsViewController *)self->_sectionsViewController showOverlayWithProductPage:pageCopy metricsPageEvent:eventCopy];
    }

    else
    {
      v19 = [[SKUIIPhoneProductPageViewController alloc] initWithProductPage:pageCopy];
      clientContext = [(SKUIStorePageViewController *)self clientContext];
      [(SKUIViewController *)v19 setClientContext:clientContext];

      [(SKUIIPhoneProductPageViewController *)v19 configureMetricsWithPageEvent:eventCopy];
      navigationController = [(SKUIStorePageViewController *)self navigationController];
      viewControllers = [navigationController viewControllers];
      v23 = [viewControllers mutableCopy];

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __62__SKUIStorePageViewController__showProductPage_withPageEvent___block_invoke_2;
      v26[3] = &unk_2781FB4F0;
      v26[4] = self;
      v24 = [v23 indexOfObjectPassingTest:v26];
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [v23 addObject:v19];
      }

      else
      {
        [v23 replaceObjectAtIndex:v24 withObject:v19];
      }

      [navigationController setViewControllers:v23 animated:0];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __62__SKUIStorePageViewController__showProductPage_withPageEvent___block_invoke_3;
      block[3] = &unk_2781F80F0;
      block[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277CDD3A8]);
    [v10 setAutomaticallyDismisses:1];
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = MEMORY[0x277CCABB0];
    item2 = [pageCopy item];
    v14 = [v12 numberWithLongLong:{objc_msgSend(item2, "itemIdentifier")}];
    v15 = [v11 initWithObjectsAndKeys:{v14, *MEMORY[0x277CDD450], 0}];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__SKUIStorePageViewController__showProductPage_withPageEvent___block_invoke;
    v27[3] = &unk_2781FB4C8;
    v28 = v10;
    v16 = v10;
    [v16 loadProductWithParameters:v15 completionBlock:v27];
    [(SKUIStorePageViewController *)self presentViewController:v16 animated:1 completion:0];
  }
}

uint64_t __62__SKUIStorePageViewController__showProductPage_withPageEvent___block_invoke(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [*(result + 32) dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

- (SKUIStorePageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithNibName:bundle:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIStorePageViewController initWithNibName:bundle:]";
}

@end