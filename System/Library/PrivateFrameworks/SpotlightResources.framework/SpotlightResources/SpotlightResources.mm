uint64_t SRIsRunningInServer()
{
  if (SRIsRunningInServer_onceToken != -1)
  {
    SRIsRunningInServer_cold_1();
  }

  return SRIsRunningInServer_sRunningInServer;
}

void __SRIsRunningInServer_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];

  v3 = [v4 isEqualToString:@"com.apple.Search.framework"];
  if (v3)
  {
    LOBYTE(v3) = [v2 isEqualToString:@"searchd"];
  }

  SRIsRunningInServer_sRunningInServer = v3;
}

id SRLogCategoryAssets()
{
  if (SRLogCategoryAssets_onceToken != -1)
  {
    SRLogCategoryAssets_cold_1();
  }

  v1 = SRLogCategoryAssets_assetsLog;

  return v1;
}

uint64_t __SRLogCategoryAssets_block_invoke()
{
  SRLogCategoryAssets_assetsLog = os_log_create("com.apple.spotlight.resources", "Assets");

  return MEMORY[0x1EEE66BB8]();
}

id getMobileAssetPropertiesFromPath(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [[v3 alloc] initWithFormat:@"%@/Info.plist", v4];

  v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v6 error:a2];
  v8 = v7;
  if (*a2)
  {
    v9 = SRLogCategoryAssets();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      getMobileAssetPropertiesFromPath_cold_1(a2, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = 0;
  }

  else
  {
    v16 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
  }

  return v16;
}

uint64_t deliveryTypeID(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Required"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Optional"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Optional2024"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Delta"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Optional2025"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Delta2025"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Optional2025Test"])
  {
    v2 = 68;
  }

  else if ([v1 isEqualToString:@"Delta2025Test"])
  {
    v2 = 69;
  }

  else
  {
    v3 = SRLogCategoryAssets();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      deliveryTypeID_cold_1();
    }

    v2 = -1;
  }

  return v2;
}

uint64_t SRIsAppleInternalInstall()
{
  if (SRIsAppleInternalInstall_onceToken != -1)
  {
    SRIsAppleInternalInstall_cold_1();
  }

  return SRIsAppleInternalInstall_isInternalInstall;
}

void __SRIsAppleInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  SRIsAppleInternalInstall_isInternalInstall = v0;
}

__CFString *deliveryTypeString(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 67)
    {
      if (a1 == 68)
      {
        return @"Optional2025Test";
      }

      if (a1 == 69)
      {
        return @"Delta2025Test";
      }
    }

    else
    {
      if (a1 == 4)
      {
        return @"Optional2025";
      }

      if (a1 == 5)
      {
        return @"Delta2025";
      }
    }

    return @"Unknown";
  }

  if (a1 <= 1)
  {
    if (!a1)
    {
      return @"Required";
    }

    if (a1 == 1)
    {
      return @"Optional";
    }

    return @"Unknown";
  }

  if (a1 == 2)
  {
    return @"Optional2024";
  }

  else
  {
    return @"Delta";
  }
}

id SRLogCategorySafety()
{
  if (SRLogCategorySafety_onceToken != -1)
  {
    SRLogCategorySafety_cold_1();
  }

  v1 = SRLogCategorySafety_safetyLog;

  return v1;
}

uint64_t __SRLogCategorySafety_block_invoke()
{
  SRLogCategorySafety_safetyLog = os_log_create("com.apple.spotlight.resources", "Safety");

  return MEMORY[0x1EEE66BB8]();
}

id SRLogCategoryTrial()
{
  if (SRLogCategoryTrial_onceToken != -1)
  {
    SRLogCategoryTrial_cold_1();
  }

  v1 = SRLogCategoryTrial_trialLog;

  return v1;
}

