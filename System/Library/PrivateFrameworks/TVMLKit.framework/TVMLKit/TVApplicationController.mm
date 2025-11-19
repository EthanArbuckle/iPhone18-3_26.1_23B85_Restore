@interface TVApplicationController
+ (id)_applicationControllerForElement:(id)a3;
+ (id)_jsLaunchOptionsWithApplicationOptions:(id)a3;
+ (void)initialize;
- (BOOL)_hasReloadOnResumeMinIntervalPassed;
- (BOOL)_shouldReloadOnResume;
- (BOOL)appContext:(id)a3 highlightViewForElement:(id)a4 contentColor:(id)a5 paddingColor:(id)a6 borderColor:(id)a7 marginColor:(id)a8;
- (BOOL)appNavigationController:(id)a3 shouldDismissShroudForDocument:(id)a4;
- (BOOL)appNavigationController:(id)a3 shouldIgnoreDismissalForViewController:(id)a4;
- (BOOL)appNavigationController:(id)a3 shouldOverrideModalBehaviorForDocument:(id)a4 andExistingDocument:(id)a5;
- (BOOL)isTimeZoneSet;
- (BOOL)jsOpenURL:(id)a3 options:(id)a4;
- (BOOL)openURL:(id)a3 options:(id)a4;
- (CGSize)screenSize;
- (TVApplicationController)init;
- (TVApplicationController)initWithContext:(id)a3 window:(id)a4 delegate:(id)a5;
- (TVApplicationControllerDelegate)delegate;
- (UITraitEnvironment)keyTraitEnvironment;
- (UIView)viewServiceKeyView;
- (id)_rootViewController;
- (id)navigationControllerForContext:(id)a3;
- (id)systemLanguage;
- (id)tabBarForContext:(id)a3;
- (id)timeZone;
- (unint64_t)preferredVideoFormat;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_launchApp;
- (void)_openURLControllerHandler:(BOOL)a3;
- (void)_openURLIfPossibleWithOptions:(id)a3;
- (void)_reloadControllerDidDisplay:(id)a3;
- (void)_resetControllerNotifications;
- (void)_rootControllerDidDisplay:(id)a3;
- (void)_statusBarOrientationDidChange:(id)a3;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 didStartWithOptions:(id)a4;
- (void)appContext:(id)a3 didStopWithOptions:(id)a4;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5;
- (void)appContext:(id)a3 openDynamicUIURL:(id)a4 metricsOverlay:(id)a5 completion:(id)a6;
- (void)appContext:(id)a3 openMarketingItem:(id)a4 metricsOverlay:(id)a5 completion:(id)a6;
- (void)applicationDidResume:(id)a3;
- (void)applicationWillSuspend:(id)a3;
- (void)dealloc;
- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5;
- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5;
- (void)evaluateInJavaScriptContext:(id)a3 completion:(id)a4;
- (void)setKeyTraitEnvironment:(id)a3;
- (void)stop;
@end

@implementation TVApplicationController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _TVSetupLoggingObjects();
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

+ (id)_jsLaunchOptionsWithApplicationOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 count])
  {
    v5 = [v3 mutableCopy];
    v6 = *MEMORY[0x277D76698];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76698]];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 absoluteString];
      [v4 setObject:v9 forKeyedSubscript:@"openURL"];

      v10 = *MEMORY[0x277D76690];
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76690]];
      if (v11)
      {
        [v4 setObject:v11 forKeyedSubscript:@"sourceAppIdentifier"];
      }
    }

    else
    {
      v10 = *MEMORY[0x277D76690];
    }

    [v4 addEntriesFromDictionary:v5];
    [v4 removeObjectForKey:v6];
    [v4 removeObjectForKey:v10];
    [v4 removeObjectForKey:*MEMORY[0x277D76678]];
    v12 = [v4 objectForKeyedSubscript:@"sourceAppIdentifier"];
    if (([v12 isEqualToString:@"com.apple.PineBoard"] & 1) != 0 || (objc_msgSend(v12, "isEqualToString:", @"com.apple.HeadBoard") & 1) != 0 || objc_msgSend(v12, "isEqualToString:", @"com.apple.SpringBoard"))
    {
      [v4 removeObjectForKey:@"sourceAppIdentifier"];
    }
  }

  v13 = [v4 copy];

  return v13;
}

