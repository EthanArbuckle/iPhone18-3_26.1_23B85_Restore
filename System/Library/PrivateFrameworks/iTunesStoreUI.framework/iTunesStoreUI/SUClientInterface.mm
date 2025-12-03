@interface SUClientInterface
+ (id)_defaultApplicationIdentifier;
+ (id)_defaultApplicationVersion;
- (BOOL)_ignoresExpectedClientsProtocol;
- (BOOL)ignoreDefaultKeyboardNotifications;
- (BOOL)wasLaunchedFromLibrary;
- (NSString)applicationIdentifier;
- (NSString)applicationVersion;
- (NSString)clientIdentifier;
- (NSString)localStoragePath;
- (NSString)userAgent;
- (SUClientInterface)init;
- (SUPreviewOverlayViewController)previewOverlay;
- (SUPurchaseManager)purchaseManager;
- (SUQueueSessionManager)queueSessionManager;
- (SUTabBarController)tabBarController;
- (SUUIAppearance)appearance;
- (id)URLBagKeyForIdentifier:(id)identifier;
- (id)_newScriptInterface;
- (void)_dismissModalViewControllerFromViewController:(id)controller withTransition:(int)transition;
- (void)_dismissViewControllerFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)_dispatchOnPageResponseWithData:(id)data response:(id)response;
- (void)_dispatchXEvent:(id)event withCompletionBlock:(id)block;
- (void)_exitStoreWithReason:(int64_t)reason;
- (void)_hidePreviewOverlayAnimated:(BOOL)animated;
- (void)_mediaPlayerViewControllerWillDismiss:(id)dismiss animated:(BOOL)animated;
- (void)_presentDialog:(id)dialog;
- (void)_presentViewController:(id)controller fromViewController:(id)viewController withTransition:(int)transition;
- (void)_returnToLibrary;
- (void)_setIgnoresExpectedClientsProtocol:(BOOL)protocol;
- (void)_setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)_setStatusBarStyle:(int64_t)style animated:(BOOL)animated;
- (void)_showPreviewOverlayAnimated:(BOOL)animated;
- (void)dealloc;
- (void)setAppearance:(id)appearance;
- (void)setApplicationIdentifier:(id)identifier;
- (void)setApplicationVersion:(id)version;
- (void)setClientIdentifier:(id)identifier;
- (void)setIgnoreDefaultKeyboardNotifications:(BOOL)notifications;
- (void)setLocalStoragePath:(id)path;
- (void)setPurchaseManager:(id)manager;
- (void)setQueueSessionManager:(id)manager;
- (void)setURLBagKey:(id)key forIdentifier:(id)identifier;
- (void)setUserAgent:(id)agent;
- (void)setWasLaunchedFromLibrary:(BOOL)library;
@end

@implementation SUClientInterface

- (SUClientInterface)init
{
  v6.receiver = self;
  v6.super_class = SUClientInterface;
  v2 = [(SUClientInterface *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.%p", v2];
    v2->_dispatchQueue = dispatch_queue_create([v3 UTF8String], 0);
    v2->_applicationIdentifier = [objc_msgSend(objc_opt_class() "_defaultApplicationIdentifier")];
    v2->_applicationVersion = [objc_msgSend(objc_opt_class() "_defaultApplicationVersion")];
    v2->_queueSessionManager = objc_alloc_init(SUQueueSessionManager);
    v2->_viewControllerFactory = objc_alloc_init(SUViewControllerFactory);
    v4 = objc_alloc_init(SUPurchaseManager);
    v2->_purchaseManager = v4;
    [(SUPurchaseManager *)v4 setQueueSessionManager:v2->_queueSessionManager];
  }

  return v2;
}

+ (id)_defaultApplicationIdentifier
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];

  return [v2 objectForKey:@"CFBundleIdentifier"];
}

+ (id)_defaultApplicationVersion
{
  v2 = [objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];

  return [v2 objectForKey:@"CFBundleVersion"];
}

- (void)dealloc
{
  dispatch_release(self->_dispatchQueue);
  v3.receiver = self;
  v3.super_class = SUClientInterface;
  [(SUClientInterface *)&v3 dealloc];
}