uint64_t __SRLogCategoryTrial_block_invoke()
{
  SRLogCategoryTrial_trialLog = os_log_create("com.apple.spotlight.resources", "Trial");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1AE59053C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE590914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

SRAssetBundleQuery *assetBundleCacheQuery(void *a1, void *a2, char a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v21 = a2;
  v18 = v5;
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v5];
  v24 = objc_alloc_init(SRAssetBundleQuery);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v6;
  v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v22)
  {
    v20 = *v30;
    do
    {
      v7 = 0;
      do
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v7;
        v8 = *(*(&v29 + 1) + 8 * v7);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v9 = v21;
        v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v26;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v25 + 1) + 8 * i);
              v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
              if ([v14 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"] && (a3 & 1) == 0)
              {
                [v15 addObject:&unk_1F2427C38];
                [v15 addObject:&unk_1F2427C50];
              }

              if ([v15 count])
              {
                [(SRAssetBundleQuery *)v24 addQueryEntriesForLanguage:v8 assetType:v14 deliveryTypes:v15];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v11);
        }

        v7 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v22);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v24;
}

uint64_t assetTypeID(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"com.apple.MobileAsset.LinguisticData"])
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

id normalizedLocaleForIdentifier(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v1];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF58] currentLocale];
  }

  v3 = v2;
  if (!v2)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v4 = [v2 countryCode];
  v5 = getValidRegions();
  v6 = v5;
  if (!v4 || ([v5 containsObject:v4] & 1) == 0)
  {

    v4 = @"US";
  }

  v7 = [v3 languageCode];
  v8 = [v3 scriptCode];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@_%@", v7, v8, v4];
  }

  else
  {
    if (!v7)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v7, v4, v14];
  }

  v12 = v10;
  v11 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v10];

LABEL_15:
LABEL_16:

  return v11;
}

id getValidRegions()
{
  if (getValidRegions_onceToken != -1)
  {
    getValidRegions_cold_1();
  }

  v1 = getValidRegions_gRegions;

  return v1;
}

void __getValidRegions_block_invoke()
{
  v0 = getValidRegions_gRegions;
  getValidRegions_gRegions = &unk_1F2427C08;
}

id languageCodeForLocale(void *a1)
{
  v1 = a1;
  v2 = [v1 languageCode];
  v3 = [v1 scriptCode];
  if ([v2 isEqualToString:@"zh"])
  {
    v4 = [v1 countryCode];
    v5 = v4;
    if (v3)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", v2, v3];
    }

    else if (v4 && [&unk_1F2427BF0 containsObject:v4])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Hant", v2, v9];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Hans", v2, v9];
    }
    v6 = ;
  }

  else
  {
    v6 = v2;
  }

  v7 = v6;

  return v6;
}

void refreshCacheWithQuery(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = SRIsRunningInServer();
  v8 = SRLogCategoryAssets();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      refreshCacheWithQuery_cold_2();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      refreshCacheWithQuery_cold_1();
    }

    v10 = +[SRAssetBundleCache sharedInstance];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __refreshCacheWithQuery_block_invoke;
    v11[3] = &unk_1E7A2B870;
    v12 = v6;
    [v10 queryServerCache:v5 force:a2 completion:v11];

    v9 = v12;
  }
}

id SRGetResourcePath()
{
  if (SRGetResourcePath_onceToken != -1)
  {
    SRGetResourcePath_cold_1();
  }

  v1 = SRGetResourcePath_sResourcePath;

  return v1;
}

void __SRGetResourcePath_block_invoke()
{
  v0 = SRGetResourcePath_sResourcePath;
  SRGetResourcePath_sResourcePath = @"/var/mobile/Library/Spotlight/Assets";
}

