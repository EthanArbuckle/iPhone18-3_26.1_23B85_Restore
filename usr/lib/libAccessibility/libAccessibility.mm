BOOL _AXSEnhanceTextLegibilityEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 boldText];

  if (!v1)
  {
    return AXSGetCachedPreference(_kAXSCacheEnhanceTextLegibility, &_AXSEnhanceTextLegibilityEnabled_onceToken, kAXSEnhanceTextLegibilityPreference, @"com.apple.accessibility.cache.enhance.text.legibility", kAXSEnhanceTextLegibilityChangedNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 boldText];
  v4 = [v3 BOOLValue];

  return v4;
}

BOOL _AXSEnhanceBackgroundContrastEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 reduceTransparency];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheEnhanceBackgroundContrast, &_AXSEnhanceBackgroundContrastEnabled_onceToken, kAXSEnhanceBackgroundContrastPreference, @"com.apple.accessibility.cache.enhance.background.contrast", kAXSEnhanceBackgroundContrastChangedNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 reduceTransparency];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t AXSGetCachedPreference(unsigned int *a1, dispatch_once_t *predicate, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __AXSGetCachedPreference_block_invoke;
  v7[3] = &__block_descriptor_64_e5_v8__0l;
  v7[4] = a4;
  v7[5] = a3;
  v7[6] = a1;
  v7[7] = a5;
  if (*predicate != -1)
  {
    dispatch_once(predicate, v7);
  }

  return *a1;
}

BOOL _AXDarkenSystemColors()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 increaseContrast];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheDarkenSystemColors, &_AXDarkenSystemColors_onceToken, kAXSDarkenSystemColorsEnabledPreference, @"com.apple.accessibility.cache.darken.system.colors.enabled", kAXSDarkenSystemColorsEnabledNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 increaseContrast];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t _AXSApplicationAccessibilityEnabled()
{
  if (_AXSProcessIsSiri_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_1();
  }

  if (_AXSProcessIsSiri__AXSProcessIsSiri == 1)
  {
    if (_AXSClarityBoardEnabled_onceToken != -1)
    {
      _AXSApplicationAccessibilityEnabled_cold_2();
    }

    if (_AXSClarityBoardEnabled_isEnabled)
    {
      return 1;
    }
  }

  if (AXDisallowsUIBasedAccessibilityFeatures_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_3();
  }

  if (AXDisallowsUIBasedAccessibilityFeatures_DisallowedForClient)
  {
    return 0;
  }

  _AXSAccessibilityEnabled();
  if (_AXSApplicationAccessibilityEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_4();
  }

  return _kAXSCacheApplicationAccessibilityEnabled;
}

uint64_t _AXSAccessibilityEnabled()
{
  if (_AXSAccessibilityEnabled_onceToken != -1)
  {
    _AXSAccessibilityEnabled_cold_1();
  }

  if ((_AXSAccessibilityEnabled_isPreBoard & 1) != 0 || (_AXSAccessibilityEnabled_isCheckerBoard & 1) != 0 || _AXSAccessibilityEnabled_inGuestPassAtSystemAppStartup == 1)
  {
    if (_accessibilityEnabled_onceToken != -1)
    {
      _accessibilityEnabled_cold_1();
    }

    return 1;
  }

  if (_AXLoadsBundlesUnconditionallyForUnmanagedASAM_onceToken != -1)
  {
    _AXSAccessibilityEnabled_cold_2();
  }

  if (_AXLoadsBundlesUnconditionallyForUnmanagedASAM_LoadsBundlesUnconditionallyForUnmanagedASAM == 1)
  {
    if (_AXHasUnmanagedASAMEntitlement_entitlementOnceToken != -1)
    {
      _AXSAccessibilityEnabled_cold_3();
    }

    if (_AXHasUnmanagedASAMEntitlement_hasUnmanagedASAMEntitlement)
    {
      return 1;
    }
  }

  if (_accessibilityEnabled_onceToken != -1)
  {
    _accessibilityEnabled_cold_1();
  }

  v2 = _kAXSCacheAccessibilityEnabled;
  v3 = _AXSInvertColorsEnabled();
  if (_AXSShouldLoadInvertBundles_onceToken != -1)
  {
    v4 = v3;
    _AXSAccessibilityEnabled_cold_5();
    v3 = v4;
  }

  return (v3 | v2 | _kAXSystemUIProcessShouldLoadInvertBundles);
}

BOOL _AXSInvertColorsEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 smartInvert];

  if (v1)
  {
    v2 = +[AccessibilitySupportOverrides shared];
    v3 = [v2 smartInvert];
    v4 = [v3 BOOLValue];
  }

  else
  {
    if (AXSGetCachedSmartInvert_onceToken != -1)
    {
      AXSGetCachedSmartInvert_cold_1();
    }

    return _kAXSCacheInvertColors == 1;
  }

  return v4;
}

BOOL _AXSReduceMotionEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 reduceMotion];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheReduceMotion, &_AXSReduceMotionEnabled_onceToken, kAXSReduceMotionPreference, @"com.apple.accessibility.cache.reduce.motion", @"com.apple.accessibility.cache.reduce.motion") == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 reduceMotion];
  v4 = [v3 BOOLValue];

  return v4;
}

void *_AXSCopyPreferredContentSizeCategoryNameApp(const __CFString *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![AXCPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"])
  {
    v12 = AXSupportLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      _AXSCopyPreferredContentSizeCategoryNameApp_cold_3();
    }

    goto LABEL_26;
  }

  v2 = a1;
  if (!a1)
  {
    v2 = [AXCPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/Preferences/com.apple.UIKit"];
  }

  v3 = CFPreferencesCopyAppValue(@"UIPreferredContentSizeCategoryName", v2);
  v4 = AXSupportLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    *v17 = v2;
    *&v17[8] = 2112;
    *&v17[10] = a1;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_186307000, v4, OS_LOG_TYPE_DEBUG, "CF Read Category Name: domain = %@, appID = %@ value = %@", buf, 0x20u);
  }

  v5 = AXSupportLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v17 = a1 != 0;
    *&v17[4] = 2112;
    *&v17[6] = v3;
    _os_log_impl(&dword_186307000, v5, OS_LOG_TYPE_DEFAULT, "Read CategoryName: per-app = %d, category name = %@", buf, 0x12u);
  }

  if (a1 && !v3)
  {
    if (cachedAppID_onceToken != -1)
    {
      _copyValuePreferenceApp_cold_1();
    }

    if (cachedAppID_CachedAppID && CFStringCompare(a1, cachedAppID_CachedAppID, 0))
    {
      v15 = 0;
      v6 = [objc_alloc(getLSApplicationRecordClass()) initWithBundleIdentifier:a1 allowPlaceholder:0 error:&v15];
      v7 = v15;
      if (v7)
      {
        v8 = AXSupportLogCommon();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          _copyValuePreferenceApp_cold_2();
        }
      }

      v3 = [v6 dataContainerURL];

      if (v3)
      {
        v9 = [v6 dataContainerURL];
        v10 = [v9 path];

        v3 = _CFPreferencesCopyAppValueWithContainer();
        v11 = AXSupportLogCommon();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *v17 = v10;
          *&v17[8] = 2112;
          *&v17[10] = a1;
          v18 = 2112;
          v19 = v3;
          _os_log_debug_impl(&dword_186307000, v11, OS_LOG_TYPE_DEBUG, "CF Read Category Name from Container: domain = %@, appID = %@, category name = %@", buf, 0x20u);
        }
      }

      goto LABEL_27;
    }

LABEL_26:
    v3 = 0;
  }

LABEL_27:
  v13 = *MEMORY[0x1E69E9840];
  return v3;
}

id AXSupportLogCommon()
{
  if (AXSupportLogCommon_onceToken != -1)
  {
    AXSupportLogCommon_cold_1();
  }

  v1 = AXSupportLogCommon___logObj;

  return v1;
}

uint64_t _AXSPhotosensitiveMitigationEnabled()
{
  if (_AXSPhotosensitiveMitigationEnabled_onceToken != -1)
  {
    _AXSPhotosensitiveMitigationEnabled_cold_1();
  }

  return _kAXSCachePhotosensitiveMitigationEnabled;
}

const __CFString *_AXSCopyPreferredContentSizeCategoryName()
{
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  if (cachedAppID_CachedAppID)
  {
    v0 = _AXSCopyPreferredContentSizeCategoryNameApp(cachedAppID_CachedAppID);
    if (v0)
    {
      v1 = v0;
      v2 = CFGetTypeID(v0);
      if (v2 == CFStringGetTypeID() && CFStringGetLength(v1))
      {
        return v1;
      }

      CFRelease(v1);
    }
  }

  return _AXSCopyPreferredContentSizeCategoryNameApp(0);
}

void __cachedAppID_block_invoke()
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = cachedAppID_CachedAppID;
  cachedAppID_CachedAppID = v0;
}

const void *AXCPSharedResourcesDirectory()
{
  pthread_mutex_lock(&AXCPSharedResourcesDirectory_lock);
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  if (AXCPSharedResourcesDirectory_pathDictionary)
  {
    Value = CFDictionaryGetValue(AXCPSharedResourcesDirectory_pathDictionary, v0);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    AXCPSharedResourcesDirectory_pathDictionary = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if (pw_dir || (v3 = getpwuid(v0)) != 0 && (pw_dir = v3->pw_dir) != 0)
  {
    Value = CFStringCreateWithFileSystemRepresentation(0, pw_dir);
    if (Value)
    {
      CFDictionarySetValue(AXCPSharedResourcesDirectory_pathDictionary, v0, Value);
      CFRelease(Value);
    }
  }

  else
  {
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&AXCPSharedResourcesDirectory_lock);
  return Value;
}

id preferencesQueue()
{
  if (preferencesQueue_onceToken != -1)
  {
    preferencesQueue_cold_1();
  }

  v1 = preferencesQueue_PreferencesQueue;

  return v1;
}

void __AXSGetCachedPreference_block_invoke(uint64_t a1)
{
  if (cachedAppID_onceToken != -1)
  {
    __AXSGetCachedPreference_block_invoke_cold_1();
  }

  v2 = cachedAppID_CachedAppID;
  v3 = preferencesQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __AXSGetCachedPreference_block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);

  NumberPreference = _getNumberPreference(*(a1 + 40), 0);
  valuePtr = -1;
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    **(a1 + 48) = valuePtr;
  }

  v5 = dispatch_time(0, 500000000);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __AXSGetCachedPreference_block_invoke_3;
  v6[3] = &__block_descriptor_64_e5_v8__0l;
  v6[4] = *(a1 + 40);
  v6[5] = v2;
  v7 = *(a1 + 48);
  dispatch_after(v5, MEMORY[0x1E69E96A0], v6);
}

uint64_t __preferencesQueue_block_invoke()
{
  preferencesQueue_PreferencesQueue = dispatch_queue_create("com.apple.accessibility.perappprefs.queue", 0);

  return MEMORY[0x1EEE66BB8]();
}

id _getNumberPreference(const __CFString *a1, const __CFString *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _copyValuePreferenceApp(a1, a2, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v7 = _AXNumberPreferencesWithNonZeroDefaultValues();
    v6 = [v7 objectForKeyedSubscript:a1];
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

id _AXNumberPreferencesWithNonZeroDefaultValues()
{
  if (_AXNumberPreferencesWithNonZeroDefaultValues_onceToken != -1)
  {
    _AXNumberPreferencesWithNonZeroDefaultValues_cold_1();
  }

  v1 = _AXNumberPreferencesWithNonZeroDefaultValues_NumberPreferencesWithNonZeroDefaultValues;

  return v1;
}

void *_copyValuePreferenceApp(const __CFString *cf1, const __CFString *a2, _BYTE *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    *a3 = 1;
  }

  if (a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = kAXSAccessibilityPreferenceDomain;
  }

  if (CFEqual(cf1, kAXSEnabledSoundDetectionStatePreference))
  {
    v6 = kAXSSoundDetectionPreferenceDomain;
  }

  if (CFEqual(cf1, kAXSAccessibilityNeedsMicrophoneOnLockScreenPreference))
  {
    v7 = kAXSAssistiveTouchPreferenceDomain;
  }

  else
  {
    v7 = v6;
  }

  if (!geteuid())
  {
    v18 = AXUtilsBackBoardServer();
    [v18 setPreferenceRetrievalRequiresValidConnection:0];
    v19 = [v18 accessibilityPreferenceAsMobile:cf1 domain:v7];
    if (v19)
    {
      v8 = v19;

      goto LABEL_43;
    }

    v8 = CFPreferencesCopyValue(cf1, v7, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);

    if (v8)
    {
      goto LABEL_43;
    }
  }

  v8 = CFPreferencesCopyAppValue(cf1, v7);
  v9 = AXSupportLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v24 = v7;
    v25 = 2112;
    v26 = cf1;
    v27 = 2112;
    v28 = a2;
    v29 = 2112;
    v30 = v8;
    _os_log_debug_impl(&dword_186307000, v9, OS_LOG_TYPE_DEBUG, "CF Read: domain = %@, preference = %@, appID = %@ result = %@ (-1 - empty, 0 - false, 1 - true)", buf, 0x2Au);
  }

  if (a2 && !v8)
  {
    if (cachedAppID_onceToken != -1)
    {
      _copyValuePreferenceApp_cold_1();
    }

    if (!cachedAppID_CachedAppID || CFStringCompare(a2, cachedAppID_CachedAppID, 0) == kCFCompareEqualTo)
    {
      goto LABEL_33;
    }

    v22 = 0;
    v10 = [objc_alloc(getLSApplicationRecordClass()) initWithBundleIdentifier:a2 allowPlaceholder:0 error:&v22];
    v11 = v22;
    if (v11)
    {
      v12 = AXSupportLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        _copyValuePreferenceApp_cold_2();
      }
    }

    v8 = [v10 dataContainerURL];

    if (v8)
    {
      v13 = [v10 dataContainerURL];
      v14 = [v13 path];

      v15 = *MEMORY[0x1E695E8B8];
      v16 = *MEMORY[0x1E695E898];
      v8 = _CFPreferencesCopyValueWithContainer();
      v17 = AXSupportLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v24 = v14;
        v25 = 2112;
        v26 = cf1;
        v27 = 2112;
        v28 = a2;
        v29 = 2112;
        v30 = v8;
        _os_log_debug_impl(&dword_186307000, v17, OS_LOG_TYPE_DEBUG, "CF Read from Container: domain = %@, preference = %@, appID = %@, value = %@", buf, 0x2Au);
      }
    }
  }

  if (v8)
  {
    goto LABEL_43;
  }

LABEL_33:
  if (a2)
  {
    v8 = 0;
    if (!a3)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _copyValuePreferenceApp_cold_3();
  }

  v8 = CFPreferencesCopyValue(cf1, _AXSAccessibilityPreferenceDomain_Domain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  if (a3)
  {
LABEL_41:
    if (!v8)
    {
      *a3 = 0;
    }
  }

LABEL_43:
  v20 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t AXDisallowsUIBasedAccessibilityFeatures()
{
  if (AXDisallowsUIBasedAccessibilityFeatures_onceToken != -1)
  {
    AXDisallowsUIBasedAccessibilityFeatures_cold_1();
  }

  return AXDisallowsUIBasedAccessibilityFeatures_DisallowedForClient;
}

void __AXDisallowsUIBasedAccessibilityFeatures_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 processName];

  if (([v1 isEqualToString:@"druid"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"pointeruid") & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"nsattributedstringagent") & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"IntelligentLight"))
  {
    AXDisallowsUIBasedAccessibilityFeatures_DisallowedForClient = 1;
  }
}

uint64_t __AXSupportLogCommon_block_invoke()
{
  AXSupportLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXSupportCommon");

  return MEMORY[0x1EEE66BB8]();
}

void __AXSGetCachedPreference_block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v3 = *(a1 + 32);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, v3, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

uint64_t _processIsResponsibleForPreferenceObserving()
{
  if (_processIsResponsibleForPreferenceObserving_onceToken != -1)
  {
    _processIsResponsibleForPreferenceObserving_cold_1();
  }

  if (_processIsResponsibleForPreferenceObserving__sProcessIsBackboard)
  {
    return 1;
  }

  v1 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v1 processName];
  v0 = [v2 isEqualToString:@"UserEventAgent"];

  return v0;
}

uint64_t ___accessibilityEnabled_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.ax", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSAccessibilityEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheAccessibilityEnabled = result;
  }

  return result;
}

BOOL _AXSButtonShapesEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 buttonShapes];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheButtonShapes, &_AXSButtonShapesEnabled_onceToken, kAXSButtonShapesEnabledPreference, @"com.apple.accessibility.cache.button.shapes.enabled", kAXSButtonShapesEnabledNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 buttonShapes];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t _AXSProcessDrawsAssistiveUI()
{
  if (_AXSProcessDrawsAssistiveUI_onceToken != -1)
  {
    _AXSProcessDrawsAssistiveUI_cold_1();
  }

  return _AXSProcessDrawsAssistiveUI_result;
}

BOOL _AXSDifferentiateWithoutColorEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 differentiateWithoutColor];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheDifferentiateWithoutColor, &_AXSDifferentiateWithoutColorEnabled_onceToken, kAXSDifferentiateWithoutColorPreference, @"com.apple.accessibility.cache.differentiate.without.color", kAXSDifferentiateWithoutColorChangedNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 differentiateWithoutColor];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t _AXSReduceMotionAutoplayAnimatedImagesEnabled()
{
  if (_AXSReduceMotionAutoplayAnimatedImagesEnabled_onceToken != -1)
  {
    _AXSReduceMotionAutoplayAnimatedImagesEnabled_cold_1();
  }

  return _kAXSCacheReduceMotionAutoplayAnimatedImagesEnabled;
}

BOOL _AXSIncreaseButtonLegibility()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 onOffLabels];

  if (!v1)
  {
    return AXSGetCachedPreference(&_kAXSCacheIncreaseButtonLegibility, &_AXSIncreaseButtonLegibility_onceToken, kAXSIncreaseButtonLegibilityPreference, @"com.apple.accessibility.cache.increase.button.legibility", kAXSIncreaseButtonLegibilityNotification) == 1;
  }

  v2 = +[AccessibilitySupportOverrides shared];
  v3 = [v2 onOffLabels];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t ___initializeVoiceOverCacheListener_block_invoke()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.vot", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v2 = 1;
  result = _getBooleanPreference(kAXSVoiceOverTouchEnabledPreference, &v2);
  if (v2)
  {
    _kAXSCacheVoiceOverTouchEnabled = result;
  }

  return result;
}

uint64_t _getBooleanPreference(const __CFString *a1, char *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _copyValuePreferenceApp(a1, 0, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
    v7 = 1;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = _AXBooleanPreferencesWithNonZeroDefaultValues();
  v6 = [v8 containsObject:a1];

  v7 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v7;
  }

LABEL_6:

  objc_autoreleasePoolPop(v4);
  return v6;
}

void AXSInitializeAsynchronouslyPerAppSmartInvert()
{
  v0 = dispatch_time(0, 500000000);
  v1 = MEMORY[0x1E69E96A0];

  dispatch_after(v0, v1, &__block_literal_global_1794);
}

void __AXSGetCachedSmartInvert_block_invoke_2()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.invert.colors", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t _AXSFullKeyboardAccessEnabled()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  if (_AXSFullKeyboardAccessEnabled_onceToken != -1)
  {
    _AXSFullKeyboardAccessEnabled_cold_2();
  }

  return _kAXSCacheFullKeyboardAccessEnabled;
}

id _AXSClarityBoardEnabledDirectory()
{
  v0 = AXCPSharedResourcesDirectory();
  if (v0)
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:AXCPSharedResourcesDirectory()];
    v2 = [v1 URLByAppendingPathComponent:@"Library/Accessibility" isDirectory:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _AXBooleanPreferencesWithNonZeroDefaultValues()
{
  if (_AXBooleanPreferencesWithNonZeroDefaultValues_onceToken != -1)
  {
    _AXBooleanPreferencesWithNonZeroDefaultValues_cold_1();
  }

  v1 = _AXBooleanPreferencesWithNonZeroDefaultValues_BooleanPreferencesWithNonZeroDefaultValues;

  return v1;
}

void __AXSGetCachedSmartInvert_block_invoke()
{
  v0 = preferencesQueue();
  dispatch_async(v0, &__block_literal_global_1798);

  NumberPreference = _getNumberPreference(kAXSInvertColorsEnabledPreference, 0);
  valuePtr = -1;
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    _kAXSCacheInvertColorsGlobal = valuePtr;
    _kAXSCacheInvertColors = valuePtr;
    v2 = AXSupportLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      __AXSGetCachedSmartInvert_block_invoke_cold_1(&valuePtr);
    }

    v3 = AXSupportLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_4();
    }
  }

  else
  {
    if (MADisplayFilterPrefGetCategoryEnabled())
    {
      v4 = MADisplayFilterPrefGetType() == 512;
    }

    else
    {
      v4 = 0;
    }

    _kAXSCacheInvertColorsGlobal = v4;
    _kAXSCacheInvertColors = v4;
    if (_kAXSWriteableClient)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_3224);
    }
  }

  AXSInitializeAsynchronouslyPerAppSmartInvert();
}

uint64_t _AXSProcessLoadsInvertBundlesForPerAppSmartInvert()
{
  if (_AXSProcessLoadsInvertBundlesForPerAppSmartInvert_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_1();
  }

  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  v0 = cachedAppID_CachedAppID;
  v1 = _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_appIDs;

  return [v1 containsObject:v0];
}

uint64_t _AXSUseSingleSystemColor()
{
  if (_AXSUseSingleSystemColor_onceToken != -1)
  {
    _AXSUseSingleSystemColor_cold_1();
  }

  return _kAXSCacheUseSingleSystemColor;
}

uint64_t _AXSAssistiveTouchScannerEnabled()
{
  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  return _kAXSCacheSwitchControlEnabled;
}

BOOL _AXSVoiceOverTouchEnabled()
{
  if (VoiceOverTemporaryOverride)
  {
    if (cachedAppID_onceToken != -1)
    {
      _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
    }

    if (cachedAppID_CachedAppID && ([cachedAppID_CachedAppID hasPrefix:@"com.apple."] & 1) == 0)
    {
      return VoiceOverTemporaryOverride == 1;
    }
  }

  if (_initializeVoiceOverCacheListener_onceToken != -1)
  {
    _AXSVoiceOverTouchEnabled_cold_2();
  }

  return _kAXSCacheVoiceOverTouchEnabled != 0;
}

BOOL _AXSReduceMotionAutoplayVideoPreviewsEnabled()
{
  v0 = AXSGetCachedPreference(&_kAXSCacheReduceMotionAutoplayVideoPreviews, &_AXSReduceMotionAutoplayVideoPreviewsEnabled_onceToken, kAXSReduceMotionAutoplayVideoPreviewsPreference, @"com.apple.accessibility.cache.reduce.motion.autoplay.video.previews", kAXSReduceMotionAutoplayVideoPreviewsChangedNotification);
  if (_AXSVoiceOverTouchEnabled())
  {
    return v0 == 1;
  }

  else
  {
    return v0 != 0;
  }
}

uint64_t _AXSClarityBoardEnabled()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  return _AXSClarityBoardEnabled_isEnabled;
}

uint64_t _AXSAllowOpaqueTouchGestures()
{
  v1 = 0;
  LODWORD(result) = _getBooleanPreference(kAXSAllowOpaqueTouchGesturesPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

void ___initializePublicAPINotificationListeners_block_invoke_2()
{
  if (!_processIsResponsibleForPreferenceObserving())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.captioning", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v1 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v1, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.mono.audio", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v2 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v2, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.quick.speak", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v3 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v3, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.differentiate.without.color", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v4 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v4, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.enhance.background.contrast", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v5, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.reduce.motion.reduce.slide.transitions", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (_initializeVoiceOverCacheListener_onceToken != -1)
    {
      ___initializePublicAPINotificationListeners_block_invoke_2_cold_1();
    }

    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v6, 0, _axsHandlePrefChanged, @"com.apple.accessibility.cache.grayscale", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v7, 0, _axsHandleMusicHapticActiveStatusChanged, _kAXSMusicHapticsActiveStatusDidChangeNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  s_axDidInitializeListeners = 1;
}

uint64_t _AXSGrayscaleEnabled()
{
  v0 = +[AccessibilitySupportOverrides shared];
  v1 = [v0 grayscale];

  if (v1)
  {
    v2 = +[AccessibilitySupportOverrides shared];
    v3 = [v2 grayscale];
    v4 = [v3 BOOLValue];
  }

  else
  {
    if (_AXSGrayscaleEnabled_onceToken != -1)
    {
      _AXSGrayscaleEnabled_cold_1();
    }

    return _kAXSCacheGrayscaleEnabled;
  }

  return v4;
}

uint64_t _AXSHighContrastFocusIndicatorsEnabled()
{
  if (_AXSHighContrastFocusIndicatorsEnabled_onceToken != -1)
  {
    _AXSHighContrastFocusIndicatorsEnabled_cold_1();
  }

  return _kAXSCacheHighContrastFocusIndicatorsEnabled;
}

void __AXSGetCachedPreference_block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  NumberPreference = _getNumberPreference(*(a1 + 32), *(a1 + 40));
  valuePtr = -1;
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    if (valuePtr != -1)
    {
      v4 = *(a1 + 48);
      if (valuePtr != *v4)
      {
        *v4 = valuePtr;
        if (*(a1 + 56))
        {
          v5 = AXSupportLogCommon();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            __AXSGetCachedPreference_block_invoke_3_cold_1(v2, (a1 + 48));
          }

          LocalCenter = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(LocalCenter, *(a1 + 56), 0, 0, 1u);
        }
      }
    }
  }
}

void ___initializePublicAPINotificationListeners_block_invoke()
{
  if (s_axDidInitializeListeners_block_invoke_onceToken != -1)
  {
    ___initializePublicAPINotificationListeners_block_invoke_cold_1();
  }
}

void __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  if (_AXSProcessLoadsInvertBundlesForPerAppSmartInvert())
  {
    if (_AXSProcessIsSpringBoard_onceToken != -1)
    {
      ___AXSShouldLoadInvertBundles_block_invoke_cold_1();
    }

    if (_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard == 1)
    {
      CFPreferencesSetValue(@"AXSSystemUIProcessAppSmartInvertEnabledPreference", *MEMORY[0x1E695E4C0], kAXSAccessibilityPreferenceDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _axsHandleSystemUILoadInvertBundles, @"com.apple.accessibility.system.ui.process.load.invert.bundles", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  v1 = kAXSInvertColorsEnabledPreference;
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  NumberPreference = _getNumberPreference(v1, cachedAppID_CachedAppID);
  v3 = AXLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = NumberPreference;
    _os_log_impl(&dword_186307000, v3, OS_LOG_TYPE_DEFAULT, "Read Per-App on Init: Smart invert = %@", &v13, 0xCu);
  }

  v13 = -1;
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &v13);
    v4 = AXSupportLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_3(&v13);
    }

    if (v13 != -1 && v13 != _kAXSCacheInvertColors)
    {
      _kAXSCacheInvertColors = v13;
      v5 = AXSupportLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_4();
      }

      if (v13 == 1)
      {
        if ((_AXSProcessLoadsInvertBundlesForPerAppSmartInvert() & 1) == 0)
        {
          v6 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(v6, @"com.apple.accessibility.system.ui.process.load.invert.bundles", 0, 0, 1u);
          v7 = AXLogInvertColorsLoadBundles();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_5();
          }
        }

        if (_kAXSCacheInvertColors != _kAXSCacheInvertColorsGlobal)
        {
          v8 = AXSupportLogCommon();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            __AXSInitializeAsynchronouslyPerAppSmartInvert_block_invoke_cold_6();
          }

          LocalCenter = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(LocalCenter, kAXSAccessibilityEnabledNotification, 0, 0, 1u);
          v10 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(v10, kAXSAccessibilityEnabledNotification, 0, 0, 1u);
        }
      }

      v11 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v11, kAXSInvertColorsEnabledNotification, 0, 0, 1u);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

