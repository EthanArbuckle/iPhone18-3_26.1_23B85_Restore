@interface UIAccessibilityLoader
+ (id)_accessibilityBundlesForBundle:(id)a3;
+ (void)_accessibilityInitializeRuntimeOverrides;
+ (void)_accessibilityReenabled;
+ (void)_accessibilityStartMiniServer;
+ (void)_accessibilityStartServer;
+ (void)_accessibilityStopServer;
+ (void)_accessibilityUpdateSafeCategoryThread;
+ (void)_performInitialAccessibilityBundleLoad:(BOOL)a3 monitorForFutureLoadEvents:(BOOL)a4 trackingMode:(int64_t)a5;
+ (void)_stringLocalizationStarted:(id)a3;
+ (void)loadAccessibilityBundle:(id)a3 didLoadCallback:(id)a4 loadSubbundles:(BOOL)a5;
+ (void)loadAccessibilityBundleForBundle:(id)a3 didLoadCallback:(id)a4 forceLoad:(BOOL)a5 loadSubbundles:(BOOL)a6 loadAllAccessibilityInfo:(BOOL)a7;
@end

@implementation UIAccessibilityLoader

+ (void)_performInitialAccessibilityBundleLoad:(BOOL)a3 monitorForFutureLoadEvents:(BOOL)a4 trackingMode:(int64_t)a5
{
  v6 = a4;
  if (a3 || a4)
  {
    v8 = [MEMORY[0x1E6988770] defaultLoader];
    v9 = v8;
    if (!v6 || ([v8 shouldAutoloadAccessibilityCodeItems] & 1) == 0)
    {
      [v9 setLoadEventWillOccurBlock:&__block_literal_global];
      [v9 setShouldLoadAccessibilityCodeItemBlock:&__block_literal_global_284];
      [v9 setDidLoadAccessibilityCodeItemBlock:&__block_literal_global_287];
      [v9 setLoadEventDidOccurBlock:&__block_literal_global_292];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_301;
      v10[3] = &unk_1E78AA5B8;
      v11 = v9;
      v12 = v6;
      v13 = a3;
      [v11 beginTrackingLoadedCodeItemsWithMode:a5 completion:v10 targetQueue:0];
    }
  }
}

void __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = v2;
    v7 = v3;
    v4 = AXLogLoading();
    if (os_signpost_enabled(v4))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9B83000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AXLaunchTime", &unk_1A9BFA3AD, v5, 2u);
    }
  }
}

void __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a3;
  v7 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_3;
  v10[3] = &unk_1E78AA528;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

uint64_t __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) principalClass];
  if (AXShouldLogValidationErrors())
  {
    v3 = AXLogLoading();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      v6 = 138543618;
      v7 = v4;
      v8 = 2114;
      v9 = v2;
      _os_log_impl(&dword_1A9B83000, v3, OS_LOG_TYPE_DEBUG, "Will initialize AX on Bundle '%{public}@'. Principal class: %{public}@", &v6, 0x16u);
    }
  }

  [v2 accessibilityInitializeBundle];
  return (*(*(a1 + 40) + 16))();
}

void __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_289(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a2)
  {
    if (a3)
    {
      v7 = +[UIAccessibilityInformationLoader sharedInstance];
      [v7 setNeedsLoadAccessibilityInformation];
    }

    v6[2](v6);
  }

  else
  {
    v8 = AXLogLoading();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E696AE30] processInfo];
      v10 = [v9 processName];
      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1A9B83000, v8, OS_LOG_TYPE_INFO, "Initial load did occur %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_294;
    block[3] = &unk_1E78AA590;
    v12 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_294(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  AXPerformSafeBlock();
  v2 = +[UIAccessibilityInformationLoader sharedInstance];
  [v2 setNeedsLoadAccessibilityInformation];

  v3 = AXLogLoading();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
  v5 = MEMORY[0x1E69DDA98];
  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*MEMORY[0x1E69DDA98], "_accessibilityIsSystemAppServer")}];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1A9B83000, v3, OS_LOG_TYPE_INFO, "Load system app %@", &v10, 0xCu);
  }

  if ([*v5 _accessibilityIsSystemAppServer])
  {
    +[UIAccessibilityLoader _didLoadSystemAppAccessibilityBundle];
  }

  if (AXProcessCanContactSystemWideServer())
  {
    v7 = [*v5 _accessibilityBundleIdentifier];
    UIAccessibilityPostNotification(0xBD7u, v7);
  }

  _gUIAXIsApplicationAccessiblityReady = 1;
  v8 = AXLogLoading();
  if (os_signpost_enabled(v8))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AXLaunchTime", &unk_1A9BFA3AD, &v10, 2u);
  }

  return (*(*(a1 + 32) + 16))();
}

