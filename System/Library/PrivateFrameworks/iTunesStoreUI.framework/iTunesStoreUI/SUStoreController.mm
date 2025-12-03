@interface SUStoreController
+ (void)setSharedInstance:(id)instance;
- (BOOL)_isAccountViewControllerVisible;
- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block;
- (BOOL)_reloadForStorefrontChange;
- (BOOL)_showWildcatAccountViewController:(id)controller animated:(BOOL)animated;
- (BOOL)application:(id)application handleOpenURL:(id)l;
- (BOOL)client:(id)client presentAccountViewController:(id)controller animated:(BOOL)animated;
- (BOOL)client:(id)client presentModalViewController:(id)controller animated:(BOOL)animated;
- (BOOL)isStoreEnabled;
- (NSString)defaultPNGNameForSuspend;
- (SUStoreController)init;
- (SUTabBarController)tabBarController;
- (UINavigationController)topNavigationController;
- (double)defaultImageSnapshotExpiration;
- (id)_resumableViewController;
- (id)overlayConfigurationForStorePage:(id)page;
- (id)storeContentLanguage;
- (id)topViewControllerForClient:(id)client;
- (void)_accountControllerDisappearedNotification:(id)notification;
- (void)_bagDidLoadNotification:(id)notification;
- (void)_cancelLoadSectionsOperation;
- (void)_cancelSuspendAfterDialogsDismissed;
- (void)_defaultHandleApplicationURLRequestProperties:(id)properties;
- (void)_dialogDidFinishNotification:(id)notification;
- (void)_handleAccountURL:(id)l;
- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)operation;
- (void)_handleFinishedLoadSectionsOperation:(id)operation;
- (void)_handleSearchURL:(id)l;
- (void)_handleSectionsLoadFailedWithError:(id)error;
- (void)_mainThreadStoreFrontChangedNotification:(id)notification;
- (void)_presentSectionFetchUI;
- (void)_reloadOverlayConfigurations;
- (void)_reloadWithSectionsResponse:(id)response;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_retrySectionsAfterNetworkTransition;
- (void)_saveArchivedNavigationPath;
- (void)_selectFooterSectionNotification:(id)notification;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)cancelAllOperations;
- (void)composeEmailByRestoringAutosavedMessage;
- (void)composeEmailWithSubject:(id)subject body:(id)body;
- (void)connect;
- (void)dealloc;
- (void)dismissMailComposeViewControllerAnimated:(BOOL)animated;
- (void)exitStoreAfterDialogsDismiss;
- (void)exitStoreWithReason:(int64_t)reason;
- (void)handleApplicationURL:(id)l;
- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error;
- (void)prepareForSuspend;
- (void)presentExternalURLViewController:(id)controller;
- (void)presentMailComposeViewController:(id)controller animated:(BOOL)animated;
- (void)setupUI;
- (void)tabBarController:(id)controller didEndCustomizingViewControllers:(id)controllers changed:(BOOL)changed;
- (void)tearDownUI;
@end

@implementation SUStoreController

