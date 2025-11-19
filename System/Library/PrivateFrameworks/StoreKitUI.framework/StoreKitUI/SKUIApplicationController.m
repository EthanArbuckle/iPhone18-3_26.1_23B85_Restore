@interface SKUIApplicationController
+ (SKUIConfigurationPreloader)configurationPreloader;
+ (id)_referrerAppForSourceApplication:(id)a3 launchURL:(id *)a4;
+ (id)applicationOptionsWithLaunchOptions:(id)a3;
+ (void)finishedWithConfigurationPreloader;
+ (void)prepareForLaunch;
- (BOOL)URLResolver:(id)a3 shouldPerformDefaultActionForURL:(id)a4;
- (BOOL)_isDisplayingAccountViewController;
- (BOOL)_isStoreFront:(id)a3 equalToStoreFront:(id)a4;
- (BOOL)_playPreviewForPreviewTemplate:(id)a3;
- (BOOL)_shouldUseLegacyURLHandlingForExternalURL:(id)a3;
- (BOOL)_usesFloatingStatusOverlayForWidth:(double)a3;
- (BOOL)tabBarController:(id)a3 shouldFallbackToRootForController:(id)a4;
- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4;
- (CGSize)sizeForNavigationDocument:(id)a3;
- (SKUIApplicationController)init;
- (SKUIApplicationController)initWithClientContextClass:(Class)a3;
- (SKUIApplicationController)initWithClientContextClass:(Class)a3 options:(id)a4;
- (SKUIApplicationController)initWithClientContextClass:(Class)a3 tabBarControllerStyle:(int64_t)a4;
- (SKUIApplicationDelegate)delegate;
- (SKUIClientContext)clientContext;
- (SKUINavigationDocumentController)_transientNavigationController;
- (UIViewController)rootViewController;
- (id)_activeNavigationController;
- (id)_documentControllerForNavigationController:(id)a3;
- (id)_existingTabBarController;
- (id)_launchOptionsWithURL:(id)a3;
- (id)_navigationContainerViewController;
- (id)_newNavigationControllerWithTabBarItem:(id)a3;
- (id)_operationQueue;
- (id)_overlayNavigationControllerForViewController:(id)a3;
- (id)_rootDocuments;
- (id)_statusOverlayProviderForViewController:(id)a3;
- (id)_tabBarController;
- (id)_transientNavigationDocument;
- (id)activeDocument;
- (id)deviceConfigForContext:(id)a3;
- (id)jsNavigationDocumentForNavigationController:(id)a3 inContext:(id)a4;
- (id)jsNavigationDocumentForNavigationDocumentController:(id)a3 inContext:(id)a4;
- (id)localStorage;
- (id)navigationControllerForContext:(id)a3;
- (id)presentationViewControllerForAppContext:(id)a3;
- (id)selectTabWithIdentifier:(id)a3;
- (id)vendorIdentifier;
- (id)vendorStorage;
- (int64_t)_applicationMode;
- (int64_t)_selectedTabBarIndex;
- (int64_t)modalDocumentController:(id)a3 barStyleForStackItem:(id)a4;
- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3;
- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3;
- (void)URLResolver:(id)a3 didFinishWithResult:(BOOL)a4;
- (void)URLResolver:(id)a3 showURL:(id)a4 withTabIdentifier:(id)a5;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_attemptAMSURLHandlingIfPossibleForExternalURL:(id)a3 fallback:(id)a4;
- (void)_dispatchTabBarOnNeedsContentForTabAtIndex:(unint64_t)a3;
- (void)_ensureStackConsistencyForNavigationController:(id)a3;
- (void)_failReloadWithError:(id)a3;
- (void)_failWithError:(id)a3;
- (void)_finishWillResignActiveWithDialogState:(BOOL)a3;
- (void)_fireBlocksAfterLoad;
- (void)_handleScriptUnavailable;
- (void)_invalidateApplication;
- (void)_jsLaunchFinishedWithLaunchMetrics:(id)a3;
- (void)_legacyResolveExternalURL:(id)a3;
- (void)_loadApplicationScript;
- (void)_previewDocumentIsActiveChangeNotification:(id)a3;
- (void)_recordTabBarMetricsEventToSelectViewController:(id)a3;
- (void)_reloadAfterNetworkChange:(id)a3;
- (void)_reloadApplication;
- (void)_reloadRootViewControllers;
- (void)_reloadTabBarWithClientContext:(id)a3;
- (void)_removeObserversForReloadNotifications;
- (void)_removeStatusOverlayFromAllNavigationControllers;
- (void)_resetDocumentControllers;
- (void)_resetUserInterfaceAfterStoreFrontChange;
- (void)_retryAfterFailure;
- (void)_sendClientContextDidChange;
- (void)_sendDidDisplayFirstPageIfNecessary;
- (void)_setClientContextWithDictionary:(id)a3;
- (void)_setSelectedTabBarIndex:(int64_t)a3;
- (void)_showFloatingStatusOverlayAnimated:(BOOL)a3;
- (void)_showStatusOverlayForNavigationController:(id)a3 viewController:(id)a4 animated:(BOOL)a5;
- (void)_startScriptContextWithURL:(id)a3;
- (void)_stopApplication;
- (void)_stopScriptContextForReload;
- (void)_storeFrontChangeNotification:(id)a3;
- (void)_tintTabBarWithViewController:(id)a3;
- (void)_updateOverlayNavigationController:(id)a3;
- (void)appContext:(id)a3 didCompletePurchase:(id)a4;
- (void)appContext:(id)a3 didCompleteSoftwarePurchase:(id)a4;
- (void)appContext:(id)a3 didExitWithOptions:(id)a4;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 didStartWithOptions:(id)a4;
- (void)appContext:(id)a3 didStopWithOptions:(id)a4;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5;
- (void)appContext:(id)a3 setPreviewOverlayDocument:(id)a4 withOptions:(id)a5;
- (void)appContextNeedsRestart:(id)a3;
- (void)application:(id)a3 didReceiveURL:(id)a4;
- (void)applicationDidBecomeActive:(id)a3;
- (void)applicationWillResignActive:(id)a3;
- (void)dealloc;
- (void)evaluateBlockWhenLoaded:(id)a3;
- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4;
- (void)hideStatusOverlayForProvider:(id)a3 animated:(BOOL)a4;
- (void)loadApplicationWithOptions:(id)a3;
- (void)modalDocumentControllerDidFinish:(id)a3;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5;
- (void)navigationDocumentController:(id)a3 requestsAccessToAppContextUsingBlock:(id)a4;
- (void)navigationDocumentStackDidChange:(id)a3;
- (void)recordMetricsEvent:(id)a3 flushImmediately:(BOOL)a4;
- (void)resumeApplicationWithOptions:(id)a3;
- (void)setClientContext:(id)a3;
- (void)setMescalPrimeEnabledForXHRRequests:(BOOL)a3;
- (void)setTabBarItems:(id)a3;
- (void)setUserInterfaceOverrideOnTabBarController:(id)a3 forViewController:(id)a4;
- (void)showErrorViewForLaunchFailure;
- (void)showErrorViewWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)showExternalURL:(id)a3;
- (void)showStatusOverlayUsingProvider:(id)a3 animated:(BOOL)a4;
- (void)showTransientViewController:(id)a3;
- (void)tabBarController:(id)a3 didEndCustomizingViewControllers:(id)a4 changed:(BOOL)a5;
- (void)tabBarController:(id)a3 didReselectViewController:(id)a4;
- (void)tabBarController:(id)a3 didSelectViewController:(id)a4;
- (void)tabBarController:(id)a3 willDisplayViewController:(id)a4;
- (void)tabBarController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5;
- (void)updateTabBarWithItems:(id)a3 animated:(BOOL)a4 completion:(id)a5;
@end

@implementation SKUIApplicationController

+ (SKUIConfigurationPreloader)configurationPreloader
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIApplicationController *)v2 configurationPreloader:v3];
      }
    }
  }

  v10 = _SKUIApplicationControllerConfigurationPreloader;
  if (!_SKUIApplicationControllerConfigurationPreloader)
  {
    v11 = objc_alloc_init(SKUIConfigurationPreloader);
    v12 = _SKUIApplicationControllerConfigurationPreloader;
    _SKUIApplicationControllerConfigurationPreloader = v11;

    v10 = _SKUIApplicationControllerConfigurationPreloader;
  }

  return v10;
}

+ (void)finishedWithConfigurationPreloader
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v2)
      {
        [(SKUIApplicationController *)v2 finishedWithConfigurationPreloader:v3];
      }
    }
  }

  v10 = _SKUIApplicationControllerConfigurationPreloader;
  _SKUIApplicationControllerConfigurationPreloader = 0;
}

+ (void)prepareForLaunch
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIApplicationController *)v3 prepareForLaunch:v4];
      }
    }
  }

  v11 = objc_autoreleasePoolPush();
  +[SKUIMetricsAppLaunchEvent createPendingLaunchEvent];
  [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_42];
  v12 = [a1 configurationPreloader];
  [v12 preloadConfigurationForPurpose:0 withCompletionBlock:&__block_literal_global_33];

  objc_autoreleasePoolPop(v11);
}

void __45__SKUIApplicationController_prepareForLaunch__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setMainTime:?];
}

void __45__SKUIApplicationController_prepareForLaunch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x277D69B38] sharedConfig];
    v7 = [v6 shouldLog];
    if ([v6 shouldLogToDisk])
    {
      v8 = v7 | 2;
    }

    else
    {
      v8 = v7;
    }

    v9 = [v6 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
    }

    else
    {
      v10 = v8 & 2;
    }

    if (v10)
    {
      v13 = 138412290;
      v14 = v5;
      LODWORD(v12) = 12;
      v11 = _os_log_send_and_compose_impl();

      if (!v11)
      {
LABEL_14:

        goto LABEL_15;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:{4, &v13, v12}];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

  if ([v4 count])
  {
    [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_41];
  }

LABEL_15:
}

void __45__SKUIApplicationController_prepareForLaunch__block_invoke_39(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setClientConfigurationLoadTime:?];
}

- (SKUIApplicationController)init
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUIApplicationController *)v3 init:v4];
      }
    }
  }

  return [(SKUIApplicationController *)self initWithClientContextClass:objc_opt_class()];
}

- (SKUIApplicationController)initWithClientContextClass:(Class)a3
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIApplicationController *)v5 initWithClientContextClass:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  return [(SKUIApplicationController *)self initWithClientContextClass:a3 options:0];
}

- (SKUIApplicationController)initWithClientContextClass:(Class)a3 tabBarControllerStyle:(int64_t)a4
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIApplicationController *)v7 initWithClientContextClass:v8 tabBarControllerStyle:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v15 = objc_alloc_init(SKUIMutableApplicationControllerOptions);
  [(SKUIMutableApplicationControllerOptions *)v15 setTabBarControllerStyle:a4];
  v16 = [(SKUIApplicationController *)self initWithClientContextClass:a3 options:v15];

  return v16;
}

- (SKUIApplicationController)initWithClientContextClass:(Class)a3 options:(id)a4
{
  v6 = a4;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v7)
      {
        [(SKUIApplicationController *)v7 initWithClientContextClass:v8 options:v9, v10, v11, v12, v13, v14];
      }
    }
  }

  v23.receiver = self;
  v23.super_class = SKUIApplicationController;
  v15 = [(SKUIApplicationController *)&v23 init];
  v16 = v15;
  if (v15)
  {
    v15->_clientContextClass = a3;
    v17 = [v6 copy];
    options = v16->_options;
    v16->_options = v17;

    if (!v16->_options)
    {
      v19 = objc_alloc_init(SKUIApplicationControllerOptions);
      v20 = v16->_options;
      v16->_options = v19;
    }

    v16->_indexOfLastTabNeedingContent = 0x7FFFFFFFFFFFFFFFLL;
    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:v16 selector:sel__pageDidDisplayNotification_ name:@"SKUIApplicationPageDidDisplayNotification" object:0];
    [v21 addObserver:v16 selector:sel__storeFrontChangeNotification_ name:*MEMORY[0x277D69E18] object:0];
    [v21 addObserver:v16 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x277D76660] object:0];
    [v21 addObserver:v16 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x277D76758] object:0];
  }

  return v16;
}

- (void)dealloc
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
  [v3 removeObserver:self name:@"SKUIApplicationPageDidDisplayNotification" object:0];
  [v3 removeObserver:self name:0x282808428 object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D69E18] object:0];
  [v3 removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76758] object:0];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_navigationDocumentControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEB68] null];

        if (v9 != v10)
        {
          [v9 setDelegate:0];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [(SKUIClientContext *)self->_clientContext _setApplicationController:0];
  [(SKUIClientContext *)self->_clientContext _setScriptAppContext:0];
  [(SKUIModalDocumentController *)self->_modalDocumentController setDelegate:0];
  [(SKUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:0];
  [(SKUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:0];
  v11 = [(SKUIApplicationController *)self _existingTabBarController];
  v12 = SKUITabBarControllerGetMoreNavigationController(v11);
  [v12 setDelegate:0];
  [v11 setDelegate:0];
  [(SKUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:0];
  [(SKUIURLResolver *)self->_urlResolver setDelegate:0];
  [(SKUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];

  v13.receiver = self;
  v13.super_class = SKUIApplicationController;
  [(SKUIApplicationController *)&v13 dealloc];
}

+ (id)applicationOptionsWithLaunchOptions:(id)a3
{
  v4 = a3;
  v5 = [v4 mutableCopy];
  v6 = *MEMORY[0x277D76698];
  v7 = [v4 objectForKey:*MEMORY[0x277D76698]];
  v8 = *MEMORY[0x277D76690];
  v9 = [v4 objectForKey:*MEMORY[0x277D76690]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v7;
    v10 = [a1 _referrerAppForSourceApplication:v9 launchURL:&v22];
    v11 = v22;

    [v5 setObject:v10 forKey:@"refApp"];
    v7 = v11;
  }

  [v5 removeObjectForKey:v8];
  if (v7)
  {
    v12 = [[SKUIURL alloc] initWithURL:v7];
    v13 = [(SKUIURL *)v12 underlyingURL];
    v14 = [v13 absoluteString];
    [v5 setObject:v14 forKey:@"url"];

    [v5 removeObjectForKey:v6];
  }

  v15 = *MEMORY[0x277D76678];
  v16 = [v4 objectForKey:*MEMORY[0x277D76678]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = SKUIMobileCoreServicesFramework();
    v18 = *SKUIWeakLinkedSymbolForString("LSReferrerURLKey", v17);
    if (v18)
    {
      v19 = [v16 objectForKey:v18];
    }

    else
    {
      v19 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setObject:v19 forKey:@"refUrl"];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 absoluteString];
        [v5 setObject:v20 forKey:@"refUrl"];
      }
    }
  }

  [v5 removeObjectForKey:v15];
  if (![v5 count])
  {

    v5 = 0;
  }

  return v5;
}

+ (id)_referrerAppForSourceApplication:(id)a3 launchURL:(id *)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 isEqualToString:@"com.apple.ios.StoreKitUIService"])
  {
    v19 = a4;
    v6 = [MEMORY[0x277CCACE0] componentsWithURL:*a4 resolvingAgainstBaseURL:0];
    v7 = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v6;
    v8 = [v6 queryItems];
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          v14 = [v13 name];
          v15 = [v14 isEqualToString:@"SKUIServiceRefApp"];

          if (v15)
          {
            v16 = [v13 value];

            v5 = v16;
          }

          else
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    [v18 setQueryItems:v7];
    *v19 = [v18 URL];
  }

  return v5;
}

- (void)application:(id)a3 didReceiveURL:(id)a4
{
  v7 = a4;
  v5 = [v7 copy];
  activationURL = self->_activationURL;
  self->_activationURL = v5;

  self->_ignoreDidBecomeActive = 1;
  [(SKUIClientContext *)self->_clientContext setPurchaseReferrerURL:v7];
}

- (void)applicationDidBecomeActive:(id)a3
{
  if (!self->_ignoreDidBecomeActive)
  {
    [(SKUIApplicationController *)self resumeApplicationWithOptions:0];
  }
}

