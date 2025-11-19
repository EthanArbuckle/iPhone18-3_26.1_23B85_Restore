void sub_27425FD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromWGWidgetPinningTeachingAnimationViewState(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"none";
  }

  else
  {
    return off_279ED0878[a1 - 1];
  }
}

void sub_274260E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id WGWidgetVisibilityManagerFirstPartyAvocadoBlackList()
{
  if (WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_onceToken != -1)
  {
    WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_cold_1();
  }

  v1 = WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_avocadoBlackList;

  return v1;
}

void sub_274261C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_block_invoke()
{
  v0 = WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_avocadoBlackList;
  WGWidgetVisibilityManagerFirstPartyAvocadoBlackList_avocadoBlackList = &unk_28834F100;
}

double _WGMainScreenScale()
{
  if (_WGMainScreenScale_onceToken != -1)
  {
    _WGMainScreenScale_cold_1();
  }

  return *&_WGMainScreenScale___mainScreenScale;
}

uint64_t _WGGraphicsQuality()
{
  if (_WGGraphicsQuality_onceToken != -1)
  {
    _WGGraphicsQuality_cold_1();
  }

  return _WGGraphicsQuality___graphicsQuality;
}

uint64_t _WGSupportsMetal()
{
  if (_WGSupportsMetal_onceToken != -1)
  {
    _WGSupportsMetal_cold_1();
  }

  return _WGSupportsMetal___supportsMetal;
}

uint64_t _WGSupportsASTC()
{
  if (_WGSupportsASTC_onceToken != -1)
  {
    _WGSupportsASTC_cold_1();
  }

  return _WGSupportsASTC___supportsASTC;
}

__CFString *WGStringForAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_279ED0970[a1];
  }
}

__CFString *WGStringFromUserInterfaceStyle(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"[Unknown]";
  }

  else
  {
    return off_279ED0990[a1];
  }
}

void *WGSafeCast(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

id WGCachedNSHomeDirectory()
{
  if (WGCachedNSHomeDirectory_onceToken != -1)
  {
    WGCachedNSHomeDirectory_cold_1();
  }

  v1 = WGCachedNSHomeDirectory___homeDir;

  return v1;
}

uint64_t __WGCachedNSHomeDirectory_block_invoke()
{
  WGCachedNSHomeDirectory___homeDir = NSHomeDirectory();

  return MEMORY[0x2821F96F8]();
}

id WGCachesPathForSandboxPath(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = WGCachedNSHomeDirectory();
  }

  v2 = [v1 stringByAppendingPathComponent:@"Library/Caches"];

  return v2;
}

void WGEnsureDirectoryExistsAtPath(void *a1)
{
  v3 = a1;
  v1 = mkdir([v3 fileSystemRepresentation], 0x1FFu);
  if (v1 && (v1 != -1 || *__error() != 17))
  {
    v2 = [MEMORY[0x277CCAA00] defaultManager];
    [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:0];
  }
}

id WGWidgetsFrameworkBundle()
{
  if (WGWidgetsFrameworkBundle___once != -1)
  {
    WGWidgetsFrameworkBundle_cold_1();
  }

  v1 = WGWidgetsFrameworkBundle___bundle;

  return v1;
}

uint64_t __WGWidgetsFrameworkBundle_block_invoke()
{
  WGWidgetsFrameworkBundle___bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.widgets"];

  return MEMORY[0x2821F96F8]();
}

double WGConvertDampingRatioResponseToMassStiffnessDamping(void *a1, double *a2, double *a3, double result, double a5)
{
  v5 = 6.28318531 / a5;
  if (a1)
  {
    *a1 = 0x3FF0000000000000;
  }

  v6 = v5 * v5;
  if (a2)
  {
    *a2 = v6;
  }

  if (a3)
  {
    v7 = sqrt(v6);
    result = (v7 + v7) * result;
    *a3 = result;
  }

  return result;
}

void WGConvertTensionAndFrictionToDampingRatioResponseAndSettlingDuration(double *a1, double *a2, void *a3, double a4, double a5)
{
  v10 = sqrt(a4);
  if (v10 + v10 < a5)
  {
    WGConvertTensionAndFrictionToDampingRatioResponseAndSettlingDuration_cold_1(a4, a5);
  }

  v12 = [MEMORY[0x277CD9FA0] animation];
  [v12 setMass:1.0];
  [v12 setStiffness:a4];
  [v12 setDamping:a5];
  [v12 settlingDuration];
  if (a1)
  {
    *a1 = a5 / (v10 + v10);
  }

  if (a2)
  {
    *a2 = 6.28318531 / v10;
  }

  if (a3)
  {
    *a3 = v11;
  }
}

