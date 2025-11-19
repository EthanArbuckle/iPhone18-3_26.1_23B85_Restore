@interface SUStoreController
+ (void)setSharedInstance:(id)a3;
- (BOOL)_isAccountViewControllerVisible;
- (BOOL)_loadSectionsAllowingCache:(BOOL)a3 withCompletionBlock:(id)a4;
- (BOOL)_reloadForStorefrontChange;
- (BOOL)_showWildcatAccountViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)application:(id)a3 handleOpenURL:(id)a4;
- (BOOL)client:(id)a3 presentAccountViewController:(id)a4 animated:(BOOL)a5;
- (BOOL)client:(id)a3 presentModalViewController:(id)a4 animated:(BOOL)a5;
- (BOOL)isStoreEnabled;
- (NSString)defaultPNGNameForSuspend;
- (SUStoreController)init;
- (SUTabBarController)tabBarController;
- (UINavigationController)topNavigationController;
- (double)defaultImageSnapshotExpiration;
- (id)_resumableViewController;
- (id)overlayConfigurationForStorePage:(id)a3;
- (id)storeContentLanguage;
- (id)topViewControllerForClient:(id)a3;
- (void)_accountControllerDisappearedNotification:(id)a3;
- (void)_bagDidLoadNotification:(id)a3;
- (void)_cancelLoadSectionsOperation;
- (void)_cancelSuspendAfterDialogsDismissed;
- (void)_defaultHandleApplicationURLRequestProperties:(id)a3;
- (void)_dialogDidFinishNotification:(id)a3;
- (void)_handleAccountURL:(id)a3;
- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)a3;
- (void)_handleFinishedLoadSectionsOperation:(id)a3;
- (void)_handleSearchURL:(id)a3;
- (void)_handleSectionsLoadFailedWithError:(id)a3;
- (void)_mainThreadStoreFrontChangedNotification:(id)a3;
- (void)_presentSectionFetchUI;
- (void)_reloadOverlayConfigurations;
- (void)_reloadWithSectionsResponse:(id)a3;
- (void)_restrictionsChangedNotification:(id)a3;
- (void)_retrySectionsAfterNetworkTransition;
- (void)_saveArchivedNavigationPath;
- (void)_selectFooterSectionNotification:(id)a3;
- (void)_storeFrontChangedNotification:(id)a3;
- (void)cancelAllOperations;
- (void)composeEmailByRestoringAutosavedMessage;
- (void)composeEmailWithSubject:(id)a3 body:(id)a4;
- (void)connect;
- (void)dealloc;
- (void)dismissMailComposeViewControllerAnimated:(BOOL)a3;
- (void)exitStoreAfterDialogsDismiss;
- (void)exitStoreWithReason:(int64_t)a3;
- (void)handleApplicationURL:(id)a3;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)prepareForSuspend;
- (void)presentExternalURLViewController:(id)a3;
- (void)presentMailComposeViewController:(id)a3 animated:(BOOL)a4;
- (void)setupUI;
- (void)tabBarController:(id)a3 didEndCustomizingViewControllers:(id)a4 changed:(BOOL)a5;
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
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__selectFooterSectionNotification_ name:*MEMORY[0x1E69E46F8] object:0];
    [v5 addObserver:v2 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];
    [v5 addObserver:v2 selector:sel__bagDidLoadNotification_ name:*MEMORY[0x1E69E4718] object:0];
    [v5 addObserver:v2 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [v5 addObserver:v2 selector:sel__accountControllerDisappearedNotification_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    [v5 addObserver:v2 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
    _Block_object_dispose(v8, 8);
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69E46F8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4718] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [v3 removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [v3 removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];
  v4 = [objc_msgSend(MEMORY[0x1E69E4748] "sharedInstance")];
  [MEMORY[0x1E69D4990] setDefaultConditionalContext:v4];

  v5 = [(SUClientInterface *)[(SUClient *)self->_client clientInterface] purchaseManager];
  if ([(SUPurchaseManager *)v5 delegate]== self)
  {
    [(SUPurchaseManager *)v5 setDelegate:0];
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

+ (void)setSharedInstance:(id)a3
{
  if (__SharedInstance_2 != a3)
  {

    __SharedInstance_2 = a3;
  }
}

- (BOOL)application:(id)a3 handleOpenURL:(id)a4
{
  if (self->_lastSectionsResponse)
  {
    [(SUStoreController *)self handleApplicationURL:a4];
  }

  else
  {
    [(SUStoreController *)self setLaunchURL:a4];
  }

  return 1;
}

- (void)cancelAllOperations
{
  [(SUStoreController *)self _cancelLoadSectionsOperation];
  v2 = [MEMORY[0x1E69E4798] mainQueue];

  [v2 cancelAllOperations];
}

- (void)connect
{
  v36 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E47D0] invalidateCurrentMap];
  [objc_msgSend(MEMORY[0x1E69E4778] "sharedInstance")];
  [objc_msgSend(MEMORY[0x1E69D4890] "existingDefaultStore")];
  if (self->_localStoreFrontAtLastSuspend || self->_synchedStoreFrontAtLastSuspend)
  {
    v3 = [MEMORY[0x1E69D48B0] currentDevice];
    [v3 reloadStoreFrontIdentifier];
    v4 = [v3 storeFrontIdentifier];
    localStoreFrontAtLastSuspend = self->_localStoreFrontAtLastSuspend;
    if ((localStoreFrontAtLastSuspend == v4 || -[NSString isEqualToString:](localStoreFrontAtLastSuspend, "isEqualToString:")) && (![v3 isStoreFrontIdentifierTransient] || (v6 = objc_msgSend(v3, "synchedStoreFrontIdentifier"), synchedStoreFrontAtLastSuspend = self->_synchedStoreFrontAtLastSuspend, synchedStoreFrontAtLastSuspend == v6) || -[NSString isEqualToString:](synchedStoreFrontAtLastSuspend, "isEqualToString:")))
    {
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v10 = [MEMORY[0x1E69D4938] sharedConfig];
      v11 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v12 = v11 | 2;
      }

      else
      {
        v12 = v11;
      }

      if (!os_log_type_enabled([v10 OSLogObject], OS_LOG_TYPE_DEBUG))
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

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:self selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];

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
    v20 = [MEMORY[0x1E69D4938] sharedConfig];
    v21 = [v20 shouldLog];
    if ([v20 shouldLogToDisk])
    {
      v22 = v21 | 2;
    }

    else
    {
      v22 = v21;
    }

    if (!os_log_type_enabled([v20 OSLogObject], OS_LOG_TYPE_DEBUG))
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
      v28 = self;
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
      v28 = self;
      v29 = 1;
    }

    [(SUStoreController *)v28 _loadSectionsAllowingCache:v29 withCompletionBlock:v27];
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
    v4 = [MEMORY[0x1E695DF00] distantPast];

    [v4 timeIntervalSinceReferenceDate];
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
    v3 = [MEMORY[0x1E696AD88] defaultCenter];

    [v3 addObserver:self selector:sel__dialogDidFinishNotification_ name:@"SUDialogDidFinishNotification" object:0];
  }

  else
  {

    [(SUStoreController *)self exitStoreWithReason:0];
  }
}

