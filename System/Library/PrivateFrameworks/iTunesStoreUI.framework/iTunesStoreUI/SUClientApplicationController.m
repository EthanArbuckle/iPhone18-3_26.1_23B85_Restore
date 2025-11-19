@interface SUClientApplicationController
+ (id)sharedController;
+ (void)setSharedController:(id)a3;
- (BOOL)_displayClientURL:(id)a3;
- (BOOL)_loadSectionsAllowingCache:(BOOL)a3 withCompletionBlock:(id)a4;
- (BOOL)_reloadForStorefrontChange;
- (BOOL)_showWildcatAccountViewController:(id)a3 animated:(BOOL)a4;
- (BOOL)dismissTopViewControllerAnimated:(BOOL)a3;
- (BOOL)displayClientURL:(id)a3 withSourceApplication:(id)a4 sourceURLString:(id)a5;
- (BOOL)openClientURL:(id)a3 withSourceApplication:(id)a4 sourceURLString:(id)a5;
- (BOOL)presentAccountViewController:(id)a3 showNavigationBar:(BOOL)a4 animated:(BOOL)a5;
- (NSString)defaultPNGNameForSuspend;
- (SUClientApplicationController)initWithClientInterface:(id)a3;
- (SUTabBarController)tabBarController;
- (UINavigationController)topNavigationController;
- (double)defaultImageSnapshotExpiration;
- (id)_accountViewController;
- (id)_newTabBarController;
- (id)_previewOverlayViewController;
- (id)_resumableViewController;
- (id)_showPageForExternalOriginatedURLBagKey:(id)a3;
- (id)previewOverlayForClientInterface:(id)a3;
- (id)showMainPageForItemKind:(id)a3 sectionIdentifiers:(id)a4;
- (void)_accountControllerDisappearedNotification:(id)a3;
- (void)_cancelLoadSectionsOperation;
- (void)_cancelSectionFetchPlaceholder;
- (void)_cancelSuspendAfterDialogsDismissed;
- (void)_defaultHandleApplicationURLRequestProperties:(id)a3;
- (void)_dialogDidFinishNotification:(id)a3;
- (void)_handleAccountURL:(id)a3;
- (void)_handleAddPassbookPassURL:(id)a3;
- (void)_handleDonationURL:(id)a3;
- (void)_handleFinishedBackgroundLoadSectionsOperation:(id)a3;
- (void)_handleFinishedLoadSectionsOperation:(id)a3;
- (void)_handleSearchURL:(id)a3 withSourceApplication:(id)a4 sourceURL:(id)a5;
- (void)_handleSectionsLoadFailedWithError:(id)a3;
- (void)_openClientURL:(id)a3;
- (void)_presentSectionFetchUI;
- (void)_reloadWithSectionsResponse:(id)a3;
- (void)_restorePreMediaPlayerSettings;
- (void)_restrictionsChangedNotification:(id)a3;
- (void)_retrySectionsAfterNetworkTransition;
- (void)_selectFooterSectionNotification:(id)a3;
- (void)_setActiveMediaPlayer:(id)a3;
- (void)_setupTabBarController;
- (void)_showPreviewOverlayAnimated:(BOOL)a3;
- (void)_storeFrontChangedNotification:(id)a3;
- (void)bagDidLoadNotification:(id)a3;
- (void)becomeActive;
- (void)cancelAllOperations;
- (void)clientInterface:(id)a3 hidePreviewOverlayAnimated:(BOOL)a4;
- (void)clientInterface:(id)a3 showPreviewOverlayAnimated:(BOOL)a4;
- (void)dealloc;
- (void)endIgnoringDownloadQueueChanges;
- (void)exitStoreAfterDialogsDismiss;
- (void)passbookLoaderDidFinish:(id)a3;
- (void)prepareUserInterface;
- (void)presentExternalURLViewController:(id)a3;
- (void)resignActive;
- (void)setExitStoreButtonTitle:(id)a3;
- (void)setupUI;
- (void)tearDownUI;
@end

