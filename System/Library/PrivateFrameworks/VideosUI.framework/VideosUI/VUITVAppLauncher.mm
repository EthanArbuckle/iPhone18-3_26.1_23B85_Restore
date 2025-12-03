@interface VUITVAppLauncher
+ (BOOL)_isDeeplinkTVButton:(id)button;
+ (BOOL)_isRunningState:(id)state;
+ (BOOL)isDeeplinkTVButton:(id)button;
+ (BOOL)isRemoteServerConnected;
+ (BOOL)isRemoteServerLikelyReachable;
+ (BOOL)isSidebarEnabled;
+ (id)_libraryOnlyTabBarItem;
+ (id)sharedInstance;
- (BOOL)_isActiveMediaLibraryTheDeviceMediaLibrary;
- (BOOL)_shouldRecordExitEvent;
- (BOOL)applicationDidFinishLaunchingWithOptions:(id)options;
- (BOOL)applicationWillFinishLaunchingWithOptions:(id)options;
- (BOOL)didProcessAppFinishLoading;
- (BOOL)isAppRunning;
- (BOOL)isAppRunningWithJS;
- (BOOL)isAppRunningWithoutJS;
- (BOOL)isStillProcessingStartupItems;
- (BOOL)openURL:(id)l options:(id)options;
- (VUIRootSplitViewController)splitViewController;
- (VUITVAppLauncher)init;
- (VUITabBarProtocol)tabBarController;
- (id)_dialogMetricsForGDPR;
- (id)rootViewController;
- (id)rootViewControllerForAppController:(id)controller;
- (void)_accountsChanged:(id)changed;
- (void)_applicationDidBecomeActiveNotification:(id)notification;
- (void)_applicationDidEnterBackgroundNotification:(id)notification;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillTerminateNotification:(id)notification;
- (void)_configureStateMachine;
- (void)_fetchApplicationControllerBootURL;
- (void)_fetchFullFeatureFlag:(id)flag;
- (void)_finishAppLoading;
- (void)_finishApplicationControllerWithLaunchContext:(id)context completion:(id)completion;
- (void)_handleAMSEngagementSheetPresentation:(BOOL)presentation;
- (void)_handleDeferredParsedOpenURLIfNeeded;
- (void)_handleNetworkReachabilityDidChangeNotification:(id)notification;
- (void)_handleOfferProcessingDidFinishNotification:(id)notification;
- (void)_handleOfferProcessingDidStartNotification:(id)notification;
- (void)_handleParsedOpenURL:(id)l;
- (void)_handlePrewarmSubscriptionDataNotification:(id)notification;
- (void)_handleRemoteNetworkReachabilityDidChangeNotification:(id)notification;
- (void)_initializeBookmarkService;
- (void)_initializeMediaLibrary;
- (void)_initializePlayer;
- (void)_isLibraryOnlyCountryChanged:(id)changed;
- (void)_javascriptSetTabBarItems:(id)items;
- (void)_registerStateMachineHandlers;
- (void)_resetJavascriptState;
- (void)_retrieveSportsTabIdentifierFromTabBarItems:(id)items;
- (void)_showJavascriptUnavailableUIWithNetworkAvailable:(BOOL)available;
- (void)_startApplicationControllerWithBootURL:(id)l completion:(id)completion;
- (void)_startJavascriptSetup;
- (void)_stopApplicationController;
- (void)_syncBookmarkServiceIfRequired;
- (void)_updateDeviceMediaLibraryFromCloud;
- (void)_updateTabControllerWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults;
- (void)appController:(id)controller didFailWithError:(id)error;
- (void)appController:(id)controller didFinishLaunchingWithOptions:(id)options;
- (void)appController:(id)controller didStopWithOptions:(id)options;
- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context;
- (void)cleanUp;
- (void)configureAppWindow;
- (void)didAcceptGDPRWelcome;
- (void)didFailToLaunch:(id)launch;
- (void)didShowGDPRWelcome;
- (void)prewarmOnMainWithPrefetchSelectedPage:(BOOL)page;
- (void)prewarmPostAppDidFinishLaunching;
- (void)processStartupItems;
- (void)refreshTabBarItems;
- (void)registerForApplicationNotifications;
- (void)selectTabBarItem:(id)item;
- (void)setDidProcessAppFinishLoading:(BOOL)loading;
- (void)setIsStillProcessingStartupItems:(BOOL)items;
- (void)setMainWindow:(id)window;
- (void)showLoadingView;
- (void)updateAppAppearance;
@end

@implementation VUITVAppLauncher

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__VUITVAppLauncher_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_35 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_35, block);
  }

  v2 = sharedInstance_sSharedInstance_2;

  return v2;
}

void __34__VUITVAppLauncher_sharedInstance__block_invoke()
{
  v0 = VUISignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.Init", "", buf, 2u);
  }

  v1 = objc_alloc_init(objc_opt_class());
  v2 = sharedInstance_sSharedInstance_2;
  sharedInstance_sSharedInstance_2 = v1;

  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.Init", "", v4, 2u);
  }
}

- (VUITVAppLauncher)init
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - initialized.", buf, 2u);
  }

  VUIRequireMainThread();
  v20.receiver = self;
  v20.super_class = VUITVAppLauncher;
  v4 = [(VUITVAppLauncher *)&v20 init];
  if (v4)
  {
    v5 = VUISignpostLogObject();
    if (os_signpost_enabled(v5))
    {
      LOWORD(buf[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PerceivedLaunch", "", buf, 2u);
    }

    v4->_startupPrewarmSubscriptionDataCompleted = 0;
    v6 = dispatch_get_global_queue(0, 0);
    dispatch_async(v6, &__block_literal_global_150);

    v7 = [objc_alloc(MEMORY[0x1E69DF790]) initWithName:@"VUITVAppLauncher_StateMachine" initialState:@"Idle" mode:0 stateChangeHandler:&__block_literal_global_195];
    stateMachine = v4->_stateMachine;
    v4->_stateMachine = v7;

    [(VUITVAppLauncher *)v4 _configureStateMachine];
    v4->_isTerminating = 0;
    v4->_isStillProcessingStartupItems = 0;
    v4->_isStillProcessingStartupItemsLock._os_unfair_lock_opaque = 0;
    v4->_didProcessAppFinishLoading = 0;
    v4->_didProcessAppFinishLoadingLock._os_unfair_lock_opaque = 0;
    date = [MEMORY[0x1E695DF00] date];
    appLaunchDate = v4->_appLaunchDate;
    v4->_appLaunchDate = date;

    v4->_firstBecomeActiveSinceColdLaunch = 1;
    objc_initWeak(buf, v4);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __24__VUITVAppLauncher_init__block_invoke_3;
    v17[3] = &unk_1E87368F0;
    objc_copyWeak(&v18, buf);
    [(VUITVAppLauncher *)v4 setSwitchTabHandler:v17];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __24__VUITVAppLauncher_init__block_invoke_4;
    v15 = &unk_1E8736918;
    objc_copyWeak(&v16, buf);
    [(VUITVAppLauncher *)v4 setDeeplinkCompletionHandler:&v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  [(VUITVAppLauncher *)v4 registerForApplicationNotifications:v12];
  return v4;
}

- (void)_configureStateMachine
{
  [(VUITVAppLauncher *)self _registerStateMachineHandlers];
  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  v3 = VUIDefaultLogObject();
  [stateMachine setLogObject:v3];

  [stateMachine logUnhandledEvents];
  [stateMachine setShouldAcceptEvents:1];
}

- (void)_registerStateMachineHandlers
{
  v82[2] = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2;
  aBlock[3] = &unk_1E8731090;
  v77 = &__block_literal_global_265;
  objc_copyWeak(&v78, &location);
  v4 = _Block_copy(aBlock);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3;
  v73[3] = &unk_1E8736980;
  v74 = &__block_literal_global_265;
  objc_copyWeak(&v75, &location);
  v5 = _Block_copy(v73);
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4;
  v70[3] = &unk_1E8731090;
  v71 = &__block_literal_global_265;
  objc_copyWeak(&v72, &location);
  v6 = _Block_copy(v70);
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_5;
  v68[3] = &unk_1E87369A8;
  objc_copyWeak(&v69, &location);
  v7 = _Block_copy(v68);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_271;
  v67[3] = &unk_1E87369D0;
  v67[4] = self;
  [stateMachine registerHandlerForEvent:@"UIApplication Will Finish Launching" onState:@"Idle" withBlock:v67];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_273;
  v64[3] = &unk_1E87369F8;
  objc_copyWeak(&v66, &location);
  v18 = v7;
  v65 = v18;
  v64[4] = self;
  [stateMachine registerHandlerForEvent:@"UIApplication Did Finish Launching" onState:@"StartingUIApplication" withBlock:v64];
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_301;
  v62[3] = &unk_1E8736A20;
  objc_copyWeak(&v63, &location);
  [stateMachine registerHandlerForEvent:@"Is Library Only Country Did Change" onState:@"WaitingForBootURL" withBlock:v62];
  v82[0] = @"RunningWithJavascript";
  v82[1] = @"RunningWithoutJavascript";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_302;
  v60[3] = &unk_1E8736A20;
  objc_copyWeak(&v61, &location);
  [stateMachine registerHandlerForEvent:@"UIApplication Open URL" onStates:v8 withBlock:v60];

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_303;
  v58[3] = &unk_1E8736A20;
  objc_copyWeak(&v59, &location);
  [stateMachine registerDefaultHandlerForEvent:@"UIApplication Open URL" withBlock:v58];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4_304;
  v56[3] = &unk_1E8736A20;
  objc_copyWeak(&v57, &location);
  [stateMachine registerHandlerForEvent:@"Boot URL Fetch Did Complete" onState:@"WaitingForBootURL" withBlock:v56];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_305;
  v54[3] = &unk_1E8736A20;
  objc_copyWeak(&v55, &location);
  [stateMachine registerHandlerForEvent:@"Boot URL Fetch Did Complete" onState:@"RunningWithoutJavascriptWaitingForBootURL" withBlock:v54];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_306;
  v52[3] = &unk_1E8736A20;
  objc_copyWeak(&v53, &location);
  [stateMachine registerHandlerForEvent:@"Full Feature Flag Fetch Did Complete" onState:@"WaitingForFullFeatureFlag" withBlock:v52];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_310;
  v50[3] = &unk_1E8736A20;
  objc_copyWeak(&v51, &location);
  [stateMachine registerHandlerForEvent:@"Full Feature Flag Fetch Did Complete" onState:@"RunningWithoutJavascriptWaitingForFullFeatureFlag" withBlock:v50];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_311;
  v48[3] = &unk_1E8736A48;
  v9 = v4;
  v49 = v9;
  [stateMachine registerHandlerForEvent:@"Tab Items Received From Javascript" onState:@"WaitingForTVApplicationControllerToStartAndInitialTabItems" withBlock:v48];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_312;
  v45[3] = &unk_1E8736A70;
  v46 = &__block_literal_global_265;
  v10 = v5;
  v47 = v10;
  v45[4] = self;
  [stateMachine registerHandlerForEvent:@"Tab Items Received From Javascript" onState:@"WaitingForInitialTabItems" withBlock:v45];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_314;
  v43[3] = &unk_1E8736A48;
  v17 = v6;
  v44 = v17;
  [stateMachine registerHandlerForEvent:@"Tab Items Received From Javascript" onState:@"RunningWithJavascript" withBlock:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_315;
  v41[3] = &unk_1E8736A48;
  v15 = v9;
  v42 = v15;
  [stateMachine registerHandlerForEvent:@"Tab Items Received From Javascript" onState:@"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems" withBlock:v41];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_316;
  v39[3] = &unk_1E8736A48;
  v16 = v10;
  v40 = v16;
  [stateMachine registerHandlerForEvent:@"Tab Items Received From Javascript" onState:@"RunningWithoutJavascriptWaitingForInitialTabItems" withBlock:v39];
  [stateMachine registerHandlerForEvent:@"TVApplicationController Did Finish Launching" onState:@"WaitingForTVApplicationControllerToStartAndInitialTabItems" withBlock:&__block_literal_global_319];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_320;
  v37[3] = &unk_1E8736A20;
  objc_copyWeak(&v38, &location);
  [stateMachine registerHandlerForEvent:@"TVApplicationController Did Finish Launching" onState:@"WaitingForTVApplicationControllerToStart" withBlock:v37];
  [stateMachine registerHandlerForEvent:@"TVApplicationController Did Finish Launching" onState:@"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems" withBlock:&__block_literal_global_323];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_324;
  v35[3] = &unk_1E8736A20;
  objc_copyWeak(&v36, &location);
  [stateMachine registerHandlerForEvent:@"TVApplicationController Did Finish Launching" onState:@"RunningWithoutJavascriptWaitingForTVApplicationControllerToStart" withBlock:v35];
  v81[0] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStart";
  v81[1] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_325;
  v33[3] = &unk_1E8736A20;
  objc_copyWeak(&v34, &location);
  [stateMachine registerHandlerForEvent:@"TVApplicationController Did Fail To Launch" onStates:v11 withBlock:v33];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_326;
  v31[3] = &unk_1E8736A20;
  objc_copyWeak(&v32, &location);
  [stateMachine registerDefaultHandlerForEvent:@"TVApplicationController Did Fail To Launch" withBlock:v31];
  [stateMachine registerDefaultHandlerForEvent:@"TVApplicationController Did Stop" withBlock:&__block_literal_global_329];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4_330;
  v30[3] = &unk_1E87369D0;
  v30[4] = self;
  [stateMachine registerHandlerForEvent:@"App Will Enter Foreground" onState:@"RunningWithoutJavascript" withBlock:v30];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_335;
  v29[3] = &unk_1E87369D0;
  v29[4] = self;
  [stateMachine registerHandlerForEvent:@"App Will Enter Foreground" onState:@"RunningWithJavascript" withBlock:v29];
  v80[0] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems";
  v80[1] = @"RunningWithoutJavascriptWaitingForInitialTabItems";
  v80[2] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStart";
  v80[3] = @"WaitingForTVApplicationControllerToStartAndInitialTabItems";
  v80[4] = @"WaitingForInitialTabItems";
  v80[5] = @"WaitingForTVApplicationControllerToStart";
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:6];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_339;
  v27[3] = &unk_1E8736A20;
  objc_copyWeak(&v28, &location);
  [stateMachine registerHandlerForEvent:@"Network Reachability Did Change" onStates:v12 withBlock:v27];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_340;
  v24[3] = &unk_1E8736AB8;
  objc_copyWeak(&v26, &location);
  v13 = v18;
  v25 = v13;
  [stateMachine registerHandlerForEvent:@"Network Reachability Did Change" onState:@"RunningWithoutJavascript" withBlock:v24];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_352;
  v22[3] = &unk_1E8736AE0;
  objc_copyWeak(&v23, &location);
  v22[4] = self;
  [stateMachine registerHandlerForEvent:@"Network Reachability Did Change" onState:@"RunningWithJavascript" withBlock:v22];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_357;
  v19[3] = &unk_1E8736AB8;
  objc_copyWeak(&v21, &location);
  v14 = v13;
  v20 = v14;
  [stateMachine registerHandlerForEvent:@"Without Javascript Active Account Did Change" onState:@"RunningWithoutJavascript" withBlock:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&v34);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&v38);

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v53);
  objc_destroyWeak(&v55);
  objc_destroyWeak(&v57);
  objc_destroyWeak(&v59);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v63);

  objc_destroyWeak(&v66);
  objc_destroyWeak(&v69);

  objc_destroyWeak(&v72);
  objc_destroyWeak(&v75);

  objc_destroyWeak(&v78);
  objc_destroyWeak(&location);
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

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DF7E8] object:0];
}

