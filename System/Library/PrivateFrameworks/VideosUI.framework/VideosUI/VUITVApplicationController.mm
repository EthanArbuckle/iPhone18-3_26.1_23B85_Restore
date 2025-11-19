@interface VUITVApplicationController
+ (id)_jsLaunchOptionsWithApplicationOptions:(id)a3;
+ (void)initialize;
- (BOOL)_hasReloadOnResumeMinIntervalPassed;
- (BOOL)_shouldReloadOnResume;
- (BOOL)openURL:(id)a3 options:(id)a4;
- (UITraitEnvironment)keyTraitEnvironment;
- (VUITVApplicationController)init;
- (VUITVApplicationController)initWithContext:(id)a3 window:(id)a4 delegate:(id)a5;
- (VUITVApplicationControllerDelegate)delegate;
- (id)_currentNavigationController;
- (id)_rootViewController;
- (void)_applicationDidEnterBackgroundNotification:(id)a3;
- (void)_launchApp;
- (void)_openURLControllerHandler:(BOOL)a3;
- (void)_reloadControllerDidDisplay:(id)a3;
- (void)_statusBarOrientationDidChange:(id)a3;
- (void)appContext:(id)a3 didFailWithError:(id)a4;
- (void)appContext:(id)a3 didStartWithOptions:(id)a4;
- (void)appContext:(id)a3 didStopWithOptions:(id)a4;
- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4;
- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5;
- (void)appContext:(id)a3 scriptForURL:(id)a4 cachePolicy:(unint64_t)a5 completion:(id)a6;
- (void)applicationDidResume:(id)a3;
- (void)applicationWillSuspend:(id)a3;
- (void)dealloc;
- (void)evaluateInJavaScriptContext:(id)a3 completion:(id)a4;
- (void)registerForApplicationNotifications;
- (void)setKeyTraitEnvironment:(id)a3;
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
  v3 = [(VUITVApplicationController *)self delegate];
  if (!v3 || (objc_opt_respondsToSelector() & 1) == 0 || ([v3 rootViewControllerForAppController:self], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
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

    v6 = [(VUITVApplicationControllerContext *)self->_context javaScriptApplicationURL];
    v7 = [v6 isFileURL];

    v8 = [[VUIAppContext alloc] initWithApplication:self->_application mode:v7 delegate:self];
    appContext = self->_appContext;
    self->_appContext = v8;

    [(VUIAppContext *)self->_appContext start];
  }
}

- (void)registerForApplicationNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__applicationDidBecomeActiveNotification_ name:*MEMORY[0x1E69DF7D8] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__applicationDidEnterBackgroundNotification_ name:*MEMORY[0x1E69DF7E0] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__applicationWillResignActiveNotification_ name:*MEMORY[0x1E69DF7F0] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__applicationWillTerminateNotification_ name:*MEMORY[0x1E69DF7F8] object:0];

  self->_interfaceOrientation = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__statusBarOrientationDidChange_ name:*MEMORY[0x1E69DDAC0] object:0];
}

+ (id)_jsLaunchOptionsWithApplicationOptions:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  if ([v3 count])
  {
    v5 = [v3 mutableCopy];
    v6 = *MEMORY[0x1E69DDB28];
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 absoluteString];
      [v4 setObject:v9 forKeyedSubscript:@"openURL"];

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

