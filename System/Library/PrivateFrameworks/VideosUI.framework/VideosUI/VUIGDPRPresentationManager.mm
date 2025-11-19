@interface VUIGDPRPresentationManager
+ (BOOL)shouldShowWelcomeScreen;
+ (BOOL)showGDPRWelcomeScreen:(id)a3;
+ (id)_sharedInstance;
+ (void)_performRequestsIfNeeded;
+ (void)acceptGDPRAndSyncWithServers:(id)a3;
+ (void)checkGDPRConsentAndPerformRequests:(id)a3;
+ (void)showOfflineGDPRWelcomeScreen;
- (BOOL)isShowing;
- (VUIAppContext)appContext;
- (VUIGDPRPresentationManager)init;
- (void)_dismissAllModalsIfPresent:(id)a3;
- (void)_handleContinueButton:(id)a3;
- (void)_handleOfflineContinueButton:(id)a3;
- (void)_showIOSWelcomeControllerWithAppContext:(id)a3 offline:(BOOL)a4;
@end

@implementation VUIGDPRPresentationManager

+ (BOOL)shouldShowWelcomeScreen
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Launch.ShouldShowWelcomeScreen", "", &v17, 2u);
  }

  v3 = [MEMORY[0x1E69DF6E0] sharedInstance];
  if ([v3 gdprFirstTimeFlowEnabled])
  {

    goto LABEL_6;
  }

  v4 = [MEMORY[0x1E69DF6E0] sharedInstance];
  v5 = [v4 gdprWhatsNewFlowEnabled];

  if (v5)
  {
LABEL_6:
    v6 = [objc_opt_class() _sharedInstance];
    v7 = [v6 hasShownWelcome];

    v8 = VUIDefaultLogObject();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v9)
      {
        LOWORD(v17) = 0;
        v10 = "VUIGDPRPresentationManager - GDPR has already shown because of user defaults override";
LABEL_11:
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, v10, &v17, 2u);
      }
    }

    else if (v9)
    {
      LOWORD(v17) = 0;
      v10 = "VUIGDPRPresentationManager - GDPR is shown because of user defaults override";
      goto LABEL_11;
    }

    v11 = [objc_opt_class() _sharedInstance];
    v12 = [v11 hasShownWelcome] ^ 1;
    goto LABEL_18;
  }

  v11 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  LOBYTE(v12) = [MEMORY[0x1E698C790] acknowledgementNeededForPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v11];
  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = VUIBoolLogString();
    v17 = 138412290;
    v18 = v14;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR needed? [%@]", &v17, 0xCu);
  }

  v15 = VUISignpostLogObject();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Launch.ShouldShowWelcomeScreen", "", &v17, 2u);
  }

LABEL_18:
  return v12;
}

+ (BOOL)showGDPRWelcomeScreen:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() shouldShowWelcomeScreen];
  if (v4)
  {
    v5 = +[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable];
    v6 = [objc_opt_class() _sharedInstance];
    [v6 _showIOSWelcomeControllerWithAppContext:v3 offline:!v5];
  }

  else if (([MEMORY[0x1E69E1570] isOptedIn] & 1) == 0)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - Starting GAC patch-up flow", v9, 2u);
    }

    [MEMORY[0x1E69E1570] optInUserIfNeededAndRefreshConfig:&__block_literal_global_161];
  }

  return v4;
}

void __52__VUIGDPRPresentationManager_showGDPRWelcomeScreen___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = VUIBoolLogString();
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GAC patch-up flow: Successful OptIn: %@ Err: %@", &v6, 0x16u);
  }
}

- (VUIGDPRPresentationManager)init
{
  v3.receiver = self;
  v3.super_class = VUIGDPRPresentationManager;
  result = [(VUIGDPRPresentationManager *)&v3 init];
  if (result)
  {
    result->_hasShownWelcome = 0;
  }

  return result;
}

+ (void)showOfflineGDPRWelcomeScreen
{
  if ([objc_opt_class() shouldShowWelcomeScreen])
  {
    v2 = [objc_opt_class() _sharedInstance];
    [v2 _showIOSWelcomeControllerWithAppContext:0 offline:1];
  }
}

+ (void)acceptGDPRAndSyncWithServers:(id)a3
{
  v3 = a3;
  +[VUIOfferUtilities registerDeviceForCommerceOffers];
  v4 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v5 = [objc_alloc(MEMORY[0x1E698C790]) initWithPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v4];
  v6 = [v5 acknowledgePrivacy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke;
  v11[3] = &unk_1E8732000;
  v7 = v3;
  v12 = v7;
  [v6 addErrorBlock:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke_13;
  v9[3] = &unk_1E872D7E0;
  v10 = v7;
  v8 = v7;
  [v6 addSuccessBlock:v9];
}

void __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR flow: Privacy acknowledgement failed", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke_13(uint64_t a1)
{
  v1 = MEMORY[0x1E69E1570];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke_2;
  v2[3] = &unk_1E872E470;
  v3 = *(a1 + 32);
  [v1 optInUserIfNeededAndRefreshConfig:v2];
}

void __59__VUIGDPRPresentationManager_acceptGDPRAndSyncWithServers___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = VUIBoolLogString();
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR flow: Successful OptIn: %@ Err: %@", &v10, 0x16u);
  }

  if (a2)
  {
    v8 = *(*(a1 + 32) + 16);
  }

  else
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR flow: failed to opt in: %@", &v10, 0xCu);
    }

    v8 = *(*(a1 + 32) + 16);
  }

  v8();
}