void __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_2_295()
{
  [*MEMORY[0x1E69DDA98] _accessibilityInitialize];
  v0 = AXLogLoading();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1A9B83000, v0, OS_LOG_TYPE_INFO, "UIApp ax initialize", v1, 2u);
  }
}

uint64_t __104__UIAccessibilityLoader__performInitialAccessibilityBundleLoad_monitorForFutureLoadEvents_trackingMode___block_invoke_301(uint64_t a1)
{
  result = [*(a1 + 32) setShouldAutoloadAccessibilityCodeItems:*(a1 + 40)];
  if (*(a1 + 41) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 setAccessibilityCodeItemsNeedLoaded];
  }

  return result;
}

+ (void)_accessibilityStartServer
{
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "AX Start server", buf, 2u);
  }

  v3 = [MEMORY[0x1E6988D88] sharedManager];
  v4 = [v3 started];

  if (v4)
  {
    v5 = AXLogLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Ignoring UIAccessibilityLoader _accessibilityStartServer for this process because the AXSimpleRuntimeManager was used!";
LABEL_9:
      _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, v6, buf, 2u);
    }
  }

  else
  {
    if (!AXDisallowsUIBasedAccessibilityFeatures())
    {
      AXPerformBlockOnMainThread();
      return;
    }

    v5 = AXLogLoading();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v6 = "Not start application accessibility server - this client opts out of accessibility";
      goto LABEL_9;
    }
  }
}

uint64_t __50__UIAccessibilityLoader__accessibilityStartServer__block_invoke(uint64_t a1)
{
  _accessibilityServerStarted = 1;
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "AX Begin loading server", buf, 2u);
  }

  AXDevicePrimeDisplayManager();
  [*(a1 + 32) _accessibilityStartMiniServer];
  if (AX_USING_LEGACY_LOADER_onceToken != -1)
  {
    __50__UIAccessibilityLoader__accessibilityStartServer__block_invoke_cold_1();
  }

  if (AX_USING_LEGACY_LOADER__UsesLegacyLoader != 1)
  {
    return [*(a1 + 32) _performInitialAccessibilityBundleLoad:1 monitorForFutureLoadEvents:1 trackingMode:2];
  }

  v3 = AXLogLoading();
  if (os_signpost_enabled(v3))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AXLaunchTime", &unk_1A9BFA3AD, v5, 2u);
  }

  return +[UIAccessibilityLegacyLoader loadExtendedAccessibilityBundles];
}

+ (void)_accessibilityUpdateSafeCategoryThread
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = [*MEMORY[0x1E69DDA98] applicationState];
  v3 = [MEMORY[0x1E6988808] sharedInstance];
  [v3 setInstallSafeCategoriesOffMainThread:v2 != 0];

  v4 = AXLogValidations();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:v2 != 0];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_1A9B83000, v4, OS_LOG_TYPE_DEBUG, "Safe categories installing on background thread %@", &v6, 0xCu);
  }
}

+ (void)_accessibilityStartMiniServer
{
  v24 = *MEMORY[0x1E69E9840];
  if ((_accessibilityMiniServerStarted & 1) == 0)
  {
    v2 = AXLogLoading();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_DEBUG, "Accessibility Started (Mini-Server)", buf, 2u);
    }

    _accessibilityMiniServerStarted = 1;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v3 = *MEMORY[0x1E69DDBC8];
    v22[0] = *MEMORY[0x1E69DDAB0];
    v22[1] = v3;
    obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AD88] defaultCenter];
          v10 = [MEMORY[0x1E696ADC8] mainQueue];
          v16[0] = MEMORY[0x1E69E9820];
          v16[1] = 3221225472;
          v16[2] = __54__UIAccessibilityLoader__accessibilityStartMiniServer__block_invoke;
          v16[3] = &__block_descriptor_40_e24_v16__0__NSNotification_8l;
          v16[4] = a1;
          v11 = [v9 addObserverForName:v8 object:0 queue:v10 usingBlock:v16];
        }

        v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v5);
    }

    v12 = objc_autoreleasePoolPush();
    [a1 accessibilityShouldEnumerateContainerElementsArrayDirectly];
    v13 = objc_opt_self();
    [a1 _accessibilityInitializeRuntimeOverrides];
    [a1 _accessibilityUpdateSafeCategoryThread];
    _UIAccessibilityStart();
    if (AXProcessIsSystemApplication())
    {
      if (AX_USING_LEGACY_LOADER_onceToken != -1)
      {
        __50__UIAccessibilityLoader__accessibilityStartServer__block_invoke_cold_1();
      }

      if (AX_USING_LEGACY_LOADER__UsesLegacyLoader == 1)
      {
        +[UIAccessibilityLegacyLoader loadExtendedAccessibilityBundles];
      }

      else
      {
        [a1 _performInitialAccessibilityBundleLoad:1 monitorForFutureLoadEvents:1 trackingMode:2];
      }
    }

    _AccessibilityUIKitBundledLoaded = 1;
    objc_autoreleasePoolPop(v12);
  }
}

