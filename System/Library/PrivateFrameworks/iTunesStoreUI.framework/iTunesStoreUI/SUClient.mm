@interface SUClient
+ (id)imagePool;
+ (id)sharedClient;
+ (id)viewControllerFactory;
+ (void)setSharedClient:(id)client;
- (BOOL)_presentModalViewController:(id)controller animated:(BOOL)animated;
- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated;
- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated;
- (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated;
- (BOOL)openExternalURL:(id)l;
- (BOOL)openInternalURL:(id)l;
- (BOOL)openURL:(id)l inClientApplication:(id)application;
- (BOOL)sendActionForDialog:(id)dialog button:(id)button;
- (ISURLOperationPool)imagePool;
- (NSString)searchHintsURLBagKey;
- (NSString)searchURLBagKey;
- (SUClient)initWithClientInterface:(id)interface;
- (SUClientInterface)clientInterface;
- (SUImageCache)imageCache;
- (SUScriptExecutionContext)scriptExecutionContext;
- (id)_newAccountViewControllerForButtonAction:(id)action;
- (id)_newComposeReviewViewControllerForButtonAction:(id)action;
- (id)clientIdentifier;
- (id)queueSessionManager;
- (id)viewControllerFactory;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_bagDidLoadNotification:(id)notification;
- (void)_memoryWarningNotification:(id)notification;
- (void)_purgeCaches;
- (void)_reloadScriptExecutionContext;
- (void)dealloc;
- (void)setAssetTypes:(__CFArray *)types;
- (void)setClientIdentifier:(id)identifier;
- (void)setQueueSessionManager:(id)manager;
- (void)setSearchHintsURLBagKey:(id)key;
- (void)setSearchURLBagKey:(id)key;
- (void)setViewControllerFactory:(id)factory;
@end

@implementation SUClient

- (SUClient)initWithClientInterface:(id)interface
{
  v8.receiver = self;
  v8.super_class = SUClient;
  v4 = [(SUClient *)&v8 init];
  if (v4)
  {
    if (interface)
    {
      interfaceCopy = interface;
    }

    else
    {
      interfaceCopy = objc_alloc_init(SUClientInterface);
    }

    v4->_clientInterface = interfaceCopy;
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    if (![(SUClientInterface *)v4->_clientInterface localStoragePath])
    {
      [(SUClientInterface *)v4->_clientInterface setLocalStoragePath:+[SUWebViewManager defaultLocalStoragePath]];
    }

    +[SUDialogManager sharedInstance];
    +[SUNetworkObserver sharedInstance];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
    [defaultCenter addObserver:v4 selector:sel__memoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
    [defaultCenter addObserver:v4 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4718] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  assetTypes = self->_assetTypes;
  if (assetTypes)
  {
    CFRelease(assetTypes);
  }

  v5.receiver = self;
  v5.super_class = SUClient;
  [(SUClient *)&v5 dealloc];
}

+ (void)setSharedClient:(id)client
{
  _os_nospin_lock_lock();
  if (__SharedClient != client)
  {

    __SharedClient = client;
  }

  _os_nospin_lock_unlock();
}

+ (id)sharedClient
{
  _os_nospin_lock_lock();
  v2 = __SharedClient;
  _os_nospin_lock_unlock();
  return v2;
}

+ (id)imagePool
{
  sharedClient = [self sharedClient];

  return [sharedClient imagePool];
}

+ (id)viewControllerFactory
{
  sharedClient = [self sharedClient];

  return [sharedClient viewControllerFactory];
}

- (SUClientInterface)clientInterface
{
  [(NSLock *)self->_lock lock];
  v3 = self->_clientInterface;
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (id)clientIdentifier
{
  [(NSLock *)self->_lock lock];
  clientIdentifier = [(SUClientInterface *)self->_clientInterface clientIdentifier];
  [(NSLock *)self->_lock unlock];
  return clientIdentifier;
}

- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((v14[3] & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 1;
    goto LABEL_6;
  }

  v7 = [(SUClientDelegate *)self->_delegate client:self presentComposeReviewViewController:controller animated:animatedCopy];
  *(v14 + 24) = v7;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:self];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__SUClient_composeReviewWithViewController_animated___block_invoke;
  v11[3] = &unk_1E8165060;
  v11[5] = controller;
  v11[6] = &v13;
  v11[4] = v8;
  v12 = animatedCopy;
  [controller prepareWithCompletionBlock:v11];
  v9 = *(v14 + 24);
LABEL_6:
  _Block_object_dispose(&v13, 8);
  return v9 & 1;
}

uint64_t __53__SUClient_composeReviewWithViewController_animated___block_invoke(uint64_t a1, int a2)
{
  result = [*(a1 + 32) object];
  if (result)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    result = [*(result + 24) client:result presentModalViewController:*(a1 + 40) animated:*(a1 + 56)];
    *(*(*(a1 + 48) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUClientDelegate *)self->_delegate topViewControllerForClient:self];
    if (v5)
    {
      [v5 dismissAnimated:animatedCopy];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)enterAccountFlowWithViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SUClientDelegate *)self->_delegate client:self presentAccountViewController:controller animated:animatedCopy]& 1) != 0)
  {
    return 1;
  }

  delegate = self->_delegate;

  return [(SUClientDelegate *)delegate client:self presentModalViewController:controller animated:animatedCopy];
}

