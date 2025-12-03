@interface VUITVApplicationController
+ (id)_jsLaunchOptionsWithApplicationOptions:(id)options;
+ (void)initialize;
- (BOOL)_hasReloadOnResumeMinIntervalPassed;
- (BOOL)_shouldReloadOnResume;
- (BOOL)openURL:(id)l options:(id)options;
- (UITraitEnvironment)keyTraitEnvironment;
- (VUITVApplicationController)init;
- (VUITVApplicationController)initWithContext:(id)context window:(id)window delegate:(id)delegate;
- (VUITVApplicationControllerDelegate)delegate;
- (id)_currentNavigationController;
- (id)_rootViewController;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_launchApp;
- (void)_openURLControllerHandler:(BOOL)handler;
- (void)_reloadControllerDidDisplay:(id)display;
- (void)_statusBarOrientationDidChange:(id)change;
- (void)appContext:(id)context didFailWithError:(id)error;
- (void)appContext:(id)context didStartWithOptions:(id)options;
- (void)appContext:(id)context didStopWithOptions:(id)options;
- (void)appContext:(id)context evaluateAppJavaScriptInContext:(id)inContext;
- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options;
- (void)appContext:(id)context scriptForURL:(id)l cachePolicy:(unint64_t)policy completion:(id)completion;
- (void)applicationDidResume:(id)resume;
- (void)applicationWillSuspend:(id)suspend;
- (void)dealloc;
- (void)evaluateInJavaScriptContext:(id)context completion:(id)completion;
- (void)registerForApplicationNotifications;
- (void)setKeyTraitEnvironment:(id)environment;
- (void)stop;
@end

@implementation VUITVApplicationController

+ (void)initialize
{
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "VUITVApplicationController - init", v3, 2u);
  }
}

- (id)_rootViewController
{
  delegate = [(VUITVApplicationController *)self delegate];
  if (!delegate || (objc_opt_respondsToSelector() & 1) == 0 || ([delegate rootViewControllerForAppController:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = objc_alloc_init(_VUITVAppNavigationController);
  }

  return v4;
}

- (VUITVApplicationControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_launchApp
{
  if (!self->_appContext)
  {
    v11 = v2;
    v12 = v3;
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUITVApplicationController - _launchApp", v10, 2u);
    }

    javaScriptApplicationURL = [(VUITVApplicationControllerContext *)self->_context javaScriptApplicationURL];
    isFileURL = [javaScriptApplicationURL isFileURL];

    v8 = [[VUIAppContext alloc] initWithApplication:self->_application mode:isFileURL delegate:self];
    appContext = self->_appContext;
    self->_appContext = v8;

    [(VUIAppContext *)self->_appContext start];
  }
}

- (void)registerForApplicationNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DF7D8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x1E69DF7F0] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__applicationWillTerminateNotification_ name:*MEMORY[0x1E69DF7F8] object:0];

  self->_interfaceOrientation = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__statusBarOrientationDidChange_ name:*MEMORY[0x1E69DDAC0] object:0];
}

+ (id)_jsLaunchOptionsWithApplicationOptions:(id)options
{
  optionsCopy = options;
  v4 = objc_opt_new();
  if ([optionsCopy count])
  {
    v5 = [optionsCopy mutableCopy];
    v6 = *MEMORY[0x1E69DDB28];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];
    v8 = v7;
    if (v7)
    {
      absoluteString = [v7 absoluteString];
      [v4 setObject:absoluteString forKeyedSubscript:@"openURL"];

      v10 = *MEMORY[0x1E69DDB20];
      v11 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDB20]];
      if (v11)
      {
        [v4 setObject:v11 forKeyedSubscript:@"sourceAppIdentifier"];
      }
    }

    else
    {
      v10 = *MEMORY[0x1E69DDB20];
    }

    [v4 addEntriesFromDictionary:v5];
    [v4 removeObjectForKey:v6];
    [v4 removeObjectForKey:v10];
  }

  v12 = [v4 copy];

  return v12;
}