+ (void)_accessibilityReenabled
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AXLogLoading();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
  v4 = MEMORY[0x1E69DDA98];
  if (v3)
  {
    v5 = [*MEMORY[0x1E69DDA98] _accessibilityIsSystemAppServer];
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = _AXSApplicationAccessibilityEnabled();
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_INFO, "Accessibility Reenabled [system server: %d] [app ax enabled: %d], ", v8, 0xEu);
  }

  if ([*v4 _accessibilityIsSystemAppServer] && _AXSApplicationAccessibilityEnabled())
  {
    _UIAXPostAccessibilityLoadedNotification();
  }

  if (_AXSApplicationAccessibilityEnabled())
  {
    v6 = [*v4 _accessibilityBundleIdentifier];
    UIAccessibilityPostNotification(0xBD7u, v6);
  }

  if (_AXSApplicationAccessibilityEnabled())
  {
    if (CFAbsoluteTimeGetCurrent() - *&_accessibilityReenabled_LastLoadAll > 3.0)
    {
      v7 = +[UIAccessibilityInformationLoader sharedInstance];
      [v7 setNeedsLoadAccessibilityInformation];

      _accessibilityReenabled_LastLoadAll = CFAbsoluteTimeGetCurrent();
    }
  }
}

+ (void)_accessibilityStopServer
{
  v2 = AXLogLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_DEBUG, "Accessibility Stopped", v4, 2u);
  }

  _accessibilityServerStarted = 0;
  v3 = MEMORY[0x1E69DDA98];
  if (objc_opt_respondsToSelector())
  {
    [*v3 accessibilityDisable];
  }
}

+ (void)_accessibilityInitializeRuntimeOverrides
{
  v3 = AXLogLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A9B83000, v3, OS_LOG_TYPE_DEBUG, "Accessibility Initialize Runtime Overrides", v5, 2u);
  }

  if (_accessibilityInitializeRuntimeOverrides_onceToken != -1)
  {
    +[UIAccessibilityLoader _accessibilityInitializeRuntimeOverrides];
  }

  if (_AXSAutomationLocalizedStringLookupInfoEnabled() || _AXSAutomationPreferredLocalization())
  {
    [a1 _stringLocalizationStarted:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:a1 selector:sel__stringLocalizationStarted_ name:*MEMORY[0x1E69E4B78] object:0];
  }

  [a1 _accessibilityInitializeSubclassRuntimeOverrides];
}

void __65__UIAccessibilityLoader__accessibilityInitializeRuntimeOverrides__block_invoke()
{
  v0 = [MEMORY[0x1E6988808] sharedInstance];
  [v0 performValidations:&__block_literal_global_315 withPreValidationHandler:&__block_literal_global_354 postValidationHandler:&__block_literal_global_363 safeCategoryInstallationHandler:&__block_literal_global_366];
}

uint64_t __65__UIAccessibilityLoader__accessibilityInitializeRuntimeOverrides__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 hasPrefix:*MEMORY[0x1E6988740]];

  if ((v5 & 1) == 0)
  {
    [v2 validateClass:@"UIScreen" hasInstanceMethod:@"_updateTraits" withFullSignature:{"v", 0}];
    [v2 validateClass:@"UIScreen" hasClassMethod:@"_enumerateScreensWithBlock:" withFullSignature:{"v", "@?", 0}];
    [v2 validateClass:@"NSTextContentStorage" isKindOfClass:@"NSTextContentManager"];
    [v2 validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"taskQueue" withFullSignature:{"@", 0}];
    [v2 validateClass:@"UIKeyboardTaskQueue" hasInstanceMethod:@"waitUntilAllTasksAreFinished" withFullSignature:{"v", 0}];
    [v2 validateClass:@"__SwiftNull"];
    [v2 validateClass:@"__SwiftValue"];
  }

  return 1;
}

