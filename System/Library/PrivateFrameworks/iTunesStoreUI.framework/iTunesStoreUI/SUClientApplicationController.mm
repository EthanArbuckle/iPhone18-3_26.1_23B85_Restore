@interface SUClientApplicationController
+ (id)sharedController;
+ (void)setSharedController:(id)controller;
- (BOOL)_displayClientURL:(id)l;
- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block;
- (BOOL)_reloadForStorefrontChange;
- (BOOL)_showWildcatAccountViewController:(id)controller animated:(BOOL)animated;
- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated;
- (BOOL)displayClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string;
- (BOOL)openClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string;
- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated;
- (NSString)defaultPNGNameForSuspend;
- (SUClientApplicationController)initWithClientInterface:(id)interface;
- (SUTabBarController)tabBarController;
- (UINavigationController)topNavigationController;
- (double)defaultImageSnapshotExpiration;
- (id)_accountViewController;
- (id)_newTabBarController;
- (id)_previewOverlayViewController;
- (id)_resumableViewController;
- (id)_showPageForExternalOriginatedURLBagKey:(id)key;
- (id)previewOverlayForClientInterface:(id)interface;
- (id)showMainPageForItemKind:(id)kind sectionIdentifiers:(id)identifiers;
- (void)_accountControllerDisappearedNotification:(id)notification;
- (void)_cancelLoadSectionsOperation;
- (void)_cancelSectionFetchPlaceholder;
- (void)_cancelSuspendAfterDialogsDismissed;
- (void)_defaultHandleApplicationURLRequestProperties:(id)properties;
- (void)_dialogDidFinishNotification:(id)notification;
- (void)_handleAccountURL:(id)l;
- (void)_handleAddPassbookPassURL:(id)l;
- (void)_handleDonationURL:(id)l;
- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)operation;
- (void)_handleFinishedLoadSectionsOperation:(id)operation;
- (void)_handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL;
- (void)_handleSectionsLoadFailedWithError:(id)error;
- (void)_openClientURL:(id)l;
- (void)_presentSectionFetchUI;
- (void)_reloadWithSectionsResponse:(id)response;
- (void)_restorePreMediaPlayerSettings;
- (void)_restrictionsChangedNotification:(id)notification;
- (void)_retrySectionsAfterNetworkTransition;
- (void)_selectFooterSectionNotification:(id)notification;
- (void)_setActiveMediaPlayer:(id)player;
- (void)_setupTabBarController;
- (void)_showPreviewOverlayAnimated:(BOOL)animated;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)bagDidLoadNotification:(id)notification;
- (void)becomeActive;
- (void)cancelAllOperations;
- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated;
- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated;
- (void)dealloc;
- (void)endIgnoringDownloadQueueChanges;
- (void)exitStoreAfterDialogsDismiss;
- (void)passbookLoaderDidFinish:(id)finish;
- (void)prepareUserInterface;
- (void)presentExternalURLViewController:(id)controller;
- (void)resignActive;
- (void)setExitStoreButtonTitle:(id)title;
- (void)setupUI;
- (void)tearDownUI;
@end

@implementation SUClientApplicationController

- (SUClientApplicationController)initWithClientInterface:(id)interface
{
  v26 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SUClientApplicationController;
  v4 = [(SUClientController *)&v21 initWithClientInterface:?];
  if (v4)
  {
    v5 = +[SUSectionsResponse lastCachedVersionIdentifier];
    if (v5)
    {
      v6 = v5;
      Current = CFAbsoluteTimeGetCurrent();
      v8 = -[SUSectionsResponse initWithClientInterface:cacheDirectory:]([SUSectionsResponse alloc], "initWithClientInterface:cacheDirectory:", interface, [+[SUSectionsResponse sectionsCacheDirectory](SUSectionsResponse "sectionsCacheDirectory")]);
      v4->_lastSectionsResponse = v8;
      if (v8)
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          v11 = shouldLog | 2;
        }

        else
        {
          v11 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEFAULT))
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v12 = objc_opt_class();
          v13 = CFAbsoluteTimeGetCurrent();
          v22 = 138412546;
          v23 = v12;
          v24 = 2048;
          v25 = v13 - Current;
          LODWORD(v20) = 22;
          v19 = &v22;
          v14 = _os_log_send_and_compose_impl();
          if (v14)
          {
            v15 = v14;
            v16 = [MEMORY[0x1E696AEC0] stringWithCString:v14 encoding:{4, &v22, v20}];
            free(v15);
            v19 = v16;
            SSFileLog();
          }
        }
      }
    }

    v4->_shouldPrepareUserInterfaceWhenActivated = 1;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__selectFooterSectionNotification_ name:*MEMORY[0x1E69E46F8] object:0];
    [defaultCenter addObserver:v4 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [defaultCenter addObserver:v4 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];
    [defaultCenter addObserver:v4 selector:sel__accountControllerDisappearedNotification_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    [defaultCenter addObserver:v4 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E46F8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  [defaultCenter removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  [defaultCenter removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];

  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  [(SUTabBarController *)self->_tabBarController setDelegate:0];

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 dealloc];
}

+ (void)setSharedController:(id)controller
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  objc_msgSendSuper2(&v3, sel_setSharedController_, controller);
}

+ (id)sharedController
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  return objc_msgSendSuper2(&v3, sel_sharedController);
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
    if ([(SUClientApplicationController *)self isTabBarControllerLoaded]&& (v7 = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController], (objc_opt_respondsToSelector() & 1) != 0))
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