- (void)applicationWillResignActive:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *MEMORY[0x277D767B0];
  if (self->_resignActiveTaskID != *MEMORY[0x277D767B0])
  {
    [v4 endBackgroundTask:?];
    self->_resignActiveTaskID = v6;
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__SKUIApplicationController_applicationWillResignActive___block_invoke;
  v11[3] = &unk_2781F80C8;
  v12 = v5;
  v13 = self;
  v7 = v5;
  self->_resignActiveTaskID = [v7 beginBackgroundTaskWithName:@"SKUIApplicationController.resignActive" expirationHandler:v11];
  block[6] = MEMORY[0x277D85DD0];
  block[7] = 3221225472;
  block[8] = __57__SKUIApplicationController_applicationWillResignActive___block_invoke_2;
  block[9] = &unk_2781F84A0;
  block[10] = self;
  SSDialogGetDaemonDialogState();
  resignActiveTaskID = self->_resignActiveTaskID;
  v9 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SKUIApplicationController_applicationWillResignActive___block_invoke_4;
  block[3] = &unk_2781FC960;
  block[4] = self;
  block[5] = resignActiveTaskID;
  dispatch_after(v9, MEMORY[0x277D85CD0], block);
}

uint64_t __57__SKUIApplicationController_applicationWillResignActive___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) endBackgroundTask:*(*(a1 + 40) + 192)];
  *(*(a1 + 40) + 192) = *MEMORY[0x277D767B0];
  return result;
}

void __57__SKUIApplicationController_applicationWillResignActive___block_invoke_2(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__SKUIApplicationController_applicationWillResignActive___block_invoke_3;
  v2[3] = &unk_2781FC228;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void *__57__SKUIApplicationController_applicationWillResignActive___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[24] == *(a1 + 40))
  {
    return [result _finishWillResignActiveWithDialogState:0];
  }

  return result;
}

- (SKUIClientContext)clientContext
{
  clientContext = self->_clientContext;
  if (!clientContext)
  {
    v4 = [(objc_class *)self->_clientContextClass defaultContext];
    [(SKUIApplicationController *)self setClientContext:v4];

    clientContext = self->_clientContext;
  }

  return clientContext;
}

- (void)setClientContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_SetClientConte.isa, v6, v4);

  clientContext = self->_clientContext;
  self->_clientContext = v4;
  v8 = v4;

  SKUISetShouldReverseLayoutDirectionWithContext(self->_clientContext);
  [(SKUIClientContext *)self->_clientContext _setApplicationController:self];
  [(SKUIClientContext *)self->_clientContext setPurchaseReferrerURL:self->_activationURL];
}

- (void)evaluateBlockWhenLoaded:(id)a3
{
  v4 = a3;
  v10 = v4;
  if ((self->_scriptLoadState - 3) > 1)
  {
    if (!self->_whenLoadedBlocks)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      whenLoadedBlocks = self->_whenLoadedBlocks;
      self->_whenLoadedBlocks = v5;

      v4 = v10;
    }

    v7 = [v4 copy];
    v8 = self->_whenLoadedBlocks;
    v9 = _Block_copy(v7);
    [(NSMutableArray *)v8 addObject:v9];
  }

  else
  {
    v4[2]();
  }
}

- (void)hideStatusOverlayForProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    statusOverlayProvider = self->_statusOverlayProvider;
    if (statusOverlayProvider == v6)
    {
      v10 = v6;
      self->_statusOverlayProvider = 0;

      if (self->_floatingStatusOverlayViewController)
      {
        v8 = [(SKUIApplicationController *)self _existingTabBarController];
        SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v8, 0, v4);

        floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
        self->_floatingStatusOverlayViewController = 0;
      }

      else
      {
        [(SKUIApplicationController *)self _removeStatusOverlayFromAllNavigationControllers];
      }

      v6 = v10;
    }
  }
}

- (void)loadApplicationWithOptions:(id)a3
{
  v41[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_LoadApplicatio.isa, v6, v4);

  v7 = [(SKUIApplicationController *)self clientContext];
  v8 = [v4 mutableCopy];
  if (!v8)
  {
    v8 = objc_opt_new();
  }

  +[SKUIMetricsAppLaunchEvent processStartTime];
  v10 = v9;
  if (v9 < 2.22044605e-16)
  {
    v11 = [MEMORY[0x277CBEAA8] date];
    [v11 timeIntervalSince1970];
    v10 = v12;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:(v10 * 1000.0)];
  [v8 setObject:v13 forKey:@"launchTime"];

  v14 = MEMORY[0x277CBEAC0];
  v15 = [(SKUIApplicationController *)self rootViewController];
  v16 = [v15 view];
  [v16 bounds];
  v19 = [v14 sk_dictionaryWithSize:{v17, v18}];
  [v8 setObject:v19 forKey:@"windowSize"];

  v20 = [v8 copy];
  launchOptions = self->_launchOptions;
  self->_launchOptions = v20;

  v22 = objc_alloc_init(SKUIModalDocumentController);
  modalDocumentController = self->_modalDocumentController;
  self->_modalDocumentController = v22;

  [(SKUIModalDocumentController *)self->_modalDocumentController setClientContext:v7];
  [(SKUIModalDocumentController *)self->_modalDocumentController setDelegate:self];
  [(SKUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:self];
  [(SKUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:self];
  v24 = self->_modalDocumentController;
  v25 = [(SKUIApplicationController *)self rootViewController];
  [(SKUIModalDocumentController *)v24 setRootViewController:v25];

  v26 = +[SKUINearMeController sharedController];
  [v26 setClientContext:v7];

  v27 = +[SKUIFamilyCircleController sharedController];
  [v27 setClientContext:v7];

  v28 = [MEMORY[0x277D69CA8] sharedManager];
  v41[0] = objc_opt_class();
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  [v28 setCustomURLProtocols:v29];

  [MEMORY[0x277CBAB98] registerClass:objc_opt_class()];
  v30 = [MEMORY[0x277D75128] sharedApplication];
  LODWORD(v29) = [v30 launchedToTest];

  if (v29)
  {
    [MEMORY[0x277CBAB98] registerClass:objc_opt_class()];
  }

  if (!v7)
  {
    objc_initWeak(&location, self);
    v35 = [objc_opt_class() configurationPreloader];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_4;
    v36[3] = &unk_2781FA0F0;
    objc_copyWeak(&v37, &location);
    [v35 preloadConfigurationForPurpose:1 withCompletionBlock:v36];

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
    goto LABEL_14;
  }

  [(SKUIApplicationController *)self _loadApplicationScript];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  v32 = objc_loadWeakRetained(&self->_delegate);
  v33 = [v32 shouldShowExplicitRestrictionAlertOnLaunch];

  if (v33)
  {
    WeakRetained = [[SKUIExplicitRestrictionAlertController alloc] initWithClientContext:v7];
    [(SKUIExplicitRestrictionAlertController *)WeakRetained presentExplicitRestrictionAlertIfNeededOfType:0 completionBlock:0];
LABEL_11:
  }

  objc_initWeak(&location, self);
  v34 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke;
  block[3] = &unk_2781F8230;
  block[4] = self;
  objc_copyWeak(&v39, &location);
  dispatch_after(v34, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
LABEL_14:
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_opt_class() configurationPreloader];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_2;
  v4[3] = &unk_2781FA0F0;
  objc_copyWeak(&v5, (a1 + 40));
  [v3 preloadConfigurationForPurpose:2 withCompletionBlock:v4];
  objc_destroyWeak(&v5);

  objc_autoreleasePoolPop(v2);
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_3;
    v5[3] = &unk_2781F8230;
    v6 = v3;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(MEMORY[0x277D85CD0], v5);
    objc_destroyWeak(&v7);
  }
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_3(uint64_t a1)
{
  v4 = [[SKUIClientContext alloc] initWithConfigurationDictionary:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _reloadTabBarWithClientContext:v4];

  v3 = objc_loadWeakRetained((a1 + 40));
  [objc_opt_class() finishedWithConfigurationPreloader];
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v5)
  {
    [WeakRetained _setClientContextWithDictionary:v5];

    [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_98];
  }

  else
  {
    [WeakRetained _failReloadWithError:v6];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_6;
  block[3] = &unk_2781F8320;
  objc_copyWeak(&v10, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v10);
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setRequiredBlockingBagLoad:1];
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  [v2 setClientConfigurationLoadTime:?];
}

void __56__SKUIApplicationController_loadApplicationWithOptions___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [objc_opt_class() finishedWithConfigurationPreloader];
}

- (void)recordMetricsEvent:(id)a3 flushImmediately:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x277D75128] sharedApplication];
  v8 = v7;
  metricsController = self->_metricsController;
  if (metricsController)
  {
    v10 = SKUIMetricsWindowOrientationForInterfaceOrientation([v7 statusBarOrientation]);
    [(SKUIMetricsController *)metricsController setWindowOrientation:v10];

    if (v4)
    {
      [objc_opt_class() flushImmediately];
      [v6 originalTime];
      [v6 setOriginalTime:v11 + 1.0];
      [(SKUIMetricsController *)self->_metricsController recordEvent:v6];
      [objc_opt_class() flushImmediately];
    }

    else
    {
      [(SKUIMetricsController *)self->_metricsController recordEvent:v6];
    }
  }

  else if (self->_clientContext)
  {
    v12 = *MEMORY[0x277D767B0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__SKUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke;
    v21[3] = &unk_2781FC960;
    v13 = v7;
    v22 = v13;
    v23 = v12;
    v14 = [v13 beginBackgroundTaskWithName:@"SKUIApplicationController.recordMetricsEvent" expirationHandler:v21];
    clientContext = self->_clientContext;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SKUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke_2;
    v16[3] = &unk_2781FEB48;
    v16[4] = self;
    v17 = v13;
    v20 = v4;
    v18 = v6;
    v19 = v14;
    [(SKUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:v16];
  }
}

void __65__SKUIApplicationController_recordMetricsEvent_flushImmediately___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = *(a1 + 32);
  v7 = *(v4 + 136);
  v5 = (v4 + 136);
  v6 = v7;
  if (!v7)
  {
    objc_storeStrong(v5, a2);
    v6 = *(*(a1 + 32) + 136);
  }

  v8 = SKUIMetricsWindowOrientationForInterfaceOrientation([*(a1 + 40) statusBarOrientation]);
  [v6 setWindowOrientation:v8];

  if (*(a1 + 64) == 1)
  {
    [objc_opt_class() flushImmediately];
  }

  [*(*(a1 + 32) + 136) recordEvent:*(a1 + 48)];
  if (*(a1 + 64) == 1)
  {
    [objc_opt_class() flushImmediately];
  }

  [*(a1 + 40) endBackgroundTask:*(a1 + 56)];
}

- (void)resumeApplicationWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(SKUIApplicationController *)self rootViewController];
  v6 = [v5 presentedViewController];
  v7 = [v6 transitionCoordinator];

  if (v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __58__SKUIApplicationController_resumeApplicationWithOptions___block_invoke;
    v8[3] = &unk_2781FB740;
    v8[4] = self;
    v9 = v4;
    [v7 animateAlongsideTransition:0 completion:v8];
  }

  else
  {
    [(IKAppContext *)self->_scriptContext resumeWithOptions:v4];
  }
}

- (UIViewController)rootViewController
{
  if (self->_hidesTabBar)
  {
    [(SKUIApplicationController *)self _navigationContainerViewController];
  }

  else
  {
    [(SKUIApplicationController *)self _tabBarController];
  }
  v2 = ;

  return v2;
}

- (id)selectTabWithIdentifier:(id)a3
{
  v4 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__71;
  v26 = __Block_byref_object_dispose__71;
  v27 = 0;
  if (self->_hidesTabBar)
  {
    v5 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 == v6)
    {
      goto LABEL_8;
    }

    v7 = [v5 navigationController];
    v8 = v23[5];
    v23[5] = v7;
  }

  else
  {
    v9 = [(SKUIApplicationController *)self _existingTabBarController];
    v10 = [v9 viewControllers];
    tabBarItems = self->_tabBarItems;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __53__SKUIApplicationController_selectTabWithIdentifier___block_invoke;
    v16[3] = &unk_2781FEB70;
    v17 = v4;
    v8 = v10;
    v18 = v8;
    v5 = v9;
    v20 = self;
    v21 = &v22;
    v19 = v5;
    [(NSArray *)tabBarItems enumerateObjectsUsingBlock:v16];
    if (!v23[5])
    {
      v12 = [v5 selectedViewController];
      v13 = v23[5];
      v23[5] = v12;
    }

    [(SKUIApplicationController *)self _dispatchTabBarOnSelect];
    [(SKUIApplicationController *)self _tintTabBarWithViewController:v23[5]];
    [(SKUIApplicationController *)self _updateOverlayNavigationController:v23[5]];
  }

LABEL_8:
  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __53__SKUIApplicationController_selectTabWithIdentifier___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = [a2 tabIdentifier];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    if ([*(a1 + 40) count] > a3)
    {
      v9 = [*(a1 + 40) objectAtIndex:a3];
      v10 = [*(a1 + 48) selectedViewController];

      if (v9 != v10)
      {
        [*(a1 + 48) setSelectedViewController:v9];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), v9);
        }

        [*(*(a1 + 56) + 128) popAllDocuments];
      }
    }

    *a4 = 1;
  }
}

- (void)setTabBarItems:(id)a3
{
  if (self->_tabBarItems != a3)
  {
    v5 = [a3 copy];
    tabBarItems = self->_tabBarItems;
    self->_tabBarItems = v5;

    [(SKUIApplicationController *)self _reloadRootViewControllers];
  }
}

- (void)showErrorViewWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v10 = a4;
  v11 = MEMORY[0x277D75E78];
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = [v11 alloc];
  v16 = [v15 initWithFrame:v14 title:0 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];

  if (v13)
  {
    v17 = v10 == 0;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    v18 = &stru_2827FFAC8;
  }

  else
  {
    v18 = v10;
  }

  v21 = v18;
  [v16 setMessage:?];
  [v16 setButtonTitle:v13];

  [v16 setButtonAction:v12];
  v19 = [MEMORY[0x277D75348] systemBackgroundColor];
  [v16 setBackgroundColor:v19];

  v20 = objc_alloc_init(SKUILaunchErrorViewController);
  [(SKUILaunchErrorViewController *)v20 setView:v16];
  [(SKUIApplicationController *)self showTransientViewController:v20];
}

- (void)showErrorViewForLaunchFailure
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke;
  v10[3] = &unk_2781F80F0;
  v10[4] = self;
  [(SKUIApplicationController *)self evaluateBlockWhenLoaded:v10];
  objc_initWeak(&location, self);
  v3 = SKUIErrorDocumentTitle(self->_clientContext);
  v4 = self->_clientContext;
  v5 = v4;
  if (v4)
  {
    [(SKUIClientContext *)v4 localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY"];
  }

  else
  {
    [SKUIClientContext localizedStringForKey:@"NETWORK_ERROR_BUTTON_RETRY" inBundles:0];
  }
  v6 = ;

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke_2;
  v7[3] = &unk_2781F8320;
  objc_copyWeak(&v8, &location);
  [(SKUIApplicationController *)self showErrorViewWithTitle:v3 message:0 buttonTitle:v6 buttonAction:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke(uint64_t a1)
{
  v2 = +[SKUIMetricsUtilities newErrorPageEvent];
  [v2 setPageType:@"SKUIApplicationController"];
  [*(a1 + 32) recordMetricsEvent:v2 flushImmediately:0];
}

void __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _reloadApplication];
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke_3;
    v3[3] = &unk_2781F80F0;
    v3[4] = v2;
    [v2 evaluateBlockWhenLoaded:v3];
  }
}

void __58__SKUIApplicationController_showErrorViewForLaunchFailure__block_invoke_3(uint64_t a1)
{
  v2 = +[SKUIMetricsUtilities newErrorRetryClickEvent];
  [v2 setPageType:@"SKUIApplicationController"];
  [*(a1 + 32) recordMetricsEvent:v2 flushImmediately:0];
}