+ (void)checkGDPRConsentAndPerformRequests:(id)a3
{
  v7 = a3;
  if (+[VUIGDPRPresentationManager shouldShowWelcomeScreen])
  {
    v3 = requestBlocks;
    if (!requestBlocks)
    {
      v4 = [MEMORY[0x1E695DF70] array];
      v5 = requestBlocks;
      requestBlocks = v4;

      v3 = requestBlocks;
    }

    v6 = [v7 copy];
    [v3 addObject:v6];
  }

  else
  {
    v7[2]();
  }
}

+ (id)_sharedInstance
{
  if (_sharedInstance_onceToken != -1)
  {
    +[VUIGDPRPresentationManager _sharedInstance];
  }

  v3 = _sharedInstance_sPresentationManager;

  return v3;
}

void __45__VUIGDPRPresentationManager__sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIGDPRPresentationManager);
  v1 = _sharedInstance_sPresentationManager;
  _sharedInstance_sPresentationManager = v0;
}

- (BOOL)isShowing
{
  v3 = [(VUIGDPRPresentationManager *)self navigationController];
  v4 = [v3 presentingViewController];

  v5 = [(VUIGDPRPresentationManager *)self navigationController];
  v6 = [v5 isBeingPresented];
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (void)_showIOSWelcomeControllerWithAppContext:(id)a3 offline:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(VUIGDPRPresentationManager *)self setAppContext:v6];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke;
  v7[3] = &unk_1E87374A8;
  objc_copyWeak(&v8, &location);
  v9 = v4;
  [VUIGDPRViewControllerFactory createViewController:v4 completion:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - Welcome Controller created. Error:%@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isShowing])
  {
    v9 = VUIDefaultLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - Welcome Controller has already been presented, ignoring this request.", buf, 2u);
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke_21;
    v23[3] = &unk_1E8737480;
    v24 = *(a1 + 40);
    v23[4] = WeakRetained;
    [v5 setPrimaryButtonCallback:v23];
    if (+[VUIUtilities isSUIEnabled])
    {
      +[_TtC8VideosUI8VideosUI initializeWelcomeScreenControllerPresenterIfNeeded];
      v10 = +[VUIInterfaceFactory sharedInstance];
      [v10 welcomeScreenControllerPresenter];
    }

    else
    {
      v10 = [MEMORY[0x1E69DD2E8] vui_keyWindow];
      [v10 rootViewController];
    }
    v11 = ;

    [WeakRetained _dismissAllModalsIfPresent:v11];
    v9 = v5;
    v12 = [v9 view];
    [v12 setAccessibilityIdentifier:@"UIA.TV.Dialog.GDPR"];

    v13 = [MEMORY[0x1E69DC938] currentDevice];
    v14 = [v13 userInterfaceIdiom];

    v15 = off_1E87286A0;
    if (v14)
    {
      v15 = 0x1E69DCCD8;
    }

    v16 = [objc_alloc(*v15) initWithRootViewController:v9];
    [v16 setModalPresentationStyle:2];
    [v16 setNavigationBarHidden:1];
    [WeakRetained setNavigationController:v16];
    objc_initWeak(buf, WeakRetained);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke_2;
    block[3] = &unk_1E872D9B8;
    objc_copyWeak(&v22, buf);
    v20 = v16;
    v21 = v11;
    v17 = v11;
    v18 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }
}

void __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke_21(uint64_t a1, void *a2)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[VUIMetricsController sharedInstance];
  v7[0] = @"targetId";
  v7[1] = @"targetType";
  v8[0] = @"continue";
  v8[1] = @"button";
  v7[2] = @"actionType";
  v7[3] = @"dialogId";
  v8[2] = @"gdprConsent";
  v8[3] = @"GDPR";
  v7[4] = @"dialogType";
  v8[4] = @"GDPR";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v4 recordClick:v5];

  v6 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    [v6 _handleOfflineContinueButton:v3];
  }

  else
  {
    [v6 _handleContinueButton:v3];
  }
}