- (void)exitStoreWithReason:(int64_t)a3
{
  v3 = [MEMORY[0x1E69DC668] sharedApplication];

  [v3 suspend];
}

- (BOOL)isStoreEnabled
{
  v2 = [MEMORY[0x1E69E47F8] sharedCache];
  v3 = [v2 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)}];
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

- (id)overlayConfigurationForStorePage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a3 URLRequestProperties];
  v5 = [v4 URLBagKey];
  v6 = [v4 URL];
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

    if (v5 && ([v12 matchesURLBagKey:v5] & 1) != 0)
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
    v3 = [MEMORY[0x1E69DC668] sharedApplication];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__SUStoreController_prepareForSuspend__block_invoke;
    v10[3] = &unk_1E8164320;
    v10[4] = &v11;
    v4 = [v3 beginBackgroundTaskWithExpirationHandler:v10];
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

  v6 = [MEMORY[0x1E69D48B0] currentDevice];

  self->_localStoreFrontAtLastSuspend = [v6 storeFrontIdentifier];
  v7 = [v6 synchedStoreFrontIdentifier];
  self->_synchedStoreFrontAtLastSuspend = v7;
  if (self->_localStoreFrontAtLastSuspend | v7)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
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

- (void)presentExternalURLViewController:(id)a3
{
  objc_opt_class();
  v5 = a3;
  if (objc_opt_isKindOfClass())
  {
    v5 = [a3 topViewController];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(SUStoreController *)self overlayConfigurationForStorePage:v5]) != 0)
  {
    v7 = v6;
    v8 = [(SUStoreController *)self tabBarController];

    [(UIViewController *)v8 presentViewController:a3 inOverlayWithConfiguration:v7];
  }

  else
  {
    v9 = [(SUStoreController *)self tabBarController];
    [(SUTabBarController *)v9 setTransientViewController:a3 animated:0];
    if ([(SUTabBarController *)v9 presentedViewController])
    {

      [(SUTabBarController *)v9 dismissViewControllerAnimated:1 completion:0];
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
  v2 = [(SUStoreController *)self _resumableViewController];

  return [v2 defaultPNGName];
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
  v3 = [(SUTabBarController *)[(SUStoreController *)self tabBarController] transientViewController];
  if (!v3)
  {
    v3 = [(UITabBarController *)[(SUStoreController *)self tabBarController] selectedNavigationController];
  }

  for (i = v3; [(UINavigationController *)i presentedViewController]; v3 = i)
  {
    i = [(UINavigationController *)v3 presentedViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  return [(UINavigationController *)v3 navigationController];
}

- (void)_accountControllerDisappearedNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_reloadForStorefrontChangeAfterAccountSetup)
  {
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

    self->_reloadForStorefrontChangeAfterAccountSetup = 0;
    [(SUStoreController *)self _reloadForStorefrontChange];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)_bagDidLoadNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(SUStoreController *)self _isAccountViewControllerVisible])
  {
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

- (void)_dialogDidFinishNotification:(id)a3
{
  if (![+[SUDialogManager numberOfPendingDialogs:a3]])
  {

    [(SUStoreController *)self exitStoreWithReason:0];
  }
}

- (void)_restrictionsChangedNotification:(id)a3
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

- (void)_mainThreadStoreFrontChangedNotification:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(SUStoreController *)self _isAccountViewControllerVisible])
  {
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

- (void)_selectFooterSectionNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E69E46F0]];
  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [MEMORY[0x1E69D4938] sharedConfig];
      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        v8 = v7 | 2;
      }

      else
      {
        v8 = v7;
      }

      if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
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