- (TVApplicationController)init
{
  [(TVApplicationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TVApplicationController)initWithContext:(id)a3 window:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v67.receiver = self;
  v67.super_class = TVApplicationController;
  v11 = [(TVApplicationController *)&v67 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 65) = 0;
    v13 = *(v11 + 6);
    *(v11 + 6) = 0;

    objc_storeStrong(&v12->_window, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v14 = [v8 copy];
    context = v12->_context;
    v12->_context = v14;

    v16 = [MEMORY[0x277CCA8D8] mainBundle];
    v17 = [v16 bundleIdentifier];

    v18 = 1;
    v19 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    v20 = [v19 firstObject];
    v21 = [v20 stringByAppendingPathComponent:v17];

    v22 = +[_TVProcessInfo currentProcessInfo];
    LODWORD(v20) = [v22 hasPrivateEntitlement];

    if (v20)
    {
      v23 = MGCopyAnswer();
      if (v23)
      {
        v24 = v23;
        v25 = CFGetTypeID(v23);
        if (v25 == CFStringGetTypeID())
        {
          v26 = [MEMORY[0x277CCACA8] stringWithString:v24];
          v27 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v28 = [v27 stringForKey:@"TVMLKitImageCacheKey"];

          if (![v26 length] || objc_msgSend(v28, "length") && (objc_msgSend(v28, "isEqualToString:", v26) & 1) != 0)
          {
            v18 = 0;
          }

          else
          {
            v29 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            [v29 setObject:v26 forKey:@"TVMLKitImageCacheKey"];

            v18 = 1;
          }
        }

        else
        {
          v18 = 0;
        }

        CFRelease(v24);
      }

      else
      {
        v18 = 0;
      }
    }

    [TVAssetLibrary initializeAssetLibraryWithCachePath:v21 purgeCacheOnLoad:v18];
    v30 = [(TVApplicationController *)v12 _rootViewController];
    appRootViewController = v12->_appRootViewController;
    v12->_appRootViewController = v30;

    window = v12->_window;
    if (window)
    {
      [(UIWindow *)window setRootViewController:v12->_appRootViewController];
      [(UIWindow *)v12->_window makeKeyAndVisible];
    }

    v33 = [(TVApplicationControllerContext *)v12->_context storageIdentifier];
    v34 = [v33 length];

    if (v34)
    {
      v35 = [(TVApplicationControllerContext *)v12->_context storageIdentifier];
      v36 = [v35 stringByAppendingString:@".localStorage.plist"];
    }

    else
    {
      v36 = @"localStorage.plist";
    }

    v37 = objc_alloc(MEMORY[0x277D1B030]);
    v38 = [v21 stringByAppendingPathComponent:v36];
    v66 = v17;
    v39 = [v37 initWithFilePath:v38 identifier:v17];
    appLocalStorage = v12->_appLocalStorage;
    v12->_appLocalStorage = v39;

    v41 = [[_TVMLKitApplication alloc] initWithLaunchContext:v12->_context];
    application = v12->_application;
    v12->_application = v41;

    [(_TVMLKitApplication *)v12->_application setLocalDataStorage:v12->_appLocalStorage];
    [(_TVMLKitApplication *)v12->_application setAppRootViewController:v12->_appRootViewController];
    v43 = v12->_application;
    v44 = objc_opt_class();
    v45 = [(TVApplicationControllerContext *)v12->_context launchOptions];
    v46 = [v44 _jsLaunchOptionsWithApplicationOptions:v45];
    [(_TVMLKitApplication *)v43 setJavaScriptLaunchOptions:v46];

    v47 = v9;
    [(_TVMLKitApplication *)v12->_application setKeyWindow:v9];
    v48 = [(TVApplicationControllerContext *)v12->_context launchOptions];
    v49 = [v48 objectForKeyedSubscript:*MEMORY[0x277D76698]];

    if (v49)
    {
      v12->_doLaunchOpenURLHandling = 1;
    }

    [(TVApplicationController *)v12 _launchApp];
    v50 = [MEMORY[0x277CCAB98] defaultCenter];
    v51 = *MEMORY[0x277D76648];
    v52 = [MEMORY[0x277D75128] sharedApplication];
    [v50 addObserver:v12 selector:sel__applicationDidBecomeActiveNotification_ name:v51 object:v52];

    v53 = [MEMORY[0x277CCAB98] defaultCenter];
    v54 = *MEMORY[0x277D76660];
    v55 = [MEMORY[0x277D75128] sharedApplication];
    [v53 addObserver:v12 selector:sel__applicationDidEnterBackgroundNotification_ name:v54 object:v55];

    v56 = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = *MEMORY[0x277D76768];
    v58 = [MEMORY[0x277D75128] sharedApplication];
    [v56 addObserver:v12 selector:sel__applicationWillResignActiveNotification_ name:v57 object:v58];

    v59 = [MEMORY[0x277CCAB98] defaultCenter];
    v60 = *MEMORY[0x277D76770];
    v61 = [MEMORY[0x277D75128] sharedApplication];
    [v59 addObserver:v12 selector:sel__applicationWillTerminateNotification_ name:v60 object:v61];

    v12->_interfaceOrientation = [*MEMORY[0x277D76620] statusBarOrientation];
    v62 = [MEMORY[0x277CCAB98] defaultCenter];
    [v62 addObserver:v12 selector:sel__statusBarOrientationDidChange_ name:*MEMORY[0x277D76658] object:0];

    v63 = [[_TVApplicationInspector alloc] initWithApplicationController:v12];
    applicationInspector = v12->_applicationInspector;
    v12->_applicationInspector = v63;

    v9 = v47;
  }

  return v12;
}

- (void)dealloc
{
  [(TVApplicationController *)self stop];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVApplicationController;
  [(TVApplicationController *)&v4 dealloc];
}

- (void)stop
{
  [(IKAppContext *)self->_appContext stop];
  appContext = self->_appContext;
  self->_appContext = 0;
}

- (BOOL)openURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_opt_new();
    v9 = [v6 absoluteString];
    [v8 setObject:v9 forKeyedSubscript:@"openURL"];

    v10 = [v7 objectForKeyedSubscript:*MEMORY[0x277D76690]];

    v11 = *MEMORY[0x277D766D0];
    v12 = [v7 objectForKeyedSubscript:*MEMORY[0x277D766D0]];
    v13 = v12;
    if (!v10)
    {

      if (!v13)
      {
        goto LABEL_6;
      }

      v13 = [v7 objectForKeyedSubscript:v11];
    }

    [v8 setObject:v13 forKeyedSubscript:@"sourceAppIdentifier"];

LABEL_6:
    if (![(IKAppContext *)self->_appContext isValid])
    {
      if (self->_doLaunchOpenURLHandling)
      {
        v22 = [v8 copy];
        launchOpenURLOptions = self->_launchOpenURLOptions;
        self->_launchOpenURLOptions = v22;
      }

      else if ([v8 count])
      {
        v24 = [(TVApplicationController *)self activeDocument];

        if (!v24)
        {
          v25 = TVMLKitLogObject;
          if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
          {
            *v39 = 0;
            _os_log_impl(&dword_26CD9A000, v25, OS_LOG_TYPE_INFO, "App Controller deferring handling of open URL to post launch", v39, 2u);
          }

          [(TVApplicationController *)self _openURLIfPossibleWithOptions:v8];
        }
      }

      goto LABEL_30;
    }

    if (self->_doLaunchOpenURLHandling)
    {
LABEL_26:
      if (self->_suspended)
      {
        v35 = [v8 copy];
        objc_storeStrong(&self->_openURLResumeOptions, v35);
        appContext = self->_appContext;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __43__TVApplicationController_openURL_options___block_invoke;
        v40[3] = &unk_279D6E748;
        v41 = v35;
        v37 = v35;
        [(IKAppContext *)appContext evaluate:v40 completionBlock:0];
      }

      else
      {
        [(TVApplicationController *)self _openURLIfPossibleWithOptions:v8];
      }

      self->_doLaunchOpenURLHandling = 0;
LABEL_30:

      goto LABEL_31;
    }

    v14 = [(TVApplicationController *)self delegate];
    if ([v14 conformsToProtocol:&unk_287EAD8E0])
    {
      v15 = [(TVApplicationController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        v17 = [(TVApplicationController *)self delegate];
        v18 = [v17 appController:self shouldDisplayShroudForURL:v6 withOptions:v7];

        if (!v18)
        {
          v19 = +[_TVAppLoadingView loadingScreen];
          [v19 setTimeout:20.0];

          v20 = +[_TVAppLoadingView loadingScreen];
          [v20 setLoadingDelay:2.0];

          v21 = +[_TVAppLoadingView loadingScreen];
          [v21 showOverKeyWindowWithSpinnerOnly:0];
LABEL_21:

          v26 = [(TVApplicationController *)self _currentNavigationController];
          [v26 dismissModal];

          v27 = [(TVApplicationController *)self rootViewController];
          v28 = [v27 presentedViewController];

          if (v28)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [v28 popToRootViewControllerAnimated:0];
            }

            v30 = [(TVApplicationController *)self rootViewController];
            [v30 dismissViewControllerAnimated:0 completion:0];
          }

          v31 = [(TVApplicationController *)self _currentNavigationController];
          v32 = [v31 popToRootViewControllerAnimated:0];

          [(TVApplicationController *)self _resetControllerNotifications];
          v33 = [MEMORY[0x277CCAB98] defaultCenter];
          [v33 addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

          v34 = [MEMORY[0x277CCAB98] defaultCenter];
          [v34 addObserver:self selector:sel__openURLControllerDidUpdate_ name:@"_TVAppDocumentDidUpdateNotification" object:0];

          goto LABEL_26;
        }
      }
    }

    else
    {
    }

    v21 = +[TVStorePlaybackLaunchShroud sharedShroud];
    [v21 setHidden:0 animated:1 withCompletionHandler:0];
    goto LABEL_21;
  }

