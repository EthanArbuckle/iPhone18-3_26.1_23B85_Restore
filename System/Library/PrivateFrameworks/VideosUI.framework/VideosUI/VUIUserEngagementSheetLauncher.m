@interface VUIUserEngagementSheetLauncher
+ (id)sharedInstance;
- (BOOL)isAnotherSheetShowingToUser;
- (VUIUserEngagementSheetLauncher)init;
- (id)_init;
- (void)_deleteKeysUsedForSheetPresentation;
- (void)_handleTabBarChange:(id)a3;
- (void)_handleUserNotificationAction:(int64_t)a3;
- (void)_showNotificationAuthorizationSheet;
- (void)dealloc;
- (void)handleAMSEngagementPresentationSheet:(BOOL)a3 isRepromptSupported:(BOOL)a4;
- (void)handleEngagementRequest:(id)a3 completion:(id)a4;
@end

@implementation VUIUserEngagementSheetLauncher

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_0 != -1)
  {
    +[VUIUserEngagementSheetLauncher sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

void __48__VUIUserEngagementSheetLauncher_sharedInstance__block_invoke()
{
  v0 = [[VUIUserEngagementSheetLauncher alloc] _init];
  v1 = sharedInstance___sharedInstance;
  sharedInstance___sharedInstance = v0;
}

- (VUIUserEngagementSheetLauncher)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (id)_init
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = VUIUserEngagementSheetLauncher;
  v2 = [(VUIUserEngagementSheetLauncher *)&v15 init];
  if (v2)
  {
    v3 = +[_TtC8VideosUI26VUIBarItemSelectionManager lastSelectedIdentifier];
    lastTabIdentifier = v2->_lastTabIdentifier;
    v2->_lastTabIdentifier = v3;

    v2->_hasAppLostConnectivity = 0;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy networkReachabilityDidChangeNotificationName];
    [v5 addObserver:v2 selector:sel__handleNetworkReachabilityDidChangeNotification_ name:v6 object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel__handleTabBarChange_ name:@"TVAppRootViewControllerCurrentNavigationControllerDidChangeNotification" object:0];

    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_firstPromptLaunchNumberAfterGDPR = [v8 integerForKey:@"KettleFirstPromptLaunchNumberAfterGDPR"];

    if (!v2->_firstPromptLaunchNumberAfterGDPR)
    {
      v2->_firstPromptLaunchNumberAfterGDPR = 1;
    }

    v9 = [MEMORY[0x1E695E000] standardUserDefaults];
    v2->_lastPromptLaunchNumberAfterGDPR = [v9 integerForKey:@"KettleLastPromptLaunchNumberAfterGDPR"];

    if (!v2->_lastPromptLaunchNumberAfterGDPR)
    {
      v2->_lastPromptLaunchNumberAfterGDPR = 3;
    }

    v10 = VUIDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      firstPromptLaunchNumberAfterGDPR = v2->_firstPromptLaunchNumberAfterGDPR;
      *buf = 134217984;
      v17 = firstPromptLaunchNumberAfterGDPR;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - firstPromptLaunchNumberAfterGDPR:%lu", buf, 0xCu);
    }

    v12 = VUIDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      lastPromptLaunchNumberAfterGDPR = v2->_lastPromptLaunchNumberAfterGDPR;
      *buf = 134217984;
      v17 = lastPromptLaunchNumberAfterGDPR;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - lastPromptLaunchNumberAfterGDPR:%lu", buf, 0xCu);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIUserEngagementSheetLauncher;
  [(VUIUserEngagementSheetLauncher *)&v4 dealloc];
}

- (void)handleAMSEngagementPresentationSheet:(BOOL)a3 isRepromptSupported:(BOOL)a4
{
  if (+[VUIGDPRPresentationManager shouldShowWelcomeScreen]|| a3)
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - handleAMSEngagementPresentationSheet additional requirements to show sheet not met.", location, 2u);
    }
  }

  else
  {
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke;
    aBlock[3] = &unk_1E872E508;
    objc_copyWeak(&v13, location);
    v14 = a4;
    aBlock[4] = self;
    v7 = _Block_copy(aBlock);
    if (_os_feature_enabled_impl())
    {
      [VUILocalNotificationService authorizationStatusWithCompletionHandler:v7];
    }

    else
    {
      v9 = [MEMORY[0x1E6983308] vuiNotificationCenter];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_42;
      v10[3] = &unk_1E872E530;
      v11 = v7;
      [v9 getNotificationSettingsWithCompletionHandler:v10];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(location);
  }
}

void __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke(uint64_t a1, void *a2)
{
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_2;
  v9 = &unk_1E872E4E0;
  objc_copyWeak(v11, (a1 + 40));
  v12 = *(a1 + 48);
  v4 = *(a1 + 32);
  v11[1] = a2;
  v10 = v4;
  v5 = &v6;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v8(v5);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }

  objc_destroyWeak(v11);
}