- (VUITVApplicationController)initWithContext:(id)a3 window:(id)a4 delegate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v28.receiver = self;
  v28.super_class = VUITVApplicationController;
  v11 = [(VUITVApplicationController *)&v28 init];
  v12 = v11;
  if (v11)
  {
    *(v11 + 41) = 0;
    v13 = *(v11 + 4);
    *(v11 + 4) = 0;

    objc_storeStrong(&v12->_window, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v14 = [v8 copy];
    context = v12->_context;
    v12->_context = v14;

    v16 = [(VUITVApplicationController *)v12 _rootViewController];
    appRootViewController = v12->_appRootViewController;
    v12->_appRootViewController = v16;

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
    v23 = [(VUITVApplicationControllerContext *)v12->_context launchOptions];
    v24 = [v22 _jsLaunchOptionsWithApplicationOptions:v23];
    [(_VUICoreApplication *)v21 setJavaScriptLaunchOptions:v24];

    [(_VUICoreApplication *)v12->_application setKeyWindow:v9];
    v25 = [(VUITVApplicationControllerContext *)v12->_context launchOptions];
    v26 = [v25 objectForKeyedSubscript:*MEMORY[0x1E69DDB28]];

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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

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

- (BOOL)openURL:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = objc_opt_new();
  v9 = [v6 absoluteString];
  [v8 setObject:v9 forKeyedSubscript:@"openURL"];

  v10 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDB20]];

  v11 = *MEMORY[0x1E69DDB68];
  v12 = [v7 objectForKeyedSubscript:*MEMORY[0x1E69DDB68]];
  v13 = v12;
  if (v10)
  {
    goto LABEL_5;
  }

  if (v13)
  {
    v13 = [v7 objectForKeyedSubscript:v11];
LABEL_5:
    [v8 setObject:v13 forKeyedSubscript:@"sourceAppIdentifier"];
  }

  if ([(VUIAppContext *)self->_appContext isValid])
  {
    if (!self->_doLaunchOpenURLHandling)
    {
      v14 = [(VUITVApplicationController *)self delegate];
      if (v14 && (objc_opt_respondsToSelector() & 1) != 0 && ![v14 appController:self shouldDisplayShroudForURL:v6 withOptions:v7])
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

      v16 = [(VUITVApplicationController *)self _currentNavigationController];
      v17 = [v16 presentedViewController];

      if (v17)
      {
        [v16 dismissViewControllerAnimated:1 completion:0];
      }

      v18 = [(VUITVApplicationController *)self rootViewController];
      v19 = [v18 presentedViewController];

      if (v19)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [v19 popToRootViewControllerAnimated:0];
        }

        v21 = [(VUITVApplicationController *)self rootViewController];
        [v21 dismissViewControllerAnimated:0 completion:0];
      }

      v22 = [v16 popToRootViewControllerAnimated:0];
      v23 = [MEMORY[0x1E696AD88] defaultCenter];
      [v23 removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];

      v24 = [MEMORY[0x1E696AD88] defaultCenter];
      [v24 addObserver:self selector:sel__openURLControllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
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
  return v6 != 0;
}

- (void)evaluateInJavaScriptContext:(id)a3 completion:(id)a4
{
  v8 = a3;
  v6 = a4;
  appContext = self->_appContext;
  if (appContext)
  {
    [(VUIAppContext *)appContext evaluate:v8 completionBlock:v6 completionQueue:0];
  }

  else if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)a3
{
  if (self->_popViewControllerOnBackground)
  {
    v4 = [(VUITVAppRootViewController *)self->_appRootViewController vuiNavigationController];
    v5 = [v4 popViewControllerAnimated:0];

    self->_popViewControllerOnBackground = 0;
  }
}

- (void)_statusBarOrientationDidChange:(id)a3
{
  v4 = [*MEMORY[0x1E69DDA98] statusBarOrientation];
  if (v4 != self->_interfaceOrientation)
  {
    self->_interfaceOrientation = v4;
  }
}

- (void)appContext:(id)a3 didStartWithOptions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context didStartWithOptions", v13, 2u);
  }

  +[_TtC8VideosUI8VideosUI fetchUMConfigurations];
  appContext = self->_appContext;

  if (appContext == v7 && !self->_reloadInProgress)
  {
    v10 = [(VUITVApplicationController *)self delegate];
    if (v10 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v10 appController:self didFinishLaunchingWithOptions:v6];
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

- (void)appContext:(id)a3 didFailWithError:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a4;
  appContext = self->_appContext;
  if (appContext == a3)
  {
    self->_appContext = 0;

    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context Failed with Error: %@", &v11, 0xCu);
    }

    v9 = [(VUITVApplicationController *)self delegate];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69DF888] code:3 userInfo:0];
      [v9 appController:self didFailWithError:v10];
    }
  }
}

