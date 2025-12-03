@interface SUClientController
+ (id)sharedController;
+ (void)setSharedController:(id)controller;
- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated;
- (BOOL)ignoresExpectedClientsProtocol;
- (BOOL)isStoreEnabled;
- (BOOL)openURL:(id)l;
- (BOOL)openURL:(id)l inClientWithIdentifier:(id)identifier;
- (BOOL)performActionForDialog:(id)dialog button:(id)button;
- (BOOL)storeFrontDidChangeSinceLastSuspend;
- (ISURLOperationPool)imageOperationPool;
- (NSString)storeContentLanguage;
- (SUClientController)initWithClientIdentifier:(id)identifier;
- (SUClientController)initWithClientInterface:(id)interface;
- (SUClientInterface)clientInterface;
- (SUImageCache)imageCache;
- (SUScriptExecutionContext)scriptExecutionContext;
- (id)URLBagKeyForIdentifier:(id)identifier;
- (id)_newAccountViewControllerForButtonAction:(id)action;
- (id)_newComposeReviewViewControllerForButtonAction:(id)action;
- (id)clientIdentifier;
- (id)overlayConfigurationForStorePage:(id)page;
- (id)scriptInterfaceForClientInterface:(id)interface;
- (id)userAgent;
- (id)viewControllerFactory;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_dialogNotification:(id)notification;
- (void)_memoryWarningNotification:(id)notification;
- (void)_presentDialog:(id)dialog;
- (void)_purgeCaches;
- (void)_reloadOverlayConfigurationsFromURLBag;
- (void)_reloadScriptExecutionContextFromURLBag;
- (void)_reloadUserDefaultsFromURLBag;
- (void)autosaveMessageWithCompletionBlock:(id)block;
- (void)bagDidLoadNotification:(id)notification;
- (void)becomeActive;
- (void)cancelAllOperations;
- (void)clientInterface:(id)interface setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation;
- (void)clientInterface:(id)interface setStatusBarStyle:(int64_t)style animated:(BOOL)animated;
- (void)composeEmailByRestoringAutosavedMessage;
- (void)composeEmailWithSubject:(id)subject body:(id)body animated:(BOOL)animated;
- (void)dealloc;
- (void)dismissMailComposeViewControllerAnimated:(BOOL)animated;
- (void)exitStoreWithReason:(int64_t)reason;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)presentMailComposeViewController:(id)controller animated:(BOOL)animated;
- (void)resignActive;
- (void)setClientInterface:(id)interface;
- (void)setIgnoresExpectedClientsProtocol:(BOOL)protocol;
- (void)setOfferedAssetTypes:(__CFArray *)types;
- (void)setURLBagKey:(id)key forIdentifier:(id)identifier;
- (void)setUserAgent:(id)agent;
- (void)setViewControllerFactory:(id)factory;
@end

@implementation SUClientController

- (SUClientController)initWithClientInterface:(id)interface
{
  v13.receiver = self;
  v13.super_class = SUClientController;
  v4 = [(SUClientController *)&v13 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"com.apple.iTunesStoreUI.SUClientController.%p", v4];
    v4->_dispatchQueue = dispatch_queue_create([v5 UTF8String], 0);

    if (interface)
    {
      [(SUClientController *)v4 setClientInterface:interface];
    }

    else
    {
      interface = objc_alloc_init(SUClientInterface);
      [(SUClientController *)v4 setClientInterface:interface];
      interfaceCopy = interface;
    }

    if (![interface localStoragePath])
    {
      [interface setLocalStoragePath:{+[SUWebViewManager defaultLocalStoragePath](SUWebViewManager, "defaultLocalStoragePath")}];
    }

    +[SUNetworkObserver sharedInstance];
    clientIdentifier = [interface clientIdentifier];
    if (clientIdentifier)
    {
      [objc_msgSend(MEMORY[0x1E69E4730] "currentClient")];
    }

    v8 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3052000000;
    v12[3] = __Block_byref_object_copy__42;
    v12[4] = __Block_byref_object_dispose__42;
    v12[5] = v4;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SUClientController_initWithClientInterface___block_invoke;
    v11[3] = &unk_1E8166500;
    v11[4] = v12;
    [v8 setItemLookupBlock:v11];
    [MEMORY[0x1E69D4990] setDefaultConditionalContext:v8];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
    [defaultCenter addObserver:v4 selector:sel__dialogNotification_ name:*MEMORY[0x1E69E46C0] object:0];
    [defaultCenter addObserver:v4 selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DDAC8] object:0];
    [defaultCenter addObserver:v4 selector:sel__memoryWarningNotification_ name:*MEMORY[0x1E69DDAD8] object:0];
    _Block_object_dispose(v12, 8);
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4718] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46C0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAC8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];
  [(SUClientInterface *)self->_clientInterface setDelegate:0];
  [(SUPurchaseManager *)[(SUClientInterface *)self->_clientInterface purchaseManager] setDelegate:0];
  v4 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
  [MEMORY[0x1E69D4990] setDefaultConditionalContext:v4];

  [(MFMailComposeViewController *)self->_mailComposeViewController setDelegate:0];
  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  offeredAssetTypes = self->_offeredAssetTypes;
  if (offeredAssetTypes)
  {
    CFRelease(offeredAssetTypes);
  }

  v7.receiver = self;
  v7.super_class = SUClientController;
  [(SUClientController *)&v7 dealloc];
}