LABEL_31:

  return v6 != 0;
}

void __43__TVApplicationController_openURL_options___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 objectForKeyedSubscript:@"App"];
  v4 = [v3 toObjectOfClass:NSClassFromString(&cfstr_Ikjsapplicatio.isa)];

  v7[0] = *(a1 + 32);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v6 = [v4 invokeMethod:@"onPreloadOpenURL" withArguments:v5];
}

- (void)_openURLIfPossibleWithOptions:(id)a3
{
  v4 = a3;
  v5 = [(TVApplicationController *)self activeDocument];
  if (v5)
  {
  }

  else if ([v4 count])
  {
    v9 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD9A000, v9, OS_LOG_TYPE_INFO, "App Controller deferring handling open URL to post presented", buf, 2u);
    }

    [(TVApplicationController *)self _resetControllerNotifications];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:self selector:sel__rootControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

    v11 = [v4 copy];
    openURLPresentedOptions = self->_openURLPresentedOptions;
    self->_openURLPresentedOptions = v11;
    goto LABEL_11;
  }

  if ([v4 count])
  {
    v6 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_26CD9A000, v6, OS_LOG_TYPE_INFO, "App Controller handling open URL", v12, 2u);
    }

    appContext = self->_appContext;
    openURLPresentedOptions = [v4 copy];
    [(IKAppContext *)appContext openURLWithOptions:openURLPresentedOptions];