- (void)_storeFrontChangedNotification:(id)a3
{
  v4 = [(SUStoreController *)self mainThreadProxy];

  [v4 _mainThreadStoreFrontChangedNotification:a3];
}

- (BOOL)client:(id)a3 presentAccountViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = [[SUNavigationController alloc] initWithRootViewController:a4];
  -[SUNavigationController setClientInterface:](v8, "setClientInterface:", [a3 clientInterface]);
  [(SUNavigationController *)v8 setNavigationBarHidden:1];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    v9 = [(SUStoreController *)self _showWildcatAccountViewController:v8 animated:v5];
  }

  else
  {
    v9 = [(SUStoreController *)self client:a3 presentModalViewController:v8 animated:v5];
  }

  v10 = v9;

  return v10;
}

- (BOOL)client:(id)a3 presentModalViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  for (i = [(SUStoreController *)self tabBarController]; ; i = [(SUTabBarController *)v8 presentedViewController])
  {
    v8 = i;
    if (![(SUTabBarController *)i presentedViewController])
    {
      break;
    }
  }

  [(UIViewController *)v8 transitionSafePresentModalViewController:a4 animated:v5];
  return v8 != 0;
}

- (id)topViewControllerForClient:(id)a3
{
  v3 = [(SUStoreController *)self topNavigationController];

  return [(UINavigationController *)v3 topViewController];
}

- (void)tabBarController:(id)a3 didEndCustomizingViewControllers:(id)a4 changed:(BOOL)a5
{
  if (a5)
  {
    [(SUTabBarController *)self->_tabBarController saveOrderingToDefaults:a3];
  }
}