NSObject *_WGIsQueueSuspended(NSObject *result)
{
  if (result)
  {
    return (dispatch_queue_get_specific(result, "_WGQueueIsSuspended") != 0);
  }

  return result;
}

uint64_t _WGSuspendQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    object = v1;
    if (!dispatch_queue_get_specific(v1, "_WGQueueIsSuspended"))
    {
      dispatch_suspend(object);
      dispatch_queue_set_specific(object, "_WGQueueIsSuspended", 1, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t _WGResumeQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    object = v1;
    if (dispatch_queue_get_specific(v1, "_WGQueueIsSuspended"))
    {
      dispatch_resume(object);
      dispatch_queue_set_specific(object, "_WGQueueIsSuspended", 0, 0);
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t _WGDataSourceIsEqualToDataSource(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 dataSourceIdentifier];
      v8 = [v5 dataSourceIdentifier];
      v6 = [v7 isEqual:v8];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

void sub_274264B0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274264D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void WGWidgetPersistentStateResetHasContent(void *a1)
{
  v3 = WGPersistedStateURLForWidgetWithBundleIdentifier(a1, 0);
  v1 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:?];
  v2 = [v1 objectForKey:@"SBWidgetViewControllerHasContentKey"];

  if (v2)
  {
    [v1 removeObjectForKey:@"SBWidgetViewControllerHasContentKey"];
    [v1 writeToURL:v3 atomically:1];
  }
}

void sub_274268A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2742697D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27426A658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27426CA18(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27426D7AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_27426ED38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_27426F09C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

__CFString *WGStringFromWidgetLifeCycleSequenceState(unint64_t a1)
{
  if (a1 > 6)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_279ED0EB8[a1];
  }
}

id WGApplicationIdentifierForWidgetWithBundleIdentifier(void *a1)
{
  v1 = MEMORY[0x277CC1ED8];
  v2 = a1;
  v3 = [v1 pluginKitProxyForIdentifier:v2];
  v4 = [v2 hasPrefix:@"com.apple."];

  if (v4)
  {
    v5 = [v3 objectForInfoDictionaryKey:@"NCWidgetAssociatedApplicationIdentifier" ofClass:objc_opt_class()];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v7 = [v3 containingBundle];
    v6 = [v7 bundleIdentifier];
  }

  return v6;
}

id WGContainingBundleProxyForWidgetWithBundleIdentifer(uint64_t a1)
{
  v1 = [MEMORY[0x277CC1ED8] pluginKitProxyForIdentifier:a1];
  v2 = [v1 containingBundle];

  return v2;
}

id WGContainingBundleIdentifierForWidgetWithBundleIdentifier(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = WGContainingBundleProxyForWidgetWithBundleIdentifer(v1);
    v3 = [v2 bundleIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id WGContainingBundleCachePathForWidgetWithContainingBundleIdentifier(uint64_t a1, void *a2, int a3)
{
  v5 = MEMORY[0x277CC1E60];
  v6 = a2;
  v7 = [v5 applicationProxyForIdentifier:a1];
  v8 = [v7 dataContainerURL];
  v9 = [v8 path];
  v10 = WGCachesPathForSandboxPath(v9);

  v11 = [v10 stringByAppendingPathComponent:@"com.apple.notificationcenter"];
  v12 = [v11 stringByAppendingPathComponent:v6];

  if (a3)
  {
    WGEnsureDirectoryExistsAtPath(v12);
  }

  return v12;
}

id WGWidgetCachePathForWidgetWithBundleIdentifier(uint64_t a1, void *a2, int a3)
{
  v5 = MEMORY[0x277CC1ED8];
  v6 = a2;
  v7 = [v5 pluginKitProxyForIdentifier:a1];
  v8 = [v7 dataContainerURL];
  v9 = [v8 path];
  v10 = WGCachesPathForSandboxPath(v9);

  v11 = [v10 stringByAppendingPathComponent:@"com.apple.notificationcenter"];
  v12 = [v11 stringByAppendingPathComponent:v6];

  if (a3)
  {
    WGEnsureDirectoryExistsAtPath(v12);
  }

  return v12;
}

BOOL _WGIsSystemVersionSameOrAfterSystemVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 length] && objc_msgSend(v4, "length") && objc_msgSend(v3, "compare:options:", v4, 64) < 2;

  return v5;
}

BOOL WGIsWidgetWithBundleIdentifierBuiltOnOrAfterSystemVersion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = MEMORY[0x277CC1E60];
  v6 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(v3);
  v7 = [v5 applicationProxyForIdentifier:v6];

  v8 = [v7 sdkVersion];
  if (![v8 length] && objc_msgSend(v3, "hasPrefix:", @"com.apple."))
  {
    v9 = +[WGWidgetInfo _productVersion];

    v8 = v9;
  }

  v10 = _WGIsSystemVersionSameOrAfterSystemVersion(v8, v4);

  return v10;
}

uint64_t WGIsBundleWithIdentifierInternal(void *a1)
{
  v1 = a1;
  if (WGIsBundleWithIdentifierInternal_onceToken != -1)
  {
    WGIsBundleWithIdentifierInternal_cold_1();
  }

  if (WGIsBundleWithIdentifierInternal___isInternalInstall == 1 && [v1 length])
  {
    v2 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:v1];
    v3 = [v2 bundleURL];
    v4 = [v3 path];
    v5 = [v4 pathComponents];
    v6 = [v5 containsObject:@"AppleInternal"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __WGIsBundleWithIdentifierInternal_block_invoke()
{
  result = MGGetBoolAnswer();
  WGIsBundleWithIdentifierInternal___isInternalInstall = result;
  return result;
}

uint64_t WGIsWidgetWithBundleIdentifierInternal(uint64_t a1)
{
  v1 = WGContainingBundleProxyForWidgetWithBundleIdentifer(a1);
  v2 = [v1 bundleIdentifier];
  v3 = WGIsBundleWithIdentifierInternal(v2);

  return v3;
}

uint64_t WGIsWidgetWithBundleIdentifierWantsTop(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple."])
  {
    v2 = _WGBoolValueForInfoDictionaryKey(v1, @"NCWidgetWantsTop");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _WGBoolValueForInfoDictionaryKey(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CC1E88];
  v4 = a2;
  v5 = [v3 bundleProxyForIdentifier:a1];
  v6 = [v5 objectForInfoDictionaryKey:v4 ofClass:objc_opt_class()];

  v7 = [v6 BOOLValue];
  return v7;
}

id WGPlugInBundleIdentifiersForContainingBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v1];
  if (v2)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__1;
    v11 = __Block_byref_object_dispose__1;
    v12 = [MEMORY[0x277CBEB18] array];
    v3 = [v2 plugInKitPlugins];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __WGPlugInBundleIdentifiersForContainingBundleIdentifier_block_invoke;
    v6[3] = &unk_279ED0F20;
    v6[4] = &v7;
    [v3 enumerateObjectsUsingBlock:v6];

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_274272740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WGPlugInBundleIdentifiersForContainingBundleIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  if ([v3 length])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }
}

void sub_274273864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_274273B0C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_27427570C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274277DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id smoothDecelerationAnimation(double a1)
{
  v2 = objc_opt_new();
  v5 = 0.0;
  v6 = 0.0;
  v4 = 0.0;
  WGConvertDampingRatioResponseToMassStiffnessDamping(&v6, &v5, &v4, 1.0, 0.8);
  [v2 setMass:v6];
  [v2 setStiffness:v5];
  [v2 setDamping:v4];
  [v2 durationForEpsilon:1.17549435e-38];
  [v2 setDuration:?];
  [v2 setInitialVelocity:a1];

  return v2;
}

void sub_27427AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27427B0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v5, OS_LOG_TYPE_DEBUG, a4, v4, 0xCu);
}