LABEL_11:
  }
}

- (BOOL)jsOpenURL:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [v7 absoluteString];

  [v8 setObject:v9 forKeyedSubscript:@"openURL"];
  v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D76690]];

  [v8 setObject:v10 forKeyedSubscript:@"sourceAppIdentifier"];
  v11 = [(IKAppContext *)self->_appContext isValid];
  if (v11)
  {
    appContext = self->_appContext;
    v13 = [v8 copy];
    [(IKAppContext *)appContext openURLWithOptions:v13];
  }

  return v11;
}

- (void)evaluateInJavaScriptContext:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  appContext = self->_appContext;
  if (appContext)
  {
    [(IKAppContext *)appContext evaluate:v8 completionBlock:v6];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_popViewControllerOnBackground)
  {
    v5 = [(TVApplicationController *)self _currentNavigationController];
    v6 = [v5 popViewControllerAnimated:0];

    self->_popViewControllerOnBackground = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(TVApplicationController *)self _currentNavigationController];
  v8 = [v7 viewControllers];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 setMenuGestureHandler:0];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_statusBarOrientationDidChange:(id)a3
{
  v4 = [*MEMORY[0x277D76620] statusBarOrientation];
  if (v4 != self->_interfaceOrientation)
  {
    self->_interfaceOrientation = v4;
    if ([(IKAppContext *)self->_appContext isValid])
    {
      v5 = [(_TVMLKitApplication *)self->_application appTraitCollection];
      [(IKAppContext *)self->_appContext appTraitCollectionChanged:v5];
    }
  }
}

- (BOOL)appContext:(id)a3 highlightViewForElement:(id)a4 contentColor:(id)a5 paddingColor:(id)a6 borderColor:(id)a7 marginColor:(id)a8
{
  v18 = *MEMORY[0x277D85DE8];
  applicationInspector = self->_applicationInspector;
  v17 = a4;
  v11 = MEMORY[0x277CBEA60];
  v12 = a7;
  v13 = a5;
  v14 = a4;
  v15 = [v11 arrayWithObjects:&v17 count:1];
  [(_TVApplicationInspector *)applicationInspector highlightViewElements:v15 contentColor:v13 borderColor:v12, v17, v18];

  return 1;
}

