@interface UIAccessibilityLegacyLoader
+ (id)_accessibilityBundlesForBundle:(id)bundle;
+ (id)_axBundleForBundle:(id)bundle;
+ (int64_t)_accessibilityLoadingPriorityForBundle:(id)bundle;
+ (void)_accessibilityLoadSubbundles:(id)subbundles;
+ (void)initialize;
+ (void)loadAccessibilityBundle:(id)bundle didLoadCallback:(id)callback loadSubbundles:(BOOL)subbundles;
+ (void)loadAccessibilityBundleForBundle:(id)bundle didLoadCallback:(id)callback forceLoad:(BOOL)load loadSubbundles:(BOOL)subbundles loadAllAccessibilityInfo:(BOOL)info;
+ (void)loadExtendedAccessibilityBundles;
@end

@implementation UIAccessibilityLegacyLoader

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[UIAccessibilityLegacyLoader initialize];
  }
}

void __41__UIAccessibilityLegacyLoader_initialize__block_invoke()
{
  v0 = MEMORY[0x1E696AAE8];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/System/Library/PrivateFrameworks", @"UIAccessibility.framework"];
  v12 = [v0 bundleWithPath:v1];

  v2 = MEMORY[0x1E695DFD8];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v12 pathForResource:@"DeniedBundles" ofType:@"plist"];
  v5 = [v3 arrayWithContentsOfFile:v4];
  v6 = [v2 setWithArray:v5];
  v7 = _DeniedBundles;
  _DeniedBundles = v6;

  v8 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
  v9 = _LoadedBundles;
  _LoadedBundles = v8;

  v10 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v11 = _BundleLock;
  _BundleLock = v10;
}

+ (void)loadExtendedAccessibilityBundles
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  v5 = [self _axBundleForBundle:mainBundle];
  v6 = AXLogLoading();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = [mainBundle bundleIdentifier];
    *buf = 138543618;
    v24 = bundleIdentifier;
    v25 = 2114;
    v26 = v5;
    _os_log_impl(&dword_1A9B83000, v6, OS_LOG_TYPE_DEBUG, "Loading AX for '%{public}@'. AXBundle '%{public}@'", buf, 0x16u);
  }

  infoDictionary = [v5 infoDictionary];
  v9 = [infoDictionary objectForKey:@"SupportsAsynchronousLoad"];
  bOOLValue = [v9 BOOLValue];

  v11 = AXLogLoading();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (bOOLValue)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&dword_1A9B83000, v11, OS_LOG_TYPE_INFO, "Bundle supports asynchronous load", buf, 2u);
    }

    UIAccessibilityPostNotification(0xFA0u, 0);
    [self loadAccessibilityBundleForBundle:mainBundle didLoadCallback:&__block_literal_global_303];
    v21[2] = MEMORY[0x1E69E9820];
    v21[3] = 3221225472;
    v21[4] = __63__UIAccessibilityLegacyLoader_loadExtendedAccessibilityBundles__block_invoke_309;
    v21[5] = &unk_1E78AB890;
    v13 = v22;
    v22[0] = v5;
    v22[1] = self;
    v14 = v5;
    AXPerformBlockOnMainThreadAfterDelay();
  }

  else
  {
    if (v12)
    {
      bundleIdentifier2 = [v5 bundleIdentifier];
      *buf = 138543362;
      v24 = bundleIdentifier2;
      _os_log_impl(&dword_1A9B83000, v11, OS_LOG_TYPE_INFO, "%{public}@: Loading synchronously", buf, 0xCu);
    }

    [self loadAccessibilityBundleForBundle:mainBundle didLoadCallback:&__block_literal_global_303];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __63__UIAccessibilityLegacyLoader_loadExtendedAccessibilityBundles__block_invoke_311;
    v20[3] = &unk_1E78AB890;
    v13 = v21;
    v21[0] = v5;
    v21[1] = self;
    v16 = v5;
    v17 = _Block_copy(v20);
    if (_UIApplicationIsExtension())
    {
      v18 = AXLogLoading();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v24 = 0x3FE0000000000000;
        _os_log_impl(&dword_1A9B83000, v18, OS_LOG_TYPE_INFO, "Accessibility bundles: Delaying load by %fs", buf, 0xCu);
      }

      _UIAXInitializeConstantValues();
      v19 = dispatch_time(0, 500000000);
      dispatch_after(v19, MEMORY[0x1E69E96A0], v17);
    }

    else
    {
      v17[2](v17);
    }
  }

  objc_autoreleasePoolPop(v3);
}

