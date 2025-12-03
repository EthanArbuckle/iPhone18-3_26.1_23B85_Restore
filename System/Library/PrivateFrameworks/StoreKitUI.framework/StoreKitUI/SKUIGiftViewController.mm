@interface SKUIGiftViewController
- (CGSize)preferredContentSize;
- (NSOperationQueue)operationQueue;
- (SKUIGiftViewController)initWithGift:(id)gift;
- (SKUIGiftViewControllerDelegate)giftDelegate;
- (id)_localizedString:(id)string;
- (unint64_t)supportedInterfaceOrientations;
- (void)_clientContextDidLoadWithContext:(id)context error:(id)error;
- (void)_configurationDidLoadWithResult:(BOOL)result error:(id)error;
- (void)_finishAuthenticateWithResponse:(id)response error:(id)error;
- (void)_finishGiftingWithResult:(BOOL)result;
- (void)_loadGiftConfiguration;
- (void)setClientContext:(id)context;
- (void)setOperationQueue:(id)queue;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SKUIGiftViewController

- (SKUIGiftViewController)initWithGift:(id)gift
{
  giftCopy = gift;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIGiftViewController initWithGift:];
  }

  v5 = [giftCopy copy];
  gift = self->_gift;
  self->_gift = v5;

  v7 = objc_alloc_init(MEMORY[0x277D75D28]);
  view = [v7 view];
  _systemBackgroundColor = [MEMORY[0x277D75348] _systemBackgroundColor];
  [view setBackgroundColor:_systemBackgroundColor];

  v13.receiver = self;
  v13.super_class = SKUIGiftViewController;
  v10 = [(SKUIGiftViewController *)&v13 initWithRootViewController:v7];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_placeholderViewController, v7);
    [(SKUIGiftViewController *)v11 setModalPresentationStyle:2];
  }

  return v11;
}

- (NSOperationQueue)operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setMaxConcurrentOperationCount:6];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (void)setClientContext:(id)context
{
  contextCopy = context;
  if (self->_clientContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(&self->_clientContext, context);
    placeholderViewController = self->_placeholderViewController;
    v7 = [(SKUIGiftViewController *)self _localizedString:@"GIFTING_FLOW_TITLE"];
    [(UIViewController *)placeholderViewController setTitle:v7];

    contextCopy = v8;
  }
}

- (void)setOperationQueue:(id)queue
{
  queueCopy = queue;
  if (self->_operationQueue != queueCopy)
  {
    v8 = queueCopy;
    objc_storeStrong(&self->_operationQueue, queue);
    rootViewController = self->_rootViewController;
    operationQueue = [(SKUIGiftViewController *)self operationQueue];
    [(SKUIGiftStepViewController *)rootViewController setOperationQueue:operationQueue];

    queueCopy = v8;
  }
}

- (CGSize)preferredContentSize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom != 1 || (([MEMORY[0x277D75DA0] keyWindow], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "bounds"), v7 = v6, v9 = v8, v11 = v10, v13 = v12, v5, v30.origin.x = v7, v30.origin.y = v9, v30.size.width = v11, v30.size.height = v13, Width = CGRectGetWidth(v30), v31.origin.x = v7, v31.origin.y = v9, v31.size.width = v11, v31.size.height = v13, v15 = CGRectGetHeight(v31), Width >= 1024.0) ? (v16 = v15 < 1024.0) : (v16 = 1), v16))
  {
    v28.receiver = self;
    v28.super_class = SKUIGiftViewController;
    [(SKUIGiftViewController *)&v28 preferredContentSize];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    navigationBar = [(SKUIGiftViewController *)self navigationBar];
    v22 = navigationBar;
    if (navigationBar)
    {
      [navigationBar frame];
      Height = CGRectGetHeight(v32);
    }

    else
    {
      Height = 0.0;
    }

    v24 = Height + 1045.0;
    v25 = Height + 904.0;
    if (v15 <= Width)
    {
      v20 = v25;
    }

    else
    {
      v20 = v24;
    }

    *&v18 = 784.0;
  }

  v26 = *&v18;
  v27 = v20;
  result.height = v27;
  result.width = v26;
  return result;
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

- (void)viewDidAppear:(BOOL)appear
{
  v8.receiver = self;
  v8.super_class = SKUIGiftViewController;
  [(SKUIGiftViewController *)&v8 viewDidAppear:appear];
  traitCollection = [(SKUIGiftViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    self->_initialBarStyle = [mEMORY[0x277D75128] statusBarStyle];

    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128]2 setStatusBarStyle:0];
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = SKUIGiftViewController;
  [(SKUIGiftViewController *)&v17 viewDidLoad];
  if (!self->_giftConfiguration)
  {
    v3 = objc_alloc_init(MEMORY[0x277D751E0]);
    [v3 setAction:sel__cancelButtonAction_];
    [v3 setTarget:self];
    v4 = [(SKUIGiftViewController *)self _localizedString:@"GIFTING_CANCEL_BUTTON"];
    [v3 setTitle:v4];

    topViewController = [(SKUIGiftViewController *)self topViewController];
    navigationItem = [topViewController navigationItem];
    [navigationItem setLeftBarButtonItem:v3];

    defaultStore = [MEMORY[0x277D69A20] defaultStore];
    activeAccount = [defaultStore activeAccount];

    if (activeAccount)
    {
      gift = self->_gift;
      accountName = [activeAccount accountName];
      [(SKUIGift *)gift setSenderEmailAddress:accountName];

      [(SKUIGiftViewController *)self _loadGiftConfiguration];
    }

    else
    {
      objc_initWeak(&location, self);
      v11 = objc_alloc(MEMORY[0x277D69A50]);
      contextForSignIn = [MEMORY[0x277D69A58] contextForSignIn];
      v13 = [v11 initWithAuthenticationContext:contextForSignIn];

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__SKUIGiftViewController_viewDidLoad__block_invoke;
      v14[3] = &unk_2781FA2F0;
      objc_copyWeak(&v15, &location);
      [v13 startWithAuthenticateResponseBlock:v14];
      objc_destroyWeak(&v15);

      objc_destroyWeak(&location);
    }
  }
}