void __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - handleAMSEngagementPresentationSheet being called", &v25, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"KettleShouldStopShowingAMSSheet"];

  if (!*(a1 + 48) && (v5 & 1) == 0 && ([WeakRetained hasAppLostConnectivity] & 1) == 0 && (objc_msgSend(WeakRetained, "isAnotherSheetShowingToUser") & 1) == 0)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 objectForKey:@"KettleNumberOfAppLaunch"];

    v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{objc_msgSend(v7, "intValue") + 1}];
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Total number of launches: %@", &v25, 0xCu);
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setValue:v8 forKey:@"KettleNumberOfAppLaunch"];

    v11 = [MEMORY[0x1E695DF00] date];
    v12 = [v8 intValue];
    if ([WeakRetained firstPromptLaunchNumberAfterGDPR] == v12)
    {
      v13 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v13 setObject:v11 forKey:@"KettleFirstPromptTimestamp"];

      if ((*(a1 + 56) & 1) == 0)
      {
        v14 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v14 setBool:1 forKey:@"KettleShouldStopShowingAMSSheet"];
      }

      [*(a1 + 32) _showNotificationAuthorizationSheet];
    }

    else if (*(a1 + 56) == 1)
    {
      v15 = [MEMORY[0x1E695E000] standardUserDefaults];
      v16 = [v15 objectForKey:@"KettleFirstPromptTimestamp"];

      [v16 timeIntervalSince1970];
      v18 = v17;
      [v11 timeIntervalSince1970];
      v20 = v19;
      LODWORD(v15) = [v8 intValue];
      if ([WeakRetained lastPromptLaunchNumberAfterGDPR] <= v15 && v18 > 0.0 && v20 - v18 >= 259200.0)
      {
        v21 = VUIDefaultLogObject();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Reprompting for the notification sheet for the last time.", &v25, 2u);
        }

        v22 = [MEMORY[0x1E695E000] standardUserDefaults];
        [v22 setBool:1 forKey:@"KettleShouldStopShowingAMSSheet"];

        [*(a1 + 32) _showNotificationAuthorizationSheet];
      }
    }

    v23 = VUIDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [*(a1 + 32) lastTabIdentifier];
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Current tab identifier:%@", &v25, 0xCu);
    }
  }
}

uint64_t __91__VUIUserEngagementSheetLauncher_handleAMSEngagementPresentationSheet_isRepromptSupported___block_invoke_42(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 authorizationStatus];
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

- (void)_handleTabBarChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"VUIMetricsTabBarItemNotificationKey"];
  [(VUIUserEngagementSheetLauncher *)self setLastTabIdentifier:v4];
}

- (void)_showNotificationAuthorizationSheet
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E698CBD0]);
  [v3 setAuthorizationOptions:7];
  v4 = +[VUIAuthenticationManager DSID];
  v16[0] = @"pageContext";
  v5 = [(VUIUserEngagementSheetLauncher *)self lastTabIdentifier];
  v6 = v5;
  v7 = &stru_1F5DB25C0;
  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = &stru_1F5DB25C0;
  }

  v17[0] = v8;
  v17[1] = @"xp_amp_tv_main";
  v16[1] = @"topic";
  v16[2] = @"dsId";
  if (v4)
  {
    v7 = v4;
  }

  v17[2] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];

  [v3 setMetricsOverlay:v9];
  v10 = objc_alloc(MEMORY[0x1E698CBD8]);
  v11 = [MEMORY[0x1E696AAE8] mainBundle];
  v12 = [v11 bundleIdentifier];
  v13 = [v10 initWithBundleIdentifier:v12 options:v3];

  [v13 setDelegate:self];
  v14 = [v13 requestAuthorization];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __69__VUIUserEngagementSheetLauncher__showNotificationAuthorizationSheet__block_invoke;
  v15[3] = &unk_1E872E558;
  v15[4] = self;
  [v14 addFinishBlock:v15];
}

void __69__VUIUserEngagementSheetLauncher__showNotificationAuthorizationSheet__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 localizedDescription];
    v9 = [v6 code];
    v10 = [*(a1 + 32) lastTabIdentifier];
    v12 = 138412802;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - Promise result. Error description:%@; error code:%ld; tab identifier:%@", &v12, 0x20u);
  }

  if (v5)
  {
    [*(a1 + 32) _handleUserNotificationAction:{objc_msgSend(v5, "authorizationStatus")}];
  }

  else if ([v6 code] == 11)
  {
    v11 = VUIDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - User has already granted or denied notification authorization", &v12, 2u);
    }

    [*(a1 + 32) _deleteKeysUsedForSheetPresentation];
  }
}

- (void)_deleteKeysUsedForSheetPresentation
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v2 removeObjectForKey:@"KettleNumberOfAppLaunch"];

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObjectForKey:@"KettleFirstPromptTimestamp"];
}

- (void)_handleUserNotificationAction:(int64_t)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134217984;
    v7 = a3;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - User notification authorization status:%ld", &v6, 0xCu);
  }

  if ((a3 - 1) <= 1)
  {
    [(VUIUserEngagementSheetLauncher *)self _deleteKeysUsedForSheetPresentation];
  }
}

- (BOOL)isAnotherSheetShowingToUser
{
  v2 = +[VUITVAppLauncher sharedInstance];
  v3 = [v2 appController];

  v4 = +[VUIApplicationRouter topPresentedViewController];
  v5 = [v4 presentedViewController];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = +[VUIApplicationRouter currentNavigationController];
    v8 = [v7 presentedViewController];
    if (v8)
    {
      v6 = 1;
    }

    else
    {
      v9 = [v3 navigationController];
      v10 = [v9 presentedViewController];
      v6 = v10 != 0;
    }
  }

  return v6;
}

- (void)handleEngagementRequest:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__VUIUserEngagementSheetLauncher_handleEngagementRequest_completion___block_invoke;
  v9[3] = &unk_1E872E580;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __69__VUIUserEngagementSheetLauncher_handleEngagementRequest_completion___block_invoke(uint64_t a1)
{
  v2 = +[VUIApplicationRouter topMostVisibleViewController];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E698CCD0]);
    v4 = *(a1 + 32);
    v5 = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v6 = [v3 initWithRequest:v4 bag:v5 presentingViewController:v2];

    v7 = [v6 presentEngagement];
    [v7 addFinishBlock:*(a1 + 40)];
  }

  else
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "VUIUserEngagementSheetLauncher - failed to handle dialog request because there is no presenting view controller", v9, 2u);
    }
  }
}

@end