void __63__UIAccessibilityLegacyLoader_loadExtendedAccessibilityBundles__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = AXLogLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    IsSystemAppServer = _UIAXAppIsSystemAppServer();
    v7 = [MEMORY[0x1E696AE30] processInfo];
    v8 = [v7 processName];
    v9 = 134218498;
    v10 = a4;
    v11 = 1024;
    v12 = IsSystemAppServer;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_INFO, "Main bundle finished loading: load type: %ld - is system app server: %d (%@)", &v9, 0x1Cu);
  }

  if (!a4)
  {
    if (_UIAXAppIsSystemAppServer())
    {
      +[UIAccessibilityLoader _didLoadSystemAppAccessibilityBundle];
    }
  }
}

void __63__UIAccessibilityLegacyLoader_loadExtendedAccessibilityBundles__block_invoke_309(uint64_t a1)
{
  [*(a1 + 40) _accessibilityLoadSubbundles:*(a1 + 32)];
  v1 = +[UIAccessibilityInformationLoader sharedInstance];
  [v1 setNeedsLoadAccessibilityInformation];

  UIAccessibilityPostNotification(0xFA1u, 0);
}

+ (id)_axBundleForBundle:(id)bundle
{
  v35 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  if (![bundleCopy isLoaded])
  {
    v8 = 0;
LABEL_27:
    v8 = v8;
    v22 = v8;
    goto LABEL_29;
  }

  accessibilityBundlePath = [bundleCopy accessibilityBundlePath];
  lastPathComponent = [accessibilityBundlePath lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

  pathExtension = [accessibilityBundlePath pathExtension];
  if ([pathExtension isEqualToString:@"assistantUIBundle"] & 1) != 0 || (objc_msgSend(pathExtension, "isEqualToString:", @"siriUIBundle"))
  {
    v30 = 1;
  }

  else
  {
    v30 = [pathExtension isEqualToString:@"siriUIPresentationBundle"];
  }

  v9 = [pathExtension isEqualToString:@"uibundle"];
  v10 = [pathExtension isEqualToString:@"app"];
  v11 = [pathExtension isEqualToString:@"qldisplay"];
  v12 = [pathExtension isEqualToString:@"framework"];
  v13 = [pathExtension isEqualToString:@"bundle"];
  v14 = [pathExtension isEqualToString:@"appex"];
  v15 = [pathExtension isEqualToString:@"fpenroll"];
  if (v12)
  {
    v16 = @"Framework";
LABEL_19:
    v17 = [stringByDeletingPathExtension stringByAppendingString:v16];
    v18 = [v17 stringByAppendingPathExtension:kUIAccessibilityBundleExtension];

    goto LABEL_20;
  }

  if (v30)
  {
    v16 = @"-Assistant";
    goto LABEL_19;
  }

  if (v11)
  {
    v16 = @"-QuickLook";
    goto LABEL_19;
  }

  if (v9)
  {
    v16 = @"-SBPlugin";
    goto LABEL_19;
  }

  if (v10)
  {
    v16 = @"App";
    goto LABEL_19;
  }

  if (v14)
  {
    v16 = @"-AppExtension";
    goto LABEL_19;
  }

  if (v13 || v15)
  {
    v18 = [stringByDeletingPathExtension stringByAppendingPathExtension:kUIAccessibilityBundleExtension];
LABEL_20:
    v19 = [MEMORY[0x1E696AAE8] accessibilityLocalBundleWithLastPathComponent:v18];
    if (v19 || ([MEMORY[0x1E696AAE8] accessibilityBundleWithLastPathComponent:v18], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v19;
    }

    else
    {
      if (AXIsInternalInstall())
      {
        v8 = [MEMORY[0x1E696AAE8] accessibilityInternalBundleWithLastPathComponent:v18];
      }

      else
      {
        v8 = 0;
      }

      if (!((v8 != 0) | v30 & 1))
      {
        v24 = @"~ipad";
        if (([stringByDeletingPathExtension hasSuffix:@"~ipad"] & 1) != 0 || (v24 = @"~iphone", objc_msgSend(stringByDeletingPathExtension, "hasSuffix:", @"~iphone")))
        {
          v25 = [stringByDeletingPathExtension stringByReplacingOccurrencesOfString:v24 withString:&stru_1F1DB9E20];

          stringByDeletingPathExtension = v25;
        }

        v26 = [stringByDeletingPathExtension stringByAppendingPathExtension:kUIAccessibilityBundleExtension];

        v8 = [MEMORY[0x1E696AAE8] accessibilityBundleWithLastPathComponent:v26];
        v18 = v26;
      }

      if (!v8)
      {
        bundleIdentifier = [bundleCopy bundleIdentifier];

        if (bundleIdentifier)
        {
          bundleIdentifier2 = [bundleCopy bundleIdentifier];
          v29 = [bundleIdentifier2 stringByAppendingPathExtension:kUIAccessibilityBundleExtension];

          v8 = [MEMORY[0x1E696AAE8] accessibilityBundleWithLastPathComponent:v29];
        }

        else
        {
          v8 = 0;
        }
      }
    }

    v20 = AXLogLoading();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109634;
      *v32 = v8 != 0;
      *&v32[4] = 2114;
      *&v32[6] = bundleCopy;
      v33 = 2114;
      v34 = v18;
      _os_log_debug_impl(&dword_1A9B83000, v20, OS_LOG_TYPE_DEBUG, "Loading Sub-bundle [%d]: %{public}@ [%{public}@]", buf, 0x1Cu);
    }

    v21 = 1;
    goto LABEL_26;
  }

  v18 = AXLogLoading();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v32 = accessibilityBundlePath;
    _os_log_impl(&dword_1A9B83000, v18, OS_LOG_TYPE_INFO, "Not servicing %@ because it's not a known type of bundle", buf, 0xCu);
  }

  v21 = 0;
  v8 = 0;
LABEL_26:

  if (v21)
  {
    goto LABEL_27;
  }

  v22 = 0;
LABEL_29:

  return v22;
}