- (id)navigationControllerForContext:(id)a3
{
  if (self->_appContext == a3)
  {
    v5 = [(TVAppRootViewController *)self->_appRootViewController appNavigationController];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tabBarForContext:(id)a3
{
  if (self->_appContext == a3)
  {
    v5 = [(TVAppRootViewController *)self->_appRootViewController appTabBar];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appContext:(id)a3 didStartWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_INFO, "App Controller did launch", buf, 2u);
  }

  if (self->_appContext == v6 && !self->_reloadInProgress)
  {
    v9 = [(TVApplicationController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVApplicationController *)self delegate];
      [v11 appController:self didFinishLaunchingWithOptions:v7];

      _TVMLMetricsLogPublicAPIUsage(sel_appController_didFinishLaunchingWithOptions_);
    }
  }

  if (self->_doLaunchOpenURLHandling)
  {
    if ([(NSDictionary *)self->_launchOpenURLOptions count])
    {
      [(IKAppContext *)self->_appContext openURLWithOptions:self->_launchOpenURLOptions];
      v12 = TVMLKitLogObject;
      if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_26CD9A000, v12, OS_LOG_TYPE_INFO, "App Controller did handle open URL on launch", v15, 2u);
      }
    }

    launchOpenURLOptions = self->_launchOpenURLOptions;
    self->_launchOpenURLOptions = 0;

    self->_doLaunchOpenURLHandling = 0;
  }

  else if (self->_reloadInProgress)
  {
    *&self->_reloadInProgress = 0;
    if (self->_openURLReloadOptions)
    {
      [(IKAppContext *)self->_appContext openURLWithOptions:?];
      openURLReloadOptions = self->_openURLReloadOptions;
      self->_openURLReloadOptions = 0;
    }
  }
}

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  v6 = a4;
  appContext = self->_appContext;
  if (appContext == a3)
  {
    self->_appContext = 0;

    v8 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVApplicationController appContext:v6 didFailWithError:v8];
    }

    v9 = [(TVApplicationController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(TVApplicationController *)self delegate];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:3 userInfo:0];
      [v11 appController:self didFailWithError:v12];

      _TVMLMetricsLogPublicAPIUsage(sel_appController_didFailWithError_);
    }
  }
}

- (void)appContext:(id)a3 didStopWithOptions:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (!self->_reloadInProgress)
  {
    v7 = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(TVApplicationController *)self delegate];
      [v9 appController:self didStopWithOptions:v6];

      _TVMLMetricsLogPublicAPIUsage(sel_appController_didStopWithOptions_);
    }

    appContext = self->_appContext;
    if (appContext == v11)
    {
      self->_appContext = 0;
    }
  }
}

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = +[_TVProcessInfo currentProcessInfo];
  v8 = [v7 hasPrivateEntitlement];
  v9 = [(TVApplicationController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = v8 & [v7 hasiTunesAPIEntitlement];
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v12 = [(TVApplicationController *)self delegate];
  [v12 appController:self evaluateAppJavaScriptInContext:v6];

  _TVMLMetricsLogPublicAPIUsage(sel_appController_evaluateAppJavaScriptInContext_);
  if (v11)
  {
    v13 = [v6 objectForKeyedSubscript:@"itms"];
    v14 = [v13 toBool];

    if ((v14 & 1) == 0)
    {
LABEL_6:
      v15 = [objc_alloc(MEMORY[0x277D1B0B0]) initWithAppContext:v16];
      [v6 setObject:v15 forKeyedSubscript:@"itms"];
    }
  }

LABEL_7:
}

- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1)
  {
    self->_reloadOnResume = 1;
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D1AF08]];
    [v11 doubleValue];
    self->_reloadOnResumeMinInterval = v12;

    if (self->_reloadOnResumeMinInterval > 0.0)
    {
      v13 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v13 floatForKey:@"override-minSuspensionTime"];
      v15 = v14;

      if (v15 > 0.0)
      {
        v16 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [v16 floatForKey:@"override-minSuspensionTime"];
        self->_reloadOnResumeMinInterval = v17;
      }
    }
  }

  else
  {
    if (self->_reloadOnResume)
    {
      if (!self->_reloadOnResumeBackgroundedDate || self->_reloadOnResumeMinInterval == 0.0)
      {
        goto LABEL_10;
      }

      if (![(TVApplicationController *)self _hasReloadOnResumeMinIntervalPassed])
      {
        goto LABEL_20;
      }

      if (self->_reloadOnResume)
      {
LABEL_10:
        v18 = +[_TVProcessInfo currentProcessInfo];
        v19 = [v18 hasPrivateEntitlement];

        if (v19)
        {
          v20 = +[_TVAppLoadingView loadingScreen];
          [v20 setTimeout:60.0];

          v21 = +[_TVAppLoadingView loadingScreen];
          [v21 showOverKeyWindowWithSpinnerOnly:0];

          [(TVApplicationController *)self _resetControllerNotifications];
          v22 = [MEMORY[0x277CCAB98] defaultCenter];
          [v22 addObserver:self selector:sel__reloadControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];
        }
      }
    }

    self->_reloadOnResume = 0;
    reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
    self->_reloadOnResumeMinInterval = 0.0;
    self->_reloadOnResumeBackgroundedDate = 0;

    if (!self->_reloadInProgress)
    {
      objc_initWeak(&location, self);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __69__TVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke;
      v30[3] = &unk_279D6E770;
      objc_copyWeak(&v32, &location);
      v31 = v8;
      v24 = MEMORY[0x26D6AFBB0](v30);
      v25 = [(TVAppRootViewController *)self->_appRootViewController currentNavigationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26;
      if (v27)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __69__TVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke_2;
        v28[3] = &unk_279D6E6F8;
        v29 = v24;
        [v27 dismissAllModals:v28];
      }

      else
      {
        v24[2](v24);
      }

      objc_destroyWeak(&v32);
      objc_destroyWeak(&location);
    }
  }