- (SUStoreController)init
{
  v9.receiver = self;
  v9.super_class = SUStoreController;
  v2 = [(SUStoreController *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(SUClient);
    v2->_client = v3;
    [(SUClient *)v3 setDelegate:v2];
    [SUClient setSharedClient:v2->_client];
    [(SUPurchaseManager *)[(SUClientInterface *)[(SUClient *)v2->_client clientInterface] purchaseManager] setDelegate:v2];
    v4 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x3052000000;
    v8[3] = __Block_byref_object_copy__41;
    v8[4] = __Block_byref_object_dispose__41;
    v8[5] = v2;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__SUStoreController_init__block_invoke;
    v7[3] = &unk_1E8166500;
    v7[4] = v8;
    [v4 setItemLookupBlock:v7];
    [MEMORY[0x1E69D4990] setDefaultConditionalContext:v4];

    +[SURemoteNotificationController sharedInstance];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__selectFooterSectionNotification_ name:*MEMORY[0x1E69E46F8] object:0];
    [defaultCenter addObserver:v2 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];
    [defaultCenter addObserver:v2 selector:sel__bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
    [defaultCenter addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [defaultCenter addObserver:v2 selector:sel__accountControllerDisappearedNotification_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
    _Block_object_dispose(v8, 8);
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46F8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4718] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];
  v4 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
  [MEMORY[0x1E69D4990] setDefaultConditionalContext:v4];

  purchaseManager = [(SUClientInterface *)[(SUClient *)self->_client clientInterface] purchaseManager];
  if ([(SUPurchaseManager *)purchaseManager delegate]== self)
  {
    [(SUPurchaseManager *)purchaseManager setDelegate:0];
  }

  [SUClient setSharedClient:0];
  [(SUClient *)self->_client setDelegate:0];

  self->_client = 0;
  [(SUStoreController *)self tearDownUI];
  [(SUStoreController *)self _cancelLoadSectionsOperation];

  v6.receiver = self;
  v6.super_class = SUStoreController;
  [(SUStoreController *)&v6 dealloc];
}

+ (void)setSharedInstance:(id)instance
{
  if (__SharedInstance_2 != instance)
  {

    __SharedInstance_2 = instance;
  }
}

- (BOOL)application:(id)application handleOpenURL:(id)l
{
  if (self->_lastSectionsResponse)
  {
    [(SUStoreController *)self handleApplicationURL:l];
  }

  else
  {
    [(SUStoreController *)self setLaunchURL:l];
  }

  return 1;
}

- (void)cancelAllOperations
{
  [(SUStoreController *)self _cancelLoadSectionsOperation];
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];

  [mainQueue cancelAllOperations];
}

- (void)connect
{
  v36 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E47D0] invalidateCurrentMap];
  [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  [objc_msgSend(MEMORY[0x1E69D4890] "existingDefaultStore")];
  if (self->_localStoreFrontAtLastSuspend || self->_synchedStoreFrontAtLastSuspend)
  {
    currentDevice = [MEMORY[0x1E69D48B0] currentDevice];
    [currentDevice reloadStoreFrontIdentifier];
    storeFrontIdentifier = [currentDevice storeFrontIdentifier];
    localStoreFrontAtLastSuspend = self->_localStoreFrontAtLastSuspend;
    if ((localStoreFrontAtLastSuspend == storeFrontIdentifier || -[NSString isEqualToString:](localStoreFrontAtLastSuspend, "isEqualToString:")) && (![currentDevice isStoreFrontIdentifierTransient] || (v6 = objc_msgSend(currentDevice, "synchedStoreFrontIdentifier"), synchedStoreFrontAtLastSuspend = self->_synchedStoreFrontAtLastSuspend, synchedStoreFrontAtLastSuspend == v6) || -[NSString isEqualToString:](synchedStoreFrontAtLastSuspend, "isEqualToString:")))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v12 = shouldLog | 2;
      }

      else
      {
        v12 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v34 = 138412290;
        v35 = objc_opt_class();
        LODWORD(v31) = 12;
        v30 = &v34;
        v13 = _os_log_send_and_compose_impl();
        if (v13)
        {
          v14 = v13;
          v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v34, v31}];
          free(v14);
          v30 = v15;
          SSFileLog();
        }
      }

      [objc_msgSend(MEMORY[0x1E69E47F8] sharedCache];
      v9 = 0;
      v8 = 1;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];

    self->_localStoreFrontAtLastSuspend = 0;
    self->_synchedStoreFrontAtLastSuspend = 0;
    if (v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 1;
  }

  if (!self->_lastSectionsResponse)
  {
LABEL_23:
    reloadSectionsOnNextLaunch = 1;
    goto LABEL_24;
  }

  reloadSectionsOnNextLaunch = self->_reloadSectionsOnNextLaunch;
LABEL_24:
  self->_reloadSectionsOnNextLaunch = 0;
  v18 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v19 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  if (v19 != v18 && ([v18 isEqual:v19] & 1) == 0)
  {
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v22 = shouldLog2 | 2;
    }

    else
    {
      v22 = shouldLog2;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v34 = 138412290;
      v35 = v23;
      LODWORD(v31) = 12;
      v30 = &v34;
      v24 = _os_log_send_and_compose_impl();
      if (v24)
      {
        v25 = v24;
        v26 = [MEMORY[0x1E696AEC0] stringWithCString:v24 encoding:{4, &v34, v31}];
        free(v25);
        v30 = v26;
        SSFileLog();
      }
    }

    [(SUTabBarController *)self->_tabBarController resetToSystemDefaults];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    if (reloadSectionsOnNextLaunch)
    {
      [+[SUNetworkObserver sharedInstance](SUNetworkObserver startNetworkAvailabilityTimer];
      [(SUTabBarController *)self->_tabBarController dismissViewControllerAnimated:0 completion:0];
      [(SUTabBarController *)self->_tabBarController setSections:0];
      [(SUStoreController *)self _presentSectionFetchUI];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __28__SUStoreController_connect__block_invoke_2;
      v32[3] = &unk_1E8164348;
      v32[4] = self;
      v27 = v32;
      selfCopy2 = self;
      v29 = v9;
    }

    else
    {
      if (![(SUTabBarController *)self->_tabBarController sections])
      {
        [(SUTabBarController *)self->_tabBarController setSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
        [(SUTabBarController *)self->_tabBarController loadFromDefaults];
        [(SUStoreController *)self setupUI];
      }

      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __28__SUStoreController_connect__block_invoke;
      v33[3] = &unk_1E8164348;
      v33[4] = self;
      v27 = v33;
      selfCopy2 = self;
      v29 = 1;
    }

    [(SUStoreController *)selfCopy2 _loadSectionsAllowingCache:v29 withCompletionBlock:v27];
  }
}