void sub_1AE592C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AE593168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t trialFlagsForProcess()
{
  v4 = *MEMORY[0x1E69E9840];
  if (trialFlagsForProcess_onceToken != -1)
  {
    trialFlagsForProcess_cold_1();
  }

  v0 = SRLogCategoryTrial();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = trialFlagsForProcess_sTrialFlagsForProcess;
    _os_log_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_INFO, "Process has trial access flags 0x%x", v3, 8u);
  }

  result = trialFlagsForProcess_sTrialFlagsForProcess;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void __trialFlagsForProcess_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v0 bundleIdentifier];

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];

  if ([v4 isEqualToString:@"com.apple.Search.framework"] && (objc_msgSend(v2, "isEqualToString:", @"searchd") & 1) != 0)
  {
    goto LABEL_3;
  }

  if ([v4 isEqualToString:@"com.apple.Spotlight"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"com.apple.spotlightui.cli"))
  {
    goto LABEL_6;
  }

  if ([v4 isEqualToString:@"com.apple.CoreSpotlight.framework"] && (objc_msgSend(v2, "isEqualToString:", @"spotlightknowledged") & 1) != 0)
  {
    v3 = 2;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.mobilemail"])
  {
    v3 = 4;
    goto LABEL_7;
  }

  if ([v4 hasPrefix:@"com.apple.omniSearch"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.intelligenceflow") & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"com.apple.ondeviceeval"))
  {
LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  if (([v4 hasPrefix:@"com.apple.dt.xctest"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"com.apple.") && objc_msgSend(v4, "hasSuffix:", @".xctrunner"))
  {
LABEL_3:
    v3 = 7;
LABEL_7:
    trialFlagsForProcess_sTrialFlagsForProcess = v3;
  }
}

__CFString *assetTypeString(uint64_t a1)
{
  if (!a1)
  {
    return @"com.apple.MobileAsset.SpotlightResources";
  }

  if (a1 == 1)
  {
    return @"com.apple.MobileAsset.LinguisticData";
  }

  v2 = SRLogCategoryAssets();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    assetTypeString_cold_1();
  }

  return @"Unknown";
}

id SRLogCategoryLifeCycle()
{
  if (SRLogCategoryLifeCycle_onceToken != -1)
  {
    SRLogCategoryLifeCycle_cold_1();
  }

  v1 = SRLogCategoryLifeCycle_lifecycleLog;

  return v1;
}

uint64_t __SRLogCategoryLifeCycle_block_invoke()
{
  SRLogCategoryLifeCycle_lifecycleLog = os_log_create("com.apple.spotlight.resources", "LifeCycle");

  return MEMORY[0x1EEE66BB8]();
}

id SRLogCategoryGeneral()
{
  if (SRLogCategoryGeneral_onceToken != -1)
  {
    SRLogCategoryGeneral_cold_1();
  }

  v1 = SRLogCategoryGeneral_generalLog;

  return v1;
}

uint64_t __SRLogCategoryGeneral_block_invoke()
{
  SRLogCategoryGeneral_generalLog = os_log_create("com.apple.spotlight.resources", "General");

  return MEMORY[0x1EEE66BB8]();
}

id localeIdentifierForLocale(void *a1)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v1 = a1;
  v2 = [v1 countryCode];
  v3 = getValidRegions();
  v4 = v3;
  if (!v2 || ([v3 containsObject:v2] & 1) == 0)
  {

    v2 = @"US";
  }

  v5 = [v1 languageCode];
  v6 = [v1 scriptCode];

  if (v5 && v6)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@_%@", v5, v6, v2];
  }

  else
  {
    if (!v5)
    {
      v8 = 0;
      goto LABEL_12;
    }

    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v5, v2, v10];
  }

  v8 = v7;
LABEL_12:

LABEL_13:

  return v8;
}

id getBundleVersionFromPath(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/Info.plist", v1];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [v3 fileExistsAtPath:v2];

  if (v4)
  {
    v5 = MEMORY[0x1E695DF20];
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    v16 = 0;
    v7 = [v5 dictionaryWithContentsOfURL:v6 error:&v16];
    v8 = v16;

    if (v8)
    {
      v9 = SRLogCategoryAssets();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        getBundleVersionFromPath_cold_1();
      }

      v10 = 0;
      v11 = v7;
      v7 = v8;
    }

    else
    {
      v14 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
      if (v14)
      {
        v15 = [v7 objectForKeyedSubscript:@"MobileAssetProperties"];
        v10 = [v15 objectForKeyedSubscript:@"SRBundleVersion"];
      }

      else
      {
        v10 = 0;
      }

      if (![v10 isEqualToString:@"9999.99.99"])
      {
        goto LABEL_7;
      }

      v11 = SRLogCategoryAssets();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v1;
        _os_log_impl(&dword_1AE58E000, v11, OS_LOG_TYPE_DEFAULT, "Asset is from roots: %@", buf, 0xCu);
      }
    }