- (void)handleApplicationURL:(id)a3
{
  v5 = [a3 storeURLType];
  v6 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (v5 != 1 || v6 == 1)
  {
    if (v5 == 2)
    {

      [(SUStoreController *)self _handleAccountURL:a3];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:{objc_msgSend(a3, "schemeSwizzledURL")}];
      [(SUStoreController *)self _defaultHandleApplicationURLRequestProperties:v7];
    }
  }

  else
  {

    [(SUStoreController *)self _handleSearchURL:a3];
  }
}

- (void)setupUI
{
  v3 = [(SUStoreController *)self launchURL];
  if (v3)
  {
    [(SUStoreController *)self handleApplicationURL:v3];
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

- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [a3 sectionsResponse];

  self->_lastBackgroundSectionsResponse = 0;
  if ([a3 success] && objc_msgSend(v5, "responseType") == 1 && (objc_msgSend(objc_msgSend(v5, "versionString"), "isEqualToString:", -[SUSectionsResponse versionString](self->_lastSectionsResponse, "versionString")) & 1) == 0)
  {
    v6 = [MEMORY[0x1E69D4938] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    if (!os_log_type_enabled([v6 OSLogObject], OS_LOG_TYPE_DEBUG))
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

    self->_lastBackgroundSectionsResponse = v5;
    self->_reloadSectionsOnNextLaunch = 1;
  }

  [(SUStoreController *)self _cancelLoadSectionsOperation];
}

- (void)_handleFinishedLoadSectionsOperation:(id)a3
{
  if ([a3 success])
  {
    -[SUStoreController _reloadWithSectionsResponse:](self, "_reloadWithSectionsResponse:", [a3 sectionsResponse]);
  }

  else
  {
    -[SUStoreController _handleSectionsLoadFailedWithError:](self, "_handleSectionsLoadFailedWithError:", [a3 error]);
  }

  [(SUStoreController *)self _cancelLoadSectionsOperation];
}

- (void)_handleSectionsLoadFailedWithError:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (ISErrorIndicatesSlowNetwork())
  {
    v5 = [MEMORY[0x1E69D4938] sharedConfig];
    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      v7 = v6 | 2;
    }

    else
    {
      v7 = v6;
    }

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEFAULT))
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

    [+[SUDialogManager presentDialogForError:v13], "presentDialogForError:", a3];
    [(SUStoreController *)self _retrySectionsAfterNetworkTransition];
  }

  else
  {
    v11 = [(SUTabBarController *)self->_tabBarController transientViewController];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v11 topViewController];
    }

    if (objc_opt_respondsToSelector())
    {
      [v11 setSkLoading:0];
    }

    v12 = +[SUDialogManager sharedInstance];
    if (![(SUDialogManager *)v12 numberOfPendingDialogs])
    {
      if (!a3)
      {
        a3 = ISError();
      }

      [(SUDialogManager *)v12 presentDialogForError:a3];
    }

    [(SUStoreController *)self exitStoreAfterDialogsDismiss];
  }
}

- (BOOL)_loadSectionsAllowingCache:(BOOL)a3 withCompletionBlock:(id)a4
{
  loadSectionsOperation = self->_loadSectionsOperation;
  if (!loadSectionsOperation)
  {
    v6 = a3;
    v8 = [[SULoadSectionsOperation alloc] initWithClientInterface:[(SUClient *)self->_client clientInterface]];
    [(SULoadSectionsOperation *)v8 setActiveSectionVersionString:[(SUSectionsResponse *)self->_lastSectionsResponse versionString]];
    [(SULoadSectionsOperation *)v8 setCompletionBlock:a4];
    [(SULoadSectionsOperation *)v8 setShouldUseCache:v6];
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
    v3 = [MEMORY[0x1E69D4938] sharedConfig];
    v4 = [v3 shouldLog];
    if ([v3 shouldLogToDisk])
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4;
    }

    if (!os_log_type_enabled([v3 OSLogObject], OS_LOG_TYPE_DEBUG))
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
}