- (void)prewarmOnMainWithPrefetchSelectedPage:(BOOL)page
{
  selfCopy = self;
  VUITVAppLauncher.prewarmOnMain(prefetchSelectedPage:)(page);
}

- (void)_initializeMediaLibrary
{
  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MediaLibrary Initialization", "", buf, 2u);
  }

  v4 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v4 recordAppLaunchEventWithEventType:@"mediaLibraryInitializeStart"];

  objc_initWeak(buf, self);
  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__VUITVAppLauncher__initializeMediaLibrary__block_invoke;
  block[3] = &unk_1E872E4B8;
  objc_copyWeak(&v7, buf);
  dispatch_async(v5, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

void __43__VUITVAppLauncher__initializeMediaLibrary__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _updateDeviceMediaLibraryFromCloud];

  v2 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v2 recordAppLaunchEventWithEventType:@"mediaLibraryInitializeEnd"];

  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MediaLibrary Initialization", "", v4, 2u);
  }

  objc_destroyWeak(&to);
}

- (void)configureAppWindow
{
  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow.init", "", buf, 2u);
  }

  appWindow = self->_appWindow;
  vui_keyColor = [MEMORY[0x1E69DC888] vui_keyColor];
  [(UIWindow *)appWindow setTintColor:vui_keyColor];

  v6 = self->_appWindow;
  vui_primaryDynamicBackgroundColor = [MEMORY[0x1E69DC888] vui_primaryDynamicBackgroundColor];
  [(UIWindow *)v6 setBackgroundColor:vui_primaryDynamicBackgroundColor];

  v8 = [[VUISplitViewController alloc] initWithStyle:1];
  [(UIWindow *)self->_appWindow setRootViewController:v8];
  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow.init", "", v14, 2u);
  }

  v10 = VUISignpostLogObject();
  if (os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow.makeKey", "", v13, 2u);
  }

  [(UIWindow *)self->_appWindow vui_makeKeyAndVisible];
  v11 = VUISignpostLogObject();
  if (os_signpost_enabled(v11))
  {
    *v12 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow.makeKey", "", v12, 2u);
  }
}

- (void)_updateDeviceMediaLibraryFromCloud
{
  v3 = +[VUIMediaLibraryManager defaultManager];
  deviceMediaLibrary = [v3 deviceMediaLibrary];
  [deviceMediaLibrary updateFromCloudWithReason:0];
}

- (void)showLoadingView
{
  v2 = +[VUIAppLoadingView loadingScreen];
  [v2 setTimeout:60.0];
  [v2 showOverKeyWindowWithSpinnerOnly:0];
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_271(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a5;
  v7 = VUISignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "UIApplicationLaunch", "", &v16, 2u);
  }

  v8 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v8 recordAppLaunchEventWithEventType:@"uikitApplicationLaunchStart"];

  v9 = [v6 vui_dictionaryForKey:@"Options"];

  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v9;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Launching with options: %@", &v16, 0xCu);
  }

  v11 = VUISignpostLogObject();
  if (os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MediaLibrary", "", &v16, 2u);
  }

  [*(a1 + 32) _initializeMediaLibrary];
  v12 = VUISignpostLogObject();
  if (os_signpost_enabled(v12))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MediaLibrary", "", &v16, 2u);
  }

  v13 = +[VUIMetricsController sharedInstance];
  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "UNIFIED_MESSAGING: Unified Messaging is enabled", &v16, 2u);
  }

  +[_TtC8VideosUI8VideosUI initializeUnifiedMessagingManager];
  return @"StartingUIApplication";
}

- (BOOL)isAppRunning
{
  v3 = objc_opt_class();
  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  currentState = [stateMachine currentState];
  LOBYTE(v3) = [v3 _isRunningState:currentState];

  return v3;
}

+ (BOOL)isRemoteServerLikelyReachable
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v3 = +[VUIFeaturesConfiguration sharedInstance];
  launchConfig = [v3 launchConfig];
  checkRemoteServerReachability = [launchConfig checkRemoteServerReachability];

  v6 = +[_TtC8VideosUI32RemoteNetworkReachabilityMonitor shared];
  isLikelyReachable = [v6 isLikelyReachable];

  if (v2)
  {
    v8 = checkRemoteServerReachability ^ 1 | isLikelyReachable;
  }

  else
  {
    v8 = 0;
  }

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109888;
    v11[1] = checkRemoteServerReachability;
    v12 = 1024;
    v13 = isLikelyReachable;
    v14 = 1024;
    v15 = v2;
    v16 = 1024;
    v17 = v8 & 1;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - isRemoteServerLikelyReachable: checkRemoteServerReachability: %d, isRemoteServerLikelyReachable: %d, isNetworkReachable: %d, result: %d", v11, 0x1Au);
  }

  return v8 & 1;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.WaitingForStateTransition", "", buf, 2u);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_268;
  v5[3] = &unk_1E872E4B8;
  objc_copyWeak(&v6, (a1 + 32));
  [v3 executeBlockAfterCurrentStateTransition:v5];
  objc_destroyWeak(&v6);
}

- (void)_initializeBookmarkService
{
  mEMORY[0x1E6970A08] = [MEMORY[0x1E6970A08] sharedUbiquitousPlaybackPositionController];
  [mEMORY[0x1E6970A08] beginUsingPlaybackPositionMetadata];
}

- (void)_initializePlayer
{
  v2 = +[VUIMediaLibraryManager defaultManager];
  sidebandMediaLibrary = [v2 sidebandMediaLibrary];

  v6 = dispatch_queue_create("Temp download dir cleanup queue", 0);
  dispatch_async(v6, &__block_literal_global_394);
  +[VUIStoreFPSKeyLoader preFetchFPSCertificate];
  v4 = +[VUIPlaybackReporterUTS sharedInstance];
  v5 = +[VUIPlaybackReporterVPAF sharedInstance];
}

- (void)_startJavascriptSetup
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher -  start JS setup", v4, 2u);
  }

  [(VUITVAppLauncher *)self _resetJavascriptState];
  [(VUITVAppLauncher *)self _resetDeferredParsedOpenURL];
  [(VUITVAppLauncher *)self _fetchApplicationControllerBootURL];
}

- (void)_resetJavascriptState
{
  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad.ResetState", "", buf, 2u);
  }

  [(VUITVAppLauncher *)self setTabBarItems:0];
  [(VUITVAppLauncher *)self setJetPackController:0];
  [(VUITVAppLauncher *)self setAppController:0];
  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad.ResetState", "", v5, 2u);
  }
}

- (void)_fetchApplicationControllerBootURL
{
  v3 = kVUIBagTVAppJetpackURL;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [_TtC8VideosUI20VUIJetPackController controllerWithBagKey:v3 defaults:standardUserDefaults urlOverrideDefaultKey:@"boot-url"];

  [(VUITVAppLauncher *)self setJetPackController:v5];
  objc_initWeak(&location, self);
  getJetPackURL = [v5 getJetPackURL];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__VUITVAppLauncher__fetchApplicationControllerBootURL__block_invoke;
  v8[3] = &unk_1E8736B30;
  objc_copyWeak(&v10, &location);
  v7 = v5;
  v9 = v7;
  [getJetPackURL resultWithCompletion:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)prewarmPostAppDidFinishLaunching
{
  selfCopy = self;
  VUITVAppLauncher.prewarmPostAppDidFinishLaunching()();
}

void __54__VUITVAppLauncher__fetchApplicationControllerBootURL__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__VUITVAppLauncher__fetchApplicationControllerBootURL__block_invoke_2;
  v9[3] = &unk_1E8735DF8;
  objc_copyWeak(&v13, (a1 + 40));
  v10 = *(a1 + 32);
  v11 = v5;
  v12 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);

  objc_destroyWeak(&v13);
}

void __24__VUITVAppLauncher_init__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [VUITVAppLauncher _isRunningState:a3];
  v7 = [VUITVAppLauncher _isRunningState:v5];

  if (v7 && !v6)
  {
    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"VUITVAppLauncherDidStartRunningNotification" object:0];
  }
}

void __54__VUITVAppLauncher__fetchApplicationControllerBootURL__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5 = [WeakRetained jetPackController];

    if (v4 == v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = [*(a1 + 40) url];
      [v6 vui_setObjectIfNotNil:v7 forKey:@"BootURL"];

      [v6 vui_setObjectIfNotNil:*(a1 + 48) forKey:@"Error"];
      v8 = [v3 stateMachine];
      [v8 postEvent:@"Boot URL Fetch Did Complete" withContext:0 userInfo:v6];

      [v3 setJetPackController:0];
      v9 = VUISignpostLogObject();
      if (os_signpost_enabled(v9))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad", "", v11, 2u);
      }

      v10 = +[VUIPerfMetricsAppLaunchController sharedInstance];
      [v10 recordAppLaunchEventWithEventType:@"javascriptRuntimeEnd"];
    }
  }
}

- (void)_syncBookmarkServiceIfRequired
{
  mEMORY[0x1E69E4518] = [MEMORY[0x1E69E4518] sharedService];
  [mEMORY[0x1E69E4518] synchronizePlaybackPositions];
}

- (VUITabBarProtocol)tabBarController
{
  tabBarController = self->_tabBarController;
  if (!tabBarController)
  {
    if (+[VUIUtilities isSUIEnabled])
    {
      v4 = +[VUIInterfaceFactory sharedInstance];
      tabBarController = [v4 tabBarController];

      goto LABEL_8;
    }

    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Initializing TabBarController", v10, 2u);
    }

    v7 = objc_alloc_init(VUITabBarController);
    v8 = self->_tabBarController;
    self->_tabBarController = v7;

    tabBarController = self->_tabBarController;
  }

  tabBarController = tabBarController;
LABEL_8:

  return tabBarController;
}