@implementation SUClientApplicationController

- (SUClientApplicationController)initWithClientInterface:(id)a3
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
      v8 = -[SUSectionsResponse initWithClientInterface:cacheDirectory:]([SUSectionsResponse alloc], "initWithClientInterface:cacheDirectory:", a3, [+[SUSectionsResponse sectionsCacheDirectory](SUSectionsResponse "sectionsCacheDirectory")]);
      v4->_lastSectionsResponse = v8;
      if (v8)
      {
        v9 = [MEMORY[0x1E69D4938] sharedConfig];
        v10 = [v9 shouldLog];
        if ([v9 shouldLogToDisk])
        {
          v11 = v10 | 2;
        }

        else
        {
          v11 = v10;
        }

        if (!os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_DEFAULT))
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
    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v4 selector:sel__selectFooterSectionNotification_ name:*MEMORY[0x1E69E46F8] object:0];
    [v17 addObserver:v4 selector:sel__restrictionsChangedNotification_ name:*MEMORY[0x1E69ADD68] object:0];
    [v17 addObserver:v4 selector:sel__storeFrontChangedNotification_ name:*MEMORY[0x1E69D4A70] object:0];
    [v17 addObserver:v4 selector:sel__accountControllerDisappearedNotification_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    [v17 addObserver:v4 selector:sel__reloadForNetworkTypeChange_ name:@"SUNetworkTypeChangedNotification" object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69E46F8] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69ADD68] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69D4A70] object:0];
  [v3 removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [v3 removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
  [v3 removeObserver:self name:@"SUNetworkTypeChangedNotification" object:0];

  [(SUUIPassbookLoader *)self->_passbookLoader setDelegate:0];
  [(SUTabBarController *)self->_tabBarController setDelegate:0];

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 dealloc];
}

+ (void)setSharedController:(id)a3
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  objc_msgSendSuper2(&v3, sel_setSharedController_, a3);
}

+ (id)sharedController
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___SUClientApplicationController;
  return objc_msgSendSuper2(&v3, sel_sharedController);
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
  v4 = [(SUClientApplicationController *)self _activeMediaPlayer];
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
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
      v7 = [MEMORY[0x1E696AD88] defaultCenter];

      [v7 postNotificationName:@"SUClientDidStopIgnoringDownloadQueueNotification" object:self];
    }
  }
}