uint64_t __28__SUStoreController_connect__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainThreadProxy];
  v3 = *(*(a1 + 32) + 40);

  return [v2 _handleFinishedBackgroundLoadSectionsOperation:v3];
}

uint64_t __28__SUStoreController_connect__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) mainThreadProxy];
  v3 = *(*(a1 + 32) + 40);

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (double)defaultImageSnapshotExpiration
{
  [objc_msgSend(MEMORY[0x1E695DF00] "distantFuture")];
  if (self->_reloadSectionsOnNextLaunch)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];

    [distantPast timeIntervalSinceReferenceDate];
  }

  else
  {
    v6 = v3;
    if ([(SUStoreController *)self isTabBarControllerLoaded]&& (v7 = [(UINavigationController *)[(SUStoreController *)self topNavigationController] topViewController], (objc_opt_respondsToSelector() & 1) != 0))
    {

      [(UIViewController *)v7 defaultPNGExpirationTime];
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (void)exitStoreAfterDialogsDismiss
{
  if ([+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [(SUStoreController *)self _cancelSuspendAfterDialogsDismissed];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter addObserver:self selector:sel__dialogDidFinishNotification_ name:@"SUDialogDidFinishNotification" object:0];
  }

  else
  {

    [(SUStoreController *)self exitStoreWithReason:0];
  }
}

- (void)exitStoreWithReason:(int64_t)reason
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];

  [mEMORY[0x1E69DC668] suspend];
}

- (BOOL)isStoreEnabled
{
  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v3 = [mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [+[SUClient sharedClient](SUClient "sharedClient")];
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  Count = CFArrayGetCount(v5);
  v8 = Count == 0;
  if (Count >= 1)
  {
    v9 = Count;
    v8 = 0;
    for (i = 0; i != v9; ++i)
    {
      CFArrayGetValueAtIndex(v6, i);
      v11 = SSDownloadKindForAssetType();
      if (v8)
      {
        v8 = 1;
      }

      else
      {
        v8 = [objc_msgSend(v4 networkConstraintsForDownloadKind:{v11), "isAnyNetworkTypeEnabled"}];
      }
    }
  }

  return v8;
}

- (id)overlayConfigurationForStorePage:(id)page
{
  v19 = *MEMORY[0x1E69E9840];
  uRLRequestProperties = [page URLRequestProperties];
  uRLBagKey = [uRLRequestProperties URLBagKey];
  v6 = [uRLRequestProperties URL];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  overlayConfigurations = self->_overlayConfigurations;
  v8 = [(NSArray *)overlayConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *v15;
LABEL_3:
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
        return v12;
      }
    }

    if (uRLBagKey && ([v12 matchesURLBagKey:uRLBagKey] & 1) != 0)
    {
      return v12;
    }

    if (v9 == ++v11)
    {
      v9 = [(NSArray *)overlayConfigurations countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)prepareForSuspend
{
  if (self->_mailComposeViewController)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = *MEMORY[0x1E69DDBE8];
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__SUStoreController_prepareForSuspend__block_invoke;
    v10[3] = &unk_1E8164320;
    v10[4] = &v11;
    v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v10];
    v12[3] = v4;
    mailComposeViewController = self->_mailComposeViewController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__SUStoreController_prepareForSuspend__block_invoke_2;
    v9[3] = &unk_1E8166528;
    v9[4] = &v11;
    [(MFMailComposeViewController *)mailComposeViewController autosaveWithHandler:v9];
    _Block_object_dispose(&v11, 8);
  }

  [MEMORY[0x1E695AC38] sharedURLCache];
  ISURLCacheSaveMemoryCache();
  if ([(SUStoreController *)self _isAccountViewControllerVisible])
  {
    [(SUTabBarController *)self->_tabBarController dismissViewControllerAnimated:0 completion:0];
  }

  currentDevice = [MEMORY[0x1E69D48B0] currentDevice];

  self->_localStoreFrontAtLastSuspend = [currentDevice storeFrontIdentifier];
  synchedStoreFrontIdentifier = [currentDevice synchedStoreFrontIdentifier];
  self->_synchedStoreFrontAtLastSuspend = synchedStoreFrontIdentifier;
  if (self->_localStoreFrontAtLastSuspend | synchedStoreFrontIdentifier)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  }

  [(SUStoreController *)self _saveArchivedNavigationPath];
  [(SUStoreController *)self _cancelLoadSectionsOperation];
}

uint64_t __38__SUStoreController_prepareForSuspend__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