- (void)showExternalURL:(id)a3
{
  v4 = a3;
  v5 = [v4 valueForQueryParameter:@"referrer"];
  v6 = [v4 referrerApplicationName];
  if (v6 || !v5)
  {
  }

  else if (![v5 caseInsensitiveCompare:@"siri"])
  {
    [v4 setReferrerApplicationName:@"com.apple.Siri"];
  }

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SKUIApplicationController_showExternalURL___block_invoke;
  v8[3] = &unk_2781FA0C8;
  objc_copyWeak(&v11, &location);
  v7 = v4;
  v9 = v7;
  v10 = self;
  [(SKUIApplicationController *)self _attemptAMSURLHandlingIfPossibleForExternalURL:v7 fallback:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __45__SKUIApplicationController_showExternalURL___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _shouldUseLegacyURLHandlingForExternalURL:*(a1 + 32)];

  if (v3)
  {
    v4 = *(a1 + 40);
    if (v4[14])
    {
      if ([*(a1 + 32) isEqual:?])
      {
        return;
      }

      v4 = *(a1 + 40);
    }

    v10 = *(a1 + 32);

    [v4 _legacyResolveExternalURL:v10];
  }

  else
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v11 = [v5 _launchOptionsWithURL:*(a1 + 32)];

    v6 = *(*(a1 + 40) + 104);
    if (v6)
    {
      v7 = [v6 mutableCopy];
      [v7 addEntriesFromDictionary:v11];
      v8 = *(a1 + 40);
      v9 = *(v8 + 104);
      *(v8 + 104) = v7;
    }

    else
    {
      v9 = objc_loadWeakRetained((a1 + 48));
      [v9 resumeApplicationWithOptions:v11];
    }
  }
}

- (void)showStatusOverlayUsingProvider:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  p_statusOverlayProvider = &self->_statusOverlayProvider;
  statusOverlayProvider = self->_statusOverlayProvider;
  if (v7)
  {
    if (statusOverlayProvider == v7)
    {
      goto LABEL_6;
    }

    v12 = v7;
    objc_storeStrong(p_statusOverlayProvider, a3);
    v10 = [(SKUIApplicationController *)self _activeNavigationController];
    v11 = [v10 topViewController];
    [(SKUIApplicationController *)self _showStatusOverlayForNavigationController:v10 viewController:v11 animated:v4];
  }

  else
  {
    v12 = 0;
    p_statusOverlayProvider = [(SKUIApplicationController *)self hideStatusOverlayForProvider:statusOverlayProvider animated:v4];
  }

  v7 = v12;
LABEL_6:

  MEMORY[0x2821F96F8](p_statusOverlayProvider, v7);
}

- (void)showTransientViewController:(id)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKUIApplicationController *)self _transientNavigationDocument];
  v6 = [v5 navigationController];
  if (v4)
  {
    [v5 ensureStackConsistencyForNavigationControllerOperation:3 operationDidComplete:0];
    v9[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
    [v6 setViewControllers:v7 animated:0];

    [v5 ensureStackConsistencyForNavigationControllerOperation:3 operationDidComplete:1];
  }

  else
  {
    [v5 setStackItems:MEMORY[0x277CBEBF8] animated:0];
  }

  v8 = [(SKUIApplicationController *)self _existingTabBarController];
  [v8 setTransientViewController:v6 animated:0];

  [(SKUIApplicationController *)self _tintTabBarWithViewController:v6];
}

- (void)setMescalPrimeEnabledForXHRRequests:(BOOL)a3
{
  self->_mescalPrimeEnabledForXHRRequests = a3;
  scriptContext = self->_scriptContext;
  if (scriptContext)
  {
    [(IKAppContext *)scriptContext setMescalPrimeEnabledForXHRRequests:?];
  }
}

- (void)updateTabBarWithItems:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v38 = a4;
  v52 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v39 = a5;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  NSLog(&cfstr_UpdateTabBarIt.isa, v9, self->_clientContext, v7);

  v10 = [(NSMutableArray *)self->_navigationDocumentControllers copy];
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = v12;

  v41 = [(SKUIApplicationController *)self clientContext];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v7;
  v14 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v48;
    v40 = v10;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v48 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v47 + 1) + 8 * i);
        v19 = [v18 customRootViewController];

        if (v19)
        {
          v20 = [v18 customRootViewController];
          if ([v20 conformsToProtocol:&unk_2829AEDF8])
          {
            v21 = [v20 appNavigationController];
            [v21 setClientContext:v41];
            [v21 setDelegate:self];
            v22 = self->_navigationDocumentControllers;
          }

          else
          {
            v24 = self->_navigationDocumentControllers;
            v21 = [MEMORY[0x277CBEB68] null];
            v22 = v24;
          }

          [(NSMutableArray *)v22 addObject:v21];

          v25 = [v18 customRootViewController];
          [v11 addObject:v25];
        }

        else
        {
          v23 = [(NSArray *)self->_tabBarItems indexOfObject:v18];
          if (v23 >= [v10 count])
          {
            v20 = 0;
          }

          else
          {
            v20 = [v10 objectAtIndex:v23];
          }

          v25 = [v20 navigationController];
          if (v25)
          {
            v26 = [v20 clientContext];

            if (!v26)
            {
              [v20 setClientContext:v41];
            }

            v27 = [(NSArray *)self->_tabBarItems objectAtIndex:v23];
            v28 = [v27 underlyingTabBarItem];
            [v18 setUnderlyingTabBarItem:v28];

            [(NSMutableArray *)self->_navigationDocumentControllers addObject:v20];
            [v11 addObject:v25];
            v10 = v40;
          }

          else
          {
            v29 = [(SKUIApplicationController *)self _newNavigationControllerWithTabBarItem:v18];
            if (v29)
            {
              v30 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v29];
              [(SKUINavigationDocumentController *)v30 setClientContext:v41];
              [(SKUINavigationDocumentController *)v30 setDelegate:self];
              [(NSMutableArray *)self->_navigationDocumentControllers addObject:v30];
              [v11 addObject:v29];

              v10 = v40;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v15);
  }

  v31 = [obj copy];
  tabBarItems = self->_tabBarItems;
  self->_tabBarItems = v31;

  v33 = [(SKUIApplicationController *)self _existingTabBarController];
  [v33 setViewControllers:v11 animated:v38];

  v34 = [(SKUITabBarController *)self->_tabBarController selectedViewController];
  [(SKUIApplicationController *)self _tintTabBarWithViewController:v34];

  scriptContext = self->_scriptContext;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __71__SKUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke;
  v45[3] = &unk_2781FEB98;
  v46 = v39;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __71__SKUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke_2;
  v43[3] = &unk_2781F84A0;
  v44 = v10;
  v36 = v10;
  v37 = v39;
  [(IKAppContext *)scriptContext evaluate:v45 completionBlock:v43];
}

void __71__SKUIApplicationController_updateTabBarWithItems_animated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnUpdateWithCompletion:*(a1 + 32)];
}

- (void)appContext:(id)a3 didCompletePurchase:(id)a4
{
  v6 = a4;
  v5 = [(SKUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 application:self didCompletePurchase:v6];
  }
}

- (void)appContext:(id)a3 didCompleteSoftwarePurchase:(id)a4
{
  v6 = a4;
  v5 = [(SKUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 application:self didCompleteSoftwarePurchase:v6];
  }
}

- (void)appContext:(id)a3 didExitWithOptions:(id)a4
{
  v5 = a4;
  v6 = [v5 objectForKey:@"url"];
  v7 = *MEMORY[0x277D767B0];
  if ([v6 length])
  {
    v8 = [MEMORY[0x277D75128] sharedApplication];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__SKUIApplicationController_appContext_didExitWithOptions___block_invoke;
    v12[3] = &__block_descriptor_40_e5_v8__0l;
    v12[4] = v7;
    v7 = [v8 beginBackgroundTaskWithName:@"com.apple.ios.StoreKitUIService.openURL" expirationHandler:v12];
  }

  v9 = [(SKUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v9 application:self didStopWithOptions:v5];
  }

  if ([v6 length])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v6];
    SKUIMetricsOpenSensitiveURL(v10, 0);
    v11 = [MEMORY[0x277D75128] sharedApplication];
    [v11 endBackgroundTask:v7];
  }
}

void __59__SKUIApplicationController_appContext_didExitWithOptions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  [v2 endBackgroundTask:*(a1 + 32)];
}

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  scriptContext = self->_scriptContext;
  v7 = a4;
  v6 = [(IKAppContext *)scriptContext appScriptFallbackHandler];
  [v6 invalidate];

  [(SKUIApplicationController *)self _failWithError:v7];
}

- (void)appContext:(id)a3 didStartWithOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  NSLog(&cfstr_ContextDidStar.isa, v9, v7, v6);

  self->_scriptLoadState = 3;
  [(SKUIApplicationController *)self _fireBlocksAfterLoad];
  launchOptions = self->_launchOptions;
  self->_launchOptions = 0;

  legacyLaunchURL = self->_legacyLaunchURL;
  self->_legacyLaunchURL = 0;

  if (self->_indexOfLastTabNeedingContent != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(SKUIApplicationController *)self _dispatchTabBarOnNeedsContentForTabAtIndex:?];
  }

  [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_199];
}

void __60__SKUIApplicationController_appContext_didStartWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setBootstrapEndTime:?];
}

- (void)appContext:(id)a3 didStopWithOptions:(id)a4
{
  v10 = a4;
  [(SKUIApplicationController *)self _removeObserversForReloadNotifications];
  scriptLoadState = self->_scriptLoadState;
  if (scriptLoadState == 5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    if ([v6 applicationState] == 2)
    {
      self->_reloadApplicationOnForegroundNotification = 1;
      [(SKUIApplicationController *)self _invalidateApplication];
      v7 = *MEMORY[0x277D76628];
      v8 = [MEMORY[0x277D759A0] mainScreen];
      [v6 removeDefaultImage:v7 forScreen:v8];
    }

    else
    {
      [(SKUIApplicationController *)self _reloadApplication];
    }

    [(_SKUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = 0;
  }

  else if (scriptLoadState == 6)
  {
    [(SKUIApplicationController *)self _invalidateApplication];
    [(_SKUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    v6 = self->_shutdownHelper;
    self->_shutdownHelper = 0;
  }

  else
  {
    v6 = [(SKUIApplicationController *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 application:self didStopWithOptions:v10];
    }

    else
    {
      [(SKUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SKUIJSApplication alloc] initWithAppContext:v6 applicationController:self];
  [v7 setObject:v8 forKeyedSubscript:@"App"];

  v9 = [[SKUIJSTabBar alloc] initWithAppContext:v6 controller:self];
  [v7 setObject:v9 forKeyedSubscript:@"TabBar"];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__71;
  v34 = __Block_byref_object_dispose__71;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__71;
  v28 = __Block_byref_object_dispose__71;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__71;
  v22 = __Block_byref_object_dispose__71;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__SKUIApplicationController_appContext_evaluateAppJavaScriptInContext___block_invoke;
  v17[3] = &unk_2781FEBC0;
  v17[4] = self;
  v17[5] = &v30;
  v17[6] = &v24;
  v17[7] = &v18;
  [v6 evaluateDelegateBlockSync:v17];
  v10 = objc_alloc([(SKUIApplicationController *)self _JSITunesStoreClass]);
  v11 = [v10 initWithAppContext:v6 clientContext:v31[5]];
  [v7 setObject:v11 forKeyedSubscript:@"itms"];

  v12 = [SKUIJSModalDocumentController alloc];
  v13 = [(SKUIJSModalDocumentController *)v12 initWithAppContext:v6 modalDocumentController:v19[5]];
  [v7 setObject:v13 forKeyedSubscript:@"modal"];

  v14 = [[SKUIJSTelephony alloc] initWithAppContext:v6];
  [v7 setObject:v14 forKeyedSubscript:@"Telephony"];

  v15 = [SKUIJSImageColorAnalyzer alloc];
  v16 = [(SKUIJSImageColorAnalyzer *)v15 initWithAppContext:v6 clientContext:v31[5]];
  [v7 setObject:v16 forKeyedSubscript:@"ImageColorAnalyzer"];

  if (objc_opt_respondsToSelector())
  {
    [v25[5] application:self evaluateAppJavaScriptInContext:v6 JSContext:v7];
  }

  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);
}

void __71__SKUIApplicationController_appContext_evaluateAppJavaScriptInContext___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 32));
  WeakRetained = objc_loadWeakRetained((a1[4] + 40));
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  v5 = *(a1[4] + 128);
  v6 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v6, v5);
}

- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5
{
  if (self->_scriptContext == a3)
  {
    if ([(SKUIApplicationControllerOptions *)self->_options supportsFullApplicationReload])
    {
      if (a4 == 1)
      {
        self->_stopApplicationOnBackgroundNotification = 1;
      }

      else if (!a4)
      {
        v7 = objc_opt_class();
        NSLog(&cfstr_ReloadingAppIm.isa, v7);

        [(SKUIApplicationController *)self _stopScriptContextForReload];
      }
    }

    else
    {
      NSLog(&cfstr_SkippingFullAp.isa);
    }
  }
}

- (void)appContextNeedsRestart:(id)a3
{
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = *MEMORY[0x277D767B0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__SKUIApplicationController_appContextNeedsRestart___block_invoke;
  v12[3] = &unk_2781FC960;
  v5 = v3;
  v13 = v5;
  v14 = v4;
  v6 = [v5 beginBackgroundTaskWithName:@"SKUIApplicationController.restartApp" expirationHandler:v12];
  [v5 suspend];
  v7 = objc_alloc_init(MEMORY[0x277D69A40]);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SKUIApplicationController_appContextNeedsRestart___block_invoke_2;
  v9[3] = &unk_2781FEBE8;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [v7 restartApplication:v9];
}

- (void)appContext:(id)a3 setPreviewOverlayDocument:(id)a4 withOptions:(id)a5
{
  v30 = a4;
  v7 = a5;
  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  v9 = v30;
  if (v30)
  {
    v10 = [v30 templateElement];
    if ([v10 elementType] == 91)
    {
      v9 = v30;
    }

    else
    {
      NSLog(&cfstr_InvalidPreview.isa, v10);

      v10 = 0;
      v9 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v31 = v9;
  previewDocumentController = self->_previewDocumentController;
  if (previewDocumentController)
  {
    [v8 removeObserver:self name:0x282808428 object:self->_previewDocumentController];
    v12 = self->_previewDocumentController;
    self->_previewDocumentController = 0;
  }

  v13 = [(SKUIApplicationController *)self _existingTabBarController];
  if (v31)
  {
    v14 = previewDocumentController != 0;
    v15 = [[SKUIPreviewDocumentController alloc] initWithDocument:v31];
    v16 = self->_previewDocumentController;
    self->_previewDocumentController = v15;

    v17 = self->_previewDocumentController;
    v18 = [(SKUIApplicationController *)self clientContext];
    [(SKUIPreviewDocumentController *)v17 setClientContext:v18];

    [v8 addObserver:self selector:sel__previewDocumentIsActiveChangeNotification_ name:0x282808428 object:self->_previewDocumentController];
    v19 = [(SKUIPreviewDocumentController *)self->_previewDocumentController isPreviewActive];
    v20 = v19;
    if (self->_floatingStatusOverlayViewController)
    {
      if (v19)
      {
        v21 = [v13 traitCollection];
        v22 = -[SKUIPreviewDocumentController overlayViewControllerWithBackgroundStyle:](self->_previewDocumentController, "overlayViewControllerWithBackgroundStyle:", [v21 userInterfaceStyle] != 1);
      }

      else
      {
        v22 = 0;
      }

      floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
      self->_floatingStatusOverlayViewController = v22;
      v25 = v22;

      SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v13, self->_floatingStatusOverlayViewController, 1);
    }

    v26 = v14 || v20;
    v27 = [v7 objectForKey:@"playsImmediately"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v27 BOOLValue] && -[SKUIApplicationController _playPreviewForPreviewTemplate:](self, "_playPreviewForPreviewTemplate:", v10))
    {
      v28 = [(SKUIApplicationController *)self _activeNavigationController];
      v29 = [v28 topViewController];
      [(SKUIApplicationController *)self _showStatusOverlayForNavigationController:v28 viewController:v29 animated:1];
    }

    if (v26)
    {
LABEL_23:
      [v8 postNotificationName:@"SKUIApplicationControllerPreviewOverlayDidChangeNotification" object:self userInfo:0];
    }
  }

  else
  {
    if (self->_floatingStatusOverlayViewController)
    {
      SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v13, 0, 1);
      v23 = self->_floatingStatusOverlayViewController;
      self->_floatingStatusOverlayViewController = 0;
    }

    if (previewDocumentController)
    {
      goto LABEL_23;
    }
  }
}

- (id)deviceConfigForContext:(id)a3
{
  deviceConfig = self->_deviceConfig;
  if (!deviceConfig)
  {
    v5 = objc_alloc_init(SKUIAppDeviceConfig);
    v6 = self->_deviceConfig;
    self->_deviceConfig = v5;

    deviceConfig = self->_deviceConfig;
  }

  return deviceConfig;
}

- (id)navigationControllerForContext:(id)a3
{
  if (self->_hidesTabBar)
  {
    v3 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    v4 = [MEMORY[0x277CBEB68] null];

    if (v3 != v4)
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

- (id)presentationViewControllerForAppContext:(id)a3
{
  v3 = [(SKUIApplicationController *)self rootViewController];
  v4 = [v3 presentedViewController];

  if (v4)
  {
    do
    {
      v5 = [v3 presentedViewController];

      v6 = [v5 presentedViewController];

      v3 = v5;
    }

    while (v6);
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

- (id)activeDocument
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SKUIModalDocumentController *)self->_modalDocumentController documents];
  if ([v3 count])
  {
    v4 = [v3 lastObject];
    goto LABEL_27;
  }

  if (self->_hidesTabBar)
  {
    v5 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 != v6)
    {
      v7 = [v5 documents];
      v4 = [(NSMutableArray *)v7 lastObject];
LABEL_25:

      goto LABEL_26;
    }

    v4 = 0;
  }

  else
  {
    v8 = [(SKUIApplicationController *)self _existingTabBarController];
    v9 = [v8 transientViewController];

    if (!v9)
    {
      v10 = [(SKUIApplicationController *)self _existingTabBarController];
      v5 = [v10 selectedViewController];

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v7 = self->_navigationDocumentControllers;
      v4 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v4)
      {
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v4; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v7);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [MEMORY[0x277CBEB68] null];
            v15 = v14;
            if (v13 == v14)
            {
            }

            else
            {
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {
                v17 = [v13 navigationController];

                if (v17 == v5 || [v5 conformsToProtocol:&unk_2829AEDF8] && (objc_msgSend(v5, "appNavigationController"), v18 = objc_claimAutoreleasedReturnValue(), v18, v18 == v13))
                {
                  v19 = [v13 documents];
                  v4 = [v19 lastObject];

                  goto LABEL_25;
                }
              }
            }
          }

          v4 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_25;
    }

    v5 = [(SKUINavigationDocumentController *)self->_transientNavigationDocument documents];
    v4 = [v5 lastObject];
  }