- (void)exitStoreAfterDialogsDismiss
{
  if ([+[SUDialogManager numberOfPendingDialogs] sharedInstance]
  {
    [(SUClientApplicationController *)self _cancelSuspendAfterDialogsDismissed];
    v3 = [MEMORY[0x1E696AD88] defaultCenter];

    [v3 addObserver:self selector:sel__dialogDidFinishNotification_ name:@"SUDialogDidFinishNotification" object:0];
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

- (void)setExitStoreButtonTitle:(id)a3
{
  exitStoreButtonTitle = self->_exitStoreButtonTitle;
  if (exitStoreButtonTitle != a3 && ![(NSString *)exitStoreButtonTitle isEqualToString:?])
  {

    self->_exitStoreButtonTitle = [a3 copy];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];

    [v6 postNotificationName:@"SUClientExitStoreButtonDidChangeNotification" object:self];
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

- (id)showMainPageForItemKind:(id)a3 sectionIdentifiers:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E69E47F0] storeFrontURLBagKeyForItemKind:a3];
  if (v6)
  {

    return [(SUClientApplicationController *)self _showPageForExternalOriginatedURLBagKey:v6];
  }

  else
  {
    v8 = [(SUClientApplicationController *)self tabBarController];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    result = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(a4);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if ([(SUTabBarController *)v8 viewControllerForSectionIdentifier:v12])
          {
            [(SUTabBarController *)v8 setSelectedIdentifier:v12];
            return [(SUTabBarController *)v8 selectedViewController];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        result = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  v3 = [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] transientViewController];
  if (!v3)
  {
    v3 = [(UITabBarController *)[(SUClientApplicationController *)self tabBarController] selectedNavigationController];
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

- (void)becomeActive
{
  v3 = [(SUClientController *)self isActive];
  v4.receiver = self;
  v4.super_class = SUClientApplicationController;
  [(SUClientController *)&v4 becomeActive];
  if (!v3 && ([MEMORY[0x1E69DC668] shouldMakeUIForDefaultPNG] & 1) == 0)
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

- (BOOL)dismissTopViewControllerAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  [(UIViewController *)v4 dismissAnimated:v3];
  return v4 != 0;
}

- (BOOL)displayClientURL:(id)a3 withSourceApplication:(id)a4 sourceURLString:(id)a5
{
  v9 = [a3 storeURLType];
  v10 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (v9 != 1 || v10 == 1)
  {
    switch(v9)
    {
      case 4:
        [(SUClientApplicationController *)self _handleAddPassbookPassURL:a3];
        break;
      case 3:
        [(SUClientApplicationController *)self _handleDonationURL:a3];
        break;
      case 2:
        [(SUClientApplicationController *)self _handleAccountURL:a3];
        break;
      default:
        v12 = [objc_alloc(MEMORY[0x1E69D4970]) initWithURL:{objc_msgSend(a3, "schemeSwizzledURL")}];
        [v12 setValue:a5 forHTTPHeaderField:@"referer"];
        [v12 setValue:a4 forHTTPHeaderField:@"ref-user-agent"];
        [(SUClientApplicationController *)self _defaultHandleApplicationURLRequestProperties:v12];

        break;
    }
  }

  else
  {
    [(SUClientApplicationController *)self _handleSearchURL:a3 withSourceApplication:a4 sourceURL:a5];
  }

  return 1;
}

- (BOOL)openClientURL:(id)a3 withSourceApplication:(id)a4 sourceURLString:(id)a5
{
  v9 = ISUIMobileStoreUIFramework();
  v10 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v9))];
  [v10 setReferrerApplicationName:a4];
  [v10 setReferrerURLString:a5];
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

- (BOOL)presentAccountViewController:(id)a3 showNavigationBar:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v9 = [[SUNavigationController alloc] initWithRootViewController:a3];
  -[SUNavigationController setClientInterface:](v9, "setClientInterface:", [a3 clientInterface]);
  [(SUNavigationController *)v9 setNavigationBarHidden:!v6];
  if ([objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")] == 1)
  {
    v10 = [(SUClientApplicationController *)self _showWildcatAccountViewController:v9 animated:v5];
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

    [(UIViewController *)v12 transitionSafePresentModalViewController:v9 animated:v5];
    v10 = v12 != 0;
  }

  return v10;
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
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = [(SUClientController *)self overlayConfigurationForStorePage:v5]) != 0)
  {
    v7 = v6;
    v8 = [(SUClientApplicationController *)self tabBarController];

    [(UIViewController *)v8 presentViewController:a3 inOverlayWithConfiguration:v7];
  }

  else
  {
    v9 = [(SUClientApplicationController *)self tabBarController];
    [(SUTabBarController *)v9 setTransientViewController:a3 animated:0];
    if ([(SUTabBarController *)v9 presentedViewController])
    {

      [(SUTabBarController *)v9 dismissViewControllerAnimated:1 completion:0];
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
      v3 = [MEMORY[0x1E69DC668] sharedApplication];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __45__SUClientApplicationController_resignActive__block_invoke;
      v7[3] = &unk_1E8164320;
      v7[4] = &v8;
      v4 = [v3 beginBackgroundTaskWithExpirationHandler:v7];
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
  v4 = [(SUTabBarController *)v3 view];
  [objc_msgSend(MEMORY[0x1E69DCEB0] "mainScreen")];
  [v4 setFrame:?];
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

- (void)_setActiveMediaPlayer:(id)a3
{
  activeMediaPlayer = self->_activeMediaPlayer;
  if (activeMediaPlayer != a3)
  {

    v6 = a3;
    self->_activeMediaPlayer = v6;
    if (!v6)
    {

      [(SUClientApplicationController *)self _restorePreMediaPlayerSettings];
    }
  }
}

- (id)_showPageForExternalOriginatedURLBagKey:(id)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E69D4970]);
  [v5 setURLBagKey:a3];
  v6 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v6 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v6 setExternalRequest:1];
  [v6 setURLRequestProperties:v5];
  v7 = [[SUNavigationController alloc] initWithRootViewController:v6];
  [(SUNavigationController *)v7 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v7];

  return v6;
}