+ (void)setSharedController:(id)controller
{
  if (__SharedController != controller)
  {

    __SharedController = controller;
  }
}

+ (id)sharedController
{
  v2 = __SharedController;

  return v2;
}

- (void)becomeActive
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  dispatchQueue = self->_dispatchQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__SUClientController_becomeActive__block_invoke;
  v3[3] = &unk_1E81650B0;
  v3[4] = self;
  v3[5] = &v4;
  dispatch_sync(dispatchQueue, v3);
  if (*(v5 + 24) == 1)
  {
    [MEMORY[0x1E69E47D0] invalidateCurrentMap];
    [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
    [objc_msgSend(MEMORY[0x1E69D4890] "existingDefaultStore")];
  }

  _Block_object_dispose(&v4, 8);
}

uint64_t __34__SUClientController_becomeActive__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    *(*(*(result + 40) + 8) + 24) = 1;
    *(*(result + 32) + 8) = 1;
  }

  return result;
}

- (void)cancelAllOperations
{
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];

  [mainQueue cancelAllOperations];
}

- (SUClientInterface)clientInterface
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SUClientController_clientInterface__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __37__SUClientController_clientInterface__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 16);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (BOOL)composeReviewWithViewController:(id)controller animated:(BOOL)animated
{
  v5 = [(SUClientController *)self rootViewController:controller];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __63__SUClientController_composeReviewWithViewController_animated___block_invoke;
    v8[3] = &unk_1E8166000;
    v8[4] = v5;
    v8[5] = controller;
    [controller prepareWithCompletionBlock:v8];
  }

  return v6 != 0;
}

uint64_t __63__SUClientController_composeReviewWithViewController_animated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [MEMORY[0x1E69DD258] transitionSafePerformer:*(result + 32)];
    v4 = *(v2 + 40);

    return [v3 presentViewController:v4 animated:1 completion:0];
  }

  return result;
}

- (void)exitStoreWithReason:(int64_t)reason
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] suspend];
}

- (BOOL)ignoresExpectedClientsProtocol
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__SUClientController_ignoresExpectedClientsProtocol__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __52__SUClientController_ignoresExpectedClientsProtocol__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) _ignoresExpectedClientsProtocol];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isStoreEnabled
{
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v4 = [mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  offeredAssetTypes = [(SUClientController *)self offeredAssetTypes];
  if (!offeredAssetTypes)
  {
    return 1;
  }

  v7 = offeredAssetTypes;
  Count = CFArrayGetCount(offeredAssetTypes);
  v9 = Count == 0;
  if (Count >= 1)
  {
    v10 = Count;
    v9 = 0;
    for (i = 0; i != v10; ++i)
    {
      CFArrayGetValueAtIndex(v7, i);
      v12 = SSDownloadKindForAssetType();
      if (v9)
      {
        v9 = 1;
      }

      else
      {
        v9 = [objc_msgSend(v5 networkConstraintsForDownloadKind:{v12), "isAnyNetworkTypeEnabled"}];
      }
    }
  }

  return v9;
}

- (BOOL)openURL:(id)l
{
  clientInterface = [(SUClientController *)self clientInterface];

  return SUOpenExternalURL(l, clientInterface);
}

- (BOOL)openURL:(id)l inClientWithIdentifier:(id)identifier
{
  clientInterface = [(SUClientController *)self clientInterface];

  return SUOpenURLInClient(l, identifier, clientInterface);
}

- (id)overlayConfigurationForStorePage:(id)page
{
  v19 = *MEMORY[0x1E69E9840];
  uRLRequestProperties = [page URLRequestProperties];
  uRLBagKey = [uRLRequestProperties URLBagKey];
  v6 = [uRLRequestProperties URL];
  overlayConfigurations = self->_overlayConfigurations;
  if (!overlayConfigurations)
  {
    [(SUClientController *)self _reloadOverlayConfigurationsFromURLBag];
    overlayConfigurations = self->_overlayConfigurations;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [(NSArray *)overlayConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(overlayConfigurations);
      }

      v12 = *(*(&v14 + 1) + 8 * v11);
      if (v6)
      {
        if ([*(*(&v14 + 1) + 8 * v11) matchesURL:v6])
        {
          break;
        }
      }

      if (uRLBagKey && ([v12 matchesURLBagKey:uRLBagKey] & 1) != 0)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)overlayConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v9)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v12 = 0;
  }

  return v12;
}