LABEL_26:

LABEL_27:

  return v4;
}

- (id)localStorage
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_localStorage)
  {
    if ([(SKUIApplicationControllerOptions *)self->_options useTransientStorageForTests])
    {
      v3 = objc_alloc_init(SKUITransientAppDataStorage);
      localStorage = self->_localStorage;
      self->_localStorage = v3;
    }

    else
    {
      v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v6 = [v5 firstObject];

      if (v6)
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v7 bundleIdentifier];
        v16[1] = v8;
        v16[2] = @"com.apple.StoreKitUI.localStorage";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

        v10 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
        v11 = [v10 stringByAppendingPathExtension:@"plist"];

        v12 = [objc_alloc(MEMORY[0x277D1B030]) initWithFilePath:v11 identifier:@"com.apple.StoreKitUI.localStorage"];
        v13 = self->_localStorage;
        self->_localStorage = v12;
      }
    }
  }

  v14 = self->_localStorage;

  return v14;
}

- (id)vendorIdentifier
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 identifierForVendor];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)vendorStorage
{
  v16[3] = *MEMORY[0x277D85DE8];
  if (!self->_vendorStorage)
  {
    if ([(SKUIApplicationControllerOptions *)self->_options useTransientStorageForTests])
    {
      v3 = objc_alloc_init(SKUITransientAppDataStorage);
      vendorStorage = self->_vendorStorage;
      self->_vendorStorage = v3;
    }

    else
    {
      v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v6 = [v5 firstObject];

      if (v6)
      {
        v7 = [MEMORY[0x277CCA8D8] mainBundle];
        v8 = [v7 bundleIdentifier];
        v16[1] = v8;
        v16[2] = @"com.apple.StoreKitUI.vendorStorage";
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

        v10 = [MEMORY[0x277CCACA8] pathWithComponents:v9];
        v11 = [v10 stringByAppendingPathExtension:@"plist"];

        v12 = [objc_alloc(MEMORY[0x277D1B030]) initWithFilePath:v11 identifier:@"com.apple.StoreKitUI.vendorStorage"];
        v13 = self->_vendorStorage;
        self->_vendorStorage = v12;
      }
    }
  }

  v14 = self->_vendorStorage;

  return v14;
}

- (int64_t)modalDocumentController:(id)a3 barStyleForStackItem:(id)a4
{
  v5 = [a4 presentationType];
  v6 = [v5 isEqualToString:0x28280B088];

  if (!v6)
  {
    return 0;
  }

  if (self->_hidesTabBar)
  {
    v7 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
    v8 = [MEMORY[0x277CBEB68] null];

    if (v7 == v8)
    {
      v9 = 0;
    }

    else
    {
      v9 = [v7 navigationController];
    }
  }

  else
  {
    v7 = [(SKUIApplicationController *)self _existingTabBarController];
    v11 = [v7 transientViewController];
    if (!v11)
    {
      v11 = [v7 selectedViewController];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = [v11 navigationController];
    }

    v9 = v12;
  }

  if (v9)
  {
    v13 = [v9 navigationBar];
    v10 = [v13 barStyle];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)modalDocumentControllerDidFinish:(id)a3
{
  if ([(SKUIApplicationController *)self _needsStatusOverlay])
  {
    v4 = [(SKUIApplicationController *)self rootViewController];
    v5 = [v4 view];

    [v5 bounds];
    if ([(SKUIApplicationController *)self _usesFloatingStatusOverlayForWidth:v6])
    {
      [(SKUIApplicationController *)self _showFloatingStatusOverlayAnimated:1];
    }
  }

  v10 = [(SKUIApplicationController *)self _activeNavigationController];
  v7 = [v10 topViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 skui_viewWillAppear:1];
  }

  v8 = [(SKUIApplicationController *)self activeDocument];
  v9 = v8;
  if (v8)
  {
    [v8 onAppear];
  }
}

- (void)getModalSourceViewForElementIdentifier:(id)a3 completionBlock:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (!self->_hidesTabBar)
  {
    v7 = [(SKUIApplicationController *)self _existingTabBarController];
    v9 = [v7 transientViewController];
    if (!v9)
    {
      v9 = [v7 selectedViewController];
    }

    v10 = SKUIViewControllerGetTopMostViewController(v9);
    goto LABEL_7;
  }

  v7 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  v8 = [MEMORY[0x277CBEB68] null];

  if (v7 != v8)
  {
    v9 = [v7 navigationController];
    v10 = [v9 topViewController];
LABEL_7:
    v11 = v10;

    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  if ([v11 conformsToProtocol:&unk_28291F928])
  {
    [v11 getModalSourceViewForElementIdentifier:v12 completionBlock:v6];
  }

  else
  {
    v6[2](v6, 0);
  }
}

- (id)jsNavigationDocumentForNavigationController:(id)a3 inContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__71;
  v20 = __Block_byref_object_dispose__71;
  v21 = 0;
  v8 = [(SKUIClientContext *)self->_clientContext _scriptAppContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__SKUIApplicationController_jsNavigationDocumentForNavigationController_inContext___block_invoke;
  v13[3] = &unk_2781FEC10;
  v15 = &v16;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [v8 evaluateDelegateBlockSync:v13];

  v10 = v17[5];
  if (v10)
  {
    v11 = [(SKUIApplicationController *)self jsNavigationDocumentForNavigationDocumentController:v10 inContext:v7];
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __83__SKUIApplicationController_jsNavigationDocumentForNavigationController_inContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _documentControllerForNavigationController:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)jsNavigationDocumentForNavigationDocumentController:(id)a3 inContext:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:@"TabBar"];
  v9 = [v8 toObjectOfClass:objc_opt_class()];

  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__71;
  v29 = __Block_byref_object_dispose__71;
  v30 = 0;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v10 = [(SKUIApplicationController *)self _transientNavigationController];
    v11 = v26[5];
    v26[5] = v10;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SKUIApplicationController_jsNavigationDocumentForNavigationDocumentController_inContext___block_invoke;
    block[3] = &unk_2781F8608;
    block[4] = self;
    block[5] = &v25;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (v26[5] == v6)
  {
    v12 = [v9 transientTab];
    v16 = [v12 navigationDocument];
  }

  else
  {
    [v9 tabs];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v12 = v21 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
    if (v13)
    {
      v14 = *v21;
LABEL_7:
      v15 = 0;
      while (1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [*(*(&v20 + 1) + 8 * v15) navigationDocument];
        v17 = [v16 navigationControllerDelegate];
        v18 = v17 == v6;

        if (v18)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v31 count:16];
          if (v13)
          {
            goto LABEL_7;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      v16 = 0;
    }
  }

  _Block_object_dispose(&v25, 8);

  return v16;
}

uint64_t __91__SKUIApplicationController_jsNavigationDocumentForNavigationDocumentController_inContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _transientNavigationController];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)navigationDocumentController:(id)a3 requestsAccessToAppContextUsingBlock:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __95__SKUIApplicationController_navigationDocumentController_requestsAccessToAppContextUsingBlock___block_invoke;
  v7[3] = &unk_2781F9B48;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(SKUIApplicationController *)self evaluateBlockWhenLoaded:v7];
}

void __95__SKUIApplicationController_navigationDocumentController_requestsAccessToAppContextUsingBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(*(a1 + 32) + 32) _scriptAppContext];
  (*(v1 + 16))(v1, v2);
}

- (void)navigationDocumentStackDidChange:(id)a3
{
  v4 = [a3 documents];
  v5 = [v4 count];

  if (v5)
  {

    [(SKUIApplicationController *)self _sendDidDisplayFirstPageIfNecessary];
  }
}

- (void)tabBarController:(id)a3 willDisplayViewController:(id)a4
{
  v6 = a4;
  v7 = [a3 viewControllers];
  v8 = [v7 indexOfObject:v6];

  [(SKUIApplicationController *)self _dispatchTabBarOnNeedsContentForTabAtIndex:v8];
}

- (void)URLResolver:(id)a3 didFinishWithResult:(BOOL)a4
{
  [(SKUIURLResolver *)self->_urlResolver setDelegate:0, a4];
  [(SKUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];
  urlResolver = self->_urlResolver;
  self->_urlResolver = 0;
}

- (BOOL)URLResolver:(id)a3 shouldPerformDefaultActionForURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  scriptContext = self->_scriptContext;
  if (scriptContext)
  {
    launchOptions = self->_launchOptions;
    if (launchOptions)
    {
      v10 = [(NSDictionary *)launchOptions mutableCopy];
      v11 = [v7 underlyingURL];
      v12 = [v11 absoluteString];

      [(NSDictionary *)v10 setValue:v12 forKey:@"url"];
      v13 = self->_launchOptions;
      self->_launchOptions = v10;
    }

    else
    {
      v12 = [(SKUIApplicationController *)self _launchOptionsWithURL:v7];
      v13 = [SKUIURLResolver tabIdentifierForURL:v7];
      if (v13)
      {
        [v12 removeObjectForKey:@"url"];
        [v12 setObject:v13 forKeyedSubscript:@"selectedTabId"];
      }

      [(SKUIApplicationController *)self resumeApplicationWithOptions:v12];
    }
  }

  return scriptContext == 0;
}

- (void)URLResolver:(id)a3 showURL:(id)a4 withTabIdentifier:(id)a5
{
  v13 = a4;
  v7 = a5;
  v8 = [(SKUIApplicationController *)self _existingTabBarController];
  [v8 setTransientViewController:0 animated:0];

  v9 = [(SKUIApplicationController *)self selectTabWithIdentifier:v7];

  if (v9)
  {
    v10 = [v9 popToRootViewControllerAnimated:0];
    v11 = [v9 viewControllers];
    v12 = [v11 firstObject];

    if (v13 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v12 showExternalURL:v13];
    }
  }
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  if ([(SKUIApplicationController *)self _sendNativeBackButtonMetricEvents]&& self->_lastNavigationControllerOperation == 2)
  {
    v7 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v7 setActionType:*MEMORY[0x277D6A430]];
    [v7 setTargetType:*MEMORY[0x277D6A4D0]];
    [v7 setTargetIdentifier:@"back"];
    if (self->_lastPoppedViewController && ((objc_opt_respondsToSelector() & 1) == 0 ? (v8 = 0) : (-[UIViewController activeMetricsController](self->_lastPoppedViewController, "activeMetricsController"), v8 = objc_claimAutoreleasedReturnValue()), -[SKUIClientContext metricsPageContextForViewController:](self->_clientContext, "metricsPageContextForViewController:", self->_lastPoppedViewController), v9 = objc_claimAutoreleasedReturnValue(), [v7 setPageContext:v9], v9, v8))
    {
      [v8 recordEvent:v7];
    }

    else
    {
      [(SKUIApplicationController *)self recordMetricsEvent:v7 flushImmediately:0];
    }
  }

  v11 = [(SKUIApplicationController *)self _documentControllerForNavigationController:v6];
  [v11 ensureStackConsistencyForNavigationControllerOperation:self->_lastNavigationControllerOperation operationDidComplete:1];
  [(SKUIModalDocumentController *)self->_modalDocumentController ensureOverlayNavigationControllerStackConsistencyForNavigationController:v6];

  lastPoppedViewController = self->_lastPoppedViewController;
  self->_lastPoppedViewController = 0;
}

- (void)navigationController:(id)a3 willShowViewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  [(SKUIApplicationController *)self _ensureStackConsistencyForNavigationController:v8];
  if ([(SKUIApplicationController *)self _needsStatusOverlay])
  {
    [(SKUIApplicationController *)self _showStatusOverlayForNavigationController:v8 viewController:v9 animated:v5];
  }

  v10 = [SKUINavigationControllerAssistant assistantForNavigationController:v8 clientContext:self->_clientContext];
  [v10 willShowViewController:v9 animated:v5];
  if (self->_lastNavigationControllerOperation == 2)
  {
    v11 = [v8 isInteractiveTransition];
    scriptContext = self->_scriptContext;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __82__SKUIApplicationController_navigationController_willShowViewController_animated___block_invoke;
    v13[3] = &__block_descriptor_33_e19_v16__0__JSContext_8l;
    v14 = v11;
    [(IKAppContext *)scriptContext evaluate:v13 completionBlock:0];
  }
}

void __82__SKUIApplicationController_navigationController_willShowViewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"itms"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnNavigationStackWillPop:*(a1 + 32)];
}

- (unint64_t)navigationControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = [a3 topViewController];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 supportedInterfaceOrientations];
  }

  else
  {
    v6 = [MEMORY[0x277D75418] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      v5 = 30;
    }

    else if (SKUIAllowsLandscapePhone())
    {
      v5 = 26;
    }

    else
    {
      v5 = 2;
    }
  }

  return v5;
}

- (void)tabBarController:(id)a3 didEndCustomizingViewControllers:(id)a4 changed:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (v5)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v26 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v34;
      v27 = v31;
      do
      {
        v12 = 0;
        do
        {
          if (*v34 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v33 + 1) + 8 * v12);
          navigationDocumentControllers = self->_navigationDocumentControllers;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __87__SKUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke;
          v32[3] = &unk_2781FD6B8;
          v32[4] = v13;
          v15 = [(NSMutableArray *)navigationDocumentControllers indexOfObjectPassingTest:v32, v26, v27];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL || (tabBarItems = self->_tabBarItems, v30[0] = MEMORY[0x277D85DD0], v30[1] = 3221225472, v31[0] = __87__SKUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_2, v31[1] = &unk_2781FEC58, v31[2] = v13, v15 = [(NSArray *)tabBarItems indexOfObjectPassingTest:v30], v15 != 0x7FFFFFFFFFFFFFFFLL))
          {
            v17 = v15;
            v18 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v15];
            [(NSMutableArray *)v8 addObject:v18];

            v19 = [(NSArray *)self->_tabBarItems objectAtIndex:v17];
            [v29 addObject:v19];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v10);
    }

    v20 = self->_navigationDocumentControllers;
    self->_navigationDocumentControllers = v8;
    v21 = v8;

    v22 = [v29 copy];
    v23 = self->_tabBarItems;
    self->_tabBarItems = v22;

    [(IKAppContext *)self->_scriptContext evaluate:&__block_literal_global_282 completionBlock:0];
    v24 = [(SKUIApplicationController *)self delegate];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      [v24 applicationDidCustomizeTabBarItems:self];
    }

    v7 = v26;
  }
}