- (NSString)defaultPNGNameForSuspend
{
  v3 = [-[SUClientApplicationController _resumableViewController](self "_resumableViewController")];

  self->_preMediaDefaultPNG = 0;
  _activeMediaPlayer = [(SUClientApplicationController *)self _activeMediaPlayer];
  if (!_activeMediaPlayer)
  {
    return v3;
  }

  v5 = _activeMediaPlayer;
  self->_preMediaDefaultPNG = v3;

  return [(SUMediaPlayerViewController *)v5 defaultPNGName];
}

- (void)endIgnoringDownloadQueueChanges
{
  ignoreDownloadQueueChangeCount = self->_ignoreDownloadQueueChangeCount;
  v3 = ignoreDownloadQueueChangeCount == 1;
  v4 = ignoreDownloadQueueChangeCount < 1;
  v5 = ignoreDownloadQueueChangeCount - 1;
  if (!v4)
  {
    self->_ignoreDownloadQueueChangeCount = v5;
    if (v3)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"SUClientDidStopIgnoringDownloadQueueNotification" object:self];
    }
  }
}

- (void)exitStoreAfterDialogsDismiss
{
  if ([+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [(SUClientApplicationController *)self _cancelSuspendAfterDialogsDismissed];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter addObserver:self selector:sel__dialogDidFinishNotification_ name:@"SUDialogDidFinishNotification" object:0];
  }

  else
  {

    [(SUClientController *)self exitStoreWithReason:0];
  }
}

- (void)prepareUserInterface
{
  [(SUClientApplicationController *)self tabBarController];

  [(SUClientApplicationController *)self _setupTabBarController];
}

- (void)setExitStoreButtonTitle:(id)title
{
  exitStoreButtonTitle = self->_exitStoreButtonTitle;
  if (exitStoreButtonTitle != title && ![(NSString *)exitStoreButtonTitle isEqualToString:?])
  {

    self->_exitStoreButtonTitle = [title copy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"SUClientExitStoreButtonDidChangeNotification" object:self];
  }
}