- (void)clientInterface:(id)a3 hidePreviewOverlayAnimated:(BOOL)a4
{
  if (self->_previewOverlay)
  {
    v4 = a4;
    v5 = [(SUClientApplicationController *)self tabBarController];

    [(SUTabBarController *)v5 _hidePreviewOverlayAnimated:v4];
  }
}

- (void)clientInterface:(id)a3 showPreviewOverlayAnimated:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = [(SUClientApplicationController *)self _previewOverlayViewController];
  if ([v6 isContentLoaded])
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

    if (!os_log_type_enabled([v7 OSLogObject], OS_LOG_TYPE_DEBUG))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v30 = 138412546;
      v31 = objc_opt_class();
      v32 = 2112;
      v33 = v6;
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

    [(SUClientApplicationController *)self _showPreviewOverlayAnimated:v4, v26];
  }

  else
  {
    v13 = [v6 isSkLoaded];
    v14 = [MEMORY[0x1E69D4938] sharedConfig];
    v15 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      v16 = v15 | 2;
    }

    else
    {
      v16 = v15;
    }

    v17 = [v14 OSLogObject];
    if (v13)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
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
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
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
      v29 = v4;
      [v6 loadWithCompletionBlock:v28];
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

- (id)previewOverlayForClientInterface:(id)a3
{
  v3 = [(SUClientApplicationController *)self _previewOverlayViewController];

  return v3;
}

- (void)passbookLoaderDidFinish:(id)a3
{
  passbookLoader = self->_passbookLoader;
  if (passbookLoader == a3)
  {
    [(SUUIPassbookLoader *)passbookLoader setDelegate:0];

    self->_passbookLoader = 0;
  }
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
    [(SUClientApplicationController *)self _reloadForStorefrontChange];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)bagDidLoadNotification:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(SUClientApplicationController *)self _accountViewController])
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

    if (!os_log_type_enabled([v5 OSLogObject], OS_LOG_TYPE_DEBUG))
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

  v11 = [MEMORY[0x1E69E47F8] sharedCache];
  v12 = [objc_msgSend(v11 URLBagForContext:{objc_msgSend(MEMORY[0x1E69D49F8], "contextWithBagType:", 0)), "valueForKey:", @"platform-gradients"}];
  objc_opt_class();
  v13 = 0;
  if (objc_opt_isKindOfClass())
  {
    v13 = [v12 objectForKey:{-[SUClientController clientIdentifier](self, "clientIdentifier")}];
  }

  [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  v16.receiver = self;
  v16.super_class = SUClientApplicationController;
  [(SUClientController *)&v16 bagDidLoadNotification:a3];
}

- (void)_dialogDidFinishNotification:(id)a3
{
  if (![+[SUDialogManager numberOfPendingDialogs:a3]])
  {

    [(SUClientController *)self exitStoreWithReason:0];
  }
}

- (void)_restrictionsChangedNotification:(id)a3
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

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
}

- (void)_handleFinishedLoadSectionsOperation:(id)a3
{
  if ([a3 success])
  {
    v5 = [a3 sectionsResponse];
    if ([objc_msgSend(v5 "sections")])
    {
      [(SUClientApplicationController *)self _reloadWithSectionsResponse:v5];
      goto LABEL_7;
    }

    v7 = self;
    v6 = 0;
  }

  else
  {
    v6 = [a3 error];
    v7 = self;
  }

  [(SUClientApplicationController *)v7 _handleSectionsLoadFailedWithError:v6];
LABEL_7:

  [(SUClientApplicationController *)self _cancelLoadSectionsOperation];
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
    [(SUClientApplicationController *)self _retrySectionsAfterNetworkTransition];
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

    [(SUClientApplicationController *)self exitStoreAfterDialogsDismiss];
  }
}