BOOL __87__SKUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CBEB68] null];
  if (v4 == v3)
  {
    v6 = 0;
  }

  else
  {
    v5 = [v3 navigationController];
    v6 = v5 == *(a1 + 32);
  }

  return v6;
}

BOOL __87__SKUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 customRootViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __87__SKUIApplicationController_tabBarController_didEndCustomizingViewControllers_changed___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendOnUpdate];
}

- (void)tabBarController:(id)a3 didReselectViewController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11 = [(SKUIApplicationController *)self delegate];
  v8 = [v7 allViewControllers];

  v9 = [v8 indexOfObjectIdenticalTo:v6];
  if (v9 < [(NSArray *)self->_tabBarItems count]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = [(NSArray *)self->_tabBarItems objectAtIndex:v9];
    [v11 application:self didReselectTabBarItem:v10];
  }
}

- (void)tabBarController:(id)a3 didSelectViewController:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [v24 allViewControllers];
  v8 = [v7 indexOfObjectIdenticalTo:v6];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  v9 = v8;
  v10 = SKUITabBarControllerGetMoreNavigationController(v24);
  if (v10 && (v11 = [v7 indexOfObjectIdenticalTo:v10], v9 >= v11))
  {
    if (v9 <= v11)
    {
      goto LABEL_8;
    }

    v12 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v9 - 1];
    v23 = [MEMORY[0x277CBEB68] null];

    if (v12 != v23)
    {
      v14 = v12;
      v15 = v10;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:v9];
    v13 = [MEMORY[0x277CBEB68] null];

    if (v12 != v13)
    {
      v14 = v12;
      v15 = 0;
LABEL_6:
      [v14 setMoreNavigationController:v15];
    }
  }

LABEL_8:
  [(SKUIApplicationController *)self _dispatchTabBarOnSelect];
  [(SKUIApplicationController *)self _tintTabBarWithViewController:v6];
  v16 = [(SKUIApplicationController *)self _overlayNavigationControllerForViewController:v6];
  if (!v16)
  {
    v16 = [v6 navigationController];
  }

  if ([(SKUIApplicationController *)self _needsStatusOverlay])
  {
    v17 = [v16 topViewController];
    [(SKUIApplicationController *)self _showStatusOverlayForNavigationController:v16 viewController:v17 animated:0];
  }

  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1 && v16)
  {
    v18 = [(SKUIApplicationController *)self rootViewController];
    v19 = [v18 view];

    [v19 bounds];
    if (v20 > SKUICompactThreshold())
    {
      [(SKUIModalDocumentController *)self->_modalDocumentController presentOverlayViewControllersFromNavigationController:v16];

      v16 = 0;
    }

    [(SKUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:v16 withTransitionCoordinator:0];
  }

  v21 = [(SKUIApplicationController *)self delegate];
  if (v9 < [(NSArray *)self->_tabBarItems count]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v22 = [(NSArray *)self->_tabBarItems objectAtIndex:v9];
    [v21 application:self didSelectTabBarItem:v22];
  }

LABEL_21:
}

- (BOOL)tabBarController:(id)a3 shouldFallbackToRootForController:(id)a4
{
  v4 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 topViewController];

    v4 = v5;
  }

  v6 = [v4 isEditing];

  return v6 ^ 1;
}

- (BOOL)tabBarController:(id)a3 shouldSelectViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v6 containsTransientViewControllerOnly])
  {
    v8 = 0;
  }

  else
  {
    scriptLoadState = self->_scriptLoadState;
    if (scriptLoadState == 1)
    {
      [(SKUIApplicationController *)self _retryAfterFailure];
    }

    else if (scriptLoadState == 4)
    {
      [(SKUIApplicationController *)self _recordTabBarMetricsEventToSelectViewController:v7];
    }

    [(SKUIApplicationController *)self setUserInterfaceOverrideOnTabBarController:v6 forViewController:v7];
    v8 = 1;
  }

  return v8;
}

- (void)setUserInterfaceOverrideOnTabBarController:(id)a3 forViewController:(id)a4
{
  v6 = a4;
  v11 = a3;
  v7 = [v11 viewControllers];
  v8 = [v7 indexOfObjectIdenticalTo:v6];

  if (v8 >= [(NSArray *)self->_tabBarItems count])
  {
    v10 = 0;
  }

  else
  {
    v9 = [(NSArray *)self->_tabBarItems objectAtIndex:v8];
    if ([v9 barTintStyle] == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = [v9 barTintStyle] == 0;
    }
  }

  [v11 setForcedUserInterfaceStyle:v10];
  [v11 setNeedsUserInterfaceAppearanceUpdate];
}

- (void)tabBarController:(id)a3 willTransitionToSize:(CGSize)a4 withTransitionCoordinator:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = a5;
  v11 = self->_floatingStatusOverlayViewController != 0;
  v12 = [(SKUIApplicationController *)self _usesFloatingStatusOverlayForWidth:width];
  if ([(SKUIApplicationController *)self _needsStatusOverlay]&& !v12)
  {
    SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v9, 0, [v10 isAnimated]);
    floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
    self->_floatingStatusOverlayViewController = 0;
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __93__SKUIApplicationController_tabBarController_willTransitionToSize_withTransitionCoordinator___block_invoke;
  v39[3] = &unk_2781FECA0;
  v39[4] = self;
  v42 = width;
  v43 = height;
  v44 = v11;
  v45 = v12;
  v14 = v9;
  v40 = v14;
  v15 = v10;
  v41 = v15;
  [v15 animateAlongsideTransition:0 completion:v39];
  v16 = [(SKUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v16 application:self willTransitionToSize:v15 withTransitionCoordinator:{width, height}];
  }

  v17 = [v14 selectedViewController];
  v18 = [(SKUIApplicationController *)self clientContext];
  v19 = [(SKUIApplicationController *)self rootViewController];
  v20 = [v19 view];
  [v20 bounds];
  v22 = [v18 tabBarStyleForWidth:v21];

  v23 = [(SKUIApplicationController *)self clientContext];
  v24 = [v23 tabBarStyleForWidth:width];

  v25 = v24 == 0;
  v26 = v22 == 0;
  v38 = v16;
  if ([v17 conformsToProtocol:&unk_2829AECD8])
  {
    v25 = [v17 documentViewControllerIsCompactForWidth:width];
    v27 = [(SKUIApplicationController *)self rootViewController];
    v28 = [v27 view];
    [v28 bounds];
    v26 = [v17 documentViewControllerIsCompactForWidth:v29];
  }

  v30 = [v17 presentedViewController];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (((v22 == v24) & ((v26 ^ v25) ^ 1)) == 0 && (isKindOfClass & 1) == 0)
  {
    v32 = [(SKUIApplicationController *)self delegate];
    v33 = objc_opt_respondsToSelector();

    if ((v33 & 1) == 0 || (-[SKUIApplicationController delegate](self, "delegate"), v34 = objc_claimAutoreleasedReturnValue(), v35 = [v34 application:self shouldDismissPopoverOnTraitCollectionChange:v30], v34, v35))
    {
      if (v30 && [v30 modalPresentationStyle] == 7)
      {
        [v30 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }

  v36 = [(SKUIApplicationController *)self _overlayNavigationControllerForViewController:v17];
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1 && v36)
  {
    if (width <= SKUICompactThreshold())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    [(SKUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:v37 withTransitionCoordinator:v15];
  }
}

uint64_t __93__SKUIApplicationController_tabBarController_willTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) sendApplicationWindowSizeDidUpdate:{*(a1 + 56), *(a1 + 64)}];
  result = [*(a1 + 32) _needsStatusOverlay];
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 73);
  if (*(a1 + 72) == v3)
  {
    return result;
  }

  v4 = *(a1 + 32);
  if (v3)
  {
    [v4 _removeStatusOverlayFromAllNavigationControllers];
    v5 = [*(*(a1 + 32) + 264) navigationController];
    v18 = [SKUINavigationControllerAssistant existingAssistantForNavigationController:v5];

    [v18 setStatusOverlayProvider:0];
    v6 = [*(a1 + 40) allViewControllers];
    v7 = [v6 count];
    v8 = [*(a1 + 40) viewControllers];
    v9 = [v8 count];

    if (v7 > v9)
    {
      v10 = SKUITabBarControllerGetMoreNavigationController(*(a1 + 40));
      v11 = [SKUINavigationControllerAssistant existingAssistantForNavigationController:v10];
      [v11 setStatusOverlayProvider:0];
    }

    v12 = [*(a1 + 32) _showFloatingStatusOverlayAnimated:{objc_msgSend(*(a1 + 48), "isAnimated")}];
    goto LABEL_10;
  }

  v12 = [v4 _activeNavigationController];
  v13 = v12;
  if (v12)
  {
    v18 = v12;
    v14 = [SKUINavigationControllerAssistant assistantForNavigationController:v12 clientContext:*(*(a1 + 32) + 32)];
    v15 = *(a1 + 32);
    v16 = [v18 topViewController];
    v17 = [v15 _statusOverlayProviderForViewController:v16];
    [v14 setStatusOverlayProvider:v17];

LABEL_10:
    v13 = v18;
  }

  return MEMORY[0x2821F96F8](v12, v13);
}

- (unint64_t)tabBarControllerSupportedInterfaceOrientations:(id)a3
{
  v3 = a3;
  v4 = [v3 transientViewController];
  if (v4 || ([v3 selectedViewController], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [v4 supportedInterfaceOrientations];
  }

  else
  {
    v8 = [MEMORY[0x277D75418] currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 1)
    {
      v6 = 30;
    }

    else if (SKUIAllowsLandscapePhone())
    {
      v6 = 26;
    }

    else
    {
      v6 = 2;
    }
  }

  return v6;
}

- (void)_previewDocumentIsActiveChangeNotification:(id)a3
{
  v4 = a3;
  if (self->_previewDocumentController)
  {
    v12 = v4;
    v5 = [v4 object];
    previewDocumentController = self->_previewDocumentController;
    if (v5 == previewDocumentController)
    {
      v7 = [(SKUIPreviewDocumentController *)previewDocumentController isPreviewActive];

      v4 = v12;
      if (v7)
      {
        goto LABEL_8;
      }

      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [v12 name];
      [(SKUIPreviewDocumentController *)v5 removeObserver:self name:v8 object:self->_previewDocumentController];

      v9 = self->_previewDocumentController;
      self->_previewDocumentController = 0;

      if (self->_floatingStatusOverlayViewController)
      {
        v10 = [(SKUIApplicationController *)self _existingTabBarController];
        SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v10, 0, 1);

        floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
        self->_floatingStatusOverlayViewController = 0;
      }

      [(SKUIPreviewDocumentController *)v5 postNotificationName:@"SKUIApplicationControllerPreviewOverlayDidChangeNotification" object:self userInfo:0];
    }

    v4 = v12;
  }

LABEL_8:
}

- (void)_reloadAfterNetworkChange:(id)a3
{
  v4 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__SKUIApplicationController__reloadAfterNetworkChange___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

void __55__SKUIApplicationController__reloadAfterNetworkChange___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 216) == 1)
  {
    v2 = [MEMORY[0x277D7FD00] sharedInstance];
    v3 = [v2 networkType];

    if (v3)
    {
      v4 = *(a1 + 32);

      [v4 _retryAfterFailure];
    }
  }
}

- (void)_removeStatusOverlayFromAllNavigationControllers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_navigationDocumentControllers;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CBEB68] null];

        if (v7 != v8)
        {
          v9 = [v7 navigationController];
          v10 = [SKUINavigationControllerAssistant existingAssistantForNavigationController:v9];

          [v10 setStatusOverlayProvider:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_storeFrontChangeNotification:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__SKUIApplicationController__storeFrontChangeNotification___block_invoke;
  block[3] = &unk_2781F80F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__SKUIApplicationController__storeFrontChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D69A80] currentDevice];
  v9 = [v2 storeFrontIdentifier];

  v3 = [*(*(a1 + 32) + 32) storeFrontIdentifier];
  v4 = *(a1 + 32);
  if (v4[4] && ([v4 _isStoreFront:v3 equalToStoreFront:v9] & 1) == 0)
  {
    v5 = [*(*(a1 + 32) + 208) appScriptFallbackHandler];
    [v5 invalidate];

    v6 = [MEMORY[0x277D7FD50] sharedCache];
    [v6 invalidateAllURLBags];

    v7 = [MEMORY[0x277D69A20] defaultStore];
    [v7 reloadAccounts];

    if ([*(a1 + 32) _isDisplayingAccountViewController])
    {
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 removeObserver:*(a1 + 32) name:@"SUAccountViewControllerDidDisappearNotification" object:0];
      [v8 addObserver:*(a1 + 32) selector:sel__resetUserInteraceForAccountViewDisappear_ name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    }

    else
    {
      [*(a1 + 32) _resetUserInterfaceAfterStoreFrontChange];
    }
  }
}

- (int64_t)_applicationMode
{
  scriptLoadState = self->_scriptLoadState;
  if (scriptLoadState == 4)
  {
    return 2;
  }

  else
  {
    return scriptLoadState == 3;
  }
}

- (void)_resetDocumentControllers
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_navigationDocumentControllers;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CBEB68] null];

        if (v8 != v9)
        {
          [v8 popAllDocuments];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(SKUINavigationDocumentController *)self->_transientNavigationDocument popAllDocuments];
  if ([(SKUIApplicationController *)self _applicationMode]== 2)
  {
    [(SKUIApplicationController *)self _reloadRootViewControllers];
  }
}

- (int64_t)_selectedTabBarIndex
{
  if (self->_hidesTabBar)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = [(SKUIApplicationController *)self _existingTabBarController];
  v4 = v3;
  if (v3)
  {
    v2 = [v3 selectedIndex];
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v2;
}

- (void)_setSelectedTabBarIndex:(int64_t)a3
{
  v8 = [(SKUIApplicationController *)self _existingTabBarController];
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(SKUIApplicationController *)self _transientNavigationDocument];
    v6 = [v5 navigationController];

    [v8 setTransientViewController:v6 animated:0];
    [(SKUIApplicationController *)self _tintTabBarWithViewController:v6];
  }

  else
  {
    [v8 setSelectedIndex:a3];
    v7 = [v8 selectedViewController];
    [(SKUIApplicationController *)self _tintTabBarWithViewController:v7];

    v6 = [v8 selectedViewController];
    [(SKUIApplicationController *)self _updateOverlayNavigationController:v6];
  }
}

- (void)_stopApplication
{
  if (self->_scriptContext && self->_scriptLoadState != 6)
  {
    v3 = [[_SKUIApplicationShutdownHelper alloc] initWithApplicationController:self];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = v3;

    [(_SKUIApplicationShutdownHelper *)self->_shutdownHelper start];
    self->_scriptLoadState = 6;
    scriptContext = self->_scriptContext;

    [(IKAppContext *)scriptContext stop];
  }
}