- (void)setupUI
{
  self->_preMediaDefaultPNG = 0;
  launchURL = self->_launchURL;
  if (launchURL)
  {
    v4 = launchURL;

    self->_launchURL = 0;
    [(SUClientApplicationController *)self _openClientURL:v4];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {

    [(SUClientController *)self composeEmailByRestoringAutosavedMessage];
  }
}

- (id)showMainPageForItemKind:(id)kind sectionIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69E47F0] storeFrontURLBagKeyForItemKind:kind];
  if (v6)
  {

    return [(SUClientApplicationController *)self _showPageForExternalOriginatedURLBagKey:v6];
  }

  else
  {
    tabBarController = [(SUClientApplicationController *)self tabBarController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (result)
    {
      v9 = result;
      v10 = *v14;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(identifiers);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if ([(SUTabBarController *)tabBarController viewControllerForSectionIdentifier:v12])
          {
            [(SUTabBarController *)tabBarController setSelectedIdentifier:v12];
            return [(SUTabBarController *)tabBarController selectedViewController];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        result = [identifiers countByEnumeratingWithState:&v13 objects:v17 count:16];
        v9 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (SUTabBarController)tabBarController
{
  tabBarController = self->_tabBarController;
  if (!tabBarController)
  {
    tabBarController = [(SUClientApplicationController *)self _newTabBarController];
    self->_tabBarController = tabBarController;
    if (!self->super._rootViewController)
    {
      [(SUClientController *)self setRootViewController:tabBarController];
      return self->_tabBarController;
    }
  }

  return tabBarController;
}

- (void)tearDownUI
{
  [(SUClientApplicationController *)self _cancelSuspendAfterDialogsDismissed];
  tabBarController = self->_tabBarController;
  if (self->super._rootViewController == tabBarController)
  {
    [(SUClientController *)self setRootViewController:0];
    tabBarController = self->_tabBarController;
  }

  [(SUTabBarController *)tabBarController setDelegate:0];
  if ([(SUTabBarController *)self->_tabBarController isViewLoaded])
  {
    [-[SUTabBarController view](self->_tabBarController "view")];
  }

  self->_tabBarController = 0;
}

- (UINavigationController)topNavigationController
{
  transientViewController = [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] transientViewController];
  if (!transientViewController)
  {
    transientViewController = [(UITabBarController *)[(SUClientApplicationController *)self tabBarController] selectedNavigationController];
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

- (void)becomeActive
{
  isActive = [(SUClientController *)self isActive];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 becomeActive];
  if (!isActive && ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
  {
    if ([(SUClientApplicationController *)self shouldPrepareUserInterfaceWhenActivated])
    {
      [(SUClientApplicationController *)self _setupTabBarController];
    }
  }
}

- (void)cancelAllOperations
{
  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
  v3.receiver = self;
  v3.super_class = SUClientApplicationController;
  [(SUClientController *)&v3 cancelAllOperations];
}

- (BOOL)dismissTopViewControllerAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topViewController = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  [(UIViewController *)topViewController dismissAnimated:animatedCopy];
  return topViewController != 0;
}

- (BOOL)displayClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string
{
  storeURLType = [l storeURLType];
  v10 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (storeURLType != 1 || v10 == 1)
  {
    switch(storeURLType)
    {
      case 4:
        [(SUClientApplicationController *)self _handleAddPassbookPassURL:l];
        break;
      case 3:
        [(SUClientApplicationController *)self _handleDonationURL:l];
        break;
      case 2:
        [(SUClientApplicationController *)self _handleAccountURL:l];
        break;
      default:
        v12 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{objc_msgSend(l, "schemeSwizzledURL")}];
        [v12 setValue:string forHTTPHeaderField:@"referer"];
        [v12 setValue:application forHTTPHeaderField:@"ref-user-agent"];
        [(SUClientApplicationController *)self _defaultHandleApplicationURLRequestProperties:v12];

        break;
    }
  }

  else
  {
    [(SUClientApplicationController *)self _handleSearchURL:l withSourceApplication:application sourceURL:string];
  }

  return 1;
}

- (BOOL)openClientURL:(id)l withSourceApplication:(id)application sourceURLString:(id)string
{
  v9 = ISUIMobileStoreUIFramework();
  v10 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v9))];
  [v10 setReferrerApplicationName:application];
  [v10 setReferrerURLString:string];
  if (self->_lastSectionsResponse)
  {
    v11 = [(SUClientApplicationController *)self _displayClientURL:v10];
  }

  else
  {

    self->_launchURL = v10;
    v11 = 1;
  }

  return v11;
}

