@interface SUClient
+ (id)imagePool;
+ (id)sharedClient;
+ (id)viewControllerFactory;
+ (void)setSharedClient:(id)a3;
- (BOOL)_presentModalViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)dismissTopViewControllerAnimated:(BOOL)a3;
- (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)openExternalURL:(id)a3;
- (BOOL)openInternalURL:(id)a3;
- (BOOL)openURL:(id)a3 inClientApplication:(id)a4;
- (BOOL)sendActionForDialog:(id)a3 button:(id)a4;
- (ISURLOperationPool)imagePool;
- (NSString)searchHintsURLBagKey;
- (NSString)searchURLBagKey;
- (SUClient)initWithClientInterface:(id)a3;
- (SUClientInterface)clientInterface;
- (SUImageCache)imageCache;
- (SUScriptExecutionContext)scriptExecutionContext;
- (id)_newAccountViewControllerForButtonAction:(id)a3;
- (id)_newComposeReviewViewControllerForButtonAction:(id)a3;
- (id)clientIdentifier;
- (id)queueSessionManager;
- (id)viewControllerFactory;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_bagDidLoadNotification:(id)a3;
- (void)_memoryWarningNotification:(id)a3;
- (void)_purgeCaches;
- (void)_reloadScriptExecutionContext;
- (void)dealloc;
- (void)setAssetTypes:(__CFArray *)a3;
- (void)setClientIdentifier:(id)a3;
- (void)setQueueSessionManager:(id)a3;
- (void)setSearchHintsURLBagKey:(id)a3;
- (void)setSearchURLBagKey:(id)a3;
- (void)setViewControllerFactory:(id)a3;
@end

@implementation SUClient

- (SUClient)initWithClientInterface:(id)a3
{
  v8.receiver = self;
  v8.super_class = SUClient;
  v4 = [(SUClient *)&v8 init];
  if (v4)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      v5 = objc_alloc_init(SUClientInterface);
    }

    v4->_clientInterface = v5;
    v4->_lock = objc_alloc_init(MEMORY[0x1E696AD10]);
    if (![(SUClientInterface *)v4->_clientInterface localStoragePath])
    {
      [(SUClientInterface *)v4->_clientInterface setLocalStoragePath:+[SUWebViewManager defaultLocalStoragePath]];
    }

    +[SUDialogManager sharedInstance];
    +[SUNetworkObserver sharedInstance];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v4 selector:sel__bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
    [v6 addObserver:v4 selector:sel__memoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
    [v6 addObserver:v4 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4718] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  assetTypes = self->_assetTypes;
  if (assetTypes)
  {
    CFRelease(assetTypes);
  }

  v5.receiver = self;
  v5.super_class = SUClient;
  [(SUClient *)&v5 dealloc];
}

+ (void)setSharedClient:(id)a3
{
  _os_nospin_lock_lock();
  if (__SharedClient != a3)
  {

    __SharedClient = a3;
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
  v2 = [a1 sharedClient];

  return [v2 imagePool];
}

+ (id)viewControllerFactory
{
  v2 = [a1 sharedClient];

  return [v2 viewControllerFactory];
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
  v3 = [(SUClientInterface *)self->_clientInterface clientIdentifier];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (BOOL)composeReviewWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
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

  v7 = [(SUClientDelegate *)self->_delegate client:self presentComposeReviewViewController:a3 animated:v4];
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
  v11[5] = a3;
  v11[6] = &v13;
  v11[4] = v8;
  v12 = v4;
  [a3 prepareWithCompletionBlock:v11];
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

- (BOOL)dismissTopViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SUClientDelegate *)self->_delegate topViewControllerForClient:self];
    if (v5)
    {
      [v5 dismissAnimated:v3];
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)enterAccountFlowWithViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SUClientDelegate *)self->_delegate client:self presentAccountViewController:a3 animated:v4]& 1) != 0)
  {
    return 1;
  }

  delegate = self->_delegate;

  return [(SUClientDelegate *)delegate client:self presentModalViewController:a3 animated:v4];
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

- (BOOL)openExternalURL:(id)a3
{
  v4 = [(SUClient *)self clientInterface];

  return SUOpenExternalURL(a3, v4);
}

- (BOOL)openInternalURL:(id)a3
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(SUClientDelegate *)self->_delegate client:self openInternalURL:a3]& 1) != 0)
  {
    return 1;
  }

  v6 = [(SUClient *)self clientInterface];

  return SUOpenExternalURL(a3, v6);
}

- (BOOL)openURL:(id)a3 inClientApplication:(id)a4
{
  v6 = [(SUClient *)self clientInterface];

  return SUOpenURLInClient(a3, a4, v6);
}