void __78__VUIGDPRPresentationManager__showIOSWelcomeControllerWithAppContext_offline___block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [a1[4] preferredContentSize];
  v3 = v2;
  v5 = v4;
  v6 = +[VUIFeaturesConfiguration sharedInstance];
  v7 = [v6 gdprConfig];
  [v7 popoverHeight];
  v9 = v8;

  if (v9 <= 0.0)
  {
    v10 = v5;
  }

  else
  {
    v10 = v9;
  }

  [a1[4] setPreferredContentSize:{v3, v10}];
  [a1[5] presentViewController:a1[4] animated:1 completion:0];
  [WeakRetained setHasShownWelcome:1];
}

- (void)_dismissAllModalsIfPresent:(id)a3
{
  v6 = a3;
  v3 = [v6 conformsToProtocol:&unk_1F5E7E650];
  v4 = v6;
  if (v3)
  {
    v5 = [v6 currentNavigationController];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v5)
    {
      [v5 dismissAllModals:&__block_literal_global_85];
    }

    v4 = v6;
  }
}

- (void)_handleContinueButton:(id)a3
{
  v4 = a3;
  v5 = +[VUIMetricsController sharedInstance];
  [v5 forceGDPRConsentStatus:1];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v11 = __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke;
  v12 = &unk_1E872D990;
  v13 = v4;
  v14 = self;
  v6 = MEMORY[0x1E696AF00];
  v7 = v4;
  if ([v6 isMainThread])
  {
    v11(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  v8 = objc_opt_class();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_3;
  v9[3] = &unk_1E872F730;
  v9[4] = self;
  [v8 acceptGDPRAndSyncWithServers:v9];
}

uint64_t __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_2;
  v3[3] = &unk_1E872D768;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 vui_dismissViewControllerAnimated:1 completion:v3];
}

void __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNavigationController:0];
  v4 = +[VUIInterfaceFactory sharedInstance];
  v2 = [v4 openURLHandler];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [v2 handleDeferredURLWithAppContext:WeakRetained];
}

void __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v2 = __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_4;
  v3 = &unk_1E872D768;
  v4 = *(a1 + 32);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __52__VUIGDPRPresentationManager__handleContinueButton___block_invoke_4(uint64_t a1)
{
  v2 = +[VUIInterfaceFactory sharedInstance];
  v3 = [v2 openURLHandler];
  v4 = [v3 openedByDeeplink];

  if ((v4 & 1) == 0)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR Accept button -- Check if there is any pending offer to present", v10, 2u);
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
    [VUIOfferUtilities fetchAndPresentOffer:WeakRetained sourceEvent:@"GDPRJustAccepted" completion:&__block_literal_global_91];
  }

  v7 = dispatch_get_global_queue(0, 0);
  dispatch_async(v7, &__block_literal_global_94);

  +[_TtC8VideosUI8VideosUI handleGDPRDidChangeSignal];
  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"VUIGDPRUserDidConsentNotification" object:0 userInfo:0];

  return +[VUIGDPRPresentationManager _performRequestsIfNeeded];
}

- (void)_handleOfflineContinueButton:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E69D5920] activeOrLocalAccount];
  v6 = [objc_alloc(MEMORY[0x1E698C790]) initWithPrivacyIdentifier:@"com.apple.onboarding.tvapp" account:v5];
  v7 = [v6 acknowledgePrivacy];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke;
  v9[3] = &unk_1E87374D0;
  v10 = v4;
  v11 = self;
  v8 = v4;
  [v7 addFinishBlock:v9];
}

void __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke_2;
  v12 = &unk_1E872E980;
  v16 = a2;
  v13 = v5;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = v6;
  v15 = v7;
  v8 = MEMORY[0x1E696AF00];
  v9 = v5;
  if ([v8 isMainThread])
  {
    v11(v10);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

uint64_t __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = VUIDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 32);
    *buf = 67109378;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_INFO, "VUIGDPRPresentationManager - GDPR offline flow: Privacy acknowledgement success:%d err:%@", buf, 0x12u);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke_96;
  v8[3] = &unk_1E872D768;
  v5 = *(a1 + 40);
  v8[4] = *(a1 + 48);
  [v5 vui_dismissViewControllerAnimated:1 completion:v8];
  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"VUIGDPRUserDidConsentNotification" object:0 userInfo:0];

  return +[VUIGDPRPresentationManager _performRequestsIfNeeded];
}

void __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke_96(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v2 = __59__VUIGDPRPresentationManager__handleOfflineContinueButton___block_invoke_2_97;
  v3 = &unk_1E872D768;
  v4 = *(a1 + 32);
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v2(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

+ (void)_performRequestsIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  if ([requestBlocks count])
  {
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v2 = requestBlocks;
    v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v8;
      do
      {
        v6 = 0;
        do
        {
          if (*v8 != v5)
          {
            objc_enumerationMutation(v2);
          }

          (*(*(*(&v7 + 1) + 8 * v6) + 16))(*(*(&v7 + 1) + 8 * v6));
          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      }

      while (v4);
    }

    [requestBlocks removeAllObjects];
  }
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end