- (BOOL)presentAccountViewController:(id)controller showNavigationBar:(BOOL)bar animated:(BOOL)animated
{
  animatedCopy = animated;
  barCopy = bar;
  v9 = [[SUNavigationController alloc] initWithRootViewController:controller];
  -[SUNavigationController setClientInterface:](v9, "setClientInterface:", [controller clientInterface]);
  [(SUNavigationController *)v9 setNavigationBarHidden:!barCopy];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    v10 = [(SUClientApplicationController *)self _showWildcatAccountViewController:v9 animated:animatedCopy];
  }

  else
  {
    for (i = [(SUClientApplicationController *)self tabBarController]; ; i = [(SUTabBarController *)v12 presentedViewController])
    {
      v12 = i;
      if (![(SUTabBarController *)i presentedViewController])
      {
        break;
      }
    }

    [(UIViewController *)v12 transitionSafePresentModalViewController:v9 animated:animatedCopy];
    v10 = v12 != 0;
  }

  return v10;
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(SUClientController *)self overlayConfigurationForStorePage:controllerCopy]) != 0)
  {
    v7 = v6;
    tabBarController = [(SUClientApplicationController *)self tabBarController];

    [(UIViewController *)tabBarController presentViewController:controller inOverlayWithConfiguration:v7];
  }

  else
  {
    tabBarController2 = [(SUClientApplicationController *)self tabBarController];
    [(SUTabBarController *)tabBarController2 setTransientViewController:controller animated:0];
    if ([(SUTabBarController *)tabBarController2 presentedViewController])
    {

      [(SUTabBarController *)tabBarController2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (void)resignActive
{
  if ([(SUClientController *)self isActive])
  {
    [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
    if (self->super._mailComposeViewController)
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x2020000000;
      v11 = *MEMORY[0x1E69DDBE8];
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__SUClientApplicationController_resignActive__block_invoke;
      v7[3] = &unk_1E8164320;
      v7[4] = &v8;
      v4 = [mEMORY[0x1E69DC668] beginBackgroundTaskWithExpirationHandler:v7];
      v9[3] = v4;
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __45__SUClientApplicationController_resignActive__block_invoke_2;
      v6[3] = &unk_1E8164320;
      v6[4] = &v8;
      [(SUClientController *)self autosaveMessageWithCompletionBlock:v6];
      _Block_object_dispose(&v8, 8);
    }

    if (self->_lastSectionsResponse)
    {
      [(SUTabBarController *)self->_tabBarController saveToDefaults];
    }
  }

  v5.receiver = self;
  v5.super_class = SUClientApplicationController;
  [(SUClientController *)&v5 resignActive];
}

uint64_t __45__SUClientApplicationController_resignActive__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

uint64_t __45__SUClientApplicationController_resignActive__block_invoke_2(uint64_t a1)
{
  result = [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];
  *(*(*(a1 + 32) + 8) + 24) = *MEMORY[0x1E69DDBE8];
  return result;
}

- (id)_newTabBarController
{
  v3 = [[SUTabBarController alloc] initWithClientInterface:[(SUClientController *)self clientInterface]];
  [(SUTabBarController *)v3 setDelegate:self];
  view = [(SUTabBarController *)v3 view];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [view setFrame:?];
  if ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG])
  {
    v5 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
    [v5 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
    v6 = [[SUNavigationController alloc] initWithRootViewController:v5];
    [(SUNavigationController *)v6 setClientInterface:[(SUClientController *)self clientInterface]];
    [(SUTabBarController *)v3 setTransientViewController:v6];
  }

  return v3;
}

- (void)_restorePreMediaPlayerSettings
{
  if (self->_preMediaDefaultPNG)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v3 initWithObjectsAndKeys:{self->_preMediaDefaultPNG, *MEMORY[0x1E69DEBA0], 0}];
    [objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")];

    self->_preMediaDefaultPNG = 0;
  }
}

- (void)_setActiveMediaPlayer:(id)player
{
  activeMediaPlayer = self->_activeMediaPlayer;
  if (activeMediaPlayer != player)
  {

    playerCopy = player;
    self->_activeMediaPlayer = playerCopy;
    if (!playerCopy)
    {

      [(SUClientApplicationController *)self _restorePreMediaPlayerSettings];
    }
  }
}

- (id)_showPageForExternalOriginatedURLBagKey:(id)key
{
  v5 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v5 setURLBagKey:key];
  v6 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v6 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v6 setExternalRequest:1];
  [v6 setURLRequestProperties:v5];
  v7 = [[SUNavigationController alloc] initWithRootViewController:v6];
  [(SUNavigationController *)v7 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v7];

  return v6;
}

- (void)clientInterface:(id)interface hidePreviewOverlayAnimated:(BOOL)animated
{
  if (self->_previewOverlay)
  {
    animatedCopy = animated;
    tabBarController = [(SUClientApplicationController *)self tabBarController];

    [(SUTabBarController *)tabBarController _hidePreviewOverlayAnimated:animatedCopy];
  }
}

- (void)clientInterface:(id)interface showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v34 = *MEMORY[0x1E69E9840];
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];
  if ([_previewOverlayViewController isContentLoaded])
  {
    mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog = [mEMORY[0x1E69D4938] shouldLog];
    if ([mEMORY[0x1E69D4938] shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v30 = 138412546;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = _previewOverlayViewController;
      LODWORD(v27) = 22;
      v26 = &v30;
      v10 = _os_log_send_and_compose_impl();
      if (v10)
      {
        v11 = v10;
        v12 = [MEMORY[0x1E696AEC0] stringWithCString:v10 encoding:{4, &v30, v27}];
        free(v11);
        v26 = v12;
        SSFileLog();
      }
    }

    [(SUClientApplicationController *)self _showPreviewOverlayAnimated:animatedCopy, v26];
  }

  else
  {
    isSkLoaded = [_previewOverlayViewController isSkLoaded];
    mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
    if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject = [mEMORY[0x1E69D4938]2 OSLogObject];
    if (isSkLoaded)
    {
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v16;
      }

      else
      {
        v18 = v16 & 2;
      }

      if (v18)
      {
        v30 = 138412290;
        v31 = objc_opt_class();
        LODWORD(v27) = 12;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v20 = v19;
          [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:{4, &v30, v27}];
          free(v20);
          SSFileLog();
        }
      }
    }

    else
    {
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v21 = v16;
      }

      else
      {
        v21 = v16 & 2;
      }

      if (v21)
      {
        v30 = 138412290;
        v31 = objc_opt_class();
        LODWORD(v27) = 12;
        v26 = &v30;
        v22 = _os_log_send_and_compose_impl();
        if (v22)
        {
          v23 = v22;
          v24 = [MEMORY[0x1E696AEC0] stringWithCString:v22 encoding:{4, &v30, v27}];
          free(v23);
          v26 = v24;
          SSFileLog();
        }
      }

      v25 = [MEMORY[0x1E69D4A30] weakReferenceWithObject:{self, v26}];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __76__SUClientApplicationController_clientInterface_showPreviewOverlayAnimated___block_invoke;
      v28[3] = &unk_1E8166DF8;
      v28[4] = v25;
      v29 = animatedCopy;
      [_previewOverlayViewController loadWithCompletionBlock:v28];
    }
  }
}