+ (BOOL)_isRunningState:(id)state
{
  v8[7] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v8[0] = @"RunningWithJavascript";
  v8[1] = @"RunningWithoutJavascript";
  v8[2] = @"RunningWithoutJavascriptWaitingForBootURL";
  v8[3] = @"RunningWithoutJavascriptWaitingForFullFeatureFlag";
  v8[4] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStart";
  v8[5] = @"RunningWithoutJavascriptWaitingForInitialTabItems";
  v8[6] = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:7];
  v5 = v4;
  if (stateCopy)
  {
    v6 = [v4 containsObject:stateCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __24__VUITVAppLauncher_init__block_invoke_3(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v8)
  {
    v4 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v4 userInterfaceIdiom] == 1)
    {
      v5 = [MEMORY[0x1E69DC668] sharedApplication];
      if (![v5 isRunningTest])
      {
        v7 = _os_feature_enabled_impl();

        if ((v7 & 1) == 0)
        {
          v6 = [WeakRetained splitViewController];
          [v6 setSelectedIndexForIdentifier:v8 withDeeplinkURL:0];
          goto LABEL_7;
        }

LABEL_6:
        v6 = [WeakRetained tabBarController];
        [v6 setSelectedIndexForTabBarItemIdentifier:v8];
LABEL_7:

        goto LABEL_8;
      }
    }

    goto LABEL_6;
  }

LABEL_8:
}

void __24__VUITVAppLauncher_init__block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v9)
  {
    goto LABEL_24;
  }

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v11 userInterfaceIdiom] != 1)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v12 isRunningTest])
  {

LABEL_5:
    goto LABEL_6;
  }

  v4 = _os_feature_enabled_impl();

  if ((v4 & 1) == 0)
  {
    v16 = [WeakRetained splitViewController];
    [v16 setSelectedIndexForIdentifier:v9 withDeeplinkURL:v8];
    goto LABEL_10;
  }

LABEL_6:
  v13 = [MEMORY[0x1E695DFB0] null];
  v14 = [v9 isEqual:v13];

  v15 = [WeakRetained tabBarController];
  v16 = v15;
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  [v15 setSelectedIndexForTabBarItemIdentifier:v17 clearStack:a4];
LABEL_10:

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__VUITVAppLauncher_init__block_invoke_5;
  aBlock[3] = &unk_1E8730818;
  v32 = a4;
  v18 = WeakRetained;
  v30 = v18;
  v31 = v8;
  v19 = _Block_copy(aBlock);
  v20 = [MEMORY[0x1E69DC938] currentDevice];
  v21 = [v20 userInterfaceIdiom];
  if (v21 == 1)
  {
    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if (([v4 isRunningTest] & 1) == 0 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v22 = [v18 splitViewController];
      goto LABEL_18;
    }
  }

  v22 = [v18 tabBarController];
  if (v21 == 1)
  {
LABEL_18:
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v22 vuiPresentedViewController], (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, +[VUIPlaybackManager sharedInstance](VUIPlaybackManager, "sharedInstance"), v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isFullscreenPlaybackUIBeingShown"), v25, v24, (v26 & 1) == 0))
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __24__VUITVAppLauncher_init__block_invoke_8;
    v27[3] = &unk_1E872D7E0;
    v28 = v19;
    [v22 vui_dismissViewControllerAnimated:1 completion:v27];
  }

  else
  {
    v19[2](v19);
  }

LABEL_24:
}

void __24__VUITVAppLauncher_init__block_invoke_5(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __24__VUITVAppLauncher_init__block_invoke_6;
  aBlock[3] = &unk_1E8730818;
  v6 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v2[2]();
}

void __24__VUITVAppLauncher_init__block_invoke_6(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 32) appController];
    v3 = [v2 navigationController];
    v4 = [v3 popToRootViewControllerAnimated:0];
  }

  v7 = +[VUIApplicationRouter topMostVisibleViewController];
  if (![v7 conformsToProtocol:&unk_1F5F335E8] || objc_msgSend(v7, "deeplinkURLWasHandled:", *(a1 + 40)))
  {
    v5 = +[VUIInterfaceFactory sharedInstance];
    v6 = [v5 documentCreator];
    [v6 scrollViewControllerToTop:v7 animated:0 needsFocusUpdate:1];
  }
}

- (BOOL)applicationWillFinishLaunchingWithOptions:(id)options
{
  v15 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = optionsCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - applicationWillFinishLaunchingWithOptions %@", &v13, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary vui_setObjectIfNotNil:optionsCopy forKey:@"Options"];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handlePrewarmSubscriptionDataNotification_ name:*MEMORY[0x1E69E1718] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__handleOfferProcessingDidStartNotification_ name:@"VUIJSOfferdidStartProcessing" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__handleOfferProcessingDidFinishNotification_ name:@"VUIJSOfferdidFinishProcessing" object:0];

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  v11 = [dictionary copy];
  [stateMachine postEvent:@"UIApplication Will Finish Launching" withContext:0 userInfo:v11];

  return 1;
}

- (BOOL)applicationDidFinishLaunchingWithOptions:(id)options
{
  optionsCopy = options;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - applicationDidFinishLaunchingWithOptions", v20, 2u);
  }

  v6 = VUISignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow", "", v20, 2u);
  }

  [(VUITVAppLauncher *)self configureAppWindow];
  [(VUITVAppLauncher *)self updateAppAppearance];
  v7 = VUISignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.configureAppWindow", "", v20, 2u);
  }

  v8 = VUISignpostLogObject();
  if (os_signpost_enabled(v8))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.showLoadingView", "", v20, 2u);
  }

  [(VUITVAppLauncher *)self showLoadingView];
  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.showLoadingView", "", v20, 2u);
  }

  v10 = VUISignpostLogObject();
  if (os_signpost_enabled(v10))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.stateMachine", "", v20, 2u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary vui_setObjectIfNotNil:optionsCopy forKey:@"Options"];

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  v13 = [dictionary copy];
  [stateMachine postEvent:@"UIApplication Did Finish Launching" withContext:0 userInfo:v13];

  v14 = VUISignpostLogObject();
  if (os_signpost_enabled(v14))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.stateMachine", "", v20, 2u);
  }

  v15 = VUISignpostLogObject();
  if (os_signpost_enabled(v15))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launcher.registerButtonListener", "", v20, 2u);
  }

  v16 = VUISignpostLogObject();
  if (os_signpost_enabled(v16))
  {
    *v20 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launcher.registerButtonListener", "", v20, 2u);
  }

  [(VUITVAppLauncher *)self prewarmPostAppDidFinishLaunching];
  if (_os_feature_enabled_impl())
  {
    v17 = +[VUIInterfaceFactory sharedInstance];
    backgroundTaskManager = [v17 backgroundTaskManager];
    [backgroundTaskManager registerBackgroundTasks];
  }

  return 1;
}

- (BOOL)openURL:(id)l options:(id)options
{
  v23 = *MEMORY[0x1E69E9840];
  lCopy = l;
  optionsCopy = options;
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = lCopy;
    v21 = 2112;
    v22 = optionsCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - openURL %@, options %@", &v19, 0x16u);
  }

  [(VUITVAppLauncher *)self setIsDeeplinkLaunched:[(VUITVAppLauncher *)self isAppRunning]^ 1];
  v9 = [ATAParsedOpenURL parsedOpenURLWithURL:lCopy andOptions:optionsCopy];
  if (v9)
  {
    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - openURL creating openUrlEvent userInfo", &v19, 2u);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 vui_setObjectIfNotNil:v9 forKey:@"ParsedOpenURL"];
    [v11 vui_setObjectIfNotNil:optionsCopy forKey:@"Options"];
    stateMachine = [(VUITVAppLauncher *)self stateMachine];
    [stateMachine postEvent:@"UIApplication Open URL" withContext:0 userInfo:v11];

    v13 = [v9 URL];
    absoluteString = [v13 absoluteString];

    v15 = +[VUIMetricsController sharedInstance];
    v16 = v15;
    if (optionsCopy)
    {
      v17 = optionsCopy;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    [v15 recordOpenUrlLaunchWithExtURL:absoluteString andOptions:v17];
  }

  return v9 != 0;
}

- (void)didFailToLaunch:(id)launch
{
  v7 = *MEMORY[0x1E69E9840];
  launchCopy = launch;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = launchCopy;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - didFailToLaunch %@", &v5, 0xCu);
  }
}

- (void)setMainWindow:(id)window
{
  v9 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  objc_storeStrong(&self->_appWindow, window);
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = windowCopy;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - setMainWindow %@", &v7, 0xCu);
  }
}

+ (BOOL)isSidebarEnabled
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668] isRunningTest])
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v4 = _os_feature_enabled_impl() ^ 1;
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)cleanUp
{
  self->_isTerminating = 1;
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - cleanUp", v6, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69DF7F8] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 removeObserver:self];
}

- (void)refreshTabBarItems
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__VUITVAppLauncher_refreshTabBarItems__block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __38__VUITVAppLauncher_refreshTabBarItems__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appController];
  v1 = [v2 appContext];
  [v1 evaluate:&__block_literal_global_227_0];
}

void __38__VUITVAppLauncher_refreshTabBarItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"App"];
  v3 = v2;
  if (v2 && [v2 hasProperty:@"fetchConfigAndSetTabBarItems"])
  {
    v4 = VUISignpostLogObject();
    if (os_signpost_enabled(v4))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TabBarItemsFetch", "", v6, 2u);
    }

    v5 = [v3 invokeMethod:@"fetchConfigAndSetTabBarItems" withArguments:0];
  }
}

- (void)processStartupItems
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - processStartupItems", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__VUITVAppLauncher_processStartupItems__block_invoke;
  aBlock[3] = &unk_1E872F758;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = +[VUITVAppLauncher sharedInstance];
  [v5 setIsStillProcessingStartupItems:1];

  if (!self->_appWasRunningWithoutJavascript)
  {
    appController = [(VUITVAppLauncher *)self appController];
    appContext = [appController appContext];
    [VUIOfferUtilities fetchAndPresentOffer:appContext sourceEvent:@"AppLaunch" completion:v4];
  }

  self->_appWasRunningWithoutJavascript = 0;
}

uint64_t __39__VUITVAppLauncher_processStartupItems__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    [v4 _finishAppLoading];
  }

  else
  {
    [v4 _presentSyndicationOnboardingIfNeeded];
  }

  v5 = *(a1 + 32);

  return [v5 _handleAMSEngagementSheetPresentation:a2];
}

- (void)selectTabBarItem:(id)item
{
  itemCopy = item;
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_4:
LABEL_5:
    tabBarController = [(VUITVAppLauncher *)self tabBarController];
    [tabBarController setSelectedIndexForTabBarItemIdentifier:itemCopy];
    goto LABEL_6;
  }

  v7 = _os_feature_enabled_impl();

  if (v7)
  {
    goto LABEL_5;
  }

  tabBarController = [(VUITVAppLauncher *)self splitViewController];
  [tabBarController setSelectedIndexForIdentifier:itemCopy withDeeplinkURL:0];
LABEL_6:
}

- (BOOL)isAppRunningWithJS
{
  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  currentState = [stateMachine currentState];
  v4 = [currentState isEqualToString:@"RunningWithJavascript"];

  return v4;
}

- (BOOL)isAppRunningWithoutJS
{
  v3 = objc_opt_class();
  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  currentState = [stateMachine currentState];
  LOBYTE(v3) = [v3 _isRunningWithoutJSState:currentState];

  return v3;
}

- (void)didShowGDPRWelcome
{
  v3 = VUIDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - didShowGDPRWelcome", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v5 = __38__VUITVAppLauncher_didShowGDPRWelcome__block_invoke;
  v6 = &unk_1E872D768;
  selfCopy = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v5(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __38__VUITVAppLauncher_didShowGDPRWelcome__block_invoke(uint64_t a1)
{
  v3 = +[VUIMetricsController sharedInstance];
  v2 = [*(a1 + 32) _dialogMetricsForGDPR];
  [v3 recordDialog:v2];
}

- (void)didAcceptGDPRWelcome
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  _dialogMetricsForGDPR = [(VUITVAppLauncher *)self _dialogMetricsForGDPR];
  [v3 addEntriesFromDictionary:_dialogMetricsForGDPR];

  v10[0] = @"targetId";
  v10[1] = @"targetType";
  v11[0] = @"continue";
  v11[1] = @"button";
  v10[2] = @"actionType";
  v11[2] = @"gdprConsent";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  [v3 addEntriesFromDictionary:v5];

  v6 = +[VUIMetricsController sharedInstance];
  [v6 recordClick:v3];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - didAcceptGDPRWelcome", v9, 2u);
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    __40__VUITVAppLauncher_didAcceptGDPRWelcome__block_invoke();
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_235);
  }

  v8 = dispatch_get_global_queue(0, 0);
  dispatch_async(v8, &__block_literal_global_237);
}

void __40__VUITVAppLauncher_didAcceptGDPRWelcome__block_invoke()
{
  v0 = +[VUIMetricsController sharedInstance];
  [v0 forceGDPRConsentStatus:1];
}

void __40__VUITVAppLauncher_didAcceptGDPRWelcome__block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  +[_TtC8VideosUI8VideosUI initializeGroupActivities];

  objc_autoreleasePoolPop(v0);
}

