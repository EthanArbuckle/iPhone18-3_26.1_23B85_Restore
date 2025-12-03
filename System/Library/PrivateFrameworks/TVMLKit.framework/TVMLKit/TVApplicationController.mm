@interface TVApplicationController
+ (id)_applicationControllerForElement:(id)element;
+ (id)_jsLaunchOptionsWithApplicationOptions:(id)options;
+ (void)initialize;
- (BOOL)_hasReloadOnResumeMinIntervalPassed;
- (BOOL)_shouldReloadOnResume;
- (BOOL)appContext:(id)context highlightViewForElement:(id)element contentColor:(id)color paddingColor:(id)paddingColor borderColor:(id)borderColor marginColor:(id)marginColor;
- (BOOL)appNavigationController:(id)controller shouldDismissShroudForDocument:(id)document;
- (BOOL)appNavigationController:(id)controller shouldIgnoreDismissalForViewController:(id)viewController;
- (BOOL)appNavigationController:(id)controller shouldOverrideModalBehaviorForDocument:(id)document andExistingDocument:(id)existingDocument;
- (BOOL)isTimeZoneSet;
- (BOOL)jsOpenURL:(id)l options:(id)options;
- (BOOL)openURL:(id)l options:(id)options;
- (CGSize)screenSize;
- (TVApplicationController)init;
- (TVApplicationController)initWithContext:(id)context window:(id)window delegate:(id)delegate;
- (TVApplicationControllerDelegate)delegate;
- (UITraitEnvironment)keyTraitEnvironment;
- (UIView)viewServiceKeyView;
- (id)_rootViewController;
- (id)navigationControllerForContext:(id)context;
- (id)systemLanguage;
- (id)tabBarForContext:(id)context;
- (id)timeZone;
- (unint64_t)preferredVideoFormat;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_launchApp;
- (void)_openURLControllerHandler:(BOOL)handler;
- (void)_openURLIfPossibleWithOptions:(id)options;
- (void)_reloadControllerDidDisplay:(id)display;
- (void)_resetControllerNotifications;
- (void)_rootControllerDidDisplay:(id)display;
- (void)_statusBarOrientationDidChange:(id)change;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context didStartWithOptions:(id)options;
- (void)appContext:(id)context didStopWithOptions:(id)options;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options;
- (void)appContext:(id)context openDynamicUIURL:(id)l metricsOverlay:(id)overlay completion:(id)completion;
- (void)appContext:(id)context openMarketingItem:(id)item metricsOverlay:(id)overlay completion:(id)completion;
- (void)applicationDidResume:(id)resume;
- (void)applicationWillSuspend:(id)suspend;
- (void)dealloc;
- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error;
- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error;
- (void)evaluateInJavaScriptContext:(id)context completion:(id)completion;
- (void)setKeyTraitEnvironment:(id)environment;
- (void)stop;
@end

@implementation TVApplicationController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _TVSetupLoggingObjects();
    objc_opt_class();
    objc_opt_class();

    objc_opt_class();
  }
}