uint64_t __76__SUClientApplicationController_clientInterface_showPreviewOverlayAnimated___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [*(result + 32) object];
    v4 = *(v2 + 40);

    return [v3 _showPreviewOverlayAnimated:v4];
  }

  return result;
}

- (id)previewOverlayForClientInterface:(id)interface
{
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];

  return _previewOverlayViewController;
}

- (void)passbookLoaderDidFinish:(id)finish
{
  passbookLoader = self->_passbookLoader;
  if (passbookLoader == finish)
  {
    [(SUUIPassbookLoader *)passbookLoader setDelegate:0];

    self->_passbookLoader = 0;
  }
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
    [(SUClientApplicationController *)self _reloadForStorefrontChange];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)bagDidLoadNotification:(id)notification
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SUClientApplicationController *)self _accountViewController])
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

    if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v17 = 138412290;
      v18 = objc_opt_class();
      LODWORD(v15) = 12;
      v14 = &v17;
      v8 = _os_log_send_and_compose_impl();
      if (v8)
      {
        v9 = v8;
        v10 = [MEMORY[0x1E696AEC0] stringWithCString:v8 encoding:{4, &v17, v15}];
        free(v9);
        v14 = v10;
        SSFileLog();
      }
    }
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  mEMORY[0x1E69E47F8] = [MEMORY[0x1E69E47F8] sharedCache];
  v12 = [objc_msgSend(mEMORY[0x1E69E47F8] URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"platform-gradients"}];
  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:{-[SUClientController clientIdentifier](self, "clientIdentifier")}];
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v16.receiver = self;
  v16.super_class = SUClientApplicationController;
  [(SUClientController *)&v16 bagDidLoadNotification:notification];
}

- (void)_dialogDidFinishNotification:(id)notification
{
  if (![+[SUDialogManager numberOfPendingDialogs:notification]])
  {

    [(SUClientController *)self exitStoreWithReason:0];
  }
}

- (void)_restrictionsChangedNotification:(id)notification
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__SUClientApplicationController__restrictionsChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __66__SUClientApplicationController__restrictionsChangedNotification___block_invoke(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (*(*(result + 32) + 160))
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

    return [*(*(v1 + 32) + 216) setSections:{objc_msgSend(*(*(v1 + 32) + 160), "sections", v8)}];
  }

  return result;
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
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SUClientApplicationController__storeFrontChangedNotification___block_invoke;
  block[3] = &unk_1E8164348;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __64__SUClientApplicationController__storeFrontChangedNotification___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] == 2)
  {
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

    result = os_log_type_enabled([v2 OSLogObject], OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      LODWORD(v12) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v6 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v13, v12}];
        free(v6);
        return SSFileLog();
      }
    }
  }

  else if ([*(a1 + 32) _accountViewController])
  {
    v7 = [MEMORY[0x1E69D4938] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    result = os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138412290;
      v14 = objc_opt_class();
      LODWORD(v12) = 12;
      result = _os_log_send_and_compose_impl();
      if (result)
      {
        v10 = result;
        [MEMORY[0x1E696AEC0] stringWithCString:result encoding:{4, &v13, v12}];
        free(v10);
        result = SSFileLog();
      }
    }

    *(*(a1 + 32) + 208) = 1;
  }

  else
  {
    v11 = *(a1 + 32);

    return [v11 _reloadForStorefrontChange];
  }

  return result;
}

- (void)_cancelLoadSectionsOperation
{
  [(ISOperation *)self->_loadSectionsOperation setCompletionBlock:0];
  [(ISOperation *)self->_loadSectionsOperation cancel];

  self->_loadSectionsOperation = 0;
}

- (void)_cancelSectionFetchPlaceholder
{
  [(SUPlaceholderViewController *)self->_fetchSectionsPlaceholder setSkLoading:0];

  self->_fetchSectionsPlaceholder = 0;
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

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
}