LABEL_7:
    goto LABEL_9;
  }

  v10 = 0;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

id assetUUIDFromPath(void *a1)
{
  v1 = [a1 stringByDeletingPathExtension];
  v2 = [v1 lastPathComponent];

  return v2;
}

void sub_1AE5953EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

id SRLogCategoryTool()
{
  if (SRLogCategoryTool_onceToken != -1)
  {
    SRLogCategoryTool_cold_1();
  }

  v1 = SRLogCategoryTool_toolLog;

  return v1;
}

uint64_t __SRLogCategoryTool_block_invoke()
{
  SRLogCategoryTool_toolLog = os_log_create("com.apple.spotlight.resources", "Tool");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1AE59E9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t SRIsAssetAvailable(void *a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = a2;
  v12 = deliveryTypeFromLowerCaseString(v10);
  v13 = languageFromLowerCaseString(v11);
  if (SRIsRunningInServer())
  {
    v14 = +[SRDefaultsManager sharedDefaultsManager];
    v15 = [v14 langConfig];

    if ([v12 isEqualToString:@"Required"])
    {
      goto LABEL_3;
    }

    v26 = [v12 hasSuffix:@"Test"];
    v27 = [v15 hasTestAssets];
    if (v26)
    {
      if (v27)
      {
LABEL_3:
        if ([v15 isSupportedLanguage:v13 deliveryType:v12])
        {
          goto LABEL_4;
        }

LABEL_34:
        v21 = 2;
        goto LABEL_37;
      }
    }

    else if ((v27 & 1) == 0)
    {
      if ([v15 isSupportedLanguage:v13 deliveryType:v12])
      {
LABEL_4:
        v30 = getAssetBundleInfo(v12, v13, (a4 | a5 | a6) == 0);
        v16 = SRLogCategoryTool();
        v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
        if (v30)
        {
          if (v17)
          {
            *buf = 138412546;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "Yes asset for (%@, %@)", buf, 0x16u);
          }

          if (a3)
          {
            *a3 = [v30 objectForKeyedSubscript:@"Path"];
            v18 = SRLogCategoryTool();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_1(a3);
            }
          }

          if (a4)
          {
            *a4 = [v30 objectForKeyedSubscript:@"Compatibility Version"];
            v19 = SRLogCategoryTool();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_2(a4);
            }
          }

          if (a5)
          {
            *a5 = [v30 objectForKeyedSubscript:@"Content Version"];
            v20 = SRLogCategoryTool();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              SRIsAssetAvailable_cold_3(a5);
            }
          }

          if (!a6)
          {
            v21 = 1;
            goto LABEL_36;
          }

          *a6 = [v30 objectForKeyedSubscript:@"Bundle Version"];
          v16 = SRLogCategoryTool();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            SRIsAssetAvailable_cold_4(a6);
          }

          v21 = 1;
        }

        else
        {
          if (v17)
          {
            *buf = 138412546;
            *&buf[4] = v12;
            *&buf[12] = 2112;
            *&buf[14] = v13;
            _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "No asset for (%@, %@)", buf, 0x16u);
          }

          v21 = 0;
        }