+ (id)_jsLaunchOptionsWithApplicationOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  if ([optionsCopy count])
  {
    v5 = [optionsCopy mutableCopy];
    v6 = *MEMORY[0x277D76698];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277D76698]];
    v8 = v7;
    if (v7)
    {
      absoluteString = [v7 absoluteString];
      [v4 setObject:absoluteString forKeyedSubscript:@"openURL"];

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

- (TVApplicationController)initWithContext:(id)context window:(id)window delegate:(id)delegate
{
  contextCopy = context;
  windowCopy = window;
  delegateCopy = delegate;
  v67.receiver = self;
  v67.super_class = TVApplicationController;
  v11 = [(TVApplicationController *)&v67 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 65) = 0;
    v13 = *(v11 + 6);
    *(v11 + 6) = 0;

    objc_storeStrong(&v12->_window, window);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = [contextCopy copy];
    context = v12->_context;
    v12->_context = v14;

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    v18 = 1;
    v19 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
    firstObject = [v19 firstObject];
    v21 = [firstObject stringByAppendingPathComponent:bundleIdentifier];

    v22 = +[_TVProcessInfo currentProcessInfo];
    LODWORD(firstObject) = [v22 hasPrivateEntitlement];

    if (firstObject)
    {
      v23 = MGCopyAnswer();
      if (v23)
      {
        v24 = v23;
        v25 = CFGetTypeID(v23);
        if (v25 == CFStringGetTypeID())
        {
          v26 = [MEMORY[0x277CCACA8] stringWithString:v24];
          standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v28 = [standardUserDefaults stringForKey:@"TVMLKitImageCacheKey"];

          if (![v26 length] || objc_msgSend(v28, "length") && (objc_msgSend(v28, "isEqualToString:", v26) & 1) != 0)
          {
            v18 = 0;
          }

          else
          {
            standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
            [standardUserDefaults2 setObject:v26 forKey:@"TVMLKitImageCacheKey"];

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
    _rootViewController = [(TVApplicationController *)v12 _rootViewController];
    appRootViewController = v12->_appRootViewController;
    v12->_appRootViewController = _rootViewController;

    window = v12->_window;
    if (window)
    {
      [(UIWindow *)window setRootViewController:v12->_appRootViewController];
      [(UIWindow *)v12->_window makeKeyAndVisible];
    }

    storageIdentifier = [(TVApplicationControllerContext *)v12->_context storageIdentifier];
    v34 = [storageIdentifier length];

    if (v34)
    {
      storageIdentifier2 = [(TVApplicationControllerContext *)v12->_context storageIdentifier];
      v36 = [storageIdentifier2 stringByAppendingString:@".localStorage.plist"];
    }

    else
    {
      v36 = @"localStorage.plist";
    }

    v37 = objc_alloc(MEMORY[0x277D1B030]);
    v38 = [v21 stringByAppendingPathComponent:v36];
    v66 = bundleIdentifier;
    v39 = [v37 initWithFilePath:v38 identifier:bundleIdentifier];
    appLocalStorage = v12->_appLocalStorage;
    v12->_appLocalStorage = v39;

    v41 = [[_TVMLKitApplication alloc] initWithLaunchContext:v12->_context];
    application = v12->_application;
    v12->_application = v41;

    [(_TVMLKitApplication *)v12->_application setLocalDataStorage:v12->_appLocalStorage];
    [(_TVMLKitApplication *)v12->_application setAppRootViewController:v12->_appRootViewController];
    v43 = v12->_application;
    v44 = objc_opt_class();
    launchOptions = [(TVApplicationControllerContext *)v12->_context launchOptions];
    v46 = [v44 _jsLaunchOptionsWithApplicationOptions:launchOptions];
    [(_TVMLKitApplication *)v43 setJavaScriptLaunchOptions:v46];

    v47 = windowCopy;
    [(_TVMLKitApplication *)v12->_application setKeyWindow:windowCopy];
    launchOptions2 = [(TVApplicationControllerContext *)v12->_context launchOptions];
    v49 = [launchOptions2 objectForKeyedSubscript:*MEMORY[0x277D76698]];

    if (v49)
    {
      v12->_doLaunchOpenURLHandling = 1;
    }

    [(TVApplicationController *)v12 _launchApp];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v51 = *MEMORY[0x277D76648];
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter addObserver:v12 selector:sel__applicationDidBecomeActiveNotification_ name:v51 object:mEMORY[0x277D75128]];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    v54 = *MEMORY[0x277D76660];
    mEMORY[0x277D75128]2 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter2 addObserver:v12 selector:sel__applicationDidEnterBackgroundNotification_ name:v54 object:mEMORY[0x277D75128]2];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    v57 = *MEMORY[0x277D76768];
    mEMORY[0x277D75128]3 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter3 addObserver:v12 selector:sel__applicationWillResignActiveNotification_ name:v57 object:mEMORY[0x277D75128]3];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    v60 = *MEMORY[0x277D76770];
    mEMORY[0x277D75128]4 = [MEMORY[0x277D75128] sharedApplication];
    [defaultCenter4 addObserver:v12 selector:sel__applicationWillTerminateNotification_ name:v60 object:mEMORY[0x277D75128]4];

    v12->_interfaceOrientation = [*MEMORY[0x277D76620] statusBarOrientation];
    defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter5 addObserver:v12 selector:sel__statusBarOrientationDidChange_ name:*MEMORY[0x277D76658] object:0];

    v63 = [[_TVApplicationInspector alloc] initWithApplicationController:v12];
    applicationInspector = v12->_applicationInspector;
    v12->_applicationInspector = v63;

    windowCopy = v47;
  }

  return v12;
}