- (id)queueSessionManager
{
  [(NSLock *)self->_lock lock];
  v3 = [(SUClientInterface *)self->_clientInterface queueSessionManager];
  [(NSLock *)self->_lock unlock];
  return v3;
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

- (BOOL)sendActionForDialog:(id)a3 button:(id)a4
{
  v6 = [a4 actionType];
  result = 0;
  if (v6 <= 4)
  {
    if (v6 != 1)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v8 = [a4 parameter];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [MEMORY[0x1E695DFF8] URLWithString:v8];
          }

          v9 = [(SUClient *)self clientInterface];

          return SUOpenExternalURL(v8, v9);
        }

        return result;
      }

      v15 = objc_alloc_init(MEMORY[0x1E69D4998]);
      [v15 setBuyParameters:{objc_msgSend(a4, "parameter")}];
      v16 = [(SUClientInterface *)[(SUClient *)self clientInterface] purchaseManager];
      v17 = objc_alloc_init(SUPurchaseBatch);
      [(SUPurchaseBatch *)v17 setPurchaseManager:v16];
      -[SUPurchaseBatch setPurchasesAndContinuationsFromPurchases:](v17, "setPurchasesAndContinuationsFromPurchases:", [MEMORY[0x1E695DEC8] arrayWithObject:v15]);
      [(SUPurchaseManager *)v16 addPurchaseBatch:v17];

      return 1;
    }

    v10 = [a4 parameter];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    }

    v11 = [v10 schemeSwizzledURL];
    v12 = [a4 urlType];
    if (v12 != 2)
    {
      if (v12 != 1)
      {
        [(SUClient *)self openInternalURL:v11];
        return 1;
      }

      v13 = [(SUClient *)self _newAccountViewControllerForButtonAction:a4];
      v14 = [(SUClient *)self enterAccountFlowWithViewController:v13 animated:1];
LABEL_24:
      v18 = v14;

      return v18;
    }

    v19 = objc_alloc(MEMORY[0x1E69D4970]);
    v20 = [v19 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", v11)}];
    [v20 setITunesStoreRequest:1];
    [v20 setShouldProcessProtocol:1];
    v21 = [objc_alloc(MEMORY[0x1E69D4A00]) initWithRequestProperties:v20];
    [v21 start];

    return 0;
  }

  if (v6 != 5)
  {
    if (v6 == 8)
    {
      v13 = [(SUClient *)self _newComposeReviewViewControllerForButtonAction:a4];
      v14 = [(SUClient *)self composeReviewWithViewController:v13 animated:1];
      goto LABEL_24;
    }

    if (v6 != 9)
    {
      return result;
    }

    [MEMORY[0x1E69D48D0] retryAllRestoreDownloads];
    return 0;
  }

  return [(SUClient *)self dismissTopViewControllerAnimated:1];
}

- (void)setAssetTypes:(__CFArray *)a3
{
  assetTypes = self->_assetTypes;
  if (assetTypes != a3)
  {
    if (assetTypes)
    {
      CFRelease(assetTypes);
    }

    self->_assetTypes = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)setClientIdentifier:(id)a3
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setClientIdentifier:a3];
  [(NSLock *)self->_lock unlock];
  v5 = [MEMORY[0x1E69E4730] currentClient];

  [v5 setAppleClientApplication:a3];
}

- (void)setQueueSessionManager:(id)a3
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setQueueSessionManager:a3];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setSearchHintsURLBagKey:(id)a3
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setURLBagKey:a3 forIdentifier:@"SUURLBagKeySearchHints"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setSearchURLBagKey:(id)a3
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setURLBagKey:a3 forIdentifier:@"SUURLBagKeySearch"];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setViewControllerFactory:(id)a3
{
  [(NSLock *)self->_lock lock];
  [(SUClientInterface *)self->_clientInterface setViewControllerFactory:a3];
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (id)viewControllerFactory
{
  [(NSLock *)self->_lock lock];
  v3 = [(SUClientInterface *)self->_clientInterface viewControllerFactory];
  [(NSLock *)self->_lock unlock];
  return v3;
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)_bagDidLoadNotification:(id)a3
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

- (void)_memoryWarningNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E69D4938] sharedConfig];
  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = v5 | 2;
  }

  else
  {
    v6 = v5;
  }

  if (!os_log_type_enabled([v4 OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (id)_newAccountViewControllerForButtonAction:(id)a3
{
  v5 = objc_alloc_init(SUAccountViewController);
  [(SUViewController *)v5 setClientInterface:[(SUClient *)self clientInterface]];
  v6 = [a3 parameter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v6];
  }

  v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(v6, "schemeSwizzledURL")}];
  [(SUStorePageViewController *)v5 setURLRequestProperties:v7];

  return v5;
}

- (id)_newComposeReviewViewControllerForButtonAction:(id)a3
{
  v4 = [a3 parameter];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  }

  v5 = [(SUClient *)self clientInterface];
  v6 = [(SUViewControllerFactory *)[(SUClientInterface *)v5 viewControllerFactory] newComposeReviewViewControllerWithCompositionURL:v4];
  if (!v6)
  {
    v6 = [[SUComposeReviewViewController alloc] initWithCompositionURL:v4];
  }

  [(SUViewController *)v6 setClientInterface:v5];
  return v6;
}

- (BOOL)_presentModalViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(SUClientDelegate *)delegate client:self presentModalViewController:a3 animated:v4];
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
  v3 = [(SUClient *)self clientIdentifier];
  if (v3)
  {
    v4 = v3;
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