- (void)resignActive
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SUClientController_resignActive__block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
}

void *__34__SUClientController_resignActive__block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 8) == 1)
  {
    v2 = result;
    *(v1 + 8) = 0;
    v3 = [MEMORY[0x1E69D48B0] currentDevice];

    *(v2[4] + 48) = [v3 storeFrontIdentifier];
    result = [v3 synchedStoreFrontIdentifier];
    *(v2[4] + 96) = result;
  }

  return result;
}

- (void)setClientInterface:(id)interface
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __41__SUClientController_setClientInterface___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = interface;
  dispatch_async(dispatchQueue, v4);
}

void *__41__SUClientController_setClientInterface___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(*(a1 + 32) + 16);
  if (result != v2)
  {
    [objc_msgSend(result "purchaseManager")];
    [*(*(a1 + 32) + 16) setDelegate:0];

    *(*(a1 + 32) + 16) = *(a1 + 40);
    [objc_msgSend(*(*(a1 + 32) + 16) "purchaseManager")];
    v4 = *(*(a1 + 32) + 16);

    return [v4 setDelegate:?];
  }

  return result;
}

- (void)setIgnoresExpectedClientsProtocol:(BOOL)protocol
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SUClientController_setIgnoresExpectedClientsProtocol___block_invoke;
  v4[3] = &unk_1E8165528;
  v4[4] = self;
  protocolCopy = protocol;
  dispatch_async(dispatchQueue, v4);
}

- (void)setOfferedAssetTypes:(__CFArray *)types
{
  offeredAssetTypes = self->_offeredAssetTypes;
  if (offeredAssetTypes != types)
  {
    if (offeredAssetTypes)
    {
      CFRelease(offeredAssetTypes);
    }

    self->_offeredAssetTypes = types;
    if (types)
    {

      CFRetain(types);
    }
  }
}

- (void)setURLBagKey:(id)key forIdentifier:(id)identifier
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SUClientController_setURLBagKey_forIdentifier___block_invoke;
  block[3] = &unk_1E8164A20;
  block[4] = self;
  block[5] = key;
  block[6] = identifier;
  dispatch_async(dispatchQueue, block);
}