LABEL_20:
}

void __69__TVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained _rootViewController];
    v3 = WeakRetained[14];
    WeakRetained[14] = v2;

    [WeakRetained[16] setRootViewController:WeakRetained[14]];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [WeakRetained[2] javaScriptLaunchOptions];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [WeakRetained[2] javaScriptLaunchOptions];
      [v4 addEntriesFromDictionary:v7];

      [v4 removeObjectForKey:@"openURL"];
      [v4 removeObjectForKey:@"sourceAppIdentifier"];
    }

    if ([WeakRetained[6] count])
    {
      v8 = [WeakRetained[6] objectForKey:@"openURL"];
      [v4 setObject:v8 forKeyedSubscript:@"openURL"];
    }

    [v4 setObject:@"reload" forKeyedSubscript:@"launchContext"];
    [WeakRetained[2] setJavaScriptLaunchOptions:v4];
    *(WeakRetained + 65) = 1;
    [*(a1 + 32) reload];
  }
}

- (void)appContext:(id)a3 openDynamicUIURL:(id)a4 metricsOverlay:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_appRootViewController;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2050000000;
  v15 = getAMSUIDynamicViewControllerClass_softClass;
  v31 = getAMSUIDynamicViewControllerClass_softClass;
  if (!getAMSUIDynamicViewControllerClass_softClass)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __getAMSUIDynamicViewControllerClass_block_invoke;
    v27[3] = &unk_279D6E798;
    v27[4] = &v28;
    __getAMSUIDynamicViewControllerClass_block_invoke(v27);
    v15 = v29[3];
  }

  v25 = v13;
  v26 = v10;
  v16 = v15;
  _Block_object_dispose(&v28, 8);
  v17 = [MEMORY[0x277D1B110] sharedCache];
  v18 = MEMORY[0x277CEE408];
  v19 = [v15 bagKeySet];
  v20 = [v17 profile];
  v21 = [v17 profileVersion];
  [v18 registerBagKeySet:v19 forProfile:v20 profileVersion:v21];

  v22 = [[v15 alloc] initWithBag:v17 URL:v11];
  v23 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v24 = [v23 ams_activeiTunesAccount];
  [v22 setAccount:v24];

  if ([v12 count])
  {
    [v22 setMetricsOverlay:v12];
  }

  [v22 setDelegate:self];
  [(TVApplicationController *)self setDynamicUICompletion:v25];
  [(TVAppRootViewController *)v14 presentViewController:v22 animated:1 completion:0];
}

- (void)appContext:(id)a3 openMarketingItem:(id)a4 metricsOverlay:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_appRootViewController;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2050000000;
  v15 = getAMSUIMarketingItemViewControllerClass_softClass;
  v32 = getAMSUIMarketingItemViewControllerClass_softClass;
  if (!getAMSUIMarketingItemViewControllerClass_softClass)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __getAMSUIMarketingItemViewControllerClass_block_invoke;
    v28[3] = &unk_279D6E798;
    v28[4] = &v29;
    __getAMSUIMarketingItemViewControllerClass_block_invoke(v28);
    v15 = v30[3];
  }

  v26 = v13;
  v27 = v10;
  v16 = v15;
  _Block_object_dispose(&v29, 8);
  v17 = [MEMORY[0x277D1B110] sharedCache];
  v18 = MEMORY[0x277CEE408];
  v19 = [v15 bagKeySet];
  v20 = [v17 profile];
  v21 = [v17 profileVersion];
  [v18 registerBagKeySet:v19 forProfile:v20 profileVersion:v21];

  v22 = [objc_alloc(MEMORY[0x277CEE528]) initWithDictionary:v11];
  v23 = [[v15 alloc] initWithMarketingItem:v22 bag:v17];
  v24 = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  v25 = [v24 ams_activeiTunesAccount];
  [v23 setAccount:v25];

  if ([v12 count])
  {
    [v23 setMetricsOverlay:v12];
  }

  [v23 setDelegate:self];
  [(TVApplicationController *)self setDynamicUICompletion:v26];
  [(TVAppRootViewController *)v14 presentViewController:v23 animated:1 completion:0];
}