uint64_t __38__SUStoreController_prepareForSuspend__block_invoke_2(uint64_t a1, const void *a2)
{
  v3 = *MEMORY[0x1E695E8A8];
  CFPreferencesSetAppValue(@"SUAutosavedMessageID", a2, *MEMORY[0x1E695E8A8]);
  CFPreferencesAppSynchronize(v3);
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

- (void)presentExternalURLViewController:(id)controller
{
  objc_opt_class();
  controllerCopy = controller;
  if (objc_opt_isKindOfClass())
  {
    controllerCopy = [controller topViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(SUStoreController *)self overlayConfigurationForStorePage:controllerCopy]) != 0)
  {
    v7 = v6;
    tabBarController = [(SUStoreController *)self tabBarController];

    [(UIViewController *)tabBarController presentViewController:controller inOverlayWithConfiguration:v7];
  }

  else
  {
    tabBarController2 = [(SUStoreController *)self tabBarController];
    [(SUTabBarController *)tabBarController2 setTransientViewController:controller animated:0];
    if ([(SUTabBarController *)tabBarController2 presentedViewController])
    {

      [(SUTabBarController *)tabBarController2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)tearDownUI
{
  [(SUStoreController *)self _cancelSuspendAfterDialogsDismissed];
  [(SUStoreController *)self _saveArchivedNavigationPath];
  [(SUTabBarController *)self->_tabBarController setDelegate:0];
  if ([(SUTabBarController *)self->_tabBarController isViewLoaded])
  {
    [-[SUTabBarController view](self->_tabBarController "view")];
  }

  self->_tabBarController = 0;
}

- (NSString)defaultPNGNameForSuspend
{
  _resumableViewController = [(SUStoreController *)self _resumableViewController];

  return [_resumableViewController defaultPNGName];
}

- (id)storeContentLanguage
{
  if (!self->_storeFrontLanguages)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    self->_storeFrontLanguages = [v3 initWithContentsOfFile:{objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8], "bundleForClass:", objc_opt_class()), "pathForResource:ofType:", @"StoreFrontLanguages", @"plist"}];
  }

  result = [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")];
  if (result)
  {
    v5 = result;
    v6 = [result rangeOfString:@"-" options:0 range:{0, objc_msgSend(result, "length")}];
    v7 = [v5 rangeOfString:@" options:" range:{0, 0, objc_msgSend(v5, "length")}];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_8:
        v8 = [(NSDictionary *)self->_storeFrontLanguages objectForKey:v5];

        return [v8 objectForKey:@"LanguageCode"];
      }

      v6 = v7;
    }

    v5 = [v5 substringToIndex:v6];
    goto LABEL_8;
  }

  return result;
}

- (SUTabBarController)tabBarController
{
  if (!self->_tabBarController)
  {
    v3 = [[SUTabBarController alloc] initWithClientInterface:[(SUClient *)self->_client clientInterface]];
    self->_tabBarController = v3;
    [(SUTabBarController *)v3 setDelegate:self];
    [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
    [-[SUTabBarController view](self->_tabBarController "view")];
    if ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG])
    {
      v8 = [-[SUClient viewControllerFactory](self->_client "viewControllerFactory")];
      [v8 setClientInterface:{-[SUClient clientInterface](self->_client, "clientInterface")}];
      v9 = [[SUNavigationController alloc] initWithRootViewController:v8];
      [(SUNavigationController *)v9 setClientInterface:[(SUClient *)self->_client clientInterface]];
      [(SUTabBarController *)self->_tabBarController setTransientViewController:v9];
    }
  }

  return self->_tabBarController;
}

- (UINavigationController)topNavigationController
{
  transientViewController = [(SUTabBarController *)[(SUStoreController *)self tabBarController] transientViewController];
  if (!transientViewController)
  {
    transientViewController = [(UITabBarController *)[(SUStoreController *)self tabBarController] selectedNavigationController];
  }

  for (i = transientViewController; [(UINavigationController *)i presentedViewController]; transientViewController = i)
  {
    i = [(UINavigationController *)transientViewController presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return transientViewController;
  }

  return [(UINavigationController *)transientViewController navigationController];
}

- (void)_accountControllerDisappearedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_reloadForStorefrontChangeAfterAccountSetup)
  {
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

    self->_reloadForStorefrontChangeAfterAccountSetup = 0;
    [(SUStoreController *)self _reloadForStorefrontChange];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)_bagDidLoadNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(SUStoreController *)self _isAccountViewControllerVisible])
  {
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
        SSFileLog();
        [(SUStoreController *)self _reloadOverlayConfigurations];
        return;
      }
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  [(SUStoreController *)self _reloadOverlayConfigurations];
}

- (void)_dialogDidFinishNotification:(id)notification
{
  if (![+[SUDialogManager numberOfPendingDialogs:notification]])
  {

    [(SUStoreController *)self exitStoreWithReason:0];
  }
}

- (void)_restrictionsChangedNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SUStoreController__restrictionsChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __54__SUStoreController__restrictionsChangedNotification___block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 24))
  {
    v1 = result;
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
      v10 = 138412290;
      v11 = objc_opt_class();
      LODWORD(v9) = 12;
      v8 = &v10;
      v5 = _os_log_send_and_compose_impl();
      if (v5)
      {
        v6 = v5;
        v7 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:{4, &v10, v9}];
        free(v6);
        v8 = v7;
        SSFileLog();
      }
    }

    return [*(*(v1 + 32) + 88) setSections:{objc_msgSend(*(*(v1 + 32) + 24), "sections", v8)}];
  }

  return result;
}

- (void)_mainThreadStoreFrontChangedNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(SUStoreController *)self _isAccountViewControllerVisible])
  {
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
      v10 = 138412290;
      v11 = objc_opt_class();
      LODWORD(v9) = 12;
      v7 = _os_log_send_and_compose_impl();
      if (v7)
      {
        v8 = v7;
        [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v10, v9}];
        free(v8);
        SSFileLog();
      }
    }

    self->_reloadForStorefrontChangeAfterAccountSetup = 1;
  }

  else
  {

    [(SUStoreController *)self _reloadForStorefrontChange];
  }
}

- (void)_selectFooterSectionNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69E46F0]];
  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
      shouldLog = [mEMORY[0x1E69D4938] shouldLog];
      if ([mEMORY[0x1E69D4938] shouldLogToDisk])
      {
        v8 = shouldLog | 2;
      }

      else
      {
        v8 = shouldLog;
      }

      if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v5;
        LODWORD(v13) = 22;
        v12 = &v14;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v14, v13}];
          free(v10);
          v12 = v11;
          SSFileLog();
        }
      }

      [(SUTabBarController *)self->_tabBarController setSelectedIdentifier:v5, v12];
    }
  }
}

- (void)_storeFrontChangedNotification:(id)notification
{
  mainThreadProxy = [(SUStoreController *)self mainThreadProxy];

  [mainThreadProxy _mainThreadStoreFrontChangedNotification:notification];
}

- (BOOL)client:(id)client presentAccountViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v8 = [[SUNavigationController alloc] initWithRootViewController:controller];
  -[SUNavigationController setClientInterface:](v8, "setClientInterface:", [client clientInterface]);
  [(SUNavigationController *)v8 setNavigationBarHidden:1];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    v9 = [(SUStoreController *)self _showWildcatAccountViewController:v8 animated:animatedCopy];
  }

  else
  {
    v9 = [(SUStoreController *)self client:client presentModalViewController:v8 animated:animatedCopy];
  }

  v10 = v9;

  return v10;
}

- (BOOL)client:(id)client presentModalViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  for (i = [(SUStoreController *)self tabBarController]; ; i = [(SUTabBarController *)v8 presentedViewController])
  {
    v8 = i;
    if (![(SUTabBarController *)i presentedViewController])
    {
      break;
    }
  }

  [(UIViewController *)v8 transitionSafePresentModalViewController:controller animated:animatedCopy];
  return v8 != 0;
}

- (id)topViewControllerForClient:(id)client
{
  topNavigationController = [(SUStoreController *)self topNavigationController];

  return [(UINavigationController *)topNavigationController topViewController];
}

- (void)tabBarController:(id)controller didEndCustomizingViewControllers:(id)controllers changed:(BOOL)changed
{
  if (changed)
  {
    [(SUTabBarController *)self->_tabBarController saveOrderingToDefaults:controller];
  }
}

- (void)handleApplicationURL:(id)l
{
  storeURLType = [l storeURLType];
  v6 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (storeURLType != 1 || v6 == 1)
  {
    if (storeURLType == 2)
    {

      [(SUStoreController *)self _handleAccountURL:l];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(l, "schemeSwizzledURL")}];
      [(SUStoreController *)self _defaultHandleApplicationURLRequestProperties:v7];
    }
  }

  else
  {

    [(SUStoreController *)self _handleSearchURL:l];
  }
}

- (void)setupUI
{
  launchURL = [(SUStoreController *)self launchURL];
  if (launchURL)
  {
    [(SUStoreController *)self handleApplicationURL:launchURL];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {

    [(SUStoreController *)self composeEmailByRestoringAutosavedMessage];
  }
}

- (void)_cancelLoadSectionsOperation
{
  [(ISOperation *)self->_loadSectionsOperation setCompletionBlock:0];
  [(ISOperation *)self->_loadSectionsOperation cancel];

  self->_loadSectionsOperation = 0;
}

- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)operation
{
  v16 = *MEMORY[0x1E69E9840];
  sectionsResponse = [operation sectionsResponse];

  self->_lastBackgroundSectionsResponse = 0;
  if ([operation success] && objc_msgSend(sectionsResponse, "responseType") == 1 && (objc_msgSend(objc_msgSend(sectionsResponse, "versionString"), "isEqualToString:", -[SUSectionsResponse versionString](self->_lastSectionsResponse, "versionString")) & 1) == 0)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v8 = shouldLog | 2;
    }

    else
    {
      v8 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v8 &= 2u;
    }

    if (v8)
    {
      v14 = 138412290;
      v15 = objc_opt_class();
      LODWORD(v13) = 12;
      v12 = &v14;
      v9 = _os_log_send_and_compose_impl();
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, &v14, v13}];
        free(v10);
        v12 = v11;
        SSFileLog();
      }
    }

    self->_lastBackgroundSectionsResponse = sectionsResponse;
    self->_reloadSectionsOnNextLaunch = 1;
  }

  [(SUStoreController *)self _cancelLoadSectionsOperation];
}