- (id)_dialogMetricsForGDPR
{
  v5[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"dialogId";
  v4[1] = @"dialogType";
  v5[0] = @"GDPR";
  v5[1] = @"GDPR";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  self->_appWasForegrounded = 1;
  self->_startupOfferProcessingCompleted = 0;
  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(2, 0);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __52__VUITVAppLauncher__applicationWillEnterForeground___block_invoke;
  v11 = &unk_1E872E4B8;
  objc_copyWeak(&v12, &location);
  dispatch_async(v5, &v8);

  if (_os_feature_enabled_impl())
  {
    defaultManager = [MEMORY[0x1E69E1598] defaultManager];
    [defaultManager fetchStatusForAllTypesWithCompletion:0];
  }

  v7 = [(VUITVAppLauncher *)self stateMachine:v8];
  [v7 postEvent:@"App Will Enter Foreground" withContext:0 userInfo:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __52__VUITVAppLauncher__applicationWillEnterForeground___block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 _updateDeviceMediaLibraryFromCloud];

  objc_destroyWeak(&to);
}

- (void)_applicationDidBecomeActiveNotification:(id)notification
{
  [(VUITVAppLauncher *)self _syncBookmarkServiceIfRequired];
  v4 = +[VUISettingsManager sharedInstance];
  [v4 checkAndUpdateSettings];

  v5 = +[VUIMetricsController sharedInstance];
  [v5 recordAppBecameActive];

  appWasForegrounded = self->_appWasForegrounded;
  self->_appWasForegrounded = 1;
  v7 = +[VUIAppReviewManager sharedInstance];
  [v7 isFeatureEnabled:&__block_literal_global_254];

  if (appWasForegrounded)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __60__VUITVAppLauncher__applicationDidBecomeActiveNotification___block_invoke_2;
    aBlock[3] = &unk_1E872F758;
    aBlock[4] = self;
    v8 = _Block_copy(aBlock);
    v9 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v9 openURLHandler];

    if (([openURLHandler openedByDeeplink] & 1) == 0 && !+[VUIGDPRPresentationManager shouldShowWelcomeScreen](VUIGDPRPresentationManager, "shouldShowWelcomeScreen"))
    {
      if (_os_feature_enabled_impl())
      {
        if (!self->_firstBecomeActiveSinceColdLaunch)
        {
          v11 = VUIDefaultLogObject();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *v16 = 0;
            _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - App foreground -- Check if there is any pending ODJ badging action metrics", v16, 2u);
          }

          +[_TtC8VideosUI8VideosUI handleUnifiedMessagingAppDidFinishLoading];
          [MEMORY[0x1E69E14D8] processStoredODJBadgingRequestActions];
          +[_TtC8VideosUI8VideosUI fetchODJBadgingAppLevelSheet];
        }

        self->_firstBecomeActiveSinceColdLaunch = 0;
      }

      else
      {
        v12 = VUIDefaultLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - App foreground -- Check if there is any pending offer to present", v16, 2u);
        }

        appController = [(VUITVAppLauncher *)self appController];
        appContext = [appController appContext];
        [VUIOfferUtilities fetchAndPresentOffer:appContext sourceEvent:@"AppForeground" completion:v8];
      }
    }

    mEMORY[0x1E69E15E8] = [MEMORY[0x1E69E15E8] sharedInstance];
    [mEMORY[0x1E69E15E8] refreshSubscriptionDataIfNeeded];
  }
}

void __60__VUITVAppLauncher__applicationDidBecomeActiveNotification___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = +[VUIAppReviewManager sharedInstance];
    [v2 reportApplicationDidForegroundtoAMSSharedStoreReview];
  }
}

- (void)_handleAMSEngagementSheetPresentation:(BOOL)presentation
{
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  isRunningTest = [mEMORY[0x1E69DC668] isRunningTest];

  if (isRunningTest)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Running PPT test. Skip handling of engagement presentation sheet.", v6, 2u);
    }
  }
}

- (void)_applicationDidEnterBackgroundNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = +[VUIInterfaceFactory sharedInstance];
  openURLHandler = [v4 openURLHandler];
  [openURLHandler setOpenedByDeeplink:0];

  date = [MEMORY[0x1E695DF00] date];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:date forKey:@"lastActiveDate"];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = date;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "DropOnTab: Updating lastActiveDate to %@", &v12, 0xCu);
  }

  if ([(VUITVAppLauncher *)self _shouldRecordExitEvent])
  {
    v9 = +[VUIMetricsController sharedInstance];
    [v9 recordAppWillBackground];
  }

  if (_os_feature_enabled_impl())
  {
    v10 = +[VUIInterfaceFactory sharedInstance];
    backgroundTaskManager = [v10 backgroundTaskManager];
    [backgroundTaskManager scheduleBackgroundTasks];
  }
}

- (void)_applicationWillTerminateNotification:(id)notification
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - will terminate.", &v9, 2u);
  }

  if ([(VUITVAppLauncher *)self _shouldRecordExitEvent])
  {
    v5 = +[VUIMetricsController sharedInstance];
    [v5 recordAppWillTerminate];
  }

  date = [MEMORY[0x1E695DF00] date];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults setObject:date forKey:@"lastActiveDate"];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = date;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "DropOnTab: Updating lastActiveDate to %@", &v9, 0xCu);
  }
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2(uint64_t a1)
{
  v3 = (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTabBarItems:v3];
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTabBarItems:v6];
  [WeakRetained _finishJavascriptSetupWithTabBarItems:v6 setSelectedIdentifierFromDefaults:a3];
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4(uint64_t a1)
{
  v3 = (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setTabBarItems:v3];
  [WeakRetained _updateTabControllerWithTabBarItems:v3 setSelectedIdentifierFromDefaults:1];
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_268(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.WaitingForStateTransition", "", buf, 2u);
  }

  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad", "", v6, 2u);
  }

  v4 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v4 recordAppLaunchEventWithEventType:@"javascriptRuntimeStart"];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _startJavascriptSetup];
}

uint64_t __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_273(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  +[_TtC8VideosUI8VideosUI initializeUIFactory];
  v10 = +[VUITVAppLauncher isRemoteServerLikelyReachable];
  v11 = VUIDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    *buf = 138412802;
    v49 = @"UIApplication Did Finish Launching";
    v51 = @"StartingUIApplication";
    v50 = 2112;
    if (v10)
    {
      v12 = @"YES";
    }

    v52 = 2112;
    v53 = v12;
    _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@ - isNetworkReachable: %@", buf, 0x20u);
  }

  v13 = +[VUIAuthenticationManager isLibraryOnlyCountry];
  if (v13)
  {
    LOBYTE(v13) = +[VUIAuthenticationManager isLibraryOnlyCountryResolved];
  }

  if (!v10 || v13)
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:0];
    v14 = @"RunningWithoutJavascript";
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v14 = @"WaitingForBootURL";
  }

  v45 = v14;
  v47 = v7;
  if (os_variant_has_internal_content())
  {
    JSRemoteInspectorSetLogToSystemConsole();
  }

  v15 = +[VUISettingsManager sharedInstance];
  v16 = +[VUIPostPlayUpsellManager sharedInstance];
  v17 = [v8 vui_dictionaryForKey:@"Options"];

  [WeakRetained setLaunchOptions:v17];
  v18 = VUISignpostLogObject();
  if (os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v18, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BookmarkService Initialization", "", buf, 2u);
  }

  v19 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v19 recordAppLaunchEventWithEventType:@"bookmarkServiceInitializationStart"];

  [WeakRetained _initializeBookmarkService];
  v20 = VUISignpostLogObject();
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BookmarkService Initialization", "", buf, 2u);
  }

  v21 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v21 recordAppLaunchEventWithEventType:@"bookmarkServiceInitializationEnd"];

  v22 = VUISignpostLogObject();
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v22, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Rentals.Init", "", buf, 2u);
  }

  v23 = +[VUIRentalManager sharedInstance];
  [v23 initializeRentals];

  v24 = +[VUIARQLPreviewManager sharedInstance];
  [v24 cancelExistingDownloadsIfAny];

  v25 = VUISignpostLogObject();
  if (os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Rentals.Init", "", buf, 2u);
  }

  v26 = VUISignpostLogObject();
  if (os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v26, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.DidFinishLaunch.OthersInit", "", buf, 2u);
  }

  v27 = [MEMORY[0x1E69E1558] defaultCenter];
  [WeakRetained _initializePlayer];
  v28 = [MEMORY[0x1E69E14B0] sharedInstance];
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
  [v29 addObserver:WeakRetained selector:sel__handleNetworkReachabilityDidChangeNotification_ name:v30 object:0];

  v31 = +[VUIFeaturesConfiguration sharedInstance];
  v32 = [v31 launchConfig];
  v33 = [v32 checkRemoteServerReachability];

  if (v33)
  {
    v34 = [MEMORY[0x1E696AD80] remoteNetworkReachabilityDidChange];
    [v29 addObserver:WeakRetained selector:sel__handleRemoteNetworkReachabilityDidChangeNotification_ name:v34 object:0];
  }

  v35 = [MEMORY[0x1E696AD88] defaultCenter];
  [v35 addObserver:*(a1 + 32) selector:sel__accountsChanged_ name:@"VUIAuthenticationManagerAccountStoreDidChangeNotification" object:0];

  v36 = [MEMORY[0x1E696AD88] defaultCenter];
  [v36 addObserver:*(a1 + 32) selector:sel__isLibraryOnlyCountryChanged_ name:@"VUIAuthenticationManagerIsLibraryOnlyCountryDidChangeNotification" object:0];

  v37 = [MEMORY[0x1E696AD88] defaultCenter];
  [v37 addObserver:*(a1 + 32) selector:sel__appAppearanceSettingChanged_ name:@"VUIAppAppearanceSettingDidChangeNotification" object:0];

  v38 = [MEMORY[0x1E69DF680] sharedInstance];
  [v38 listenForApplicationNotifications];

  v39 = [MEMORY[0x1E69DF678] sharedInstance];
  v40 = VUISignpostLogObject();
  if (os_signpost_enabled(v40))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v40, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "UIApplicationLaunch", "", buf, 2u);
  }

  v41 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v41 recordAppLaunchEventWithEventType:@"uikitApplicationLaunchEnd"];

  v42 = +[VUIAppReviewManager sharedInstance];
  v43 = VUISignpostLogObject();
  if (os_signpost_enabled(v43))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v43, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.DidFinishLaunch.OthersInit", "", buf, 2u);
  }

  return v46;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_301(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (+[VUIAuthenticationManager isLibraryOnlyCountryResolved](VUIAuthenticationManager, "isLibraryOnlyCountryResolved") && +[VUIAuthenticationManager isLibraryOnlyCountry])
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:{+[VUINetworkReachabilityMonitorObjCProxy isNetworkReachable](_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy, "isNetworkReachable")}];
    v2 = @"RunningWithoutJavascript";
  }

  else
  {
    v2 = @"WaitingForBootURL";
  }

  return v2;
}

id __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_302(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 objectForKey:@"ParsedOpenURL"];

  [WeakRetained _handleParsedOpenURL:v10];
  if (([objc_opt_class() _isDeeplinkTVButton:v10] & 1) == 0)
  {
    v11 = +[VUIInterfaceFactory sharedInstance];
    v12 = [v11 openURLHandler];
    [v12 setOpenedByDeeplink:1];
  }

  v13 = [v7 currentState];

  return v13;
}

id __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_303(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [v8 objectForKey:@"ParsedOpenURL"];

  [WeakRetained setDeferredParsedOpenURL:v10];
  if (([objc_opt_class() _isDeeplinkTVButton:v10] & 1) == 0)
  {
    v11 = +[VUIInterfaceFactory sharedInstance];
    v12 = [v11 openURLHandler];
    [v12 setOpenedByDeeplink:1];
  }

  v13 = [v7 currentState];

  return v13;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4_304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 vui_URLForKey:@"BootURL"];
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 vui_URLForKey:@"Error"];
    v14 = 138413058;
    v15 = @"Boot URL Fetch Did Complete";
    v16 = 2112;
    v17 = @"WaitingForBootURL";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@ - bootURL: %@ - error: %@", &v14, 0x2Au);
  }

  if (v8)
  {
    [WeakRetained _fetchFullFeatureFlag:v8];
    v12 = @"WaitingForFullFeatureFlag";
  }

  else
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:1];
    v12 = @"RunningWithoutJavascript";
  }

  return v12;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_305(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 vui_URLForKey:@"BootURL"];
  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (v8)
    {
      v10 = @"YES";
    }

    else
    {
      v10 = @"NO";
    }

    v11 = [v6 vui_URLForKey:@"Error"];
    v14 = 138413058;
    v15 = @"Boot URL Fetch Did Complete";
    v16 = 2112;
    v17 = @"RunningWithoutJavascriptWaitingForBootURL";
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@ - bootURL: %@ - error: %@", &v14, 0x2Au);
  }

  if (v8)
  {
    [WeakRetained _fetchFullFeatureFlag:v8];
    v12 = @"RunningWithoutJavascriptWaitingForFullFeatureFlag";
  }

  else
  {
    [WeakRetained _handleDeferredParsedOpenURLIfNeeded];
    v12 = @"RunningWithoutJavascript";
  }

  return v12;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_306(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 vui_numberForKey:@"fullFeatureFlag"];
  v9 = [v8 BOOLValue];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v6 vui_URLForKey:@"Error"];
    v16 = 138413058;
    v17 = @"Full Feature Flag Fetch Did Complete";
    v18 = 2112;
    v19 = @"WaitingForFullFeatureFlag";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@ - fullFeatureFlag: %@ - error: %@", &v16, 0x2Au);
  }

  if (v9)
  {
    v13 = [v6 vui_URLForKey:@"BootURL"];
    [WeakRetained _startApplicationControllerWithBootURL:v13 completion:&__block_literal_global_309_0];

    v14 = @"WaitingForTVApplicationControllerToStartAndInitialTabItems";
  }

  else
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:1];
    v14 = @"RunningWithoutJavascript";
  }

  return v14;
}