- (void)dynamicViewController:(id)a3 didFinishCarrierLinkingWithResult:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(TVApplicationController *)self dynamicUICompletion];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D1B040]) initWithCarrierLinkResult:v10];
    (v8)[2](v8, v9, v7);
    [(TVApplicationController *)self setDynamicUICompletion:0];
  }
}

- (void)dynamicViewController:(id)a3 didFinishWithPurchaseResult:(id)a4 error:(id)a5
{
  v10 = a4;
  v7 = a5;
  v8 = [(TVApplicationController *)self dynamicUICompletion];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277D1B040]) initWithPurchaseResult:v10];
    (v8)[2](v8, v9, v7);
    [(TVApplicationController *)self setDynamicUICompletion:0];
  }
}

- (unint64_t)preferredVideoFormat
{
  v2 = CFPreferencesCopyAppValue(@"PreferredPurchaseResolution", @"com.apple.videos-preferences");
  v3 = v2 && (objc_opt_respondsToSelector() & 1) != 0 && [v2 integerValue] == 1;

  return v3;
}

- (CGSize)screenSize
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (BOOL)isTimeZoneSet
{
  v2 = [MEMORY[0x277CBEBB0] systemTimeZone];
  v3 = v2 != 0;

  return v3;
}

- (id)systemLanguage
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 arrayForKey:@"AppleLanguages"];

  v4 = [v3 firstObject];

  return v4;
}

- (id)timeZone
{
  v2 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [v2 objectForKey:*MEMORY[0x277CBE678]];
  v4 = [v3 timeZone];

  return v4;
}

- (BOOL)appNavigationController:(id)a3 shouldOverrideModalBehaviorForDocument:(id)a4 andExistingDocument:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(TVApplicationController *)self delegate];
  if ([v9 conformsToProtocol:&unk_287EAD8E0])
  {
    v10 = [(TVApplicationController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_7;
    }

    v9 = [(TVApplicationController *)self delegate];
    v12 = [v9 appController:self shouldOverrideModalBehaviorForDocument:v7 andExistingModalDocument:v8];
  }

  else
  {
    v12 = 0;
  }

LABEL_7:
  return v12;
}

- (BOOL)appNavigationController:(id)a3 shouldIgnoreDismissalForViewController:(id)a4
{
  v5 = a4;
  v6 = [(TVApplicationController *)self delegate];
  if ([v6 conformsToProtocol:&unk_287EAD8E0])
  {
    v7 = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    v6 = [(TVApplicationController *)self delegate];
    v9 = [v6 appController:self shouldIgnoreDismissalForViewController:v5];
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  return v9;
}

- (BOOL)appNavigationController:(id)a3 shouldDismissShroudForDocument:(id)a4
{
  v5 = a4;
  v6 = [(TVApplicationController *)self delegate];
  if ([v6 conformsToProtocol:&unk_287EAD8E0])
  {
    v7 = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v9 = 1;
      goto LABEL_7;
    }

    v6 = [(TVApplicationController *)self delegate];
    v9 = [v6 appController:self shouldDismissShroudForDocument:v5];
  }

  else
  {
    v9 = 1;
  }

LABEL_7:
  return v9;
}

- (void)setKeyTraitEnvironment:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_keyTraitEnvironment, v4);
  [(_TVMLKitApplication *)self->_application setKeyTraitEnvironment:v4];
}