- (void)_defaultHandleApplicationURLRequestProperties:(id)a3
{
  v5 = [-[SUTabBarController selectedViewController](-[SUStoreController tabBarController](self "tabBarController")];
  v7 = [-[SUClient viewControllerFactory](self->_client "viewControllerFactory")];
  [v7 setClientInterface:{-[SUClient clientInterface](self->_client, "clientInterface")}];
  [v7 setExternalRequest:1];
  [v7 setURLRequestProperties:a3];
  v6 = [[SUNavigationController alloc] initWithSection:v5 rootViewController:v7];
  [(SUNavigationController *)v6 setClientInterface:[(SUClient *)self->_client clientInterface]];
  [(SUStoreController *)self presentExternalURLViewController:v6];
}

- (void)_handleAccountURL:(id)a3
{
  v4 = 1;
  v14 = [a3 copyQueryStringDictionaryWithUnescapedValues:1];
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

- (void)_handleSearchURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(SUStoreController *)self tabBarController];
  v6 = [(SUTabBarController *)v5 sections];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [v11 searchFieldConfiguration];
      if (v12)
      {
        if ([v12 location] != 2)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

    -[SUTabBarController setSelectedIdentifier:](v5, "setSelectedIdentifier:", [v11 identifier]);
  }

  else
  {
LABEL_13:
    [(SUTabBarController *)v5 selectSectionOfType:1];
  }

  v13 = [(UINavigationController *)[(SUStoreController *)self topNavigationController] topViewController];
  if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:](v13, "handleApplicationURL:", [a3 schemeSwizzledURL]);
  }
}

- (BOOL)_isAccountViewControllerVisible
{
  v2 = [(SUTabBarController *)self->_tabBarController presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v2 topViewController];
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

- (void)_reloadWithSectionsResponse:(id)a3
{
  lastSectionsResponse = self->_lastSectionsResponse;
  if (lastSectionsResponse != a3)
  {

    self->_lastSectionsResponse = a3;
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
  v2 = [(SUTabBarController *)self->_tabBarController selectedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 copyArchivableContext];
    if (v3)
    {

      return v2;
    }

    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v4 = [v2 viewControllers];
  v5 = [v4 count];
  if (v5 < 1)
  {
    return 0;
  }

  v6 = v5;
  do
  {
    v2 = [v4 objectAtIndex:v6 - 1];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v2 copyArchivableContext]) != 0)
    {
    }

    else
    {
      v2 = 0;
    }

    if (v6 < 2)
    {
      break;
    }

    --v6;
  }

  while (!v2);
  return v2;
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

- (BOOL)_showWildcatAccountViewController:(id)a3 animated:(BOOL)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = [-[SUTabBarController overlayBackgroundViewController](self->_tabBarController overlayBackgroundViewController];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v14 + 1) + 8 * v10);
      v12 = [v11 backViewController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v12 topViewController];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

    [v11 setBackViewController:a3];
  }

  else
  {
LABEL_14:
    [(SUStoreController *)self presentExternalURLViewController:a3];
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

- (void)composeEmailWithSubject:(id)a3 body:(id)a4
{
  if (CPCanSendMail() && ![(SUStoreController *)self isComposingEmail])
  {
    v7 = objc_alloc_init(ISWeakLinkedClassForString());
    self->_mailComposeViewController = v7;
    [(MFMailComposeViewController *)v7 setKeyboardVisible:1];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMailComposeDelegate:self];
    [(MFMailComposeViewController *)self->_mailComposeViewController setSubject:a3];
    [(MFMailComposeViewController *)self->_mailComposeViewController setMessageBody:a4 isHTML:1];
    mailComposeViewController = self->_mailComposeViewController;

    [(SUStoreController *)self presentMailComposeViewController:mailComposeViewController animated:1];
  }
}

- (void)dismissMailComposeViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(SUStoreController *)self tabBarController];

  [(SUTabBarController *)v4 dismissViewControllerAnimated:v3 completion:0];
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  [(SUStoreController *)self dismissMailComposeViewControllerAnimated:1, a4, a5];

  self->_mailComposeViewController = 0;
}

- (void)presentMailComposeViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SUStoreController *)self topNavigationController];

  [(UINavigationController *)v6 presentViewController:a3 animated:v4 completion:0];
}

@end