- (VUITVApplicationController)init
{
  [(VUITVApplicationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VUITVApplicationController)initWithContext:(id)context window:(id)window delegate:(id)delegate
{
  contextCopy = context;
  windowCopy = window;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = VUITVApplicationController;
  v11 = [(VUITVApplicationController *)&v28 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 41) = 0;
    v13 = *(v11 + 4);
    *(v11 + 4) = 0;

    objc_storeStrong(&v12->_window, window);
    objc_storeWeak(&v12->_delegate, delegateCopy);
    v14 = [contextCopy copy];
    context = v12->_context;
    v12->_context = v14;

    _rootViewController = [(VUITVApplicationController *)v12 _rootViewController];
    appRootViewController = v12->_appRootViewController;
    v12->_appRootViewController = _rootViewController;

    window = v12->_window;
    if (window)
    {
      [(UIWindow *)window vui_setRootViewController:v12->_appRootViewController];
      [(UIWindow *)v12->_window vui_makeKeyAndVisible];
    }

    v19 = [[_VUICoreApplication alloc] initWithLaunchContext:v12->_context];
    application = v12->_application;
    v12->_application = v19;

    v21 = v12->_application;
    v22 = objc_opt_class();
    launchOptions = [(VUITVApplicationControllerContext *)v12->_context launchOptions];
    v24 = [v22 _jsLaunchOptionsWithApplicationOptions:launchOptions];
    [(_VUICoreApplication *)v21 setJavaScriptLaunchOptions:v24];

    [(_VUICoreApplication *)v12->_application setKeyWindow:windowCopy];
    launchOptions2 = [(VUITVApplicationControllerContext *)v12->_context launchOptions];
    v26 = [launchOptions2 objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];

    if (v26)
    {
      v12->_doLaunchOpenURLHandling = 1;
    }

    [(VUITVApplicationController *)v12 _launchApp];
    [(VUITVApplicationController *)v12 registerForApplicationNotifications];
  }

  return v12;
}

- (void)dealloc
{
  [(VUITVApplicationController *)self stop];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUITVApplicationController;
  [(VUITVApplicationController *)&v4 dealloc];
}

- (void)stop
{
  [(VUIAppContext *)self->_appContext stop];
  appContext = self->_appContext;
  self->_appContext = 0;
}

- (BOOL)openURL:(id)l options:(id)options
{
  lCopy = l;
  optionsCopy = options;
  if (!lCopy)
  {
    goto LABEL_23;
  }

  v8 = objc_opt_new();
  absoluteString = [lCopy absoluteString];
  [v8 setObject:absoluteString forKeyedSubscript:@"openURL"];

  v10 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69DDB20]];

  v11 = *MEMORY[0x1E69DDB68];
  v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E69DDB68]];
  v13 = v12;
  if (v10)
  {
    goto LABEL_5;
  }

  if (v13)
  {
    v13 = [optionsCopy objectForKeyedSubscript:v11];
LABEL_5:
    [v8 setObject:v13 forKeyedSubscript:@"sourceAppIdentifier"];
  }

  if ([(VUIAppContext *)self->_appContext isValid])
  {
    if (!self->_doLaunchOpenURLHandling)
    {
      delegate = [(VUITVApplicationController *)self delegate];
      if (delegate && (objc_opt_respondsToSelector() & 1) != 0 && ![delegate appController:self shouldDisplayShroudForURL:lCopy withOptions:optionsCopy])
      {
        v28 = +[VUIAppLoadingView loadingScreen];
        [v28 setTimeout:20.0];

        v29 = +[VUIAppLoadingView loadingScreen];
        [v29 setLoadingDelay:2.0];

        v15 = +[VUIAppLoadingView loadingScreen];
        [v15 showOverKeyWindowWithSpinnerOnly:0];
      }

      else
      {
        v15 = +[VUIStorePlaybackLaunchShroud sharedShroud];
        [v15 setHidden:0 animated:1 withCompletionHandler:0];
      }

      _currentNavigationController = [(VUITVApplicationController *)self _currentNavigationController];
      presentedViewController = [_currentNavigationController presentedViewController];

      if (presentedViewController)
      {
        [_currentNavigationController dismissViewControllerAnimated:1 completion:0];
      }

      rootViewController = [(VUITVApplicationController *)self rootViewController];
      presentedViewController2 = [rootViewController presentedViewController];

      if (presentedViewController2)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [presentedViewController2 popToRootViewControllerAnimated:0];
        }

        rootViewController2 = [(VUITVApplicationController *)self rootViewController];
        [rootViewController2 dismissViewControllerAnimated:0 completion:0];
      }

      v22 = [_currentNavigationController popToRootViewControllerAnimated:0];
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
    }

    self->_doLaunchOpenURLHandling = 0;
  }

  else if (self->_doLaunchOpenURLHandling)
  {
    v25 = [v8 copy];
    launchOpenURLOptions = self->_launchOpenURLOptions;
    self->_launchOpenURLOptions = v25;
  }

LABEL_23:
  return lCopy != 0;
}

- (void)evaluateInJavaScriptContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  appContext = self->_appContext;
  if (appContext)
  {
    [(VUIAppContext *)appContext evaluate:contextCopy completionBlock:completionCopy completionQueue:0];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  if (self->_popViewControllerOnBackground)
  {
    vuiNavigationController = [(VUITVAppRootViewController *)self->_appRootViewController vuiNavigationController];
    v5 = [vuiNavigationController popViewControllerAnimated:0];

    self->_popViewControllerOnBackground = 0;
  }
}