- (SUQueueSessionManager)queueSessionManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__SUClientInterface_queueSessionManager__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __40__SUClientInterface_queueSessionManager__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 112);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUUIAppearance)appearance
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SUClientInterface_appearance__block_invoke;
  v5[3] = &unk_1E81650B0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __31__SUClientInterface_appearance__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (!v2)
  {
    *(*(a1 + 32) + 32) = +[SUUIAppearance defaultAppearance];
    v2 = *(*(a1 + 32) + 32);
  }

  result = [v2 copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)applicationIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__SUClientInterface_applicationIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __42__SUClientInterface_applicationIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)applicationVersion
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __39__SUClientInterface_applicationVersion__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __39__SUClientInterface_applicationVersion__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (NSString)clientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SUClientInterface_clientIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__SUClientInterface_clientIdentifier__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)ignoreDefaultKeyboardNotifications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__SUClientInterface_ignoreDefaultKeyboardNotifications__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSString)localStoragePath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SUClientInterface_localStoragePath__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__SUClientInterface_localStoragePath__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 96);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (SUPreviewOverlayViewController)previewOverlay
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(SUClientInterfaceDelegatePrivate *)delegate previewOverlayForClientInterface:self];
}

- (SUPurchaseManager)purchaseManager
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__SUClientInterface_purchaseManager__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __36__SUClientInterface_purchaseManager__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setApplicationIdentifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SUClientInterface_setApplicationIdentifier___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __46__SUClientInterface_setApplicationIdentifier___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 8);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 8) = result;
  }

  return result;
}

- (void)setApplicationVersion:(id)version
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__SUClientInterface_setApplicationVersion___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = version;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __43__SUClientInterface_setApplicationVersion___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 16);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 16) = result;
  }

  return result;
}

- (void)setAppearance:(id)appearance
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SUClientInterface_setAppearance___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = appearance;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __35__SUClientInterface_setAppearance___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 32);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 32) = result;
  }

  return result;
}

- (void)setClientIdentifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SUClientInterface_setClientIdentifier___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __41__SUClientInterface_setClientIdentifier___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 48);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 48) = result;
  }

  return result;
}

- (void)setIgnoreDefaultKeyboardNotifications:(BOOL)notifications
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__SUClientInterface_setIgnoreDefaultKeyboardNotifications___block_invoke;
  v4[3] = &unk_1E8165528;
  v4[4] = self;
  notificationsCopy = notifications;
  dispatch_async(dispatchQueue, v4);
}

- (void)setLocalStoragePath:(id)path
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SUClientInterface_setLocalStoragePath___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = path;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __41__SUClientInterface_setLocalStoragePath___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 96);
  if (v1 != *(result + 40))
  {
    v2 = result;

    result = [*(v2 + 40) copy];
    *(*(v2 + 32) + 96) = result;
  }

  return result;
}

- (void)setPurchaseManager:(id)manager
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__SUClientInterface_setPurchaseManager___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = manager;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __40__SUClientInterface_setPurchaseManager___block_invoke(uint64_t result)
{
  v1 = *(*(result + 32) + 104);
  if (v1 != *(result + 40))
  {
    v2 = result;

    *(*(v2 + 32) + 104) = *(v2 + 40);
    result = [*(*(v2 + 32) + 104) queueSessionManager];
    if (!result)
    {
      v3 = *(v2 + 32);
      v4 = *(v3 + 104);
      v5 = *(v3 + 112);

      return [v4 setQueueSessionManager:v5];
    }
  }

  return result;
}

- (void)setQueueSessionManager:(id)manager
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SUClientInterface_setQueueSessionManager___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = manager;
  dispatch_async(dispatchQueue, v4);
}

void *__44__SUClientInterface_setQueueSessionManager___block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 112) != result[5])
  {
    v2 = result;
    v3 = [*(v1 + 104) queueSessionManager];
    v4 = *(v2[4] + 112);

    result = v2[5];
    *(v2[4] + 112) = result;
    if (v3 == v4)
    {
      v5 = v2[4];
      v6 = *(v5 + 104);
      v7 = *(v5 + 112);

      return [v6 setQueueSessionManager:v7];
    }
  }

  return result;
}

- (void)setURLBagKey:(id)key forIdentifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SUClientInterface_setURLBagKey_forIdentifier___block_invoke;
  block[3] = &unk_1E8164A20;
  block[4] = key;
  block[5] = self;
  block[6] = identifier;
  dispatch_async(dispatchQueue, block);
}

uint64_t __48__SUClientInterface_setURLBagKey_forIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 128);
  if (v2)
  {
    if (!v3)
    {
      *(a1[5] + 128) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v2 = a1[4];
      v3 = *(a1[5] + 128);
    }

    v4 = a1[6];

    return [v3 setObject:v2 forKey:v4];
  }

  else
  {
    v6 = a1[6];

    return [v3 removeObjectForKey:v6];
  }
}