uint64_t __65__UIAccessibilityLoader__accessibilityInitializeRuntimeOverrides__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"UIAccessibilityRuntimeLoad"];
  [v2 setOverrideProcessName:@"UIAccessibility framework"];
  [v2 setDebugBuild:0];

  return MEMORY[0x1EEDEA088]();
}

void __65__UIAccessibilityLoader__accessibilityInitializeRuntimeOverrides__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  _AXInitializeSafeSwiftValueSupport();
  [v2 installSafeCategory:@"NSObjectAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSBundleAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UIAccessibilityElementSuperCategory" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"UITouchesEventAccessibility" canInteractWithTargetClass:1];
}

+ (void)loadAccessibilityBundleForBundle:(id)a3 didLoadCallback:(id)a4 forceLoad:(BOOL)a5 loadSubbundles:(BOOL)a6 loadAllAccessibilityInfo:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v11 = a4;
  if (AX_USING_LEGACY_LOADER_onceToken != -1)
  {
    +[UIAccessibilityLoader loadAccessibilityBundleForBundle:didLoadCallback:forceLoad:loadSubbundles:loadAllAccessibilityInfo:];
  }

  if (AX_USING_LEGACY_LOADER__UsesLegacyLoader == 1)
  {
    [UIAccessibilityLegacyLoader loadAccessibilityBundleForBundle:v12 didLoadCallback:v11 forceLoad:v9 loadSubbundles:v8 loadAllAccessibilityInfo:v7];
  }
}

+ (void)loadAccessibilityBundle:(id)a3 didLoadCallback:(id)a4 loadSubbundles:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v7 = a4;
  if (AX_USING_LEGACY_LOADER_onceToken != -1)
  {
    +[UIAccessibilityLoader loadAccessibilityBundleForBundle:didLoadCallback:forceLoad:loadSubbundles:loadAllAccessibilityInfo:];
  }

  if (AX_USING_LEGACY_LOADER__UsesLegacyLoader == 1)
  {
    [UIAccessibilityLegacyLoader loadAccessibilityBundle:v8 didLoadCallback:v7 loadSubbundles:v5];
  }
}

+ (id)_accessibilityBundlesForBundle:(id)a3
{
  v3 = a3;
  if (AX_USING_LEGACY_LOADER_onceToken != -1)
  {
    +[UIAccessibilityLoader loadAccessibilityBundleForBundle:didLoadCallback:forceLoad:loadSubbundles:loadAllAccessibilityInfo:];
  }

  if (AX_USING_LEGACY_LOADER__UsesLegacyLoader == 1)
  {
    v4 = [UIAccessibilityLegacyLoader _accessibilityBundlesForBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)_stringLocalizationStarted:(id)a3
{
  if ((_AXSAutomationLocalizedStringLookupInfoEnabled() || _AXSAutomationPreferredLocalization()) && _stringLocalizationStarted__onceToken != -1)
  {
    +[UIAccessibilityLoader _stringLocalizationStarted:];
  }
}

void __52__UIAccessibilityLoader__stringLocalizationStarted___block_invoke()
{
  v0 = [MEMORY[0x1E6988808] sharedInstance];
  [v0 performValidations:&__block_literal_global_384 withPreValidationHandler:&__block_literal_global_386 postValidationHandler:&__block_literal_global_391 safeCategoryInstallationHandler:&__block_literal_global_393];
}

uint64_t __52__UIAccessibilityLoader__stringLocalizationStarted___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setValidationTargetName:@"String localization for Automation - UIAccessibility"];
  [v2 setOverrideProcessName:@"String localization for Automation - UIAccessibility"];
  [v2 setDebugBuild:0];

  return MEMORY[0x1EEDEA088]();
}

void __52__UIAccessibilityLoader__stringLocalizationStarted___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 installSafeCategory:@"NSStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSPlaceholderStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSConcreteAttributedStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSConcreteMutableAttributedStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"NSKeyedArchiverAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"__NSCFStringAccessibility" canInteractWithTargetClass:1];
  [v2 installSafeCategory:@"AXPTranslationObjectAccessibility" canInteractWithTargetClass:1];

  _UIAXDidLoadStringLocalizationCategoriesValue = 1;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"AXUILocalizationLoaded" object:0];
}

@end