void sub_27427EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_27427FB34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_274280BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_274280F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2742829D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WGTodayViewArchiveSave(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v5];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __WGTodayViewArchiveSave_block_invoke;
    v11[3] = &unk_279ED14A8;
    v12 = v9;
    v13 = v8;
    v10 = v9;
    dispatch_async(v6, v11);
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __WGTodayViewArchiveSave_block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = [@"~/Library/SpringBoard/TodayViewArchive.plist" stringByExpandingTildeInPath];
  v3 = [*(a1 + 32) objectForKey:@"Known"];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [v3 allObjects];
    [v5 setObject:v6 forKey:@"Known"];
  }

  v7 = [*(a1 + 32) objectForKey:@"Penalized"];
  v8 = v7;
  if (v7)
  {
    v9 = *(a1 + 32);
    v10 = [v7 allObjects];
    [v9 setObject:v10 forKey:@"Penalized"];
  }

  v11 = [*(a1 + 32) objectForKey:@"FavoriteGroup"];
  if (v11)
  {
    [*(a1 + 32) setObject:v11 forKey:@"FavoriteGroup"];
  }

  v12 = [*(a1 + 32) writeToFile:v2 atomically:1];
  if (v12)
  {
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = *MEMORY[0x277CCA1B0];
    v17[0] = *MEMORY[0x277CCA1B8];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v13 setAttributes:v14 ofItemAtPath:v2 error:0];
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    (*(v15 + 16))(v15, v12);
  }
}