- (BOOL)_loadSectionsAllowingCache:(BOOL)a3 withCompletionBlock:(id)a4
{
  loadSectionsOperation = self->_loadSectionsOperation;
  if (!loadSectionsOperation)
  {
    v6 = a3;
    v8 = [[SULoadSectionsOperation alloc] initWithClientInterface:[(SUClientController *)self clientInterface]];
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

- (void)_reloadWithSectionsResponse:(id)a3
{
  lastSectionsResponse = self->_lastSectionsResponse;
  if (lastSectionsResponse != a3)
  {

    self->_lastSectionsResponse = a3;
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

- (void)_defaultHandleApplicationURLRequestProperties:(id)a3
{
  v5 = [-[SUTabBarController selectedViewController](-[SUClientApplicationController tabBarController](self "tabBarController")];
  v7 = [-[SUClientController viewControllerFactory](self "viewControllerFactory")];
  [v7 setClientInterface:{-[SUClientController clientInterface](self, "clientInterface")}];
  [v7 setExternalRequest:1];
  [v7 setURLRequestProperties:a3];
  v6 = [[SUNavigationController alloc] initWithSection:v5 rootViewController:v7];
  [(SUNavigationController *)v6 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientApplicationController *)self presentExternalURLViewController:v6];
}

- (void)_handleAccountURL:(id)a3
{
  v4 = [[SUAccountViewController alloc] initWithExternalAccountURL:a3];
  [(SUViewController *)v4 setClientInterface:[(SUClientController *)self clientInterface]];
  [(SUClientController *)self presentAccountViewController:v4 animated:1];
}

- (void)_handleAddPassbookPassURL:(id)a3
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

  [(SUUIPassbookLoader *)passbookLoader loadPassWithURL:a3];
}

- (void)_handleDonationURL:(id)a3
{
  v5 = ISUIMobileStoreUIFramework();
  v9 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuiurl.isa v5))];
  v6 = ISUIMobileStoreUIFramework();
  v7 = [objc_alloc(ISUIWeakLinkedClassForString(&cfstr_Suuidonationvi.isa v6))];
  v8 = ISUIMobileStoreUIFramework();
  [v7 setClientContext:{objc_msgSend(ISUIWeakLinkedClassForString(&cfstr_Suuiclientcont.isa, v8), "defaultContext")}];
  [(SUTabBarController *)[(SUClientApplicationController *)self tabBarController] presentViewController:v7 animated:1 completion:0];
}

- (void)_handleSearchURL:(id)a3 withSourceApplication:(id)a4 sourceURL:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = [(SUClientApplicationController *)self tabBarController];
  v10 = [(SUTabBarController *)v9 sections];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v18 + 1) + 8 * v14);
      v16 = [v15 searchFieldConfiguration];
      if (v16)
      {
        if ([v16 location] != 2)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

    -[SUTabBarController setSelectedIdentifier:](v9, "setSelectedIdentifier:", [v15 identifier]);
  }

  else
  {
LABEL_13:
    [(SUTabBarController *)v9 selectSectionOfType:1];
  }

  v17 = [(UINavigationController *)[(SUClientApplicationController *)self topNavigationController] topViewController];
  if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:withSourceApplication:sourceURL:](v17, "handleApplicationURL:withSourceApplication:sourceURL:", [a3 schemeSwizzledURL], a4, a5);
  }

  else if (objc_opt_respondsToSelector())
  {
    -[UIViewController handleApplicationURL:](v17, "handleApplicationURL:", [a3 schemeSwizzledURL]);
  }
}