id AXLogCommon()
{
  if (AXLogCommon_onceToken != -1)
  {
    AXLogCommon_cold_1();
  }

  v1 = AXLogCommon___logObj;

  return v1;
}

uint64_t __AXLogCommon_block_invoke()
{
  AXLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXCommon");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXSGetPreferenceValue(const __CFString *a1, const __CFString *a2)
{
  v2 = 0xFFFFFFFFLL;
  valuePtr = -1;
  NumberPreference = _getNumberPreference(a1, a2);
  if (NumberPreference)
  {
    CFNumberGetValue(NumberPreference, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  return v2;
}

uint64_t _AXSCommandAndControlEnabled()
{
  if (_AXSCommandAndControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_10();
  }

  return _kAXSCacheCommandAndControlEnabled;
}

uint64_t _AXSHoverTextEnabled()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  if (_AXSHoverTextEnabled_onceToken != -1)
  {
    _AXSHoverTextEnabled_cold_2();
  }

  return _kAXSCacheHoverTextEnabled;
}

void _AXSApplicationAccessibilitySetEnabled(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = AXSupportLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AF00] callStackSymbols];
    v7 = 67109378;
    v8 = a1;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Application accessibility enabled: %d, %@", &v7, 0x12u);
  }

  pthread_mutex_lock(&_AXSAccessibilityEnabledLock);
  _kAXSCacheApplicationAccessibilityEnabled = a1;
  _setPreferenceAppWithNotification(kAXSApplicationAccessibilityEnabledPreference, 0, [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1], 0);
  v4 = AXSupportLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 67109120;
    v8 = a1;
    _os_log_impl(&dword_186307000, v4, OS_LOG_TYPE_DEFAULT, "Stored App AX setting: %d", &v7, 8u);
  }

  pthread_mutex_unlock(&_AXSAccessibilityEnabledLock);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.cache.app.ax", 0, 0, 1u);
  _updateAccessibilitySettings();
  v6 = *MEMORY[0x1E69E9840];
}

void _setPreferenceAppWithNotification(const __CFString *a1, __CFString *a2, const void *a3, const __CFString *a4)
{
  v35[3] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_28;
  }

  v8 = getenv("__AX_UNIT_TEST_SETTER");
  if (v8 && !strcmp(v8, "TRUE"))
  {
    goto LABEL_13;
  }

  if (!CFEqual(a1, kAXSRosebudLoggingEnabledPreference) && !CFEqual(a1, kAXSSpeechSynthesisOptionsPreference))
  {
    goto LABEL_53;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v9 = getAXProcessIsBackboardSymbolLoc_ptr;
  v32 = getAXProcessIsBackboardSymbolLoc_ptr;
  if (!getAXProcessIsBackboardSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getAXProcessIsBackboardSymbolLoc_block_invoke;
    v34 = &unk_1E6F45698;
    v35[0] = &v29;
    v10 = AccessibilityUtilitiesLibrary();
    v11 = dlsym(v10, "AXProcessIsBackboard");
    *(*(v35[0] + 8) + 24) = v11;
    getAXProcessIsBackboardSymbolLoc_ptr = *(*(v35[0] + 8) + 24);
    v9 = v30[3];
  }

  _Block_object_dispose(&v29, 8);
  if (!v9)
  {
    _setPreferenceAppWithNotification_cold_1();
  }

  if ((v9(v12) & 1) == 0)
  {
LABEL_13:
    geteuid();
  }

  else
  {
LABEL_53:
    if (geteuid())
    {
      if (CFEqual(a1, kAXSAccessibilityNeedsMicrophoneOnLockScreenPreference))
      {
        CFPreferencesSetAppValue(a1, a3, kAXSAssistiveTouchPreferenceDomain);
        goto LABEL_23;
      }

      if (a2)
      {
        v18 = a2;
      }

      else
      {
        v18 = kAXSAccessibilityPreferenceDomain;
      }

      if (a2)
      {
        v19 = objc_alloc(getLSApplicationRecordClass());
        v29 = 0;
        v20 = [v19 initWithBundleIdentifier:a2 allowPlaceholder:0 error:&v29];
        v21 = v29;
        if (v21)
        {
          v22 = AXSupportLogCommon();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            _copyValuePreferenceApp_cold_2();
          }
        }

        v23 = [v20 dataContainerURL];
        v24 = [v23 path];

        if (v24)
        {
          if (([(__CFString *)a2 hasPrefix:@"com.apple."]& 1) == 0)
          {
            v27 = *MEMORY[0x1E695E8B8];
            v28 = *MEMORY[0x1E695E898];
LABEL_47:
            _CFPreferencesSetValueWithContainer();
            v14 = AXSupportLogCommon();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              *&buf[4] = v24;
              *&buf[12] = 2112;
              *&buf[14] = a1;
              *&buf[22] = 2112;
              v34 = a2;
              LOWORD(v35[0]) = 2112;
              *(v35 + 2) = a3;
              _os_log_debug_impl(&dword_186307000, v14, OS_LOG_TYPE_DEBUG, "CF Save to Container: domain = %@, preference = %@, appID = %@, value = %@ (-1 - empty, 0 - false, 1 - true)", buf, 0x2Au);
            }

LABEL_22:

LABEL_23:
            if (a4)
            {
              if (a2)
              {
                DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
              }

              else
              {
                DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
              }

              CFNotificationCenterPostNotification(DarwinNotifyCenter, a4, 0, 0, 1u);
            }

            goto LABEL_28;
          }

          v25 = 0;
LABEL_42:
          CFPreferencesSetValue(a1, a3, v18, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
          v26 = AXSupportLogCommon();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            *&buf[4] = v18;
            *&buf[12] = 2112;
            *&buf[14] = a1;
            *&buf[22] = 2112;
            v34 = a2;
            LOWORD(v35[0]) = 2112;
            *(v35 + 2) = a3;
            _os_log_debug_impl(&dword_186307000, v26, OS_LOG_TYPE_DEBUG, "CF Save: domain = %@, preference = %@, appID = %@, value = %@ (-1 - empty, 0 - false, 1 - true)", buf, 0x2Au);
          }

          if (v25)
          {
            goto LABEL_23;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v24 = 0;
      }

      v25 = 1;
      goto LABEL_42;
    }
  }

  if (!a2)
  {
    v14 = AXUtilsBackBoardServer();
    if (objc_opt_respondsToSelector())
    {
      v15 = AXSupportLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        _setPreferenceAppWithNotification_cold_4();
      }

      [v14 setAccessibilityPreferenceAsMobile:a1 value:a3 notification:a4];
    }

    goto LABEL_22;
  }

  v13 = AXSupportLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    _setPreferenceAppWithNotification_cold_3();
  }

LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
}

void sub_18630BDA4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = AXSupportLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_186307000, v14, OS_LOG_TYPE_DEFAULT, "Error setting mobile pref: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x18630BB30);
  }

  _Unwind_Resume(a1);
}

void _updateAccessibilitySettings()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = _AXSApplicationAccessibilityEnabled();
  if (_AXSZoomTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_1();
  }

  if (_kAXSCacheZoomTouchEnabled || _AXSVoiceOverTouchEnabled() || _AXSGuidedAccessRequiresApplicationAccessibility() || _AXSQuickSpeakEnabled())
  {
    goto LABEL_53;
  }

  if (_AXSAssistiveTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_2();
  }

  if (_kAXSAssistiveTouchEnabledCache)
  {
    goto LABEL_53;
  }

  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  if (_kAXSCacheSwitchControlEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSHearingAidsPaired_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_4();
  }

  if (_kAXSCacheHearingAidPaired || _AXSSpeakThisEnabled())
  {
    goto LABEL_53;
  }

  if (_AXSDefaultRouteForCall_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_5();
  }

  if (_kAXSCachedDefaultRouteForCall)
  {
    goto LABEL_53;
  }

  if (_AXSLocalizationCaptionMode_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_6();
  }

  if (_kAXSCacheLocalizationCaptionModeEnabled || _getPrefBooleanValueWithCustomCallback(kAXSLetterFeedbackEnabledPreference, 0, _handleLetterFeedbackPrefsChangedNotification) || _getPrefBooleanValueWithCustomCallback(kAXSPhoneticFeedbackEnabledPreference, 0, _handlePhoneticFeedbackPrefsChangedNotification) || _getPrefBooleanValueWithCustomCallback(kAXSQuickTypePredictionFeedbackEnabledPreference, 0, _handleQuickTypePredictionFeedbackPrefsChangedNotification) || _AXSWordFeedbackEnabled())
  {
    goto LABEL_53;
  }

  if (_AXSClipTracerAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_7();
  }

  if (_kAXSCacheClipTracerAccessibilityModeEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSNocturneAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_8();
  }

  if (_kAXSCacheNocturneAccessibilityModeEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSAuditInspectionModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_9();
  }

  if (_kAXSCacheAuditInspectionModeModeEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSCommandAndControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_10();
  }

  if (_kAXSCacheCommandAndControlEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSCommandAndControlCarPlayEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_11();
  }

  if (_kAXSCacheCommandAndControlCarPlayEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSAutomationEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_12();
  }

  if (_kAXSCacheAutomationEnabled || _AXSFullKeyboardAccessEnabled())
  {
    goto LABEL_53;
  }

  if (_AXSWatchControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_13();
  }

  if (_kAXSCacheWatchControlEnabled || _AXSHoverTextEnabled())
  {
    goto LABEL_53;
  }

  if (_AXSHoverTextTypingEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_14();
  }

  if (_kAXSCacheHoverTextTypingEnabled)
  {
    goto LABEL_53;
  }

  if (_AXSProcessIsSpringBoard_onceToken != -1)
  {
    ___AXSShouldLoadInvertBundles_block_invoke_cold_1();
  }

  if (_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard == 1 && _AXSBackgroundSoundsEnabled())
  {
LABEL_53:
    v1 = 1;
  }

  else
  {
    _AXSInvertColorsEnabled();
    v1 = _kAXSCacheInvertColorsGlobal == 1;
  }

  v2 = v1 | v0;
  if (!(v1 | v0))
  {
    v3 = _AXSTripleClickCopyOptions();
    if (_AXSTripleClickContainsOption(v3, 5) || _AXSTripleClickContainsOption(v3, 8))
    {
      v2 = 1;
      if (!v3)
      {
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    v2 = 0;
    if (v3)
    {
LABEL_58:
      CFRelease(v3);
    }
  }

LABEL_59:
  v4 = AXSupportLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109632;
    v10[1] = v0;
    v11 = 1024;
    v12 = v2;
    v13 = 1024;
    v14 = _kAXSCacheAccessibilityEnabled;
    _os_log_impl(&dword_186307000, v4, OS_LOG_TYPE_DEFAULT, "AXS AccessibilityEnabled: (app ax: %d), ax settings: %d, cached: %d", v10, 0x14u);
  }

  if (_kAXSCacheAccessibilityEnabled != v2)
  {
    v5 = AXSupportLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _updateAccessibilitySettings_cold_16();
    }

    _kAXSCacheAccessibilityEnabled = v2;
    v6 = MEMORY[0x1E695E4C0];
    if (v2)
    {
      v6 = MEMORY[0x1E695E4D0];
    }

    _setPreferenceAppWithNotification(kAXSAccessibilityEnabledPreference, 0, *v6, 0);
  }

  v7 = AXSupportLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    _updateAccessibilitySettings_cold_17();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.accessibility.cache.ax", 0, 0, 1u);
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t _AXSZoomTouchEnabled()
{
  if (_AXSZoomTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_1();
  }

  return _kAXSCacheZoomTouchEnabled;
}

BOOL _AXSGuidedAccessRequiresApplicationAccessibility()
{
  if (_AXSGuidedAccessEnabledByManagedConfiguration_onceToken != -1)
  {
    _AXSGuidedAccessRequiresApplicationAccessibility_cold_1();
  }

  return _kAXSCacheGuidedAccessEnabledByManagedConfiguration || _AXSGuidedAccessEnabled() != 0;
}

uint64_t _AXSAutomationEnabled()
{
  if (_AXSAutomationEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_12();
  }

  return _kAXSCacheAutomationEnabled;
}

uint64_t _AXSGuidedAccessEnabled()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  if (_AXSGuidedAccessEnabled_onceToken != -1)
  {
    _AXSGuidedAccessEnabled_cold_2();
  }

  return _kAXSCacheGuidedAccessEnabled;
}

uint64_t _AXSQuickSpeakEnabled()
{
  if (_AXSSpeechSettingsDisabledByManagedConfiguration_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_1();
  }

  if (_kAXSCacheSpeechSettingsDisabledByManagedConfiguration)
  {
    return 0;
  }

  if (_AXSQuickSpeakEnabled_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_2();
  }

  return _kAXSCacheQuickSpeakEnabled;
}

uint64_t _AXSSpeakThisEnabled()
{
  if (_AXSClarityBoardEnabled_onceToken != -1)
  {
    _AXSApplicationAccessibilityEnabled_cold_2();
  }

  if (_AXSClarityBoardEnabled_isEnabled)
  {
    return 0;
  }

  if (_AXSSpeechSettingsDisabledByManagedConfiguration_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_1();
  }

  if (_kAXSCacheSpeechSettingsDisabledByManagedConfiguration)
  {
    return 0;
  }

  if (_AXSSpeakThisEnabled_onceToken != -1)
  {
    _AXSSpeakThisEnabled_cold_3();
  }

  return _kAXSCacheSpeakThisEnabled;
}

uint64_t _AXSDefaultRouteForCall()
{
  if (_AXSDefaultRouteForCall_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_5();
  }

  return _kAXSCachedDefaultRouteForCall;
}

uint64_t _getPrefBooleanValueWithCustomCallback(__CFString *a1, int a2, uint64_t a3)
{
  v4 = _copyPrefValueWithCustomCallback(a1, a3);
  v5 = a2 != 0;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v4 BOOLValue];
    }
  }

  return v5;
}

void *_copyPrefValueWithCustomCallback(__CFString *a1, uint64_t a2)
{
  v4 = [(__CFString *)a1 stringByAppendingString:@".notification"];
  if (InitializePrefsChangedNotificationQueue_onceToken != -1)
  {
    __ObservePreferenceDistributed_block_invoke_cold_2();
  }

  v5 = PrefsChangedNotificationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___willGetPrefValue_block_invoke;
  v8[3] = &unk_1E6F45718;
  v9 = v4;
  v10 = a2;
  v6 = v4;
  dispatch_sync(v5, v8);

  return _copyValuePreferenceApp(a1, 0, 0);
}

uint64_t __InitializePrefsChangedNotificationQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.accessibility.cached.prefs.queue", 0);
  v1 = PrefsChangedNotificationQueue;
  PrefsChangedNotificationQueue = v0;

  PrefsChangedNotifications = objc_alloc_init(MEMORY[0x1E695DFA8]);

  return MEMORY[0x1EEE66BB8]();
}

void ___willGetPrefValue_block_invoke(uint64_t a1)
{
  if (([PrefsChangedNotifications containsObject:*(a1 + 32)] & 1) == 0)
  {
    [PrefsChangedNotifications addObject:*(a1 + 32)];
    if (*(a1 + 40))
    {
      v2 = *(a1 + 40);
    }

    else
    {
      v2 = _handlePrefsChangedNotification;
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v4 = *(a1 + 32);

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, v2, v4, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

uint64_t _AXSWordFeedbackEnabled()
{
  if (_AXSSpeechSettingsDisabledByManagedConfiguration_onceToken != -1)
  {
    _AXSQuickSpeakEnabled_cold_1();
  }

  if (_kAXSCacheSpeechSettingsDisabledByManagedConfiguration)
  {
    return 0;
  }

  v2 = kAXSWordFeedbackEnabledPreference;

  return _getPrefBooleanValueWithCustomCallback(v2, 0, _handleWordFeedbackPrefsChangedNotification);
}

__CFArray *_AXSTripleClickCopyOptions()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = _copyValuePreferenceApp(kAXSTripleClickPreference, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v3 = *MEMORY[0x1E695E480];
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v5 = Mutable;
      if (valuePtr)
      {
        if (valuePtr == 3)
        {
          for (i = 0; i != 3; ++i)
          {
            v21 = dword_186336E14[i];
            v7 = CFNumberCreate(v3, kCFNumberIntType, &v21);
            CFArrayAppendValue(v5, v7);
            CFRelease(v7);
          }
        }

        else
        {
          CFArrayAppendValue(Mutable, v1);
        }
      }

      _AXSSetTripleClickOptions(v5);
    }

    else
    {
      v8 = CFGetTypeID(v1);
      if (v8 == CFArrayGetTypeID())
      {
        v5 = CFRetain(v1);
      }

      else
      {
        v5 = 0;
      }
    }

    CFRelease(v1);
  }

  else
  {
    v5 = 0;
  }

  if (_AXSGuidedAccessEnabledNoCaching())
  {
    if (_AXSTripleClickContainsOption(v5, 7))
    {
      v9 = AXSupportLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:7];
        valuePtr = 138412290;
        v23 = v10;
        _os_log_impl(&dword_186307000, v9, OS_LOG_TYPE_DEFAULT, "Found GA (%@) in list of triple click options from preferences. Removing it from preferences, as it should be returned dynamically.", &valuePtr, 0xCu);
      }

      _AXSSetTripleClickOptions(v5);
      if (v5)
      {
        CFRetain(v5);
      }
    }

    else
    {
      v11 = [MEMORY[0x1E695DF70] array];
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:7];
      [v11 addObject:v12];

      if (v5)
      {
        [v11 addObjectsFromArray:v5];
        CFRelease(v5);
      }

      v5 = CFRetain(v11);
    }
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && _AXSTripleClickContainsOption(v5, 27))
  {
    v13 = [(__CFArray *)v5 mutableCopy];

    [v13 removeObject:&unk_1EF5505E0];
    v5 = v13;
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && _AXSTripleClickContainsOption(v5, 28))
  {
    v14 = [(__CFArray *)v5 mutableCopy];

    [v14 removeObject:&unk_1EF5505F8];
    v5 = v14;
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && _AXSTripleClickContainsOption(v5, 31))
  {
    v15 = [(__CFArray *)v5 mutableCopy];

    [v15 removeObject:&unk_1EF550610];
    v5 = v15;
  }

  if ((AXRuntimeCheck_SupportsLiveCaptions() & 1) == 0 && _AXSTripleClickContainsOption(v5, 29))
  {
    v16 = [(__CFArray *)v5 mutableCopy];

    [v16 removeObject:&unk_1EF550628];
    v5 = v16;
  }

  if ((AXRuntimeCheck_SupportsOnDeviceEyeTracking() & 1) == 0 && _AXSTripleClickContainsOption(v5, 42))
  {
    v17 = [(__CFArray *)v5 mutableCopy];

    [v17 removeObject:&unk_1EF550640];
    v5 = v17;
  }

  if ((_os_feature_enabled_impl() & 1) == 0 && _AXSTripleClickContainsOption(v5, 44))
  {
    v18 = [(__CFArray *)v5 mutableCopy];

    [v18 removeObject:&unk_1EF550658];
    v5 = v18;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t AXRuntimeCheck_SupportsLiveCaptions()
{
  v27 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DF58] _deviceLanguage];
  v1 = [v0 isEqualToString:@"en"];

  v2 = _os_feature_enabled_impl();
  v3 = _os_feature_enabled_impl();
  if (v3 && (v1 & 1) == 0)
  {
    v1 = AXRuntimeCheck_LiveCaptionsSupportsLanguageExpansion();
  }

  if ((v2 & v1) == 1)
  {
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v4 = AXRuntimeCheck_HasANE__hasANE;
  }

  else
  {
    v4 = 0;
  }

  v5 = AXLogLiveTranscription();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v4 & 1];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v2];
    v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v1];
    v10 = [MEMORY[0x1E695DF58] _deviceLanguage];
    v11 = MEMORY[0x1E696AD98];
    if (AXRuntimeCheck_HasANE_onceToken != -1)
    {
      AXRuntimeCheck_HasANE_cold_1();
    }

    v12 = [v11 numberWithBool:AXRuntimeCheck_HasANE__hasANE];
    v15 = 138413570;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_186307000, v5, OS_LOG_TYPE_DEFAULT, "Live Captions supported: %@ [%@,%@,%@,%@,%@]", &v15, 0x3Eu);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