- (id)URLBagKeyForIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__42;
  v11 = __Block_byref_object_dispose__42;
  v12 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SUClientController_URLBagKeyForIdentifier___block_invoke;
  block[3] = &unk_1E8165810;
  block[5] = identifier;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(dispatchQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __45__SUClientController_URLBagKeyForIdentifier___block_invoke(void *a1)
{
  result = [*(a1[4] + 16) URLBagKeyForIdentifier:a1[5]];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (void)autosaveMessageWithCompletionBlock:(id)block
{
  mailComposeViewController = self->_mailComposeViewController;
  if (mailComposeViewController)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__SUClientController_autosaveMessageWithCompletionBlock___block_invoke;
    v6[3] = &unk_1E8166D98;
    v6[4] = block;
    [(MFMailComposeViewController *)mailComposeViewController autosaveWithHandler:v6];
  }

  else if (block)
  {
    v5 = *(block + 2);

    v5(block);
  }
}

uint64_t __57__SUClientController_autosaveMessageWithCompletionBlock___block_invoke(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x1E695E8A8];
  CFPreferencesSetAppValue(@"SUAutosavedMessageID", a2, *MEMORY[0x1E695E8A8]);
  CFPreferencesAppSynchronize(v3);
  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)composeEmailByRestoringAutosavedMessage
{
  v3 = *MEMORY[0x1E695E8A8];
  v4 = CFPreferencesCopyAppValue(@"SUAutosavedMessageID", *MEMORY[0x1E695E8A8]);
  if (v4)
  {
    v7 = v4;
    if (CPCanSendMail() && ![(SUClientController *)self isComposingEmail])
    {
      v5 = ISWeakLinkedClassForString();
      if ([(objc_class *)v5 hasAutosavedMessageWithIdentifier:v7])
      {
        v6 = objc_alloc_init(v5);
        self->_mailComposeViewController = v6;
        [(MFMailComposeViewController *)v6 setKeyboardVisible:1];
        [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
        [(MFMailComposeViewController *)self->_mailComposeViewController recoverAutosavedMessageWithIdentifier:v7];
        [(SUClientController *)self presentMailComposeViewController:self->_mailComposeViewController animated:0];
      }

      CFPreferencesSetAppValue(@"SUAutosavedMessageID", 0, v3);
      CFPreferencesAppSynchronize(v3);
    }
  }
}

- (void)composeEmailWithSubject:(id)subject body:(id)body animated:(BOOL)animated
{
  animatedCopy = animated;
  if (CPCanSendMail() && ![(SUClientController *)self isComposingEmail])
  {
    v9 = objc_alloc_init(ISWeakLinkedClassForString());
    self->_mailComposeViewController = v9;
    [(MFMailComposeViewController *)v9 setKeyboardVisible:1];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
    [(MFMailComposeViewController *)self->_mailComposeViewController setSubject:subject];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMessageBody:body isHTML:1];
    mailComposeViewController = self->_mailComposeViewController;

    [(SUClientController *)self presentMailComposeViewController:mailComposeViewController animated:animatedCopy];
  }
}

- (void)dismissMailComposeViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  rootViewController = [(SUClientController *)self rootViewController];

  [(UIViewController *)rootViewController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  [(SUClientController *)self dismissMailComposeViewControllerAnimated:1, result, error];
  [(MFMailComposeViewController *)self->_mailComposeViewController setDelegate:0];

  self->_mailComposeViewController = 0;
}

- (void)presentMailComposeViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  rootViewController = [(SUClientController *)self rootViewController];

  [(UIViewController *)rootViewController presentViewController:controller animated:animatedCopy completion:0];
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

- (ISURLOperationPool)imageOperationPool
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

- (BOOL)performActionForDialog:(id)dialog button:(id)button
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

          return [(SUClientController *)self openURL:parameter];
        }

        return result;
      }

      v14 = objc_alloc_init(MEMORY[0x1E69D4998]);
      [v14 setBuyParameters:{objc_msgSend(button, "parameter")}];
      purchaseManager = [(SUClientInterface *)[(SUClientController *)self clientInterface] purchaseManager];
      v16 = objc_alloc_init(SUPurchaseBatch);
      [(SUPurchaseBatch *)v16 setPurchaseManager:purchaseManager];
      -[SUPurchaseBatch setPurchasesAndContinuationsFromPurchases:](v16, "setPurchasesAndContinuationsFromPurchases:", [MEMORY[0x1E695DEC8] arrayWithObject:v14]);
      [(SUPurchaseManager *)purchaseManager addPurchaseBatch:v16];

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
        [(SUClientController *)self openClientURL:schemeSwizzledURL];
        return 1;
      }

      v12 = [(SUClientController *)self _newAccountViewControllerForButtonAction:button];
      v13 = [(SUClientController *)self presentAccountViewController:v12 animated:1];
LABEL_24:
      v17 = v13;

      return v17;
    }

    v18 = objc_alloc(MEMORY[0x1E69D4970]);
    v19 = [v18 initWithURLRequest:{objc_msgSend(MEMORY[0x1E695AC68], "requestWithURL:", schemeSwizzledURL)}];
    [v19 setITunesStoreRequest:1];
    [v19 setShouldProcessProtocol:1];
    v20 = [objc_alloc(MEMORY[0x1E69D4A00]) initWithRequestProperties:v19];
    [v20 start];

    return 0;
  }

  if (actionType != 5)
  {
    if (actionType == 8)
    {
      v12 = [(SUClientController *)self _newComposeReviewViewControllerForButtonAction:button];
      v13 = [(SUClientController *)self composeReviewWithViewController:v12 animated:1];
      goto LABEL_24;
    }

    if (actionType != 9)
    {
      return result;
    }

    [MEMORY[0x1E69D48D0] retryAllRestoreDownloads];
    return 0;
  }

  return [(SUClientController *)self dismissTopViewControllerAnimated:1];
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