- (void)_statusBarOrientationDidChange:(id)change
{
  statusBarOrientation = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  if (statusBarOrientation != self->_interfaceOrientation)
  {
    self->_interfaceOrientation = statusBarOrientation;
  }
}

- (void)appContext:(id)context didStartWithOptions:(id)options
{
  optionsCopy = options;
  contextCopy = context;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context didStartWithOptions", v13, 2u);
  }

  +[_TtC8VideosUI8VideosUI fetchUMConfigurations];
  appContext = self->_appContext;

  if (appContext == contextCopy && !self->_reloadInProgress)
  {
    delegate = [(VUITVApplicationController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate appController:self didFinishLaunchingWithOptions:optionsCopy];
    }
  }

  if (self->_doLaunchOpenURLHandling)
  {
    [(NSDictionary *)self->_launchOpenURLOptions count];
    launchOpenURLOptions = self->_launchOpenURLOptions;
    self->_launchOpenURLOptions = 0;

    self->_doLaunchOpenURLHandling = 0;
  }

  else if (self->_reloadInProgress)
  {
    *&self->_reloadInProgress = 0;
    openURLReloadOptions = self->_openURLReloadOptions;
    if (openURLReloadOptions)
    {
      self->_openURLReloadOptions = 0;
    }
  }
}

- (void)appContext:(id)context didFailWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  appContext = self->_appContext;
  if (appContext == context)
  {
    self->_appContext = 0;

    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = errorCopy;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context Failed with Error: %@", &v11, 0xCu);
    }

    delegate = [(VUITVApplicationController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:3 userInfo:0];
      [delegate appController:self didFailWithError:v10];
    }
  }
}

- (void)appContext:(id)context didStopWithOptions:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context didStopWithOptions", v11, 2u);
  }

  if (!self->_reloadInProgress)
  {
    delegate = [(VUITVApplicationController *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate appController:self didStopWithOptions:optionsCopy];
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
  inContextCopy = inContext;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUITVApplicationController - evaluateAppJavaScriptInContext", v8, 2u);
  }

  delegate = [(VUITVApplicationController *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate appController:self evaluateAppJavaScriptInContext:inContextCopy];
  }
}

- (void)appContext:(id)context needsReloadWithUrgency:(unint64_t)urgency options:(id)options
{
  contextCopy = context;
  optionsCopy = options;
  if (!+[VUIUtilities isInFullscreenOrPipPlayback])
  {
    if (urgency == 1)
    {
      self->_reloadOnResume = 1;
      v10 = [optionsCopy objectForKeyedSubscript:@"VUIAppReloadUrgencyMinSuspensionTime"];
      [v10 doubleValue];
      self->_reloadOnResumeMinInterval = v11;

      if (self->_reloadOnResumeMinInterval > 0.0)
      {
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults floatForKey:@"override-minSuspensionTime"];
        v14 = v13;

        if (v14 > 0.0)
        {
          standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
          [standardUserDefaults2 floatForKey:@"override-minSuspensionTime"];
          self->_reloadOnResumeMinInterval = v16;
        }
      }
    }

    else
    {
      if (self->_reloadOnResume)
      {
        if (!self->_reloadOnResumeBackgroundedDate || self->_reloadOnResumeMinInterval <= 0.0)
        {
          goto LABEL_12;
        }

        if (![(VUITVApplicationController *)self _hasReloadOnResumeMinIntervalPassed])
        {
          goto LABEL_2;
        }

        if (self->_reloadOnResume)
        {
LABEL_12:
          v17 = +[VUIAppLoadingView loadingScreen];
          [v17 setTimeout:60.0];

          v18 = +[VUIAppLoadingView loadingScreen];
          [v18 showOverKeyWindowWithSpinnerOnly:0];

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];

          defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter2 addObserver:self selector:sel__reloadControllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
        }
      }

      self->_reloadOnResume = 0;
      reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
      self->_reloadOnResumeMinInterval = 0.0;
      self->_reloadOnResumeBackgroundedDate = 0;

      if (!self->_reloadInProgress)
      {
        objc_initWeak(&location, self);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __72__VUITVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke;
        aBlock[3] = &unk_1E872F038;
        objc_copyWeak(&v30, &location);
        v29 = contextCopy;
        v22 = _Block_copy(aBlock);
        _currentNavigationController = [(VUITVApplicationController *)self _currentNavigationController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = _currentNavigationController;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;
        if (v25)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __72__VUITVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke_68;
          v26[3] = &unk_1E872D7E0;
          v27 = v22;
          [v25 dismissAllModals:v26];
        }

        else
        {
          v22[2](v22);
        }

        objc_destroyWeak(&v30);
        objc_destroyWeak(&location);
      }
    }
  }

LABEL_2:
}