+ (void)_accessibilityLoadSubbundles:(id)subbundles
{
  v14 = *MEMORY[0x1E69E9840];
  subbundlesCopy = subbundles;
  v5 = AXLogLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = [subbundlesCopy bundleIdentifier];
    *buf = 138543362;
    v13 = bundleIdentifier;
    _os_log_impl(&dword_1A9B83000, v5, OS_LOG_TYPE_DEBUG, "Loading sub-bundles from %{public}@", buf, 0xCu);
  }

  v7 = [self _accessibilityBundlesForBundle:subbundlesCopy];
  v8 = [v7 count];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke;
  v11[3] = &__block_descriptor_48_e25_v32__0__NSBundle_8Q16_B24l;
  v11[4] = self;
  v11[5] = v8;
  [v7 enumerateObjectsUsingBlock:v11];
  v10 = subbundlesCopy;
  v9 = subbundlesCopy;
  AXPerformBlockAsynchronouslyOnMainThread();
}

void __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke_2;
  v10[3] = &unk_1E78AB8B8;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v5;
  v12 = v6;
  v13 = a3;
  v14 = v7;
  v8 = v5;
  v9 = _Block_copy(v10);
  AXPerformBlockAsynchronouslyOnMainThread();
}

uint64_t __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXLogLoading();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_1A9B83000, v2, OS_LOG_TYPE_DEBUG, "  Loading sub-bundle %{public}@", &v5, 0xCu);
  }

  return [*(a1 + 40) loadAccessibilityBundleForBundle:*(a1 + 32) didLoadCallback:0 forceLoad:0 loadSubbundles:1 loadAllAccessibilityInfo:*(a1 + 48) == *(a1 + 56) - 1];
}

void __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke_370(uint64_t a1)
{
  [*MEMORY[0x1E69DDA98] _accessibilityInitialize];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke_2_371;
  block[3] = &unk_1E78AB028;
  v3 = *(a1 + 32);
  if (_LoadedBundles_block_invoke_onceToken != -1)
  {
    dispatch_once(&_LoadedBundles_block_invoke_onceToken, block);
  }
}

void __60__UIAccessibilityLegacyLoader__accessibilityLoadSubbundles___block_invoke_2_371(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AXLogLoading();
  if (os_signpost_enabled(v2))
  {
    LOWORD(v5) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9B83000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AXLaunchTime", &unk_1A9BFA3AD, &v5, 2u);
  }

  v3 = AXLogLoading();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [*(a1 + 32) bundleIdentifier];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&dword_1A9B83000, v3, OS_LOG_TYPE_INFO, "Loaded Accessibility for %{public}@", &v5, 0xCu);
  }
}