- (NSString)storeContentLanguage
{
  result = [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];
  if (result)
  {
    v3 = result;
    v4 = [(NSString *)result rangeOfString:@"-" options:0 range:0, [(NSString *)result length]];
    v5 = [(NSString *)v3 rangeOfString:@" options:" range:0, 0, [(NSString *)v3 length]];
    if (v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_6:
        v6 = objc_alloc(MEMORY[0x1E695DF20]);
        v7 = [v6 initWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"StoreFrontLanguages", @"plist"}];
        v8 = [objc_msgSend(v7 objectForKey:{v3), "objectForKey:", @"LanguageCode"}];

        return v8;
      }

      v4 = v5;
    }

    v3 = [(NSString *)v3 substringToIndex:v4];
    goto LABEL_6;
  }

  return result;
}

- (BOOL)storeFrontDidChangeSinceLastSuspend
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3052000000;
  v20 = __Block_byref_object_copy__42;
  v21 = __Block_byref_object_dispose__42;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__42;
  v15 = __Block_byref_object_dispose__42;
  v16 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__SUClientController_storeFrontDidChangeSinceLastSuspend__block_invoke;
  block[3] = &unk_1E8166DC0;
  block[4] = self;
  block[5] = &v17;
  block[6] = &v11;
  dispatch_sync(dispatchQueue, block);
  if (!v18[5] && !v12[5])
  {
    goto LABEL_8;
  }

  currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
  [currentDevice reloadStoreFrontIdentifier];
  storeFrontIdentifier = [currentDevice storeFrontIdentifier];
  v5 = v18[5];
  if (v5 != storeFrontIdentifier && ![v5 isEqualToString:?])
  {
    LOBYTE(v8) = 1;
    goto LABEL_10;
  }

  if ([currentDevice isStoreFrontIdentifierTransient] && (v6 = objc_msgSend(currentDevice, "synchedStoreFrontIdentifier"), v7 = v12[5], v7 != v6))
  {
    v8 = [v7 isEqualToString:?] ^ 1;
  }

  else
  {
LABEL_8:
    LOBYTE(v8) = 0;
  }

LABEL_10:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);
  return v8;
}

id __57__SUClientController_storeFrontDidChangeSinceLastSuspend__block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 48) copy];
  result = [*(a1[4] + 96) copy];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

- (SUClientController)initWithClientIdentifier:(id)identifier
{
  v5 = objc_alloc_init(SUClientInterface);
  [(SUClientInterface *)v5 setClientIdentifier:identifier];
  v6 = [(SUClientController *)self initWithClientInterface:v5];

  return v6;
}

- (id)clientIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SUClientController_clientIdentifier__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __38__SUClientController_clientIdentifier__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) clientIdentifier];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setUserAgent:(id)agent
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__SUClientController_setUserAgent___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = agent;
  dispatch_async(dispatchQueue, v4);
}

- (void)setViewControllerFactory:(id)factory
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SUClientController_setViewControllerFactory___block_invoke;
  v4[3] = &unk_1E8164370;
  v4[4] = self;
  v4[5] = factory;
  dispatch_async(dispatchQueue, v4);
}

- (id)userAgent
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__SUClientController_userAgent__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __31__SUClientController_userAgent__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) userAgent];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)viewControllerFactory
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__SUClientController_viewControllerFactory__block_invoke;
  v5[3] = &unk_1E81650D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __43__SUClientController_viewControllerFactory__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) viewControllerFactory];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)clientInterface:(id)interface setStatusBarHidden:(BOOL)hidden withAnimation:(int64_t)animation
{
  hiddenCopy = hidden;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] setStatusBarHidden:hiddenCopy withAnimation:animation];
}

- (void)clientInterface:(id)interface setStatusBarStyle:(int64_t)style animated:(BOOL)animated
{
  animatedCopy = animated;
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] setStatusBarStyle:style animated:animatedCopy];
}

- (id)scriptInterfaceForClientInterface:(id)interface
{
  newScriptInterface = [(SUClientController *)self newScriptInterface];

  return newScriptInterface;
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = *MEMORY[0x1E69DDBE8];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__SUClientController__applicationDidEnterBackgroundNotification___block_invoke;
  v8[3] = &unk_1E8164320;
  v8[4] = &v9;
  v5 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v8];
  v10[3] = v5;
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__SUClientController__applicationDidEnterBackgroundNotification___block_invoke_2;
  block[3] = &unk_1E81650B0;
  block[4] = self;
  block[5] = &v9;
  dispatch_async(global_queue, block);
  _Block_object_dispose(&v9, 8);
}