void WGTodayViewArchiveMigrateArchiveFromLegacy()
{
  v27 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB38];
  v1 = [@"~/Library/SpringBoard/TodayViewArchive.plist" stringByExpandingTildeInPath];
  v2 = [v0 dictionaryWithContentsOfFile:v1];

  if (!v2)
  {
    v3 = BBSavedChronologicalSectionOrder();
    v4 = BBSavedSectionInfo();
    if ([v3 count] && objc_msgSend(v4, "count"))
    {
      v5 = [@"~/Library/SpringBoard/KnownWidgets.plist" stringByExpandingTildeInPath];
      v6 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v5];
      v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = [MEMORY[0x277CBEB18] array];
      v8 = [MEMORY[0x277D75418] currentDevice];
      [v8 userInterfaceIdiom];

      WGTodayViewArchiveSetOrderedIdentifiersInGroup(v2, v3, @"TodayGroup", 0);
      v9 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(v2, @"TodayGroup");
      v10 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(v2, @"WidgetGroup");
      v11 = [v9 arrayByAddingObjectsFromArray:v10];
      v12 = [v6 arrayByAddingObjectsFromArray:v11];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v23;
        do
        {
          v17 = 0;
          do
          {
            if (*v23 != v16)
            {
              objc_enumerationMutation(v13);
            }

            WGTodayViewArchiveSetKnownForIdentifier(v2, *(*(&v22 + 1) + 8 * v17++), 0);
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v15);
      }

      if ([v7 count])
      {
        [v2 setObject:v7 forKey:@"DefaultEnabled"];
      }

      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __WGTodayViewArchiveMigrateArchiveFromLegacy_block_invoke;
      v19[3] = &unk_279ED14D0;
      v20 = v4;
      v21 = v5;
      v18 = v5;
      WGTodayViewArchiveSave(v2, MEMORY[0x277D85CD0], v19);
    }

    else
    {
      v2 = 0;
    }
  }
}

void WGTodayViewArchiveSetOrderedIdentifiersInGroup(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v7 && v8 && _WGTodayViewArchiveIsValidGroupKey(v9))
  {
    [v7 setObject:v8 forKey:v9];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          WGTodayViewArchiveSetKnownForIdentifier(v7, *(*(&v16 + 1) + 8 * v15++), 0);
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v13);
    }

    if (v10)
    {
      WGTodayViewArchiveSave(v7, v10, 0);
    }
  }
}

id WGTodayViewArchiveGetOrderedIdentifiersInGroup(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !_WGTodayViewArchiveIsValidGroupKey(v4) || ([v3 objectForKey:v5], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = [MEMORY[0x277CBEA60] array];
  }

  return v6;
}

void WGTodayViewArchiveSetKnownForIdentifier(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (v8 && [v5 length])
  {
    v7 = [v8 objectForKey:@"Known"];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [v8 setObject:v7 forKey:@"Known"];
    }

    [v7 addObject:v5];
    if (v6)
    {
      WGTodayViewArchiveSave(v8, v6, 0);
    }
  }
}

void __WGTodayViewArchiveMigrateArchiveFromLegacy_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    BBRemoveSavedChronologicalSectionInfo();
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    [v3 removeItemAtPath:*(a1 + 40) error:0];
  }
}