uint64_t __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_307()
{
  result = +[VUIGDPRPresentationManager shouldShowWelcomeScreen];
  if ((result & 1) == 0)
  {
    v1 = VUIDefaultLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *v2 = 0;
      _os_log_impl(&dword_1E323F000, v1, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - GDPR shown already, register device for offers now.", v2, 2u);
    }

    return +[VUIOfferUtilities registerDeviceForCommerceOffers];
  }

  return result;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [v6 vui_numberForKey:@"fullFeatureFlag"];
  v9 = [v8 BOOLValue];
  v10 = VUIDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (v9)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v12 = [v6 vui_URLForKey:@"Error"];
    v16 = 138413058;
    v17 = @"Full Feature Flag Fetch Did Complete";
    v18 = 2112;
    v19 = @"RunningWithoutJavascriptWaitingForFullFeatureFlag";
    v20 = 2112;
    v21 = v11;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@ - fullFeatureFlag: %@ - error: %@", &v16, 0x2Au);
  }

  if (v9)
  {
    v13 = [v6 vui_URLForKey:@"BootURL"];
    [WeakRetained _startApplicationControllerWithBootURL:v13 completion:0];

    v14 = @"RunningWithoutJavascriptWaitingForTVApplicationControllerToStartAndInitialTabItems";
  }

  else
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:1];
    v14 = @"RunningWithoutJavascript";
  }

  return v14;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_312(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = VUISignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TabBarItemsFetch", "", buf, 2u);
  }

  v8 = (*(*(a1 + 40) + 16))();
  if ([v8 count])
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Recieved tab items from javascript after waiting for initial tab items", v13, 2u);
    }

    (*(*(a1 + 48) + 16))();
    v10 = [MEMORY[0x1E69E15A8] sharedInstance];
    [v10 prewarmSubscriptionData];

    v11 = @"RunningWithJavascript";
  }

  else
  {
    [*(a1 + 32) _showJavascriptUnavailableUIWithNetworkAvailable:1];
    v11 = @"RunningWithoutJavascript";
  }

  return v11;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Recieved tab items from javascript while running with javascript", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
  return @"RunningWithJavascript";
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_316(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Recieved tab items from javascript while running without javascript waint for initial tab items", v9, 2u);
  }

  (*(*(a1 + 32) + 16))();
  return @"RunningWithJavascript";
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "TabBarItemUpdates", "", buf, 2u);
  }

  v3 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v3 recordAppLaunchEventWithEventType:@"tabBarItemUpdatesStart"];

  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - tv app controller did finish launching from waiting for tv app controller to start, updating tab bar items", v10, 2u);
  }

  v5 = [WeakRetained tabBarItems];
  [WeakRetained _finishJavascriptSetupWithTabBarItems:v5 setSelectedIdentifierFromDefaults:1];

  v6 = VUISignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "TabBarItemUpdates", "", v9, 2u);
  }

  v7 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v7 recordAppLaunchEventWithEventType:@"tabBarItemUpdatesEnd"];

  return @"RunningWithJavascript";
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - tv app controller did finish launching from running without javascript, updating tab bar items", v5, 2u);
  }

  v3 = [WeakRetained tabBarItems];
  [WeakRetained _finishJavascriptSetupWithTabBarItems:v3 setSelectedIdentifierFromDefaults:0];

  return @"RunningWithJavascript";
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_325(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:1];
  [WeakRetained _handleDeferredParsedOpenURLIfNeeded];

  return @"RunningWithoutJavascript";
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_326(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:1];

  return @"RunningWithoutJavascript";
}

id __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_4_330(uint64_t a1, void *a2)
{
  v3 = a2;
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v4 = +[VUIFeaturesConfiguration sharedInstance];
    v5 = [v4 launchConfig];
    v6 = [v5 checkRemoteServerReachability];

    if (v6)
    {
      v7 = VUIDefaultLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: NoJS:Foreground: checkRemoteServerReachability begin", v11, 2u);
      }

      v8 = +[_TtC8VideosUI32RemoteNetworkReachabilityMonitor shared];
      [v8 checkRemoteServerReachabilityWithCompletionHandler:&__block_literal_global_334];
    }

    else
    {
      v8 = [*(a1 + 32) stateMachine];
      [v8 postEvent:@"Network Reachability Did Change" withContext:0 userInfo:0];
    }
  }

  v9 = [v3 currentState];

  return v9;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_332()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: NoJS:Foreground: checkRemoteServerReachability end", v1, 2u);
  }
}

id __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_335(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v5 = *(a1 + 32);
  if (!v4)
  {
    v15 = [v5 stateMachine];
    [v15 postEvent:@"Network Reachability Did Change" withContext:0 userInfo:0];
    goto LABEL_21;
  }

  v6 = [v5 appController];
  v7 = [v6 appContext];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v26[0] = 67109376;
    v26[1] = 1;
    v27 = 1024;
    v28 = v7 != 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - check tabItesm after app become active network %d, js running %d", v26, 0xEu);
  }

  if (!v7)
  {
    v16 = VUIDefaultLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_335_cold_1(v16);
    }

    goto LABEL_17;
  }

  v9 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v9 userInterfaceIdiom] != 1)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([v10 isRunningTest])
  {

LABEL_8:
    goto LABEL_9;
  }

  v23 = _os_feature_enabled_impl();

  if ((v23 & 1) == 0)
  {
    v24 = [*(a1 + 32) splitViewController];
    v25 = [v24 hasRemoteBarItems];

    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

LABEL_9:
  v11 = [*(a1 + 32) tabBarController];
  v12 = [v11 tabBarItems];
  v13 = [v12 count];

  if (v13 <= 1)
  {
LABEL_10:
    v14 = VUIDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26[0]) = 0;
      _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - js app runing, network connected but no tabItems??, trying to refresh", v26, 2u);
    }

    [*(a1 + 32) refreshTabBarItems];
  }

LABEL_17:
  v17 = +[VUIFeaturesConfiguration sharedInstance];
  v18 = [v17 launchConfig];
  v19 = [v18 checkRemoteServerReachability];

  if (!v19)
  {
    goto LABEL_22;
  }

  v20 = VUIDefaultLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v26[0]) = 0;
    _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: WithJS:Foreground: checkRemoteServerReachability begin", v26, 2u);
  }

  v15 = +[_TtC8VideosUI32RemoteNetworkReachabilityMonitor shared];
  [v15 checkRemoteServerReachabilityWithCompletionHandler:&__block_literal_global_338_0];
LABEL_21:

LABEL_22:
  v21 = [v3 currentState];

  return v21;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_336()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: WithJS:Foreground: checkRemoteServerReachability end", v1, 2u);
  }
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_339(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 currentState];

  if (+[VUITVAppLauncher isRemoteServerLikelyReachable])
  {
    v6 = v5;
  }

  else
  {
    [WeakRetained _showJavascriptUnavailableUIWithNetworkAvailable:0];
    v6 = @"RunningWithoutJavascript";
  }

  return v6;
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_340(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v33 = a2;
  v31 = a3;
  v32 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 25) = 1;
  }

  v12 = [v9 vui_BOOLForKey:@"FromRemoteNetworkMonitor" defaultValue:0];
  v13 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v14 = 0;
  if (+[VUIAuthenticationManager isLibraryOnlyCountry])
  {
    v14 = +[VUIAuthenticationManager isLibraryOnlyCountryResolved];
  }

  v15 = +[VUITVAppLauncher isRemoteServerConnected];
  v16 = VUIDefaultLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    buf = __PAIR64__(v13, 67109888);
    v39 = 1024;
    v40 = v15;
    v41 = 1024;
    v42 = v14;
    v43 = 1024;
    v44 = v12;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: NoJS:NetworkChange: isNetworkReachable: %d, isRemoteServerConnected: %d, isLibraryOnlyCountryMode: %d, isFromRemoteServerMonitor: %d", &buf, 0x1Au);
  }

  v17 = +[VUIFeaturesConfiguration sharedInstance];
  v18 = [v17 launchConfig];
  v19 = [v18 checkRemoteServerReachability];

  if (((v19 & v13 ^ 1 | v14 | v12) & 1) == 0)
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: NoJS:NetworkChanged:RemoteServer: checkRemoteServerReachability begin", &buf, 2u);
    }

    v25 = +[_TtC8VideosUI32RemoteNetworkReachabilityMonitor shared];
    [v25 checkRemoteServerReachabilityWithCompletionHandler:&__block_literal_global_343];

    goto LABEL_19;
  }

  if (v14 || !v15)
  {
    v20 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v20 userInterfaceIdiom] == 1)
    {
      v21 = [MEMORY[0x1E69DC668] sharedApplication];
      if (![v21 isRunningTest])
      {
        v30 = _os_feature_enabled_impl();

        if ((v30 & 1) == 0)
        {
LABEL_19:
          v26 = @"RunningWithoutJavascript";
          goto LABEL_24;
        }

LABEL_13:
        v22 = VUIDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E323F000, v22, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Hiding tab bar", &buf, 2u);
        }

        v23 = [v11 tabBarController];
        [v23 setTabBarHidden:1];

        goto LABEL_19;
      }
    }

    goto LABEL_13;
  }

  [v11 showLoadingView];
  (*(*(a1 + 32) + 16))();
  objc_initWeak(&buf, v11);
  if (_os_feature_enabled_impl())
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_346;
    v36[3] = &unk_1E87306E0;
    v27 = &v37;
    objc_copyWeak(&v37, &buf);
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v36];
  }

  else
  {
    v28 = MEMORY[0x1E69E15F8];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_350;
    v34[3] = &unk_1E872F5D0;
    v27 = &v35;
    objc_copyWeak(&v35, &buf);
    [v28 isFullTVAppEnabledwithCompletion:v34];
  }

  objc_destroyWeak(v27);
  objc_destroyWeak(&buf);
  v26 = @"RunningWithoutJavascriptWaitingForBootURL";