uint64_t __65__SUClientController__applicationDidEnterBackgroundNotification___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

uint64_t __65__SUClientController__applicationDidEnterBackgroundNotification___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D4938] sharedConfig];
  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    v4 = v3 | 2;
  }

  else
  {
    v4 = v3;
  }

  if (!os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v11 = 138412290;
    v12 = objc_opt_class();
    LODWORD(v10) = 12;
    v9 = &v11;
    v5 = _os_log_send_and_compose_impl();
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v11, v10}];
      free(v6);
      v9 = v7;
      SSFileLog();
    }
  }

  [MEMORY[0x1E695AC38] sharedURLCache];
  ISURLCacheSaveMemoryCache();
  [*(a1 + 32) _purgeCaches];
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 40) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

- (void)_dialogNotification:(id)notification
{
  object = [notification object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__SUClientController__dialogNotification___block_invoke;
    v5[3] = &unk_1E8164370;
    v5[4] = self;
    v5[5] = object;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

- (void)bagDidLoadNotification:(id)notification
{
  [(SUClientController *)self _reloadOverlayConfigurationsFromURLBag];
  [(SUClientController *)self _reloadScriptExecutionContextFromURLBag];

  [(SUClientController *)self _reloadUserDefaultsFromURLBag];
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

  [(SUClientController *)self _purgeCaches];
}

- (id)_newAccountViewControllerForButtonAction:(id)action
{
  v5 = objc_alloc_init(SUAccountViewController);
  [(SUViewController *)v5 setClientInterface:[(SUClientController *)self clientInterface]];
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

  clientInterface = [(SUClientController *)self clientInterface];
  v6 = [(SUViewControllerFactory *)[(SUClientInterface *)clientInterface viewControllerFactory] newComposeReviewViewControllerWithCompositionURL:parameter];
  if (!v6)
  {
    v6 = [[SUComposeReviewViewController alloc] initWithCompositionURL:parameter];
  }

  [(SUViewController *)v6 setClientInterface:clientInterface];
  return v6;
}

- (void)_presentDialog:(id)dialog
{
  v5 = +[SUDialogManager sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SUClientController__presentDialog___block_invoke;
  v6[3] = &unk_1E8164CF0;
  v6[4] = dialog;
  v6[5] = self;
  [(SUDialogManager *)v5 presentDialog:dialog withCompletionBlock:v6];
}

void *__37__SUClientController__presentDialog___block_invoke(uint64_t a1, unint64_t a2)
{
  result = [*(a1 + 32) buttons];
  if ((a2 & 0x8000000000000000) == 0)
  {
    v5 = result;
    result = [result count];
    if (result > a2)
    {
      v8 = a1 + 32;
      v6 = *(a1 + 32);
      v7 = *(v8 + 8);
      v9 = [v5 objectAtIndex:a2];

      return [v7 performActionForDialog:v6 button:v9];
    }
  }

  return result;
}

- (void)_purgeCaches
{
  [MEMORY[0x1E695AC38] sharedURLCache];
  ISURLCachePurgeMemoryCache();
  imageCache = self->_imageCache;

  [(SUImageCache *)imageCache removeAllCachedImages];
}

- (void)_reloadOverlayConfigurationsFromURLBag
{
  v17 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1 && (v3 = objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0), v4 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8], "sharedCache"), "URLBagForContext:", v3), "valueForKey:", @"p2-overlay-actions"), objc_msgSend(v4, "count")))
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [[SUOverlayConfiguration alloc] initWithDictionary:*(*(&v12 + 1) + 8 * i)];
          if (v10)
          {
            v11 = v10;
            [(NSArray *)v5 addObject:v10];
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v5 = 0;
  }

  self->_overlayConfigurations = v5;
}

- (void)_reloadScriptExecutionContextFromURLBag
{
  clientIdentifier = [(SUClientController *)self clientIdentifier];
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
          [(SUScriptExecutionContext *)[(SUClientController *)self scriptExecutionContext] evaluateScriptAtURL:v8];
        }
      }
    }
  }
}

- (void)_reloadUserDefaultsFromURLBag
{
  v2 = [MEMORY[0x1E69D49F8] contextWithBagType:0];
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69E47F8] "sharedCache")];
  v4 = MEMORY[0x1E695E4D0];
  if (!v3)
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  CFPreferencesSetAppValue(@"ISGeniusLookupAvailable", *v4, @"com.apple.mobileipod");

  CFPreferencesAppSynchronize(@"com.apple.mobileipod");
}

@end