- (UIView)viewServiceKeyView
{
  v3 = [(TVApplicationController *)self keyTraitEnvironment];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(TVApplicationController *)self keyTraitEnvironment];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)applicationDidResume:(id)a3
{
  suspended = self->_suspended;
  self->_suspended = 0;
  if (suspended)
  {
    v6 = self->_openURLResumeOptions;
    openURLResumeOptions = self->_openURLResumeOptions;
    self->_openURLResumeOptions = 0;

    if ([(TVApplicationController *)self _shouldReloadOnResume])
    {
      v8 = [(NSDictionary *)v6 copy];
      openURLReloadOptions = self->_openURLReloadOptions;
      self->_openURLReloadOptions = v8;

      [(TVApplicationController *)self appContext:self->_appContext needsReloadWithUrgency:0 options:0];
      v10 = v6;
    }

    else
    {
      if (v6)
      {
        v11 = [(NSDictionary *)v6 mutableCopy];
      }

      else
      {
        v11 = objc_opt_new();
      }

      v12 = v11;
      v13 = [(_TVMLKitApplication *)self->_application appTraitCollection];
      [v12 setObject:v13 forKeyedSubscript:@"appTraitCollection"];

      v15 = [v12 copy];
      [(IKAppContext *)self->_appContext resumeWithOptions:v15];
      v14 = [(NSDictionary *)v15 objectForKeyedSubscript:@"openURL"];

      if (v14)
      {
        [(IKAppContext *)self->_appContext openURLWithOptions:v15];
      }

      v10 = v15;
    }
  }
}

- (void)applicationWillSuspend:(id)a3
{
  v4 = [MEMORY[0x277CBEAA8] date];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  self->_reloadOnResumeBackgroundedDate = v4;

  appContext = self->_appContext;
  if (appContext)
  {
    [(IKAppContext *)appContext suspendWithOptions:0];
    self->_suspended = 1;
  }
}

+ (id)_applicationControllerForElement:(id)a3
{
  v3 = [a3 appDocument];
  v4 = [v3 appContext];

  v5 = [v4 delegate];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 delegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_rootControllerDidDisplay:(id)a3
{
  [(TVApplicationController *)self _resetControllerNotifications];
  if ([(NSDictionary *)self->_openURLPresentedOptions count])
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__openURLControllerDidUpdate_ name:@"_TVAppDocumentDidUpdateNotification" object:0];

    v6 = [(NSDictionary *)self->_openURLPresentedOptions copy];
    openURLPresentedOptions = self->_openURLPresentedOptions;
    self->_openURLPresentedOptions = 0;

    [(IKAppContext *)self->_appContext openURLWithOptions:v6];
    v8 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_INFO, "App Controller did handle open URL on presented", v9, 2u);
    }
  }
}

- (void)_openURLControllerHandler:(BOOL)a3
{
  if (a3)
  {
    v4 = +[_TVAppLoadingView loadingScreen];
    [v4 hide];
  }

  [(TVApplicationController *)self _resetControllerNotifications];
}

- (void)_reloadControllerDidDisplay:(id)a3
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 hide];

  [(TVApplicationController *)self _resetControllerNotifications];
}

- (void)_resetControllerNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"_TVAppDocumentDidUpdateNotification" object:0];
}

- (void)_launchApp
{
  if (!self->_appContext)
  {
    v4 = [(TVApplicationControllerContext *)self->_context javaScriptApplicationURL];
    v5 = [v4 isFileURL];

    v6 = [objc_alloc(MEMORY[0x277D1B028]) initWithApplication:self->_application mode:v5 delegate:self];
    appContext = self->_appContext;
    self->_appContext = v6;

    v8 = self->_appContext;

    [(IKAppContext *)v8 start];
  }
}

- (BOOL)_shouldReloadOnResume
{
  if (!self->_reloadOnResume)
  {
    return 0;
  }

  if (!self->_reloadOnResumeBackgroundedDate || self->_reloadOnResumeMinInterval == 0.0)
  {
    return 1;
  }

  return [(TVApplicationController *)self _hasReloadOnResumeMinIntervalPassed];
}

- (BOOL)_hasReloadOnResumeMinIntervalPassed
{
  v3 = objc_alloc(MEMORY[0x277CBEA80]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 components:128 fromDate:reloadOnResumeBackgroundedDate toDate:v6 options:0];

  LOBYTE(self) = self->_reloadOnResumeMinInterval <= [v7 second];
  return self;
}

- (id)_rootViewController
{
  v3 = [(TVApplicationController *)self delegate];
  if ([v3 conformsToProtocol:&unk_287EAD8E0])
  {
    v4 = v3;
    if (objc_opt_respondsToSelector())
    {
      v5 = [v4 rootViewControllerForAppController:self];

      if (v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v5 = [[_TVAppNavigationController_iOS alloc] initWithApplicationController:self];
LABEL_7:
  [(_TVAppNavigationController *)v5 setAppNavigationControllersDelegate:self];

  return v5;
}

- (TVApplicationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UITraitEnvironment)keyTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_keyTraitEnvironment);

  return WeakRetained;
}

- (void)appContext:(uint64_t)a1 didFailWithError:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CD9A000, a2, OS_LOG_TYPE_ERROR, "App Context Failed with Error: %@", &v2, 0xCu);
}

@end