id WGTodayViewArchiveGetArchive(void *a1, void *a2)
{
  v85 = *MEMORY[0x277D85DE8];
  v65 = a1;
  v64 = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = [@"~/Library/SpringBoard/TodayViewArchive.plist" stringByExpandingTildeInPath];
  v67 = [v3 dictionaryWithContentsOfFile:v4];

  if (v67)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v63 = [v67 objectForKey:@"Known"];
    if (v63)
    {
      v6 = [MEMORY[0x277CBEB58] setWithArray:v63];
      [v5 setObject:v6 forKey:@"Known"];
    }

    v62 = [v67 objectForKey:@"Penalized"];
    if (v62)
    {
      v7 = [MEMORY[0x277CBEB58] setWithArray:v62];
      [v5 setObject:v7 forKey:@"Penalized"];
    }

    v8 = [v67 objectForKey:@"DisplayMode"];
    v59 = v8;
    if (v8)
    {
      v9 = [v8 mutableCopy];
      [v5 setObject:v9 forKey:@"DisplayMode"];
    }

    v58 = [v67 objectForKey:@"TodayGroup"];
    if (v58)
    {
      [v5 setObject:v58 forKey:@"TodayGroup"];
    }

    v57 = [v67 objectForKey:@"WidgetGroup"];
    if (v57)
    {
      [v5 setObject:v57 forKey:@"WidgetGroup"];
    }

    v56 = [v67 objectForKey:@"DefaultEnabled"];
    if (v56)
    {
      [v65 addObjectsFromArray:?];
    }

    v55 = [v67 objectForKey:@"FavoriteGroup"];
    if (v55)
    {
      [v5 setObject:v55 forKey:@"FavoriteGroup"];
    }

    v10 = [MEMORY[0x277D75418] currentDevice];
    [v10 userInterfaceIdiom];
    v11 = v5;
    v12 = v65;
    v13 = v64;
    v14 = v13;
    if (v11)
    {
      v15 = [v11 objectForKey:@"WidgetGroup"];

      if (v15)
      {
        v16 = [v11 objectForKey:@"TodayGroup"];
        v17 = v16;
        if (v16)
        {
          v18 = [v16 mutableCopy];
        }

        else
        {
          v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        v23 = v18;
        v24 = [v11 objectForKey:@"WidgetGroup"];
        if ([v24 count])
        {
          [v23 addObjectsFromArray:v24];
        }

        WGTodayViewArchiveSetOrderedIdentifiersInGroup(v11, v23, @"TodayGroup", 0);
        [v11 removeObjectForKey:@"WidgetGroup"];

        WGTodayViewArchiveSave(v11, v14, 0);
      }

      v25 = v11;
      v26 = v12;
      v27 = v14;
      v76 = 0;
      v77 = &v76;
      v78 = 0x2020000000;
      v79 = 0;
      v28 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(v25, @"TodayGroup");
      v29 = [v28 mutableCopy];
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = ___WGTodayViewArchiveMigrateWidgetIdentifiers_block_invoke;
      v80[3] = &unk_279ED14F8;
      v81 = &unk_28834F208;
      v84 = &v76;
      v30 = v29;
      v82 = v30;
      v83 = v26;
      [v28 enumerateObjectsUsingBlock:v80];
      if (*(v77 + 24) == 1)
      {
        WGTodayViewArchiveSetOrderedIdentifiersInGroup(v25, v30, @"TodayGroup", v27);
      }

      _Block_object_dispose(&v76, 8);
    }

    else
    {

      v21 = v12;
      v22 = v14;
    }

    v66 = v11;
    v61 = v12;
    v31 = v14;
    if (v11)
    {
      v53 = v31;
      v54 = [v61 copy];
      v32 = [MEMORY[0x277D75418] currentDevice];
      v60 = _WGTodayViewArchiveGetDefaultArchiveForIdiom([v32 userInterfaceIdiom]);

      v33 = _WGTodayViewArchiveGetEnabledIdentifiers(v60);
      v34 = [v33 mutableCopy];

      v35 = [v66 objectForKey:@"Known"];
      v36 = [v35 allObjects];

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v37 = v36;
      v38 = [v37 countByEnumeratingWithState:&v68 objects:&v76 count:16];
      if (v38)
      {
        v39 = *v69;
        do
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v69 != v39)
            {
              objc_enumerationMutation(v37);
            }

            [v34 removeObject:*(*(&v68 + 1) + 8 * i)];
          }

          v38 = [v37 countByEnumeratingWithState:&v68 objects:&v76 count:16];
        }

        while (v38);
      }

      if ([v34 count])
      {
        [v61 unionSet:v34];
        v51 = [v54 isEqualToSet:v61];
        v50 = _WGTodayViewArchiveMigrateOrderForNewDefaultWidgetsInGroup(v60, v66, v34, @"TodayGroup");
        v52 = _WGTodayViewArchiveMigrateOrderForNewDefaultWidgetsInGroup(v60, v66, v34, @"WidgetGroup");
        v41 = v60;
        v42 = v66;
        v43 = v34;
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v44 = [v43 countByEnumeratingWithState:&v72 objects:v80 count:16];
        if (v44)
        {
          v45 = 0;
          v46 = *v73;
          do
          {
            for (j = 0; j != v44; ++j)
            {
              if (*v73 != v46)
              {
                objc_enumerationMutation(v43);
              }

              v48 = *(*(&v72 + 1) + 8 * j);
              if (WGTodayViewArchiveGetDisplayModeForIdentifier(v41, v48) == 1)
              {
                WGTodayViewArchiveSetDisplayModeForIdentifier(v42, v48, 1, 0);
                v45 = 1;
              }
            }

            v44 = [v43 countByEnumeratingWithState:&v72 objects:v80 count:16];
          }

          while (v44);
          v52 |= v45;
        }

        if ((v52 | v50 | v51 ^ 1))
        {
          WGTodayViewArchiveSave(v42, v53, 0);
        }
      }

      v31 = v53;
    }
  }

  else
  {
    v19 = [MEMORY[0x277D75418] currentDevice];
    v66 = _WGTodayViewArchiveGetDefaultArchiveForIdiom([v19 userInterfaceIdiom]);

    v20 = _WGTodayViewArchiveGetEnabledIdentifiers(v66);
    if (v20)
    {
      [v65 unionSet:v20];
    }

    WGTodayViewArchiveSave(v66, v64, 0);
  }

  return v66;
}