- (void)appContext:(id)a3 didStopWithOptions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUITVApplicationController - App Context didStopWithOptions", v11, 2u);
  }

  if (!self->_reloadInProgress)
  {
    v9 = [(VUITVApplicationController *)self delegate];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v9 appController:self didStopWithOptions:v7];
    }

    appContext = self->_appContext;
    if (appContext == v6)
    {
      self->_appContext = 0;
    }
  }
}

- (void)appContext:(id)a3 evaluateAppJavaScriptInContext:(id)a4
{
  v5 = a4;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUITVApplicationController - evaluateAppJavaScriptInContext", v8, 2u);
  }

  v7 = [(VUITVApplicationController *)self delegate];
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 appController:self evaluateAppJavaScriptInContext:v5];
  }
}

- (void)appContext:(id)a3 needsReloadWithUrgency:(unint64_t)a4 options:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!+[VUIUtilities isInFullscreenOrPipPlayback])
  {
    if (a4 == 1)
    {
      self->_reloadOnResume = 1;
      v10 = [v9 objectForKeyedSubscript:@"VUIAppReloadUrgencyMinSuspensionTime"];
      [v10 doubleValue];
      self->_reloadOnResumeMinInterval = v11;

      if (self->_reloadOnResumeMinInterval > 0.0)
      {
        v12 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v12 floatForKey:@"override-minSuspensionTime"];
        v14 = v13;

        if (v14 > 0.0)
        {
          v15 = [MEMORY[0x1E695E000] standardUserDefaults];
          [v15 floatForKey:@"override-minSuspensionTime"];
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

          v19 = [MEMORY[0x1E696AD88] defaultCenter];
          [v19 removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];

          v20 = [MEMORY[0x1E696AD88] defaultCenter];
          [v20 addObserver:self selector:sel__reloadControllerDidDisplay_ name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
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
        v29 = v8;
        v22 = _Block_copy(aBlock);
        v23 = [(VUITVApplicationController *)self _currentNavigationController];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
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

- (void)appContext:(id)a3 scriptForURL:(id)a4 cachePolicy:(unint64_t)a5 completion:(id)a6
{
  v8 = a6;
  v9 = a4;
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "VUITVApplicationController - fetchAppJavascript", v12, 2u);
  }

  v11 = +[VUIAppScriptDownloadManager sharedInstance];
  [v11 fetchAppJavascript:v9 cachePolicy:a5 completionHandler:v8];
}

- (void)applicationDidResume:(id)a3
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

- (void)applicationWillSuspend:(id)a3
{
  v4 = [MEMORY[0x1E695DF00] date];
  reloadOnResumeBackgroundedDate = self->_reloadOnResumeBackgroundedDate;
  self->_reloadOnResumeBackgroundedDate = v4;

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
    v3 = [(VUITVAppRootViewController *)self->_appRootViewController currentNavigationController];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DCCD8]);
  }

  return v3;
}

- (void)_openURLControllerHandler:(BOOL)a3
{
  v3 = a3;
  v5 = [(VUITVApplicationController *)self _currentNavigationController];
  v6 = [v5 viewControllers];
  v7 = [v6 count];

  if (v7 < 2)
  {
    if (!v3)
    {
      return;
    }

    v9 = +[VUIAppLoadingView loadingScreen];
    [v9 hide];
  }

  else
  {
    if (v3)
    {
      v8 = +[VUIAppLoadingView loadingScreen];
      [v8 hide];
    }

    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
  }
}

- (void)_reloadControllerDidDisplay:(id)a3
{
  v4 = +[VUIAppLoadingView loadingScreen];
  [v4 hide];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:@"VUITVAppNavigationDidDisplayViewControllerNotification" object:0];
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
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [v4 components:128 fromDate:reloadOnResumeBackgroundedDate toDate:v6 options:0];

  LOBYTE(self) = self->_reloadOnResumeMinInterval <= [v7 second];
  return self;
}

- (void)setKeyTraitEnvironment:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_keyTraitEnvironment, v4);
  [(_VUICoreApplication *)self->_application setKeyTraitEnvironment:v4];
}

- (UITraitEnvironment)keyTraitEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_keyTraitEnvironment);

  return WeakRetained;
}

@end