LABEL_24:

  return v26;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_341()
{
  v0 = VUIDefaultLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1E323F000, v0, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: NoJS:NetworkChanged:RemoteServer: checkRemoteServerReachability end", v1, 2u);
  }
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_346(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Showing tab bar - isFullTVAppEnabled: %d and error %@", buf, 0x12u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_347;
  v7[3] = &unk_1E872EDE0;
  objc_copyWeak(&v8, (a1 + 32));
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_347(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_350(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (a2)
    {
      v5 = @"YES";
    }

    *buf = 138412290;
    v10 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Showing tab bar - isFullTVAppEnabled: %@", buf, 0xCu);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_351;
  v6[3] = &unk_1E872EDE0;
  objc_copyWeak(&v7, (a1 + 32));
  v8 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
  objc_destroyWeak(&v7);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_351(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_352(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v37 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = +[VUITVAppLauncher isRemoteServerLikelyReachable];
  v14 = [v11 vui_BOOLForKey:@"FromRemoteNetworkMonitor" defaultValue:0];
  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v13;
    v45 = 1024;
    v46 = v14;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: WithJS:NetworkChange: isRemoteServerLikelyReachable: %d, isFromRemoteServerMonitor: %d", &buf, 0xEu);
  }

  if (!v13)
  {
    v17 = [objc_opt_class() _libraryOnlyTabBarItem];
    v18 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v18 userInterfaceIdiom] == 1)
    {
      v19 = [MEMORY[0x1E69DC668] sharedApplication];
      if (![v19 isRunningTest])
      {
        v33 = _os_feature_enabled_impl();

        if ((v33 & 1) == 0)
        {
          v34 = VUIDefaultLogObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1E323F000, v34, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - SplitViewController updatedWithBarItems Library Only", &buf, 2u);
          }

          v21 = [*(a1 + 32) splitViewController];
          v43 = v17;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
          [v21 updateWithBarItems:v22 setSelectedIdentifierFromDefaults:0 appContext:0];
LABEL_13:

          v23 = [MEMORY[0x1E69DC938] currentDevice];
          if ([v23 userInterfaceIdiom] == 1)
          {
            v24 = [MEMORY[0x1E69DC668] sharedApplication];
            if (![v24 isRunningTest])
            {
              v35 = _os_feature_enabled_impl();

              if ((v35 & 1) == 0)
              {
LABEL_18:
                v26 = [MEMORY[0x1E69DC938] currentDevice];
                if ([v26 userInterfaceIdiom] == 1)
                {
                  v27 = [MEMORY[0x1E69DC668] sharedApplication];
                  if (![v27 isRunningTest])
                  {
                    v36 = _os_feature_enabled_impl();

                    if ((v36 & 1) == 0)
                    {
LABEL_25:

                      v30 = @"RunningWithoutJavascript";
                      goto LABEL_28;
                    }

LABEL_22:
                    v28 = VUIDefaultLogObject();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(buf) = 0;
                      _os_log_impl(&dword_1E323F000, v28, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Hiding tab bar", &buf, 2u);
                    }

                    v29 = [WeakRetained tabBarController];
                    [v29 setTabBarHidden:1];

                    goto LABEL_25;
                  }
                }

                goto LABEL_22;
              }

LABEL_17:
              v25 = [WeakRetained tabBarController];
              [v25 setSelectedIndexForTabBarItemIdentifier:@"library"];

              goto LABEL_18;
            }
          }

          goto LABEL_17;
        }

LABEL_10:
        v20 = VUIDefaultLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - TabBarController updatedWithBarItems Library Only", &buf, 2u);
        }

        v21 = [*(a1 + 32) tabBarController];
        v42 = v17;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
        [v21 updateWithTabBarItems:v22 setSelectedIdentifierFromDefaults:0 appContext:0];
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  objc_initWeak(&buf, WeakRetained);
  if (_os_feature_enabled_impl())
  {
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_353;
    v40[3] = &unk_1E87306E0;
    v16 = &v41;
    objc_copyWeak(&v41, &buf);
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v40];
  }

  else
  {
    v31 = MEMORY[0x1E69E15F8];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_355;
    v38[3] = &unk_1E872F5D0;
    v16 = &v39;
    objc_copyWeak(&v39, &buf);
    [v31 isFullTVAppEnabledwithCompletion:v38];
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(&buf);
  v30 = @"RunningWithJavascript";
LABEL_28:

  return v30;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_353(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v11 = a2;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: __EventNetworkReachabilityDidChange - isFullTVAppEnabled: %d and error %@", buf, 0x12u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_354;
  v7[3] = &unk_1E872EDE0;
  objc_copyWeak(&v8, (a1 + 32));
  v9 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
  objc_destroyWeak(&v8);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_354(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_355(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_356;
  v3[3] = &unk_1E872EDE0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_356(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

__CFString *__49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_357(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = @"Without Javascript Active Account Did Change";
    v31 = 2112;
    v32 = @"RunningWithoutJavascript";
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: %@ - JS State: %@", buf, 0x16u);
  }

  if (!v14)
  {
    v17 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v17 userInterfaceIdiom] == 1)
    {
      v18 = [MEMORY[0x1E69DC668] sharedApplication];
      if (![v18 isRunningTest])
      {
        v24 = _os_feature_enabled_impl();

        if ((v24 & 1) == 0)
        {
LABEL_13:
          v21 = @"RunningWithoutJavascript";
          goto LABEL_16;
        }

LABEL_10:
        v19 = VUIDefaultLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Hiding tab bar", buf, 2u);
        }

        v20 = [WeakRetained tabBarController];
        [v20 setTabBarHidden:1];

        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  (*(*(a1 + 32) + 16))();
  objc_initWeak(buf, WeakRetained);
  if (_os_feature_enabled_impl())
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_358;
    v27[3] = &unk_1E87306E0;
    v16 = &v28;
    objc_copyWeak(&v28, buf);
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v27];
  }

  else
  {
    v22 = MEMORY[0x1E69E15F8];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_360;
    v25[3] = &unk_1E872F5D0;
    v16 = &v26;
    objc_copyWeak(&v26, buf);
    [v22 isFullTVAppEnabledwithCompletion:v25];
  }

  objc_destroyWeak(v16);
  objc_destroyWeak(buf);
  v21 = @"RunningWithoutJavascriptWaitingForBootURL";
LABEL_16:

  return v21;
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_358(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: __EventWithoutJavascriptActiveAccountDidChange - isFullTVAppEnabled: %@ and error %@", buf, 0x16u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_359;
  v8[3] = &unk_1E872EDE0;
  objc_copyWeak(&v9, (a1 + 32));
  v10 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
  objc_destroyWeak(&v9);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_359(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_2_360(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_361;
  v3[3] = &unk_1E872EDE0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v4);
}

void __49__VUITVAppLauncher__registerStateMachineHandlers__block_invoke_3_361(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) == 1)
  {
    v7 = WeakRetained;
    v3 = [MEMORY[0x1E69DC938] currentDevice];
    if ([v3 userInterfaceIdiom] != 1)
    {
LABEL_5:

LABEL_6:
      v5 = [v7 tabBarController];
      [v5 setTabBarHidden:0];

      WeakRetained = v7;
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    if ([v4 isRunningTest])
    {

      goto LABEL_5;
    }

    v6 = _os_feature_enabled_impl();

    WeakRetained = v7;
    if (v6)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
}

- (void)_updateTabControllerWithTabBarItems:(id)items setSelectedIdentifierFromDefaults:(BOOL)defaults
{
  defaultsCopy = defaults;
  v28 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = [itemsCopy count];
  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    *v25 = 134218498;
    *&v25[4] = v7;
    *&v25[12] = 2112;
    if (defaultsCopy)
    {
      v9 = @"YES";
    }

    *&v25[14] = v9;
    v26 = 2112;
    v27 = itemsCopy;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Updating tabbar with items: count %ld - setSelectedIdentifierFromDefaults: %@, items: %@", v25, 0x20u);
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_8;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_8:
LABEL_9:
    tabBarController = [(VUITVAppLauncher *)self tabBarController];
    appController = [(VUITVAppLauncher *)self appController];
    appContext = [appController appContext];
    [tabBarController updateWithTabBarItems:itemsCopy setSelectedIdentifierFromDefaults:defaultsCopy appContext:appContext];
LABEL_10:

    goto LABEL_11;
  }

  v23 = _os_feature_enabled_impl();

  if (v23)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    tabBarController = [(VUITVAppLauncher *)self splitViewController];
    appController = [(VUITVAppLauncher *)self appController];
    appContext = [appController appContext];
    [tabBarController updateWithBarItems:itemsCopy setSelectedIdentifierFromDefaults:defaultsCopy appContext:appContext];
    goto LABEL_10;
  }

  v24 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  tabBarController = VUIDefaultLogObject();
  if (os_log_type_enabled(tabBarController, OS_LOG_TYPE_ERROR))
  {
    [VUITVAppLauncher _updateTabControllerWithTabBarItems:v24 setSelectedIdentifierFromDefaults:tabBarController];
  }

LABEL_11:

  [(VUITVAppLauncher *)self _retrieveSportsTabIdentifierFromTabBarItems:itemsCopy];
  if (!self->_deferredParsedOpenURL)
  {
    appController2 = [(VUITVAppLauncher *)self appController];
    appContext2 = [appController2 appContext];

    if (appContext2)
    {
      appController3 = [(VUITVAppLauncher *)self appController];
      appContext3 = [appController3 appContext];
      [VUIGDPRPresentationManager showGDPRWelcomeScreen:appContext3];
    }
  }

  if (!+[VUIGroupActivitiesManagerObjC isQuickStartupEnabled](VUIGroupActivitiesManagerObjC, "isQuickStartupEnabled", *v25, *&v25[8]) && !+[VUIGDPRPresentationManager shouldShowWelcomeScreen])
  {
    v19 = dispatch_get_global_queue(0, 0);
    dispatch_async(v19, &__block_literal_global_364);
  }

  v20 = +[VUIInterfaceFactory sharedInstance];
  openURLHandler = [v20 openURLHandler];
  if ([openURLHandler openedByDeeplink])
  {
  }

  else
  {
    v22 = +[VUIGDPRPresentationManager shouldShowWelcomeScreen];

    if (!v22)
    {
      [(VUITVAppLauncher *)self processStartupItems];
    }
  }

  [(VUITVAppLauncher *)self _handleDeferredParsedOpenURLIfNeeded];
}

void __90__VUITVAppLauncher__updateTabControllerWithTabBarItems_setSelectedIdentifierFromDefaults___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  +[_TtC8VideosUI8VideosUI initializeGroupActivities];

  objc_autoreleasePoolPop(v0);
}

+ (BOOL)isRemoteServerConnected
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
  v3 = +[VUIFeaturesConfiguration sharedInstance];
  launchConfig = [v3 launchConfig];
  checkRemoteServerReachability = [launchConfig checkRemoteServerReachability];

  v6 = +[_TtC8VideosUI32RemoteNetworkReachabilityMonitor shared];
  isReachable = [v6 isReachable];

  if (v2)
  {
    v8 = checkRemoteServerReachability ^ 1 | isReachable;
  }

  else
  {
    v8 = 0;
  }

  v9 = VUIDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109888;
    v11[1] = checkRemoteServerReachability;
    v12 = 1024;
    v13 = isReachable;
    v14 = 1024;
    v15 = v2;
    v16 = 1024;
    v17 = v8 & 1;
    _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - isRemoteServerConnected: checkRemoteServerReachability: %d, isRemoteServerReachable: %d, isNetworkReachable: %d, result: %d", v11, 0x1Au);
  }

  return v8 & 1;
}

- (void)_showJavascriptUnavailableUIWithNetworkAvailable:(BOOL)available
{
  availableCopy = available;
  v24 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (availableCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v23 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Showing JS unavailable UI - networkAvailable: %@", buf, 0xCu);
  }

  [(VUITVAppLauncher *)self _resetJavascriptState];
  _libraryOnlyTabBarItem = [objc_opt_class() _libraryOnlyTabBarItem];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_8;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_8:
LABEL_9:
    tabBarController = [(VUITVAppLauncher *)self tabBarController];
    v20 = _libraryOnlyTabBarItem;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [tabBarController updateWithTabBarItems:v11 setSelectedIdentifierFromDefaults:0 appContext:0];
    goto LABEL_10;
  }

  v18 = _os_feature_enabled_impl();

  if (v18)
  {
    goto LABEL_9;
  }

  tabBarController = [(VUITVAppLauncher *)self splitViewController];
  v21 = _libraryOnlyTabBarItem;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [tabBarController updateWithBarItems:v11 setSelectedIdentifierFromDefaults:0 appContext:0];
LABEL_10:

  v12 = VUIDefaultLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Event: Hiding tab bar", buf, 2u);
  }

  tabBarController2 = [(VUITVAppLauncher *)self tabBarController];
  [tabBarController2 setTabBarHidden:1];

  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice2 userInterfaceIdiom] != 1)
  {
    goto LABEL_15;
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668]2 isRunningTest])
  {

LABEL_15:
LABEL_16:
    tabBarController3 = [(VUITVAppLauncher *)self tabBarController];
    goto LABEL_17;
  }

  v19 = _os_feature_enabled_impl();

  if (v19)
  {
    goto LABEL_16;
  }

  tabBarController3 = [(VUITVAppLauncher *)self splitViewController];
LABEL_17:
  v17 = tabBarController3;
  [(UIWindow *)self->_appWindow vui_setRootViewController:tabBarController3];
  [(UIWindow *)self->_appWindow vui_makeKeyAndVisible];
  if (availableCopy)
  {
    [VUIGDPRPresentationManager showGDPRWelcomeScreen:0];
  }

  else
  {
    +[VUIGDPRPresentationManager showOfflineGDPRWelcomeScreen];
  }

  [(VUITVAppLauncher *)self _handleDeferredParsedOpenURLIfNeeded];
  [(VUITVAppLauncher *)self _resetDeferredParsedOpenURL];
  [(VUITVAppLauncher *)self hideLoadingView];
}

- (void)_fetchFullFeatureFlag:(id)flag
{
  v16 = *MEMORY[0x1E69E9840];
  flagCopy = flag;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = flagCopy;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Fetching full feature flag - bootURL: %@", buf, 0xCu);
  }

  v6 = VUISignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad.FetchFullFeatureFlag", "", buf, 2u);
  }

  objc_initWeak(buf, self);
  if (_os_feature_enabled_impl())
  {
    v7 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke;
    v12[3] = &unk_1E8732730;
    v8 = &v13;
    objc_copyWeak(&v13, buf);
    v12[4] = flagCopy;
    [_TtC8VideosUI22VUIBagServiceProxyObjC isFullTVAppEnabledWithCompletionHandler:v12];
  }

  else
  {
    v9 = objc_opt_class();
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_366;
    v10[3] = &unk_1E872F328;
    v8 = &v11;
    objc_copyWeak(&v11, buf);
    v10[4] = flagCopy;
    [v9 isFullTVAppEnabledwithCompletion:v10];
  }

  objc_destroyWeak(v8);
  objc_destroyWeak(buf);
}

void __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_2;
  v7[3] = &unk_1E8736B08;
  v11 = a2;
  v8 = v5;
  v6 = v5;
  objc_copyWeak(&v10, (a1 + 40));
  v9 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v7);

  objc_destroyWeak(&v10);
}