LABEL_36:
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v21 = 0;
LABEL_37:

    goto LABEL_38;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v34 = 0;
  empty = xpc_dictionary_create_empty();
  v23 = v12;
  xpc_dictionary_set_string(empty, "d", [v12 UTF8String]);
  v24 = v13;
  xpc_dictionary_set_string(empty, "l", [v13 UTF8String]);
  v25 = +[SRXPCConnection sharedConnection];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __SRIsAssetAvailable_block_invoke;
  v32[3] = &unk_1E7A2B0D8;
  v32[4] = buf;
  [v25 sendCommand:1 info:empty sync:1 completion:v32];

  v21 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_38:

  v28 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_1AE5A0B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id deliveryTypeFromLowerCaseString(void *a1)
{
  v1 = a1;
  if ([v1 hasSuffix:@"test"])
  {
    v2 = [v1 substringWithRange:{0, objc_msgSend(v1, "length") - objc_msgSend(@"test", "length")}];
    if ([v2 hasPrefix:@"optional"])
    {
      v3 = 68;
    }

    else if ([v2 hasPrefix:@"delta"])
    {
      v3 = 69;
    }

    else
    {
      v3 = -1;
    }
  }

  else if ([v1 hasPrefix:@"required"])
  {
    v3 = 0;
  }

  else if ([v1 hasPrefix:@"optional"])
  {
    v3 = 4;
  }

  else if ([v1 hasPrefix:@"delta"])
  {
    v3 = 5;
  }

  else
  {
    v3 = -1;
  }

  v4 = SRLogCategoryTool();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    deliveryTypeFromLowerCaseString_cold_1();
  }

  v5 = deliveryTypeString(v3);

  return v5;
}

id languageFromLowerCaseString(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:v1];
  v3 = languageCodeForLocale(v2);

  v4 = SRLogCategoryTool();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    languageFromLowerCaseString_cold_1();
  }

  return v3;
}

NSObject *getAssetBundleInfo(void *a1, void *a2, int a3)
{
  v71[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = SRLogCategoryTool();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v60 = v5;
    v61 = 2112;
    v62 = v6;
    v63 = 1024;
    v64 = a3;
    _os_log_debug_impl(&dword_1AE58E000, v7, OS_LOG_TYPE_DEBUG, "getAssetBundleInfo(%@, %@, %d)", buf, 0x1Cu);
  }

  if (([v5 isEqualToString:@"Required"] & 1) != 0 || objc_msgSend(v5, "hasSuffix:", @"Test"))
  {
    v8 = SRLogCategoryTool();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      getAssetBundleInfo_cold_4(v8);
    }

    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@Assets_%@", v5, v6];
    v10 = +[SRDefaultsManager sharedDefaultsManager];
    v11 = [v10 resourceBundle];

    if (v11)
    {
      v12 = [v11 pathForResource:v9 ofType:@"bundle"];
      if (v12)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v13 setObject:v12 forKeyedSubscript:@"Path"];
        if (a3)
        {
          v14 = SRLogCategoryTool();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            getAssetBundleInfo_cold_2();
          }
        }

        else
        {
          v56 = v6;
          v29 = getBundleVersionFromPath(v12);
          [v13 setObject:v29 forKeyedSubscript:@"Bundle Version"];

          v58 = 0;
          v30 = getMobileAssetPropertiesFromPath(v12, &v58);
          v31 = v58;
          v32 = [v30 mutableCopy];

          v33 = [v32 objectForKeyedSubscript:@"_CompatibilityVersion"];
          [v13 setObject:v33 forKeyedSubscript:@"Compatibility Version"];

          v34 = +[SRDefaultsManager sharedDefaultsManager];
          v35 = [v34 requiredAssetsContentVersion];
          [v13 setObject:v35 forKeyedSubscript:@"Content Version"];

          v36 = +[SRDefaultsManager sharedDefaultsManager];
          v37 = [v36 requiredAssetsContentVersion];
          [v32 setObject:v37 forKeyedSubscript:@"_ContentVersion"];

          [v13 setObject:v32 forKeyedSubscript:@"MobileAsset Properties"];
          v38 = SRLogCategoryTool();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            getAssetBundleInfo_cold_2();
          }

          v14 = v13;
          v13 = v14;
          v6 = v56;
        }
      }

      else
      {
        v14 = SRLogCategoryTool();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v60 = v5;
          v61 = 2112;
          v62 = v6;
          _os_log_impl(&dword_1AE58E000, v14, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) failed to get path", buf, 0x16u);
        }

        v13 = 0;
      }

      goto LABEL_41;
    }

    v12 = SRLogCategoryTool();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v60 = v5;
      v61 = 2112;
      v62 = v6;
      _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) failed to get resource bundle", buf, 0x16u);
    }