+ (int64_t)_accessibilityLoadingPriorityForBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = [bundleCopy _accessibilityIntegerValueForKey:@"axBundlePriority"];
  if (!v4)
  {
    v4 = AXBundleLoadingPriorityDefault;
    v5 = [bundleCopy safeStringForKey:@"_resolvedPath"];
    if ([v5 hasSuffix:@"UIKit.framework"])
    {
      v4 = AXBundleLoadingPriorityUIKit;
    }

    else if ([v5 hasSuffix:@"TVMLKit.framework"])
    {
      v4 = AXBundleLoadingPriorityTVMLKit;
    }

    else if ([v5 hasSuffix:@"ControlCenterUI.framework"])
    {
      v4 = AXBundleLoadingPriorityControlCenterUI;
    }

    else if ([v5 hasSuffix:@"ControlCenterUIKit.framework"])
    {
      v4 = AXBundleLoadingPriorityControlCenterUIKit;
    }

    else if ([v5 hasSuffix:@"MessageUI.framework"])
    {
      v4 = AXBundleLoadingPriorityMessageUI;
    }

    else if ([v5 hasSuffix:@"framework"])
    {
      v4 = AXBundleLoadingPriorityFramework;
    }

    else if ([v5 hasSuffix:@"bundle"])
    {
      v4 = AXBundleLoadingPriorityBundle;
    }

    [bundleCopy _accessibilitySetIntegerValue:v4 forKey:@"axBundlePriority"];
  }

  return v4;
}

+ (void)loadAccessibilityBundleForBundle:(id)bundle didLoadCallback:(id)callback forceLoad:(BOOL)load loadSubbundles:(BOOL)subbundles loadAllAccessibilityInfo:(BOOL)info
{
  subbundlesCopy = subbundles;
  loadCopy = load;
  v36 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  callbackCopy = callback;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    accessibilityBundlePath = [bundleCopy accessibilityBundlePath];
    [_BundleLock lock];
    v15 = _DeniedBundles;
    lastPathComponent = [accessibilityBundlePath lastPathComponent];
    LODWORD(v15) = [v15 containsObject:lastPathComponent];

    [_BundleLock unlock];
    if (v15)
    {
      v17 = AXLogLoading();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = bundleCopy;
        v18 = "Bundle in deny list: %{public}@";
LABEL_12:
        _os_log_impl(&dword_1A9B83000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 0xCu);
      }
    }

    else if ((AXProcessIsSystemApplication() & 1) != 0 || ([accessibilityBundlePath lastPathComponent], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "hasPrefix:", @"Assistant"), v19, !v20))
    {
      lastPathComponent2 = [accessibilityBundlePath lastPathComponent];
      v22 = [lastPathComponent2 hasSuffix:@"axbundle"];

      if (!v22)
      {
        [_BundleLock lock];
        v23 = [_LoadedBundles containsObject:accessibilityBundlePath];
        [_BundleLock unlock];
        if (!v23 || loadCopy)
        {
          v24 = AXLogLoading();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v35 = bundleCopy;
            _os_log_impl(&dword_1A9B83000, v24, OS_LOG_TYPE_DEBUG, "Attempting to load: %{public}@", buf, 0xCu);
          }

          [bundleCopy _cfBundle];
          if (([bundleCopy isLoaded] & 1) != 0 || loadCopy)
          {
            [_BundleLock lock];
            [_LoadedBundles addObject:accessibilityBundlePath];
            [_BundleLock unlock];
            v26 = [self _axBundleForBundle:bundleCopy];
            v25 = v26;
            if (callbackCopy && !v26)
            {
              (*(callbackCopy + 2))(callbackCopy, 0, 0, 0);
            }

            v28 = MEMORY[0x1E69E9820];
            v29 = 3221225472;
            v30 = __130__UIAccessibilityLegacyLoader_loadAccessibilityBundleForBundle_didLoadCallback_forceLoad_loadSubbundles_loadAllAccessibilityInfo___block_invoke;
            v31 = &unk_1E78AB900;
            v32 = callbackCopy;
            infoCopy = info;
            v27 = _Block_copy(&v28);
            [self loadAccessibilityBundle:v25 didLoadCallback:v27 loadSubbundles:{subbundlesCopy, v28, v29, v30, v31}];
          }

          else
          {
            v25 = AXLogLoading();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v35 = bundleCopy;
              _os_log_impl(&dword_1A9B83000, v25, OS_LOG_TYPE_DEBUG, "Bundle not loaded? %{public}@", buf, 0xCu);
            }
          }

          goto LABEL_16;
        }

LABEL_14:
        if (callbackCopy)
        {
          (*(callbackCopy + 2))(callbackCopy, 0, 0, 0);
        }

LABEL_16:

        goto LABEL_17;
      }

      v17 = AXLogLoading();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = bundleCopy;
        v18 = "Bundle is an axbundle, don't load again: %{public}@";
        goto LABEL_12;
      }
    }

    else
    {
      v17 = AXLogLoading();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v35 = bundleCopy;
        v18 = "Bundle is assistant not inside system app: %{public}@";
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

LABEL_17:
}