- (void)dealloc
{
  [(TVApplicationController *)self stop];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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

- (BOOL)openURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  if (lCopy)
  {
    v8 = objc_opt_new();
    absoluteString = [lCopy absoluteString];
    [v8 setObject:absoluteString forKeyedSubscript:@"openURL"];

    v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D76690]];

    v11 = *MEMORY[0x277D766D0];
    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D766D0]];
    v13 = v12;
    if (!v10)
    {

      if (!v13)
      {
        goto LABEL_6;
      }

      v13 = [optionsCopy objectForKeyedSubscript:v11];
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
        activeDocument = [(TVApplicationController *)self activeDocument];

        if (!activeDocument)
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

    delegate = [(TVApplicationController *)self delegate];
    if ([delegate conformsToProtocol:&unk_287EAD8E0])
    {
      delegate2 = [(TVApplicationController *)self delegate];
      v16 = objc_opt_respondsToSelector();

      if (v16)
      {
        delegate3 = [(TVApplicationController *)self delegate];
        v18 = [delegate3 appController:self shouldDisplayShroudForURL:lCopy withOptions:optionsCopy];

        if (!v18)
        {
          v19 = +[_TVAppLoadingView loadingScreen];
          [v19 setTimeout:20.0];

          v20 = +[_TVAppLoadingView loadingScreen];
          [v20 setLoadingDelay:2.0];

          v21 = +[_TVAppLoadingView loadingScreen];
          [v21 showOverKeyWindowWithSpinnerOnly:0];
LABEL_21:

          _currentNavigationController = [(TVApplicationController *)self _currentNavigationController];
          [_currentNavigationController dismissModal];

          rootViewController = [(TVApplicationController *)self rootViewController];
          presentedViewController = [rootViewController presentedViewController];

          if (presentedViewController)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v29 = [presentedViewController popToRootViewControllerAnimated:0];
            }

            rootViewController2 = [(TVApplicationController *)self rootViewController];
            [rootViewController2 dismissViewControllerAnimated:0 completion:0];
          }

          _currentNavigationController2 = [(TVApplicationController *)self _currentNavigationController];
          v32 = [_currentNavigationController2 popToRootViewControllerAnimated:0];

          [(TVApplicationController *)self _resetControllerNotifications];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter2 addObserver:self selector:sel__openURLControllerDidUpdate_ name:@"_TVAppDocumentDidUpdateNotification" object:0];

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

  return lCopy != 0;
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

- (void)_openURLIfPossibleWithOptions:(id)options
{
  optionsCopy = options;
  activeDocument = [(TVApplicationController *)self activeDocument];
  if (activeDocument)
  {
  }

  else if ([optionsCopy count])
  {
    v9 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26CD9A000, v9, OS_LOG_TYPE_INFO, "App Controller deferring handling open URL to post presented", buf, 2u);
    }

    [(TVApplicationController *)self _resetControllerNotifications];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__rootControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

    v11 = [optionsCopy copy];
    openURLPresentedOptions = self->_openURLPresentedOptions;
    self->_openURLPresentedOptions = v11;
    goto LABEL_11;
  }

  if ([optionsCopy count])
  {
    v6 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_26CD9A000, v6, OS_LOG_TYPE_INFO, "App Controller handling open URL", v12, 2u);
    }

    appContext = self->_appContext;
    openURLPresentedOptions = [optionsCopy copy];
    [(IKAppContext *)appContext openURLWithOptions:openURLPresentedOptions];