- (void)_handleFinishedLoadSectionsOperation:(id)operation
{
  if ([operation success])
  {
    sectionsResponse = [operation sectionsResponse];
    if ([objc_msgSend(sectionsResponse "sections")])
    {
      [(SUClientApplicationController *)self _reloadWithSectionsResponse:sectionsResponse];
      goto LABEL_7;
    }

    selfCopy2 = self;
    error = 0;
  }

  else
  {
    error = [operation error];
    selfCopy2 = self;
  }

  [(SUClientApplicationController *)selfCopy2 _handleSectionsLoadFailedWithError:error];
LABEL_7:

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
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
    [(SUClientApplicationController *)self _retrySectionsAfterNetworkTransition];
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

    [(SUClientApplicationController *)self exitStoreAfterDialogsDismiss];
  }
}

- (BOOL)_loadSectionsAllowingCache:(BOOL)cache withCompletionBlock:(id)block
{
  loadSectionsOperation = self->_loadSectionsOperation;
  if (!loadSectionsOperation)
  {
    cacheCopy = cache;
    v8 = [[SULoadSectionsOperation alloc] initWithClientInterface:[(SUClientController *)self clientInterface]];
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
  v3 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  self->_fetchSectionsPlaceholder = v3;
  [(SUViewController *)v3 setClientInterface:[(SUClientController *)self clientInterface]];
  v4 = [[SUNavigationController alloc] initWithRootViewController:self->_fetchSectionsPlaceholder];
  [(SUNavigationController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUPlaceholderViewController *)self->_fetchSectionsPlaceholder setSkLoading:1];
  [(SUTabBarController *)self->_tabBarController setTransientViewController:v4 animated:0];
}

- (BOOL)_reloadForStorefrontChange
{
  if (self->_loadSectionsOperation)
  {
    return 1;
  }

  v6[7] = v2;
  v6[8] = v3;
  [(SUTabBarController *)self->_tabBarController saveToDefaults];
  [(SUTabBarController *)self->_tabBarController dismissViewControllerAnimated:0 completion:0];
  [(SUTabBarController *)self->_tabBarController setViewControllers:0];
  [(SUClientApplicationController *)self _presentSectionFetchUI];

  self->_lastBackgroundSectionsResponse = 0;
  self->_lastSectionsResponse = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke;
  v6[3] = &unk_1E8164348;
  v6[4] = self;
  return [(SUClientApplicationController *)self _loadSectionsAllowingCache:0 withCompletionBlock:v6];
}

void __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __59__SUClientApplicationController__reloadForStorefrontChange__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
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
  [(SUTabBarController *)self->_tabBarController setMoreListSelectedImage:[(SUSectionsResponse *)self->_lastSectionsResponse moreListSelectedImage] unselectedImage:[(SUSectionsResponse *)self->_lastSectionsResponse moreListImage]];
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

  [(SUClientApplicationController *)self setupUI];
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

    [(SUClientApplicationController *)self _presentSectionFetchUI];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke;
    v11[3] = &unk_1E8164348;
    v11[4] = self;
    [(SUClientApplicationController *)self _loadSectionsAllowingCache:1 withCompletionBlock:v11];
  }
}

void __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke_2;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __69__SUClientApplicationController__retrySectionsAfterNetworkTransition__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_defaultHandleApplicationURLRequestProperties:(id)properties
{
  v5 = [-[SUTabBarController selectedViewController](-[SUClientApplicationController tabBarController](self "tabBarController")];
  v7 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v7 setExternalRequest:1];
  [v7 setURLRequestProperties:properties];
  v6 = [[SUNavigationController alloc] initWithSection:v5 rootViewController:v7];
  [(SUNavigationController *)v6 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v6];
}

- (void)_handleAccountURL:(id)l
{
  v4 = [[SUAccountViewController alloc] initWithExternalAccountURL:l];
  [(SUViewController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientController *)self presentAccountViewController:v4 animated:1];
}

- (void)_handleAddPassbookPassURL:(id)l
{
  passbookLoader = self->_passbookLoader;
  if (!passbookLoader)
  {
    v6 = ISUIMobileStoreUIFramework();
    v7 = ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v6);
    v8 = ISUIMobileStoreUIFramework();
    v9 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuipassbooklo.isa v8))];
    self->_passbookLoader = v9;
    [(SUUIPassbookLoader *)v9 setDelegate:self];
    passbookLoader = self->_passbookLoader;
  }

  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:l];
}

- (void)_handleDonationURL:(id)l
{
  v5 = ISUIMobileStoreUIFramework();
  v9 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v5))];
  v6 = ISUIMobileStoreUIFramework();
  v7 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuidonationvi.isa v6))];
  v8 = ISUIMobileStoreUIFramework();
  [v7 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v8), "defaultContext")}];
  [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] presentViewController:v7 animated:1 completion:0];
}