void __72__VUITVApplicationController_appContext_needsReloadWithUrgency_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _rootViewController];
    v5 = *(v3 + 11);
    *(v3 + 11) = v4;

    [*(v3 + 13) vui_setRootViewController:*(v3 + 11)];
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [*(v3 + 2) javaScriptLaunchOptions];
    v8 = [v7 count];

    if (v8)
    {
      v9 = [*(v3 + 2) javaScriptLaunchOptions];
      [v6 addEntriesFromDictionary:v9];

      [v6 removeObjectForKey:@"openURL"];
    }

    if ([*(v3 + 4) count])
    {
      v10 = [*(v3 + 4) objectForKey:@"openURL"];
      [v6 setObject:v10 forKeyedSubscript:@"openURL"];
    }

    [v6 setObject:@"reload" forKeyedSubscript:@"launchContext"];
    [*(v3 + 2) setJavaScriptLaunchOptions:v6];
    *(v3 + 41) = 1;
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITVApplicationController - reload js application", v12, 2u);
    }

    [*(a1 + 32) reload];
  }
}

- (void)appContext:(id)context scriptForURL:(id)l cachePolicy:(unint64_t)policy completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "VUITVApplicationController - fetchAppJavascript", v12, 2u);
  }

  v11 = +[VUIAppScriptDownloadManager sharedInstance];
  [v11 fetchAppJavascript:lCopy cachePolicy:policy completionHandler:completionCopy];
}

- (void)applicationDidResume:(id)resume
{
  suspended = self->_suspended;
  self->_suspended = 0;
  if (suspended)
  {
    v9 = self->_openURLResumeOptions;
    openURLResumeOptions = self->_openURLResumeOptions;
    self->_openURLResumeOptions = 0;

    if ([(VUITVApplicationController *)self _shouldReloadOnResume])
    {
      v7 = [(NSDictionary *)v9 copy];
      openURLReloadOptions = self->_openURLReloadOptions;
      self->_openURLReloadOptions = v7;

      [(VUITVApplicationController *)self appContext:self->_appContext needsReloadWithUrgency:0 options:0];
    }

    else
    {
      [(VUIAppContext *)self->_appContext resumeWithOptions:v9];
    }
  }
}

- (void)applicationWillSuspend:(id)suspend
{
  date = [MEMORY[0x1E695DF00] date];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  self->_reloadOnResumeBackgroundedDate = date;

  appContext = self->_appContext;
  if (appContext)
  {
    [(VUIAppContext *)appContext suspendWithOptions:0];
    self->_suspended = 1;
  }
}

- (id)_currentNavigationController
{
  if (objc_opt_respondsToSelector())
  {
    currentNavigationController = [(VUITVAppRootViewController *)self->_appRootViewController currentNavigationController];
  }

  else
  {
    currentNavigationController = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  }

  return currentNavigationController;
}

- (void)_openURLControllerHandler:(BOOL)handler
{
  handlerCopy = handler;
  _currentNavigationController = [(VUITVApplicationController *)self _currentNavigationController];
  viewControllers = [_currentNavigationController viewControllers];
  v7 = [viewControllers count];

  if (v7 < 2)
  {
    if (!handlerCopy)
    {
      return;
    }

    defaultCenter = +[VUIAppLoadingView loadingScreen];
    [defaultCenter hide];
  }

  else
  {
    if (handlerCopy)
    {
      v8 = +[VUIAppLoadingView loadingScreen];
      [v8 hide];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
  }
}

- (void)_reloadControllerDidDisplay:(id)display
{
  v4 = +[VUIAppLoadingView loadingScreen];
  [v4 hide];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
}

- (BOOL)_shouldReloadOnResume
{
  if (!self->_reloadOnResume)
  {
    return 0;
  }

  if (self->_reloadOnResumeBackgroundedDate && self->_reloadOnResumeMinInterval > 0.0)
  {
    return [(VUITVApplicationController *)self _hasReloadOnResumeMinIntervalPassed];
  }

  return 1;
}

- (BOOL)_hasReloadOnResumeMinIntervalPassed
{
  v3 = objc_alloc(MEMORY[0x1E695DEE8]);
  v4 = [v3 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  date = [MEMORY[0x1E695DF00] date];
  v7 = [v4 components:128 fromDate:reloadOnResumeBackgroundedDate toDate:date options:0];

  LOBYTE(self) = self->_reloadOnResumeMinInterval <= [v7 second];
  return self;
}

- (void)setKeyTraitEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeWeak(&self->_keyTraitEnvironment, environmentCopy);
  [(_VUICoreApplication *)self->_application setKeyTraitEnvironment:environmentCopy];
}

- (UITraitEnvironment)keyTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_keyTraitEnvironment);

  return WeakRetained;
}

@end