- (SKUINavigationDocumentController)_transientNavigationController
{
  if (self->_hidesTabBar)
  {
    [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  }

  else
  {
    [(SKUIApplicationController *)self _transientNavigationDocument];
  }
  v2 = ;

  return v2;
}

- (void)_updateOverlayNavigationController:(id)a3
{
  v12 = [(SKUIApplicationController *)self _overlayNavigationControllerForViewController:a3];
  v5 = SKUIUserInterfaceIdiom(self->_clientContext) == 1;
  v4 = v12;
  v5 = !v5 || v12 == 0;
  if (!v5)
  {
    v6 = [MEMORY[0x277D75128] sharedApplication];
    v7 = [v6 keyWindow];
    [v7 bounds];
    v9 = v8;
    v10 = SKUICompactThreshold();

    if (v9 <= v10)
    {
      v11 = v12;
    }

    else
    {
      v11 = 0;
    }

    [(SKUIModalDocumentController *)self->_modalDocumentController setOverlayNavigationController:v11 withTransitionCoordinator:0];
    v4 = v12;
  }
}

- (id)_activeNavigationController
{
  if (!self->_hidesTabBar)
  {
    v2 = [(SKUIApplicationController *)self _existingTabBarController];
    v4 = SKUITabBarControllerGetActiveNavigationController(v2);
    goto LABEL_5;
  }

  v2 = [(NSMutableArray *)self->_navigationDocumentControllers firstObject];
  v3 = [MEMORY[0x277CBEB68] null];

  if (v2 != v3)
  {
    v4 = [v2 navigationController];
LABEL_5:
    v5 = v4;
    goto LABEL_6;
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (void)_applicationDidEnterBackground:(id)a3
{
  [(SKUIClientContext *)self->_clientContext sendApplicationDidEnterBackground];
  if (self->_stopApplicationOnBackgroundNotification)
  {
    self->_stopApplicationOnBackgroundNotification = 0;
    [(SKUIApplicationController *)self _removeObserversForReloadNotifications];
    [(_SKUIApplicationShutdownHelper *)self->_shutdownHelper stop];
    v4 = [[_SKUIApplicationShutdownHelper alloc] initWithApplicationController:self];
    shutdownHelper = self->_shutdownHelper;
    self->_shutdownHelper = v4;

    [(_SKUIApplicationShutdownHelper *)self->_shutdownHelper start];
    v6 = objc_opt_class();
    NSLog(&cfstr_ReloadingAppOn.isa, v6);

    [(SKUIApplicationController *)self _stopScriptContextForReload];
  }
}

- (void)_applicationWillEnterForeground:(id)a3
{
  [(SKUIClientContext *)self->_clientContext sendApplicationWillEnterForeground];
  if (self->_reloadApplicationOnForegroundNotification)
  {
    self->_reloadApplicationOnForegroundNotification = 0;
    if (self->_scriptLoadState == 1)
    {

      [(SKUIApplicationController *)self _retryAfterFailure];
    }

    else
    {

      [(SKUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)_dispatchTabBarOnNeedsContentForTabAtIndex:(unint64_t)a3
{
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = v3;
    v16 = v4;
    if ([(NSArray *)self->_tabBarItems count]> a3)
    {
      v7 = [(NSArray *)self->_tabBarItems objectAtIndex:a3];
      v8 = [(NSMutableArray *)self->_navigationDocumentControllers objectAtIndex:a3];
      v9 = [MEMORY[0x277CBEB68] null];

      if (v8 == v9 || ([v8 documentStackItems], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
      {
        if (self->_scriptLoadState == 3)
        {
          scriptContext = self->_scriptContext;
          v13[0] = MEMORY[0x277D85DD0];
          v13[1] = 3221225472;
          v13[2] = __72__SKUIApplicationController__dispatchTabBarOnNeedsContentForTabAtIndex___block_invoke;
          v13[3] = &unk_2781FAE18;
          v14 = v7;
          [(IKAppContext *)scriptContext evaluate:v13 completionBlock:0];
          self->_indexOfLastTabNeedingContent = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          self->_indexOfLastTabNeedingContent = a3;
        }
      }
    }
  }
}

void __72__SKUIApplicationController__dispatchTabBarOnNeedsContentForTabAtIndex___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v3 toObjectOfClass:objc_opt_class()];

  [v4 sendOnNeedsContentForTabBarItem:*(a1 + 32)];
}

void __52__SKUIApplicationController__dispatchTabBarOnSelect__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v4 = [v2 toObjectOfClass:objc_opt_class()];

  v3 = [v4 invokeMethod:@"onSelect" withArguments:0];
}

- (id)_documentControllerForNavigationController:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_navigationDocumentControllers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v17 + 1) + 8 * v9);
      v11 = [MEMORY[0x277CBEB68] null];

      if (v10 != v11)
      {
        v12 = [v10 navigationController];

        if (v12 == v4)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v13 = v10;

    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
LABEL_10:
  }

  v14 = [(SKUIModalDocumentController *)self->_modalDocumentController navigationDocumentForNavigationController:v4, v17];
  if (v14)
  {
    goto LABEL_13;
  }

  v15 = [(SKUINavigationDocumentController *)self->_transientNavigationDocument navigationController];

  if (v15 == v4)
  {
    v14 = self->_transientNavigationDocument;
LABEL_13:
    v13 = v14;
    goto LABEL_16;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

- (void)_ensureStackConsistencyForNavigationController:(id)a3
{
  v7 = a3;
  self->_lastNavigationControllerOperation = [v7 lastOperation];
  v4 = [(SKUIApplicationController *)self _documentControllerForNavigationController:v7];
  [v4 ensureStackConsistencyForNavigationControllerOperation:self->_lastNavigationControllerOperation operationDidComplete:0];
  if (self->_lastNavigationControllerOperation == 2)
  {
    v5 = [v7 disappearingViewController];
  }

  else
  {
    v5 = 0;
  }

  lastPoppedViewController = self->_lastPoppedViewController;
  self->_lastPoppedViewController = v5;
}

- (id)_existingTabBarController
{
  v3 = [(SKUIApplicationControllerOptions *)self->_options tabBarControllerStyle];
  if (!v3)
  {
    v4 = 248;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = 304;
LABEL_5:
    v5 = *(&self->super.isa + v4);
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (void)_failReloadWithError:(id)a3
{
  v6 = a3;
  v4 = [(objc_class *)self->_clientContextClass _fallbackConfigurationDictionary];
  if (v4)
  {
    v5 = objc_opt_class();
    NSLog(&cfstr_DidFailLoading.isa, v5, v6);
    [(SKUIApplicationController *)self _setClientContextWithDictionary:v4];
  }

  else
  {
    [(SKUIApplicationController *)self _failWithError:v6];
  }
}

- (void)_failWithError:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  NSLog(&cfstr_DidFailWithErr.isa, v5, v4);
  self->_scriptLoadState = 1;
  if (([(IKAppContext *)self->_scriptContext isValid]& 1) == 0)
  {
    scriptContext = self->_scriptContext;
    self->_scriptContext = 0;
  }

  [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_321];
  if (ISErrorIsEqual())
  {
    v7 = [MEMORY[0x277CBAB70] sharedURLCache];
    [v7 removeAllCachedResponses];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    v10 = objc_loadWeakRetained(&self->_delegate);
    [v10 application:self didFailToLoadWithError:v4];
  }

  if (!self->_clientContext)
  {
    v11 = [(NSMutableArray *)self->_navigationDocumentControllers count];
    tabBarItems = self->_tabBarItems;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__SKUIApplicationController__failWithError___block_invoke_2;
    v16[3] = &unk_2781FECC8;
    v16[4] = self;
    v16[5] = v11;
    [(NSArray *)tabBarItems enumerateObjectsUsingBlock:v16];
  }

  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  v14 = *MEMORY[0x277D7FCC0];
  v15 = [MEMORY[0x277D7FD00] sharedInstance];
  [v13 addObserver:self selector:sel__reloadAfterNetworkChange_ name:v14 object:v15];

  self->_reloadApplicationOnForegroundNotification = 1;
}

void __44__SKUIApplicationController__failWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setLaunchFailureTime:?];
}

void __44__SKUIApplicationController__failWithError___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) > a3)
  {
    v16 = v5;
    v6 = SKUIErrorDocumentTitle(*(*(a1 + 32) + 32));
    v7 = [v16 barTintStyle] == 1;
    v8 = [*(*(a1 + 32) + 160) objectAtIndex:a3];
    v9 = [MEMORY[0x277CBEB68] null];

    if (v8 != v9)
    {
      v10 = [v8 navigationController];
      v11 = [v10 viewControllers];
      v12 = [v11 count];

      if (!v12)
      {
        if (![v16 alwaysCreatesRootViewController] || (v13 = objc_msgSend(objc_alloc(objc_msgSend(v16, "rootViewControllerClass")), "initWithTabBarItem:", v16)) == 0)
        {
          v14 = objc_alloc(MEMORY[0x277D75E78]);
          v15 = [v14 initWithFrame:v6 title:v7 style:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
          v13 = objc_alloc_init(MEMORY[0x277D75D28]);
          [v13 setView:v15];
        }

        [v10 pushViewController:v13 animated:0];
      }
    }

    v5 = v16;
  }
}

- (void)_finishWillResignActiveWithDialogState:(BOOL)a3
{
  v3 = *MEMORY[0x277D767B0];
  if (self->_resignActiveTaskID != *MEMORY[0x277D767B0])
  {
    v4 = a3;
    v7 = [MEMORY[0x277D75128] sharedApplication];
    if ([v7 applicationState])
    {
      if (v4)
      {
        self->_ignoreDidBecomeActive = 1;
      }

      else
      {
        activationURL = self->_activationURL;
        self->_activationURL = 0;

        self->_ignoreDidBecomeActive = 0;
        [(SKUIClientContext *)self->_clientContext setPurchaseReferrerURL:0];
        [(SKUIApplicationController *)self suspendApplicationWithOptions:0];
      }
    }

    [v7 endBackgroundTask:self->_resignActiveTaskID];
    self->_resignActiveTaskID = v3;
  }
}

- (void)_fireBlocksAfterLoad
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_whenLoadedBlocks copy];
  whenLoadedBlocks = self->_whenLoadedBlocks;
  self->_whenLoadedBlocks = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        (*(v10 + 16))(v10);
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (CGSize)sizeForNavigationDocument:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 navigationControllerDelegate];
    if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v6 = [v5 navigationController];
LABEL_8:
      v8 = v6;
      goto LABEL_14;
    }

    v8 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v4 modalDocumentController];
    v5 = [v7 _overlayNavigationController];

    if (v5)
    {
      v6 = v5;
      v5 = v6;
      goto LABEL_8;
    }

    v9 = [v4 modalDocumentController];
    v10 = [v9 _overlayViewController];

    if (v10)
    {
      v8 = [(SKUIApplicationController *)self tabBarController];
    }

    else
    {
      v8 = 0;
    }

LABEL_14:
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [(SKUIApplicationController *)self tabBarController];
LABEL_16:
  v22 = 0;
  v23 = &v22;
  v24 = 0x3010000000;
  v25 = &unk_215F8ACD7;
  v26 = *MEMORY[0x277CBF3A8];
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v11 = [v8 view];
    [v11 bounds];
    v12 = v23;
    v23[4] = v13;
    v12[5] = v14;
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__SKUIApplicationController_sizeForNavigationDocument___block_invoke;
    v19[3] = &unk_2781F8608;
    v21 = &v22;
    v20 = v8;
    dispatch_sync(MEMORY[0x277D85CD0], v19);
    v11 = v20;
  }

  v15 = *(v23 + 4);
  v16 = *(v23 + 5);
  _Block_object_dispose(&v22, 8);

  v17 = v15;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

void __55__SKUIApplicationController_sizeForNavigationDocument___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) view];
  [v5 bounds];
  v2 = *(*(a1 + 40) + 8);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
}

- (void)_handleScriptUnavailable
{
  self->_scriptLoadState = 4;
  [(SKUIApplicationController *)self _reloadRootViewControllers];

  [(SKUIApplicationController *)self _fireBlocksAfterLoad];
}

- (void)_invalidateApplication
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:0x282808428 object:0];
  [v3 removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
  [(SKUIClientContext *)self->_clientContext _setApplicationController:0];
  [(SKUIClientContext *)self->_clientContext _setScriptAppContext:0];
  clientContext = self->_clientContext;
  self->_clientContext = 0;

  self->_didDisplayFirstPage = 0;
  scriptContext = self->_scriptContext;
  self->_scriptContext = 0;

  self->_scriptLoadState = 0;
  v6 = [(SKUIApplicationController *)self _existingTabBarController];
  SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v6, 0, 0);
  previewDocumentController = self->_previewDocumentController;
  self->_previewDocumentController = 0;

  floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
  self->_floatingStatusOverlayViewController = 0;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_navigationDocumentControllers;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CBEB68] null];

        if (v14 != v15)
        {
          [v14 setDelegate:0];
          [v14 popAllDocuments];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = 0;

  [(SKUIModalDocumentController *)self->_modalDocumentController setModalSourceViewProvider:0];
  [(SKUIModalDocumentController *)self->_modalDocumentController setNavigationControllerDelegate:0];
  [(SKUIModalDocumentController *)self->_modalDocumentController popAllDocuments];
  [(SKUIModalDocumentController *)self->_modalDocumentController setDelegate:0];
  modalDocumentController = self->_modalDocumentController;
  self->_modalDocumentController = 0;

  [(SKUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:0];
  transientNavigationDocument = self->_transientNavigationDocument;
  self->_transientNavigationDocument = 0;

  [(SKUISimpleContainerViewController *)self->_navigationContainerViewController setContentViewController:0];
  [v6 setTransientViewController:0 animated:0];
  [v6 setViewControllers:0];
}

- (BOOL)_isDisplayingAccountViewController
{
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(SKUIApplicationController *)self rootViewController];
  v5 = [v4 presentedViewController];
  v6 = [v3 initWithObjects:{v5, 0}];

  v7 = [v6 count];
  v8 = v7 != 0;
  if (v7)
  {
    while (1)
    {
      v9 = [v6 objectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v10 = [v9 childViewControllers];
      if ([v10 count])
      {
        [v6 addObjectsFromArray:v10];
      }

      v11 = [v9 presentedViewController];
      if (v11 && ([v10 containsObject:v11] & 1) == 0)
      {
        [v6 addObject:v11];
      }

      [v6 removeObjectAtIndex:0];
      v12 = [v6 count];
      v8 = v12 != 0;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    [v6 removeObjectAtIndex:0];
  }

LABEL_11:

  return v8;
}

- (BOOL)_isStoreFront:(id)a3 equalToStoreFront:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 rangeOfString:@" "];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 substringToIndex:v7];

    v5 = v8;
  }

  v9 = [v6 rangeOfString:@" "];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [v6 substringToIndex:v9];

    v6 = v10;
  }

  v11 = [v5 isEqualToString:v6];

  return v11;
}

- (id)_launchOptionsWithURL:(id)a3
{
  v4 = a3;
  v5 = [v4 underlyingURL];
  v6 = [v5 absoluteString];

  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v6, @"url", 0}];
  v8 = [v4 referrerApplicationName];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    v21 = v9;
    v10 = [objc_opt_class() _referrerAppForSourceApplication:v8 launchURL:&v21];
    v11 = v21;

    v12 = [v11 absoluteString];

    [v7 setObject:v12 forKey:@"url"];
    [v7 setObject:v10 forKey:@"refApp"];
  }

  v13 = [v4 referrerURLString];

  if (v13)
  {
    [v7 setObject:v13 forKey:@"refUrl"];
  }

  v14 = MEMORY[0x277CBEAC0];
  v15 = [(SKUIApplicationController *)self rootViewController];
  v16 = [v15 view];
  [v16 bounds];
  v19 = [v14 sk_dictionaryWithSize:{v17, v18}];
  [v7 setObject:v19 forKey:@"windowSize"];

  return v7;
}