- (void)_handleFinishedLoadSectionsOperation:(id)operation
{
  if ([operation success])
  {
    -[SUStoreController _reloadWithSectionsResponse:](self, "_reloadWithSectionsResponse:", [operation sectionsResponse]);
  }

  else
  {
    -[SUStoreController _handleSectionsLoadFailedWithError:](self, "_handleSectionsLoadFailedWithError:", [operation error]);
  }

  [(SUStoreController *)self _cancelLoadSectionsOperation];
}

- (void)_handleSectionsLoadFailedWithError:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  if (ISErrorIndicatesSlowNetwork())
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v7 = shouldLog | 2;
    }

    else
    {
      v7 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v15 = 138412290;
      v16 = objc_opt_class();
      LODWORD(v14) = 12;
      v13 = &v15;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v15, v14}];
        free(v9);
        v13 = v10;
        SSFileLog();
      }
    }

    [+[SUDialogManager presentDialogForError:v13], "presentDialogForError:", error];
    [(SUStoreController *)self _retrySectionsAfterNetworkTransition];
  }

  else
  {
    transientViewController = [(SUTabBarController *)self->_tabBarController transientViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transientViewController = [transientViewController topViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      [transientViewController setSkLoading:0];
    }

    v12 = +[SUDialogManager sharedInstance];
    if (![(SUDialogManager *)v12 numberOfPendingDialogs])
    {
      if (!error)
      {
        error = ISError();
      }

      [(SUDialogManager *)v12 presentDialogForError:error];
    }

    [(SUStoreController *)self exitStoreAfterDialogsDismiss];
  }
}

- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block
{
  loadSectionsOperation = self->_loadSectionsOperation;
  if (!loadSectionsOperation)
  {
    cacheCopy = cache;
    v8 = [[SULoadSectionsOperation alloc] initWithClientInterface:[(SUClient *)self->_client clientInterface]];
    [(SULoadSectionsOperation *)v8 setActiveSectionVersionString:[(SUSectionsResponse *)self->_lastSectionsResponse versionString]];
    [(SULoadSectionsOperation *)v8 setCompletionBlock:block];
    [(SULoadSectionsOperation *)v8 setShouldUseCache:cacheCopy];
    self->_loadSectionsOperation = &v8->super;
    [objc_msgSend(MEMORY[0x1E69E4798] "mainQueue")];
  }

  return loadSectionsOperation == 0;
}

- (void)_presentSectionFetchUI
{
  v4 = [-[SUClient viewControllerFactory](self->_client "viewControllerFactory")];
  [v4 setClientInterface:{-[SUClient clientInterface](self->_client, "clientInterface")}];
  v3 = [[SUNavigationController alloc] initWithRootViewController:v4];
  [(SUNavigationController *)v3 setClientInterface:[(SUClient *)self->_client clientInterface]];
  [v4 setSkLoading:1];
  [(SUTabBarController *)self->_tabBarController setTransientViewController:v3 animated:0];
}

- (BOOL)_reloadForStorefrontChange
{
  [(SUTabBarController *)self->_tabBarController dismissViewControllerAnimated:0 completion:0];
  [(SUTabBarController *)self->_tabBarController setViewControllers:0];
  [(SUStoreController *)self _presentSectionFetchUI];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SUStoreController__reloadForStorefrontChange__block_invoke;
  v4[3] = &unk_1E8164348;
  v4[4] = self;
  return [(SUStoreController *)self _loadSectionsAllowingCache:0 withCompletionBlock:v4];
}

uint64_t __47__SUStoreController__reloadForStorefrontChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainThreadProxy];
  v3 = *(*(a1 + 32) + 40);

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_retrySectionsAfterNetworkTransition
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_lastSectionsResponse && [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")] >= 1)
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v5 = shouldLog | 2;
    }

    else
    {
      v5 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v5 &= 2u;
    }

    if (v5)
    {
      v12 = 138412290;
      v13 = objc_opt_class();
      LODWORD(v10) = 12;
      v9 = &v12;
      v6 = _os_log_send_and_compose_impl();
      if (v6)
      {
        v7 = v6;
        v8 = [MEMORY[0x1E696AEC0] stringWithCString:v6 encoding:{4, &v12, v10}];
        free(v7);
        v9 = v8;
        SSFileLog();
      }
    }

    [(SUStoreController *)self _presentSectionFetchUI];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__SUStoreController__retrySectionsAfterNetworkTransition__block_invoke;
    v11[3] = &unk_1E8164348;
    v11[4] = self;
    [(SUStoreController *)self _loadSectionsAllowingCache:1 withCompletionBlock:v11];
  }
}