void __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    v10[0] = 67109378;
    v10[1] = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - _fetchFullFeatureFlag - isFullTVAppEnabled: %d, error: %@", v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v6 vui_setObjectIfNotNil:*(a1 + 40) forKey:@"BootURL"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v6 vui_setObjectIfNotNil:v7 forKey:@"fullFeatureFlag"];

  v8 = VUISignpostLogObject();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v10[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad.FetchFullFeatureFlag", "", v10, 2u);
  }

  v9 = [WeakRetained stateMachine];
  [v9 postEvent:@"Full Feature Flag Fetch Did Complete" withContext:0 userInfo:v6];
}

void __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_366(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_2_367;
  block[3] = &unk_1E872F708;
  objc_copyWeak(&v6, (a1 + 40));
  v5 = *(a1 + 32);
  v7 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v6);
}

void __42__VUITVAppLauncher__fetchFullFeatureFlag___block_invoke_2_367(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 vui_setObjectIfNotNil:*(a1 + 32) forKey:@"BootURL"];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  [v3 vui_setObjectIfNotNil:v4 forKey:@"fullFeatureFlag"];

  v5 = VUISignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.URLLoad.FetchFullFeatureFlag", "", v7, 2u);
  }

  v6 = [WeakRetained stateMachine];
  [v6 postEvent:@"Full Feature Flag Fetch Did Complete" withContext:0 userInfo:v3];
}

- (void)_startApplicationControllerWithBootURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v7 = VUISignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "JS.StartingApplicationControllerWithBootURL", "", buf, 2u);
  }

  v8 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v8 recordAppLaunchEventWithEventType:@"applicationControllerWithBootUrlStart"];

  v9 = objc_alloc_init(VUITVApplicationControllerContext);
  [(VUITVApplicationControllerContext *)v9 setJavaScriptApplicationURL:lCopy];
  v10 = +[VUIAppScriptDownloadManager sharedInstance];
  [v10 fetchAppJavascript:lCopy cachePolicy:0 completionHandler:0];

  launchOptions = [(VUITVAppLauncher *)self launchOptions];
  v12 = launchOptions;
  if (launchOptions)
  {
    v13 = [launchOptions mutableCopy];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:4];
  }

  v14 = v13;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  [v14 setObject:bundleIdentifier forKey:@"reqApp"];
  v17 = [v12 objectForKey:*MEMORY[0x1E69DDB20]];
  if (v17)
  {
    [v14 setObject:v17 forKey:@"refApp"];
  }

  selfCopy = self;
  vui_parsedQueryParametersDictionary = [lCopy vui_parsedQueryParametersDictionary];
  if ([vui_parsedQueryParametersDictionary count])
  {
    [v14 setObject:vui_parsedQueryParametersDictionary forKey:@"query"];
  }

  mEMORY[0x1E69DF700] = [MEMORY[0x1E69DF700] sharedInstance];
  osFeatureFlagsJSON = [mEMORY[0x1E69DF700] osFeatureFlagsJSON];

  if ([osFeatureFlagsJSON count])
  {
    [v14 setObject:osFeatureFlagsJSON forKey:@"featureFlags"];
  }

  v22 = [v14 copy];
  [(VUITVApplicationControllerContext *)v9 setLaunchOptions:v22];

  [(VUITVAppLauncher *)selfCopy _finishApplicationControllerWithLaunchContext:v9 completion:completionCopy];
}

- (void)_finishApplicationControllerWithLaunchContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v8 = [[VUITVApplicationController alloc] initWithContext:contextCopy window:self->_appWindow delegate:self];

  [(VUITVAppLauncher *)self setAppController:v8];
  v9 = VUISignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "JS.StartingApplicationControllerWithBootURL", "", v15, 2u);
  }

  v10 = +[VUIPerfMetricsAppLaunchController sharedInstance];
  [v10 recordAppLaunchEventWithEventType:@"applicationControllerWithBootUrlEnd"];

  appWindow = self->_appWindow;
  vui_windowBackgroundColor = [MEMORY[0x1E69DC888] vui_windowBackgroundColor];
  [(UIWindow *)appWindow setBackgroundColor:vui_windowBackgroundColor];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"VUITVAppLauncherApplicationControllerDidStartNotification" object:0];

  if (+[VUIGroupActivitiesManagerObjC isQuickStartupEnabled](VUIGroupActivitiesManagerObjC, "isQuickStartupEnabled") && !+[VUIGDPRPresentationManager shouldShowWelcomeScreen])
  {
    v14 = dispatch_get_global_queue(0, 0);
    dispatch_async(v14, &__block_literal_global_388);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

void __77__VUITVAppLauncher__finishApplicationControllerWithLaunchContext_completion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  +[_TtC8VideosUI8VideosUI initializeGroupActivities];

  objc_autoreleasePoolPop(v0);
}

- (void)_stopApplicationController
{
  appController = [(VUITVAppLauncher *)self appController];
  [appController stop];
}

- (BOOL)_isActiveMediaLibraryTheDeviceMediaLibrary
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_4:
    goto LABEL_5;
  }

  v9 = _os_feature_enabled_impl();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

LABEL_5:
  v4 = +[VUIMediaLibraryManager defaultManager];
  activeMediaLibrary = [v4 activeMediaLibrary];
  deviceMediaLibrary = [v4 deviceMediaLibrary];
  v7 = activeMediaLibrary == deviceMediaLibrary;

  return v7;
}

- (void)_handleNetworkReachabilityDidChangeNotification:(id)notification
{
  v11[1] = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachableUserInfoKey];
  v6 = [userInfo vui_BOOLForKey:v5 defaultValue:0];

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  v10 = @"IsNetworkReachable";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v11[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  [stateMachine postEvent:@"Network Reachability Did Change" withContext:0 userInfo:v9];
}

- (void)_handleRemoteNetworkReachabilityDidChangeNotification:(id)notification
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - _handleRemoteNetworkReachabilityDidChangeNotification", v10, 2u);
  }

  v5 = +[VUIFeaturesConfiguration sharedInstance];
  launchConfig = [v5 launchConfig];
  checkRemoteServerReachability = [launchConfig checkRemoteServerReachability];

  if (checkRemoteServerReachability)
  {
    stateMachine = [(VUITVAppLauncher *)self stateMachine];
    v11 = @"FromRemoteNetworkMonitor";
    v12[0] = MEMORY[0x1E695E118];
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    [stateMachine postEvent:@"Network Reachability Did Change" withContext:0 userInfo:v9];
  }
}

- (VUIRootSplitViewController)splitViewController
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_4:
LABEL_5:
    p_splitViewController = &self->_splitViewController;
LABEL_6:
    v6 = *p_splitViewController;
    goto LABEL_7;
  }

  v8 = _os_feature_enabled_impl();

  if (v8)
  {
    goto LABEL_5;
  }

  splitViewController = self->_splitViewController;
  p_splitViewController = &self->_splitViewController;
  v6 = splitViewController;
  if (!splitViewController)
  {
    v10 = +[VUIInterfaceFactory sharedInstance];
    rootSplitViewController = [v10 rootSplitViewController];
    v12 = *p_splitViewController;
    *p_splitViewController = rootSplitViewController;

    v13 = VUIDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Requested SplitViewController from InterfaceFactory", v14, 2u);
    }

    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

- (void)_handleParsedOpenURL:(id)l
{
  lCopy = l;
  appController = [(VUITVAppLauncher *)self appController];
  appContext = [appController appContext];
  v7 = [VUIGDPRPresentationManager showGDPRWelcomeScreen:appContext];

  if (v7)
  {
    objc_initWeak(&location, self);
    v8 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v8 openURLHandler];
    v10 = [lCopy URL];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __41__VUITVAppLauncher__handleParsedOpenURL___block_invoke;
    v20 = &unk_1E8736918;
    objc_copyWeak(&v21, &location);
    [openURLHandler saveDeferredURL:v10 completion:&v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
    [(VUITVAppLauncher *)self hideLoadingView:v17];
  }

  else
  {
    v11 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler2 = [v11 openURLHandler];
    v13 = [lCopy URL];
    appController2 = [(VUITVAppLauncher *)self appController];
    appContext2 = [appController2 appContext];
    deeplinkCompletionHandler = [(VUITVAppLauncher *)self deeplinkCompletionHandler];
    [openURLHandler2 processDeeplink:v13 appContext:appContext2 completion:deeplinkCompletionHandler];
  }
}

void __41__VUITVAppLauncher__handleParsedOpenURL___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained deeplinkCompletionHandler];
  (v11)[2](v11, v10, v9, a4, a5);
}

- (void)_handleDeferredParsedOpenURLIfNeeded
{
  deferredParsedOpenURL = [(VUITVAppLauncher *)self deferredParsedOpenURL];
  if (deferredParsedOpenURL)
  {
    [(VUITVAppLauncher *)self setDeferredParsedOpenURL:0];
    [(VUITVAppLauncher *)self _handleParsedOpenURL:deferredParsedOpenURL];
  }

  else
  {
    v3 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v3 openURLHandler];
    deferredOpenURL = [openURLHandler deferredOpenURL];

    if (([objc_opt_class() isDeeplinkTVButton:deferredOpenURL] & 1) == 0)
    {
      [(VUITVAppLauncher *)self hideLoadingView];
    }
  }
}

- (void)_accountsChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [changedCopy userInfo];
    *buf = 138412290;
    v17 = userInfo;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Active account has changed %@", buf, 0xCu);
  }

  v7 = +[VUIMetricsController sharedInstance];
  [v7 updateGDPRConsentStatus];

  if (+[VUIAuthenticationManager userHasActiveAccount])
  {
    stateMachine = [(VUITVAppLauncher *)self stateMachine];
    currentState = [stateMachine currentState];
    v10 = [currentState isEqual:@"RunningWithoutJavascript"];

    v11 = VUIDefaultLogObject();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Active account has changed and Javscript is not running", buf, 2u);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__VUITVAppLauncher__accountsChanged___block_invoke;
      block[3] = &unk_1E872D768;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Active account has changed. Fetch config and refresh tab bar items.", buf, 2u);
      }

      [(VUITVAppLauncher *)self refreshTabBarItems];
    }
  }

  else
  {
    objc_initWeak(buf, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__VUITVAppLauncher__accountsChanged___block_invoke_401;
    v13[3] = &unk_1E872E4B8;
    objc_copyWeak(&v14, buf);
    dispatch_async(MEMORY[0x1E69E96A0], v13);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }
}

void __37__VUITVAppLauncher__accountsChanged___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) stateMachine];
  [v1 postEvent:@"Without Javascript Active Account Did Change" withContext:0 userInfo:0];
}

void __37__VUITVAppLauncher__accountsChanged___block_invoke_401(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained tabBarController];
  v3 = [v2 selectedIndex];

  v4 = [WeakRetained tabBarController];
  v5 = [v4 tabBarItems];

  if (v3 >= [v5 count])
  {
    v6 = 0;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v5 objectAtIndex:v6];
  v8 = [v7 vui_stringForKey:@"documentRef"];
  if ([v8 isEqualToString:@"Library"])
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - User signed out. Popping to library tab root.", v13, 2u);
    }

    v10 = [WeakRetained appController];
    v11 = [v10 navigationController];
    v12 = [v11 popToRootViewControllerAnimated:0];
  }
}

- (void)_isLibraryOnlyCountryChanged:(id)changed
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    +[VUIAuthenticationManager isLibraryOnlyCountry];
    v5 = VUIBoolLogString();
    +[VUIAuthenticationManager isLibraryOnlyCountryResolved];
    v6 = VUIBoolLogString();
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Is library only has changed. isLibraryOnlyCountry %@ . isLibraryOnlyCountryResolved %@", &v8, 0x16u);
  }

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  [stateMachine postEvent:@"Is Library Only Country Did Change"];
}

void __35__VUITVAppLauncher_hideLoadingView__block_invoke()
{
  v0 = +[VUIAppLoadingView loadingScreen];
  [v0 hide];
}

