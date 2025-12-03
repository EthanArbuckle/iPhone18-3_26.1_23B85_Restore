@interface TVAppDelegate
+ (void)hideAppLoadingView;
+ (void)showAppLoadingViewWithTimeout:(double)timeout;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)application:(id)application openURL:(id)l options:(id)options;
- (TVAppDelegate)init;
- (id)_launchContext;
- (void)_controllerDidDisplay:(id)display;
- (void)_presetDialogWithError:(int64_t)error appController:(id)controller;
- (void)_runScrollMoveTest:(id)test;
- (void)_successTest:(id)test callback:(id)callback;
- (void)appController:(id)controller didFailWithError:(id)error;
- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context;
- (void)applicationDidEnterBackground:(id)background;
- (void)dealloc;
@end

@implementation TVAppDelegate

- (TVAppDelegate)init
{
  v3.receiver = self;
  v3.super_class = TVAppDelegate;
  return [(TVAppDelegate *)&v3 init];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TVAppDelegate;
  [(TVAppDelegate *)&v4 dealloc];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v6 = objc_alloc(MEMORY[0x277D75DA0]);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v8 = [v6 initWithFrame:?];
  window = self->_window;
  self->_window = v8;

  [(UIWindow *)self->_window makeKeyWindow];
  _launchContext = [(TVAppDelegate *)self _launchContext];
  v11 = [(TVAppDelegate *)self launchOptionsWithDefaultOptions:optionsCopy];
  if (v11)
  {
    v12 = [(TVAppDelegate *)self launchOptionsWithDefaultOptions:optionsCopy];
    v13 = [v12 mutableCopy];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  }

  v14 = [v13 copy];
  [_launchContext setLaunchOptions:v14];

  v15 = [[TVApplicationController alloc] initWithContext:_launchContext window:self->_window delegate:self];
  objc_storeStrong(&self->_appController, v15);
  _currentNavigationController = [(TVApplicationController *)self->_appController _currentNavigationController];
  viewControllers = [_currentNavigationController viewControllers];
  v18 = [viewControllers count];

  if (!v18)
  {
    v19 = +[_TVAppLoadingView loadingScreen];
    [v19 setTimeout:60.0];

    v20 = +[_TVAppLoadingView loadingScreen];
    [v20 showOverKeyWindowWithSpinnerOnly:0];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__controllerDidDisplay_ name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];
  }

  return 1;
}

- (void)applicationDidEnterBackground:(id)background
{
  if ([(TVAppDelegate *)self shouldTerminateOnEnterBackground])
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] terminateWithSuccess];
  }
}

- (BOOL)application:(id)application openURL:(id)l options:(id)options
{
  optionsCopy = options;
  lCopy = l;
  appController = [(TVAppDelegate *)self appController];
  v10 = [appController openURL:lCopy options:optionsCopy];

  return v10;
}

- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__TVAppDelegate_appController_evaluateAppJavaScriptInContext___block_invoke;
  v12[3] = &unk_279D6F228;
  objc_copyWeak(&v13, &location);
  v8 = MEMORY[0x26D6AFBB0](v12);
  [contextCopy setObject:v8 forKeyedSubscript:@"ppt_scrollMoveTest"];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__TVAppDelegate_appController_evaluateAppJavaScriptInContext___block_invoke_2;
  v10[3] = &unk_279D6F250;
  objc_copyWeak(&v11, &location);
  v9 = MEMORY[0x26D6AFBB0](v10);
  [contextCopy setObject:v9 forKeyedSubscript:@"ppt_successTest"];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __62__TVAppDelegate_appController_evaluateAppJavaScriptInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _runScrollMoveTest:v3];
}

void __62__TVAppDelegate_appController_evaluateAppJavaScriptInContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _successTest:v6 callback:v5];
}

- (void)appController:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  -[TVAppDelegate _presetDialogWithError:appController:](self, "_presetDialogWithError:appController:", [error code], controllerCopy);
}

+ (void)showAppLoadingViewWithTimeout:(double)timeout
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 setTimeout:timeout];

  v5 = +[_TVAppLoadingView loadingScreen];
  [v5 showOverKeyWindowWithSpinnerOnly:0];
}