id _WGTodayViewArchiveGetDefaultArchiveForIdiom(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = @"DefaultTodayViewArchive~ipad";
  if (a1 != 1)
  {
    v3 = 0;
  }

  if (!a1)
  {
    v3 = @"DefaultTodayViewArchive~iphone";
  }

  v4 = v3;
  if ([(__CFString *)v4 length])
  {
    v5 = WGWidgetsFrameworkBundle();
    v6 = [v5 pathForResource:v4 ofType:@"plist"];

    if (v6)
    {
      v7 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfFile:v6];

      v2 = v7;
    }
  }

  return v2;
}

id _WGTodayViewArchiveGetEnabledIdentifiers(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [v1 objectForKey:@"TodayGroup"];
  if (v3)
  {
    [v2 addObjectsFromArray:v3];
  }

  v4 = [v1 objectForKey:@"WidgetGroup"];
  if (v4)
  {
    [v2 addObjectsFromArray:v4];
  }

  return v2;
}

uint64_t _WGTodayViewArchiveIsValidGroupKey(void *a1)
{
  v1 = a1;
  if ([v1 isEqual:@"TodayGroup"] & 1) != 0 || (objc_msgSend(v1, "isEqual:", @"WidgetGroup"))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 isEqual:@"FavoriteGroup"];
  }

  return v2;
}

void _WGTodayViewArchiveRemoveFromOrderedIdentifiersInGroup(void *a1, void *a2, void *a3, void *a4)
{
  v12 = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v12 && [v7 length])
  {
    v10 = [v12 objectForKey:v8];
    if ([v10 containsObject:v7])
    {
      v11 = [v10 mutableCopy];
      [v11 removeObject:v7];
      WGTodayViewArchiveSetOrderedIdentifiersInGroup(v12, v11, v8, v9);
    }
  }
}

void WGTodayViewArchiveRemoveFromOrderedIdentifiers(void *a1, void *a2, void *a3)
{
  v7 = a1;
  v5 = a2;
  v6 = a3;
  if (v7 && [v5 length])
  {
    _WGTodayViewArchiveRemoveFromOrderedIdentifiersInGroup(v7, v5, @"TodayGroup", v6);
    _WGTodayViewArchiveRemoveFromOrderedIdentifiersInGroup(v7, v5, @"WidgetGroup", v6);
  }
}

uint64_t WGTodayViewArchiveGetKnownForIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"Known"];
  v5 = [v4 containsObject:v3];

  return v5;
}

void WGTodayViewArchiveSetPenalizedForIdentifier(void *a1, void *a2, void *a3)
{
  v8 = a1;
  v5 = a2;
  v6 = a3;
  if (v8 && [v5 length])
  {
    v7 = [v8 objectForKey:@"Penalized"];
    if (!v7)
    {
      v7 = [MEMORY[0x277CBEB58] set];
      [v8 setObject:v7 forKey:@"Penalized"];
    }

    [v7 addObject:v5];
    if (v6)
    {
      WGTodayViewArchiveSave(v8, v6, 0);
    }
  }
}

uint64_t WGTodayViewArchiveGetPenalizedForIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"Penalized"];
  v5 = [v4 containsObject:v3];

  return v5;
}

void WGTodayViewArchiveSetDisplayModeForIdentifier(void *a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a1;
  v7 = a2;
  v8 = a4;
  if (v11 && [v7 length])
  {
    v9 = [v11 objectForKey:@"DisplayMode"];
    if (!v9)
    {
      v9 = [MEMORY[0x277CBEB38] dictionary];
      [v11 setObject:v9 forKey:@"DisplayMode"];
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v9 setObject:v10 forKey:v7];

    if (v8)
    {
      WGTodayViewArchiveSave(v11, v8, 0);
    }
  }
}

uint64_t WGTodayViewArchiveGetDisplayModeForIdentifier(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 objectForKey:@"DisplayMode"];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 integerValue];
  return v6;
}