LABEL_36:
    v13 = 0;
    goto LABEL_41;
  }

  v15 = SRLogCategoryTool();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    getAssetBundleInfo_cold_1(v15);
  }

  v9 = objc_alloc_init(SRAssetBundleQuery);
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:deliveryTypeID(v5)];
  v71[0] = v16;
  v17 = 1;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:1];
  [(SRAssetBundleQuery *)v9 addQueryEntriesForLanguage:v6 assetType:@"com.apple.MobileAsset.SpotlightResources" deliveryTypes:v18];

  v19 = +[SRAssetBundleCache sharedInstance];
  [v19 queryCache:v9 loading:0];

  v20 = [(SRAssetBundleQuery *)v9 queryEntries];
  v21 = [v20 objectForKeyedSubscript:v6];
  v22 = [v21 objectForKeyedSubscript:@"com.apple.MobileAsset.SpotlightResources"];
  v11 = [v22 objectForKeyedSubscript:v5];

  if (![v11 isResult])
  {
    goto LABEL_33;
  }

  v23 = [v11 bundleVersion];
  if (!v23)
  {
    goto LABEL_31;
  }

  v24 = v23;
  v25 = [v11 path];
  if (!v25)
  {

LABEL_31:
    v17 = 1;
    goto LABEL_33;
  }

  v26 = v25;
  v27 = [v11 onDevice];

  if (v27)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v28 = [v11 path];
    [v13 setObject:v28 forKeyedSubscript:@"Path"];

    if (a3)
    {
      v12 = SRLogCategoryTool();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        getAssetBundleInfo_cold_2();
      }
    }

    else
    {
      v47 = [v11 bundleVersion];
      v48 = [v47 version];
      [v13 setObject:v48 forKeyedSubscript:@"Bundle Version"];

      v49 = [v11 path];
      v57 = 0;
      v50 = getMobileAssetPropertiesFromPath(v49, &v57);
      v51 = v57;

      v52 = [v50 objectForKeyedSubscript:@"_CompatibilityVersion"];
      [v13 setObject:v52 forKeyedSubscript:@"Compatibility Version"];

      v53 = [v50 objectForKeyedSubscript:@"_ContentVersion"];
      [v13 setObject:v53 forKeyedSubscript:@"Content Version"];

      [v13 setObject:v50 forKeyedSubscript:@"MobileAsset Properties"];
      v54 = SRLogCategoryTool();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
      {
        getAssetBundleInfo_cold_2();
      }

      v12 = v13;
      v13 = v12;
    }

    goto LABEL_41;
  }

  v17 = 0;
LABEL_33:
  v12 = SRLogCategoryTool();
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_36;
  }

  v39 = v17;
  v40 = [v11 isResult];
  v41 = [v11 bundleVersion];
  v42 = v6;
  if (v41)
  {
    v55 = [v11 bundleVersion];
    v43 = [v55 version];
  }

  else
  {
    v43 = 0;
  }

  v44 = [v11 path];
  *buf = 138413570;
  v60 = v5;
  v61 = 2112;
  v62 = v42;
  v63 = 1024;
  v64 = v40;
  v65 = 2112;
  v66 = v43;
  v67 = 2112;
  v68 = v44;
  v69 = 1024;
  v70 = v39;
  _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "getAssetBundleInfo(%@, %@) = (%d, %@, %@, %d)", buf, 0x36u);

  if (v41)
  {
  }

  v13 = 0;
  v6 = v42;
LABEL_41:

  v45 = *MEMORY[0x1E69E9840];

  return v13;
}

void __SRIsAssetAvailable_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __SRIsAssetAvailable_block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v5, "av");
  }
}