- (void)setUserAgent:(id)agent
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__SUClientInterface_setUserAgent___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = agent;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __34__SUClientInterface_setUserAgent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 136);
  if (v3 != v1)
  {

    *(*(a1 + 32) + 136) = [*(a1 + 40) copy];
    v2 = *(a1 + 32);
    v1 = *(a1 + 40);
  }

  v5 = *(v2 + 104);

  return [v5 setUserAgent:v1];
}

- (void)setWasLaunchedFromLibrary:(BOOL)library
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SUClientInterface_setWasLaunchedFromLibrary___block_invoke;
  v4[3] = &unk_1E8165528;
  v4[4] = self;
  libraryCopy = library;
  dispatch_async(dispatchQueue, v4);
}

- (SUTabBarController)tabBarController
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  delegate = self->_delegate;

  return [(SUClientInterfaceDelegatePrivate *)delegate tabBarControllerForClientInterface:self];
}

- (id)URLBagKeyForIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__49;
  v11 = __Block_byref_object_dispose__49;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SUClientInterface_URLBagKeyForIdentifier___block_invoke;
  block[3] = &unk_1E8165810;
  block[5] = identifier;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __44__SUClientInterface_URLBagKeyForIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 128) objectForKey:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (NSString)userAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__49;
  v10 = __Block_byref_object_dispose__49;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SUClientInterface_userAgent__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __30__SUClientInterface_userAgent__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)wasLaunchedFromLibrary
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SUClientInterface_wasLaunchedFromLibrary__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_dismissModalViewControllerFromViewController:(id)controller withTransition:(int)transition
{
  v4 = *&transition;
  if (objc_opt_respondsToSelector())
  {
    [(SUClientInterfaceDelegatePrivate *)self->_delegate clientInterface:self willDismissViewController:controller];
  }

  [controller dismissModalViewControllerWithTransition:v4];
}

- (void)_dismissViewControllerFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    [(SUClientInterfaceDelegatePrivate *)self->_delegate clientInterface:self willDismissViewController:controller];
  }

  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self dismissViewController:controller animated:animatedCopy completion:completion];
  }

  else
  {

    [controller dismissViewControllerAnimated:animatedCopy completion:completion];
  }
}

- (void)_dispatchOnPageResponseWithData:(id)data response:(id)response
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self dispatchOnPageResponseWithData:data response:response];
  }
}

- (void)_dispatchXEvent:(id)event withCompletionBlock:(id)block
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self dispatchXEvent:event completionBlock:block];
  }

  else
  {
    v8 = *(block + 2);

    v8(block, 0);
  }
}

- (void)_exitStoreWithReason:(int64_t)reason
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self exitStoreWithReason:reason];
  }
}

- (void)_hidePreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self hidePreviewOverlayAnimated:animatedCopy];
  }
}

- (BOOL)_ignoresExpectedClientsProtocol
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SUClientInterface__ignoresExpectedClientsProtocol__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_mediaPlayerViewControllerWillDismiss:(id)dismiss animated:(BOOL)animated
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self willDismissViewController:dismiss];
  }
}

- (void)_presentDialog:(id)dialog
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self presentDialog:dialog];
  }
}

- (void)_presentViewController:(id)controller fromViewController:(id)viewController withTransition:(int)transition
{
  v5 = *&transition;
  if (objc_opt_respondsToSelector())
  {
    [(SUClientInterfaceDelegatePrivate *)self->_delegate clientInterface:self willPresentViewController:controller];
  }

  [viewController presentViewController:controller withTransition:v5 completion:0];
}

- (id)_newScriptInterface
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v3 = [(SUClientInterfaceDelegatePrivate *)self->_delegate scriptInterfaceForClientInterface:self];

  return v3;
}

- (void)_returnToLibrary
{
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate returnToLibraryForClientInterface:self];
  }
}

- (void)_setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self setStatusBarHidden:hiddenCopy withAnimation:animation];
  }
}

- (void)_setStatusBarStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self setStatusBarStyle:style animated:animatedCopy];
  }
}

- (void)_setIgnoresExpectedClientsProtocol:(BOOL)protocol
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SUClientInterface__setIgnoresExpectedClientsProtocol___block_invoke;
  v4[3] = &unk_1E8165528;
  v4[4] = self;
  protocolCopy = protocol;
  dispatch_async(dispatchQueue, v4);
}

- (void)_showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (objc_opt_respondsToSelector())
  {
    delegate = self->_delegate;

    [(SUClientInterfaceDelegatePrivate *)delegate clientInterface:self showPreviewOverlayAnimated:animatedCopy];
  }
}

@end