- (void)_legacyResolveExternalURL:(id)a3
{
  urlResolver = self->_urlResolver;
  v10 = a3;
  [(SKUIURLResolver *)urlResolver setDelegate:0];
  [(SKUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:0];
  v5 = self->_urlResolver;
  self->_urlResolver = 0;

  v6 = [[SKUIURLResolver alloc] initWithClientContext:self->_clientContext];
  v7 = self->_urlResolver;
  self->_urlResolver = v6;

  [(SKUIURLResolver *)self->_urlResolver setDelegate:self];
  [(SKUIURLResolver *)self->_urlResolver setNavigationControllerDelegate:self];
  v8 = self->_urlResolver;
  v9 = [(SKUIApplicationController *)self _operationQueue];
  [(SKUIURLResolver *)v8 setOperationQueue:v9];

  [(SKUIURLResolver *)self->_urlResolver resolveURL:v10];
}

- (void)_loadApplicationScript
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_LoadApplicatio_0.isa, v4);

  self->_scriptLoadState = 2;
  v5 = [(SKUIApplicationController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 bootstrapScriptURLForApplication:self];
    if (v6)
    {
      v7 = v6;
      [(SKUIApplicationController *)self _startScriptContextWithURL:v6];
LABEL_10:

      goto LABEL_11;
    }
  }

  v8 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [v8 stringForKey:@"SKUIITMLURL"];

  if (v7)
  {
LABEL_7:
    if ([v7 length])
    {
      v10 = [MEMORY[0x277CBEBC0] URLWithString:v7];
      [(SKUIApplicationController *)self _startScriptContextWithURL:v10];
    }

    else
    {
      [(SKUIApplicationController *)self _handleScriptUnavailable];
    }

    goto LABEL_10;
  }

  v9 = [(SKUIClientContext *)self->_clientContext valueForConfigurationKey:@"appjs.v2"];
  if (v9)
  {
    v7 = v9;
    goto LABEL_7;
  }

  objc_initWeak(&location, self);
  v18 = [(SKUIClientContext *)self->_clientContext URLBag];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __51__SKUIApplicationController__loadApplicationScript__block_invoke;
  v19[3] = &unk_2781FBDE0;
  objc_copyWeak(&v20, &location);
  [v18 loadValueForKey:@"itml-store" completionBlock:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
LABEL_11:
  v11 = [(NSDictionary *)self->_launchOptions valueForKey:@"url"];
  if (v11)
  {
    v12 = [(NSDictionary *)self->_launchOptions mutableCopy];
    v13 = [SKUIURL alloc];
    v14 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v11];
    v15 = [(SKUIURL *)v13 initWithURL:v14];

    v16 = [SKUIURLResolver tabIdentifierForURL:v15];
    if (v16)
    {
      [(NSDictionary *)v12 removeObjectForKey:@"url"];
      [(NSDictionary *)v12 setObject:v16 forKeyedSubscript:@"selectedTabId"];
    }

    else if ([(SKUIApplicationController *)self _shouldUseLegacyURLHandlingForExternalURL:v15])
    {
      [(NSDictionary *)v12 removeObjectForKey:@"url"];
      [(SKUIApplicationController *)self _legacyResolveExternalURL:v15];
      objc_storeStrong(&self->_legacyLaunchURL, v15);
    }

    launchOptions = self->_launchOptions;
    self->_launchOptions = v12;
  }
}

void __51__SKUIApplicationController__loadApplicationScript__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SKUIApplicationController__loadApplicationScript__block_invoke_2;
  block[3] = &unk_2781FA368;
  v10 = v5;
  v7 = v5;
  objc_copyWeak(&v12, (a1 + 32));
  v11 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __51__SKUIApplicationController__loadApplicationScript__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v2 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
    [WeakRetained _startScriptContextWithURL:v2];
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = objc_loadWeakRetained((a1 + 48));
    WeakRetained = v4;
    if (v3)
    {
      [v4 _failWithError:*(a1 + 40)];
    }

    else
    {
      [v4 _handleScriptUnavailable];
    }
  }
}

- (id)_navigationContainerViewController
{
  navigationContainerViewController = self->_navigationContainerViewController;
  if (!navigationContainerViewController)
  {
    v4 = objc_alloc_init(SKUISimpleContainerViewController);
    v5 = self->_navigationContainerViewController;
    self->_navigationContainerViewController = v4;

    navigationContainerViewController = self->_navigationContainerViewController;
  }

  return navigationContainerViewController;
}

- (id)_newNavigationControllerWithTabBarItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (v7 = objc_loadWeakRetained(&self->_delegate), [v7 application:self navigationControllerWithTabBarItem:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v9 = 0x277D7FE28;
    if (self->_scriptLoadState != 4)
    {
      v9 = 0x277D757A0;
    }

    v8 = objc_alloc_init(*v9);
    if ([v4 barTintStyle] == 1)
    {
      v10 = [v8 navigationBar];
      [v10 setBarStyle:1];
    }
  }

  [v8 setDelegate:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v8 section];

    if (!v11)
    {
      v12 = [(SKUIClientContext *)self->_clientContext clientInterface];
      [v8 setClientInterface:v12];
      v13 = [objc_alloc(MEMORY[0x277D7FE78]) initWithClientInterface:v12 sectionType:0 defaultPNGStyle:0];
      if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
      {
        v14 = [MEMORY[0x277D7FE70] defaultConfigurationWithClientInterface:v12];
        [v13 setSearchFieldConfiguration:v14];
      }

      [v8 setSection:v13];
    }
  }

  if (self->_clientContext && (self->_scriptLoadState == 4 || [v4 alwaysCreatesRootViewController]) && (v15 = objc_msgSend(objc_alloc(objc_msgSend(v4, "rootViewControllerClass")), "initWithTabBarItem:", v4)) != 0)
  {
    v16 = v15;
    if (objc_opt_respondsToSelector())
    {
      [v16 setClientContext:self->_clientContext];
    }

    [v8 pushViewController:v16 animated:0];
  }

  else
  {
    v16 = [v8 view];
    v17 = [MEMORY[0x277D75348] systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v4 underlyingTabBarItem];
  [v8 setTabBarItem:v18];

  return v8;
}

- (id)_operationQueue
{
  operationQueue = self->_operationQueue;
  if (!operationQueue)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = self->_operationQueue;
    self->_operationQueue = v4;

    [(NSOperationQueue *)self->_operationQueue setName:@"com.apple.StoreKitUI.SKUIApplicationController"];
    operationQueue = self->_operationQueue;
  }

  return operationQueue;
}

- (id)_overlayNavigationControllerForViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  if ([v3 conformsToProtocol:&unk_2829AECD8])
  {
    v4 = [v3 overlayNavigationController];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (BOOL)_playPreviewForPreviewTemplate:(id)a3
{
  v3 = a3;
  v4 = [v3 previewURLString];
  if (v4)
  {
    v5 = [MEMORY[0x277D7FDA8] sessionManager];
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v4];
    v7 = [v5 audioPlayerForURL:v6];
    v8 = v7;
    if (v7)
    {
      [v7 play];
    }

    else
    {
      v9 = [v5 stopAllAudioPlayerSessions];
      v10 = [v5 startSessionWithURL:v6];
      [v10 setStoreItemIdentifier:{objc_msgSend(v3, "itemIdentifier")}];
      [v10 play];
    }
  }

  return v4 != 0;
}

- (void)_recordTabBarMetricsEventToSelectViewController:(id)a3
{
  v15 = a3;
  v4 = [(SKUIApplicationController *)self _existingTabBarController];
  v5 = [v4 selectedIndex];
  v6 = [v4 viewControllers];
  if (v5 >= [v6 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v6 objectAtIndex:v5];
  }

  v8 = [v6 indexOfObjectIdenticalTo:v15];
  if (v8 < [(NSArray *)self->_tabBarItems count])
  {
    v9 = objc_alloc_init(MEMORY[0x277D69B68]);
    [v9 setTargetType:*MEMORY[0x277D6A4E8]];
    v10 = [(NSArray *)self->_tabBarItems objectAtIndex:v8];
    v11 = [v10 metricsIdentifier];
    [v9 setTargetIdentifier:v11];

    if (!v7)
    {
      goto LABEL_16;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v7 activeMetricsController];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v7 topViewController];
        if (objc_opt_respondsToSelector())
        {
          v12 = [v13 activeMetricsController];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = [(SKUIClientContext *)self->_clientContext metricsPageContextForViewController:v7];
    [v9 setPageContext:v14];

    if (v12)
    {
      [v12 recordEvent:v9];
    }

    else
    {
LABEL_16:
      [(SKUIApplicationController *)self recordMetricsEvent:v9 flushImmediately:0];
    }
  }
}

- (void)_reloadApplication
{
  [(SKUIApplicationController *)self _removeObserversForReloadNotifications];
  [(SKUIApplicationController *)self _invalidateApplication];
  [(SKUIApplicationController *)self loadApplication];

  [(SKUIApplicationController *)self _sendClientContextDidChange];
}

- (void)_reloadRootViewControllers
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  NSLog(&cfstr_ReloadRootView.isa, v4, self->_clientContext);

  v48 = [(NSMutableArray *)self->_navigationDocumentControllers copy];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  navigationDocumentControllers = self->_navigationDocumentControllers;
  self->_navigationDocumentControllers = v5;

  v7 = [(SKUIApplicationController *)self clientContext];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = self->_tabBarItems;
  v9 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    v12 = &selRef_performCommitTransitionForPreviewViewController_completion_;
    do
    {
      v13 = 0;
      v49 = v10;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v56 + 1) + 8 * v13);
        v15 = [v14 customRootViewController];

        if (v15)
        {
          v16 = [v14 customRootViewController];
          if ([v16 conformsToProtocol:v12[252]])
          {
            v17 = [v16 appNavigationController];
            [v17 setClientContext:v7];
            [v17 setDelegate:self];
            v18 = self->_navigationDocumentControllers;
          }

          else
          {
            v21 = v11;
            v22 = v12;
            v23 = v8;
            v24 = v7;
            v25 = self->_navigationDocumentControllers;
            v17 = [MEMORY[0x277CBEB68] null];
            v18 = v25;
            v7 = v24;
            v8 = v23;
            v12 = v22;
            v11 = v21;
            v10 = v49;
          }

          [(NSMutableArray *)v18 addObject:v17];

          v19 = [v14 customRootViewController];
          v20 = v19;
        }

        else
        {
          v19 = [(SKUIApplicationController *)self _newNavigationControllerWithTabBarItem:v14];
          v20 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v19];
          [(SKUINavigationDocumentController *)v20 setClientContext:v7];
          [(SKUINavigationDocumentController *)v20 setDelegate:self];
          [(NSMutableArray *)self->_navigationDocumentControllers addObject:v20];
          [(SKUIApplicationController *)self _ensureStackConsistencyForNavigationController:v19];
          v16 = v19;
        }

        [v8 addObject:v19];

        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v60 count:16];
    }

    while (v10);
  }

  if (self->_hidesTabBar)
  {
    v26 = [(SKUIApplicationController *)self _navigationContainerViewController];
    v27 = [v8 firstObject];
    [v26 setContentViewController:v27];

    v28 = [(SKUIApplicationController *)self _existingTabBarController];
    [v28 setViewControllers:0 animated:0];
    v29 = v48;
  }

  else
  {
    v28 = [(SKUIApplicationController *)self _tabBarController];
    [(SKUISimpleContainerViewController *)self->_navigationContainerViewController setContentViewController:0];
    [v28 setViewControllers:v8 animated:0];
    v30 = SKUITabBarControllerGetMoreNavigationController(v28);
    [v30 setDelegate:self];
    v31 = [(NSDictionary *)self->_launchOptions objectForKey:@"url"];
    v29 = v48;
    if (v31)
    {
      v32 = [SKUIURL alloc];
      v33 = [MEMORY[0x277CBEBC0] URLWithString:v31];
      v34 = [(SKUIURL *)v32 initWithURL:v33];

      v35 = [SKUIURLResolver tabIdentifierForURL:v34];
      v36 = v35;
      if (v35)
      {
        v37 = v7;
        tabBarItems = self->_tabBarItems;
        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __55__SKUIApplicationController__reloadRootViewControllers__block_invoke;
        v54[3] = &unk_2781FEC58;
        v55 = v35;
        v39 = [(NSArray *)tabBarItems indexOfObjectPassingTest:v54];
        if (v39 < [v8 count])
        {
          v40 = [v8 objectAtIndex:v39];
          [v28 setSelectedViewController:v40];
        }

        v7 = v37;
      }
    }

    v41 = [v28 selectedViewController];
    [(SKUIApplicationController *)self _tintTabBarWithViewController:v41];
  }

  modalDocumentController = self->_modalDocumentController;
  v43 = [(SKUIApplicationController *)self rootViewController];
  [(SKUIModalDocumentController *)modalDocumentController setRootViewController:v43];

  v44 = [(SKUIApplicationController *)self tabBarController];
  v45 = [v44 selectedViewController];
  [(SKUIApplicationController *)self _updateOverlayNavigationController:v45];

  scriptContext = self->_scriptContext;
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __55__SKUIApplicationController__reloadRootViewControllers__block_invoke_3;
  v51[3] = &unk_2781FECF0;
  v52 = v29;
  v53 = self;
  v47 = v29;
  [(IKAppContext *)scriptContext evaluate:&__block_literal_global_366 completionBlock:v51];
}

uint64_t __55__SKUIApplicationController__reloadRootViewControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 tabIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __55__SKUIApplicationController__reloadRootViewControllers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"TabBar"];
  v3 = [v2 toObjectOfClass:objc_opt_class()];

  [v3 sendOnUpdate];
}

uint64_t __55__SKUIApplicationController__reloadRootViewControllers__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) count];
  v2 = *(a1 + 40);

  return [v2 _dispatchTabBarOnSelect];
}

- (void)_reloadTabBarWithClientContext:(id)a3
{
  if (a3)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      v5 = a3;
      v7 = [(SKUIClientContext *)clientContext valueForConfigurationKey:@"tabs"];
      v6 = [v5 valueForConfigurationKey:@"tabs"];

      if (v6 && ([v7 isEqual:v6] & 1) == 0)
      {
        [(SKUIClientContext *)self->_clientContext _setValue:v6 forConfigurationKey:@"tabs"];
        [(SKUIApplicationController *)self _sendClientContextDidChange];
      }
    }
  }
}

- (void)_removeObserversForReloadNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D7FCC0] object:0];
}

- (void)_resetUserInterfaceAfterStoreFrontChange
{
  if ([(SKUIApplicationControllerOptions *)self->_options supportsFullApplicationReload])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:self name:@"SUAccountViewControllerDidDisappearNotification" object:0];
    scriptContext = self->_scriptContext;
    if (scriptContext)
    {
      [(IKAppContext *)scriptContext stop];
    }

    else
    {
      [(SKUIApplicationController *)self _reloadApplication];
    }
  }
}

- (void)_retryAfterFailure
{
  [(SKUIApplicationController *)self _removeObserversForReloadNotifications];
  if (self->_tabBarController)
  {
    v3 = [(SKUIApplicationController *)self _transientNavigationDocument];
    v4 = [v3 navigationController];

    [v4 setViewControllers:MEMORY[0x277CBEBF8] animated:0];
    v5 = [v4 view];
    [v5 layoutSubviews];

    [(SKUITabBarController *)self->_tabBarController setTransientViewController:0 animated:0];
  }

  launchOptions = self->_launchOptions;

  [(SKUIApplicationController *)self loadApplicationWithOptions:launchOptions];
}

- (void)_sendClientContextDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained applicationDidChangeClientContext:self];
  }
}

- (void)_sendDidDisplayFirstPageIfNecessary
{
  if (!self->_didDisplayFirstPage)
  {
    clientContext = self->_clientContext;
    v4 = [(SKUIApplicationController *)self rootViewController];
    v5 = [v4 view];
    [v5 bounds];
    [(SKUIClientContext *)clientContext sendApplicationWindowSizeDidUpdate:v6, v7];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    LOBYTE(v4) = objc_opt_respondsToSelector();

    if (v4)
    {
      v9 = objc_loadWeakRetained(&self->_delegate);
      [v9 applicationDidDisplayFirstPage:self];
    }

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:self name:@"SKUIApplicationPageDidDisplayNotification" object:0];

    self->_didDisplayFirstPage = 1;
  }
}

- (void)_setClientContextWithDictionary:(id)a3
{
  clientContextClass = self->_clientContextClass;
  v5 = a3;
  v6 = [[clientContextClass alloc] initWithConfigurationDictionary:v5];

  [(SKUIApplicationController *)self setClientContext:v6];
  [(SKUIModalDocumentController *)self->_modalDocumentController setClientContext:self->_clientContext];
  [(SKUINavigationDocumentController *)self->_transientNavigationDocument setClientContext:self->_clientContext];
  v7 = +[SKUINearMeController sharedController];
  [v7 setClientContext:self->_clientContext];

  v8 = +[SKUIFamilyCircleController sharedController];
  [v8 setClientContext:self->_clientContext];

  [(SKUIApplicationController *)self _reloadRootViewControllers];
  [(SKUIApplicationController *)self _sendClientContextDidChange];

  [(SKUIApplicationController *)self _loadApplicationScript];
}

- (BOOL)_shouldUseLegacyURLHandlingForExternalURL:(id)a3
{
  v4 = a3;
  v5 = [v4 actionString];
  v10 = ([v5 isEqualToString:@"account"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"donate") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"gift") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"redeem") & 1) != 0 || (objc_msgSend(v4, "underlyingURL"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, !v8) || (+[SKUIURLResolver tabIdentifierForURL:](SKUIURLResolver, "tabIdentifierForURL:", v4), v9 = objc_claimAutoreleasedReturnValue(), v9, v9) || self->_scriptLoadState == 4;

  return v10;
}