+ (void)hideAppLoadingView
{
  v2 = +[_TVAppLoadingView loadingScreen];
  [v2 hide];
}

- (void)_runScrollMoveTest:(id)test
{
  testCopy = test;
  currentAppContext = [MEMORY[0x277D1B028] currentAppContext];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v6 = [testCopy objectForKeyedSubscript:@"heading"];
  if ([v6 isEqualToString:@"down"])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v24[3] = v7;
  v8 = [testCopy objectForKeyedSubscript:@"testName"];
  v9 = v8;
  v10 = @"subTest";
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [testCopy objectForKeyedSubscript:@"iterations"];
  if (v12)
  {
    v13 = [testCopy objectForKeyedSubscript:@"iterations"];
    intValue = [v13 intValue];
  }

  else
  {
    intValue = 1;
  }

  v15 = [testCopy objectForKeyedSubscript:@"offset"];
  if (v15)
  {
    v16 = [testCopy objectForKeyedSubscript:@"offset"];
    intValue2 = [v16 intValue];
  }

  else
  {
    intValue2 = 20;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __36__TVAppDelegate__runScrollMoveTest___block_invoke;
  v19[3] = &unk_279D6F2A0;
  v19[4] = self;
  v21 = v24;
  v18 = v11;
  v20 = v18;
  v22 = intValue;
  v23 = intValue2;
  [currentAppContext evaluateDelegateBlockSync:v19];

  _Block_object_dispose(v24, 8);
}

void __36__TVAppDelegate__runScrollMoveTest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appController];
  v3 = [v2 navigationController];
  v4 = [v3 topViewController];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 templateViewController];
  v27 = 0;
  v7 = FindTestableViewForElement(v6, &v27);
  if (!v7)
  {
    v8 = [v6 view];
    v7 = FindTestableViewForElement(v8, &v27);
  }

  v9 = v27;

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v9 isEqualToString:@"vertical"];
    v11 = 1;
    if (v10)
    {
      v11 = 2;
    }

    *(*(*(a1 + 48) + 8) + 24) = v11;
  }

  v12 = FindScrollViewFromView(v7);
  v13 = v12;
  if (v12)
  {
    v14 = *(*(*(a1 + 48) + 8) + 24);
    [v12 contentSize];
    if (v14 == 2)
    {
      v15 = v16;
    }

    v17 = fmin(v15, 5000.0);
    v18 = [MEMORY[0x277D75128] sharedApplication];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __36__TVAppDelegate__runScrollMoveTest___block_invoke_2;
    v21[3] = &unk_279D6F278;
    v22 = v13;
    v19 = *(a1 + 40);
    v25 = *(a1 + 56);
    v26 = v17;
    v20 = *(a1 + 48);
    v23 = v19;
    v24 = v20;
    [v18 installCACommitCompletionBlock:v21];
  }
}

- (void)_successTest:(id)test callback:(id)callback
{
  testCopy = test;
  callbackCopy = callback;
  currentAppContext = [MEMORY[0x277D1B028] currentAppContext];
  v9 = [testCopy objectForKeyedSubscript:@"testName"];
  v10 = v9;
  v11 = @"subTest";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__TVAppDelegate__successTest_callback___block_invoke;
  v19[3] = &unk_279D6F2F0;
  v13 = v12;
  v20 = v13;
  objc_copyWeak(&v23, &location);
  v14 = currentAppContext;
  v21 = v14;
  v15 = callbackCopy;
  v22 = v15;
  [v14 evaluateDelegateBlockSync:v19];
  if (v15)
  {
    jsContext = [v14 jsContext];
    v17 = [jsContext objectForKeyedSubscript:@"App"];
    virtualMachine = [jsContext virtualMachine];
    [virtualMachine addManagedReference:v15 withOwner:v17];
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __39__TVAppDelegate__successTest_callback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D75128] sharedApplication];
  [v4 startedTest:*(a1 + 32)];

  v5 = [MEMORY[0x277D75128] sharedApplication];
  v6 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__TVAppDelegate__successTest_callback___block_invoke_2;
  v7[3] = &unk_279D6F2C8;
  objc_copyWeak(&v10, (a1 + 56));
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  [v5 finishedTest:v6 extraResults:0 withTeardownBlock:v7];

  objc_destroyWeak(&v10);
}