- (SUImageCache)imageCache
{
  result = self->_imageCache;
  if (!result)
  {
    result = objc_alloc_init(SUImageCache);
    self->_imageCache = result;
  }

  return result;
}

- (ISURLOperationPool)imagePool
{
  result = self->_imagePool;
  if (!result)
  {
    self->_imagePool = objc_alloc_init(MEMORY[0x1E69E4810]);
    v4 = objc_alloc_init(MEMORY[0x1E69E4798]);
    if (MGGetBoolAnswer())
    {
      [v4 setMaxConcurrentOperationCount:2];
    }

    [(ISURLOperationPool *)self->_imagePool setOperationQueue:v4];

    return self->_imagePool;
  }

  return result;
}

- (BOOL)openExternalURL:(id)l
{
  clientInterface = [(SUClient *)self clientInterface];

  return SUOpenExternalURL(l, clientInterface);
}

- (BOOL)openInternalURL:(id)l
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SUClientDelegate *)self->_delegate client:self openInternalURL:l]& 1) != 0)
  {
    return 1;
  }

  clientInterface = [(SUClient *)self clientInterface];

  return SUOpenExternalURL(l, clientInterface);
}

- (BOOL)openURL:(id)l inClientApplication:(id)application
{
  clientInterface = [(SUClient *)self clientInterface];

  return SUOpenURLInClient(l, application, clientInterface);
}

- (id)queueSessionManager
{
  [(NSLock *)self->_lock lock];
  queueSessionManager = [(SUClientInterface *)self->_clientInterface queueSessionManager];
  [(NSLock *)self->_lock unlock];
  return queueSessionManager;
}

- (SUScriptExecutionContext)scriptExecutionContext
{
  result = self->_scriptExecutionContext;
  if (!result)
  {
    result = objc_alloc_init(SUScriptExecutionContext);
    self->_scriptExecutionContext = result;
  }

  return result;
}

- (NSString)searchHintsURLBagKey
{
  [(NSLock *)self->_lock lock];
  v3 = [(SUClientInterface *)self->_clientInterface URLBagKeyForIdentifier:@"SUURLBagKeySearchHints"];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (NSString)searchURLBagKey
{
  [(NSLock *)self->_lock lock];
  v3 = [(SUClientInterface *)self->_clientInterface URLBagKeyForIdentifier:@"SUURLBagKeySearch"];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)sendActionForDialog:(id)dialog button:(id)button
{
  actionType = [button actionType];
  result = 0;
  if (actionType <= 4)
  {
    if (actionType != 1)
    {
      if (actionType != 3)
      {
        if (actionType == 4)
        {
          parameter = [button parameter];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            parameter = [MEMORY[0x1E695DFF8] URLWithString:parameter];
          }

          clientInterface = [(SUClient *)self clientInterface];

          return SUOpenExternalURL(parameter, clientInterface);
        }

        return result;
      }

      v15 = objc_alloc_init(MEMORY[0x1E69D4998]);
      [v15 setBuyParameters:{objc_msgSend(button, "parameter")}];
      purchaseManager = [(SUClientInterface *)[(SUClient *)self clientInterface] purchaseManager];
      v17 = objc_alloc_init(SUPurchaseBatch);
      [(SUPurchaseBatch *)v17 setPurchaseManager:purchaseManager];
      -[SUPurchaseBatch setPurchasesAndContinuationsFromPurchases:](v17, "setPurchasesAndContinuationsFromPurchases:", [MEMORY[0x1E695DEC8] arrayWithObject:v15]);
      [(SUPurchaseManager *)purchaseManager addPurchaseBatch:v17];

      return 1;
    }

    parameter2 = [button parameter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      parameter2 = [MEMORY[0x1E695DFF8] URLWithString:parameter2];
    }

    schemeSwizzledURL = [parameter2 schemeSwizzledURL];
    urlType = [button urlType];
    if (urlType != 2)
    {
      if (urlType != 1)
      {
        [(SUClient *)self openInternalURL:schemeSwizzledURL];
        return 1;
      }

      v13 = [(SUClient *)self _newAccountViewControllerForButtonAction:button];
      v14 = [(SUClient *)self enterAccountFlowWithViewController:v13 animated:1];
LABEL_24:
      v18 = v14;

      return v18;
    }

    v19 = objc_alloc(MEMORY[0x1E69D4970]);
    v20 = [v19 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", schemeSwizzledURL)}];
    [v20 setITunesStoreRequest:1];
    [v20 setShouldProcessProtocol:1];
    v21 = [objc_alloc(MEMORY[0x1E69D4A00]) initWithRequestProperties:v20];
    [v21 start];

    return 0;
  }

  if (actionType != 5)
  {
    if (actionType == 8)
    {
      v13 = [(SUClient *)self _newComposeReviewViewControllerForButtonAction:button];
      v14 = [(SUClient *)self composeReviewWithViewController:v13 animated:1];
      goto LABEL_24;
    }

    if (actionType != 9)
    {
      return result;
    }

    [MEMORY[0x1E69D48D0] retryAllRestoreDownloads];
    return 0;
  }

  return [(SUClient *)self dismissTopViewControllerAnimated:1];
}

- (void)setAssetTypes:(__CFArray *)types
{
  assetTypes = self->_assetTypes;
  if (assetTypes != types)
  {
    if (assetTypes)
    {
      CFRelease(assetTypes);
    }

    self->_assetTypes = types;
    if (types)
    {

      CFRetain(types);
    }
  }
}

- (void)setClientIdentifier:(id)identifier
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setClientIdentifier:identifier];
  [(NSLock *)self->_lock unlock];
  currentClient = [MEMORY[0x1E69E4730] currentClient];

  [currentClient setAppleClientApplication:identifier];
}