- (void)_handleSearchURL:(id)l withSourceApplication:(id)application sourceURL:(id)rL
{
  v23 = *MEMORY[0x1E69E9840];
  tabBarController = [(SUClientApplicationController *)self tabBarController];
  sections = [(SUTabBarController *)tabBarController sections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSArray *)sections countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(sections);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      searchFieldConfiguration = [v15 searchFieldConfiguration];
      if (searchFieldConfiguration)
      {
        if ([searchFieldConfiguration location] != 2)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)sections countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }
    }

    if (!v15)
    {
      goto LABEL_13;
    }

    -[SUTabBarController setSelectedIdentifier:](tabBarController, "setSelectedIdentifier:", [v15 identifier]);
  }

  else
  {
LABEL_13:
    [(SUTabBarController *)tabBarController selectSectionOfType:1];
  }

  topViewController = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:withSourceApplication:sourceURL:](topViewController, "handleApplicationURL:withSourceApplication:sourceURL:", [l schemeSwizzledURL], application, rL);
  }

  else if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:](topViewController, "handleApplicationURL:", [l schemeSwizzledURL]);
  }
}

- (id)_accountViewController
{
  presentedViewController = [(SUTabBarController *)self->_tabBarController presentedViewController];
  if (!presentedViewController)
  {
    presentedViewController = [objc_msgSend(-[SUTabBarController overlayBackgroundViewController](self->_tabBarController "overlayBackgroundViewController")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    presentedViewController = [presentedViewController topViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return presentedViewController;
  }

  else
  {
    return 0;
  }
}

- (void)_cancelSuspendAfterDialogsDismissed
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

  [defaultCenter removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
}

- (BOOL)_displayClientURL:(id)l
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_displayClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_displayClientURL_];
  underlyingURL = [l underlyingURL];
  if (v6 == v5)
  {
    referrerApplicationName = [l referrerApplicationName];
    referrerURLString = [l referrerURLString];

    return [(SUClientApplicationController *)self displayClientURL:underlyingURL withSourceApplication:referrerApplicationName sourceURLString:referrerURLString];
  }

  else
  {

    return [(SUClientController *)self displayClientURL:underlyingURL];
  }
}

- (void)_openClientURL:(id)l
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_openClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_openClientURL_];
  underlyingURL = [l underlyingURL];
  if (v6 == v5)
  {
    referrerApplicationName = [l referrerApplicationName];
    referrerURLString = [l referrerURLString];

    [(SUClientApplicationController *)self openClientURL:underlyingURL withSourceApplication:referrerApplicationName sourceURLString:referrerURLString];
  }

  else
  {

    [(SUClientController *)self openClientURL:underlyingURL];
  }
}