void __39__TVAppDelegate__successTest_callback___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __39__TVAppDelegate__successTest_callback___block_invoke_3;
    v4[3] = &unk_279D6E748;
    v3 = *(a1 + 32);
    v5 = *(a1 + 40);
    [v3 evaluate:v4 completionBlock:0];
  }
}

void __39__TVAppDelegate__successTest_callback___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = a2;
    v5 = [v2 callWithArguments:0];
    v7 = [v4 objectForKeyedSubscript:@"App"];
    v6 = [v4 virtualMachine];

    [v6 removeManagedReference:*(a1 + 32) withOwner:v7];
  }
}

- (id)_launchContext
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(TVApplicationControllerContext);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];

  v5 = [infoDictionary objectForKey:@"TVBootURL"];
  if ([v5 length] && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v5), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v9 = [standardUserDefaults stringForKey:@"boot-url"];

    if ([v9 length])
    {
      v10 = TVMLKitLogObject;
      if (os_log_type_enabled(TVMLKitLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = v9;
        _os_log_impl(&dword_26CD9A000, v10, OS_LOG_TYPE_DEFAULT, "Overriding the boot-url to: %@", &v13, 0xCu);
      }

      v11 = [MEMORY[0x277CBEBC0] URLWithString:v9];

      v7 = v11;
    }

    [(TVApplicationControllerContext *)v2 setJavaScriptApplicationURL:v7];
  }

  else
  {
    v9 = v5;
  }

  return v2;
}

- (void)_controllerDidDisplay:(id)display
{
  v4 = +[_TVAppLoadingView loadingScreen];
  [v4 hide];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"TVAppNavigationDidDisplayViewControllerNotification" object:0];
}

- (void)_presetDialogWithError:(int64_t)error appController:(id)controller
{
  controllerCopy = controller;
  if (self->_headLess)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] terminateWithSuccess];
  }

  if (error == 2)
  {
    v7 = _TVMLLocString(@"TVAppInternetUnavailableTitle", @"Localizable");
    v8 = _TVMLLocString(@"TVAppInternetUnavailableError", @"Localizable");
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    localizedInfoDictionary = [mainBundle localizedInfoDictionary];
    v11 = [localizedInfoDictionary objectForKey:@"CFBundleName"];

    if (!v11)
    {
      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      infoDictionary = [mainBundle2 infoDictionary];
      v11 = [infoDictionary objectForKey:@"CFBundleName"];
    }

    if ([v11 length] >= 0x15)
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [v11 substringToIndex:20];
      v16 = [v14 stringWithFormat:@"%@...", v15];

      v11 = v16;
    }

    v17 = MEMORY[0x277CCACA8];
    v18 = _TVMLLocString(@"TVExternalAppFailureTitle", @"Localizable");
    v7 = [v17 stringWithFormat:v18, v11];

    v8 = _TVMLLocString(@"TVExternalAppFailureBody", @"Localizable");
  }

  v19 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  v20 = MEMORY[0x277D750F8];
  v21 = _TVMLLocString(@"TVAppOK", @"Localizable");
  v22 = [v20 actionWithTitle:v21 style:1 handler:&__block_literal_global_20];

  [v19 addAction:v22];
  [(TVAppDelegate *)self setShouldTerminateOnEnterBackground:1];
  v23 = +[_TVAppLoadingView loadingScreen];
  [v23 hide];

  [(UIWindow *)self->_window makeKeyAndVisible];
  window = controllerCopy;
  if (!controllerCopy)
  {
    window = self->_window;
  }

  rootViewController = [(UIWindow *)window rootViewController];
  [rootViewController presentViewController:v19 animated:1 completion:0];
}

void __54__TVAppDelegate__presetDialogWithError_appController___block_invoke()
{
  v3 = objc_alloc_init(MEMORY[0x277D75CE8]);
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 _mainScene];
  v2 = [MEMORY[0x277CBEB98] setWithObject:v3];
  [v1 sendActions:v2];
}

@end