- (id)_accountViewController
{
  v3 = [(SUTabBarController *)self->_tabBarController presentedViewController];
  if (!v3)
  {
    v3 = [objc_msgSend(-[SUTabBarController overlayBackgroundViewController](self->_tabBarController "overlayBackgroundViewController")];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v3 topViewController];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (void)_cancelSuspendAfterDialogsDismissed
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];

  [v3 removeObserver:self name:@"SUDialogDidFinishNotification" object:0];
}

- (BOOL)_displayClientURL:(id)a3
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_displayClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_displayClientURL_];
  v7 = [a3 underlyingURL];
  if (v6 == v5)
  {
    v9 = [a3 referrerApplicationName];
    v10 = [a3 referrerURLString];

    return [(SUClientApplicationController *)self displayClientURL:v7 withSourceApplication:v9 sourceURLString:v10];
  }

  else
  {

    return [(SUClientController *)self displayClientURL:v7];
  }
}

- (void)_openClientURL:(id)a3
{
  v5 = [SUClientApplicationController instanceMethodForSelector:sel_openClientURL_];
  v6 = [(SUClientApplicationController *)self methodForSelector:sel_openClientURL_];
  v7 = [a3 underlyingURL];
  if (v6 == v5)
  {
    v8 = [a3 referrerApplicationName];
    v9 = [a3 referrerURLString];

    [(SUClientApplicationController *)self openClientURL:v7 withSourceApplication:v8 sourceURLString:v9];
  }

  else
  {

    [(SUClientController *)self openClientURL:v7];
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

- (void)_setupTabBarController
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [(SUClientApplicationController *)self tabBarController];
  if (![(SUClientController *)self storeFrontDidChangeSinceLastSuspend])
  {
    if (self->_reloadSectionsOnNextLaunch || (lastSectionsResponse = self->_lastSectionsResponse) == 0)
    {
      v11 = 1;
    }

    else
    {
      v13 = [(SUSectionsResponse *)lastSectionsResponse storeFrontIdentifier];
      if (!-[NSString isEqualToString:](v13, "isEqualToString:", [objc_msgSend(MEMORY[0x1E69D48B0] "currentDevice")]))
      {
        v24 = [MEMORY[0x1E69D4938] sharedConfig];
        v25 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          v26 = v25 | 2;
        }

        else
        {
          v26 = v25;
        }

        if (!os_log_type_enabled([v24 OSLogObject], OS_LOG_TYPE_DEBUG))
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
  v14 = [objc_msgSend(MEMORY[0x1E695E000] standardUserDefaults];
  v15 = [objc_msgSend(objc_msgSend(MEMORY[0x1E69D4890] "defaultStore")];
  if (v15 != v14 && ([v14 isEqual:v15] & 1) == 0)
  {
    v16 = [MEMORY[0x1E69D4938] sharedConfig];
    v17 = [v16 shouldLog];
    if ([v16 shouldLogToDisk])
    {
      v18 = v17 | 2;
    }

    else
    {
      v18 = v17;
    }

    if (!os_log_type_enabled([v16 OSLogObject], OS_LOG_TYPE_DEBUG))
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

    [(SUTabBarController *)v3 resetToSystemDefaults];
  }

  if (([objc_msgSend(MEMORY[0x1E69DC668] "sharedApplication")] & 1) == 0)
  {
    if (v11)
    {
      [+[SUNetworkObserver sharedInstance](SUNetworkObserver startNetworkAvailabilityTimer];
      [(SUTabBarController *)v3 dismissViewControllerAnimated:0 completion:0];
      [(SUTabBarController *)v3 setSections:0];
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
      if (![(SUTabBarController *)v3 sections])
      {
        [(SUTabBarController *)v3 loadFromDefaultsAndSetSections:[(SUSectionsResponse *)self->_lastSectionsResponse sections]];
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

- (void)_showPreviewOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUClientApplicationController *)self _previewOverlayViewController];
  v6 = [(SUClientApplicationController *)self tabBarController];

  [(SUTabBarController *)v6 _showPreviewOverlay:v5 animated:v3];
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
    [(SUClientApplicationController *)self presentExternalURLViewController:a3];
  }

  return 1;
}

@end