uint64_t AppleNeuralEngineLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!AppleNeuralEngineLibraryCore_frameworkLibrary)
  {
    AppleNeuralEngineLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = AppleNeuralEngineLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

id get_ANEDeviceInfoClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_ANEDeviceInfoClass_softClass;
  v7 = get_ANEDeviceInfoClass_softClass;
  if (!get_ANEDeviceInfoClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_ANEDeviceInfoClass_block_invoke;
    v3[3] = &unk_1E6F45698;
    v3[4] = &v4;
    __get_ANEDeviceInfoClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18630D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id AXLogLiveTranscription()
{
  if (AXLogLiveTranscription_onceToken != -1)
  {
    AXLogLiveTranscription_cold_1();
  }

  v1 = AXLogLiveTranscription___logObj;

  return v1;
}

uint64_t __AXLogLiveTranscription_block_invoke()
{
  AXLogLiveTranscription___logObj = os_log_create("com.apple.Accessibility", "AXLiveTranscription");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXRuntimeCheck_SupportsOnDeviceEyeTracking()
{
  if (AXRuntimeCheck_isANEDeviceH13plus_onceToken != -1)
  {
    AXRuntimeCheck_isANEDeviceH13plus_cold_1();
  }

  if (AXRuntimeCheck_isANEDeviceH13plus_isANEH13plus != 1)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

BOOL _AXSTripleClickContainsOption(_BOOL8 a1, int a2)
{
  v2 = a1;
  valuePtr = a2;
  if (a1)
  {
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v6.length = CFArrayGetCount(v2);
    v6.location = 0;
    v2 = CFArrayContainsValue(v2, v6, v3) != 0;
    CFRelease(v3);
  }

  return v2;
}

uint64_t _AXSLowercaseKeyboardDisplayEnabled()
{
  if (_AXSLowercaseKeyboardDisplayEnabled_onceToken != -1)
  {
    _AXSLowercaseKeyboardDisplayEnabled_cold_1();
  }

  return _kAXSCacheLowercaseKeyboardEnabled;
}

uint64_t _AXSAttentionAwarenessFeaturesEnabled()
{
  if (_AXSAttentionAwarenessFeaturesEnabled_twiceToken != -1)
  {
    _AXSAttentionAwarenessFeaturesEnabled_cold_1();
  }

  if (_AXSAttentionAwarenessFeaturesEnabled_supported != 1)
  {
    return 0;
  }

  v0 = AXSupportLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    _AXSAttentionAwarenessFeaturesEnabled_cold_2();
  }

  if (_AXSAttentionAwarenessFeaturesEnabled_onceToken != -1)
  {
    _AXSAttentionAwarenessFeaturesEnabled_cold_3();
  }

  return _kAXSCacheAttentionAwarenessFeaturesEnabled;
}

void _axsHandlePrefChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___axsHandlePrefChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void ___axsHandlePrefChanged_block_invoke(uint64_t a1)
{
  v230 = *MEMORY[0x1E69E9840];
  if (cachedAppID_onceToken != -1)
  {
    _AXSProcessLoadsInvertBundlesForPerAppSmartInvert_cold_2();
  }

  v2 = cachedAppID_CachedAppID;
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  if (CFEqual(v4, @"com.apple.accessibility.cache.button.shapes.enabled"))
  {
    v5 = kAXSButtonShapesEnabledPreference;
    v6 = kAXSButtonShapesEnabledNotification;
    v7 = &_kAXSCacheButtonShapes;
LABEL_5:
    _updateCachePreferenceAndRepostNotification(v5, v6, v2, v7);
    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.use.darker.keyboard.enabled"))
  {
    _getBooleanPreference(kAXSUseDarkerKeyboardPreference, 0);
    if (kAXSUseDarkerKeyboardEnabledNotification)
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(LocalCenter, kAXSUseDarkerKeyboardEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSUseDarkerKeyboardEnabledNotification;
LABEL_13:
        CFNotificationCenterPostNotification(DarwinNotifyCenter, v12, 0, 0, 1u);
        goto LABEL_6;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.darken.system.colors.enabled"))
  {
    v5 = kAXSDarkenSystemColorsEnabledPreference;
    v6 = kAXSDarkenSystemColorsEnabledNotification;
    v7 = &_kAXSCacheDarkenSystemColors;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.VibrationDisabled"))
  {
    _kAXSCacheVibrationDisabled = _getBooleanPreference(kAXSVibrationDisabledPreference, 0);
    if (kAXSVibrationDisabledPreferenceDidChangeNotification)
    {
      v14 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v14, kAXSVibrationDisabledPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSVibrationDisabledPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.use.prominent.focus.indicators"))
  {
    _kAXSCacheHighContrastFocusIndicatorsEnabled = _getBooleanPreference(kAXSHighContrastFocusIndicatorsEnabledPreference, 0);
    if (kAXSHighContrastFocusIndicatorsEnabledNotification)
    {
      v22 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v22, kAXSHighContrastFocusIndicatorsEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHighContrastFocusIndicatorsEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.use.single.system.color.enabled"))
  {
    _kAXSCacheUseSingleSystemColor = _getBooleanPreference(kAXSUseSingleSystemColorPreference, 0);
    if (kAXSUseSingleSystemColorNotification)
    {
      v26 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v26, kAXSUseSingleSystemColorNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSUseSingleSystemColorNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.increase.button.legibility"))
  {
    v5 = kAXSIncreaseButtonLegibilityPreference;
    v6 = kAXSIncreaseButtonLegibilityNotification;
    v7 = &_kAXSCacheIncreaseButtonLegibility;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.differentiate.without.color"))
  {
    v5 = kAXSDifferentiateWithoutColorPreference;
    v6 = kAXSDifferentiateWithoutColorChangedNotification;
    v7 = &_kAXSCacheDifferentiateWithoutColor;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.reduce.motion"))
  {
    v5 = kAXSReduceMotionPreference;
    v6 = kAXSReduceMotionChangedNotification;
    v7 = &_kAXSCacheReduceMotion;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.reduce.motion.autoplay.messages.effects"))
  {
    _kAXSCacheReduceMotionAutoplayMessagesEffectsEnabled = _getBooleanPreference(kAXSReduceMotionAutoplayMessagesEffectsPreference, 0);
    if (kAXSReduceMotionAutoplayMessagesEffectsChangedNotification)
    {
      v28 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v28, kAXSReduceMotionAutoplayMessagesEffectsChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSReduceMotionAutoplayMessagesEffectsChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.reduce.motion.autoplay.animated.images"))
  {
    _kAXSCacheReduceMotionAutoplayAnimatedImagesEnabled = _getBooleanPreference(kAXSReduceMotionAutoplayAnimatedImagesPreference, 0);
    if (kAXSReduceMotionAutoplayAnimatedImagesChangedNotification)
    {
      v29 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v29, kAXSReduceMotionAutoplayAnimatedImagesChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSReduceMotionAutoplayAnimatedImagesChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.reduce.motion.autoplay.video.previews"))
  {
    v5 = kAXSReduceMotionAutoplayVideoPreviewsPreference;
    v6 = kAXSReduceMotionAutoplayVideoPreviewsChangedNotification;
    v7 = &_kAXSCacheReduceMotionAutoplayVideoPreviews;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.reduce.motion.reduce.slide.transitions"))
  {
    v5 = kAXSReduceMotionReduceSlideTransitionsPreference;
    v6 = kAXSReduceMotionReduceSlideTransitionsChangedNotification;
    v7 = &_kAXSCacheReduceMotionReduceSlideTransitions;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.enhance.background.contrast"))
  {
    v5 = kAXSEnhanceBackgroundContrastPreference;
    v6 = kAXSEnhanceBackgroundContrastChangedNotification;
    v7 = &_kAXSCacheEnhanceBackgroundContrast;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.enhance.text.legibility"))
  {
    v5 = kAXSEnhanceTextLegibilityPreference;
    v6 = kAXSEnhanceTextLegibilityChangedNotification;
    v7 = &_kAXSCacheEnhanceTextLegibility;
    goto LABEL_5;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.zoom"))
  {
    _kAXSCacheZoomTouchEnabled = _getBooleanPreference(kAXSZoomTouchEnabledPreference, 0);
    if (kAXSZoomTouchEnabledNotification)
    {
      v30 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v30, kAXSZoomTouchEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSZoomTouchEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.livespeech"))
  {
    _kAXSCacheLiveSpeechEnabled = _getBooleanPreference(kAXSLiveSpeechEnabledPreference, 0);
    if (kAXSLiveSpeechEnabledNotification)
    {
      v31 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v31, kAXSLiveSpeechEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSLiveSpeechEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext"))
  {
    _kAXSCacheHoverTextEnabled = _getBooleanPreference(kAXSHoverTextEnabledPreference, 0);
    if (kAXSHoverTextEnabledNotification)
    {
      v32 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v32, kAXSHoverTextEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext.fontsize.change"))
  {
    _kAXSCachedHoverTextFontSize = _getFloatPreference(kAXSHoverTextFontSizePreference, 0, 0);
    if (kAXSHoverTextFontSizeChangedNotification)
    {
      v33 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v33, kAXSHoverTextFontSizeChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextFontSizeChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext.backgroundopacity.change"))
  {
    _kAXSCachedHoverTextBackgroundOpacity = _getFloatPreference(kAXSHoverTextBackgroundOpacityPreference, 0, 0);
    if (kAXSHoverTextBackgroundOpacityChangedNotification)
    {
      v34 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v34, kAXSHoverTextBackgroundOpacityChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextBackgroundOpacityChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext.displaymode.change"))
  {
    _kAXSCachedHoverTextDisplayMode = _getFloatPreference(kAXSHoverTextDisplayModePreference, 0, 0);
    if (kAXSHoverTextDisplayModeChangedNotification)
    {
      v35 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v35, kAXSHoverTextDisplayModeChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextDisplayModeChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext.typing"))
  {
    _kAXSCacheHoverTextTypingEnabled = _getBooleanPreference(kAXSHoverTextTypingEnabledPreference, 0);
    if (kAXSHoverTextTypingEnabledNotification)
    {
      v36 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v36, kAXSHoverTextTypingEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextTypingEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hovertext.typing.displaymode.change"))
  {
    _kAXSCacheHoverTextTypingDisplayMode = _getFloatPreference(kAXSHoverTextTypingDisplayModePreference, 0, 0);
    if (kAXSHoverTextTypingDisplayModeChangedNotification)
    {
      v37 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v37, kAXSHoverTextTypingDisplayModeChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHoverTextTypingDisplayModeChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.ast"))
  {
    _kAXSAssistiveTouchEnabledCache = _getBooleanPreference(kAXSAssistiveTouchEnabledPreference, 0);
    if (kAXSAssistiveTouchEnabledNotification)
    {
      v38 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v38, kAXSAssistiveTouchEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAssistiveTouchEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.dwell.keyboardcontinuouspath"))
  {
    _kAXSCacheDwellKeyboardContinuousPathEnabled = _getBooleanPreference(kAXSDwellKeyboardContinuousPathEnabledPreference, 0);
    if (kAXSDwellKeyboardContinuousPathEnabledNotification)
    {
      v39 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v39, kAXSDwellKeyboardContinuousPathEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSDwellKeyboardContinuousPathEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.switch.control.keyboardcontinuouspath"))
  {
    _kAXSCacheSwitchControlKeyboardContinuousPathEnabled = _getBooleanPreference(kAXSSwitchControlKeyboardContinuousPathEnabledPreference, 0);
    if (kAXSSwitchControlKeyboardContinuousPathEnabledNotification)
    {
      v40 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v40, kAXSSwitchControlKeyboardContinuousPathEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSSwitchControlKeyboardContinuousPathEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.vot"))
  {
    _kAXSCacheVoiceOverTouchEnabled = _getBooleanPreference(kAXSVoiceOverTouchEnabledPreference, 0);
    if (kAXSVoiceOverTouchEnabledNotification)
    {
      v41 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v41, kAXSVoiceOverTouchEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSVoiceOverTouchEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.bsi"))
  {
    _kAXSCacheBrailleScreenInputEnabled = _getBooleanPreference(kAXSBrailleScreenInputEnabledPreference, 0);
    if (kAXSBrailleScreenInputEnabledNotification)
    {
      v42 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v42, kAXSBrailleScreenInputEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSBrailleScreenInputEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AXSCacheVoiceOverSpeakTimeOnWakeNotification"))
  {
    _kAXSCacheVoiceOverSpeakTimeOnWake = _getBooleanPreference(kAXSVoiceOverTouchSpeakTimeOnWakePreference, 0);
    if (kAXSVoiceOverTouchSpeakTimeOnWakeChangedNotification)
    {
      v43 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v43, kAXSVoiceOverTouchSpeakTimeOnWakeChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSVoiceOverTouchSpeakTimeOnWakeChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AXSCacheWalkieTalkieTapToTalkNotification"))
  {
    _kAXSCacheWalkieTalkieTapToTalk = _getBooleanPreference(kAXSWalkieTalkieTapToTalkPreference, 0);
    if (kAXSWalkieTalkieTapToTalkChangedNotification)
    {
      v44 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v44, kAXSWalkieTalkieTapToTalkChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSWalkieTalkieTapToTalkChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AXSCacheAppSwitcherAutoSelectNotification"))
  {
    _kAXSCacheAppSwitcherAutoSelect = _getBooleanPreference(kAXSAppSwitcherAutoSelectPreference, 0);
    if (kAXSAppSwitcherAutoSelectChangedNotification)
    {
      v45 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v45, kAXSAppSwitcherAutoSelectChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAppSwitcherAutoSelectChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.visual.alert"))
  {
    _kAXSCacheVisualAlertEnabled = _getBooleanPreference(kAXSVisualAlertEnabledPreference, 0);
    if (kAXSVisualAlertEnabledNotification)
    {
      v46 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v46, kAXSVisualAlertEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSVisualAlertEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.earpiece.noise"))
  {
    _kAXSCacheEarpieceNoiseCancellation = _getBooleanPreference(kAXSEarpieceNoiseCancellationPreference, 0);
    if (kAXSEarpieceNoiseCancellationEnabledNotification)
    {
      v47 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v47, kAXSEarpieceNoiseCancellationEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSEarpieceNoiseCancellationEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.extendedvoiceisolationmodes"))
  {
    _kAXSCacheExtendedVoiceIsolationMediaModesEnabled = _getBooleanPreference(kAXSExtendedVoiceIsolationMediaModesEnabledPreference, 0);
    if (kAXSExtendedVoiceIsolationMediaModesEnabledNotification)
    {
      v48 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v48, kAXSExtendedVoiceIsolationMediaModesEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSExtendedVoiceIsolationMediaModesEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.lock.to.end.call"))
  {
    _kAXSCachePhoneLockToEndCall = _getBooleanPreference(kAXSPhoneLockToEndCallPreference, 0);
    if (kAXSPhoneLockToEndCallNotification)
    {
      v49 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v49, kAXSPhoneLockToEndCallNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPhoneLockToEndCallNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.mono.audio"))
  {
    _kAXSCacheMonoAudioEnabled = _getBooleanPreference(kAXSMonoAudioEnabledPreference, 0);
    if (kAXSMonoAudioEnabledNotification)
    {
      v50 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v50, kAXSMonoAudioEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSMonoAudioEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.alwaysshowvolume"))
  {
    _kAXSCacheAlwaysShowVolumeControlsEnabled = _getBooleanPreference(kAXSAlwaysShowVolumeControlEnabledPreference, 0);
    if (kAXSAlwaysShowVolumeControlEnabledNotification)
    {
      v51 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v51, kAXSAlwaysShowVolumeControlEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAlwaysShowVolumeControlEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.hac.audio"))
  {
    _kAXSCacheHearingAidComplianceEnabled = _getBooleanPreference(kAXSHearingAidCompliancePreference, 0);
    if (kAXSHearingAidComplianceNotification)
    {
      v52 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v52, kAXSHearingAidComplianceNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHearingAidComplianceNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.grayscale"))
  {
    _kAXSCacheGrayscaleEnabled = _getBooleanPreference(kAXSGrayscaleEnabledPreference, 0);
    if (kAXSGrayscaleEnabledNotification)
    {
      v53 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v53, kAXSGrayscaleEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSGrayscaleEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, kAXSDefaultRouteChangedCacheNotification))
  {
    v221 = 1;
    v54 = _copyValuePreferenceApp(kAXSDefaultRouteForCallPreference, 0, &v221);
    v55 = v54;
    if (v221 && v54)
    {
      v56 = CFGetTypeID(v54);
      if (v56 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v55, kCFNumberIntType, buf);
        _kAXSCachedDefaultRouteForCall = *buf;
      }
    }

    else if (!v54)
    {
LABEL_187:
      if (kAXSDefaultRouteChangedNotification)
      {
        v57 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v57, kAXSDefaultRouteChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSDefaultRouteChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    CFRelease(v55);
    goto LABEL_187;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.invert.colors"))
  {
    _updateCacheSmartInvertAndRepostNotification(v2);
    _invalidateAllCacheSmartInvertPreferences();
    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.classic.invert.colors"))
  {
    _kAXSCacheClassicInvertColorsEnabled = _getBooleanPreference(kAXSClassicInvertColorsPreference, 0);
    v58 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v58, kAXSClassicInvertColorsEnabledNotification, 0, 0, 1u);
    if (_AXSCurrentProcessIsWebContent_onceToken != -1)
    {
      _isProcessDistributedNotificationSender_cold_1();
    }

    if ((_AXSCurrentProcessIsWebContent_IsWebContent & 1) == 0)
    {
      v60 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(v60, kAXSClassicInvertColorsEnabledNotification, 0, 0, 1u);
      DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
      v12 = kAXSInvertColorsEnabledNotification;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.displayfilter.showinitialalert"))
  {
    _kAXSCacheDisplayFilterShowInitialAlert = _getBooleanPreference(kAXSDisplayFilterShowInitialAlertPreference, 0);
    if (kAXSDisplayShowInitialAlertNotification)
    {
      v59 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v59, kAXSDisplayShowInitialAlertNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSDisplayShowInitialAlertNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.quick.speak"))
  {
    _kAXSCacheQuickSpeakEnabled = _getBooleanPreference(kAXSQuickSpeakEnabledPreference, 0);
    if (kAXSQuickSpeakEnabledNotification)
    {
      v61 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v61, kAXSQuickSpeakEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSQuickSpeakEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.quick.speak.highlight.text"))
  {
    _kAXSCacheQuickSpeakHighlightTextEnabled = _getBooleanPreference(kAXSQuickSpeakHighlightTextEnabledPreference, 0);
    if (kAXSQuickSpeakHighlightTextEnabledNotification)
    {
      v62 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v62, kAXSQuickSpeakHighlightTextEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSQuickSpeakHighlightTextEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.internal.logvalidationerrors"))
  {
    _kAXSCacheLogValidationErrors = _getBooleanPreference(kAXSLogValidationErrorsPreference, 0);
    if (kAXSLogValidationErrorsNotification)
    {
      v63 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v63, kAXSLogValidationErrorsNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSLogValidationErrorsNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.internal.reportvalidationerrors"))
  {
    _kAXSCacheReportValidationErrors = _getBooleanPreference(kAXSReportValidationErrorsPreference, 0);
    if (kAXSReportValidationErrorsNotification)
    {
      v64 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v64, kAXSReportValidationErrorsNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSReportValidationErrorsNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.internal.crashonvalidationerrors"))
  {
    _kAXSCacheCrashOnValidationErrors = _getBooleanPreference(kAXSCrashOnValidationErrorsPreference, 0);
    if (kAXSCrashOnValidationErrorsNotification)
    {
      v65 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v65, kAXSCrashOnValidationErrorsNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSCrashOnValidationErrorsNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.web.accessibility.events.enabled"))
  {
    _getBooleanPreference(kAXSWebAccessibilityEventsEnabledPreference, 0);
    if (kAXSWebAccessibilityEventsEnabledNotification)
    {
      v66 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v66, kAXSWebAccessibilityEventsEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSWebAccessibilityEventsEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.allows.notification"))
  {
    _kAXSCacheWebProcessAllowsSecondaryThreadEnabled = _getBooleanPreference(kAXSWebProcessAllowsSecondaryThreadEnabledPreference, 0);
    if (kAXSWebProcessAllowsSecondaryThreadEnabledNotification)
    {
      v67 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v67, kAXSWebProcessAllowsSecondaryThreadEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSWebProcessAllowsSecondaryThreadEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.allow.app.customization"))
  {
    _kAXSCachePointerAllowAppCustomizationEnabled = _getBooleanPreference(kAXSPointerAllowAppCustomizationEnabledPreference, 0);
    if (kAXSPointerAllowAppCustomizationPreferenceDidChangeNotification)
    {
      v68 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v68, kAXSPointerAllowAppCustomizationPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerAllowAppCustomizationPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.inertia"))
  {
    _kAXSCachePointerInertiaEnabled = _getBooleanPreference(kAXSPointerInertiaEnabledPreference, 0);
    if (kAXSPointerInertiaPreferenceDidChangeNotification)
    {
      v69 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v69, kAXSPointerInertiaPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerInertiaPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.effect.scaling"))
  {
    _kAXSCachePointerEffectScalingEnabled = _getBooleanPreference(kAXSPointerEffectScalingEnabledPreference, 0);
    if (kAXSPointerEffectScalingPreferenceDidChangeNotification)
    {
      v70 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v70, kAXSPointerEffectScalingPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerEffectScalingPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.size.multiplier"))
  {
    _kAXSCachePointerSizeMultiplier = _getFloatPreference(kAXSPointerSizeMultiplierPreference, 0, 0);
    if (kAXSPointerSizeMultiplierPreferenceDidChangeNotification)
    {
      v71 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v71, kAXSPointerSizeMultiplierPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerSizeMultiplierPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.increased.contrast"))
  {
    _kAXSCachePointerIncreasedContrastEnabled = _getBooleanPreference(kAXSPointerIncreasedContrastEnabledPreference, 0);
    if (kAXSPointerIncreasedContrastPreferenceDidChangeNotification)
    {
      v72 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v72, kAXSPointerIncreasedContrastPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerIncreasedContrastPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.auto.hide"))
  {
    _kAXSCachePointerAutoHideEnabled = _getBooleanPreference(kAXSPointerAutoHideEnabledPreference, 0);
    if (kAXSPointerAutoHidePreferenceDidChangeNotification)
    {
      v73 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v73, kAXSPointerAutoHidePreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerAutoHidePreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.auto.hide.duration"))
  {
    _kAXSCachePointerAutoHideDuration = _getFloatPreference(kAXSPointerAutoHideDurationPreference, 0, 0);
    if (kAXSPointerAutoHideDurationPreferenceDidChangeNotification)
    {
      v74 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v74, kAXSPointerAutoHideDurationPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerAutoHideDurationPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.stroke.color.width"))
  {
    _kAXSCachePointerStrokeColorWidth = _getFloatPreference(kAXSPointerStrokeColorWidthPreference, 0, 0);
    if (!kAXSPointerStrokeColorPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

    v75 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v75, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0, 0, 1u);
    if (!_processIsResponsibleForPreferenceObserving())
    {
      goto LABEL_6;
    }

    goto LABEL_274;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.stroke.color"))
  {
    v221 = 1;
    v76 = _copyValuePreferenceApp(kAXSPointerStrokeColorPreference, 0, &v221);
    v77 = v76;
    if (v221 && v76)
    {
      v78 = CFGetTypeID(v76);
      if (v78 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v77, kCFNumberIntType, buf);
        _kAXSCachePointerStrokeColor = *buf;
      }
    }

    else if (!v76)
    {
LABEL_272:
      if (!kAXSPointerStrokeColorPreferenceDidChangeNotification)
      {
        goto LABEL_6;
      }

      v82 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v82, kAXSPointerStrokeColorPreferenceDidChangeNotification, 0, 0, 1u);
      if (!_processIsResponsibleForPreferenceObserving())
      {
        goto LABEL_6;
      }

LABEL_274:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v12 = kAXSPointerStrokeColorPreferenceDidChangeNotification;
      goto LABEL_13;
    }

    CFRelease(v77);
    goto LABEL_272;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.voiceover.option"))
  {
    v221 = 1;
    v79 = _copyValuePreferenceApp(kAXSPointerVoiceOverCursorOptionPreference, 0, &v221);
    v80 = v79;
    if (v221 && v79)
    {
      v81 = CFGetTypeID(v79);
      if (v81 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v80, kCFNumberIntType, buf);
        _kAXSCachePointerVoiceOverCursorOption = *buf;
      }
    }

    else if (!v79)
    {
LABEL_280:
      if (kAXSPointerVoiceOverCursorOptionPreferenceDidChangeNotification)
      {
        v83 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v83, kAXSPointerVoiceOverCursorOptionPreferenceDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPointerVoiceOverCursorOptionPreferenceDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    CFRelease(v80);
    goto LABEL_280;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.voiceover.speak.under.pointer"))
  {
    _kAXSCacheVoiceOverSpeakUnderPointer = _getBooleanPreference(kAXSVoiceOverSpeakUnderPointerPreference, 0);
    if (!kAXSVoiceOverSpeakUnderPointerPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

    goto LABEL_285;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.voiceover.speak.under.pointer"))
  {
    _kAXSCacheVoiceOverSpeakUnderPointerDelay = _getFloatPreference(kAXSVoiceOverSpeakUnderPointerDelayPreference, 0, 0);
    if (!kAXSVoiceOverSpeakUnderPointerPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

LABEL_285:
    v84 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v84, kAXSVoiceOverSpeakUnderPointerPreferenceDidChangeNotification, 0, 0, 1u);
    if (_processIsResponsibleForPreferenceObserving())
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v12 = kAXSVoiceOverSpeakUnderPointerPreferenceDidChangeNotification;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.pointer.scale.with.zoom.level"))
  {
    _kAXSCachePointerScaleWithZoomLevelEnabled = _getBooleanPreference(kAXSPointerScaleWithZoomLevelEnabledPreference, 0);
    if (kAXSPointerScaleWithZoomLevelPreferenceDidChangeNotification)
    {
      v85 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v85, kAXSPointerScaleWithZoomLevelPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSPointerScaleWithZoomLevelPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesActiveDidChangeNotification))
  {
    _kAXSCacheMotionCuesActive = _getBooleanPreference(@"AXSMotionCuesActive", 0);
    if (!kAXSMotionCuesPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

    goto LABEL_299;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesShouldShowBannerDidChangeNotification))
  {
    _kAXSCacheMotionCuesShouldShowBanner = _getBooleanPreference(@"AXSMotionCuesShouldShowBanner", 0);
    if (!kAXSMotionCuesPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

LABEL_299:
    v86 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(v86, kAXSMotionCuesPreferenceDidChangeNotification, 0, 0, 1u);
    if (!_processIsResponsibleForPreferenceObserving())
    {
      goto LABEL_6;
    }

    goto LABEL_315;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesDidChangeNotification))
  {
    _kAXSCacheMotionCuesEnabled = _getBooleanPreference(kAXSMotionCuesEnabledPreference, 0);
    if (!kAXSMotionCuesPreferenceDidChangeNotification)
    {
      goto LABEL_6;
    }

    goto LABEL_299;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesModeDidChangeNotification))
  {
    v221 = 1;
    v87 = _copyValuePreferenceApp(kAXSMotionCuesModePreference, 0, &v221);
    v88 = v87;
    if (v221 && v87)
    {
      v89 = CFGetTypeID(v87);
      if (v89 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v88, kCFNumberIntType, buf);
        _kAXSCacheMotionCuesMode = *buf;
      }
    }

    else if (!v87)
    {
LABEL_313:
      if (!kAXSMotionCuesPreferenceDidChangeNotification)
      {
        goto LABEL_6;
      }

      v93 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v93, kAXSMotionCuesPreferenceDidChangeNotification, 0, 0, 1u);
      if (!_processIsResponsibleForPreferenceObserving())
      {
        goto LABEL_6;
      }

LABEL_315:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v12 = kAXSMotionCuesPreferenceDidChangeNotification;
      goto LABEL_13;
    }

    CFRelease(v88);
    goto LABEL_313;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesStyleDidChangeNotification))
  {
    v221 = 1;
    v90 = _copyValuePreferenceApp(kAXSMotionCuesStylePreference, 0, &v221);
    v91 = v90;
    if (v221 && v90)
    {
      v92 = CFGetTypeID(v90);
      if (v92 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v91, kCFNumberIntType, buf);
        _kAXSCacheMotionCuesStyle = *buf;
      }

      goto LABEL_327;
    }

LABEL_326:
    if (!v91)
    {
LABEL_328:
      if (kAXSMotionCuesCustomizationDidChangeNotification)
      {
        v98 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v98, kAXSMotionCuesCustomizationDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSMotionCuesCustomizationDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

LABEL_327:
    CFRelease(v91);
    goto LABEL_328;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesTintColorDidChangeNotification))
  {
    v221 = 1;
    v94 = _copyValuePreferenceApp(kAXSMotionCuesTintColorPreference, 0, &v221);
    v91 = v94;
    if (v221 && v94)
    {
      v95 = CFGetTypeID(v94);
      if (v95 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v91, kCFNumberIntType, buf);
        _kAXSCacheMotionCuesTintColor = *buf;
      }

      goto LABEL_327;
    }

    goto LABEL_326;
  }

  if (CFEqual(*v3, _kAXSCacheMotionCuesIntensityDidChangeNotification))
  {
    v221 = 1;
    v96 = _copyValuePreferenceApp(kAXSMotionCuesIntensityPreference, 0, &v221);
    v91 = v96;
    if (v221 && v96)
    {
      v97 = CFGetTypeID(v96);
      if (v97 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v91, kCFNumberIntType, buf);
        _kAXSCacheMotionCuesIntensity = *buf;
      }

      goto LABEL_327;
    }

    goto LABEL_326;
  }

  if (CFEqual(*v3, _kAXSCacheHapticMusicDidChangeNotification))
  {
    _kAXSCacheHapticMusicEnabled = _getBooleanPreference(kAXSHapticMusicEnabledPreference, 0);
    if (kAXSHapticMusicPreferenceDidChangeNotification)
    {
      v99 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v99, kAXSHapticMusicPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSHapticMusicPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, _kAXSCacheAudioDonationSiriImprovementDidChangeNotification))
  {
    _kAXSCacheAudioDonationSiriImprovementEnabled = _getBooleanPreference(kAXSAudioDonationSiriImprovementEnabledPreference, 0);
    if (kAXSAudioDonationSiriImprovementPreferenceDidChangeNotification)
    {
      v100 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v100, kAXSAudioDonationSiriImprovementPreferenceDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAudioDonationSiriImprovementPreferenceDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.isolated.tree.mode"))
  {
    v221 = 1;
    v101 = _copyValuePreferenceApp(kAXSIsolatedTreeModeEnabledPreference, 0, &v221);
    v102 = v101;
    if (v221 && v101)
    {
      v103 = CFGetTypeID(v101);
      if (v103 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v102, kCFNumberIntType, buf);
        _kAXSCacheIsolatedTreeMode = *buf;
      }
    }

    else if (!v101)
    {
LABEL_350:
      if (kAXSIsolatedTreeModePreferenceDidChangeNotification)
      {
        v105 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v105, kAXSIsolatedTreeModePreferenceDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSIsolatedTreeModePreferenceDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    CFRelease(v102);
    goto LABEL_350;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.back.tap.enabled"))
  {
    _kAXSCacheBackTapEnabled = _getBooleanPreference(kAXSBackTapEnabledPreference, 0);
    if (kAXSBackTapEnabledDidChangeNotification)
    {
      v104 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v104, kAXSBackTapEnabledDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSBackTapEnabledDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.braille.input.connection.changed"))
  {
    _kAXSCacheBrailleInputDeviceConnected = _getBooleanPreference(kAXSBrailleInputDeviceConnectedPreference, 0);
    if (kAXSBrailleInputDeviceConnectedDidChangeNotification)
    {
      v106 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v106, kAXSBrailleInputDeviceConnectedDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSBrailleInputDeviceConnectedDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.apple.tv.simple.gestures"))
  {
    _kAXSCacheAppleTVSimpleGesturesEnabled = _getBooleanPreference(kAXSAppleTVSimpleGesturesEnabledPreference, 0);
    if (kAXSAppleTVRemoteSimpleGesturesEnabledNotification)
    {
      v107 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v107, kAXSAppleTVRemoteSimpleGesturesEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAppleTVRemoteSimpleGesturesEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.apple.tv.live.tv.buttons"))
  {
    _kAXSCacheAppleTVForceLiveTVButtonsEnabled = _getBooleanPreference(kAXSAppleTVForceLiveTVButtonsEnabledPreference, 0);
    if (kAXSAppleTVRemoteForceLiveTVButtonsEnabledNotification)
    {
      v108 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v108, kAXSAppleTVRemoteForceLiveTVButtonsEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAppleTVRemoteForceLiveTVButtonsEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AppleTVRemoteClickpadTapsForDirectionalNavigationEnabled"))
  {
    _kAXSCacheAppleTVRemoteClickpadTapsForDirectionalNavigationEnabled = _getBooleanPreference(kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledPreference, 0);
    if (kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledNotification)
    {
      v109 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v109, kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AppleTVScaledUIEnabled"))
  {
    _kAXSCacheAppleTVScaledUIEnabled = _getBooleanPreference(kAXSAppleTVScaledUIEnabledPreference, 0);
    if (kAXSAppleTVScaledUIEnabledNotification)
    {
      v110 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v110, kAXSAppleTVScaledUIEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAppleTVScaledUIEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AutomaticSubtitlesShowWhenLanguageMismatch"))
  {
    _kAXSCacheAutomaticSubtitlesShowWhenLanguageMismatch = _getBooleanPreference(kAXSAutomaticSubtitlesShowWhenLanguageMismatchPreference, 0);
    if (kAXSAutomaticSubtitlesShowWhenLanguageMismatchEnabledNotification)
    {
      v111 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v111, kAXSAutomaticSubtitlesShowWhenLanguageMismatchEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAutomaticSubtitlesShowWhenLanguageMismatchEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AutomationSubtitlesShowOnSkipBack"))
  {
    _kAXSCacheAutomaticSubtitlesShowOnSkipBack = _getBooleanPreference(kAXSAutomaticSubtitlesShowOnSkipBackPreference, 0);
    if (kAXSAutomaticSubtitlesShowOnSkipBackEnabledNotification)
    {
      v112 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v112, kAXSAutomaticSubtitlesShowOnSkipBackEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAutomaticSubtitlesShowOnSkipBackEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.AutomationSubtitlesShowWhenMuted"))
  {
    _kAXSCacheAutomaticSubtitlesShowWhenMuted = _getBooleanPreference(kAXSAutomaticSubtitlesShowWhenMutedPreference, 0);
    if (kAXSAutomaticSubtitlesShowWhenMutedEnabledNotification)
    {
      v113 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v113, kAXSAutomaticSubtitlesShowWhenMutedEnabledNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSAutomaticSubtitlesShowWhenMutedEnabledNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.show.audio.transcriptions"))
  {
    _kAXSCacheShowAudioTranscriptionsEnabled = _getBooleanPreference(kAXSShowAudioTranscriptionsEnabled, 0);
    if (kAXSShowAudioTranscriptionsChangedNotification)
    {
      v114 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v114, kAXSShowAudioTranscriptionsChangedNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSShowAudioTranscriptionsChangedNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.live.headphone.level.enabled"))
  {
    _kAXSCacheLiveHeadphoneLevelEnabled = _getBooleanPreference(kAXSLiveHeadphoneLevelEnabledPreference, 0);
    if (kAXSLiveHeadphoneLevelEnabledDidChangeNotification)
    {
      v115 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v115, kAXSLiveHeadphoneLevelEnabledDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSLiveHeadphoneLevelEnabledDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"_AXNotification_AXSEnabledSoundDetectionState"))
  {
    _kAXSCacheSoundDetectionState = _getBooleanPreference(kAXSEnabledSoundDetectionStatePreference, 0);
    if (kAXSSoundDetectionStateDidChangeNotification)
    {
      v116 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v116, kAXSSoundDetectionStateDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSSoundDetectionStateDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.watch.typetosiri.enabled"))
  {
    _kAXSCacheWatchTypeToSiriEnabled = _getBooleanPreference(kAXSWatchTypeToSiriEnabledPreference, 0);
    if (kAXSWatchTypeToSiriEnabledDidChangeNotification)
    {
      v117 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v117, kAXSWatchTypeToSiriEnabledDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        v12 = kAXSWatchTypeToSiriEnabledDidChangeNotification;
        goto LABEL_13;
      }
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.watch.quickactions.state"))
  {
    v118 = _AXSWatchQuickActionsEnabled();
    if (!CFEqual(*v3, @"com.apple.accessibility.cache.watch.quickactions.state"))
    {
      goto LABEL_423;
    }

    v221 = 1;
    v119 = _copyValuePreferenceApp(kAXSWatchQuickActionsStatePreference, 0, &v221);
    v120 = v119;
    if (v221 && v119)
    {
      v121 = CFGetTypeID(v119);
      if (v121 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v120, kCFNumberIntType, buf);
        _kAXSCacheWatchQuickActionsState = *buf;
      }
    }

    else if (!v119)
    {
LABEL_414:
      if (kAXSWatchQuickActionsStateDidChangeNotification)
      {
        v125 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v125, kAXSWatchQuickActionsStateDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          v126 = CFNotificationCenterGetDarwinNotifyCenter();
          v127 = kAXSWatchQuickActionsStateDidChangeNotification;
LABEL_422:
          CFNotificationCenterPostNotification(v126, v127, 0, 0, 1u);
          goto LABEL_423;
        }
      }

      goto LABEL_423;
    }

    CFRelease(v120);
    goto LABEL_414;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.watch.quickactions.banner.appearance"))
  {
    v221 = 1;
    v122 = _copyValuePreferenceApp(kAXSWatchQuickActionBannerAppearancePreference, 0, &v221);
    v123 = v122;
    if (v221 && v122)
    {
      v124 = CFGetTypeID(v122);
      if (v124 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v123, kCFNumberIntType, buf);
        _kAXSCacheWatchQuickActionBannerAppearance = *buf;
      }
    }

    else if (!v122)
    {
LABEL_427:
      if (kAXSWatchQuickActionBannerAppearanceDidChangeNotification)
      {
        v129 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v129, kAXSWatchQuickActionBannerAppearanceDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSWatchQuickActionBannerAppearanceDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    CFRelease(v123);
    goto LABEL_427;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.watch.control.enabled"))
  {
    v118 = _AXSWatchQuickActionsEnabled();
    if (CFEqual(*v3, @"com.apple.accessibility.cache.watch.control.enabled"))
    {
      _kAXSCacheWatchControlEnabled = _getBooleanPreference(kAXSWatchControlEnabledPreference, 0);
      if (kAXSWatchControlEnabledDidChangeNotification)
      {
        v128 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v128, kAXSWatchControlEnabledDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          v126 = CFNotificationCenterGetDarwinNotifyCenter();
          v127 = kAXSWatchControlEnabledDidChangeNotification;
          goto LABEL_422;
        }
      }
    }

LABEL_423:
    if (v118 != _AXSWatchQuickActionsEnabled())
    {
      DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
      v12 = kAXSWatchQuickActionsEnabledDidChangeNotification;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.rosebud.logging.enabled"))
  {
    _kAXSCacheRosebudLoggingEnabled = _getBooleanPreference(kAXSRosebudLoggingEnabledPreference, 0);
    goto LABEL_6;
  }

  if (!CFEqual(*v3, @"com.apple.accessibility.cache.speech.synth.options"))
  {
    if (CFEqual(*v3, @"com.apple.accessibility.cache.twice.remote.screen.enabled"))
    {
      _kAXSCacheTwiceRemoteScreenEnabled = _getBooleanPreference(kAXSTwiceRemoteScreenEnabledPreference, 0);
      if (kAXSTwiceRemoteScreenNotification)
      {
        v133 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v133, kAXSTwiceRemoteScreenNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSTwiceRemoteScreenNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.twice.remote.screen.platform"))
    {
      _kAXSCacheTwiceRemoteScreenPlatform = _getBooleanPreference(kAXSTwiceRemoteScreenPlatformPreference, 0);
      if (kAXSTwiceRemoteScreenPlatformNotification)
      {
        v134 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v134, kAXSTwiceRemoteScreenPlatformNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSTwiceRemoteScreenPlatformNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.carplay.enhance.text.legibility"))
    {
      _kAXSCacheCarPlayEnhanceTextLegibility = _getBooleanPreference(@"CarPlayEnhancedTextLegibilityEnabled", 0);
      if (kAXSCarPlayEnhanceTextLegibilityChangedNotification)
      {
        v135 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v135, kAXSCarPlayEnhanceTextLegibilityChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSCarPlayEnhanceTextLegibilityChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.pse.mitigation"))
    {
      _kAXSCachePhotosensitiveMitigationEnabled = _getBooleanPreference(@"PhotosensitiveMitigation", 0);
      if (kAXSPhotosensitiveMitigationEnabledNotification)
      {
        v136 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v136, kAXSPhotosensitiveMitigationEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPhotosensitiveMitigationEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.pse.visual.debugging"))
    {
      _kAXSCachePhotosensitiveVisualDebuggingEnabled = _getBooleanPreference(@"PhotosensitiveVisualDebugging", 0);
      if (kAXSPhotosensitiveVisualDebuggingEnabledNotification)
      {
        v137 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v137, kAXSPhotosensitiveVisualDebuggingEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPhotosensitiveVisualDebuggingEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.pse.source.copy.debugging"))
    {
      _kAXSCachePhotosensitiveSourceCopyDebuggingEnabled = _getBooleanPreference(@"PhotosensitiveSourceCopyDebugging", 0);
      if (kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification)
      {
        v138 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v138, kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPhotosensitiveSourceCopyDebuggingEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.ax") || CFEqual(*v3, @"com.apple.accessibility.cache.app.ax"))
    {
      pthread_mutex_lock(&_AXSAccessibilityEnabledLock);
      _kAXSCacheAccessibilityEnabled = _getBooleanPreference(kAXSAccessibilityEnabledPreference, 0);
      _kAXSCacheApplicationAccessibilityEnabled = _getBooleanPreference(kAXSApplicationAccessibilityEnabledPreference, 0);
      v139 = AXSupportLogCommon();
      if (os_log_type_enabled(v139, OS_LOG_TYPE_INFO))
      {
        v140 = CFEqual(*v3, @"com.apple.accessibility.cache.app.ax");
        *buf = 67109632;
        v225 = v140;
        v226 = 1024;
        v227 = _kAXSCacheAccessibilityEnabled;
        v228 = 1024;
        v229 = _kAXSCacheApplicationAccessibilityEnabled;
        _os_log_impl(&dword_186307000, v139, OS_LOG_TYPE_INFO, "Update on AX Enabled Notification, App Notification: %d, AX Enabled: %d, AX App Enabled: %d", buf, 0x14u);
      }

      pthread_mutex_unlock(&_AXSAccessibilityEnabledLock);
      if (CFEqual(*v3, @"com.apple.accessibility.cache.ax"))
      {
        v141 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v141, kAXSAccessibilityEnabledNotification, 0, 0, 1u);
        if (_AXSCurrentProcessIsWebContent_onceToken != -1)
        {
          _updateCacheSmartInvertAndRepostNotification_cold_5();
        }

        if ((_AXSCurrentProcessIsWebContent_IsWebContent & 1) == 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAccessibilityEnabledNotification;
          goto LABEL_13;
        }
      }

      else if (CFEqual(*v3, @"com.apple.accessibility.cache.app.ax"))
      {
        v143 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v143, kAXSApplicationAccessibilityEnabledNotification, 0, 0, 1u);
        if (_AXSCurrentProcessIsWebContent_onceToken != -1)
        {
          _updateCacheSmartInvertAndRepostNotification_cold_5();
        }

        if ((_AXSCurrentProcessIsWebContent_IsWebContent & 1) == 0)
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSApplicationAccessibilityEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.large.text.change"))
    {
      _kAXSCachedPreferredFontSize = _getFloatPreference(kAXSPreferredFontSizePreference, 0, 0);
      if (kAXSPreferredFontSizeChangedNotification)
      {
        v142 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v142, kAXSPreferredFontSizeChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPreferredFontSizeChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.vot.speaking.rate"))
    {
      _getFloatPreference(kAXSVoiceOverTouchSpeakingRatePreference, 0, 0);
      if (kAXSVoiceOverTouchSpeakingRateChangedNotification)
      {
        v144 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v144, kAXSVoiceOverTouchSpeakingRateChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchSpeakingRateChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.vot.volume"))
    {
      _kAXSCachedVoiceOverVolume = _getFloatPreference(kAXSVoiceOverTouchVolumePreference, 0, 0);
      if (kAXSVoiceOverTouchVolumeChangedNotification)
      {
        v145 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v145, kAXSVoiceOverTouchVolumeChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchVolumeChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.guided.access"))
    {
      _kAXSCacheGuidedAccessEnabled = _getBooleanPreference(kAXSGuidedAccessEnabledPreference, 0);
LABEL_499:
      if (kAXSGuidedAccessEnabledNotification)
      {
        v147 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v147, kAXSGuidedAccessEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSGuidedAccessEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.gax.haspasscode"))
    {
      _kAXSCacheGuidedAccessHasPasscode = _getBooleanPreference(kAXSGuidedAccessHasPasscodePreference, 0);
      if (kAXSGuidedAccessHasPasscodeNotification)
      {
        v146 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v146, kAXSGuidedAccessHasPasscodeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSGuidedAccessHasPasscodeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.guided.access.via.mdm"))
    {
      _kAXSCacheGuidedAccessEnabledByManagedConfiguration = _getBooleanPreference(kAXSGuidedAccessEnabledByManagedConfigurationPreference, 0);
      goto LABEL_499;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.zoom.speakunderfinger"))
    {
      _kAXSCacheZoomSpeakUnderFingerEnabled = _getBooleanPreference(kAXSZoomSpeakUnderFingerEnabledPreference, 0);
      if (kAXSZoomSpeakUnderFingerEnabledNotification)
      {
        v148 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v148, kAXSZoomSpeakUnderFingerEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSZoomSpeakUnderFingerEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.zoom.smoothscaling"))
    {
      _kAXSCacheZoomTouchSmoothScalingDisabled = _getBooleanPreference(kAXSZoomTouchSmoothScalingPreference, 0);
      if (kAXSZoomTouchSmoothScalingNotification)
      {
        v149 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v149, kAXSZoomTouchSmoothScalingNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSZoomTouchSmoothScalingNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.zoom.readyForObservers"))
    {
      _kAXSCacheZoomTouchReadyForObservers = _getBooleanPreference(kAXSZoomTouchReadyForObserversPreference, 0);
      if (kAXSZoomTouchReadyForObserversNotification)
      {
        v150 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v150, kAXSZoomTouchReadyForObserversNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSZoomTouchReadyForObserversNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.switch.control"))
    {
      _kAXSCacheSwitchControlEnabled = _getBooleanPreference(kAXSAssistiveTouchScannerEnabledPreference, 0);
      if (kAXSAssistiveTouchScannerEnabledNotification)
      {
        v151 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v151, kAXSAssistiveTouchScannerEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAssistiveTouchScannerEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.dwell.control"))
    {
      _kAXSCacheDwellControlEnabled = _getBooleanPreference(kAXSDwellControlEnabledPreference, 0);
      if (kAXSDwellControlEnabledNotification)
      {
        v152 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v152, kAXSDwellControlEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSDwellControlEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.clarityui"))
    {
      _kAXSCacheClarityUIEnabled = _getBooleanPreference(kAXSClarityUIEnabledPreference, 0);
      if (kAXSClarityUIEnabledNotification)
      {
        v153 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v153, kAXSClarityUIEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSClarityUIEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.command.and.control"))
    {
      _kAXSCacheCommandAndControlEnabled = _getBooleanPreference(kAXSCommandAndControlEnabledPreference, 0);
      if (kAXSCommandAndControlEnabledNotification)
      {
        v154 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v154, kAXSCommandAndControlEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSCommandAndControlEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.command.and.control.carplay"))
    {
      _kAXSCacheCommandAndControlCarPlayEnabled = _getBooleanPreference(kAXSCommandAndControlCarPlayEnabledPreference, 0);
      if (kAXSCommandAndControlCarPlayEnabledNotification)
      {
        v155 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v155, kAXSCommandAndControlCarPlayEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSCommandAndControlCarPlayEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.speak.this"))
    {
      _kAXSCacheSpeakThisEnabled = _getBooleanPreference(kAXSSpeakThisEnabledPreference, 0);
      if (kAXSSpeakThisEnabledNotification)
      {
        v156 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v156, kAXSSpeakThisEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSSpeakThisEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.speak.this.highlight.visible"))
    {
      _kAXSCacheSpeakThisHighlightVisible = _getBooleanPreference(kAXSSpeakThisHighlightVisiblePreference, 0);
      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.generic.accessibility.client"))
    {
      _kAXSCacheGenericAccessibilityClientEnabled = _getBooleanPreference(kAXSGenericAccessibilityClientEnabledPreference, 0);
      if (kAXSGenericAccessibilityClientEnabledNotification)
      {
        v157 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v157, kAXSGenericAccessibilityClientEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSGenericAccessibilityClientEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.needs.camera.cache"))
    {
      _kAXSCacheNeedsCameraOnLockScreen = _getBooleanPreference(kAXSAccessibilityNeedsCameraOnLockScreenPreference, 0);
      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.needs.microphone.cache"))
    {
      _kAXSCacheNeedsMicrophoneOnLockScreen = _getBooleanPreference(kAXSAccessibilityNeedsMicrophoneOnLockScreenPreference, 0);
      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.full.keyboard.access"))
    {
      _kAXSCacheFullKeyboardAccessEnabled = _getBooleanPreference(kAXSFullKeyboardAccessEnabledPreference, 0);
      if (kAXSFullKeyboardAccessEnabledNotification)
      {
        v158 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v158, kAXSFullKeyboardAccessEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSFullKeyboardAccessEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.full.keyboard.access.focus.ring"))
    {
      _kAXSCacheFullKeyboardAccessFocusRingEnabled = _getBooleanPreference(kAXSFullKeyboardAccessFocusRingEnabledPreference, 0);
      if (kAXSFullKeyboardAccessFocusRingEnabledNotification)
      {
        v159 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v159, kAXSFullKeyboardAccessFocusRingEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSFullKeyboardAccessFocusRingEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.full.keyboard.access.passthrough.mode"))
    {
      _kAXSCacheFullKeyboardAccessPassthroughModeEnabled = _getBooleanPreference(kAXSFullKeyboardAccessPassthroughModeEnabledPreference, 0);
      if (kAXSFullKeyboardAccessPassthroughModeEnabledNotification)
      {
        v160 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v160, kAXSFullKeyboardAccessPassthroughModeEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSFullKeyboardAccessPassthroughModeEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"_AXSCacheLiveTranscriptionNotification"))
    {
      _kAXSCacheLiveTranscriptionEnabled = _getBooleanPreference(kAXSLiveTranscriptionEnabledPreference, 0);
      if (kAXSLiveTranscriptionEnabledDidChangeNotification)
      {
        v161 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v161, kAXSLiveTranscriptionEnabledDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSLiveTranscriptionEnabledDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.ui.focus.ring"))
    {
      _kAXSCacheUIFocusRingEnabled = _getBooleanPreference(kAXSUIFocusRingEnabledPreference, 0);
      if (kAXSUIFocusRingEnabledNotification)
      {
        v162 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v162, kAXSUIFocusRingEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSUIFocusRingEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.non.blinking.cursor.status"))
    {
      _kAXSCachePrefersNonBlinkingCursorIndicator = _getBooleanPreference(kAXSPrefersNonBlinkingCursorIndicatorPreference, 0);
      if (kAXSPrefersNonBlinkingCursorIndicatorDidChangeNotification)
      {
        v163 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v163, kAXSPrefersNonBlinkingCursorIndicatorDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPrefersNonBlinkingCursorIndicatorDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.prefer.action.slider.alternative.status"))
    {
      _kAXSCachePreferActionSliderAlternative = _getBooleanPreference(kAXSPreferActionSliderAlternativePreference, 0);
      if (kAXSPreferActionSliderAlternativeDidChangeNotification)
      {
        v164 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v164, kAXSPreferActionSliderAlternativeDidChangeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPreferActionSliderAlternativeDidChangeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.prefers.horizontal.text"))
    {
      v5 = kAXSPrefersHorizontalTextPreference;
      v6 = kAXSPrefersHorizontalTextNotification;
      v7 = &_kAXSCachePrefersHorizontalText;
      goto LABEL_5;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.SpatialAudioHeadTracking.notification"))
    {
      v221 = 1;
      v165 = _copyValuePreferenceApp(@"AXSSpatialAudioHeadTracking", 0, &v221);
      v166 = v165;
      if (v221 && v165)
      {
        v167 = CFGetTypeID(v165);
        if (v167 == CFNumberGetTypeID())
        {
          *buf = 0;
          CFNumberGetValue(v166, kCFNumberIntType, buf);
          _kAXSCacheSpatialAudioHeadTracking = *buf;
        }

        goto LABEL_586;
      }

      if (v165)
      {
LABEL_586:
        CFRelease(v166);
      }

LABEL_587:
      if (kAXSAirPodSpatialAudioLockToDeviceChangedNotification)
      {
        v168 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v168, kAXSAirPodSpatialAudioLockToDeviceChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAirPodSpatialAudioLockToDeviceChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.airpod.spatial.audio.lock.to.device"))
    {
      _kAXSCacheAirPodsSpatialAudioLockToDeviceEnabled = _getBooleanPreference(@"AXSAirPodsSpatialAudioLockToDevice", 0);
      goto LABEL_587;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.pencil.extended.squeeze.range"))
    {
      _kAXSCachePencilExtendedSqueezeRangeEnabled = _getBooleanPreference(@"AXSPencilExtendedSqueezeRangeEnabledPreference", 0);
      if (kAXSPencilExtendedSqueezeRangeEnabledChangedNotification)
      {
        v169 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v169, kAXSPencilExtendedSqueezeRangeEnabledChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPencilExtendedSqueezeRangeEnabledChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.captioning"))
    {
      DarwinNotifyCenter = CFNotificationCenterGetLocalCenter();
      v12 = kAXSClosedCaptioningChangedNotification;
      goto LABEL_13;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.vo.usage.confirm"))
    {
      _kAXSCacheVoiceOverUsageConfirmation = _getBooleanPreference(kAXSVoiceOverTouchUsageConfirmedPreference, 0);
      if (kAXSVoiceOverTouchUsageConfirmedNotification)
      {
        v170 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v170, kAXSVoiceOverTouchUsageConfirmedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchUsageConfirmedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.vo.user.has.read.no.home.button.gesture"))
    {
      _kAXSCacheVOTUserHasReadNoHomeButtonGesture = _getBooleanPreference(kAXSVoiceOverTouchUserHasReadNoHomeButtonGesturePreference, 0);
      if (kAXSVoiceOverTouchUserHasReadNoHomeButtonGestureNotification)
      {
        v171 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v171, kAXSVoiceOverTouchUserHasReadNoHomeButtonGestureNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchUserHasReadNoHomeButtonGestureNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.vo.screen.curtain"))
    {
      _kAXSCacheVoiceOverScreenCurtain = _getBooleanPreference(kAXSVoiceOverTouchScreenCurtainPreference, 0);
      if (kAXSVoiceOverTouchScreenCurtainNotification)
      {
        v172 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v172, kAXSVoiceOverTouchScreenCurtainNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchScreenCurtainNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.automation.localized.lookup"))
    {
      _kAXSCacheAutomationLocalizedStringLookup = _getBooleanPreference(kAXSAutomationLocalizedStringLookupInfoEnabledPreference, 0);
      if (_kAXSAutomationLocalizedStringLookupInfoEnabledNotification)
      {
        v173 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v173, _kAXSAutomationLocalizedStringLookupInfoEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = _kAXSAutomationLocalizedStringLookupInfoEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.resting.home.button.unlock"))
    {
      _kAXSCacheRestingHomeButtonUnlockEnabled = _getBooleanPreference(kAXSRestingHomeButtonUnlockPreference, 0);
      if (kAXSRestingHomeButtonUnlockEnabledNotification)
      {
        v174 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v174, kAXSRestingHomeButtonUnlockEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSRestingHomeButtonUnlockEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.passcode.purchases"))
    {
      _kAXSCachePasscodeForPurchases = _getBooleanPreference(kAXSPasscodeForPurchasesPreference, 0);
      if (kAXSCachePasscodeForPurchasesNotification)
      {
        v175 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v175, kAXSCachePasscodeForPurchasesNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSCachePasscodeForPurchasesNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.resting.pearl.unlock"))
    {
      _kAXSCacheRestingPearlUnlockEnabled = _getBooleanPreference(kAXSRestingPearlUnlockPreference, 0);
      if (kAXSRestingPearlUnlockEnabledNotification)
      {
        v176 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v176, kAXSRestingPearlUnlockEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSRestingPearlUnlockEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.perl.auth.haptics"))
    {
      _kAXSCachePearlAuthenticationHapticsEnabled = _getBooleanPreference(kAXSPearlAuthenticationHapticsPreference, 0);
      if (kAXSPearlAuthenticationHapticsEnabledNotification)
      {
        v177 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v177, kAXSPearlAuthenticationHapticsEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSPearlAuthenticationHapticsEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.attention.awareness"))
    {
      _kAXSCacheAttentionAwarenessFeaturesEnabled = _getBooleanPreference(kAXSAttentionAwarenessFeaturesEnabledPreference, 0);
      if (kAXSAttentionAwarenessFeaturesEnabledNotification)
      {
        v178 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v178, kAXSAttentionAwarenessFeaturesEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAttentionAwarenessFeaturesEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.internal.axinspector"))
    {
      _kAXSCacheAXInspectorEnabled = _getBooleanPreference(kAXSAXInspectorPreference, 0);
      if (kAXSAXInspectorEnabledNotification)
      {
        v179 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v179, kAXSAXInspectorEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAXInspectorEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.automation.enabled"))
    {
      _kAXSCacheAutomationEnabled = _getBooleanPreference(kAXSAutomationEnabledPreference, 0);
      if (kAXSAutomationEnabledNotification)
      {
        v180 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v180, kAXSAutomationEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAutomationEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.siri.semantic.context.enabled"))
    {
      _kAXSCacheSiriSemanticContextEnabled = _getBooleanPreference(kAXSSiriSemanticContextEnabledPreference, 0);
      if (kAXSSiriSemanticContextEnabledNotification)
      {
        v181 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v181, kAXSSiriSemanticContextEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSSiriSemanticContextEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.clip.tracer.enabled"))
    {
      _kAXSCacheClipTracerAccessibilityModeEnabled = _getBooleanPreference(kAXSClipTracerAccessibilityModeEnabledPreference, 0);
      if (kAXSClipTracerAccessibilityModeNotification)
      {
        v182 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v182, kAXSClipTracerAccessibilityModeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSClipTracerAccessibilityModeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.nocturne.enabled"))
    {
      _kAXSCacheNocturneAccessibilityModeEnabled = _getBooleanPreference(kAXSNocturneAccessibilityModeEnabledPreference, 0);
      if (kAXSNocturneAccessibilityModeNotification)
      {
        v183 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v183, kAXSNocturneAccessibilityModeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSNocturneAccessibilityModeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.audit.inspection.mode"))
    {
      _kAXSCacheAuditInspectionModeModeEnabled = _getBooleanPreference(kAXSAuditInspectionModeEnabledPreference, 0);
      if (kAXSAuditInspectionModeNotification)
      {
        v184 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v184, kAXSAuditInspectionModeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAuditInspectionModeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.lower.case.keyboard.enabled"))
    {
      _kAXSCacheLowercaseKeyboardEnabled = _getBooleanPreference(kAXSLowerCaseKeyboardEnabledPreference, 0);
      if (kAXSLowercaseKeyboardDisplayPreferenceNotification)
      {
        v185 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v185, kAXSLowercaseKeyboardDisplayPreferenceNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSLowercaseKeyboardDisplayPreferenceNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.forcetouch.sensitivity.changed"))
    {
      _kAXSCachedForceTouchSensitivity = _getFloatPreference(kAXSForceTouchSensitivityPreference, 0, 0);
      if (kAXSForceTouchSensitivityChangedNotification)
      {
        v186 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v186, kAXSForceTouchSensitivityChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSForceTouchSensitivityChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.forcetouch.timing.changed"))
    {
      v221 = 1;
      v187 = _copyValuePreferenceApp(kAXSForceTouchTimingPreference, 0, &v221);
      v188 = v187;
      if (v221 && v187)
      {
        v189 = CFGetTypeID(v187);
        if (v189 == CFNumberGetTypeID())
        {
          *buf = 0;
          CFNumberGetValue(v188, kCFNumberIntType, buf);
          *&_kAXSCachedForceTouchTiming = *buf;
        }
      }

      else if (!v187)
      {
LABEL_675:
        if (kAXSForceTouchTimingChangedNotification)
        {
          v191 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v191, kAXSForceTouchTimingChangedNotification, 0, 0, 1u);
          if (_processIsResponsibleForPreferenceObserving())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v12 = kAXSForceTouchTimingChangedNotification;
            goto LABEL_13;
          }
        }

        goto LABEL_6;
      }

      CFRelease(v188);
      goto LABEL_675;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.forcetouch.enabled.changed"))
    {
      _kAXSCachedForceTouchEnabled = _getBooleanPreference(kAXSForceTouchEnabledPreference, 0);
      if (kAXSForceTouchEnabledPreferenceNotification)
      {
        v190 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v190, kAXSForceTouchEnabledPreferenceNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSForceTouchEnabledPreferenceNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.hearing.aid.ringtone.streaming"))
    {
      _kAXSCacheHearingAidRingtonStreamingEnabled = _getBooleanPreference(kAXSHearingAidRingtoneStreamingPreference, 0);
      if (kAXSHearingAidRingtoneStreamPreferenceChangedNotification)
      {
        v192 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v192, kAXSHearingAidRingtoneStreamPreferenceChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSHearingAidRingtoneStreamPreferenceChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.automation.hitpoint_warping.enabled"))
    {
      _kAXSCacheAutomationHitpointWarpingEnabled = _getBooleanPreference(kAXSAutomationHitpointWarpingEnabledPreference, 0);
      if (kAXSAutomationHitpointWarpingEnabledNotification)
      {
        v193 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v193, kAXSAutomationHitpointWarpingEnabledNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAutomationHitpointWarpingEnabledNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.AXSUSBRMDisablersNotification"))
    {
      v221 = 1;
      v194 = _copyValuePreferenceApp(kAXSUSBRMDisablersPreference, 0, &v221);
      v195 = v194;
      if (v221 && v194)
      {
        v196 = CFGetTypeID(v194);
        if (v196 == CFNumberGetTypeID())
        {
          *buf = 0;
          CFNumberGetValue(v195, kCFNumberIntType, buf);
          _kAXSCacheUSBRMDisablers = *buf;
        }
      }

      else if (!v194)
      {
LABEL_697:
        if (kAXSUSBRMDisablersChangedNotification)
        {
          v198 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v198, kAXSUSBRMDisablersChangedNotification, 0, 0, 1u);
          if (_processIsResponsibleForPreferenceObserving())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v12 = kAXSUSBRMDisablersChangedNotification;
            goto LABEL_13;
          }
        }

        goto LABEL_6;
      }

      CFRelease(v195);
      goto LABEL_697;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.loc.caption.mode.enabled"))
    {
      _kAXSCacheLocalizationCaptionModeEnabled = _getBooleanPreference(kAXSLocalizationCaptionModeEnabledPreference, 0);
      if (kAXSLocalizationCaptionModeNotification)
      {
        v197 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v197, kAXSLocalizationCaptionModeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSLocalizationCaptionModeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.softwaretty"))
    {
      _kAXSCacheSoftwareTTYEnabled = _getBooleanPreference(kAXSSoftwareTTYPreference, 0);
      if (kAXSSoftwareTTYChangedNotification)
      {
        v199 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v199, kAXSSoftwareTTYChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSSoftwareTTYChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.homebuttonassistant"))
    {
      v221 = 1;
      v200 = _copyValuePreferenceApp(kAXSHomeButtonAssistantPreference, 0, &v221);
      v201 = v200;
      if (v221 && v200)
      {
        v202 = CFGetTypeID(v200);
        if (v202 == CFNumberGetTypeID())
        {
          *buf = 0;
          CFNumberGetValue(v201, kCFNumberIntType, buf);
          _kAXSHomeButtonAssistant = *buf;
        }
      }

      else if (!v200)
      {
LABEL_715:
        if (kAXSHomeButtonAssistantChangedNotification)
        {
          v204 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v204, kAXSHomeButtonAssistantChangedNotification, 0, 0, 1u);
          if (_processIsResponsibleForPreferenceObserving())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v12 = kAXSHomeButtonAssistantChangedNotification;
            goto LABEL_13;
          }
        }

        goto LABEL_6;
      }

      CFRelease(v201);
      goto LABEL_715;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.switch.control.useextendedkeyboardpredictions"))
    {
      _kAXSCacheSwitchControlUseExtendedKeyboardPredictionsEnabled = _getBooleanPreference(kAXSSwitchControlUseExtendedKeyboardPredictionsEnabledPreference, 0);
      if (kAXSSwitchControlUseExtendedKeyboardPredictionsChangedNotification)
      {
        v203 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v203, kAXSSwitchControlUseExtendedKeyboardPredictionsChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSSwitchControlUseExtendedKeyboardPredictionsChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.assistivetouch.useextendedkeyboardpredictions"))
    {
      _kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled = _getBooleanPreference(kAXSAssistiveTouchUseExtendedKeyboardPredictionsEnabledPreference, 0);
      if (kAXSAssistiveTouchUseExtendedKeyboardPredictionsChangedNotification)
      {
        v205 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v205, kAXSAssistiveTouchUseExtendedKeyboardPredictionsChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSAssistiveTouchUseExtendedKeyboardPredictionsChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.secure.intent.provider"))
    {
      v221 = 1;
      v206 = _copyValuePreferenceApp(kAXSSecureIntentProviderPreference, 0, &v221);
      v207 = v206;
      if (v221 && v206)
      {
        v208 = CFGetTypeID(v206);
        if (v208 == CFNumberGetTypeID())
        {
          *buf = 0;
          CFNumberGetValue(v207, kCFNumberIntType, buf);
          _kAXSCacheSecureIntentProviderPreference = *buf;
        }
      }

      else if (!v206)
      {
LABEL_731:
        if (kAXSSecureIntentProviderChangedNotification)
        {
          v209 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v209, kAXSSecureIntentProviderChangedNotification, 0, 0, 1u);
          if (_processIsResponsibleForPreferenceObserving())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v12 = kAXSSecureIntentProviderChangedNotification;
            goto LABEL_13;
          }
        }

        goto LABEL_6;
      }

      CFRelease(v207);
      goto LABEL_731;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.hearing.aid.paired"))
    {
      _kAXSCacheHearingAidPaired = _getBooleanPreference(kAXSHearingAidPairedPreference, 0);
      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.performance.testing.mode"))
    {
      _kAXSCacheInPerformanceTestMode = _getBooleanPreference(kAXSInPerformanceTestModePreference, 0);
      if (kAXSInPerformanceTestModeNotification)
      {
        v210 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v210, kAXSInPerformanceTestModeNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSInPerformanceTestModeNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (CFEqual(*v3, @"com.apple.accessibility.cache.FaceTimeCaptions"))
    {
      _kAXSCacheFaceTimeCaptionsEnabled = _getBooleanPreference(kAXSFaceTimeCaptionsPreference, 0);
      if (kAXFaceTimeCaptionsChangedNotification)
      {
        v211 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v211, kAXFaceTimeCaptionsChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXFaceTimeCaptionsChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    if (!CFEqual(*v3, @"com.apple.accessibility.cache.vot.media.ducking.mode"))
    {
      if (CFEqual(*v3, @"com.apple.accessibility.cache.vo.usage.tutorial.confirm"))
      {
        _kAXSCacheVoiceOverTutorialUsageConfirmation = _getBooleanPreference(kAXSVoiceOverTouchTutorialUsageConfirmedPreference, 0);
        if (kAXSVoiceOverTouchTutorialUsageConfirmedNotification)
        {
          v215 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v215, kAXSVoiceOverTouchTutorialUsageConfirmedNotification, 0, 0, 1u);
          if (_processIsResponsibleForPreferenceObserving())
          {
            DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
            v12 = kAXSVoiceOverTouchTutorialUsageConfirmedNotification;
            goto LABEL_13;
          }
        }
      }

      goto LABEL_6;
    }

    v221 = 1;
    v212 = _copyValuePreferenceApp(kAXSVoiceOverTouchMediaDuckingModePreference, 0, &v221);
    v213 = v212;
    if (v221 && v212)
    {
      v214 = CFGetTypeID(v212);
      if (v214 == CFNumberGetTypeID())
      {
        *buf = 0;
        CFNumberGetValue(v213, kCFNumberIntType, buf);
        _kAXSCachedVoiceOverMediaDuckingMode = *buf;
      }
    }

    else if (!v212)
    {
LABEL_753:
      if (kAXSVoiceOverTouchMediaDuckingModeChangedNotification)
      {
        v216 = CFNotificationCenterGetLocalCenter();
        CFNotificationCenterPostNotification(v216, kAXSVoiceOverTouchMediaDuckingModeChangedNotification, 0, 0, 1u);
        if (_processIsResponsibleForPreferenceObserving())
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          v12 = kAXSVoiceOverTouchMediaDuckingModeChangedNotification;
          goto LABEL_13;
        }
      }

      goto LABEL_6;
    }

    CFRelease(v213);
    goto LABEL_753;
  }

  v221 = 1;
  v130 = _copyValuePreferenceApp(kAXSSpeechSynthesisOptionsPreference, 0, &v221);
  v131 = v130;
  if (v221 && v130)
  {
    v132 = CFGetTypeID(v130);
    if (v132 == CFNumberGetTypeID())
    {
      *buf = 0;
      CFNumberGetValue(v131, kCFNumberIntType, buf);
      _kAXSCacheSpeechSynthesisOptions = *buf;
    }
  }

  else if (!v130)
  {
    goto LABEL_6;
  }

  CFRelease(v131);
LABEL_6:
  if (CFEqual(*v3, @"com.apple.accessibility.cache.resting.home.button.unlock"))
  {
    v8 = AXSupportLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v225 = _kAXSCacheRestingHomeButtonUnlockEnabled;
      v9 = "Received update for resting unlock: %d";
LABEL_17:
      _os_log_impl(&dword_186307000, v8, OS_LOG_TYPE_INFO, v9, buf, 8u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.automation.enabled"))
  {
    v8 = AXSupportLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v225 = _kAXSCacheAutomationEnabled;
      v9 = "Received update for automation: %d";
      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.HasActive2DBrailleDisplay"))
  {
    _AXSVoiceOverTouchUpdateActive2DBrailleDisplays();
    goto LABEL_19;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.speech.settings.disabled.by.mc"))
  {
    _kAXSCacheSpeechSettingsDisabledByManagedConfiguration = _getBooleanPreference(kAXSSpeechSettingsDisabledByManagedConfigurationPreference, 0);
    v217 = 0u;
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v222[0] = kAXSQuickSpeakEnabledNotification;
    v222[1] = kAXSSpeakThisEnabledNotification;
    v222[2] = kAXSWordFeedbackEnabledNotification;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v222 count:{3, 0}];
    v15 = [v8 countByEnumeratingWithState:&v217 objects:v223 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v218;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v218 != v17)
          {
            objc_enumerationMutation(v8);
          }

          v19 = *(*(&v217 + 1) + 8 * i);
          v20 = CFNotificationCenterGetLocalCenter();
          CFNotificationCenterPostNotification(v20, v19, 0, 0, 1u);
          v21 = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterPostNotification(v21, v19, 0, 0, 1u);
        }

        v16 = [v8 countByEnumeratingWithState:&v217 objects:v223 count:16];
      }

      while (v16);
    }

    goto LABEL_18;
  }

  if (CFEqual(*v3, @"com.apple.accessibility.cache.increase.brightness.floor.enabled"))
  {
    _kAXSCacheIncreaseBrightnessFloorEnabled = _getBooleanPreference(kAXSIncreaseBrightnessFloorEnabledPreference, 0);
    if (kAXSIncreaseBrightnessFloorEnabledDidChangeNotification)
    {
      v23 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v23, kAXSIncreaseBrightnessFloorEnabledDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        v24 = CFNotificationCenterGetDarwinNotifyCenter();
        v25 = kAXSIncreaseBrightnessFloorEnabledDidChangeNotification;
LABEL_59:
        CFNotificationCenterPostNotification(v24, v25, 0, 0, 1u);
      }
    }
  }

  else if (CFEqual(*v3, @"com.apple.accessibility.cache.mix.to.uplink.notification"))
  {
    _kAXSCacheAllowsMixToUplink = _getBooleanPreference(@"AXSAllowsMixToUplinkPreference", 0);
    if (kAXSAllowsMixToUplinkDidChangeNotification)
    {
      v27 = CFNotificationCenterGetLocalCenter();
      CFNotificationCenterPostNotification(v27, kAXSAllowsMixToUplinkDidChangeNotification, 0, 0, 1u);
      if (_processIsResponsibleForPreferenceObserving())
      {
        v24 = CFNotificationCenterGetDarwinNotifyCenter();
        v25 = kAXSAllowsMixToUplinkDidChangeNotification;
        goto LABEL_59;
      }
    }
  }

LABEL_19:
  if (CFEqual(*v3, @"com.apple.accessibility.cache.ast") || CFEqual(*v3, @"com.apple.accessibility.cache.switch.control") || CFEqual(*v3, @"com.apple.accessibility.cache.dwell.control") || CFEqual(*v3, @"com.apple.accessibility.cache.dwell.keyboardcontinuouspath") || CFEqual(*v3, @"com.apple.accessibility.cache.switch.control.keyboardcontinuouspath"))
  {
    _AXSUpdateAccessibilityKeyboardContinuousPathEnabled(1);
  }

  v13 = *MEMORY[0x1E69E9840];
}

BOOL _AXHasBooleanEntitlement(const __CFString *a1)
{
  CFStringGetCStringPtr(a1, 0x8000100u);
  v1 = xpc_copy_entitlement_for_self();
  v2 = v1;
  if (v1)
  {
    value = xpc_BOOL_get_value(v1);
  }

  else
  {
    value = 0;
  }

  return value;
}

uint64_t _AXSHearingAidComplianceEnabled()
{
  if (_AXSHearingAidComplianceEnabled_onceToken != -1)
  {
    _AXSHearingAidComplianceEnabled_cold_1();
  }

  return _kAXSCacheHearingAidComplianceEnabled;
}

uint64_t _AXSMonoAudioEnabled()
{
  if (_AXSMonoAudioEnabled_onceToken != -1)
  {
    _AXSAccessibilityCopyiTunesPreference_cold_2();
  }

  return _kAXSCacheMonoAudioEnabled;
}

uint64_t _AXSEarpieceNoiseCancellationEnabled()
{
  if (_AXSEarpieceNoiseCancellationEnabled_onceToken != -1)
  {
    _AXSEarpieceNoiseCancellationEnabled_cold_1();
  }

  return _kAXSCacheEarpieceNoiseCancellation;
}

uint64_t _AXSVisualAlertEnabled()
{
  if (_AXSVisualAlertEnabled_onceToken != -1)
  {
    _AXSVisualAlertEnabled_cold_1();
  }

  return _kAXSCacheVisualAlertEnabled;
}

const __CFBoolean *_AXSClosedCaptionsEnabled()
{
  if (_AXSClosedCaptionsEnabled_onceToken != -1)
  {
    _AXSClosedCaptionsEnabled_cold_1();
  }

  result = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
  if (result)
  {
    v1 = result;
    Value = CFBooleanGetValue(result);
    CFRelease(v1);
    return Value;
  }

  return result;
}

uint64_t _AXSExtendedKeyboardPredictionsEnabled()
{
  if (_AXSAssistiveTouchScannerEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_3();
  }

  if (!_kAXSCacheSwitchControlEnabled)
  {
    goto LABEL_10;
  }

  if (_AXSSwitchControlExtendedKeyboardPredictionsEnabled_onceToken != -1)
  {
    _AXSExtendedKeyboardPredictionsEnabled_cold_2();
  }

  if (_kAXSCacheSwitchControlUseExtendedKeyboardPredictionsEnabled)
  {
    if (_AXSAccessibilityKeyboardContinuousPathEnabled_onceToken != -1)
    {
      _AXSExtendedKeyboardPredictionsEnabled_cold_3();
    }

    v0 = _kAXSCacheAccessibilityKeyboardContinuousPathEnabled == 0;
  }

  else
  {
LABEL_10:
    v0 = 0;
  }

  if (_AXSAssistiveTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_2();
  }

  v1 = _kAXSAssistiveTouchEnabledCache;
  if (_kAXSAssistiveTouchEnabledCache)
  {
    if (_AXSAssistiveTouchExtendedKeyboardPredictionsEnabled_onceToken != -1)
    {
      _AXSExtendedKeyboardPredictionsEnabled_cold_5();
    }

    v1 = _kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled;
    if (_kAXSCacheAssistiveTouchUseExtendedKeyboardPredictionsEnabled)
    {
      if (_AXSAccessibilityKeyboardContinuousPathEnabled_onceToken != -1)
      {
        _AXSExtendedKeyboardPredictionsEnabled_cold_3();
      }

      v1 = _kAXSCacheAccessibilityKeyboardContinuousPathEnabled == 0;
    }
  }

  return (v0 | v1) & 1;
}

uint64_t _AXSAccessibilityKeyboardContinuousPathEnabled()
{
  if (_AXSAccessibilityKeyboardContinuousPathEnabled_onceToken != -1)
  {
    _AXSExtendedKeyboardPredictionsEnabled_cold_3();
  }

  return _kAXSCacheAccessibilityKeyboardContinuousPathEnabled;
}

uint64_t _AXSAssistiveTouchEnabled()
{
  if (_AXSAssistiveTouchEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_2();
  }

  return _kAXSAssistiveTouchEnabledCache;
}

CFStringRef AXCPCopySharedResourcesPreferencesDomainForDomain(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = AXCPSharedResourcesDirectory();
  return CFStringCreateWithFormat(v2, 0, @"%@/Library/Preferences/%@", v3, a1);
}

uint64_t _AXSVoiceOverTouchShouldRouteToSpeakerWithProximity()
{
  v1 = 0;
  LODWORD(result) = _getBooleanPreference(kAXSVoiceOverTouchShouldRouteToSpeakerWithProximityPreference, &v1);
  if (v1)
  {
    return result;
  }

  else
  {
    return 1;
  }
}

uint64_t _AXSCarPlayEnhanceTextLegibilityEnabled()
{
  if (_AXSCarPlayEnhanceTextLegibilityEnabled_onceToken != -1)
  {
    _AXSCarPlayEnhanceTextLegibilityEnabled_cold_1();
  }

  return _kAXSCacheCarPlayEnhanceTextLegibility;
}

id AXCBundle()
{
  v0 = AXCBundle_CUBundle;
  if (!AXCBundle_CUBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.accessibility.AXCoreUtilities"];
    v2 = AXCBundle_CUBundle;
    AXCBundle_CUBundle = v1;

    v0 = AXCBundle_CUBundle;
  }

  return v0;
}

id AXCLanguageToCanonicalPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToLocale" ofType:@"plist"];

  return v1;
}

id AXCLanguageFallbackPlistPath()
{
  v0 = AXCBundle();
  v1 = [v0 pathForResource:@"AXLanguageToFallback" ofType:@"plist"];

  return v1;
}

id AXCLanguageToLocales()
{
  if (AXCLanguageToLocales_onceToken != -1)
  {
    AXCLanguageToLocales_cold_1();
  }

  v1 = AXCLanguageToLocales_LanguageToLangLocale;

  return v1;
}

void __AXCLanguageToLocales_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageToCanonicalPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToLocales_LanguageToLangLocale;
  AXCLanguageToLocales_LanguageToLangLocale = v1;
}

id AXCLanguageToFallbacks()
{
  if (AXCLanguageToFallbacks_onceToken != -1)
  {
    AXCLanguageToFallbacks_cold_1();
  }

  v1 = AXCLanguageToFallbacks_LanguageToFallback;

  return v1;
}

void __AXCLanguageToFallbacks_block_invoke()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v3 = AXCLanguageFallbackPlistPath();
  v1 = [v0 initWithContentsOfFile:v3];
  v2 = AXCLanguageToFallbacks_LanguageToFallback;
  AXCLanguageToFallbacks_LanguageToFallback = v1;
}

void AXBackgroundLog(void *a1, os_log_type_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (os_log_type_enabled(v5, a2))
  {
    if (_AXBackgroundLoggingQueue_onceToken != -1)
    {
      AXBackgroundLog_cold_1();
    }

    v7 = _AXBackgroundLoggingQueue__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __AXBackgroundLog_block_invoke;
    block[3] = &unk_1E6F45418;
    v10 = v6;
    v9 = v5;
    v11 = a2;
    dispatch_async(v7, block);
  }
}

id AXRuntimeLogCommon()
{
  if (AXRuntimeLogCommon_onceToken != -1)
  {
    AXRuntimeLogCommon_cold_1();
  }

  v1 = AXRuntimeLogCommon___logObj;

  return v1;
}

uint64_t __AXRuntimeLogCommon_block_invoke()
{
  AXRuntimeLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogPID()
{
  if (AXRuntimeLogPID_onceToken != -1)
  {
    AXRuntimeLogPID_cold_1();
  }

  v1 = AXRuntimeLogPID___logObj;

  return v1;
}

uint64_t __AXRuntimeLogPID_block_invoke()
{
  AXRuntimeLogPID___logObj = os_log_create("com.apple.Accessibility", "AXRuntimePID");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogNotifications()
{
  if (AXRuntimeLogNotifications_onceToken != -1)
  {
    AXRuntimeLogNotifications_cold_1();
  }

  v1 = AXRuntimeLogNotifications___logObj;

  return v1;
}

uint64_t __AXRuntimeLogNotifications_block_invoke()
{
  AXRuntimeLogNotifications___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogSerialization()
{
  if (AXRuntimeLogSerialization_onceToken != -1)
  {
    AXRuntimeLogSerialization_cold_1();
  }

  v1 = AXRuntimeLogSerialization___logObj;

  return v1;
}

uint64_t __AXRuntimeLogSerialization_block_invoke()
{
  AXRuntimeLogSerialization___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeSerialization");

  return MEMORY[0x1EEE66BB8]();
}

id AXRuntimeLogElementFetcher()
{
  if (AXRuntimeLogElementFetcher_onceToken != -1)
  {
    AXRuntimeLogElementFetcher_cold_1();
  }

  v1 = AXRuntimeLogElementFetcher___logObj;

  return v1;
}

uint64_t __AXRuntimeLogElementFetcher_block_invoke()
{
  AXRuntimeLogElementFetcher___logObj = os_log_create("com.apple.Accessibility", "AXRuntimeElementFetcher");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogCommon()
{
  if (AXTTSLogCommon_onceToken != -1)
  {
    AXTTSLogCommon_cold_1();
  }

  v1 = AXTTSLogCommon___logObj;

  return v1;
}

uint64_t __AXTTSLogCommon_block_invoke()
{
  AXTTSLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXTTSCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogRange()
{
  if (AXTTSLogRange_onceToken != -1)
  {
    AXTTSLogRange_cold_1();
  }

  v1 = AXTTSLogRange___logObj;

  return v1;
}

uint64_t __AXTTSLogRange_block_invoke()
{
  AXTTSLogRange___logObj = os_log_create("com.apple.Accessibility", "AXTTSRange");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogVoiceBank()
{
  if (AXTTSLogVoiceBank_onceToken != -1)
  {
    AXTTSLogVoiceBank_cold_1();
  }

  v1 = AXTTSLogVoiceBank___logObj;

  return v1;
}

uint64_t __AXTTSLogVoiceBank_block_invoke()
{
  AXTTSLogVoiceBank___logObj = os_log_create("com.apple.Accessibility", "TTSVB");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceManager()
{
  if (AXTTSLogResourceManager_onceToken != -1)
  {
    AXTTSLogResourceManager_cold_1();
  }

  v1 = AXTTSLogResourceManager___logObj;

  return v1;
}

uint64_t __AXTTSLogResourceManager_block_invoke()
{
  AXTTSLogResourceManager___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogResourceMigration()
{
  if (AXTTSLogResourceMigration_onceToken != -1)
  {
    AXTTSLogResourceMigration_cold_1();
  }

  v1 = AXTTSLogResourceMigration___logObj;

  return v1;
}

uint64_t __AXTTSLogResourceMigration_block_invoke()
{
  AXTTSLogResourceMigration___logObj = os_log_create("com.apple.Accessibility", "AXTTSResourceMigration");

  return MEMORY[0x1EEE66BB8]();
}

id AXTTSLogKona()
{
  if (AXTTSLogKona_onceToken != -1)
  {
    AXTTSLogKona_cold_1();
  }

  v1 = AXTTSLogKona___logObj;

  return v1;
}

uint64_t __AXTTSLogKona_block_invoke()
{
  AXTTSLogKona___logObj = os_log_create("com.apple.Accessibility", "AXTTSKona");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEventTap()
{
  if (AXLogEventTap_onceToken != -1)
  {
    AXLogEventTap_cold_1();
  }

  v1 = AXLogEventTap___logObj;

  return v1;
}

uint64_t __AXLogEventTap_block_invoke()
{
  AXLogEventTap___logObj = os_log_create("com.apple.Accessibility", "AXEventTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogIPC()
{
  if (AXLogIPC_onceToken != -1)
  {
    AXLogIPC_cold_1();
  }

  v1 = AXLogIPC___logObj;

  return v1;
}

uint64_t __AXLogIPC_block_invoke()
{
  AXLogIPC___logObj = os_log_create("com.apple.Accessibility", "AXIPC");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplay()
{
  if (AXLogDisplay_onceToken != -1)
  {
    AXLogDisplay_cold_1();
  }

  v1 = AXLogDisplay___logObj;

  return v1;
}

uint64_t __AXLogDisplay_block_invoke()
{
  AXLogDisplay___logObj = os_log_create("com.apple.Accessibility", "AXDisplay");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUserInterfaceService()
{
  if (AXLogUserInterfaceService_onceToken != -1)
  {
    AXLogUserInterfaceService_cold_1();
  }

  v1 = AXLogUserInterfaceService___logObj;

  return v1;
}

uint64_t __AXLogUserInterfaceService_block_invoke()
{
  AXLogUserInterfaceService___logObj = os_log_create("com.apple.Accessibility", "AXUserInterfaceService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIViewService()
{
  if (AXLogUIViewService_onceToken != -1)
  {
    AXLogUIViewService_cold_1();
  }

  v1 = AXLogUIViewService___logObj;

  return v1;
}

uint64_t __AXLogUIViewService_block_invoke()
{
  AXLogUIViewService___logObj = os_log_create("com.apple.Accessibility", "AXUIViewService");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrokenHomeButton()
{
  if (AXLogBrokenHomeButton_onceToken != -1)
  {
    AXLogBrokenHomeButton_cold_1();
  }

  v1 = AXLogBrokenHomeButton___logObj;

  return v1;
}

uint64_t __AXLogBrokenHomeButton_block_invoke()
{
  AXLogBrokenHomeButton___logObj = os_log_create("com.apple.Accessibility", "AXBrokenHomeButton");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMIDI()
{
  if (AXLogMIDI_onceToken != -1)
  {
    AXLogMIDI_cold_1();
  }

  v1 = AXLogMIDI___logObj;

  return v1;
}

uint64_t __AXLogMIDI_block_invoke()
{
  AXLogMIDI___logObj = os_log_create("com.apple.Accessibility", "AXMIDI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDataMigrator()
{
  if (AXLogDataMigrator_onceToken != -1)
  {
    AXLogDataMigrator_cold_1();
  }

  v1 = AXLogDataMigrator___logObj;

  return v1;
}

uint64_t __AXLogDataMigrator_block_invoke()
{
  AXLogDataMigrator___logObj = os_log_create("com.apple.Accessibility", "AXDataMigrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDragging()
{
  if (AXLogDragging_onceToken != -1)
  {
    AXLogDragging_cold_1();
  }

  v1 = AXLogDragging___logObj;

  return v1;
}

uint64_t __AXLogDragging_block_invoke()
{
  AXLogDragging___logObj = os_log_create("com.apple.Accessibility", "AXDragging");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSettings()
{
  if (AXLogSettings_onceToken != -1)
  {
    AXLogSettings_cold_1();
  }

  v1 = AXLogSettings___logObj;

  return v1;
}

uint64_t __AXLogSettings_block_invoke()
{
  AXLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSiriShortcuts()
{
  if (AXLogSiriShortcuts_onceToken != -1)
  {
    AXLogSiriShortcuts_cold_1();
  }

  v1 = AXLogSiriShortcuts___logObj;

  return v1;
}

uint64_t __AXLogSiriShortcuts_block_invoke()
{
  AXLogSiriShortcuts___logObj = os_log_create("com.apple.Accessibility", "AXSiriShortcuts");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssertions()
{
  if (AXLogAssertions_onceToken != -1)
  {
    AXLogAssertions_cold_1();
  }

  v1 = AXLogAssertions___logObj;

  return v1;
}

uint64_t __AXLogAssertions_block_invoke()
{
  AXLogAssertions___logObj = os_log_create("com.apple.Accessibility", "AXAssertions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTimeProfile()
{
  if (AXLogTimeProfile_onceToken != -1)
  {
    AXLogTimeProfile_cold_1();
  }

  v1 = AXLogTimeProfile___logObj;

  return v1;
}

uint64_t __AXLogTimeProfile_block_invoke()
{
  AXLogTimeProfile___logObj = os_log_create("com.apple.Accessibility", "AXTimeProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMemoryProfile()
{
  if (AXLogMemoryProfile_onceToken != -1)
  {
    AXLogMemoryProfile_cold_1();
  }

  v1 = AXLogMemoryProfile___logObj;

  return v1;
}

uint64_t __AXLogMemoryProfile_block_invoke()
{
  AXLogMemoryProfile___logObj = os_log_create("com.apple.Accessibility", "AXMemoryProfile");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlass()
{
  if (AXLogLookingGlass_onceToken != -1)
  {
    AXLogLookingGlass_cold_1();
  }

  v1 = AXLogLookingGlass___logObj;

  return v1;
}

uint64_t __AXLogLookingGlass_block_invoke()
{
  AXLogLookingGlass___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLookingGlassUI()
{
  if (AXLogLookingGlassUI_onceToken != -1)
  {
    AXLogLookingGlassUI_cold_1();
  }

  v1 = AXLogLookingGlassUI___logObj;

  return v1;
}

uint64_t __AXLogLookingGlassUI_block_invoke()
{
  AXLogLookingGlassUI___logObj = os_log_create("com.apple.Accessibility", "AXLookingGlassUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAccessories()
{
  if (AXLogAccessories_onceToken != -1)
  {
    AXLogAccessories_cold_1();
  }

  v1 = AXLogAccessories___logObj;

  return v1;
}

uint64_t __AXLogAccessories_block_invoke()
{
  AXLogAccessories___logObj = os_log_create("com.apple.Accessibility", "AXAccessories");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUI()
{
  if (AXLogUI_onceToken != -1)
  {
    AXLogUI_cold_1();
  }

  v1 = AXLogUI___logObj;

  return v1;
}

uint64_t __AXLogUI_block_invoke()
{
  AXLogUI___logObj = os_log_create("com.apple.Accessibility", "AXUI");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogManager()
{
  if (AXLogManager_onceToken != -1)
  {
    AXLogManager_cold_1();
  }

  v1 = AXLogManager___logObj;

  return v1;
}

uint64_t __AXLogManager_block_invoke()
{
  AXLogManager___logObj = os_log_create("com.apple.Accessibility", "AXManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackboardServer()
{
  if (AXLogBackboardServer_onceToken != -1)
  {
    AXLogBackboardServer_cold_1();
  }

  v1 = AXLogBackboardServer___logObj;

  return v1;
}

uint64_t __AXLogBackboardServer_block_invoke()
{
  AXLogBackboardServer___logObj = os_log_create("com.apple.Accessibility", "AXBackboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpringboardServer()
{
  if (AXLogSpringboardServer_onceToken != -1)
  {
    AXLogSpringboardServer_cold_1();
  }

  v1 = AXLogSpringboardServer___logObj;

  return v1;
}

uint64_t __AXLogSpringboardServer_block_invoke()
{
  AXLogSpringboardServer___logObj = os_log_create("com.apple.Accessibility", "AXSpringboardServer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSystemApp()
{
  if (AXLogSystemApp_onceToken != -1)
  {
    AXLogSystemApp_cold_1();
  }

  v1 = AXLogSystemApp___logObj;

  return v1;
}

uint64_t __AXLogSystemApp_block_invoke()
{
  AXLogSystemApp___logObj = os_log_create("com.apple.Accessibility", "AXSystemApp");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPhysicalInteraction()
{
  if (AXLogPhysicalInteraction_onceToken != -1)
  {
    AXLogPhysicalInteraction_cold_1();
  }

  v1 = AXLogPhysicalInteraction___logObj;

  return v1;
}

uint64_t __AXLogPhysicalInteraction_block_invoke()
{
  AXLogPhysicalInteraction___logObj = os_log_create("com.apple.Accessibility", "AXPhysicalInteraction");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudioRouting()
{
  if (AXLogAudioRouting_onceToken != -1)
  {
    AXLogAudioRouting_cold_1();
  }

  v1 = AXLogAudioRouting___logObj;

  return v1;
}

uint64_t __AXLogAudioRouting_block_invoke()
{
  AXLogAudioRouting___logObj = os_log_create("com.apple.Accessibility", "AXAudioRouting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPointerControl()
{
  if (AXLogPointerControl_onceToken != -1)
  {
    AXLogPointerControl_cold_1();
  }

  v1 = AXLogPointerControl___logObj;

  return v1;
}

uint64_t __AXLogPointerControl_block_invoke()
{
  AXLogPointerControl___logObj = os_log_create("com.apple.Accessibility", "AXPointerControl");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogCommon()
{
  if (ASTLogCommon_onceToken != -1)
  {
    ASTLogCommon_cold_1();
  }

  v1 = ASTLogCommon___logObj;

  return v1;
}

uint64_t __ASTLogCommon_block_invoke()
{
  ASTLogCommon___logObj = os_log_create("com.apple.Accessibility", "ASTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogMouse()
{
  if (ASTLogMouse_onceToken != -1)
  {
    ASTLogMouse_cold_1();
  }

  v1 = ASTLogMouse___logObj;

  return v1;
}

uint64_t __ASTLogMouse_block_invoke()
{
  ASTLogMouse___logObj = os_log_create("com.apple.Accessibility", "ASTMouse");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogEventManagement()
{
  if (ASTLogEventManagement_onceToken != -1)
  {
    ASTLogEventManagement_cold_1();
  }

  v1 = ASTLogEventManagement___logObj;

  return v1;
}

uint64_t __ASTLogEventManagement_block_invoke()
{
  ASTLogEventManagement___logObj = os_log_create("com.apple.Accessibility", "ASTEventManagement");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRocker()
{
  if (ASTLogRocker_onceToken != -1)
  {
    ASTLogRocker_cold_1();
  }

  v1 = ASTLogRocker___logObj;

  return v1;
}

uint64_t __ASTLogRocker_block_invoke()
{
  ASTLogRocker___logObj = os_log_create("com.apple.Accessibility", "ASTRocker");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogSystemPointerController()
{
  if (ASTLogSystemPointerController_onceToken != -1)
  {
    ASTLogSystemPointerController_cold_1();
  }

  v1 = ASTLogSystemPointerController___logObj;

  return v1;
}

uint64_t __ASTLogSystemPointerController_block_invoke()
{
  ASTLogSystemPointerController___logObj = os_log_create("com.apple.Accessibility", "ASTSystemPointerController");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogRuntimeManager()
{
  if (ASTLogRuntimeManager_onceToken != -1)
  {
    ASTLogRuntimeManager_cold_1();
  }

  v1 = ASTLogRuntimeManager___logObj;

  return v1;
}

uint64_t __ASTLogRuntimeManager_block_invoke()
{
  ASTLogRuntimeManager___logObj = os_log_create("com.apple.Accessibility", "ASTRuntimeManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDeviceManager()
{
  if (ASTLogDeviceManager_onceToken != -1)
  {
    ASTLogDeviceManager_cold_1();
  }

  v1 = ASTLogDeviceManager___logObj;

  return v1;
}

uint64_t __ASTLogDeviceManager_block_invoke()
{
  ASTLogDeviceManager___logObj = os_log_create("com.apple.Accessibility", "ASTDeviceManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogDisplayManager()
{
  if (ASTLogDisplayManager_onceToken != -1)
  {
    ASTLogDisplayManager_cold_1();
  }

  v1 = ASTLogDisplayManager___logObj;

  return v1;
}

uint64_t __ASTLogDisplayManager_block_invoke()
{
  ASTLogDisplayManager___logObj = os_log_create("com.apple.Accessibility", "ASTDisplayManager");

  return MEMORY[0x1EEE66BB8]();
}

id ASTLogKickStart()
{
  if (ASTLogKickStart_onceToken != -1)
  {
    ASTLogKickStart_cold_1();
  }

  v1 = ASTLogKickStart___logObj;

  return v1;
}

uint64_t __ASTLogKickStart_block_invoke()
{
  ASTLogKickStart___logObj = os_log_create("com.apple.Accessibility", "ASTKickStart");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAggregate()
{
  if (AXLogAggregate_onceToken != -1)
  {
    AXLogAggregate_cold_1();
  }

  v1 = AXLogAggregate___logObj;

  return v1;
}

uint64_t __AXLogAggregate_block_invoke()
{
  AXLogAggregate___logObj = os_log_create("com.apple.Accessibility", "AXAggregate");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUIA()
{
  if (AXLogUIA_onceToken != -1)
  {
    AXLogUIA_cold_1();
  }

  v1 = AXLogUIA___logObj;

  return v1;
}

uint64_t __AXLogUIA_block_invoke()
{
  AXLogUIA___logObj = os_log_create("com.apple.Accessibility", "AXUIA");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLocCaptionPanel()
{
  if (AXLogLocCaptionPanel_onceToken != -1)
  {
    AXLogLocCaptionPanel_cold_1();
  }

  v1 = AXLogLocCaptionPanel___logObj;

  return v1;
}

uint64_t __AXLogLocCaptionPanel_block_invoke()
{
  AXLogLocCaptionPanel___logObj = os_log_create("com.apple.Accessibility", "AXLocCaptionPanel");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogContextKit()
{
  if (AXLogContextKit_onceToken != -1)
  {
    AXLogContextKit_cold_1();
  }

  v1 = AXLogContextKit___logObj;

  return v1;
}

uint64_t __AXLogContextKit_block_invoke()
{
  AXLogContextKit___logObj = os_log_create("com.apple.Accessibility", "AXContextKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPronunciations()
{
  if (AXLogPronunciations_onceToken != -1)
  {
    AXLogPronunciations_cold_1();
  }

  v1 = AXLogPronunciations___logObj;

  return v1;
}

uint64_t __AXLogPronunciations_block_invoke()
{
  AXLogPronunciations___logObj = os_log_create("com.apple.Accessibility", "AXPronunciations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBrailleHW()
{
  if (AXLogBrailleHW_onceToken != -1)
  {
    AXLogBrailleHW_cold_1();
  }

  v1 = AXLogBrailleHW___logObj;

  return v1;
}

uint64_t __AXLogBrailleHW_block_invoke()
{
  AXLogBrailleHW___logObj = os_log_create("com.apple.Accessibility", "AXBrailleHW");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBluetooth()
{
  if (AXLogBluetooth_onceToken != -1)
  {
    AXLogBluetooth_cold_1();
  }

  v1 = AXLogBluetooth___logObj;

  return v1;
}

uint64_t __AXLogBluetooth_block_invoke()
{
  AXLogBluetooth___logObj = os_log_create("com.apple.Accessibility", "AXBluetooth");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFocusEngine()
{
  if (AXLogFocusEngine_onceToken != -1)
  {
    AXLogFocusEngine_cold_1();
  }

  v1 = AXLogFocusEngine___logObj;

  return v1;
}

uint64_t __AXLogFocusEngine_block_invoke()
{
  AXLogFocusEngine___logObj = os_log_create("com.apple.Accessibility", "AXFocusEngine");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundBoard()
{
  if (AXLogSoundBoard_onceToken != -1)
  {
    AXLogSoundBoard_cold_1();
  }

  v1 = AXLogSoundBoard___logObj;

  return v1;
}

uint64_t __AXLogSoundBoard_block_invoke()
{
  AXLogSoundBoard___logObj = os_log_create("com.apple.Accessibility", "AXSoundBoard");

  return MEMORY[0x1EEE66BB8]();
}

id FKALogCommon()
{
  if (FKALogCommon_onceToken != -1)
  {
    FKALogCommon_cold_1();
  }

  v1 = FKALogCommon___logObj;

  return v1;
}

uint64_t __FKALogCommon_block_invoke()
{
  FKALogCommon___logObj = os_log_create("com.apple.Accessibility", "FKACommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogCommon()
{
  if (GAXLogCommon_onceToken != -1)
  {
    GAXLogCommon_cold_1();
  }

  v1 = GAXLogCommon___logObj;

  return v1;
}

uint64_t __GAXLogCommon_block_invoke()
{
  GAXLogCommon___logObj = os_log_create("com.apple.Accessibility", "GAXCommon");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogTimeRestrictions()
{
  if (GAXLogTimeRestrictions_onceToken != -1)
  {
    GAXLogTimeRestrictions_cold_1();
  }

  v1 = GAXLogTimeRestrictions___logObj;

  return v1;
}

uint64_t __GAXLogTimeRestrictions_block_invoke()
{
  GAXLogTimeRestrictions___logObj = os_log_create("com.apple.Accessibility", "GAXTimeRestrictions");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogIntegrity()
{
  if (GAXLogIntegrity_onceToken != -1)
  {
    GAXLogIntegrity_cold_1();
  }

  v1 = GAXLogIntegrity___logObj;

  return v1;
}

uint64_t __GAXLogIntegrity_block_invoke()
{
  GAXLogIntegrity___logObj = os_log_create("com.apple.Accessibility", "GAXIntegrity");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogAppLaunching()
{
  if (GAXLogAppLaunching_onceToken != -1)
  {
    GAXLogAppLaunching_cold_1();
  }

  v1 = GAXLogAppLaunching___logObj;

  return v1;
}

uint64_t __GAXLogAppLaunching_block_invoke()
{
  GAXLogAppLaunching___logObj = os_log_create("com.apple.Accessibility", "GAXAppLaunching");

  return MEMORY[0x1EEE66BB8]();
}

id GAXLogBlockedTouches()
{
  if (GAXLogBlockedTouches_onceToken != -1)
  {
    GAXLogBlockedTouches_cold_1();
  }

  v1 = GAXLogBlockedTouches___logObj;

  return v1;
}

uint64_t __GAXLogBlockedTouches_block_invoke()
{
  GAXLogBlockedTouches___logObj = os_log_create("com.apple.Accessibility", "GAXBlockedTouches");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColors()
{
  if (AXLogInvertColors_onceToken != -1)
  {
    AXLogInvertColors_cold_1();
  }

  v1 = AXLogInvertColors___logObj;

  return v1;
}

uint64_t __AXLogInvertColors_block_invoke()
{
  AXLogInvertColors___logObj = os_log_create("com.apple.Accessibility", "AXInvertColors");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsTraversal()
{
  if (AXLogInvertColorsTraversal_onceToken != -1)
  {
    AXLogInvertColorsTraversal_cold_1();
  }

  v1 = AXLogInvertColorsTraversal___logObj;

  return v1;
}

uint64_t __AXLogInvertColorsTraversal_block_invoke()
{
  AXLogInvertColorsTraversal___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogInvertColorsLoadBundles()
{
  if (AXLogInvertColorsLoadBundles_onceToken != -1)
  {
    AXLogInvertColorsLoadBundles_cold_1();
  }

  v1 = AXLogInvertColorsLoadBundles___logObj;

  return v1;
}

uint64_t __AXLogInvertColorsLoadBundles_block_invoke()
{
  AXLogInvertColorsLoadBundles___logObj = os_log_create("com.apple.Accessibility", "AXInvertColorsLoadBundles");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMuseAccessibility()
{
  if (AXLogMuseAccessibility_onceToken != -1)
  {
    AXLogMuseAccessibility_cold_1();
  }

  v1 = AXLogMuseAccessibility___logObj;

  return v1;
}

uint64_t __AXLogMuseAccessibility_block_invoke()
{
  AXLogMuseAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXMuseAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAppAccessibility()
{
  if (AXLogAppAccessibility_onceToken != -1)
  {
    AXLogAppAccessibility_cold_1();
  }

  v1 = AXLogAppAccessibility___logObj;

  return v1;
}

uint64_t __AXLogAppAccessibility_block_invoke()
{
  AXLogAppAccessibility___logObj = os_log_create("com.apple.Accessibility", "AXAppAccessibility");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAppCompareGeometry()
{
  if (AXLogAppCompareGeometry_onceToken != -1)
  {
    AXLogAppCompareGeometry_cold_1();
  }

  v1 = AXLogAppCompareGeometry___logObj;

  return v1;
}

uint64_t __AXLogAppCompareGeometry_block_invoke()
{
  AXLogAppCompareGeometry___logObj = os_log_create("com.apple.Accessibility", "AXAppCompareGeometry");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidations()
{
  if (AXLogValidations_onceToken != -1)
  {
    AXLogValidations_cold_1();
  }

  v1 = AXLogValidations___logObj;

  return v1;
}

uint64_t __AXLogValidations_block_invoke()
{
  AXLogValidations___logObj = os_log_create("com.apple.Accessibility", "AXValidations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogValidationRunner()
{
  if (AXLogValidationRunner_onceToken != -1)
  {
    AXLogValidationRunner_cold_1();
  }

  v1 = AXLogValidationRunner___logObj;

  return v1;
}

uint64_t __AXLogValidationRunner_block_invoke()
{
  AXLogValidationRunner___logObj = os_log_create("com.apple.Accessibility", "AXValidationRunner");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogElementTraversal()
{
  if (AXLogElementTraversal_onceToken != -1)
  {
    AXLogElementTraversal_cold_1();
  }

  v1 = AXLogElementTraversal___logObj;

  return v1;
}

uint64_t __AXLogElementTraversal_block_invoke()
{
  AXLogElementTraversal___logObj = os_log_create("com.apple.Accessibility", "AXElementTraversal");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogFirstElement()
{
  if (AXLogFirstElement_onceToken != -1)
  {
    AXLogFirstElement_cold_1();
  }

  v1 = AXLogFirstElement___logObj;

  return v1;
}

uint64_t __AXLogFirstElement_block_invoke()
{
  AXLogFirstElement___logObj = os_log_create("com.apple.Accessibility", "AXFirstElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHitTest()
{
  if (AXLogHitTest_onceToken != -1)
  {
    AXLogHitTest_cold_1();
  }

  v1 = AXLogHitTest___logObj;

  return v1;
}

uint64_t __AXLogHitTest_block_invoke()
{
  AXLogHitTest___logObj = os_log_create("com.apple.Accessibility", "AXHitTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogScrollToVisible()
{
  if (AXLogScrollToVisible_onceToken != -1)
  {
    AXLogScrollToVisible_cold_1();
  }

  v1 = AXLogScrollToVisible___logObj;

  return v1;
}

uint64_t __AXLogScrollToVisible_block_invoke()
{
  AXLogScrollToVisible___logObj = os_log_create("com.apple.Accessibility", "AXScrollToVisible");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisibleFrame()
{
  if (AXLogVisibleFrame_onceToken != -1)
  {
    AXLogVisibleFrame_cold_1();
  }

  v1 = AXLogVisibleFrame___logObj;

  return v1;
}

uint64_t __AXLogVisibleFrame_block_invoke()
{
  AXLogVisibleFrame___logObj = os_log_create("com.apple.Accessibility", "AXVisibleFrame");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOpaqueElements()
{
  if (AXLogOpaqueElements_onceToken != -1)
  {
    AXLogOpaqueElements_cold_1();
  }

  v1 = AXLogOpaqueElements___logObj;

  return v1;
}

uint64_t __AXLogOpaqueElements_block_invoke()
{
  AXLogOpaqueElements___logObj = os_log_create("com.apple.Accessibility", "AXOpaqueElements");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogLoading()
{
  if (AXLogLoading_onceToken != -1)
  {
    AXLogLoading_cold_1();
  }

  v1 = AXLogLoading___logObj;

  return v1;
}

uint64_t __AXLogLoading_block_invoke()
{
  AXLogLoading___logObj = os_log_create("com.apple.Accessibility", "AXLoading");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVectorKit()
{
  if (AXLogVectorKit_onceToken != -1)
  {
    AXLogVectorKit_cold_1();
  }

  v1 = AXLogVectorKit___logObj;

  return v1;
}

uint64_t __AXLogVectorKit_block_invoke()
{
  AXLogVectorKit___logObj = os_log_create("com.apple.Accessibility", "AXVectorKit");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogRemoteElement()
{
  if (AXLogRemoteElement_onceToken != -1)
  {
    AXLogRemoteElement_cold_1();
  }

  v1 = AXLogRemoteElement___logObj;

  return v1;
}

uint64_t __AXLogRemoteElement_block_invoke()
{
  AXLogRemoteElement___logObj = os_log_create("com.apple.Accessibility", "AXRemoteElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogEscape()
{
  if (AXLogEscape_onceToken != -1)
  {
    AXLogEscape_cold_1();
  }

  v1 = AXLogEscape___logObj;

  return v1;
}

uint64_t __AXLogEscape_block_invoke()
{
  AXLogEscape___logObj = os_log_create("com.apple.Accessibility", "AXEscape");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogCommon()
{
  if (MAGLogCommon_onceToken != -1)
  {
    MAGLogCommon_cold_1();
  }

  v1 = MAGLogCommon___logObj;

  return v1;
}

uint64_t __MAGLogCommon_block_invoke()
{
  MAGLogCommon___logObj = os_log_create("com.apple.Accessibility", "MAGCommon");

  return MEMORY[0x1EEE66BB8]();
}

id MAGLogBrightness()
{
  if (MAGLogBrightness_onceToken != -1)
  {
    MAGLogBrightness_cold_1();
  }

  v1 = MAGLogBrightness___logObj;

  return v1;
}

uint64_t __MAGLogBrightness_block_invoke()
{
  MAGLogBrightness___logObj = os_log_create("com.apple.Accessibility", "MAGBrightness");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogMotionCues()
{
  if (AXLogMotionCues_onceToken != -1)
  {
    AXLogMotionCues_cold_1();
  }

  v1 = AXLogMotionCues___logObj;

  return v1;
}

uint64_t __AXLogMotionCues_block_invoke()
{
  AXLogMotionCues___logObj = os_log_create("com.apple.Accessibility", "AXMotionCues");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogGuestPass()
{
  if (AXLogGuestPass_onceToken != -1)
  {
    AXLogGuestPass_cold_1();
  }

  v1 = AXLogGuestPass___logObj;

  return v1;
}

uint64_t __AXLogGuestPass_block_invoke()
{
  AXLogGuestPass___logObj = os_log_create("com.apple.Accessibility", "AXGuestPass");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechAssetDownload()
{
  if (AXLogSpeechAssetDownload_onceToken != -1)
  {
    AXLogSpeechAssetDownload_cold_1();
  }

  v1 = AXLogSpeechAssetDownload___logObj;

  return v1;
}

uint64_t __AXLogSpeechAssetDownload_block_invoke()
{
  AXLogSpeechAssetDownload___logObj = os_log_create("com.apple.Accessibility", "AXSpeechAssetDownload");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogCharacterVoices()
{
  if (AXLogCharacterVoices_onceToken != -1)
  {
    AXLogCharacterVoices_cold_1();
  }

  v1 = AXLogCharacterVoices___logObj;

  return v1;
}

uint64_t __AXLogCharacterVoices_block_invoke()
{
  AXLogCharacterVoices___logObj = os_log_create("com.apple.Accessibility", "AXCharacterVoices");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeechSynthesis()
{
  if (AXLogSpeechSynthesis_onceToken != -1)
  {
    AXLogSpeechSynthesis_cold_1();
  }

  v1 = AXLogSpeechSynthesis___logObj;

  return v1;
}

uint64_t __AXLogSpeechSynthesis_block_invoke()
{
  AXLogSpeechSynthesis___logObj = os_log_create("com.apple.Accessibility", "AXSpeechSynthesis");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogOrator()
{
  if (AXLogOrator_onceToken != -1)
  {
    AXLogOrator_cold_1();
  }

  v1 = AXLogOrator___logObj;

  return v1;
}

uint64_t __AXLogOrator_block_invoke()
{
  AXLogOrator___logObj = os_log_create("com.apple.Accessibility", "AXOrator");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakSelection()
{
  if (AXLogSpeakSelection_onceToken != -1)
  {
    AXLogSpeakSelection_cold_1();
  }

  v1 = AXLogSpeakSelection___logObj;

  return v1;
}

uint64_t __AXLogSpeakSelection_block_invoke()
{
  AXLogSpeakSelection___logObj = os_log_create("com.apple.Accessibility", "AXSpeakSelection");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakTyping()
{
  if (AXLogSpeakTyping_onceToken != -1)
  {
    AXLogSpeakTyping_cold_1();
  }

  v1 = AXLogSpeakTyping___logObj;

  return v1;
}

uint64_t __AXLogSpeakTyping_block_invoke()
{
  AXLogSpeakTyping___logObj = os_log_create("com.apple.Accessibility", "AXSpeakTyping");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakScreen()
{
  if (AXLogSpeakScreen_onceToken != -1)
  {
    AXLogSpeakScreen_cold_1();
  }

  v1 = AXLogSpeakScreen___logObj;

  return v1;
}

uint64_t __AXLogSpeakScreen_block_invoke()
{
  AXLogSpeakScreen___logObj = os_log_create("com.apple.Accessibility", "AXSpeakScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpeakFingerManager()
{
  if (AXLogSpeakFingerManager_onceToken != -1)
  {
    AXLogSpeakFingerManager_cold_1();
  }

  v1 = AXLogSpeakFingerManager___logObj;

  return v1;
}

uint64_t __AXLogSpeakFingerManager_block_invoke()
{
  AXLogSpeakFingerManager___logObj = os_log_create("com.apple.Accessibility", "AXSpeakFingerManager");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSpokenContentTextProcessing()
{
  if (AXLogSpokenContentTextProcessing_onceToken != -1)
  {
    AXLogSpokenContentTextProcessing_cold_1();
  }

  v1 = AXLogSpokenContentTextProcessing___logObj;

  return v1;
}

uint64_t __AXLogSpokenContentTextProcessing_block_invoke()
{
  AXLogSpokenContentTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXSpokenContentTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogCommon()
{
  if (SWCHLogCommon_onceToken != -1)
  {
    SWCHLogCommon_cold_1();
  }

  v1 = SWCHLogCommon___logObj;

  return v1;
}

uint64_t __SWCHLogCommon_block_invoke()
{
  SWCHLogCommon___logObj = os_log_create("com.apple.Accessibility", "SWCHCommon");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogElementNav()
{
  if (SWCHLogElementNav_onceToken != -1)
  {
    SWCHLogElementNav_cold_1();
  }

  v1 = SWCHLogElementNav___logObj;

  return v1;
}

uint64_t __SWCHLogElementNav_block_invoke()
{
  SWCHLogElementNav___logObj = os_log_create("com.apple.Accessibility", "SWCHElementNav");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogPauseResume()
{
  if (SWCHLogPauseResume_onceToken != -1)
  {
    SWCHLogPauseResume_cold_1();
  }

  v1 = SWCHLogPauseResume___logObj;

  return v1;
}

uint64_t __SWCHLogPauseResume_block_invoke()
{
  SWCHLogPauseResume___logObj = os_log_create("com.apple.Accessibility", "SWCHPauseResume");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogHW()
{
  if (SWCHLogHW_onceToken != -1)
  {
    SWCHLogHW_cold_1();
  }

  v1 = SWCHLogHW___logObj;

  return v1;
}

uint64_t __SWCHLogHW_block_invoke()
{
  SWCHLogHW___logObj = os_log_create("com.apple.Accessibility", "SWCHHW");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogMenu()
{
  if (SWCHLogMenu_onceToken != -1)
  {
    SWCHLogMenu_cold_1();
  }

  v1 = SWCHLogMenu___logObj;

  return v1;
}

uint64_t __SWCHLogMenu_block_invoke()
{
  SWCHLogMenu___logObj = os_log_create("com.apple.Accessibility", "SWCHMenu");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogSettings()
{
  if (SWCHLogSettings_onceToken != -1)
  {
    SWCHLogSettings_cold_1();
  }

  v1 = SWCHLogSettings___logObj;

  return v1;
}

uint64_t __SWCHLogSettings_block_invoke()
{
  SWCHLogSettings___logObj = os_log_create("com.apple.Accessibility", "SWCHSettings");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogInputController()
{
  if (SWCHLogInputController_onceToken != -1)
  {
    SWCHLogInputController_cold_1();
  }

  v1 = SWCHLogInputController___logObj;

  return v1;
}

uint64_t __SWCHLogInputController_block_invoke()
{
  SWCHLogInputController___logObj = os_log_create("com.apple.Accessibility", "SWCHInputController");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogScannerManager()
{
  if (SWCHLogScannerManager_onceToken != -1)
  {
    SWCHLogScannerManager_cold_1();
  }

  v1 = SWCHLogScannerManager___logObj;

  return v1;
}

uint64_t __SWCHLogScannerManager_block_invoke()
{
  SWCHLogScannerManager___logObj = os_log_create("com.apple.Accessibility", "SWCHScannerManager");

  return MEMORY[0x1EEE66BB8]();
}

id SWCHLogModernMenuActions()
{
  if (SWCHLogModernMenuActions_onceToken != -1)
  {
    SWCHLogModernMenuActions_cold_1();
  }

  v1 = SWCHLogModernMenuActions___logObj;

  return v1;
}

uint64_t __SWCHLogModernMenuActions_block_invoke()
{
  SWCHLogModernMenuActions___logObj = os_log_create("com.apple.Accessibility", "SWCHModernMenuActions");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTapticTime()
{
  if (AXLogTapticTime_onceToken != -1)
  {
    AXLogTapticTime_cold_1();
  }

  v1 = AXLogTapticTime___logObj;

  return v1;
}

uint64_t __AXLogTapticTime_block_invoke()
{
  AXLogTapticTime___logObj = os_log_create("com.apple.Accessibility", "AXTapticTime");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTouchAccommodations()
{
  if (AXLogTouchAccommodations_onceToken != -1)
  {
    AXLogTouchAccommodations_cold_1();
  }

  v1 = AXLogTouchAccommodations___logObj;

  return v1;
}

uint64_t __AXLogTouchAccommodations_block_invoke()
{
  AXLogTouchAccommodations___logObj = os_log_create("com.apple.Accessibility", "AXTouchAccommodations");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogIDS()
{
  if (AXLogIDS_onceToken != -1)
  {
    AXLogIDS_cold_1();
  }

  v1 = AXLogIDS___logObj;

  return v1;
}

uint64_t __AXLogIDS_block_invoke()
{
  AXLogIDS___logObj = os_log_create("com.apple.Accessibility", "AXIDS");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommon()
{
  if (VOTLogCommon_onceToken != -1)
  {
    VOTLogCommon_cold_1();
  }

  v1 = VOTLogCommon___logObj;

  return v1;
}

uint64_t __VOTLogCommon_block_invoke()
{
  VOTLogCommon___logObj = os_log_create("com.apple.Accessibility", "VOTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLayoutChange()
{
  if (VOTLogLayoutChange_onceToken != -1)
  {
    VOTLogLayoutChange_cold_1();
  }

  v1 = VOTLogLayoutChange___logObj;

  return v1;
}

uint64_t __VOTLogLayoutChange_block_invoke()
{
  VOTLogLayoutChange___logObj = os_log_create("com.apple.Accessibility", "VOTLayoutChange");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogHandwriting()
{
  if (VOTLogHandwriting_onceToken != -1)
  {
    VOTLogHandwriting_cold_1();
  }

  v1 = VOTLogHandwriting___logObj;

  return v1;
}

uint64_t __VOTLogHandwriting_block_invoke()
{
  VOTLogHandwriting___logObj = os_log_create("com.apple.Accessibility", "VOTHandwriting");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSpeech()
{
  if (VOTLogSpeech_onceToken != -1)
  {
    VOTLogSpeech_cold_1();
  }

  v1 = VOTLogSpeech___logObj;

  return v1;
}

uint64_t __VOTLogSpeech_block_invoke()
{
  VOTLogSpeech___logObj = os_log_create("com.apple.Accessibility", "VOTSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogICloud()
{
  if (VOTLogICloud_onceToken != -1)
  {
    VOTLogICloud_cold_1();
  }

  v1 = VOTLogICloud___logObj;

  return v1;
}

uint64_t __VOTLogICloud_block_invoke()
{
  VOTLogICloud___logObj = os_log_create("com.apple.Accessibility", "VOTICloud");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogAudio()
{
  if (VOTLogAudio_onceToken != -1)
  {
    VOTLogAudio_cold_1();
  }

  v1 = VOTLogAudio___logObj;

  return v1;
}

uint64_t __VOTLogAudio_block_invoke()
{
  VOTLogAudio___logObj = os_log_create("com.apple.Accessibility", "VOTAudio");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogElement()
{
  if (VOTLogElement_onceToken != -1)
  {
    VOTLogElement_cold_1();
  }

  v1 = VOTLogElement___logObj;

  return v1;
}

uint64_t __VOTLogElement_block_invoke()
{
  VOTLogElement___logObj = os_log_create("com.apple.Accessibility", "VOTElement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogEvent()
{
  if (VOTLogEvent_onceToken != -1)
  {
    VOTLogEvent_cold_1();
  }

  v1 = VOTLogEvent___logObj;

  return v1;
}

uint64_t __VOTLogEvent_block_invoke()
{
  VOTLogEvent___logObj = os_log_create("com.apple.Accessibility", "VOTEvent");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBraille()
{
  if (VOTLogBraille_onceToken != -1)
  {
    VOTLogBraille_cold_1();
  }

  v1 = VOTLogBraille___logObj;

  return v1;
}

uint64_t __VOTLogBraille_block_invoke()
{
  VOTLogBraille___logObj = os_log_create("com.apple.Accessibility", "VOTBraille");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogBrailleGestures()
{
  if (VOTLogBrailleGestures_onceToken != -1)
  {
    VOTLogBrailleGestures_cold_1();
  }

  v1 = VOTLogBrailleGestures___logObj;

  return v1;
}

uint64_t __VOTLogBrailleGestures_block_invoke()
{
  VOTLogBrailleGestures___logObj = os_log_create("com.apple.Accessibility", "VOTBrailleGestures");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogNotifications()
{
  if (VOTLogNotifications_onceToken != -1)
  {
    VOTLogNotifications_cold_1();
  }

  v1 = VOTLogNotifications___logObj;

  return v1;
}

uint64_t __VOTLogNotifications_block_invoke()
{
  VOTLogNotifications___logObj = os_log_create("com.apple.Accessibility", "VOTNotifications");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogKeyboard()
{
  if (VOTLogKeyboard_onceToken != -1)
  {
    VOTLogKeyboard_cold_1();
  }

  v1 = VOTLogKeyboard___logObj;

  return v1;
}

uint64_t __VOTLogKeyboard_block_invoke()
{
  VOTLogKeyboard___logObj = os_log_create("com.apple.Accessibility", "VOTKeyboard");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVFocus()
{
  if (VOTLogTVFocus_onceToken != -1)
  {
    VOTLogTVFocus_cold_1();
  }

  v1 = VOTLogTVFocus___logObj;

  return v1;
}

uint64_t __VOTLogTVFocus_block_invoke()
{
  VOTLogTVFocus___logObj = os_log_create("com.apple.Accessibility", "VOTTVFocus");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogTVExplorer()
{
  if (VOTLogTVExplorer_onceToken != -1)
  {
    VOTLogTVExplorer_cold_1();
  }

  v1 = VOTLogTVExplorer___logObj;

  return v1;
}

uint64_t __VOTLogTVExplorer_block_invoke()
{
  VOTLogTVExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTTVExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogIAP()
{
  if (VOTLogIAP_onceToken != -1)
  {
    VOTLogIAP_cold_1();
  }

  v1 = VOTLogIAP___logObj;

  return v1;
}

uint64_t __VOTLogIAP_block_invoke()
{
  VOTLogIAP___logObj = os_log_create("com.apple.Accessibility", "VOTIAP");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogLifeCycle()
{
  if (VOTLogLifeCycle_onceToken != -1)
  {
    VOTLogLifeCycle_cold_1();
  }

  v1 = VOTLogLifeCycle___logObj;

  return v1;
}

uint64_t __VOTLogLifeCycle_block_invoke()
{
  VOTLogLifeCycle___logObj = os_log_create("com.apple.Accessibility", "VOTLifeCycle");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogMagicTap()
{
  if (VOTLogMagicTap_onceToken != -1)
  {
    VOTLogMagicTap_cold_1();
  }

  v1 = VOTLogMagicTap___logObj;

  return v1;
}

uint64_t __VOTLogMagicTap_block_invoke()
{
  VOTLogMagicTap___logObj = os_log_create("com.apple.Accessibility", "VOTMagicTap");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogRotor()
{
  if (VOTLogRotor_onceToken != -1)
  {
    VOTLogRotor_cold_1();
  }

  v1 = VOTLogRotor___logObj;

  return v1;
}

uint64_t __VOTLogRotor_block_invoke()
{
  VOTLogRotor___logObj = os_log_create("com.apple.Accessibility", "VOTRotor");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogQuickSettings()
{
  if (VOTLogQuickSettings_onceToken != -1)
  {
    VOTLogQuickSettings_cold_1();
  }

  v1 = VOTLogQuickSettings___logObj;

  return v1;
}

uint64_t __VOTLogQuickSettings_block_invoke()
{
  VOTLogQuickSettings___logObj = os_log_create("com.apple.Accessibility", "VOTQuickSettings");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogSimpleTap()
{
  if (VOTLogSimpleTap_onceToken != -1)
  {
    VOTLogSimpleTap_cold_1();
  }

  v1 = VOTLogSimpleTap___logObj;

  return v1;
}

uint64_t __VOTLogSimpleTap_block_invoke()
{
  VOTLogSimpleTap___logObj = os_log_create("com.apple.Accessibility", "VOTSimpleTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPunctuationStorage()
{
  if (AXLogPunctuationStorage_onceToken != -1)
  {
    AXLogPunctuationStorage_cold_1();
  }

  v1 = AXLogPunctuationStorage___logObj;

  return v1;
}

uint64_t __AXLogPunctuationStorage_block_invoke()
{
  AXLogPunctuationStorage___logObj = os_log_create("com.apple.Accessibility", "AXPunctuationStorage");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogActivities()
{
  if (VOTLogActivities_onceToken != -1)
  {
    VOTLogActivities_cold_1();
  }

  v1 = VOTLogActivities___logObj;

  return v1;
}

uint64_t __VOTLogActivities_block_invoke()
{
  VOTLogActivities___logObj = os_log_create("com.apple.Accessibility", "VOTActivities");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogWebPageMovement()
{
  if (VOTLogWebPageMovement_onceToken != -1)
  {
    VOTLogWebPageMovement_cold_1();
  }

  v1 = VOTLogWebPageMovement___logObj;

  return v1;
}

uint64_t __VOTLogWebPageMovement_block_invoke()
{
  VOTLogWebPageMovement___logObj = os_log_create("com.apple.Accessibility", "VOTWebPageMovement");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogCommands()
{
  if (VOTLogCommands_onceToken != -1)
  {
    VOTLogCommands_cold_1();
  }

  v1 = VOTLogCommands___logObj;

  return v1;
}

uint64_t __VOTLogCommands_block_invoke()
{
  VOTLogCommands___logObj = os_log_create("com.apple.Accessibility", "VOTCommands");

  return MEMORY[0x1EEE66BB8]();
}

id VOTLogImageExplorer()
{
  if (VOTLogImageExplorer_onceToken != -1)
  {
    VOTLogImageExplorer_cold_1();
  }

  v1 = VOTLogImageExplorer___logObj;

  return v1;
}

uint64_t __VOTLogImageExplorer_block_invoke()
{
  VOTLogImageExplorer___logObj = os_log_create("com.apple.Accessibility", "VOTImageExplorer");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVisualAlerts()
{
  if (AXLogVisualAlerts_onceToken != -1)
  {
    AXLogVisualAlerts_cold_1();
  }

  v1 = AXLogVisualAlerts___logObj;

  return v1;
}

uint64_t __AXLogVisualAlerts_block_invoke()
{
  AXLogVisualAlerts___logObj = os_log_create("com.apple.Accessibility", "AXVisualAlerts");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogRTT()
{
  if (AXLogRTT_onceToken != -1)
  {
    AXLogRTT_cold_1();
  }

  v1 = AXLogRTT___logObj;

  return v1;
}

uint64_t __AXLogRTT_block_invoke()
{
  AXLogRTT___logObj = os_log_create("com.apple.Accessibility", "AXRTT");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltron()
{
  if (AXLogUltron_onceToken != -1)
  {
    AXLogUltron_cold_1();
  }

  v1 = AXLogUltron___logObj;

  return v1;
}

uint64_t __AXLogUltron_block_invoke()
{
  AXLogUltron___logObj = os_log_create("com.apple.Accessibility", "AXUltron");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUltronKShot()
{
  if (AXLogUltronKShot_onceToken != -1)
  {
    AXLogUltronKShot_cold_1();
  }

  v1 = AXLogUltronKShot___logObj;

  return v1;
}

uint64_t __AXLogUltronKShot_block_invoke()
{
  AXLogUltronKShot___logObj = os_log_create("com.apple.Accessibility", "AXUltronKShot");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAudiogram()
{
  if (AXLogAudiogram_onceToken != -1)
  {
    AXLogAudiogram_cold_1();
  }

  v1 = AXLogAudiogram___logObj;

  return v1;
}

uint64_t __AXLogAudiogram_block_invoke()
{
  AXLogAudiogram___logObj = os_log_create("com.apple.Accessibility", "AXAudiogram");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogDisplayFilters()
{
  if (AXLogDisplayFilters_onceToken != -1)
  {
    AXLogDisplayFilters_cold_1();
  }

  v1 = AXLogDisplayFilters___logObj;

  return v1;
}

uint64_t __AXLogDisplayFilters_block_invoke()
{
  AXLogDisplayFilters___logObj = os_log_create("com.apple.Accessibility", "AXDisplayFilters");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogCommon()
{
  if (ZOOMLogCommon_onceToken != -1)
  {
    ZOOMLogCommon_cold_1();
  }

  v1 = ZOOMLogCommon___logObj;

  return v1;
}

uint64_t __ZOOMLogCommon_block_invoke()
{
  ZOOMLogCommon___logObj = os_log_create("com.apple.Accessibility", "ZOOMCommon");

  return MEMORY[0x1EEE66BB8]();
}

id ZOOMLogEvents()
{
  if (ZOOMLogEvents_onceToken != -1)
  {
    ZOOMLogEvents_cold_1();
  }

  v1 = ZOOMLogEvents___logObj;

  return v1;
}

uint64_t __ZOOMLogEvents_block_invoke()
{
  ZOOMLogEvents___logObj = os_log_create("com.apple.Accessibility", "ZOOMEvents");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogUnitTesting()
{
  if (AXLogUnitTesting_onceToken != -1)
  {
    AXLogUnitTesting_cold_1();
  }

  v1 = AXLogUnitTesting___logObj;

  return v1;
}

uint64_t __AXLogUnitTesting_block_invoke()
{
  AXLogUnitTesting___logObj = os_log_create("com.apple.Accessibility", "AXUnitTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogPerfTesting()
{
  if (AXLogPerfTesting_onceToken != -1)
  {
    AXLogPerfTesting_cold_1();
  }

  v1 = AXLogPerfTesting___logObj;

  return v1;
}

uint64_t __AXLogPerfTesting_block_invoke()
{
  AXLogPerfTesting___logObj = os_log_create("com.apple.Accessibility", "AXPerfTesting");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCommon()
{
  if (AXMediaLogCommon_onceToken != -1)
  {
    AXMediaLogCommon_cold_1();
  }

  v1 = AXMediaLogCommon___logObj;

  return v1;
}

uint64_t __AXMediaLogCommon_block_invoke()
{
  AXMediaLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXMediaCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSettings()
{
  if (AXMediaLogSettings_onceToken != -1)
  {
    AXMediaLogSettings_cold_1();
  }

  v1 = AXMediaLogSettings___logObj;

  return v1;
}

uint64_t __AXMediaLogSettings_block_invoke()
{
  AXMediaLogSettings___logObj = os_log_create("com.apple.Accessibility", "AXMediaSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogService()
{
  if (AXMediaLogService_onceToken != -1)
  {
    AXMediaLogService_cold_1();
  }

  v1 = AXMediaLogService___logObj;

  return v1;
}

uint64_t __AXMediaLogService_block_invoke()
{
  AXMediaLogService___logObj = os_log_create("com.apple.Accessibility", "AXMediaService");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEngineCache()
{
  if (AXMediaLogEngineCache_onceToken != -1)
  {
    AXMediaLogEngineCache_cold_1();
  }

  v1 = AXMediaLogEngineCache___logObj;

  return v1;
}

uint64_t __AXMediaLogEngineCache_block_invoke()
{
  AXMediaLogEngineCache___logObj = os_log_create("com.apple.Accessibility", "AXMediaEngineCache");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogEnginePriority()
{
  if (AXMediaLogEnginePriority_onceToken != -1)
  {
    AXMediaLogEnginePriority_cold_1();
  }

  v1 = AXMediaLogEnginePriority___logObj;

  return v1;
}

uint64_t __AXMediaLogEnginePriority_block_invoke()
{
  AXMediaLogEnginePriority___logObj = os_log_create("com.apple.Accessibility", "AXMediaEnginePriority");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogScreenGrab()
{
  if (AXMediaLogScreenGrab_onceToken != -1)
  {
    AXMediaLogScreenGrab_cold_1();
  }

  v1 = AXMediaLogScreenGrab___logObj;

  return v1;
}

uint64_t __AXMediaLogScreenGrab_block_invoke()
{
  AXMediaLogScreenGrab___logObj = os_log_create("com.apple.Accessibility", "AXMediaScreenGrab");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOCR()
{
  if (AXMediaLogOCR_onceToken != -1)
  {
    AXMediaLogOCR_cold_1();
  }

  v1 = AXMediaLogOCR___logObj;

  return v1;
}

uint64_t __AXMediaLogOCR_block_invoke()
{
  AXMediaLogOCR___logObj = os_log_create("com.apple.Accessibility", "AXMediaOCR");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogMLElement()
{
  if (AXMediaLogMLElement_onceToken != -1)
  {
    AXMediaLogMLElement_cold_1();
  }

  v1 = AXMediaLogMLElement___logObj;

  return v1;
}

uint64_t __AXMediaLogMLElement_block_invoke()
{
  AXMediaLogMLElement___logObj = os_log_create("com.apple.Accessibility", "AXMediaMLElement");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextProcessing()
{
  if (AXMediaLogTextProcessing_onceToken != -1)
  {
    AXMediaLogTextProcessing_cold_1();
  }

  v1 = AXMediaLogTextProcessing___logObj;

  return v1;
}

uint64_t __AXMediaLogTextProcessing_block_invoke()
{
  AXMediaLogTextProcessing___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextProcessing");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogElementVision()
{
  if (AXMediaLogElementVision_onceToken != -1)
  {
    AXMediaLogElementVision_cold_1();
  }

  v1 = AXMediaLogElementVision___logObj;

  return v1;
}

uint64_t __AXMediaLogElementVision_block_invoke()
{
  AXMediaLogElementVision___logObj = os_log_create("com.apple.Accessibility", "AXMediaElementVision");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTextLayout()
{
  if (AXMediaLogTextLayout_onceToken != -1)
  {
    AXMediaLogTextLayout_cold_1();
  }

  v1 = AXMediaLogTextLayout___logObj;

  return v1;
}

uint64_t __AXMediaLogTextLayout_block_invoke()
{
  AXMediaLogTextLayout___logObj = os_log_create("com.apple.Accessibility", "AXMediaTextLayout");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogResults()
{
  if (AXMediaLogResults_onceToken != -1)
  {
    AXMediaLogResults_cold_1();
  }

  v1 = AXMediaLogResults___logObj;

  return v1;
}

uint64_t __AXMediaLogResults_block_invoke()
{
  AXMediaLogResults___logObj = os_log_create("com.apple.Accessibility", "AXMediaResults");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogTracking()
{
  if (AXMediaLogTracking_onceToken != -1)
  {
    AXMediaLogTracking_cold_1();
  }

  v1 = AXMediaLogTracking___logObj;

  return v1;
}

uint64_t __AXMediaLogTracking_block_invoke()
{
  AXMediaLogTracking___logObj = os_log_create("com.apple.Accessibility", "AXMediaTracking");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogOutput()
{
  if (AXMediaLogOutput_onceToken != -1)
  {
    AXMediaLogOutput_cold_1();
  }

  v1 = AXMediaLogOutput___logObj;

  return v1;
}

uint64_t __AXMediaLogOutput_block_invoke()
{
  AXMediaLogOutput___logObj = os_log_create("com.apple.Accessibility", "AXMediaOutput");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSpeech()
{
  if (AXMediaLogSpeech_onceToken != -1)
  {
    AXMediaLogSpeech_cold_1();
  }

  v1 = AXMediaLogSpeech___logObj;

  return v1;
}

uint64_t __AXMediaLogSpeech_block_invoke()
{
  AXMediaLogSpeech___logObj = os_log_create("com.apple.Accessibility", "AXMediaSpeech");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogSounds()
{
  if (AXMediaLogSounds_onceToken != -1)
  {
    AXMediaLogSounds_cold_1();
  }

  v1 = AXMediaLogSounds___logObj;

  return v1;
}

uint64_t __AXMediaLogSounds_block_invoke()
{
  AXMediaLogSounds___logObj = os_log_create("com.apple.Accessibility", "AXMediaSounds");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogHaptics()
{
  if (AXMediaLogHaptics_onceToken != -1)
  {
    AXMediaLogHaptics_cold_1();
  }

  v1 = AXMediaLogHaptics___logObj;

  return v1;
}

uint64_t __AXMediaLogHaptics_block_invoke()
{
  AXMediaLogHaptics___logObj = os_log_create("com.apple.Accessibility", "AXMediaHaptics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogCaptionDescriptions()
{
  if (AXMediaLogCaptionDescriptions_onceToken != -1)
  {
    AXMediaLogCaptionDescriptions_cold_1();
  }

  v1 = AXMediaLogCaptionDescriptions___logObj;

  return v1;
}

uint64_t __AXMediaLogCaptionDescriptions_block_invoke()
{
  AXMediaLogCaptionDescriptions___logObj = os_log_create("com.apple.Accessibility", "AXMediaCaptionDescriptions");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogDiagnostics()
{
  if (AXMediaLogDiagnostics_onceToken != -1)
  {
    AXMediaLogDiagnostics_cold_1();
  }

  v1 = AXMediaLogDiagnostics___logObj;

  return v1;
}

uint64_t __AXMediaLogDiagnostics_block_invoke()
{
  AXMediaLogDiagnostics___logObj = os_log_create("com.apple.Accessibility", "AXMediaDiagnostics");

  return MEMORY[0x1EEE66BB8]();
}

id AXMediaLogLanguageTranslation()
{
  if (AXMediaLogLanguageTranslation_onceToken != -1)
  {
    AXMediaLogLanguageTranslation_cold_1();
  }

  v1 = AXMediaLogLanguageTranslation___logObj;

  return v1;
}

uint64_t __AXMediaLogLanguageTranslation_block_invoke()
{
  AXMediaLogLanguageTranslation___logObj = os_log_create("com.apple.Accessibility", "AXMediaLanguageTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAirPodSettings()
{
  if (AXLogAirPodSettings_onceToken != -1)
  {
    AXLogAirPodSettings_cold_1();
  }

  v1 = AXLogAirPodSettings___logObj;

  return v1;
}

uint64_t __AXLogAirPodSettings_block_invoke()
{
  AXLogAirPodSettings___logObj = os_log_create("com.apple.Accessibility", "AXAirPodSettings");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssetLoader()
{
  if (AXLogAssetLoader_onceToken != -1)
  {
    AXLogAssetLoader_cold_1();
  }

  v1 = AXLogAssetLoader___logObj;

  return v1;
}

uint64_t __AXLogAssetLoader_block_invoke()
{
  AXLogAssetLoader___logObj = os_log_create("com.apple.Accessibility", "AXAssetLoader");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAssetDaemon()
{
  if (AXLogAssetDaemon_onceToken != -1)
  {
    AXLogAssetDaemon_cold_1();
  }

  v1 = AXLogAssetDaemon___logObj;

  return v1;
}

uint64_t __AXLogAssetDaemon_block_invoke()
{
  AXLogAssetDaemon___logObj = os_log_create("com.apple.Accessibility", "AXAssetDaemon");

  return MEMORY[0x1EEE66BB8]();
}

id AXPlatformTranslationLogCommon()
{
  if (AXPlatformTranslationLogCommon_onceToken != -1)
  {
    AXPlatformTranslationLogCommon_cold_1();
  }

  v1 = AXPlatformTranslationLogCommon___logObj;

  return v1;
}

uint64_t __AXPlatformTranslationLogCommon_block_invoke()
{
  AXPlatformTranslationLogCommon___logObj = os_log_create("com.apple.Accessibility", "AXPlatformTranslationCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTemp()
{
  if (AXLogTemp_onceToken != -1)
  {
    AXLogTemp_cold_1();
  }

  v1 = AXLogTemp___logObj;

  return v1;
}

uint64_t __AXLogTemp_block_invoke()
{
  AXLogTemp___logObj = os_log_create("com.apple.Accessibility", "AXTemp");

  return MEMORY[0x1EEE66BB8]();
}

id BRLLogTranslation()
{
  if (BRLLogTranslation_onceToken != -1)
  {
    BRLLogTranslation_cold_1();
  }

  v1 = BRLLogTranslation___logObj;

  return v1;
}

uint64_t __BRLLogTranslation_block_invoke()
{
  BRLLogTranslation___logObj = os_log_create("com.apple.Accessibility", "BRLTranslation");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogBackTap()
{
  if (AXLogBackTap_onceToken != -1)
  {
    AXLogBackTap_cold_1();
  }

  v1 = AXLogBackTap___logObj;

  return v1;
}

uint64_t __AXLogBackTap_block_invoke()
{
  AXLogBackTap___logObj = os_log_create("com.apple.Accessibility", "AXBackTap");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogSoundActions()
{
  if (AXLogSoundActions_onceToken != -1)
  {
    AXLogSoundActions_cold_1();
  }

  v1 = AXLogSoundActions___logObj;

  return v1;
}

uint64_t __AXLogSoundActions_block_invoke()
{
  AXLogSoundActions___logObj = os_log_create("com.apple.Accessibility", "AXSoundActions");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogCommon()
{
  if (CLFLogCommon_onceToken != -1)
  {
    CLFLogCommon_cold_1();
  }

  v1 = CLFLogCommon___logObj;

  return v1;
}

uint64_t __CLFLogCommon_block_invoke()
{
  CLFLogCommon___logObj = os_log_create("com.apple.Accessibility", "CLFCommon");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogSettings()
{
  if (CLFLogSettings_onceToken != -1)
  {
    CLFLogSettings_cold_1();
  }

  v1 = CLFLogSettings___logObj;

  return v1;
}

uint64_t __CLFLogSettings_block_invoke()
{
  CLFLogSettings___logObj = os_log_create("com.apple.Accessibility", "CLFSettings");

  return MEMORY[0x1EEE66BB8]();
}

id CLFLogBacklight()
{
  if (CLFLogBacklight_onceToken != -1)
  {
    CLFLogBacklight_cold_1();
  }

  v1 = CLFLogBacklight___logObj;

  return v1;
}

uint64_t __CLFLogBacklight_block_invoke()
{
  CLFLogBacklight___logObj = os_log_create("com.apple.Accessibility", "CLFBacklight");

  return MEMORY[0x1EEE66BB8]();
}

id HTLogCommon()
{
  if (HTLogCommon_onceToken != -1)
  {
    HTLogCommon_cold_1();
  }

  v1 = HTLogCommon___logObj;

  return v1;
}

uint64_t __HTLogCommon_block_invoke()
{
  HTLogCommon___logObj = os_log_create("com.apple.Accessibility", "HTCommon");

  return MEMORY[0x1EEE66BB8]();
}

id LiveSpeechLogCommon()
{
  if (LiveSpeechLogCommon_onceToken != -1)
  {
    LiveSpeechLogCommon_cold_1();
  }

  v1 = LiveSpeechLogCommon___logObj;

  return v1;
}

uint64_t __LiveSpeechLogCommon_block_invoke()
{
  LiveSpeechLogCommon___logObj = os_log_create("com.apple.Accessibility", "LiveSpeechCommon");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogTwiceRemoteScreen()
{
  if (AXLogTwiceRemoteScreen_onceToken != -1)
  {
    AXLogTwiceRemoteScreen_cold_1();
  }

  v1 = AXLogTwiceRemoteScreen___logObj;

  return v1;
}

uint64_t __AXLogTwiceRemoteScreen_block_invoke()
{
  AXLogTwiceRemoteScreen___logObj = os_log_create("com.apple.Accessibility", "AXTwiceRemoteScreen");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHapticMusic()
{
  if (AXLogHapticMusic_onceToken != -1)
  {
    AXLogHapticMusic_cold_1();
  }

  v1 = AXLogHapticMusic___logObj;

  return v1;
}

uint64_t __AXLogHapticMusic_block_invoke()
{
  AXLogHapticMusic___logObj = os_log_create("com.apple.Accessibility", "AXHapticMusic");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogAVS()
{
  if (AXLogAVS_onceToken != -1)
  {
    AXLogAVS_cold_1();
  }

  v1 = AXLogAVS___logObj;

  return v1;
}

uint64_t __AXLogAVS_block_invoke()
{
  AXLogAVS___logObj = os_log_create("com.apple.Accessibility", "AXAVS");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogHearingTest()
{
  if (AXLogHearingTest_onceToken != -1)
  {
    AXLogHearingTest_cold_1();
  }

  v1 = AXLogHearingTest___logObj;

  return v1;
}

uint64_t __AXLogHearingTest_block_invoke()
{
  AXLogHearingTest___logObj = os_log_create("com.apple.Accessibility", "AXHearingTest");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogReader()
{
  if (AXLogReader_onceToken != -1)
  {
    AXLogReader_cold_1();
  }

  v1 = AXLogReader___logObj;

  return v1;
}

uint64_t __AXLogReader_block_invoke()
{
  AXLogReader___logObj = os_log_create("com.apple.Accessibility", "AXReader");

  return MEMORY[0x1EEE66BB8]();
}

id AXLogVoiceOverMapsAI()
{
  if (AXLogVoiceOverMapsAI_onceToken != -1)
  {
    AXLogVoiceOverMapsAI_cold_1();
  }

  v1 = AXLogVoiceOverMapsAI___logObj;

  return v1;
}

uint64_t __AXLogVoiceOverMapsAI_block_invoke()
{
  AXLogVoiceOverMapsAI___logObj = os_log_create("com.apple.Accessibility", "AXVoiceOverMapsAI");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t AXSAccessibilityUtilitiesPath()
{
  v0 = AXSystemRootDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"System/Library/PrivateFrameworks/AccessibilityUtilities.framework"];

  return v1;
}

uint64_t _AXSCopyPathForAccessibilityBundle(uint64_t a1)
{
  v2 = AXAccessibilityBundlesDirectory();
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.axbundle", a1];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

void sub_186319FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _AXSPreferencesParticipatingInGuestPass()
{
  v3[141] = *MEMORY[0x1E69E9840];
  v3[0] = kAXSAssistiveTouchEnabledPreference;
  v3[1] = kAXSAssistiveTouchUIEnabledPreference;
  v3[2] = kAXSAssistiveTouchUseExtendedKeyboardPredictionsEnabledPreference;
  v3[3] = kAXSDwellControlEnabledPreference;
  v3[4] = kAXSAccessibilityEnabledPreference;
  v3[5] = kAXSApplicationAccessibilityEnabledPreference;
  v3[6] = kAXSTripleClickPreference;
  v3[7] = kAXSHapticMusicEnabledPreference;
  v3[8] = kAXSMotionCuesEnabledPreference;
  v3[9] = kAXSMotionCuesModePreference;
  v3[10] = kAXSFullKeyboardAccessEnabledPreference;
  v3[11] = kAXSFullKeyboardAccessFocusRingEnabledPreference;
  v3[12] = kAXSFullKeyboardAccessPassthroughModeEnabledPreference;
  v3[13] = kAXSPrefersHorizontalTextPreference;
  v3[14] = kAXSUIFocusRingEnabledPreference;
  v3[15] = kAXSPrefersNonBlinkingCursorIndicatorPreference;
  v3[16] = kAXSPreferActionSliderAlternativePreference;
  v3[17] = kAXSHomeClickSpeedPreference;
  v3[18] = kAXSSideButtonClickSpeedPreference;
  v3[19] = kAXSInvertColorsEnabledPreference;
  v3[20] = kAXSClassicInvertColorsPreference;
  v3[21] = kAXSGrayscaleEnabledPreference;
  v3[22] = kAXSDisplayFilterShowInitialAlertPreference;
  v3[23] = kAXSSpeakCorrectionsEnabledPreference;
  v3[24] = kAXSCachedBrightnessFiltersPreference;
  v3[25] = kAXSMonoAudioEnabledPreference;
  v3[26] = kAXSScreenConstrastPreference;
  v3[27] = kAXSPreferredFontSizePreference;
  v3[28] = kAXSDefaultRouteForCallPreference;
  v3[29] = kAXSLeftRightBalancePreference;
  v3[30] = kAXSEarpieceNoiseCancellationPreference;
  v3[31] = kAXSExtendedVoiceIsolationMediaModesEnabledPreference;
  v3[32] = kAXSPhoneLockToEndCallPreference;
  v3[33] = kAXSSoftwareTTYPreference;
  v3[34] = kAXSHomeButtonAssistantPreference;
  v3[35] = kAXSQuickSpeakEnabledPreference;
  v3[36] = kAXSQuickSpeakHighlightTextEnabledPreference;
  v3[37] = kAXSQuickSpeakLocaleForLanguagePreference;
  v3[38] = kAXSSpeakThisEnabledPreference;
  v3[39] = kAXSVisualAlertEnabledPreference;
  v3[40] = kAXSVoiceOverTouchEnabledPreference;
  v3[41] = kAXSVoiceOverTouchSpeakingRatePreference;
  v3[42] = kAXSVoiceOverTouchVolumePreference;
  v3[43] = kAXSVoiceOverTouchUsageConfirmedPreference;
  v3[44] = kAXSVoiceOverTouchUserHasReadNoHomeButtonGesturePreference;
  v3[45] = kAXSVoiceOverTouchScreenCurtainPreference;
  v3[46] = kAXSVoiceOverTouchLanguageRotorPreference;
  v3[47] = kAXSVoiceOverTouchTypingModePreference;
  v3[48] = kAXSVoiceOverTouchUIEnabledPreference;
  v3[49] = kAXSVoiceOverTouchSpeakTimeOnWakePreference;
  v3[50] = kAXSWalkieTalkieTapToTalkPreference;
  v3[51] = kAXSAppSwitcherAutoSelectPreference;
  v3[52] = kAXSWebAccessibilityEventsEnabledPreference;
  v3[53] = kAXSVoiceOverTouchShouldRouteToSpeakerWithProximityPreference;
  v3[54] = kAXSVoiceOverTouchHapticIntensityPreference;
  v3[55] = kAXSVoiceOverTouchMediaDuckingModePreference;
  v3[56] = kAXSBrailleScreenInputEnabledPreference;
  v3[57] = kAXSLiveSpeechEnabledPreference;
  v3[58] = kAXSHoverTextEnabledPreference;
  v3[59] = kAXSHoverTextTypingEnabledPreference;
  v3[60] = kAXSHoverTextTypingDisplayModePreference;
  v3[61] = kAXSHoverTextTypingFontNamePreference;
  v3[62] = kAXSHoverTextTypingTextColorDataPreference;
  v3[63] = kAXSHoverTextTypingInsertionPointColorDataPreference;
  v3[64] = kAXSHoverTextTypingBackgroundColorDataPreference;
  v3[65] = kAXSHoverTextTypingBorderColorDataPreference;
  v3[66] = kAXSHoverTextTypingTextStylePreference;
  v3[67] = kAXSHoverTextTypingMisspelledTextColorDataPreference;
  v3[68] = kAXSHoverTextTypingAutocorrectedTextColorDataPreference;
  v3[69] = kAXSHoverTextFontSizePreference;
  v3[70] = kAXSHoverTextBackgroundOpacityPreference;
  v3[71] = kAXSHoverTextDisplayModePreference;
  v3[72] = kAXSHoverTextFontNamePreference;
  v3[73] = kAXSHoverTextTextColorDataPreference;
  v3[74] = kAXSHoverTextInsertionPointColorDataPreference;
  v3[75] = kAXSHoverTextBackgroundColorDataPreference;
  v3[76] = kAXSHoverTextBorderColorDataPreference;
  v3[77] = kAXSHoverTextContentSizePreference;
  v3[78] = kAXSZoomTouchEnabledPreference;
  v3[79] = kAXSZoomSpeakUnderFingerEnabledPreference;
  v3[80] = kAXSEnhanceTextLegibilityPreference;
  v3[81] = kAXSEnhanceTextTrackingPreference;
  v3[82] = kAXSEnhanceBackgroundContrastPreference;
  v3[83] = kAXSReduceMotionPreference;
  v3[84] = kAXSReduceMotionAutoplayAnimatedImagesPreference;
  v3[85] = kAXSDifferentiateWithoutColorPreference;
  v3[86] = kAXSReduceMotionAutoplayMessagesEffectsPreference;
  v3[87] = kAXSReduceMotionAutoplayVideoPreviewsPreference;
  v3[88] = kAXSReduceMotionReduceSlideTransitionsPreference;
  v3[89] = kAXSIncreaseButtonLegibilityPreference;
  v3[90] = kAXSButtonShapesEnabledPreference;
  v3[91] = kAXSUseDarkerKeyboardPreference;
  v3[92] = kAXSDarkenSystemColorsEnabledPreference;
  v3[93] = kAXSHighContrastFocusIndicatorsEnabledPreference;
  v3[94] = kAXSUseSingleSystemColorPreference;
  v3[95] = kAXSNamedSystemColorChoicePreference;
  v3[96] = kAXSLowerCaseKeyboardEnabledPreference;
  v3[97] = kAXSShakeToUndoDisabledPreference;
  v3[98] = kAXSVibrationDisabledPreference;
  v3[99] = kAXSForceTouchEnabledPreference;
  v3[100] = kAXSForceTouchSensitivityPreference;
  v3[101] = kAXSForceTouchTimingPreference;
  v3[102] = kAXSSlowKeysEnabledPreference;
  v3[103] = kAXSSlowKeysAcceptanceDelayPreference;
  v3[104] = kAXSKeyRepeatEnabledPreference;
  v3[105] = kAXSKeyRepeatIntervalPreference;
  v3[106] = kAXSKeyRepeatDelayPreference;
  v3[107] = kAXSQuickTypePredictionFeedbackEnabledPreference;
  v3[108] = kAXSWordFeedbackEnabledPreference;
  v3[109] = kAXSLetterFeedbackEnabledPreference;
  v3[110] = kAXSPhoneticFeedbackEnabledPreference;
  v3[111] = kAXSPointerAllowAppCustomizationEnabledPreference;
  v3[112] = kAXSPointerInertiaEnabledPreference;
  v3[113] = kAXSPointerEffectScalingEnabledPreference;
  v3[114] = kAXSPointerSizeMultiplierPreference;
  v3[115] = kAXSPointerIncreasedContrastEnabledPreference;
  v3[116] = kAXSPointerAutoHideEnabledPreference;
  v3[117] = kAXSPointerAutoHideDurationPreference;
  v3[118] = kAXSPointerStrokeColorPreference;
  v3[119] = kAXSPointerStrokeColorWidthPreference;
  v3[120] = kAXSVoiceOverSpeakUnderPointerPreference;
  v3[121] = kAXSVoiceOverSpeakUnderPointerDelayPreference;
  v3[122] = kAXSPointerVoiceOverCursorOptionPreference;
  v3[123] = kAXSPointerScaleWithZoomLevelEnabledPreference;
  v3[124] = kAXSShowAudioTranscriptionsEnabled;
  v3[125] = kAXSWatchTypeToSiriEnabledPreference;
  v3[126] = kAXSWatchQuickActionsStatePreference;
  v3[127] = kAXSWatchQuickActionBannerAppearancePreference;
  v3[128] = kAXSIncreaseBrightnessFloorEnabledPreference;
  v3[129] = kAXSVoiceOverTouchTutorialUsageConfirmedPreference;
  v3[130] = kAXSAppleTVSimpleGesturesEnabledPreference;
  v3[131] = kAXSAppleTVForceLiveTVButtonsEnabledPreference;
  v3[132] = kAXSAppleTVRemoteClickpadTapsForDirectionalNavigationEnabledPreference;
  v3[133] = kAXSAppleTVScaledUIEnabledPreference;
  v3[134] = kAXSAutomaticSubtitlesShowWhenLanguageMismatchPreference;
  v3[135] = kAXSAutomaticSubtitlesShowWhenMutedPreference;
  v3[136] = kAXSAutomaticSubtitlesShowOnSkipBackPreference;
  v3[137] = kLargeTextUsesExtendedRange;
  v3[138] = @"AXSAllowsMixToUplinkPreference";
  v3[139] = @"PhotosensitiveMitigation";
  v3[140] = kAXSAlwaysShowVolumeControlEnabledPreference;
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:141];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void sub_18631ADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _axsHandleSystemUILoadInvertBundles()
{
  if (_AXSProcessLoadsInvertBundlesForPerAppSmartInvert())
  {
    v0 = AXLogInvertColorsLoadBundles();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
    {
      _axsHandleSystemUILoadInvertBundles_cold_1();
    }

    if ((_kAXSystemUIProcessShouldLoadInvertBundles & 1) == 0)
    {
      if (_AXSProcessIsSpringBoard_onceToken != -1)
      {
        _axsHandleSystemUILoadInvertBundles_cold_2();
      }

      if (_AXSProcessIsSpringBoard__AXSProcessIsSpringBoard == 1)
      {
        v1 = AXLogInvertColorsLoadBundles();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          *v3 = 0;
          _os_log_impl(&dword_186307000, v1, OS_LOG_TYPE_DEFAULT, "Saving SystemUIProcessShouldLoadInvertBundles as true", v3, 2u);
        }

        CFPreferencesSetValue(@"AXSSystemUIProcessAppSmartInvertEnabledPreference", *MEMORY[0x1E695E4D0], kAXSAccessibilityPreferenceDomain, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      }
    }

    _kAXSystemUIProcessShouldLoadInvertBundles = 1;
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, kAXSInvertColorsEnabledNotification, 0, 0, 1u);
  }
}

uint64_t _AXSShouldLoadInvertBundles()
{
  if (_AXSShouldLoadInvertBundles_onceToken != -1)
  {
    _AXSShouldLoadInvertBundles_cold_1();
  }

  return _kAXSystemUIProcessShouldLoadInvertBundles;
}

uint64_t AXSGetCachedSmartInvert()
{
  if (AXSGetCachedSmartInvert_onceToken != -1)
  {
    AXSGetCachedSmartInvert_cold_1();
  }

  return _kAXSCacheInvertColors;
}

uint64_t _AXSVideosPreferenceDomain()
{
  if (_AXSVideosPreferenceDomain_onceToken != -1)
  {
    _AXSVideosPreferenceDomain_cold_1();
  }

  return _AXSVideosPreferenceDomain_Domain;
}

uint64_t _AXSAccessibilityPreferenceDomain()
{
  if (_AXSAccessibilityPreferenceDomain_onceToken != -1)
  {
    _AXSAccessibilityPreferenceDomain_cold_1();
  }

  return _AXSAccessibilityPreferenceDomain_Domain;
}

uint64_t _AXSHearingAidsPaired()
{
  if (_AXSHearingAidsPaired_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_4();
  }

  return _kAXSCacheHearingAidPaired;
}

uint64_t _AXSLocalizationCaptionMode()
{
  if (_AXSLocalizationCaptionMode_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_6();
  }

  return _kAXSCacheLocalizationCaptionModeEnabled;
}

uint64_t _AXSClipTracerAccessibilityModeEnabled()
{
  if (_AXSClipTracerAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_7();
  }

  return _kAXSCacheClipTracerAccessibilityModeEnabled;
}

uint64_t _AXSNocturneAccessibilityModeEnabled()
{
  if (_AXSNocturneAccessibilityModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_8();
  }

  return _kAXSCacheNocturneAccessibilityModeEnabled;
}

uint64_t _AXSAuditInspectionModeEnabled()
{
  if (_AXSAuditInspectionModeEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_9();
  }

  return _kAXSCacheAuditInspectionModeModeEnabled;
}

uint64_t _AXSCommandAndControlCarPlayEnabled()
{
  if (_AXSCommandAndControlCarPlayEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_11();
  }

  return _kAXSCacheCommandAndControlCarPlayEnabled;
}

uint64_t _AXSWatchControlEnabled()
{
  if (_AXSWatchControlEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_13();
  }

  return _kAXSCacheWatchControlEnabled;
}

uint64_t _AXSHoverTextTypingEnabled()
{
  if (_AXSHoverTextTypingEnabled_onceToken != -1)
  {
    _updateAccessibilitySettings_cold_14();
  }

  return _kAXSCacheHoverTextTypingEnabled;
}

const __CFBoolean *_AXSBackgroundSoundsEnabled()
{
  result = _copyValuePreferenceApp(@"comfortSoundsEnabled", @"com.apple.ComfortSounds", 0);
  if (result)
  {
    v1 = result;
    Value = CFBooleanGetValue(result);
    CFRelease(v1);
    return Value;
  }

  return result;
}

void _AXSAccessibilitySetiTunesPreference(__CFString *a1, void *a2)
{
  _setPreferenceAppWithNotification(a1, 0, a2, [(__CFString *)a1 stringByAppendingString:@".notification"]);
  v5 = a2;
  if (CFEqual(a1, kAXSVoiceOverTouchEnabledByiTunesPreference))
  {
    _kAXSCacheVoiceOverTouchEnabled = [v5 BOOLValue];
  }

  else if (CFEqual(a1, kAXSZoomTouchEnabledByiTunesPreference))
  {
    _kAXSCacheZoomTouchEnabled = [v5 BOOLValue];
  }

  else if (CFEqual(a1, kAXSInvertColorsEnabledByiTunesPreference))
  {
    _AXSInvertColorsSetEnabled([v5 BOOLValue]);
  }

  else if (CFEqual(a1, kAXSMonoAudioEnabledByiTunesPreference))
  {
    _kAXSCacheMonoAudioEnabled = [v5 BOOLValue];
  }

  else if (CFEqual(a1, kAXSAssistiveTouchEnabledByiTunesPreference))
  {
    _kAXSAssistiveTouchEnabledCache = [v5 BOOLValue];
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, kAXSiTunesAccessibilityStatusChangedNotification, 0, 0, 1u);
}

void _AXSInvertColorsSetEnabled(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AXLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:a1];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_186307000, v2, OS_LOG_TYPE_DEFAULT, "Set invert colors enabled: %@", &v6, 0xCu);
  }

  _kAXSCacheInvertColorsGlobal = a1 != 0;
  _AXSInvertColorsSetEnabledApp(a1 != 0, 0);
  _AXSInvertColorsDisplaySetEnabled(a1);
  LOBYTE(v6) = 0;
  BooleanPreference = _getBooleanPreference(kAXSInvertColorsEnabledByiTunesPreference, &v6);
  if (v6 && BooleanPreference != a1)
  {
    _setPreferenceAppWithNotification(kAXSInvertColorsEnabledByiTunesPreference, 0, 0, 0);
    _updateAccessibilitySettings();
  }

  v5 = *MEMORY[0x1E69E9840];
}

CFNumberRef _AXSAccessibilityCopyiTunesPreference(const void *a1)
{
  valuePtr = 0;
  if (!CFEqual(a1, kAXSVoiceOverTouchEnabledByiTunesPreference))
  {
    if (CFEqual(a1, kAXSZoomTouchEnabledByiTunesPreference))
    {
      if (_AXSZoomTouchEnabled_onceToken != -1)
      {
        _updateAccessibilitySettings_cold_1();
      }

      v3 = _kAXSCacheZoomTouchEnabled;
    }

    else
    {
      if (CFEqual(a1, kAXSInvertColorsEnabledByiTunesPreference))
      {
        AppBooleanValue = _AXSInvertColorsEnabled();
        goto LABEL_3;
      }

      if (CFEqual(a1, kAXSMonoAudioEnabledByiTunesPreference))
      {
        if (_AXSMonoAudioEnabled_onceToken != -1)
        {
          _AXSAccessibilityCopyiTunesPreference_cold_2();
        }

        v3 = _kAXSCacheMonoAudioEnabled;
      }

      else
      {
        if (!CFEqual(a1, kAXSAssistiveTouchEnabledByiTunesPreference))
        {
          if (CFEqual(a1, kAXSSpeakAutoCorrectionsEnabledByiTunesPreference))
          {
            AppBooleanValue = CFPreferencesGetAppBooleanValue(kAXSSpeakCorrectionsEnabledPreference, kAXSAccessibilityPreferenceDomain, 0);
          }

          else
          {
            if (!CFEqual(a1, kAXSClosedCaptioningEnabledByiTunesPreference))
            {
              return CFNumberCreate(0, kCFNumberCharType, &valuePtr);
            }

            AppBooleanValue = _AXSClosedCaptionsEnabled();
          }

          goto LABEL_3;
        }

        if (_AXSAssistiveTouchEnabled_onceToken != -1)
        {
          _updateAccessibilitySettings_cold_2();
        }

        v3 = _kAXSAssistiveTouchEnabledCache;
      }
    }

    valuePtr = v3;
    return CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  }

  AppBooleanValue = _AXSVoiceOverTouchEnabled();
LABEL_3:
  valuePtr = AppBooleanValue;
  return CFNumberCreate(0, kCFNumberCharType, &valuePtr);
}

void _removePreference(const __CFString *a1, const __CFString *a2)
{
  _setPreferenceAppWithNotification(a1, 0, 0, a2);

  _updateAccessibilitySettings();
}

void _AXSetPreferenceWithNotification(const __CFString *a1, const void *a2, const __CFString *a3)
{
  _setPreferenceAppWithNotification(a1, 0, a2, a3);

  _updateAccessibilitySettings();
}