uint64_t __57__SUStoreController__retrySectionsAfterNetworkTransition__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mainThreadProxy];
  v3 = *(*(a1 + 32) + 40);

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_cancelSuspendAfterDialogsDismissed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
}

- (void)_defaultHandleApplicationURLRequestProperties:(id)properties
{
  v5 = [-[SUTabBarController selectedViewController](-[SUStoreController tabBarController](self "tabBarController")];
  v7 = [-[SUClient viewControllerFactory](self->_client "viewControllerFactory")];
  [v7 setClientInterface:{-[SUClient clientInterface](self->_client, "clientInterface")}];
  [v7 setExternalRequest:1];
  [v7 setURLRequestProperties:properties];
  v6 = [[SUNavigationController alloc] initWithSection:v5 rootViewController:v7];
  [(SUNavigationController *)v6 setClientInterface:[(SUClient *)self->_client clientInterface]];
  [(SUStoreController *)self presentExternalURLViewController:v6];
}

- (void)_handleAccountURL:(id)l
{
  v4 = 1;
  v14 = [l copyQueryStringDictionaryWithUnescapedValues:1];
  v5 = [v14 objectForKey:@"url"];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
    v4 = v6 == 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v14 objectForKey:@"continuation"];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFF8] copyDictionaryForQueryString:v7 unescapedValues:1];
  }

  else
  {
    v8 = 0;
  }

  if ([v14 objectForKey:@"dsid"])
  {
    UniqueIdentifierFromValue = SSAccountGetUniqueIdentifierFromValue();
  }

  else
  {
    UniqueIdentifierFromValue = 0;
  }

  v10 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{objc_msgSend(v6, "schemeSwizzledURL")}];
  [v10 setRequestParameters:v8];
  v11 = objc_alloc_init(SUAccountViewController);
  [(SUViewController *)v11 setClientInterface:[(SUClient *)self->_client clientInterface]];
  [(SUStorePageViewController *)v11 setExternalRequest:1];
  [(SUStorePageViewController *)v11 setURLRequestProperties:v10];
  [(SUAccountViewController *)v11 setStyle:v4];
  if (UniqueIdentifierFromValue && [UniqueIdentifierFromValue unsignedLongLongValue])
  {
    v12 = [(SSAuthenticationContext *)[(SUStorePageViewController *)v11 authenticationContext] mutableCopy];
    if (v12)
    {
      v13 = v12;
      [v12 setRequiredUniqueIdentifier:UniqueIdentifierFromValue];
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E69D4968]) initWithAccountIdentifier:UniqueIdentifierFromValue];
    }

    [(SUStorePageViewController *)v11 setAuthenticationContext:v13];
  }

  [+[SUClient sharedClient](SUClient "sharedClient")];
}

- (void)_handleSearchURL:(id)l
{
  v19 = *MEMORY[0x1E69E9840];
  tabBarController = [(SUStoreController *)self tabBarController];
  sections = [(SUTabBarController *)tabBarController sections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSArray *)sections countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(sections);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      searchFieldConfiguration = [v11 searchFieldConfiguration];
      if (searchFieldConfiguration)
      {
        if ([searchFieldConfiguration location] != 2)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)sections countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (!v11)
    {
      goto LABEL_13;
    }

    -[SUTabBarController setSelectedIdentifier:](tabBarController, "setSelectedIdentifier:", [v11 identifier]);
  }

  else
  {
LABEL_13:
    [(SUTabBarController *)tabBarController selectSectionOfType:1];
  }

  topViewController = [(UINavigationController *)[(SUStoreController *)self topNavigationController] topViewController];
  if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:](topViewController, "handleApplicationURL:", [l schemeSwizzledURL]);
  }
}

- (BOOL)_isAccountViewControllerVisible
{
  presentedViewController = [(SUTabBarController *)self->_tabBarController presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [presentedViewController topViewController];
  }

  objc_opt_class();
  return objc_opt_isKindOfClass() & 1;
}

- (void)_reloadOverlayConfigurations
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