uint64_t SRAreAssetsAvailableForLocale(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = languageCodeForLocale(v1);
  if (SRIsRunningInServer())
  {
    v3 = SRIsAssetAvailable(@"required", v2, 0, 0, 0, 0);
    v4 = SRIsAssetAvailable(@"optional", v2, 0, 0, 0, 0);
    v5 = SRIsAssetAvailable(@"optionaltest", v2, 0, 0, 0, 0);
    if (v3 == 2 && v4 == 2)
    {
      v6 = SRLogCategoryAssets();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v2;
        _os_log_impl(&dword_1AE58E000, v6, OS_LOG_TYPE_DEFAULT, "%@ is not supported", &buf, 0xCu);
      }

      v7 = 2;
      goto LABEL_25;
    }

    if (v3)
    {
      if (v4 | v5)
      {
        v19 = SRLogCategoryAssets();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v2;
          _os_log_impl(&dword_1AE58E000, v19, OS_LOG_TYPE_DEFAULT, "Assets are available for %@", &buf, 0xCu);
        }

        v7 = 1;
        goto LABEL_25;
      }
    }

    else if (v4)
    {
LABEL_22:
      v21 = SRLogCategoryAssets();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v2;
        _os_log_impl(&dword_1AE58E000, v21, OS_LOG_TYPE_DEFAULT, "Assets are unavailable for %@", &buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_25;
    }

    v20 = +[SRDefaultsManager sharedDefaultsManager];
    [v20 requestCatalogUpdate];

    goto LABEL_22;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x2020000000;
  v29 = 0;
  empty = xpc_dictionary_create_empty();
  v9 = v2;
  xpc_dictionary_set_string(empty, "l", [v2 UTF8String]);
  v10 = +[SRXPCConnection sharedConnection];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __SRAreAssetsAvailableForLocale_block_invoke;
  v24[3] = &unk_1E7A2B0D8;
  v24[4] = &buf;
  [v10 sendCommand:1 info:empty sync:1 completion:v24];

  if (*(*(&buf + 1) + 24) == 1 && ([SRAreAssetsAvailableForLocale_availableLangs containsObject:v2] & 1) == 0)
  {
    v11 = SRAreAssetsAvailableForLocale_availableLangs;
    if (!SRAreAssetsAvailableForLocale_availableLangs)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v13 = SRAreAssetsAvailableForLocale_availableLangs;
      SRAreAssetsAvailableForLocale_availableLangs = v12;

      v11 = SRAreAssetsAvailableForLocale_availableLangs;
    }

    [v11 addObject:v2];
    v14 = +[SRDefaultsManager sharedDefaultsManager];
    v15 = [v14 currentAssetTypes];

    v16 = SRLogCategoryAssets();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 138412290;
      v26 = v2;
      _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "Assets for %@ are available for the first time, triggering re-load", v25, 0xCu);
    }

    v17 = +[SRDefaultsManager sharedDefaultsManager];
    v18 = [v17 loadOTAAssetsForLanguage:v2 updateCache:1 assetTypes:v15 force:0];
  }

  v7 = *(*(&buf + 1) + 24);

  _Block_object_dispose(&buf, 8);
LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1AE5A1A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SRAreAssetsAvailableForLocale_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = SRLogCategoryAssets();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __SRAreAssetsAvailableForLocale_block_invoke_cold_1();
    }
  }

  else if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_uint64(v5, "av");
  }
}

__CFString *SRAssetAvailabilityString(unint64_t a1)
{
  if (a1 >= 3)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid asset availability status %lu", a1];
  }

  else
  {
    v1 = off_1E7A2B148[a1];
  }

  return v1;
}

void sub_1AE5A31E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A3354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A3588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_2_2@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

uint64_t SRIgnoreOTAAssets()
{
  if (SRIgnoreOTAAssets_onceToken != -1)
  {
    SRIgnoreOTAAssets_cold_1();
  }

  if (SRIgnoreOTAAssets_sIgnoreOTA == 1)
  {
    v0 = SRLogCategoryAssets();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_DEFAULT, "Ignoring OTA assets", v3, 2u);
    }

    v1 = SRIgnoreOTAAssets_sIgnoreOTA;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void __SRIgnoreOTAAssets_block_invoke()
{
  if (SRIsAppleInternalInstall_onceToken != -1)
  {
    SRIsAppleInternalInstall_cold_1();
  }

  if (SRIsAppleInternalInstall_isInternalInstall == 1)
  {
    v0 = [MEMORY[0x1E695E000] standardUserDefaults];
    SRIgnoreOTAAssets_sIgnoreOTA = [v0 BOOLForKey:@"SpotlightResources_Ignore_OTA"];
  }
}