- (id)_previewOverlayViewController
{
  result = self->_previewOverlay;
  if (!result)
  {
    v4 = objc_alloc_init(SUPreviewOverlayViewController);
    self->_previewOverlay = v4;
    [(SUViewController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
    return self->_previewOverlay;
  }

  return result;
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

- (void)_setupTabBarController
{
  v37 = *MEMORY[0x1E69E9840];
  tabBarController = [(SUClientApplicationController *)self tabBarController];
  if (![(SUClientController *)self storeFrontDidChangeSinceLastSuspend])
  {
    if (self->_reloadSectionsOnNextLaunch || (lastSectionsResponse = self->_lastSectionsResponse) == 0)
    {
      v11 = 1;
    }

    else
    {
      storeFrontIdentifier = [(SUSectionsResponse *)lastSectionsResponse storeFrontIdentifier];
      if (!-[NSString isEqualToString:](storeFrontIdentifier, "isEqualToString:", [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")]))
      {
        mEMORY[0x1E69D4938] = [MEMORY[0x1E69D4938] sharedConfig];
        shouldLog = [mEMORY[0x1E69D4938] shouldLog];
        if ([mEMORY[0x1E69D4938] shouldLogToDisk])
        {
          v26 = shouldLog | 2;
        }

        else
        {
          v26 = shouldLog;
        }

        if (!os_log_type_enabled([mEMORY[0x1E69D4938] OSLogObject], OS_LOG_TYPE_DEBUG))
        {
          v26 &= 2u;
        }

        if (v26)
        {
          v35 = 138412290;
          v36 = objc_opt_class();
          LODWORD(v32) = 12;
          v30 = &v35;
          v27 = _os_log_send_and_compose_impl();
          if (v27)
          {
            v28 = v27;
            v29 = [MEMORY[0x1E696AEC0] stringWithCString:v27 encoding:{4, &v35, v32}];
            free(v28);
            v30 = v29;
            SSFileLog();
          }
        }

        v10 = 0;
        goto LABEL_11;
      }

      v11 = 0;
    }

    v10 = 1;
    goto LABEL_18;
  }

  mEMORY[0x1E69D4938]2 = [MEMORY[0x1E69D4938] sharedConfig];
  shouldLog2 = [mEMORY[0x1E69D4938]2 shouldLog];
  if ([mEMORY[0x1E69D4938]2 shouldLogToDisk])
  {
    v6 = shouldLog2 | 2;
  }

  else
  {
    v6 = shouldLog2;
  }

  if (!os_log_type_enabled([mEMORY[0x1E69D4938]2 OSLogObject], OS_LOG_TYPE_DEBUG))
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v35 = 138412290;
    v36 = objc_opt_class();
    LODWORD(v32) = 12;
    v30 = &v35;
    v7 = _os_log_send_and_compose_impl();
    if (v7)
    {
      v8 = v7;
      v9 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:{4, &v35, v32}];
      free(v8);
      v30 = v9;
      SSFileLog();
    }
  }

  [objc_msgSend(MEMORY[0x1E69E47F8] sharedCache];
  v10 = 0;
LABEL_11:
  v11 = 1;
LABEL_18:
  self->_reloadSectionsOnNextLaunch = 0;
  standardUserDefaults = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  v15 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  if (v15 != standardUserDefaults && ([standardUserDefaults isEqual:v15] & 1) == 0)
  {
    mEMORY[0x1E69D4938]3 = [MEMORY[0x1E69D4938] sharedConfig];
    shouldLog3 = [mEMORY[0x1E69D4938]3 shouldLog];
    if ([mEMORY[0x1E69D4938]3 shouldLogToDisk])
    {
      v18 = shouldLog3 | 2;
    }

    else
    {
      v18 = shouldLog3;
    }

    if (!os_log_type_enabled([mEMORY[0x1E69D4938]3 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v19 = objc_opt_class();
      v35 = 138412290;
      v36 = v19;
      LODWORD(v32) = 12;
      v31 = &v35;
      v20 = _os_log_send_and_compose_impl();
      if (v20)
      {
        v21 = v20;
        v22 = [MEMORY[0x1E696AEC0] stringWithCString:v20 encoding:{4, &v35, v32}];
        free(v21);
        v31 = v22;
        SSFileLog();
      }
    }

    [(SUTabBarController *)tabBarController resetToSystemDefaults];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    if (v11)
    {
      [+[SUNetworkObserver sharedInstance](SUNetworkObserver startNetworkAvailabilityTimer];
      [(SUTabBarController *)tabBarController dismissViewControllerAnimated:0 completion:0];
      [(SUTabBarController *)tabBarController setSections:0];
      [(SUClientApplicationController *)self _presentSectionFetchUI];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_4;
      v33[3] = &unk_1E8164348;
      v33[4] = self;
      [(SUClientApplicationController *)self _loadSectionsAllowingCache:v10 withCompletionBlock:v33];
    }

    else
    {
      if (![(SUTabBarController *)tabBarController sections])
      {
        [(SUTabBarController *)tabBarController loadFromDefaultsAndSetSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
        [(SUClientApplicationController *)self setupUI];
      }

      v23 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke;
      block[3] = &unk_1E8164348;
      block[4] = self;
      dispatch_after(v23, MEMORY[0x1E69E96A0], block);
    }
  }
}

uint64_t __55__SUClientApplicationController__setupTabBarController__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_2;
  v3[3] = &unk_1E8164348;
  v3[4] = v1;
  return [v1 _loadSectionsAllowingCache:1 withCompletionBlock:v3];
}

void __55__SUClientApplicationController__setupTabBarController__block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_3;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __55__SUClientApplicationController__setupTabBarController__block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SUClientApplicationController__setupTabBarController__block_invoke_5;
  block[3] = &unk_1E8164348;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __55__SUClientApplicationController__setupTabBarController__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) _cancelSectionFetchPlaceholder];
  v2 = *(a1 + 32);
  v3 = v2[21];

  return [v2 _handleFinishedLoadSectionsOperation:v3];
}

- (void)_showPreviewOverlayAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _previewOverlayViewController = [(SUClientApplicationController *)self _previewOverlayViewController];
  tabBarController = [(SUClientApplicationController *)self tabBarController];

  [(SUTabBarController *)tabBarController _showPreviewOverlay:_previewOverlayViewController animated:animatedCopy];
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
    [(SUClientApplicationController *)self presentExternalURLViewController:controller];
  }

  return 1;
}

@end