+ (BOOL)isDeeplinkTVButton:(id)button
{
  buttonCopy = button;
  host = [buttonCopy host];
  if ([host isEqualToString:@"button"])
  {
    path = [buttonCopy path];
    v6 = [path isEqualToString:@"/tv"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)_isDeeplinkTVButton:(id)button
{
  v3 = [button URL];
  v4 = [objc_opt_class() isDeeplinkTVButton:v3];

  return v4;
}

- (void)_finishAppLoading
{
  [(VUITVAppLauncher *)self setIsStillProcessingStartupItems:0];
  if (![(VUITVAppLauncher *)self didProcessAppFinishLoading])
  {
    if (_os_feature_enabled_impl())
    {
      v3 = VUIDefaultLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - Cold launch -- Check if there is any pending ODJ badging action metrics", v4, 2u);
      }

      +[_TtC8VideosUI8VideosUI handleUnifiedMessagingAppDidFinishLoading];
      [MEMORY[0x1E69E14D8] processStoredODJBadgingRequestActions];
      +[_TtC8VideosUI8VideosUI fetchODJBadgingAppLevelSheet];
    }

    else
    {
      +[_TtC8VideosUI8VideosUI handleUnifiedMessagingAppDidFinishLoading];
    }
  }

  [(VUITVAppLauncher *)self setDidProcessAppFinishLoading:1];
}

- (BOOL)_shouldRecordExitEvent
{
  v2 = +[VUIMetricsController sharedInstance];
  currentTabIdentifier = [v2 currentTabIdentifier];
  v4 = [currentTabIdentifier isEqualToString:@"library"];

  v5 = +[VUIPlaybackManager sharedInstance];
  LOBYTE(currentTabIdentifier) = [v5 isFullscreenPlaybackUIBeingShown];

  return (v4 | currentTabIdentifier) & 1;
}

- (void)_retrieveSportsTabIdentifierFromTabBarItems:(id)items
{
  v39[3] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = MEMORY[0x1E695DFD8];
  v39[0] = @"sports";
  v39[1] = @"mls";
  v39[2] = @"tvs.sbd.7000";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
  v7 = [v5 setWithArray:v6];

  sportsTabIdentifier = self->_sportsTabIdentifier;
  p_sportsTabIdentifier = &self->_sportsTabIdentifier;
  *p_sportsTabIdentifier = 0;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = itemsCopy;
  v10 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v27 = *v34;
    v26 = p_sportsTabIdentifier;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 vui_stringForKey:@"identifier"];
        if ([v7 containsObject:v14])
        {
          p_sportsTabIdentifier = v26;
          v23 = *v26;
          *v26 = v14;

          goto LABEL_21;
        }

        v15 = [v13 vui_arrayForKey:@"childItems"];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          while (2)
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v29 + 1) + 8 * j) vui_stringForKey:@"identifier"];
              if ([v7 containsObject:v21])
              {
                v22 = *v26;
                *v26 = v21;

                goto LABEL_17;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v11 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
      p_sportsTabIdentifier = v26;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  if (![*p_sportsTabIdentifier length])
  {
    v24 = VUIDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v24, OS_LOG_TYPE_DEFAULT, "VUITVAppLauncher - VUITVAppLauncher:: there may be no sports tab in the remote items, or the sport tab has different identifier now. Double check it", buf, 2u);
    }

    objc_storeStrong(p_sportsTabIdentifier, @"sports");
  }
}

- (void)updateAppAppearance
{
  v3 = +[VUISettingsManager sharedInstance];
  appAppearance = [v3 appAppearance];

  appWindow = [(VUITVAppLauncher *)self appWindow];
  v7 = appWindow;
  if (appAppearance == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2 * (appAppearance == 0);
  }

  [appWindow setOverrideUserInterfaceStyle:v6];
}

- (void)appController:(id)controller didFinishLaunchingWithOptions:(id)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (options)
  {
    v9 = @"Options";
    v10[0] = options;
    v5 = MEMORY[0x1E695DF20];
    optionsCopy = options;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  [stateMachine postEvent:@"TVApplicationController Did Finish Launching" withContext:0 userInfo:v7];
}

- (void)appController:(id)controller didFailWithError:(id)error
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v9 = @"Error";
    v10[0] = error;
    v5 = MEMORY[0x1E695DF20];
    errorCopy = error;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  [stateMachine postEvent:@"TVApplicationController Did Fail To Launch" withContext:0 userInfo:v7];
}

- (void)appController:(id)controller didStopWithOptions:(id)options
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (options)
  {
    v9 = @"Options";
    v10[0] = options;
    v5 = MEMORY[0x1E695DF20];
    optionsCopy = options;
    v7 = [v5 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = 0;
  }

  stateMachine = [(VUITVAppLauncher *)self stateMachine];
  [stateMachine postEvent:@"TVApplicationController Did Stop" withContext:0 userInfo:v7];
}

- (void)appController:(id)controller evaluateAppJavaScriptInContext:(id)context
{
  controllerCopy = controller;
  contextCopy = context;
  [_TtC8VideosUI8VideosUI initializeJSContext:contextCopy];
  v8 = [contextCopy objectForKeyedSubscript:@"App"];
  objc_initWeak(&location, self);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __65__VUITVAppLauncher_appController_evaluateAppJavaScriptInContext___block_invoke;
  v13 = &unk_1E8733538;
  objc_copyWeak(&v14, &location);
  v9 = _Block_copy(&v10);
  [v8 setValue:v9 forProperty:{@"ata_setTabBarItems", v10, v11, v12, v13}];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __65__VUITVAppLauncher_appController_evaluateAppJavaScriptInContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _javascriptSetTabBarItems:v3];
}

- (id)rootViewControllerForAppController:(id)controller
{
  v4 = +[VUIPlaybackManager sharedInstance];
  isFullscreenPlaybackUIBeingShown = [v4 isFullscreenPlaybackUIBeingShown];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];
  if (!isFullscreenPlaybackUIBeingShown)
  {
    if (userInterfaceIdiom == 1)
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      if (![mEMORY[0x1E69DC668] isRunningTest])
      {
        v20 = _os_feature_enabled_impl();

        if ((v20 & 1) == 0)
        {
          splitViewController = self->_splitViewController;
          self->_splitViewController = 0;
          goto LABEL_13;
        }

LABEL_12:
        splitViewController = self->_tabBarController;
        self->_tabBarController = 0;
LABEL_13:

        goto LABEL_17;
      }
    }

    goto LABEL_12;
  }

  if (userInterfaceIdiom != 1)
  {
LABEL_5:

LABEL_6:
    if (![(VUITabBarProtocol *)self->_tabBarController conformsToProtocol:&unk_1F5EFDAB8])
    {
      goto LABEL_17;
    }

    tabBarController = self->_tabBarController;
    goto LABEL_16;
  }

  mEMORY[0x1E69DC668]2 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668]2 isRunningTest])
  {

    goto LABEL_5;
  }

  v12 = _os_feature_enabled_impl();

  if (v12)
  {
    goto LABEL_6;
  }

  tabBarController = self->_splitViewController;
LABEL_16:
  [(VUITabBarProtocol *)tabBarController removeAllChildViewControllers];
LABEL_17:
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice2 userInterfaceIdiom] != 1)
  {
LABEL_20:

    goto LABEL_21;
  }

  mEMORY[0x1E69DC668]3 = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668]3 isRunningTest])
  {

    goto LABEL_20;
  }

  v17 = _os_feature_enabled_impl();

  if ((v17 & 1) == 0)
  {
    splitViewController = [(VUITVAppLauncher *)self splitViewController];
    goto LABEL_30;
  }

LABEL_21:
  tabBarController = [(VUITVAppLauncher *)self tabBarController];
  if ([tabBarController conformsToProtocol:&unk_1F5E7E650] || +[VUIUtilities isSUIEnabled](VUIUtilities, "isSUIEnabled"))
  {
    splitViewController = tabBarController;
  }

  else
  {
    v18 = VUIDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [VUITVAppLauncher rootViewControllerForAppController:v18];
    }

    splitViewController = 0;
  }

LABEL_30:

  return splitViewController;
}

- (id)rootViewController
{
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_4:
    goto LABEL_5;
  }

  v7 = _os_feature_enabled_impl();

  if (v7)
  {
LABEL_5:
    if (+[VUIUtilities isSUIEnabled])
    {
      splitViewController = 0;
    }

    else
    {
      tabBarController = [(VUITVAppLauncher *)self tabBarController];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        splitViewController = tabBarController;
      }

      else
      {
        splitViewController = 0;
      }
    }

    goto LABEL_13;
  }

  splitViewController = [(VUITVAppLauncher *)self splitViewController];
LABEL_13:

  return splitViewController;
}

- (void)_javascriptSetTabBarItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v5 vui_setObjectIfNotNil:itemsCopy forKey:@"TabItems"];
  objc_initWeak(&location, self);
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
    goto LABEL_4;
  }

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  if ([mEMORY[0x1E69DC668] isRunningTest])
  {

LABEL_4:
    goto LABEL_5;
  }

  v11 = _os_feature_enabled_impl();

  if ((v11 & 1) == 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke;
    block[3] = &unk_1E872D9B8;
    v8 = &v19;
    objc_copyWeak(&v19, &location);
    v9 = &v17;
    v17 = itemsCopy;
    v18 = v5;
    v12 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_6;
  }

LABEL_5:
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke_3;
  v13[3] = &unk_1E872F038;
  v8 = &v15;
  objc_copyWeak(&v15, &location);
  v9 = &v14;
  v14 = v5;
  v10 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v13);
LABEL_6:

  objc_destroyWeak(v8);
  objc_destroyWeak(&location);
}

void __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained splitViewController];
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke_2;
  v5[3] = &unk_1E872F038;
  objc_copyWeak(&v7, (a1 + 48));
  v6 = *(a1 + 40);
  [v3 preloadImageViewModelsFromBarItems:v4 completion:v5];

  objc_destroyWeak(&v7);
}

void __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isTerminating] & 1) == 0)
  {
    v2 = [WeakRetained stateMachine];
    [v2 postEvent:@"Tab Items Received From Javascript" withContext:0 userInfo:*(a1 + 32)];
  }
}

void __46__VUITVAppLauncher__javascriptSetTabBarItems___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isTerminating] & 1) == 0)
  {
    v2 = [WeakRetained stateMachine];
    [v2 postEvent:@"Tab Items Received From Javascript" withContext:0 userInfo:*(a1 + 32)];
  }
}

+ (id)_libraryOnlyTabBarItem
{
  v15[6] = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v5 = &stru_1F5DB25C0;
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [mainBundle localizedStringForKey:@"LIBRARY_TAB" value:0 table:0];
  }

  v14[0] = @"identifier";
  v14[1] = @"documentRef";
  v15[0] = @"library";
  v15[1] = @"Library";
  v15[2] = v5;
  v14[2] = @"title";
  v14[3] = @"isSideBarItem";
  v7 = MEMORY[0x1E696AD98];
  currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];
  if (userInterfaceIdiom2 == 1)
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    if ([mEMORY[0x1E69DC668] isRunningTest])
    {
      v10 = 0;
    }

    else
    {
      v10 = _os_feature_enabled_impl() ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 numberWithInt:v10];
  v15[3] = v11;
  v15[4] = MEMORY[0x1E695E110];
  v14[4] = @"showHeader";
  v14[5] = @"collapsable";
  v15[5] = MEMORY[0x1E695E110];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (userInterfaceIdiom2 == 1)
  {
  }

  return v12;
}

- (void)setIsStillProcessingStartupItems:(BOOL)items
{
  itemsCopy = items;
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_isStillProcessingStartupItemsLock);
  self->_isStillProcessingStartupItems = itemsCopy;
  os_unfair_lock_unlock(&self->_isStillProcessingStartupItemsLock);
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (itemsCopy)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUITVAppLauncher::set isStillProcessingStartupItems to %@", &v7, 0xCu);
  }
}

- (BOOL)isStillProcessingStartupItems
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_isStillProcessingStartupItemsLock);
  isStillProcessingStartupItems = self->_isStillProcessingStartupItems;
  os_unfair_lock_unlock(&self->_isStillProcessingStartupItemsLock);
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (isStillProcessingStartupItems)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUITVAppLauncher:: read isStillProcessingStartupItems : %@", &v7, 0xCu);
  }

  return isStillProcessingStartupItems;
}

- (void)setDidProcessAppFinishLoading:(BOOL)loading
{
  loadingCopy = loading;
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_didProcessAppFinishLoadingLock);
  self->_didProcessAppFinishLoading = loadingCopy;
  os_unfair_lock_unlock(&self->_didProcessAppFinishLoadingLock);
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = @"NO";
    if (loadingCopy)
    {
      v6 = @"YES";
    }

    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUITVAppLauncher::set didProcessAppFinishLoading to %@", &v7, 0xCu);
  }
}

- (BOOL)didProcessAppFinishLoading
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_didProcessAppFinishLoadingLock);
  didProcessAppFinishLoading = self->_didProcessAppFinishLoading;
  os_unfair_lock_unlock(&self->_didProcessAppFinishLoadingLock);
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = @"NO";
    if (didProcessAppFinishLoading)
    {
      v5 = @"YES";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUITVAppLauncher:: read didProcessAppFinishLoading : %@", &v7, 0xCu);
  }

  return self->_didProcessAppFinishLoading;
}

- (void)_handlePrewarmSubscriptionDataNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(VUITVAppLauncher *)selfCopy startupPrewarmSubscriptionDataCompleted])
  {
    [(VUITVAppLauncher *)selfCopy setStartupPrewarmSubscriptionDataCompleted:1];
  }

  objc_sync_exit(selfCopy);
}

- (void)_handleOfferProcessingDidStartNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VUITVAppLauncher *)selfCopy setStartupOfferProcessingCompleted:0];
  objc_sync_exit(selfCopy);
}

- (void)_handleOfferProcessingDidFinishNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(VUITVAppLauncher *)selfCopy setStartupOfferProcessingCompleted:1];
  objc_sync_exit(selfCopy);
}

- (void)_updateTabControllerWithTabBarItems:(char)a1 setSelectedIdentifierFromDefaults:(NSObject *)a2 .cold.1(char a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = @"NO";
  if (a1)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "VUITVAppLauncher - Trying to update sidebar with 0 items, ignoring update. Network is reachable = %@", &v3, 0xCu);
}

@end