- (void)_reloadWithSectionsResponse:(id)response
{
  lastSectionsResponse = self->_lastSectionsResponse;
  if (lastSectionsResponse != response)
  {

    self->_lastSectionsResponse = response;
  }

  [(SUTabBarController *)self->_tabBarController setTransientViewController:0 animated:0];
  [(SUTabBarController *)self->_tabBarController setSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
  [(SUTabBarController *)self->_tabBarController setMoreListTitle:[(SUSectionsResponse *)self->_lastSectionsResponse moreListTitle]];
  lastBackgroundSectionsResponse = self->_lastBackgroundSectionsResponse;
  if (!lastBackgroundSectionsResponse || ![(NSString *)[(SUSectionsResponse *)lastBackgroundSectionsResponse versionString] isEqualToString:[(SUSectionsResponse *)self->_lastSectionsResponse versionString]])
  {
    if (![(SUSectionsResponse *)self->_lastSectionsResponse shouldResetUserOrdering]|| ![(SUSectionsResponse *)self->_lastSectionsResponse responseType])
    {
      goto LABEL_10;
    }

LABEL_9:
    [(SUTabBarController *)self->_tabBarController selectDefaultSection];
    [(SUTabBarController *)self->_tabBarController resetUserDefaults];
    goto LABEL_11;
  }

  if ([(SUSectionsResponse *)self->_lastBackgroundSectionsResponse shouldResetUserOrdering])
  {
    goto LABEL_9;
  }

LABEL_10:
  [(SUTabBarController *)self->_tabBarController loadFromDefaults];
LABEL_11:

  self->_lastBackgroundSectionsResponse = 0;

  [(SUStoreController *)self setupUI];
}

- (id)_resumableViewController
{
  selectedViewController = [(SUTabBarController *)self->_tabBarController selectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    copyArchivableContext = [selectedViewController copyArchivableContext];
    if (copyArchivableContext)
    {

      return selectedViewController;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  viewControllers = [selectedViewController viewControllers];
  v5 = [viewControllers count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  do
  {
    selectedViewController = [viewControllers objectAtIndex:v6 - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [selectedViewController copyArchivableContext]) != 0)
    {
    }

    else
    {
      selectedViewController = 0;
    }

    if (v6 < 2)
    {
      break;
    }

    --v6;
  }

  while (!selectedViewController);
  return selectedViewController;
}

- (void)_saveArchivedNavigationPath
{
  if (([+[SUClient sharedClient](SUClient "sharedClient")] & 1) == 0 && self->_lastSectionsResponse)
  {
    [(SUTabBarController *)self->_tabBarController saveToDefaults];
  }

  v3 = +[SUClient sharedClient];

  [v3 setDontSaveNavigationPath:0];
}

- (BOOL)_showWildcatAccountViewController:(id)controller animated:(BOOL)animated
{
  v19 = *MEMORY[0x1E69E9840];
  overlayBackgroundViewController = [-[SUTabBarController overlayBackgroundViewController](self->_tabBarController overlayBackgroundViewController];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [overlayBackgroundViewController countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v15 != v9)
      {
        objc_enumerationMutation(overlayBackgroundViewController);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      backViewController = [v11 backViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [backViewController topViewController];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [overlayBackgroundViewController countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }

    if (!v11)
    {
      goto LABEL_14;
    }

    [v11 setBackViewController:controller];
  }

  else
  {
LABEL_14:
    [(SUStoreController *)self presentExternalURLViewController:controller];
  }

  return 1;
}

- (void)composeEmailByRestoringAutosavedMessage
{
  if (CPCanSendMail())
  {
    if (![(SUStoreController *)self isComposingEmail])
    {
      v3 = *MEMORY[0x1E695E8A8];
      v6 = CFPreferencesCopyAppValue(@"SUAutosavedMessageID", *MEMORY[0x1E695E8A8]);
      if (v6)
      {
        v4 = ISWeakLinkedClassForString();
        if ([(objc_class *)v4 hasAutosavedMessageWithIdentifier:v6])
        {
          v5 = objc_alloc_init(v4);
          self->_mailComposeViewController = v5;
          [(MFMailComposeViewController *)v5 setKeyboardVisible:1];
          [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
          [(MFMailComposeViewController *)self->_mailComposeViewController recoverAutosavedMessageWithIdentifier:v6];
          [(SUStoreController *)self presentMailComposeViewController:self->_mailComposeViewController animated:0];
        }

        CFPreferencesSetAppValue(@"SUAutosavedMessageID", 0, v3);
        CFPreferencesAppSynchronize(v3);
      }
    }
  }
}

- (void)composeEmailWithSubject:(id)subject body:(id)body
{
  if (CPCanSendMail() && ![(SUStoreController *)self isComposingEmail])
  {
    v7 = objc_alloc_init(ISWeakLinkedClassForString());
    self->_mailComposeViewController = v7;
    [(MFMailComposeViewController *)v7 setKeyboardVisible:1];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
    [(MFMailComposeViewController *)self->_mailComposeViewController setSubject:subject];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMessageBody:body isHTML:1];
    mailComposeViewController = self->_mailComposeViewController;

    [(SUStoreController *)self presentMailComposeViewController:mailComposeViewController animated:1];
  }
}

- (void)dismissMailComposeViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  tabBarController = [(SUStoreController *)self tabBarController];

  [(SUTabBarController *)tabBarController dismissViewControllerAnimated:animatedCopy completion:0];
}

- (void)mailComposeController:(id)controller didFinishWithResult:(int64_t)result error:(id)error
{
  [(SUStoreController *)self dismissMailComposeViewControllerAnimated:1, result, error];

  self->_mailComposeViewController = 0;
}

- (void)presentMailComposeViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  topNavigationController = [(SUStoreController *)self topNavigationController];

  [(UINavigationController *)topNavigationController presentViewController:controller animated:animatedCopy completion:0];
}

@end