uint64_t OUTLINED_FUNCTION_3_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

void sub_1AE5A6C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A85D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A8818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A8E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5A9E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  objc_destroyWeak((v25 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a25, 8);
  _Unwind_Resume(a1);
}

id ddsAssetQuery(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = SRLogCategoryAssets();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v6 assetType];
    v21 = 138412802;
    v22 = v5;
    v23 = 2112;
    v24 = v20;
    v25 = 2112;
    v26 = v7;
    _os_log_debug_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEBUG, "(assetQuery) %@, %@, %@", &v21, 0x20u);
  }

  v9 = [MEMORY[0x1E6999978] attributeFilter];
  [v9 addAllowedValue:v5 forKey:*MEMORY[0x1E6999958]];
  v10 = [v6 assetType];
  v11 = [v10 isEqualToString:@"com.apple.MobileAsset.SpotlightResources"];

  if (v11)
  {
    v12 = @"SRDeliveryType";
  }

  else
  {
    v13 = [v6 assetType];
    v14 = [v13 isEqualToString:@"com.apple.MobileAsset.LinguisticData"];

    if (!v14)
    {
      goto LABEL_8;
    }

    v12 = @"LinguisticAssetType";
  }

  [v9 addAllowedValue:v7 forKey:v12];
LABEL_8:
  v15 = objc_alloc(MEMORY[0x1E6999970]);
  v16 = [v6 assetType];
  v17 = [v15 initWithAssetType:v16 filter:v9];

  [v17 setLocalOnly:0];
  [v17 setInstalledOnly:0];
  [v17 setCachedOnly:0];
  [v17 setLatestOnly:1];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

void sub_1AE5ACF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a57, 8);
  objc_destroyWeak((v57 - 240));
  _Block_object_dispose((v57 - 232), 8);
  _Block_object_dispose((v57 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1AE5AE234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B07DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B0B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B1384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, id a61, char a62, uint64_t a63)
{
  objc_destroyWeak(&a61);
  _Block_object_dispose(&a62, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE5B1DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B3174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B3324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B35E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AE5B409C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AE5B4260(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 88));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1AE5B4840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  objc_destroyWeak((v63 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a63, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_6_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 88);
  return result;
}

uint64_t OUTLINED_FUNCTION_11@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  v4 = *(result + 40);
  return result;
}

uint64_t OUTLINED_FUNCTION_12@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 56);
  return result;
}

void deliveryTypeID_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Unsupported asset deliveryType %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void assetTypeString_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Unsupported asset type %ld", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void getMobileAssetPropertiesFromPath_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_1(&dword_1AE58E000, a2, a3, "Error loading asset properties: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void getBundleVersionFromPath_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Error fetching content version from %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void SRIsAssetAvailable_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "Set path %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void SRIsAssetAvailable_cold_2(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "Set compatibility version %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void SRIsAssetAvailable_cold_3(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "Set content version %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void SRIsAssetAvailable_cold_4(uint64_t *a1)
{
  OUTLINED_FUNCTION_2_2(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v1, v2, "Set bundle version %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void deliveryTypeFromLowerCaseString_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "deliveryTypeFromLowerCaseString %@ = 0x%lx");
  v2 = *MEMORY[0x1E69E9840];
}

void languageFromLowerCaseString_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_0(&dword_1AE58E000, v0, v1, "languageFromLowerCaseString %@ = %@");
  v2 = *MEMORY[0x1E69E9840];
}

void getAssetBundleInfo_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1AE58E000, v0, v1, "assetBundleInfo %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __SRIsAssetAvailable_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_ERROR, "Asset availability query returned error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __SRAreAssetsAvailableForLocale_block_invoke_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_ERROR, "Assets availability query returned error: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void refreshCacheWithQuery_cold_1()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void refreshCacheWithQuery_cold_2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}