BOOL _WGTodayViewArchiveMigrateOrderForNewDefaultWidgetsInGroup(void *a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(v7, v10);
  if ([v12 count])
  {
    v23 = v7;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          if ([v9 containsObject:v18])
          {
            [v11 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v19 = [MEMORY[0x277CBEB18] array];
    v20 = WGTodayViewArchiveGetOrderedIdentifiersInGroup(v8, v10);
    if ([v20 count])
    {
      [v19 addObjectsFromArray:v20];
    }

    v7 = v23;
    if ([v11 count])
    {
      [v19 addObjectsFromArray:v11];
    }

    WGTodayViewArchiveSetOrderedIdentifiersInGroup(v8, v19, v10, 0);
  }

  v21 = [v11 count] != 0;

  return v21;
}

void sub_274287928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void WGRegisterWidgetsLogging()
{
  if (WGRegisterWidgetsLogging_onceToken != -1)
  {
    WGRegisterWidgetsLogging_cold_1();
  }
}

uint64_t __WGRegisterWidgetsLogging_block_invoke()
{
  v0 = os_log_create(WGLogSubsystem, "Widgets");
  v1 = WGLogWidgets;
  WGLogWidgets = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_274288920(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id WGPersistedStateURLForWidgetWithBundleIdentifier(void *a1, int a2)
{
  v3 = a1;
  if ([v3 length])
  {
    v4 = WGWidgetCachePathForWidgetWithBundleIdentifier(v3, @"State", a2);
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-state", v3];
    v6 = [v4 stringByAppendingPathComponent:v5];
    v7 = [v6 stringByAppendingPathExtension:@"plist"];

    if ([v7 length])
    {
      v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_274288F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NCXPCConnectionIsFromContainingAppOrWidgetWithIdentifier(void *a1, void *a2)
{
  v3 = a2;
  [a1 processIdentifier];
  v4 = BSBundleIDForPID();
  if ([v4 isEqual:v3])
  {
    v5 = 1;
  }

  else
  {
    v6 = WGContainingBundleIdentifierForWidgetWithBundleIdentifier(v3);
    v5 = [v4 isEqual:v6];
  }

  return v5;
}

__CFString *WGShortStringFromLayoutMode(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    return @"[Unknown]";
  }

  else
  {
    return off_279ED1670[a1 + 1];
  }
}

__CFString *WGStringFromLayoutMode(uint64_t a1)
{
  if ((a1 + 1) > 4)
  {
    v3 = @"[Unknown]";
  }

  else
  {
    v3 = [@"WGModalLayoutMode" stringByAppendingString:{off_279ED1670[a1 + 1], v1}];
  }

  return v3;
}

void sub_27428A620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  objc_destroyWeak((v8 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v9 - 40));
  _Unwind_Resume(a1);
}

void sub_27428A83C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_27428BC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WGRoundToMainScreenScale()
{
  _WGMainScreenScale();

  return BSFloatRoundForScale();
}

uint64_t WGRectRoundForMainScreenScale(double a1, double a2, double a3, double a4)
{
  v8.n128_u64[0] = _WGMainScreenScale();
  v9.n128_f64[0] = a1;
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;
  v12.n128_f64[0] = a4;

  return MEMORY[0x282143A60](v9, v10, v11, v12, v8);
}

double WGMainScreenReferenceBounds()
{
  if (WGMainScreenReferenceBounds_onceToken != -1)
  {
    WGMainScreenReferenceBounds_cold_1();
  }

  return *&WGMainScreenReferenceBounds___mainScreenReferenceBounds_0;
}

void __WGMainScreenReferenceBounds_block_invoke()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  WGMainScreenReferenceBounds___mainScreenReferenceBounds_0 = v1;
  WGMainScreenReferenceBounds___mainScreenReferenceBounds_1 = v2;
  WGMainScreenReferenceBounds___mainScreenReferenceBounds_2 = v3;
  WGMainScreenReferenceBounds___mainScreenReferenceBounds_3 = v4;

  *&v5.origin.x = WGMainScreenReferenceBounds___mainScreenReferenceBounds_0;
  *&v5.origin.y = WGMainScreenReferenceBounds___mainScreenReferenceBounds_1;
  *&v5.size.width = WGMainScreenReferenceBounds___mainScreenReferenceBounds_2;
  *&v5.size.height = WGMainScreenReferenceBounds___mainScreenReferenceBounds_3;
  if (CGRectIsEmpty(v5))
  {
    __WGMainScreenReferenceBounds_block_invoke_cold_1();
  }
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2742910B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void InvalidateQueue(void *a1)
{
  if (a1)
  {
    queue = a1;
    SuspendQueueIfNecessary(queue);
    dispatch_queue_set_specific(queue, "_WGWidgetViewControllerQueueIsValidTag", 0, 0);
    ResumeQueueIfNecessary(queue);
  }
}

uint64_t QueueName(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (![v3 length])
  {
    QueueName_cold_1();
  }

  v5 = v3;
  v6 = v5;
  if ([v4 length])
  {
    v6 = [v5 stringByAppendingFormat:@".%@", v4];
  }

  v7 = [v6 UTF8String];

  return v7;
}

NSObject *NewSerialQueue(char *label)
{
  if (!label)
  {
    NewSerialQueue_cold_1();
  }

  v2 = dispatch_queue_create(label, 0);
  dispatch_queue_set_specific(v2, "_WGWidgetViewControllerQueueIsValidTag", 1, 0);

  return v2;
}

void sub_2742947AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak(&a23);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void ValidateQueue(void *a1)
{
  if (a1)
  {
    queue = a1;
    SuspendQueueIfNecessary(queue);
    dispatch_queue_set_specific(queue, "_WGWidgetViewControllerQueueIsValidTag", 1, 0);
    ResumeQueueIfNecessary(queue);
  }
}

void sub_2742963C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x2743E8C10](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t SuspendQueueIfNecessary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    queue = v1;
    if (!dispatch_queue_get_specific(v1, "_WGWidgetViewControllerQueueIsSuspendedTag"))
    {
      dispatch_queue_set_specific(queue, "_WGWidgetViewControllerQueueIsSuspendedTag", 1, 0);
      dispatch_suspend(queue);
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t ResumeQueueIfNecessary(void *a1)
{
  v1 = a1;
  if (v1)
  {
    queue = v1;
    if (dispatch_queue_get_specific(v1, "_WGWidgetViewControllerQueueIsSuspendedTag"))
    {
      dispatch_queue_set_specific(queue, "_WGWidgetViewControllerQueueIsSuspendedTag", 0, 0);
      dispatch_resume(queue);
    }
  }

  return MEMORY[0x2821F9730]();
}

void sub_274298A30(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_27429C3C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2742A3310(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2742A34F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __DispatchBlockForRequest_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  specific = dispatch_queue_get_specific(*(a1 + 32), "_WGWidgetViewControllerQueueIsValidTag");
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (!specific)
  {
    v4 = WGLogWidgets;
    if (os_log_type_enabled(WGLogWidgets, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [WeakRetained widgetIdentifier];
      v7 = [WeakRetained _containerIdentifier];
      v8 = MEMORY[0x2743E8C10](*(a1 + 56));
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = 138544642;
      v13 = v6;
      v14 = 2050;
      v15 = WeakRetained;
      v16 = 2114;
      v17 = v7;
      v18 = 2114;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_27425E000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@: %{public}p; container: %{public}@> Queue is no longer valid (request:%{public}@, queue:%{public}@, description:%{public}@)", &v12, 0x3Eu);
    }
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, WeakRetained, *(a1 + 48), specific != 0);
  }
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void WGConvertTensionAndFrictionToDampingRatioResponseAndSettlingDuration_cold_1(double a1, double a2)
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void WGConvertTensionAndFrictionToDampingRatioResponseAndSettlingDuration(CGFloat, CGFloat, CGFloat *, CGFloat *, NSTimeInterval *)"}];
  [v5 handleFailureInFunction:v4 file:@"WGUtilities.m" lineNumber:139 description:{@"CA doesn't handle overdamped springs, these parameters are bad. Tension: %.2f Friction: %.2f", *&a1, *&a2}];
}

void __WGMainScreenReferenceBounds_block_invoke_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect WGMainScreenReferenceBounds(void)_block_invoke"];
  [v1 handleFailureInFunction:v0 file:@"WGGeometry.m" lineNumber:28 description:@"Failed to initialize main screen reference bounds!"];
}

void QueueName_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"const char *QueueName(NSString *__strong, NSString *__strong)"}];
  [v1 handleFailureInFunction:v0 file:@"WGWidgetHostingViewController.m" lineNumber:622 description:{@"Invalid parameter not satisfying: %@", @"[queueName length] > 0"}];
}

void NewSerialQueue_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"dispatch_queue_t NewSerialQueue(const char *)"];
  [v1 handleFailureInFunction:v0 file:@"WGWidgetHostingViewController.m" lineNumber:631 description:{@"Invalid parameter not satisfying: %@", @"name"}];
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}