- (void)setQueueSessionManager:(id)manager
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setQueueSessionManager:manager];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setSearchHintsURLBagKey:(id)key
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setURLBagKey:key forIdentifier:@"SUURLBagKeySearchHints"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setSearchURLBagKey:(id)key
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setURLBagKey:key forIdentifier:@"SUURLBagKeySearch"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setViewControllerFactory:(id)factory
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setViewControllerFactory:factory];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)viewControllerFactory
{
  [(NSLock *)self->_lock lock];
  viewControllerFactory = [(SUClientInterface *)self->_clientInterface viewControllerFactory];
  [(NSLock *)self->_lock unlock];
  return viewControllerFactory;
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v12 = 138412290;
    v13 = objc_opt_class();
    LODWORD(v11) = 12;
    v10 = &v12;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v12, v11}];
      free(v8);
      v10 = v9;
      SSFileLog();
    }
  }

  [(SUClient *)self _purgeCaches];
}

- (void)_bagDidLoadNotification:(id)notification
{
  v4 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  v6 = MEMORY[0x1E695E4D0];
  if (!v5)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"ISGeniusLookupAvailable", *v6, @"com.apple.mobileipod");
  CFPreferencesAppSynchronize(@"com.apple.mobileipod");

  [(SUClient *)self _reloadScriptExecutionContext];
}

- (void)_memoryWarningNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog = [mEMORY[0x1E69D4938] shouldLog];
  if ([mEMORY[0x1E69D4938] shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v12 = 138412290;
    v13 = objc_opt_class();
    LODWORD(v11) = 12;
    v10 = &v12;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v12, v11}];
      free(v8);
      v10 = v9;
      SSFileLog();
    }
  }

  [(SUClient *)self _purgeCaches];
}

- (id)_newAccountViewControllerForButtonAction:(id)action
{
  v5 = objc_alloc_init(SUAccountViewController);
  [(SUViewController *)v5 setClientInterface:[(SUClient *)self clientInterface]];
  parameter = [action parameter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parameter = [MEMORY[0x1E695DFF8] URLWithString:parameter];
  }

  v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(parameter, "schemeSwizzledURL")}];
  [(SUStorePageViewController *)v5 setURLRequestProperties:v7];

  return v5;
}

- (id)_newComposeReviewViewControllerForButtonAction:(id)action
{
  parameter = [action parameter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parameter = [MEMORY[0x1E695DFF8] URLWithString:parameter];
  }

  clientInterface = [(SUClient *)self clientInterface];
  v6 = [(SUViewControllerFactory *)[(SUClientInterface *)clientInterface viewControllerFactory] newComposeReviewViewControllerWithCompositionURL:parameter];
  if (!v6)
  {
    v6 = [[SUComposeReviewViewController alloc] initWithCompositionURL:parameter];
  }

  [(SUViewController *)v6 setClientInterface:clientInterface];
  return v6;
}

- (BOOL)_presentModalViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(SUClientDelegate *)delegate client:self presentModalViewController:controller animated:animatedCopy];
}

- (void)_purgeCaches
{
  [MEMORY[0x1E695AC38] sharedURLCache];
  ISURLCachePurgeMemoryCache();
  imageCache = self->_imageCache;

  [(SUImageCache *)imageCache removeAllCachedImages];
}

- (void)_reloadScriptExecutionContext
{
  clientIdentifier = [(SUClient *)self clientIdentifier];
  if (clientIdentifier)
  {
    v4 = clientIdentifier;
    v5 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
    v6 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:v4];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v7];
        if (v8)
        {
          v9 = v8;
          [(SUScriptExecutionContext *)[(SUClient *)self scriptExecutionContext] evaluateScriptAtURL:v8];
        }
      }
    }
  }
}

@end