void __130__UIAccessibilityLegacyLoader_loadAccessibilityBundleForBundle_didLoadCallback_forceLoad_loadSubbundles_loadAllAccessibilityInfo___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v7, a4);
  }

  v9 = AXLogLoading();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_1A9B83000, v9, OS_LOG_TYPE_DEBUG, "Finished loading axbundle: %{public}@", &v11, 0xCu);
  }

  if (*(a1 + 40) == 1)
  {
    v10 = +[UIAccessibilityInformationLoader sharedInstance];
    [v10 setNeedsLoadAccessibilityInformation];
  }
}

+ (void)loadAccessibilityBundle:(id)bundle didLoadCallback:(id)callback loadSubbundles:(BOOL)subbundles
{
  subbundlesCopy = subbundles;
  v23 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  callbackCopy = callback;
  if (!bundleCopy)
  {
    goto LABEL_16;
  }

  if (([bundleCopy isLoaded] & 1) == 0)
  {
    v18 = 0;
    v10 = [bundleCopy loadAndReturnError:&v18];
    v11 = v18;
    if (v10)
    {
      principalClass = [bundleCopy principalClass];
      v13 = AXLogLoading();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v20 = bundleCopy;
        v21 = 2114;
        v22 = principalClass;
        _os_log_impl(&dword_1A9B83000, v13, OS_LOG_TYPE_DEBUG, "AX Bundle principal class: %{public}@ %{public}@", buf, 0x16u);
      }

      if (!principalClass)
      {
        goto LABEL_15;
      }

      v17 = callbackCopy;
      v16 = bundleCopy;
      AXPerformBlockOnMainThread();

      v14 = v17;
    }

    else
    {
      v14 = AXLogLoading();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [UIAccessibilityLegacyLoader loadAccessibilityBundle:bundleCopy didLoadCallback:v11 loadSubbundles:v14];
      }
    }

LABEL_15:
    goto LABEL_16;
  }

  if (subbundlesCopy)
  {
    v15 = [UIAccessibilityLoader _accessibilityBundlesForBundle:bundleCopy];
    v9 = v15;
    AXPerformBlockOnMainThread();
  }

  if (callbackCopy)
  {
    (*(callbackCopy + 2))(callbackCopy, 1, bundleCopy, 1);
  }

LABEL_16:
}

uint64_t __86__UIAccessibilityLegacyLoader_loadAccessibilityBundle_didLoadCallback_loadSubbundles___block_invoke(uint64_t a1)
{
  [*(a1 + 48) accessibilityInitializeBundle];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __86__UIAccessibilityLegacyLoader_loadAccessibilityBundle_didLoadCallback_loadSubbundles___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [UIAccessibilityLoader loadAccessibilityBundleForBundle:*(*(&v6 + 1) + 8 * v5++) didLoadCallback:0, v6];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

+ (id)_accessibilityBundlesForBundle:(id)bundle
{
  bundleCopy = bundle;
  [bundleCopy principalClass];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_msgSend(bundleCopy "principalClass")], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    allFrameworks = [MEMORY[0x1E696AAE8] allFrameworks];
    allBundles = [MEMORY[0x1E696AAE8] allBundles];
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(allBundles, "count") + objc_msgSend(allFrameworks, "count")}];
    [v7 axSafelyAddObjectsFromArray:allBundles];
    [v7 axSafelyAddObjectsFromArray:allFrameworks];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    [v7 removeObject:mainBundle];

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    [v7 removeObject:v9];

    v4 = v7;
    if (+[UIAccessibilityLegacyLoader _accessibilityShouldSortBundlesBeforeLoading])
    {
      v10 = AXLogLoading();
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A9B83000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "BundleSort", &unk_1A9BFA3AD, buf, 2u);
      }

      [v4 sortUsingComparator:&__block_literal_global_404];
      v11 = AXLogLoading();
      if (os_signpost_enabled(v11))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A9B83000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "BundleSort", &unk_1A9BFA3AD, v13, 2u);
      }
    }
  }

  return v4;
}

uint64_t __62__UIAccessibilityLegacyLoader__accessibilityBundlesForBundle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [UIAccessibilityLegacyLoader _accessibilityLoadingPriorityForBundle:a2];
  v6 = [UIAccessibilityLegacyLoader _accessibilityLoadingPriorityForBundle:v4];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

+ (void)loadAccessibilityBundle:(void *)a1 didLoadCallback:(uint64_t)a2 loadSubbundles:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 bundleURL];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1A9B83000, a3, OS_LOG_TYPE_ERROR, "Unable to load AX Bundle: %{public}@ [%{public}@]", &v6, 0x16u);
}

@end