- (void)_attemptAMSURLHandlingIfPossibleForExternalURL:(id)a3 fallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [getAMSURLParserClass() bagSubProfile];
  v9 = [getAMSURLParserClass() bagSubProfileVersion];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v10 = getAMSBagClass_softClass;
  v26 = getAMSBagClass_softClass;
  if (!getAMSBagClass_softClass)
  {
    location[0] = MEMORY[0x277D85DD0];
    location[1] = 3221225472;
    location[2] = __getAMSBagClass_block_invoke;
    location[3] = &unk_2781FA3E0;
    location[4] = &v23;
    __getAMSBagClass_block_invoke(location);
    v10 = v24[3];
  }

  v11 = v10;
  _Block_object_dispose(&v23, 8);
  v12 = [v10 bagForProfile:v8 profileVersion:v9];
  v13 = [objc_alloc(getAMSURLParserClass()) initWithBag:v12];
  v14 = [v6 underlyingURL];
  v15 = [v13 typeForURL:v14];

  objc_initWeak(location, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__SKUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke;
  v18[3] = &unk_2781FED40;
  v16 = v7;
  v20 = v16;
  objc_copyWeak(&v21, location);
  v17 = v6;
  v19 = v17;
  [v15 addFinishBlock:v18];

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);
}

void __85__SKUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__SKUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke_2;
  block[3] = &unk_2781FED18;
  v10 = v6;
  v13 = a1[5];
  v11 = v5;
  v7 = v5;
  v8 = v6;
  objc_copyWeak(&v14, a1 + 6);
  v12 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v14);
}

void __85__SKUIApplicationController__attemptAMSURLHandlingIfPossibleForExternalURL_fallback___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32) || (v3 = *(a1 + 40), (v3 | 2) != 2))
  {
    v2 = *(*(a1 + 56) + 16);

    v2();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained[34] setDelegate:0];
    [WeakRetained[34] setNavigationControllerDelegate:0];
    v4 = WeakRetained[34];
    WeakRetained[34] = 0;

    v5 = [[SKUIURLResolver alloc] initWithClientContext:WeakRetained[4]];
    v6 = WeakRetained[34];
    WeakRetained[34] = v5;

    [WeakRetained[34] setDelegate:?];
    [WeakRetained[34] setNavigationControllerDelegate:?];
    v7 = WeakRetained[34];
    v8 = [WeakRetained _operationQueue];
    [v7 setOperationQueue:v8];

    [WeakRetained[34] amsResolveURL:*(a1 + 48) forURLType:v3];
  }
}

- (void)_showFloatingStatusOverlayAnimated:(BOOL)a3
{
  v3 = a3;
  if (!self->_floatingStatusOverlayViewController)
  {
    previewDocumentController = self->_previewDocumentController;
    if (!previewDocumentController)
    {
      previewDocumentController = self->_statusOverlayProvider;
    }

    v6 = previewDocumentController;
    v7 = [(SKUIApplicationController *)self _existingTabBarController];
    v8 = [v7 traitCollection];

    v9 = [v6 overlayViewControllerWithBackgroundStyle:{objc_msgSend(v8, "userInterfaceStyle") != 1}];
    floatingStatusOverlayViewController = self->_floatingStatusOverlayViewController;
    self->_floatingStatusOverlayViewController = v9;
  }

  v11 = [(SKUIApplicationController *)self _existingTabBarController];
  SKUITabBarControllerSetFloatingOverlayViewControllerAnimated(v11, self->_floatingStatusOverlayViewController, v3);
}

- (void)_showStatusOverlayForNavigationController:(id)a3 viewController:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [(SKUIApplicationController *)self rootViewController];
  v11 = [v10 view];

  [v11 bounds];
  if ([(SKUIApplicationController *)self _usesFloatingStatusOverlayForWidth:v12])
  {
    [(SKUIApplicationController *)self _showFloatingStatusOverlayAnimated:v5];
  }

  else if (v8)
  {
    v13 = [SKUINavigationControllerAssistant assistantForNavigationController:v8 clientContext:self->_clientContext];
    v14 = [v13 statusOverlayProvider];
    v15 = [v9 transitionCoordinator];
    v16 = [(SKUIApplicationController *)self _statusOverlayProviderForViewController:v9];
    [v13 setStatusOverlayProvider:v16 animated:v5];

    [v13 willShowViewController:v9 animated:v5];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __95__SKUIApplicationController__showStatusOverlayForNavigationController_viewController_animated___block_invoke;
    v19[3] = &unk_2781FB740;
    v20 = v13;
    v21 = v14;
    v17 = v14;
    v18 = v13;
    [v15 notifyWhenInteractionEndsUsingBlock:v19];
  }
}

void __95__SKUIApplicationController__showStatusOverlayForNavigationController_viewController_animated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isCancelled])
  {
    [*(a1 + 32) setStatusOverlayProvider:*(a1 + 40) animated:{objc_msgSend(v3, "isAnimated")}];
  }
}

- (void)_startScriptContextWithURL:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  NSLog(&cfstr_StartScriptWit.isa, v6, v4);

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
    v12 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
    }

    else
    {
      v14 = v13 & 2;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    LODWORD(v32) = 138412290;
    *(&v32 + 4) = v4;
    LODWORD(v31) = 12;
    goto LABEL_19;
  }

  if (self->_scriptContext)
  {
    v7 = [MEMORY[0x277D69B38] sharedConfig];
    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (!v11)
    {
      goto LABEL_21;
    }

    LODWORD(v32) = 138412290;
    *(&v32 + 4) = v4;
    LODWORD(v31) = 12;
LABEL_19:
    v15 = _os_log_send_and_compose_impl();

    if (!v15)
    {
LABEL_22:

      goto LABEL_23;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithCString:v15 encoding:{4, &v32, v31, v32}];
    free(v15);
    SSFileLog();
LABEL_21:

    goto LABEL_22;
  }

  SKUIInitializeDOMFeatureFactory();
  SKUIInitializeViewElementFactory();
  SKUIInitializeViewElementStyleFactory();
  v16 = [v4 copy];
  applicationScriptURL = self->_applicationScriptURL;
  self->_applicationScriptURL = v16;

  v18 = [(SKUIClientContext *)self->_clientContext URLBag];
  v19 = MEMORY[0x277D69C88];
  v20 = [v18 URLBagContext];
  [v19 setURLBag:v18 forContext:v20];

  v21 = [(SKUIApplicationControllerOptions *)self->_options requiresLocalBootstrapScript];
  v22 = [objc_alloc(MEMORY[0x277D1B028]) initWithApplication:self mode:v21 delegate:self];
  scriptContext = self->_scriptContext;
  self->_scriptContext = v22;

  [(IKAppContext *)self->_scriptContext setRemoteInspectionEnabled:1];
  [(IKAppContext *)self->_scriptContext setMescalPrimeEnabledForXHRRequests:self->_mescalPrimeEnabledForXHRRequests];
  v24 = self->_scriptContext;
  [(SKUIApplicationControllerOptions *)self->_options bootstrapScriptTimeoutInterval];
  [(IKAppContext *)v24 setAppScriptTimeoutInterval:?];
  [(SKUIClientContext *)self->_clientContext _setScriptAppContext:self->_scriptContext];
  if ([(SKUIApplicationControllerOptions *)self->_options isBootstrapScriptFallbackEnabled])
  {
    v25 = [(SKUIClientContext *)self->_clientContext storeFrontIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = [(SKUIClientContext *)self->_clientContext isBootstrapScriptFallbackDisabled];

      if (!v27)
      {
        v28 = [(SKUIClientContext *)self->_clientContext storeFrontIdentifier];
        v29 = [SKUIBootstrapScriptFallback cacheFilenameForStoreFrontIdentifier:v28];

        v30 = [[SKUIBootstrapScriptFallback alloc] initWithFilename:v29];
        [(SKUIApplicationControllerOptions *)self->_options bootstrapScriptFallbackMaximumAge];
        [(SKUIBootstrapScriptFallback *)v30 setMaximumAge:?];
        [(IKAppContext *)self->_scriptContext setAppScriptFallbackHandler:v30];
      }
    }
  }

  [(IKAppContext *)self->_scriptContext start];
  [SKUIMetricsAppLaunchEvent withPendingLaunchEvent:&__block_literal_global_379];

LABEL_23:
}

void __56__SKUIApplicationController__startScriptContextWithURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEAA8];
  v3 = a2;
  v4 = [v2 date];
  [v4 timeIntervalSince1970];
  [v3 setBootstrapStartTime:?];
}

- (void)_jsLaunchFinishedWithLaunchMetrics:(id)a3
{
  v4 = a3;
  v5 = +[SKUIMetricsAppLaunchEvent consumePendingLaunchEvent];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    [v5 setLaunchEndTime:?];

    v7 = [v4 objectForKeyedSubscript:@"jsResourcesStartTime"];
    if (v7)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v7];
      [v5 setJsResourcesStartTime:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"jsResourcesEndTime"];
    if (v8)
    {
      [SKUIMetricsUtilities timeIntervalFromJSTime:v8];
      [v5 setJsResourcesEndTime:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"initialTabMetrics"];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"requestStartTime"];
      if (v11)
      {
        [SKUIMetricsUtilities timeIntervalFromJSTime:v11];
        [v5 setInitialTabRequestStartTime:?];
      }

      v12 = [v10 objectForKeyedSubscript:@"responseStartTime"];
      if (v12)
      {
        [SKUIMetricsUtilities timeIntervalFromJSTime:v12];
        [v5 setInitialTabResponseStartTime:?];
      }

      v13 = [v10 objectForKeyedSubscript:@"responseEndTime"];
      if (v13)
      {
        [SKUIMetricsUtilities timeIntervalFromJSTime:v13];
        [v5 setInitialTabResponseEndTime:?];
      }
    }

    if (+[SKUIMetricsUtilities shouldLogTimingMetrics])
    {
      SSDebugLevel();
      SSDebugFileLevel();
      v16 = v5;
      SSDebugLog();
    }

    if (+[SKUIMetricsUtilities showEventNotifications])
    {
      v14 = +[SKUIStatusBarAlertCenter sharedCenter];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __64__SKUIApplicationController__jsLaunchFinishedWithLaunchMetrics___block_invoke;
      v17[3] = &unk_2781F80F0;
      v18 = v5;
      [v14 showMessage:@"App Launched" withStyle:0 forDuration:v17 actionBlock:0.0];
    }

    [(SKUIApplicationController *)self recordMetricsEvent:v5 flushImmediately:0];
  }

  else
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext getDefaultMetricsControllerWithCompletionBlock:&__block_literal_global_407];
    }
  }
}

- (id)_statusOverlayProviderForViewController:(id)a3
{
  v4 = a3;
  previewDocumentController = self->_previewDocumentController;
  if (previewDocumentController)
  {
    goto LABEL_2;
  }

  if (self->_statusOverlayProvider)
  {
    v8 = objc_opt_respondsToSelector();
    previewDocumentController = self->_statusOverlayProvider;
    if ((v8 & 1) == 0)
    {
LABEL_2:
      v6 = previewDocumentController;
      goto LABEL_3;
    }

    if ([previewDocumentController shouldShowStatusOverlayForViewController:v4])
    {
      previewDocumentController = self->_statusOverlayProvider;
      goto LABEL_2;
    }
  }

  v6 = 0;
LABEL_3:

  return v6;
}

- (void)_stopScriptContextForReload
{
  [(SKUIMetricsController *)self->_metricsController flushImmediately];
  v3 = [MEMORY[0x277D69A20] defaultStore];
  v4 = [v3 activeAccount];
  v10 = SSVStoreFrontIdentifierForAccount();

  if (v10)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v6 = [SKUIClientContext _cachePathForStoreFrontIdentifier:v10];
    [v5 removeItemAtPath:v6 error:0];
  }

  if ([MEMORY[0x277D7FD60] sharedCFURLCache])
  {
    CFURLCacheRemoveAllCachedResponses();
  }

  v7 = [MEMORY[0x277CBAB70] sharedURLCache];
  [v7 removeAllCachedResponses];

  v8 = [MEMORY[0x277D7FD50] sharedCache];
  [v8 invalidateAllURLBags];

  v9 = [(IKAppContext *)self->_scriptContext appScriptFallbackHandler];
  [v9 invalidate];

  self->_scriptLoadState = 5;
  [(IKAppContext *)self->_scriptContext stop];
}

- (id)_tabBarController
{
  v3 = [(SKUIApplicationControllerOptions *)self->_options tabBarControllerStyle];
  if (v3 == 1)
  {
    scrollingTabBarController = self->_scrollingTabBarController;
    if (!scrollingTabBarController)
    {
      p_scrollingTabBarController = &self->_scrollingTabBarController;
      v6 = [(SKUIApplicationController *)self _scrollingTabBarControllerClass];
      goto LABEL_7;
    }

LABEL_8:
    v9 = scrollingTabBarController;
    goto LABEL_10;
  }

  if (!v3)
  {
    p_scrollingTabBarController = &self->_tabBarController;
    scrollingTabBarController = self->_tabBarController;
    if (!scrollingTabBarController)
    {
      v6 = [(SKUIApplicationController *)self _tabBarControllerClass];
LABEL_7:
      v7 = objc_alloc_init(v6);
      v8 = *p_scrollingTabBarController;
      *p_scrollingTabBarController = v7;

      [*p_scrollingTabBarController setDelegate:self];
      scrollingTabBarController = *p_scrollingTabBarController;
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_tintTabBarWithViewController:(id)a3
{
  v4 = a3;
  v14 = [(SKUIApplicationController *)self _existingTabBarController];
  v5 = [v14 viewControllers];
  v6 = [v5 indexOfObjectIdenticalTo:v4];

  if (v6 >= [(NSArray *)self->_tabBarItems count])
  {
    v9 = 0;
    v10 = 0;
    v8 = 0;
  }

  else
  {
    v7 = [(NSArray *)self->_tabBarItems objectAtIndex:v6];
    if ([v7 barTintStyle] == 1)
    {
      v8 = 1;
      v9 = 2;
    }

    else
    {
      v11 = [v7 barTintStyle];
      v9 = v11 == 0;
      if (v11)
      {
        v8 = 0;
      }

      else
      {
        v8 = 3;
      }
    }

    v10 = [v7 userInterfaceTintColor];
  }

  [v14 setForcedUserInterfaceStyle:v9];
  [v14 setNeedsUserInterfaceAppearanceUpdate];
  v12 = [MEMORY[0x277D75128] sharedApplication];
  [v12 setStatusBarStyle:v8];

  v13 = [v14 tabBar];
  [v13 setTintColor:v10];
}

- (id)_transientNavigationDocument
{
  transientNavigationDocument = self->_transientNavigationDocument;
  if (!transientNavigationDocument)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0 || (v6 = objc_loadWeakRetained(&self->_delegate), [v6 application:self navigationControllerWithTabBarItem:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
    {
      v7 = objc_alloc_init(MEMORY[0x277D757A0]);
    }

    [v7 setDelegate:self];
    v8 = [[SKUINavigationDocumentController alloc] initWithNavigationController:v7];
    v9 = self->_transientNavigationDocument;
    self->_transientNavigationDocument = v8;

    v10 = self->_transientNavigationDocument;
    v11 = [(SKUIApplicationController *)self clientContext];
    [(SKUINavigationDocumentController *)v10 setClientContext:v11];

    [(SKUINavigationDocumentController *)self->_transientNavigationDocument setDelegate:self];
    transientNavigationDocument = self->_transientNavigationDocument;
  }

  return transientNavigationDocument;
}

- (BOOL)_usesFloatingStatusOverlayForWidth:(double)a3
{
  v4 = [(SKUIApplicationController *)self _existingTabBarController];
  v5 = (!v4 || (objc_opt_respondsToSelector() & 1) != 0) && 320.0 / a3 < 0.5;

  return v5;
}

- (id)_rootDocuments
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_navigationDocumentControllers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [MEMORY[0x277CBEB68] null];

        if (v9 != v10)
        {
          v11 = [v9 documents];
          v12 = [v11 count];

          if (v12)
          {
            v13 = [v9 documents];
            v14 = [v13 firstObject];

            if (v14)
            {
              [v3 addObject:v14];
            }
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v3;
}

- (SKUIApplicationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end