void __37__SKUIGiftViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKUIGiftViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __37__SKUIGiftViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _finishAuthenticateWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = SKUIGiftViewController;
  [(SKUIGiftViewController *)&v7 viewWillDisappear:disappear];
  traitCollection = [(SKUIGiftViewController *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (!userInterfaceIdiom)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] setStatusBarStyle:self->_initialBarStyle];
  }
}

- (void)_clientContextDidLoadWithContext:(id)context error:(id)error
{
  if (context)
  {
    [(SKUIGiftViewController *)self setClientContext:context, error];

    [(SKUIGiftViewController *)self _loadGiftConfiguration];
  }

  else
  {
    NSLog(&cfstr_Error.isa, a2, error);

    [(SKUIGiftViewController *)self _finishGiftingWithResult:0];
  }
}

- (void)_configurationDidLoadWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  v15[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (resultCopy)
  {
    v7 = [[SKUIGiftComposeViewController alloc] initWithGift:self->_gift configuration:self->_giftConfiguration];
    rootViewController = self->_rootViewController;
    self->_rootViewController = v7;

    v9 = self->_rootViewController;
    operationQueue = [(SKUIGiftViewController *)self operationQueue];
    [(SKUIGiftStepViewController *)v9 setOperationQueue:operationQueue];

    v15[0] = self->_rootViewController;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SKUIGiftViewController *)self setViewControllers:v11];
  }

  else
  {
    if (![SKUINetworkErrorViewController canDisplayError:errorCopy])
    {
      NSLog(&cfstr_Error.isa, errorCopy);
      [(SKUIGiftViewController *)self _finishGiftingWithResult:0];
      goto LABEL_7;
    }

    v11 = [[SKUINetworkErrorViewController alloc] initWithError:errorCopy];
    [(SKUINetworkErrorViewController *)v11 setClientContext:self->_clientContext];
    v14 = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    [(SKUIGiftViewController *)self setViewControllers:v12];
  }

LABEL_7:
  placeholderViewController = self->_placeholderViewController;
  self->_placeholderViewController = 0;
}

- (void)_finishAuthenticateWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (responseCopy && [responseCopy authenticateResponseType] == 4 && (objc_msgSend(responseCopy, "authenticatedAccount"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isManagedAppleID"), v7, !v8))
  {
    gift = self->_gift;
    authenticatedAccount = [responseCopy authenticatedAccount];
    accountName = [authenticatedAccount accountName];
    [(SKUIGift *)gift setSenderEmailAddress:accountName];

    [(SKUIGiftViewController *)self _loadGiftConfiguration];
  }

  else
  {
    [(SKUIGiftViewController *)self _configurationDidLoadWithResult:0 error:errorCopy];
  }
}

- (void)_finishGiftingWithResult:(BOOL)result
{
  resultCopy = result;
  WeakRetained = objc_loadWeakRetained(&self->_giftDelegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_giftDelegate);
    [v7 giftViewController:self didFinishWithResult:resultCopy];
  }

  else
  {

    [(SKUIGiftViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)_loadGiftConfiguration
{
  objc_initWeak(&location, self);
  if (self->_clientContext)
  {
    v3 = [SKUIGiftConfiguration alloc];
    operationQueue = [(SKUIGiftViewController *)self operationQueue];
    v5 = [(SKUIGiftConfiguration *)v3 initWithOperationQueue:operationQueue clientContext:self->_clientContext];
    giftConfiguration = self->_giftConfiguration;
    self->_giftConfiguration = v5;

    v7 = self->_giftConfiguration;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke;
    v12[3] = &unk_2781FA340;
    objc_copyWeak(&v13, &location);
    [(SKUIGiftConfiguration *)v7 loadConfigurationWithCompletionBlock:v12];
    objc_destroyWeak(&v13);
  }

  else
  {
    v8 = objc_alloc_init(SKUIReloadConfigurationOperation);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_3;
    v10[3] = &unk_2781FA0F0;
    objc_copyWeak(&v11, &location);
    [(SKUIReloadConfigurationOperation *)v8 setOutputBlock:v10];
    operationQueue2 = [(SKUIGiftViewController *)self operationQueue];
    [operationQueue2 addOperation:v8];

    objc_destroyWeak(&v11);
  }

  objc_destroyWeak(&location);
}

void __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_2;
  block[3] = &unk_2781FA318;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  v8 = v5;
  v6 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v9);
}

void __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _configurationDidLoadWithResult:*(a1 + 48) error:*(a1 + 32)];
}

void __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_4;
  block[3] = &unk_2781FA368;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __48__SKUIGiftViewController__loadGiftConfiguration__block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[SKUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _clientContextDidLoadWithContext:v3 error:*(a1 + 40)];
}

- (id)_localizedString:(id)string
{
  stringCopy = string;
  clientContext = self->_clientContext;
  if (clientContext)
  {
    v6 = [(SKUIClientContext *)clientContext localizedStringForKey:stringCopy inTable:@"Gifting"];
  }

  else
  {
    v7 = SKUIBundle();
    v6 = [v7 localizedStringForKey:stringCopy value:&stru_2827FFAC8 table:0];
  }

  return v6;
}

- (SKUIGiftViewControllerDelegate)giftDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_giftDelegate);

  return WeakRetained;
}

- (void)initWithGift:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftViewController initWithGift:]";
}

@end