LABEL_11:
  }
}

- (BOOL)jsOpenURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
  v8 = objc_opt_new();
  absoluteString = [lCopy absoluteString];

  [v8 setObject:absoluteString forKeyedSubscript:@"openURL"];
  v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D76690]];

  [v8 setObject:v10 forKeyedSubscript:@"sourceAppIdentifier"];
  isValid = [(IKAppContext *)self->_appContext isValid];
  if (isValid)
  {
    appContext = self->_appContext;
    v13 = [v8 copy];
    [(IKAppContext *)appContext openURLWithOptions:v13];
  }

  return isValid;
}

- (void)evaluateInJavaScriptContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  appContext = self->_appContext;
  if (appContext)
  {
    [(IKAppContext *)appContext evaluate:contextCopy completionBlock:completionCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v19 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (self->_popViewControllerOnBackground)
  {
    _currentNavigationController = [(TVApplicationController *)self _currentNavigationController];
    v6 = [_currentNavigationController popViewControllerAnimated:0];

    self->_popViewControllerOnBackground = 0;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  _currentNavigationController2 = [(TVApplicationController *)self _currentNavigationController];
  viewControllers = [_currentNavigationController2 viewControllers];

  v9 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(viewControllers);
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
      v10 = [viewControllers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_statusBarOrientationDidChange:(id)change
{
  statusBarOrientation = [*MEMORY[0x277D76620] statusBarOrientation];
  if (statusBarOrientation != self->_interfaceOrientation)
  {
    self->_interfaceOrientation = statusBarOrientation;
    if ([(IKAppContext *)self->_appContext isValid])
    {
      appTraitCollection = [(_TVMLKitApplication *)self->_application appTraitCollection];
      [(IKAppContext *)self->_appContext appTraitCollectionChanged:appTraitCollection];
    }
  }
}

- (BOOL)appContext:(id)context highlightViewForElement:(id)element contentColor:(id)color paddingColor:(id)paddingColor borderColor:(id)borderColor marginColor:(id)marginColor
{
  v18 = *MEMORY[0x277D85DE8];
  applicationInspector = self->_applicationInspector;
  elementCopy = element;
  v11 = MEMORY[0x277CBEA60];
  borderColorCopy = borderColor;
  colorCopy = color;
  elementCopy2 = element;
  v15 = [v11 arrayWithObjects:&elementCopy count:1];
  [(_TVApplicationInspector *)applicationInspector highlightViewElements:v15 contentColor:colorCopy borderColor:borderColorCopy, elementCopy, v18];

  return 1;
}

- (id)navigationControllerForContext:(id)context
{
  if (self->_appContext == context)
  {
    appNavigationController = [(TVAppRootViewController *)self->_appRootViewController appNavigationController];
  }

  else
  {
    appNavigationController = 0;
  }

  return appNavigationController;
}

- (id)tabBarForContext:(id)context
{
  if (self->_appContext == context)
  {
    appTabBar = [(TVAppRootViewController *)self->_appRootViewController appTabBar];
  }

  else
  {
    appTabBar = 0;
  }

  return appTabBar;
}

- (void)appContext:(id)context didStartWithOptions:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v8 = TVMLKitLogObject;
  if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26CD9A000, v8, OS_LOG_TYPE_INFO, "App Controller did launch", buf, 2u);
  }

  if (self->_appContext == contextCopy && !self->_reloadInProgress)
  {
    delegate = [(TVApplicationController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(TVApplicationController *)self delegate];
      [delegate2 appController:self didFinishLaunchingWithOptions:optionsCopy];

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

- (void)appContext:(id)context didFailWithError:(id)error
{
  errorCopy = error;
  appContext = self->_appContext;
  if (appContext == context)
  {
    self->_appContext = 0;

    v8 = TVMLKitLogObject;
    if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_ERROR))
    {
      [TVApplicationController appContext:errorCopy didFailWithError:v8];
    }

    delegate = [(TVApplicationController *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(TVApplicationController *)self delegate];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVMLKitErrorDomain" code:3 userInfo:0];
      [delegate2 appController:self didFailWithError:v12];

      _TVMLMetricsLogPublicAPIUsage(sel_appController_didFailWithError_);
    }
  }
}

- (void)appContext:(id)context didStopWithOptions:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  if (!self->_reloadInProgress)
  {
    delegate = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate2 = [(TVApplicationController *)self delegate];
      [delegate2 appController:self didStopWithOptions:optionsCopy];

      _TVMLMetricsLogPublicAPIUsage(sel_appController_didStopWithOptions_);
    }

    appContext = self->_appContext;
    if (appContext == contextCopy)
    {
      self->_appContext = 0;
    }
  }
}

- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext
{
  contextCopy = context;
  inContextCopy = inContext;
  v7 = +[_TVProcessInfo currentProcessInfo];
  hasPrivateEntitlement = [v7 hasPrivateEntitlement];
  delegate = [(TVApplicationController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  v11 = hasPrivateEntitlement & [v7 hasiTunesAPIEntitlement];
  if ((v10 & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  delegate2 = [(TVApplicationController *)self delegate];
  [delegate2 appController:self evaluateAppJavaScriptInContext:inContextCopy];

  _TVMLMetricsLogPublicAPIUsage(sel_appController_evaluateAppJavaScriptInContext_);
  if (v11)
  {
    v13 = [inContextCopy objectForKeyedSubscript:@"itms"];
    toBool = [v13 toBool];

    if ((toBool & 1) == 0)
    {
LABEL_6:
      v15 = [objc_alloc(MEMORY[0x277D1B0B0]) initWithAppContext:contextCopy];
      [inContextCopy setObject:v15 forKeyedSubscript:@"itms"];
    }
  }

LABEL_7:
}

- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v10 = optionsCopy;
  if (urgency == 1)
  {
    self->_reloadOnResume = 1;
    v11 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x277D1AF08]];
    [v11 doubleValue];
    self->_reloadOnResumeMinInterval = v12;

    if (self->_reloadOnResumeMinInterval > 0.0)
    {
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults floatForKey:@"override-minSuspensionTime"];
      v15 = v14;

      if (v15 > 0.0)
      {
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        [standardUserDefaults2 floatForKey:@"override-minSuspensionTime"];
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
        hasPrivateEntitlement = [v18 hasPrivateEntitlement];

        if (hasPrivateEntitlement)
        {
          v20 = +[_TVAppLoadingView loadingScreen];
          [v20 setTimeout:60.0];

          v21 = +[_TVAppLoadingView loadingScreen];
          [v21 showOverKeyWindowWithSpinnerOnly:0];

          [(TVApplicationController *)self _resetControllerNotifications];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter addObserver:self selector:sel__reloadControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];
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
      v31 = contextCopy;
      v24 = MEMORY[0x26D6AFBB0](v30);
      currentNavigationController = [(TVAppRootViewController *)self->_appRootViewController currentNavigationController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = currentNavigationController;
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

- (void)appContext:(id)context openDynamicUIURL:(id)l metricsOverlay:(id)overlay completion:(id)completion
{
  contextCopy = context;
  lCopy = l;
  overlayCopy = overlay;
  completionCopy = completion;
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

  v25 = completionCopy;
  v26 = contextCopy;
  v16 = v15;
  _Block_object_dispose(&v28, 8);
  mEMORY[0x277D1B110] = [MEMORY[0x277D1B110] sharedCache];
  v18 = MEMORY[0x277CEE408];
  bagKeySet = [v15 bagKeySet];
  profile = [mEMORY[0x277D1B110] profile];
  profileVersion = [mEMORY[0x277D1B110] profileVersion];
  [v18 registerBagKeySet:bagKeySet forProfile:profile profileVersion:profileVersion];

  v22 = [[v15 alloc] initWithBag:mEMORY[0x277D1B110] URL:lCopy];
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  [v22 setAccount:ams_activeiTunesAccount];

  if ([overlayCopy count])
  {
    [v22 setMetricsOverlay:overlayCopy];
  }

  [v22 setDelegate:self];
  [(TVApplicationController *)self setDynamicUICompletion:v25];
  [(TVAppRootViewController *)v14 presentViewController:v22 animated:1 completion:0];
}

- (void)appContext:(id)context openMarketingItem:(id)item metricsOverlay:(id)overlay completion:(id)completion
{
  contextCopy = context;
  itemCopy = item;
  overlayCopy = overlay;
  completionCopy = completion;
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

  v26 = completionCopy;
  v27 = contextCopy;
  v16 = v15;
  _Block_object_dispose(&v29, 8);
  mEMORY[0x277D1B110] = [MEMORY[0x277D1B110] sharedCache];
  v18 = MEMORY[0x277CEE408];
  bagKeySet = [v15 bagKeySet];
  profile = [mEMORY[0x277D1B110] profile];
  profileVersion = [mEMORY[0x277D1B110] profileVersion];
  [v18 registerBagKeySet:bagKeySet forProfile:profile profileVersion:profileVersion];

  v22 = [objc_alloc(MEMORY[0x277CEE528]) initWithDictionary:itemCopy];
  v23 = [[v15 alloc] initWithMarketingItem:v22 bag:mEMORY[0x277D1B110]];
  ams_sharedAccountStore = [MEMORY[0x277CB8F48] ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  [v23 setAccount:ams_activeiTunesAccount];

  if ([overlayCopy count])
  {
    [v23 setMetricsOverlay:overlayCopy];
  }

  [v23 setDelegate:self];
  [(TVApplicationController *)self setDynamicUICompletion:v26];
  [(TVAppRootViewController *)v14 presentViewController:v23 animated:1 completion:0];
}

- (void)dynamicViewController:(id)controller didFinishCarrierLinkingWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dynamicUICompletion = [(TVApplicationController *)self dynamicUICompletion];
  if (dynamicUICompletion)
  {
    v9 = [objc_alloc(MEMORY[0x277D1B040]) initWithCarrierLinkResult:resultCopy];
    (dynamicUICompletion)[2](dynamicUICompletion, v9, errorCopy);
    [(TVApplicationController *)self setDynamicUICompletion:0];
  }
}

- (void)dynamicViewController:(id)controller didFinishWithPurchaseResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  dynamicUICompletion = [(TVApplicationController *)self dynamicUICompletion];
  if (dynamicUICompletion)
  {
    v9 = [objc_alloc(MEMORY[0x277D1B040]) initWithPurchaseResult:resultCopy];
    (dynamicUICompletion)[2](dynamicUICompletion, v9, errorCopy);
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
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
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  v3 = systemTimeZone != 0;

  return v3;
}

- (id)systemLanguage
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults arrayForKey:@"AppleLanguages"];

  firstObject = [v3 firstObject];

  return firstObject;
}

- (id)timeZone
{
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = [autoupdatingCurrentLocale objectForKey:*MEMORY[0x277CBE678]];
  timeZone = [v3 timeZone];

  return timeZone;
}

- (BOOL)appNavigationController:(id)controller shouldOverrideModalBehaviorForDocument:(id)document andExistingDocument:(id)existingDocument
{
  documentCopy = document;
  existingDocumentCopy = existingDocument;
  delegate = [(TVApplicationController *)self delegate];
  if ([delegate conformsToProtocol:&unk_287EAD8E0])
  {
    delegate2 = [(TVApplicationController *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if ((v11 & 1) == 0)
    {
      v12 = 0;
      goto LABEL_7;
    }

    delegate = [(TVApplicationController *)self delegate];
    v12 = [delegate appController:self shouldOverrideModalBehaviorForDocument:documentCopy andExistingModalDocument:existingDocumentCopy];
  }

  else
  {
    v12 = 0;
  }

LABEL_7:
  return v12;
}

- (BOOL)appNavigationController:(id)controller shouldIgnoreDismissalForViewController:(id)viewController
{
  viewControllerCopy = viewController;
  delegate = [(TVApplicationController *)self delegate];
  if ([delegate conformsToProtocol:&unk_287EAD8E0])
  {
    delegate2 = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_7;
    }

    delegate = [(TVApplicationController *)self delegate];
    v9 = [delegate appController:self shouldIgnoreDismissalForViewController:viewControllerCopy];
  }

  else
  {
    v9 = 0;
  }

LABEL_7:
  return v9;
}

- (BOOL)appNavigationController:(id)controller shouldDismissShroudForDocument:(id)document
{
  documentCopy = document;
  delegate = [(TVApplicationController *)self delegate];
  if ([delegate conformsToProtocol:&unk_287EAD8E0])
  {
    delegate2 = [(TVApplicationController *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if ((v8 & 1) == 0)
    {
      v9 = 1;
      goto LABEL_7;
    }

    delegate = [(TVApplicationController *)self delegate];
    v9 = [delegate appController:self shouldDismissShroudForDocument:documentCopy];
  }

  else
  {
    v9 = 1;
  }

LABEL_7:
  return v9;
}

- (void)setKeyTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeWeak(&self->_keyTraitEnvironment, environmentCopy);
  [(_TVMLKitApplication *)self->_application setKeyTraitEnvironment:environmentCopy];
}

- (UIView)viewServiceKeyView
{
  keyTraitEnvironment = [(TVApplicationController *)self keyTraitEnvironment];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    keyTraitEnvironment2 = [(TVApplicationController *)self keyTraitEnvironment];
  }

  else
  {
    keyTraitEnvironment2 = 0;
  }

  return keyTraitEnvironment2;
}

- (void)applicationDidResume:(id)resume
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
      appTraitCollection = [(_TVMLKitApplication *)self->_application appTraitCollection];
      [v12 setObject:appTraitCollection forKeyedSubscript:@"appTraitCollection"];

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

- (void)applicationWillSuspend:(id)suspend
{
  date = [MEMORY[0x277CBEAA8] date];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  self->_reloadOnResumeBackgroundedDate = date;

  appContext = self->_appContext;
  if (appContext)
  {
    [(IKAppContext *)appContext suspendWithOptions:0];
    self->_suspended = 1;
  }
}

+ (id)_applicationControllerForElement:(id)element
{
  appDocument = [element appDocument];
  appContext = [appDocument appContext];

  delegate = [appContext delegate];
  objc_opt_class();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [appContext delegate];
  }

  else
  {
    delegate2 = 0;
  }

  return delegate2;
}

- (void)_rootControllerDidDisplay:(id)display
{
  [(TVApplicationController *)self _resetControllerNotifications];
  if ([(NSDictionary *)self->_openURLPresentedOptions count])
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:self selector:sel__openURLControllerDidUpdate_ name:@"_TVAppDocumentDidUpdateNotification" object:0];

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

- (void)_openURLControllerHandler:(BOOL)handler
{
  if (handler)
  {
    v4 = +[_TVAppLoadingView loadingScreen];
    [v4 hide];
  }

  [(TVApplicationController *)self _resetControllerNotifications];
}

- (void)_reloadControllerDidDisplay:(id)display
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 hide];

  [(TVApplicationController *)self _resetControllerNotifications];
}

- (void)_resetControllerNotifications
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"_TVAppDocumentDidUpdateNotification" object:0];
}

- (void)_launchApp
{
  if (!self->_appContext)
  {
    javaScriptApplicationURL = [(TVApplicationControllerContext *)self->_context javaScriptApplicationURL];
    isFileURL = [javaScriptApplicationURL isFileURL];

    v6 = [objc_alloc(MEMORY[0x277D1B028]) initWithApplication:self->_application mode:isFileURL delegate:self];
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
  date = [MEMORY[0x277CBEAA8] date];
  v7 = [v4 components:128 fromDate:reloadOnResumeBackgroundedDate toDate:date options:0];

  LOBYTE(self) = self->_reloadOnResumeMinInterval <= [v7 second];
  return self;
}

- (id)_rootViewController
{
  delegate = [(TVApplicationController *)self delegate];
  if ([delegate conformsToProtocol:&unk_287EAD8E0])
  {
    v4 = delegate;
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