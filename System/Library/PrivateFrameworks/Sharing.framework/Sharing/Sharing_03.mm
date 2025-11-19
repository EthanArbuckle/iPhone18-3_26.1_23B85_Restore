void *__TouchRemoteLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_3 = result;
  return result;
}

Class initTRAuthenticationOperation_0()
{
  if (TouchRemoteLibrary_sOnce_3 != -1)
  {
    initTROperationQueue_cold_1_1();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation_0 = result;
  getTRAuthenticationOperationClass_0 = TRAuthenticationOperationFunction_0;
  return result;
}

id initValTRAuthenticationOperationUnauthenticatedServicesKey_0()
{
  if (softLinkOnceTRAuthenticationOperationUnauthenticatedServicesKey_0 != -1)
  {
    initValTRAuthenticationOperationUnauthenticatedServicesKey_cold_1_0();
  }

  v1 = constantValTRAuthenticationOperationUnauthenticatedServicesKey_0;

  return v1;
}

void __initValTRAuthenticationOperationUnauthenticatedServicesKey_block_invoke_0()
{
  if (TouchRemoteLibrary_sOnce_3 != -1)
  {
    initTROperationQueue_cold_1_1();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_3, "TRAuthenticationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationUnauthenticatedServicesKey_0, *v0);
  }

  getTRAuthenticationOperationUnauthenticatedServicesKey_0 = TRAuthenticationOperationUnauthenticatedServicesKeyFunction_0;
}

id initValTRAuthenticationOperationErrorKey_0()
{
  if (softLinkOnceTRAuthenticationOperationErrorKey_0 != -1)
  {
    initValTRAuthenticationOperationErrorKey_cold_1_0();
  }

  v1 = constantValTRAuthenticationOperationErrorKey_0;

  return v1;
}

void __initValTRAuthenticationOperationErrorKey_block_invoke_0()
{
  if (TouchRemoteLibrary_sOnce_3 != -1)
  {
    initTROperationQueue_cold_1_1();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_3, "TRAuthenticationOperationErrorKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRAuthenticationOperationErrorKey_0, *v0);
  }

  getTRAuthenticationOperationErrorKey_0 = TRAuthenticationOperationErrorKeyFunction_0;
}

Class initAISRepairContext_0()
{
  if (AppleIDSetupLibrary_sOnce_0 != -1)
  {
    initAISRepairContext_cold_1();
  }

  result = objc_getClass("AISRepairContext");
  classAISRepairContext_0 = result;
  getAISRepairContextClass_0[0] = AISRepairContextFunction_0;
  return result;
}

void *__AppleIDSetupLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetup.framework/AppleIDSetup", 2);
  AppleIDSetupLibrary_sLib_0 = result;
  return result;
}

Class initAISRepairController_0()
{
  if (AppleIDSetupLibrary_sOnce_0 != -1)
  {
    initAISRepairContext_cold_1();
  }

  result = objc_getClass("AISRepairController");
  classAISRepairController_0 = result;
  getAISRepairControllerClass_0[0] = AISRepairControllerFunction_0;
  return result;
}

Class initHMDeviceSetupOperationHandler_1()
{
  if (HomeKitLibrary_sOnce_4 != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1_1();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler_1 = result;
  getHMDeviceSetupOperationHandlerClass_1 = HMDeviceSetupOperationHandlerFunction_1;
  return result;
}

void *__HomeKitLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_4 = result;
  return result;
}

Class initTVLAudioLatencyEstimator()
{
  if (TVLatencyLibrary_sOnce_1 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator = result;
  getTVLAudioLatencyEstimatorClass = TVLAudioLatencyEstimatorFunction;
  return result;
}

void *__TVLatencyLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_1 = result;
  return result;
}

uint64_t initValTMSourceProxBuddy()
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib, "TMSourceProxBuddy");
  if (v0)
  {
    result = *v0;
    constantValTMSourceProxBuddy = result;
  }

  else
  {
    result = constantValTMSourceProxBuddy;
  }

  getTMSourceProxBuddy = type metadata for ;
  return result;
}

void *__CoreTimeLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreTime.framework/CoreTime", 2);
  CoreTimeLibrary_sLib = result;
  return result;
}

uint64_t initTMSetSourceTime(uint64_t a1, double a2, double a3)
{
  if (CoreTimeLibrary_sOnce != -1)
  {
    initValTMSourceProxBuddy_cold_1();
  }

  v6 = dlsym(CoreTimeLibrary_sLib, "TMSetSourceTime");
  softLinkTMSetSourceTime = v6;
  v7.n128_f64[0] = a2;
  v8.n128_f64[0] = a3;

  return (v6)(a1, v7, v8);
}

Class initAISSetupContext()
{
  if (AppleIDSetupLibrary_sOnce_1 != -1)
  {
    initAISSetupContext_cold_1();
  }

  result = objc_getClass("AISSetupContext");
  classAISSetupContext = result;
  getAISSetupContextClass[0] = AISSetupContextFunction;
  return result;
}

void *__AppleIDSetupLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetup.framework/AppleIDSetup", 2);
  AppleIDSetupLibrary_sLib_1 = result;
  return result;
}

Class initAISSetupController()
{
  if (AppleIDSetupLibrary_sOnce_1 != -1)
  {
    initAISSetupContext_cold_1();
  }

  result = objc_getClass("AISSetupController");
  classAISSetupController = result;
  getAISSetupControllerClass[0] = AISSetupControllerFunction;
  return result;
}

void sub_1A975462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initHMHomeManagerConfiguration_0()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  result = objc_getClass("HMHomeManagerConfiguration");
  classHMHomeManagerConfiguration_0 = result;
  getHMHomeManagerConfigurationClass_0 = HMHomeManagerConfigurationFunction_0;
  return result;
}

void *__HomeKitLibrary_block_invoke_5()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_5 = result;
  return result;
}

Class initHMHomeManager_1()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  result = objc_getClass("HMHomeManager");
  classHMHomeManager_1 = result;
  getHMHomeManagerClass_1 = HMHomeManagerFunction_1;
  return result;
}

Class initSSAccountStore_1()
{
  if (StoreServicesLibrary_sOnce_1 != -1)
  {
    initSSAccountStore_cold_1();
  }

  result = objc_getClass("SSAccountStore");
  classSSAccountStore_1 = result;
  getSSAccountStoreClass_1 = SSAccountStoreFunction_1;
  return result;
}

void *__StoreServicesLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/StoreServices.framework/StoreServices", 2);
  StoreServicesLibrary_sLib_1 = result;
  return result;
}

Class initACAccountStore_4()
{
  if (AccountsLibrary_sOnce_4 != -1)
  {
    initACAccountStore_cold_1_4();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_4 = result;
  getACAccountStoreClass_4 = ACAccountStoreFunction_4;
  return result;
}

void *__AccountsLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_4 = result;
  return result;
}

uint64_t init_AXSVoiceOverTouchEnabled()
{
  if (AccessibilityLibrary_sOnce != -1)
  {
    init_AXSVoiceOverTouchEnabled_cold_1();
  }

  v0 = dlsym(AccessibilityLibrary_sLib, "_AXSVoiceOverTouchEnabled");
  softLink_AXSVoiceOverTouchEnabled = v0;

  return v0();
}

void *__AccessibilityLibrary_block_invoke()
{
  result = dlopen("/usr/lib/libAccessibility.dylib", 2);
  AccessibilityLibrary_sLib = result;
  return result;
}

uint64_t init_AXSVoiceOverTouchSpeakingRate()
{
  if (AccessibilityLibrary_sOnce != -1)
  {
    init_AXSVoiceOverTouchEnabled_cold_1();
  }

  v0 = dlsym(AccessibilityLibrary_sLib, "_AXSVoiceOverTouchSpeakingRate");
  softLink_AXSVoiceOverTouchSpeakingRate = v0;

  return v0();
}

Class initAXSettings()
{
  if (AccessibilityUtilitiesLibrary_sOnce != -1)
  {
    initAXSettings_cold_1();
  }

  result = objc_getClass("AXSettings");
  classAXSettings = result;
  getAXSettingsClass = AXSettingsFunction;
  return result;
}

void *__AccessibilityUtilitiesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AccessibilityUtilities.framework/AccessibilityUtilities", 2);
  AccessibilityUtilitiesLibrary_sLib = result;
  return result;
}

Class initCLLocationManager_0()
{
  if (CoreLocationLibrary_sOnce_0 != -1)
  {
    initCLLocationManager_cold_1();
  }

  result = objc_getClass("CLLocationManager");
  classCLLocationManager_0 = result;
  getCLLocationManagerClass_0 = CLLocationManagerFunction_0;
  return result;
}

void *__CoreLocationLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/Frameworks/CoreLocation.framework/CoreLocation", 2);
  CoreLocationLibrary_sLib_0 = result;
  return result;
}

Class initOBBundle()
{
  if (OnBoardingKitLibrary_sOnce != -1)
  {
    initOBBundle_cold_1();
  }

  result = objc_getClass("OBBundle");
  classOBBundle = result;
  getOBBundleClass = OBBundleFunction;
  return result;
}

void *__OnBoardingKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/OnBoardingKit.framework/OnBoardingKit", 2);
  OnBoardingKitLibrary_sLib = result;
  return result;
}

uint64_t initValOBPrivacyPrivacyPaneIdentifier()
{
  if (OnBoardingKitLibrary_sOnce != -1)
  {
    initOBBundle_cold_1();
  }

  v0 = dlsym(OnBoardingKitLibrary_sLib, "OBPrivacyPrivacyPaneIdentifier");
  if (v0)
  {
    result = *v0;
    constantValOBPrivacyPrivacyPaneIdentifier = result;
  }

  else
  {
    result = constantValOBPrivacyPrivacyPaneIdentifier;
  }

  getOBPrivacyPrivacyPaneIdentifier = OBPrivacyPrivacyPaneIdentifierFunction;
  return result;
}

Class initAFPreferences()
{
  if (AssistantServicesLibrary_sOnce_0 != -1)
  {
    initAFPreferences_cold_1();
  }

  result = objc_getClass("AFPreferences");
  classAFPreferences = result;
  getAFPreferencesClass_0 = AFPreferencesFunction;
  return result;
}

void *__AssistantServicesLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/AssistantServices.framework/AssistantServices", 2);
  AssistantServicesLibrary_sLib_0 = result;
  return result;
}

uint64_t initTMIsAutomaticTimeEnabled()
{
  if (CoreTimeLibrary_sOnce_0 != -1)
  {
    initTMIsAutomaticTimeEnabled_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib_0, "TMIsAutomaticTimeEnabled");
  softLinkTMIsAutomaticTimeEnabled = v0;

  return v0();
}

void *__CoreTimeLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreTime.framework/CoreTime", 2);
  CoreTimeLibrary_sLib_0 = result;
  return result;
}

uint64_t initTMIsAutomaticTimeZoneEnabled()
{
  if (CoreTimeLibrary_sOnce_0 != -1)
  {
    initTMIsAutomaticTimeEnabled_cold_1();
  }

  v0 = dlsym(CoreTimeLibrary_sLib_0, "TMIsAutomaticTimeZoneEnabled");
  softLinkTMIsAutomaticTimeZoneEnabled = v0;

  return v0();
}

Class initTROperationQueue_2()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_2 = result;
  getTROperationQueueClass_2 = TROperationQueueFunction_2;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_4 = result;
  return result;
}

Class initTRNearbyDevice()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNearbyDevice");
  classTRNearbyDevice = result;
  getTRNearbyDeviceClass = TRNearbyDeviceFunction;
  return result;
}

Class initTRSession()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRSession");
  classTRSession = result;
  getTRSessionClass = TRSessionFunction;
  return result;
}

Class initTRNearbyDeviceScanner()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNearbyDeviceScanner");
  classTRNearbyDeviceScanner = result;
  getTRNearbyDeviceScannerClass = TRNearbyDeviceScannerFunction;
  return result;
}

Class initTRSetupConfigurationOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRSetupConfigurationOperation");
  classTRSetupConfigurationOperation = result;
  getTRSetupConfigurationOperationClass = TRSetupConfigurationOperationFunction;
  return result;
}

id initValTRSetupConfigurationOperationNeedsNetworkKey()
{
  if (softLinkOnceTRSetupConfigurationOperationNeedsNetworkKey != -1)
  {
    initValTRSetupConfigurationOperationNeedsNetworkKey_cold_1();
  }

  v1 = constantValTRSetupConfigurationOperationNeedsNetworkKey;

  return v1;
}

void __initValTRSetupConfigurationOperationNeedsNetworkKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRSetupConfigurationOperationNeedsNetworkKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationNeedsNetworkKey, *v0);
  }

  getTRSetupConfigurationOperationNeedsNetworkKey = TRSetupConfigurationOperationNeedsNetworkKeyFunction;
}

id initValTRSetupConfigurationOperationUnauthenticatedServicesKey()
{
  if (softLinkOnceTRSetupConfigurationOperationUnauthenticatedServicesKey != -1)
  {
    initValTRSetupConfigurationOperationUnauthenticatedServicesKey_cold_1();
  }

  v1 = constantValTRSetupConfigurationOperationUnauthenticatedServicesKey;

  return v1;
}

void __initValTRSetupConfigurationOperationUnauthenticatedServicesKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRSetupConfigurationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUnauthenticatedServicesKey, *v0);
  }

  getTRSetupConfigurationOperationUnauthenticatedServicesKey = TRSetupConfigurationOperationUnauthenticatedServicesKeyFunction;
}

Class initTRNetworkOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRNetworkOperation");
  classTRNetworkOperation = result;
  getTRNetworkOperationClass = TRNetworkOperationFunction;
  return result;
}

id initValTRNetworkOperationHasNetworkKey()
{
  if (softLinkOnceTRNetworkOperationHasNetworkKey != -1)
  {
    initValTRNetworkOperationHasNetworkKey_cold_1();
  }

  v1 = constantValTRNetworkOperationHasNetworkKey;

  return v1;
}

void __initValTRNetworkOperationHasNetworkKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRNetworkOperationHasNetworkKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRNetworkOperationHasNetworkKey, *v0);
  }

  getTRNetworkOperationHasNetworkKey = TRNetworkOperationHasNetworkKeyFunction;
}

Class initTRActivationOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRActivationOperation");
  classTRActivationOperation = result;
  getTRActivationOperationClass = TRActivationOperationFunction;
  return result;
}

id initValTRActivationOperationIsActivatedKey()
{
  if (softLinkOnceTRActivationOperationIsActivatedKey != -1)
  {
    initValTRActivationOperationIsActivatedKey_cold_1();
  }

  v1 = constantValTRActivationOperationIsActivatedKey;

  return v1;
}

void __initValTRActivationOperationIsActivatedKey_block_invoke()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_4, "TRActivationOperationIsActivatedKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRActivationOperationIsActivatedKey, *v0);
  }

  getTRActivationOperationIsActivatedKey = TRActivationOperationIsActivatedKeyFunction;
}

Class initTRAuthenticationOperation_1()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation_1 = result;
  getTRAuthenticationOperationClass_1 = TRAuthenticationOperationFunction_1;
  return result;
}

Class initAISSetupContext_0()
{
  if (AppleIDSetupLibrary_sOnce_2 != -1)
  {
    initAISSetupContext_cold_1_0();
  }

  result = objc_getClass("AISSetupContext");
  classAISSetupContext_0 = result;
  getAISSetupContextClass_0[0] = AISSetupContextFunction_0;
  return result;
}

void *__AppleIDSetupLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetup.framework/AppleIDSetup", 2);
  AppleIDSetupLibrary_sLib_2 = result;
  return result;
}

Class initAISSetupViewController()
{
  if (AppleIDSetupUILibrary_sOnce != -1)
  {
    initAISSetupViewController_cold_1();
  }

  result = objc_getClass("AISSetupViewController");
  classAISSetupViewController = result;
  getAISSetupViewControllerClass[0] = AISSetupViewControllerFunction;
  return result;
}

void *__AppleIDSetupUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppleIDSetupUI.framework/AppleIDSetupUI", 2);
  AppleIDSetupUILibrary_sLib = result;
  return result;
}

Class initUINavigationController()
{
  if (UIKitLibrary_sOnce != -1)
  {
    initUINavigationController_cold_1();
  }

  result = objc_getClass("UINavigationController");
  classUINavigationController = result;
  getUINavigationControllerClass[0] = UINavigationControllerFunction;
  return result;
}

void *__UIKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  UIKitLibrary_sLib = result;
  return result;
}

Class initAISSetupController_0()
{
  if (AppleIDSetupLibrary_sOnce_2 != -1)
  {
    initAISSetupContext_cold_1_0();
  }

  result = objc_getClass("AISSetupController");
  classAISSetupController_0 = result;
  getAISSetupControllerClass_0[0] = AISSetupControllerFunction_0;
  return result;
}

Class initTVLAudioLatencyEstimator_0()
{
  if (TVLatencyLibrary_sOnce_2 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_0();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_0 = result;
  getTVLAudioLatencyEstimatorClass_0 = TVLAudioLatencyEstimatorFunction_0;
  return result;
}

void *__TVLatencyLibrary_block_invoke_2()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_2 = result;
  return result;
}

Class initTRCompletionOperation()
{
  if (TouchRemoteLibrary_sOnce_4 != -1)
  {
    initTROperationQueue_cold_1_2();
  }

  result = objc_getClass("TRCompletionOperation");
  classTRCompletionOperation = result;
  getTRCompletionOperationClass = TRCompletionOperationFunction;
  return result;
}

Class initVSAccountSerializationCenter()
{
  if (VideoSubscriberAccountLibrary_sOnce != -1)
  {
    initVSAccountSerializationCenter_cold_1();
  }

  result = objc_getClass("VSAccountSerializationCenter");
  classVSAccountSerializationCenter = result;
  getVSAccountSerializationCenterClass = VSAccountSerializationCenterFunction;
  return result;
}

void *__VideoSubscriberAccountLibrary_block_invoke()
{
  result = dlopen("/System/Library/PublicFrameworks/VideoSubscriberAccount.framework/VideoSubscriberAccount", 2);
  VideoSubscriberAccountLibrary_sLib = result;
  return result;
}

id initValHMAccessoryCategoryTypeHomePod_1()
{
  if (softLinkOnceHMAccessoryCategoryTypeHomePod_0 != -1)
  {
    initValHMAccessoryCategoryTypeHomePod_cold_1_1();
  }

  v1 = constantValHMAccessoryCategoryTypeHomePod_1;

  return v1;
}

void __initValHMAccessoryCategoryTypeHomePod_block_invoke_0()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  v0 = dlsym(HomeKitLibrary_sLib_5, "HMAccessoryCategoryTypeHomePod");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeHomePod_1, *v0);
  }

  getHMAccessoryCategoryTypeHomePod_1 = HMAccessoryCategoryTypeHomePodFunction_1;
}

id initValHMAccessoryCategoryTypeAppleTV_0()
{
  if (softLinkOnceHMAccessoryCategoryTypeAppleTV_0 != -1)
  {
    initValHMAccessoryCategoryTypeAppleTV_cold_1_0();
  }

  v1 = constantValHMAccessoryCategoryTypeAppleTV_0;

  return v1;
}

void __initValHMAccessoryCategoryTypeAppleTV_block_invoke_0()
{
  if (HomeKitLibrary_sOnce_5 != -1)
  {
    initHMHomeManagerConfiguration_cold_1_0();
  }

  v0 = dlsym(HomeKitLibrary_sLib_5, "HMAccessoryCategoryTypeAppleTV");
  if (v0)
  {
    objc_storeStrong(&constantValHMAccessoryCategoryTypeAppleTV_0, *v0);
  }

  getHMAccessoryCategoryTypeAppleTV_0 = HMAccessoryCategoryTypeAppleTVFunction_0;
}

void sub_1A97577F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v8 - 104));
  _Unwind_Resume(a1);
}

void sub_1A9758578(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_1A975905C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return LogPrintF();
}

void sub_1A975D828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, char a21)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak((v21 + 40));
  _Block_object_dispose(&a21, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A975E658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A975F638(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 96));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1A97619D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1A9762E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSKDevice()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKDevice");
  classSKDevice = result;
  getSKDeviceClass = SKDeviceFunction;
  return result;
}

void *__SetupKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupKit.framework/SetupKit", 2);
  SetupKitLibrary_sLib = result;
  return result;
}

Class initSKSetupCaptiveNetworkJoinClient()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKSetupCaptiveNetworkJoinClient");
  classSKSetupCaptiveNetworkJoinClient = result;
  getSKSetupCaptiveNetworkJoinClientClass = SKSetupCaptiveNetworkJoinClientFunction;
  return result;
}

Class initWSWebSheetViewController()
{
  if (WebSheetLibrary_sOnce != -1)
  {
    initWSWebSheetViewController_cold_1();
  }

  result = objc_getClass("WSWebSheetViewController");
  classWSWebSheetViewController = result;
  getWSWebSheetViewControllerClass = WSWebSheetViewControllerFunction;
  return result;
}

void *__WebSheetLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/WebSheet.framework/WebSheet", 2);
  WebSheetLibrary_sLib = result;
  return result;
}

Class initSKSetupCaptiveNetworkJoinServer()
{
  if (SetupKitLibrary_sOnce != -1)
  {
    initSKDevice_cold_1();
  }

  result = objc_getClass("SKSetupCaptiveNetworkJoinServer");
  classSKSetupCaptiveNetworkJoinServer = result;
  getSKSetupCaptiveNetworkJoinServerClass = SKSetupCaptiveNetworkJoinServerFunction;
  return result;
}

void sub_1A9765D80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1A97660C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class initTSCellularPlanProximityTransferController()
{
  if (SIMSetupSupportLibrary_sOnce != -1)
  {
    initTSCellularPlanProximityTransferController_cold_1();
  }

  result = objc_getClass("TSCellularPlanProximityTransferController");
  classTSCellularPlanProximityTransferController = result;
  getTSCellularPlanProximityTransferControllerClass = __C;
  return result;
}

void *__SIMSetupSupportLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SIMSetupSupport.framework/SIMSetupSupport", 2);
  SIMSetupSupportLibrary_sLib = result;
  return result;
}

Class initCoreTelephonyClient()
{
  if (CoreTelephonyLibrary_sOnce != -1)
  {
    initCoreTelephonyClient_cold_1();
  }

  result = objc_getClass("CoreTelephonyClient");
  classCoreTelephonyClient = result;
  getCoreTelephonyClientClass = CoreTelephonyClientFunction;
  return result;
}

void *__CoreTelephonyLibrary_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreTelephony.framework/CoreTelephony", 2);
  CoreTelephonyLibrary_sLib = result;
  return result;
}

Class initIMOneTimeCodeAccelerator()
{
  if (IMCoreLibrary_sOnce != -1)
  {
    initIMOneTimeCodeAccelerator_cold_1();
  }

  result = objc_getClass("IMOneTimeCodeAccelerator");
  classIMOneTimeCodeAccelerator = result;
  getIMOneTimeCodeAcceleratorClass[0] = IMOneTimeCodeAcceleratorFunction;
  return result;
}

void *__IMCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/IMCore.framework/IMCore", 2);
  IMCoreLibrary_sLib = result;
  return result;
}

Class initPRXCardContentViewController()
{
  if (ProxCardKitLibrary_sOnce != -1)
  {
    initPRXCardContentViewController_cold_1();
  }

  result = objc_getClass("PRXCardContentViewController");
  classPRXCardContentViewController = result;
  getPRXCardContentViewControllerClass = PRXCardContentViewControllerFunction;
  return result;
}

void *__ProxCardKitLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ProxCardKit.framework/ProxCardKit", 2);
  ProxCardKitLibrary_sLib = result;
  return result;
}

Class initPASUIGuardianViewPresenter()
{
  if (ProximityAppleIDSetupUILibrary_sOnce != -1)
  {
    initPASUIGuardianViewPresenter_cold_1();
  }

  result = objc_getClass("PASUIGuardianViewPresenter");
  classPASUIGuardianViewPresenter = result;
  getPASUIGuardianViewPresenterClass = PASUIGuardianViewPresenterFunction;
  return result;
}

void *__ProximityAppleIDSetupUILibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/ProximityAppleIDSetupUI.framework/ProximityAppleIDSetupUI", 2);
  ProximityAppleIDSetupUILibrary_sLib = result;
  return result;
}

Class initCDPContext_0()
{
  if (CoreCDPLibrary_sOnce_0 != -1)
  {
    initCDPContext_cold_1_0();
  }

  result = objc_getClass("CDPContext");
  classCDPContext_0 = result;
  getCDPContextClass_0 = CDPContextFunction_0;
  return result;
}

void *__CoreCDPLibrary_block_invoke_0()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib_0 = result;
  return result;
}

Class initCDPStateController_0()
{
  if (CoreCDPLibrary_sOnce_0 != -1)
  {
    initCDPContext_cold_1_0();
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController_0 = result;
  getCDPStateControllerClass_0 = CDPStateControllerFunction_0;
  return result;
}

Class initPKProximitySetupSourceClient()
{
  if (PassKitCoreLibrary_sOnce != -1)
  {
    initPKProximitySetupSourceClient_cold_1();
  }

  result = objc_getClass("PKProximitySetupSourceClient");
  classPKProximitySetupSourceClient = result;
  getPKProximitySetupSourceClientClass[0] = PKProximitySetupSourceClientFunction;
  return result;
}

void *__PassKitCoreLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/PassKitCore.framework/PassKitCore", 2);
  PassKitCoreLibrary_sLib = result;
  return result;
}

Class initACAccountStore_5()
{
  if (AccountsLibrary_sOnce_5 != -1)
  {
    initACAccountStore_cold_1_5();
  }

  result = objc_getClass("ACAccountStore");
  classACAccountStore_5 = result;
  getACAccountStoreClass_5 = ACAccountStoreFunction_5;
  return result;
}

void *__AccountsLibrary_block_invoke_5()
{
  result = dlopen("/System/Library/Frameworks/Accounts.framework/Accounts", 2);
  AccountsLibrary_sLib_5 = result;
  return result;
}

void *__AccessibilityLibrary_block_invoke_0()
{
  result = dlopen("/usr/lib/libAccessibility.dylib", 2);
  AccessibilityLibrary_sLib_0 = result;
  return result;
}

uint64_t init_AXSCopySettingsDataBlobForBuddy()
{
  if (AccessibilityLibrary_sOnce_0 != -1)
  {
    [SFDeviceSetupSessioniOS _sendPreAuthInfo];
  }

  v0 = dlsym(AccessibilityLibrary_sLib_0, "_AXSCopySettingsDataBlobForBuddy");
  softLink_AXSCopySettingsDataBlobForBuddy = v0;

  return v0();
}

Class initBYDeviceSetupSourceSession()
{
  if (SetupAssistantLibrary_sOnce != -1)
  {
    initBYDeviceSetupSourceSession_cold_1();
  }

  result = objc_getClass("BYDeviceSetupSourceSession");
  classBYDeviceSetupSourceSession = result;
  getBYDeviceSetupSourceSessionClass = BYDeviceSetupSourceSessionFunction;
  return result;
}

void *__SetupAssistantLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SetupAssistant.framework/SetupAssistant", 2);
  SetupAssistantLibrary_sLib = result;
  return result;
}

void OUTLINED_FUNCTION_1_17(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

Class initTVLAudioLatencyEstimator_1()
{
  if (TVLatencyLibrary_sOnce_3 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_1();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_1 = result;
  getTVLAudioLatencyEstimatorClass_1 = TVLAudioLatencyEstimatorFunction_1;
  return result;
}

void *__TVLatencyLibrary_block_invoke_3()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_3 = result;
  return result;
}

Class initTVLAudioLatencyEstimator_2()
{
  if (TVLatencyLibrary_sOnce_4 != -1)
  {
    initTVLAudioLatencyEstimator_cold_1_2();
  }

  result = objc_getClass("TVLAudioLatencyEstimator");
  classTVLAudioLatencyEstimator_2 = result;
  getTVLAudioLatencyEstimatorClass_2 = TVLAudioLatencyEstimatorFunction_2;
  return result;
}

void *__TVLatencyLibrary_block_invoke_4()
{
  result = dlopen("/System/Library/PrivateFrameworks/TVLatency.framework/TVLatency", 2);
  TVLatencyLibrary_sLib_4 = result;
  return result;
}

Class initHMDeviceSetupOperationHandler_2()
{
  if (HomeKitLibrary_sOnce_6 != -1)
  {
    initHMDeviceSetupOperationHandler_cold_1_2();
  }

  result = objc_getClass("HMDeviceSetupOperationHandler");
  classHMDeviceSetupOperationHandler_2 = result;
  getHMDeviceSetupOperationHandlerClass_2 = HMDeviceSetupOperationHandlerFunction_2;
  return result;
}

void *__HomeKitLibrary_block_invoke_6()
{
  result = dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 2);
  HomeKitLibrary_sLib_6 = result;
  return result;
}

Class initCDPStateController_1()
{
  if (CoreCDPLibrary_sOnce_1 != -1)
  {
    initCDPStateController_cold_1();
  }

  result = objc_getClass("CDPStateController");
  classCDPStateController_1 = result;
  getCDPStateControllerClass_1 = CDPStateControllerFunction_1;
  return result;
}

void *__CoreCDPLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/CoreCDP.framework/CoreCDP", 2);
  CoreCDPLibrary_sLib_1 = result;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class initTROperationQueue_3()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TROperationQueue");
  classTROperationQueue_3 = result;
  getTROperationQueueClass_3 = TROperationQueueFunction_3;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_5()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_5 = result;
  return result;
}

Class initTRSetupConfigurationOperation_0()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TRSetupConfigurationOperation");
  classTRSetupConfigurationOperation_0 = result;
  getTRSetupConfigurationOperationClass_0 = TRSetupConfigurationOperationFunction_0;
  return result;
}

id initValTRSetupConfigurationOperationUnauthenticatedServicesKey_0()
{
  if (softLinkOnceTRSetupConfigurationOperationUnauthenticatedServicesKey_0 != -1)
  {
    initValTRSetupConfigurationOperationUnauthenticatedServicesKey_cold_1_0();
  }

  v1 = constantValTRSetupConfigurationOperationUnauthenticatedServicesKey_0;

  return v1;
}

void __initValTRSetupConfigurationOperationUnauthenticatedServicesKey_block_invoke_0()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  v0 = dlsym(TouchRemoteLibrary_sLib_5, "TRSetupConfigurationOperationUnauthenticatedServicesKey");
  if (v0)
  {
    objc_storeStrong(&constantValTRSetupConfigurationOperationUnauthenticatedServicesKey_0, *v0);
  }

  getTRSetupConfigurationOperationUnauthenticatedServicesKey_0 = TRSetupConfigurationOperationUnauthenticatedServicesKeyFunction_0;
}

Class initTRAuthenticationOperation_2()
{
  if (TouchRemoteLibrary_sOnce_5 != -1)
  {
    initTROperationQueue_cold_1_3();
  }

  result = objc_getClass("TRAuthenticationOperation");
  classTRAuthenticationOperation_2 = result;
  getTRAuthenticationOperationClass_2 = TRAuthenticationOperationFunction_2;
  return result;
}

id getCKShareClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCKShareClass_softClass_0;
  v7 = getCKShareClass_softClass_0;
  if (!getCKShareClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCKShareClass_block_invoke_0;
    v3[3] = &unk_1E788A938;
    v3[4] = &v4;
    __getCKShareClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A97726A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKShareClass_block_invoke_0(uint64_t a1)
{
  CloudKitLibrary_1();
  result = objc_getClass("CKShare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKShareClass_block_invoke_cold_1_0();
  }

  getCKShareClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CloudKitLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CloudKitLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E78901D8;
    v3 = 0;
    CloudKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!CloudKitLibraryCore_frameworkLibrary_1)
  {
    CloudKitLibrary_cold_1_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t __CloudKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  CloudKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SharedWithYouCoreLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SharedWithYouCoreLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getCKContainerSetupInfoClass_block_invoke_1(uint64_t a1)
{
  CloudKitLibrary_1();
  result = objc_getClass("CKContainerSetupInfo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContainerSetupInfoClass_block_invoke_cold_1_1();
  }

  getCKContainerSetupInfoClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A9776734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _clientPairSetupPromptForPIN(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (gLogCategory_SFPINPairSession <= 30 && (gLogCategory_SFPINPairSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5[64] = 1;
  v6 = *(v5 + 18);
  if (v6)
  {
    (*(v6 + 16))(v6, a1, a2);
  }

  return 0;
}

uint64_t _handleServerPairSetupHidePIN(uint64_t a1)
{
  result = *(a1 + 160);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v7 subpredicates];
    v12 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v32;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if (!_SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(*(*(&v31 + 1) + 8 * v15), v8, v9, v10))
          {
            IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
            goto LABEL_23;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
    goto LABEL_23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = [v11 predicateOperatorType];
    v21 = v19;
    v22 = v21;
    if (v20 > 98)
    {
      if ((v20 - 99) < 2 || (v20 - 1100) < 2 || v20 == 1000)
      {
LABEL_14:

        v23 = [v11 leftExpression];
        if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v23, v17, v18, v22))
        {
          [v11 rightExpression];
          v30 = v11;
          v24 = v18;
          v26 = v25 = v17;
          IsSafeExpressionForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v26, v25, v24, v22);

          v17 = v25;
          v18 = v24;
          v11 = v30;
        }

        else
        {
          IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
        }

LABEL_22:
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (v20 < 0xB)
    {
      goto LABEL_14;
    }

    v29 = share_sheet_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v37 = "_SFApplicationExtensionIsSafePredicateOperatorTypeForObjectWithSubquerySubstitutions";
      v38 = 2112;
      v39 = v22;
      v40 = 2048;
      v41 = v20;
      _os_log_impl(&dword_1A9662000, v29, OS_LOG_TYPE_DEFAULT, "%s [%@]: NSPredicateOperator considered unsafe: %ld", buf, 0x20u);
    }

    IsSafeExpressionForObjectWithSubquerySubstitutions = 0;
    goto LABEL_22;
  }

  NSClassFromString(&cfstr_Nstruepredicat.isa);
  if (objc_opt_isKindOfClass())
  {
    IsSafeExpressionForObjectWithSubquerySubstitutions = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Nsfalsepredica.isa);
    IsSafeExpressionForObjectWithSubquerySubstitutions = objc_opt_isKindOfClass();
  }

LABEL_24:

  v27 = *MEMORY[0x1E69E9840];
  return IsSafeExpressionForObjectWithSubquerySubstitutions & 1;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = [v3 rangeOfString:@"."];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    v9 = v6;
    v10 = [v3 substringToIndex:v5];
    v11 = [v3 substringFromIndex:v8 + v9];
    if ([v10 isEqualToString:@"@count"])
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || (_NSIsNSDictionary())
      {

LABEL_8:
        IsSafeKeyPathForObject = 1;
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (([v10 isEqualToString:@"@avg"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@max") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"@min") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@sum"))
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_62;
LABEL_15:
        IsSafeKeyPathForObjectsInCollection = _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(v11, v4, v12);
LABEL_16:
        IsSafeKeyPathForObject = IsSafeKeyPathForObjectsInCollection;
LABEL_28:

        goto LABEL_29;
      }
    }

    else if (([v10 isEqualToString:@"@distinctUnionOfObjects"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@unionOfObjects"))
    {
      if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4))
      {
        v12 = &__block_literal_global_147;
        goto LABEL_15;
      }
    }

    else
    {
      if (([v10 isEqualToString:@"@distinctUnionOfArrays"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"@unionOfArrays") || objc_msgSend(v10, "isEqualToString:", @"@distinctUnionOfSets"))
      {
        v14 = objc_opt_class();
        IsSafeKeyPathForObjectsInCollection = _SFApplicationExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(v11, v14, v4);
        goto LABEL_16;
      }

      if (_SFApplicationExtensionIsSafeKeyForObject(v10, v4))
      {
        v15 = [v4 valueForKey:v10];
        IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyPathForObject(v11, v15);

        goto LABEL_28;
      }
    }

LABEL_27:
    IsSafeKeyPathForObject = 0;
    goto LABEL_28;
  }

  IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyForObject(v3, v4);
LABEL_29:

  return IsSafeKeyPathForObject;
}

uint64_t _SFApplicationExtensionIsSafeKeyForObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if ([v3 length])
  {
    if (!v4)
    {
      v6 = 1;
      goto LABEL_14;
    }

    if ([v3 characterAtIndex:0] != 64)
    {
      if (!_NSIsNSString())
      {
        v7 = _NSIsNSDictionary();
        goto LABEL_13;
      }

      v5 = @"length";
LABEL_11:
      v7 = [v3 isEqualToString:v5];
LABEL_13:
      v6 = v7;
      goto LABEL_14;
    }

    if ((_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v4) & 1) != 0 || _NSIsNSDictionary())
    {
      v5 = @"@count";
      goto LABEL_11;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t _SFApplicationExtensionIsOfSafeCollectionClassForPredicates(void *a1)
{
  v1 = a1;
  if (_NSIsNSArray() & 1) != 0 || (_NSIsNSSet())
  {
    v2 = 1;
  }

  else
  {
    v2 = _NSIsNSOrderedSet();
  }

  return v2;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(void *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if (_SFApplicationExtensionIsSafeKeyPathForObject(v5, v13))
        {
          v14 = [v13 valueForKeyPath:{v5, v19}];
          v15 = v7[2](v7, v14);

          if (v15)
          {
            continue;
          }
        }

        v16 = 0;
        goto LABEL_13;
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v16 = 1;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_13:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t _SFApplicationExtensionIsSafeKeyPathForSubcollectionsOfClassOfCollection(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v5 = a3;
  if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v5))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v12 = 0;
            goto LABEL_13;
          }

          _SFApplicationExtensionIsSafeKeyPathForObjectsInCollection(v4, v11, &__block_literal_global_189);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v12 = 1;
LABEL_13:
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(void *a1, void *a2, void *a3, void *a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v7 expressionType];
  v12 = 1;
  if (v11 <= 9)
  {
    if (v11 < 3)
    {
      goto LABEL_75;
    }

    if ((v11 - 5) < 3)
    {
      if ((_NSIsNSSet() & 1) == 0 && !_NSIsNSOrderedSet())
      {
        goto LABEL_72;
      }

      v13 = [v7 leftExpression];
      if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v13, v8, v9, v10))
      {
        v14 = [v7 rightExpression];
        IsSafeExpressionForObjectWithSubquerySubstitutions = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v14, v8, v9, v10);

        if (IsSafeExpressionForObjectWithSubquerySubstitutions)
        {
          goto LABEL_80;
        }

        goto LABEL_72;
      }

      goto LABEL_38;
    }

    if ((v11 - 3) < 2)
    {
      v25 = [v7 function];
      if (([v25 isEqualToString:@"valueForKey:"] & 1) != 0 || objc_msgSend(v25, "isEqualToString:", @"valueForKeyPath:"))
      {
        v26 = [v7 arguments];
        if ([v26 count] == 1)
        {
          v27 = [v26 firstObject];
          if (!_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v27, v8, v9, v10))
          {
            v39 = share_sheet_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_6();
            }

            goto LABEL_72;
          }

          v28 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
          v29 = [v27 expressionValueWithObject:v8 context:v28];

          if (!_NSIsNSString())
          {
            v40 = share_sheet_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v41 = objc_opt_class();
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_7(v29, v41, v64, v40);
            }

            goto LABEL_72;
          }

          v30 = [v7 operand];
          v31 = v30;
          if (v30)
          {
            if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v30, v8, v9, v10))
            {
              v32 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
              v52 = [v31 expressionValueWithObject:v8 context:v32];

              if ([v25 isEqualToString:@"valueForKeyPath:"])
              {
                IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyPathForObject(v29, v52);
              }

              else
              {
                IsSafeKeyPathForObject = _SFApplicationExtensionIsSafeKeyForObject(v29, v52);
              }

              if ((IsSafeKeyPathForObject & 1) == 0)
              {
                v47 = share_sheet_log();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  v48 = [v25 isEqualToString:@"valueForKeyPath:"];
                  v49 = &stru_1F1D30528;
                  *v64 = 136315906;
                  v65 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
                  v66 = 2112;
                  if (v48)
                  {
                    v49 = @"path";
                  }

                  v67 = v49;
                  v68 = 2112;
                  v69 = v29;
                  v70 = 2112;
                  v71 = v52;
                  _os_log_debug_impl(&dword_1A9662000, v47, OS_LOG_TYPE_DEBUG, "%s: Key%@ %@ not safe to evaluate with %@", v64, 0x2Au);
                }

                goto LABEL_72;
              }

              goto LABEL_79;
            }

            v43 = share_sheet_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_8();
            }
          }

          else
          {
            v43 = share_sheet_log();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_9(v43);
            }
          }

          goto LABEL_72;
        }

        v34 = share_sheet_log();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
LABEL_40:
          _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_2(v26);
        }
      }

      else
      {
        if (([v25 isEqualToString:@"from:subtract:"] & 1) == 0 && !objc_msgSend(v25, "isEqualToString:", @"add:to:"))
        {
          v42 = share_sheet_log();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_1();
          }

          goto LABEL_72;
        }

        v26 = [v7 arguments];
        if ([v26 count] != 2)
        {
          v34 = share_sheet_log();
          if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }

        v35 = [v26 objectAtIndexedSubscript:0];
        v36 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v35, v8, v9, v10);

        if (v36)
        {
          v37 = [v26 objectAtIndexedSubscript:1];
          v38 = _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v37, v8, v9, v10);

          if (v38)
          {
LABEL_79:

            goto LABEL_80;
          }

          v34 = share_sheet_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_4(v26);
          }
        }

        else
        {
          v34 = share_sheet_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_3(v26);
          }
        }
      }

LABEL_41:

      goto LABEL_72;
    }

    goto LABEL_36;
  }

  if (v11 > 0x14)
  {
LABEL_36:
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      _SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions_cold_10();
    }

    goto LABEL_38;
  }

  if (((1 << v11) & 0x18D800) == 0)
  {
    if (v11 == 10)
    {
      goto LABEL_75;
    }

    if (v11 == 13)
    {
      v51 = [v7 collection];
      v13 = v51;
      if (_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions(v51, v8, v9, v10))
      {
        v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
        v17 = [v51 expressionValueWithObject:v8 context:v16];

        if (v17)
        {
          if (_SFApplicationExtensionIsOfSafeCollectionClassForPredicates(v17))
          {
            v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v9];
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            obj = v17;
            v19 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
            if (v19)
            {
              v20 = *v54;
              while (2)
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v54 != v20)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v22 = *(*(&v53 + 1) + 8 * i);
                  v23 = [v7 variable];
                  [v18 setObject:v22 forKey:v23];

                  v24 = [v7 predicate];
                  LOBYTE(v22) = _SFApplicationExtensionIsSafePredicateForObjectWithSubquerySubstitutions(v24, v8, v18, v10);

                  if ((v22 & 1) == 0)
                  {

                    goto LABEL_72;
                  }
                }

                v19 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
                if (v19)
                {
                  continue;
                }

                break;
              }
            }

            goto LABEL_80;
          }

          goto LABEL_72;
        }

LABEL_80:
        v12 = 1;
        goto LABEL_75;
      }

LABEL_38:

      goto LABEL_72;
    }

    goto LABEL_36;
  }

LABEL_72:
  v44 = share_sheet_log();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v58 = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
    v59 = 2112;
    v60 = v10;
    v61 = 2112;
    v62 = v7;
    _os_log_impl(&dword_1A9662000, v44, OS_LOG_TYPE_DEFAULT, "%s [%@]: Expression considered unsafe: %@", buf, 0x20u);
  }

  v12 = 0;
LABEL_75:

  v45 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1A977C2D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v13 = share_sheet_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *(v12 - 160) = 136315906;
      v14 = v12 - 160;
      *(v14 + 4) = "_SFApplicationExtensionIsSafeExpressionForObjectWithSubquerySubstitutions";
      *(v12 - 148) = 2112;
      *(v14 + 14) = v10;
      *(v12 - 138) = 2112;
      *(v12 - 136) = v11;
      *(v12 - 128) = 2112;
      *(v14 + 34) = v15;
      _os_log_fault_impl(&dword_1A9662000, v13, OS_LOG_TYPE_FAULT, "%s [%@]: Exception occurred when trying to evaluate operand expression %@ : %@", (v12 - 160), 0x2Au);
    }

    objc_end_catch();
    JUMPOUT(0x1A977C100);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A977E784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A977EAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977EDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977F088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A977F3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_7(void *a1, const char *a2)
{
  v4 = *(*(v2 + 32) + 80);

  return [a1 timeIntervalSinceDate:v4];
}

Class initRTIInputSystemDataPayload_0()
{
  if (RemoteTextInputLibrary_sOnce_1 != -1)
  {
    initRTIInputSystemDataPayload_cold_1_0();
  }

  result = objc_getClass("RTIInputSystemDataPayload");
  classRTIInputSystemDataPayload_0 = result;
  getRTIInputSystemDataPayloadClass_0 = RTIInputSystemDataPayloadFunction_0;
  return result;
}

void *__RemoteTextInputLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/PrivateFrameworks/RemoteTextInput.framework/RemoteTextInput", 2);
  RemoteTextInputLibrary_sLib_1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{

  return objc_opt_class();
}

const char *SFDeviceActionTypeToString(unsigned int a1)
{
  if (a1 > 0x66)
  {
    return "?";
  }

  else
  {
    return off_1E78905E0[a1];
  }
}

uint64_t SFServiceIdentifierToType(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.sharing.ApplePay"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AppleTVSetup"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AudioTuning"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.AutoUnlock"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"com.apple.sharing.CompanionLinkProx"])
  {
    v2 = 15;
  }

  else
  {
    if ([v1 isEqualToString:@"com.apple.sharing.Configurator"])
    {
      goto LABEL_12;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.ContinuityRemote"])
    {
      v2 = 1;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.DeviceDiagnostics"])
    {
      v2 = 12;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.Debug"])
    {
      v2 = 127;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.iOSSetup"])
    {
      v2 = 2;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.dovePeace"])
    {
      v2 = 23;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.PasswordGranting"])
    {
      v2 = 6;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.PasswordSharing"])
    {
      v2 = 7;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.ProxHandoff"])
    {
      v2 = 20;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteAutoFill"])
    {
      v2 = 13;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteAutoFillPong"])
    {
      v2 = 17;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteDisplay"])
    {
      v2 = 18;
      goto LABEL_35;
    }

    if ([v1 isEqualToString:@"com.apple.sharing.RemoteManagement"])
    {
LABEL_12:
      v2 = 16;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.Repair"])
    {
      v2 = 3;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.Setup2"])
    {
      v2 = 4;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.ShareAudio"])
    {
      v2 = 21;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.System"])
    {
      v2 = 8;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.WHASetup"])
    {
      v2 = 10;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.AuthenticateAccounts"])
    {
      v2 = 22;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.HasInvitations"])
    {
      v2 = 24;
    }

    else if ([v1 isEqualToString:@"com.apple.sharing.AcceptedInvitation"])
    {
      v2 = 25;
    }

    else
    {
      v2 = 0;
    }
  }

LABEL_35:

  return v2;
}

id SFServiceTypeToUUID(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = xmmword_1A9990211;
    LOBYTE(v4) = a1;
    v1 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v4];
  }

  else
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

id SFServiceIdentifierToUUID(void *a1, int *a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v9[0] = 0;
  v9[1] = 0;
  if ([v3 isEqualToString:@"com.apple.sharing.AirPlay"])
  {
    v4 = &unk_1A9990189;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.ApplePayLegacy"])
  {
    v4 = &unk_1A999019A;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.AutoUnlock"])
  {
    v4 = &unk_1A99901AB;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.Control"])
  {
    v4 = &unk_1A99901BC;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.InternetRelay"])
  {
    v4 = &unk_1A99901CD;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.PINPair"])
  {
    v4 = &unk_1A99901DE;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.RemoteApp"])
  {
    v4 = &unk_1A99901EF;
  }

  else if ([v3 isEqualToString:@"com.apple.sharing.Setup"])
  {
    v4 = &unk_1A9990200;
  }

  else
  {
    [v3 UTF8String];
    v4 = v9;
    if (StringToUUIDEx())
    {
      v5 = 0;
      v6 = -6742;
      goto LABEL_22;
    }
  }

  v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v4];
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -6700;
  }

LABEL_22:
  if (a2)
  {
    *a2 = v6;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

const char *SFNearbyBLEFrameTypeToString(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1E7890918[a1];
  }
}

unsigned int *OUTLINED_FUNCTION_1_18(uint64_t a1)
{
  result = *(a1 + v1);
  v3 = *result;
  return result;
}

void sub_1A978CFE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak((v17 + 48));
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A978D5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A978D830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1A978DBB0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

const char *SFNearbyBLEFrameTypeToString_0(unsigned int a1)
{
  if (a1 > 0x41)
  {
    return "?";
  }

  else
  {
    return off_1E7890E60[a1];
  }
}

unsigned int *OUTLINED_FUNCTION_1_19(unsigned int **a1)
{
  result = *a1;
  v2 = *result;
  return result;
}

unsigned int *OUTLINED_FUNCTION_4_9(uint64_t a1)
{
  result = *(a1 + 160);
  v2 = *result;
  return result;
}

void sub_1A97987E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  (*(v35 + 16))(v35);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getCNContactFormatterClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!ContactsLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __ContactsLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E78911B8;
    v6 = 0;
    ContactsLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!ContactsLibraryCore_frameworkLibrary_0)
  {
    __getCNContactFormatterClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("CNContactFormatter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNContactFormatterClass_block_invoke_cold_1();
  }

  getCNContactFormatterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __ContactsLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1A979B360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A979B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class initSVXClientServiceManager()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXClientServiceManager");
  classSVXClientServiceManager = result;
  getSVXClientServiceManagerClass = SVXClientServiceManagerFunction;
  return result;
}

void *__SiriVOXLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriVOX.framework/SiriVOX", 2);
  SiriVOXLibrary_sLib = result;
  return result;
}

Class initSVXSystemEvent()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXSystemEvent");
  classSVXSystemEvent = result;
  getSVXSystemEventClass = SVXSystemEventFunction;
  return result;
}

Class initSiriTTSDaemonSession()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSDaemonSession");
  classSiriTTSDaemonSession = result;
  getSiriTTSDaemonSessionClass[0] = SiriTTSDaemonSessionFunction;
  return result;
}

void *__SiriTTSServiceLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/SiriTTSService.framework/SiriTTSService", 2);
  SiriTTSServiceLibrary_sLib = result;
  return result;
}

uint64_t initVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences()
{
  if (VoiceServicesLibrary_sOnce != -1)
  {
    initVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences_cold_1();
  }

  v0 = dlsym(VoiceServicesLibrary_sLib, "VSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences");
  softLinkVSPreferencesCopyDefaultOutputLanguageIdentifierForUserPreferences = v0;

  return v0();
}

void *__VoiceServicesLibrary_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/VoiceServices.framework/VoiceServices", 2);
  VoiceServicesLibrary_sLib = result;
  return result;
}

Class initSiriTTSSynthesisVoice()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSynthesisVoice");
  classSiriTTSSynthesisVoice = result;
  getSiriTTSSynthesisVoiceClass[0] = SiriTTSSynthesisVoiceFunction;
  return result;
}

Class initSiriTTSSynthesisRequest()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSynthesisRequest");
  classSiriTTSSynthesisRequest = result;
  getSiriTTSSynthesisRequestClass[0] = SiriTTSSynthesisRequestFunction;
  return result;
}

Class initSiriTTSSpeechRequest()
{
  if (SiriTTSServiceLibrary_sOnce != -1)
  {
    initSiriTTSDaemonSession_cold_1();
  }

  result = objc_getClass("SiriTTSSpeechRequest");
  classSiriTTSSpeechRequest = result;
  getSiriTTSSpeechRequestClass = SiriTTSSpeechRequestFunction;
  return result;
}

Class initSVXDeviceSetupContext()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXDeviceSetupContext");
  classSVXDeviceSetupContext = result;
  getSVXDeviceSetupContextClass = SVXDeviceSetupContextFunction;
  return result;
}

Class initSVXDeviceSetupFlowSceneBuilder()
{
  if (SiriVOXLibrary_sOnce != -1)
  {
    initSVXClientServiceManager_cold_1();
  }

  result = objc_getClass("SVXDeviceSetupFlowSceneBuilder");
  classSVXDeviceSetupFlowSceneBuilder = result;
  getSVXDeviceSetupFlowSceneBuilderClass = SVXDeviceSetupFlowSceneBuilderFunction;
  return result;
}

Class initTRAnisetteDataHandler()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRAnisetteDataHandler");
  classTRAnisetteDataHandler = result;
  getTRAnisetteDataHandlerClass = TRAnisetteDataHandlerFunction;
  return result;
}

void *__TouchRemoteLibrary_block_invoke_6()
{
  result = dlopen("/System/Library/PrivateFrameworks/TouchRemote.framework/TouchRemote", 2);
  TouchRemoteLibrary_sLib_6 = result;
  return result;
}

Class initTREventMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TREventMessage");
  classTREventMessage = result;
  getTREventMessageClass = TREventMessageFunction;
  return result;
}

Class initTRRequestMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRRequestMessage");
  classTRRequestMessage = result;
  getTRRequestMessageClass = TRRequestMessageFunction;
  return result;
}

Class initTRResponseMessage()
{
  if (TouchRemoteLibrary_sOnce_6 != -1)
  {
    initTRAnisetteDataHandler_cold_1();
  }

  result = objc_getClass("TRResponseMessage");
  classTRResponseMessage = result;
  getTRResponseMessageClass = TRResponseMessageFunction;
  return result;
}

void _wifiDeviceAttached(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceAttached_block_invoke;
  block[3] = &unk_1E788B198;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void _wifiServerRestarted(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiServerRestarted_block_invoke;
  block[3] = &unk_1E788B198;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void _wifiAutoJoinNotification(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = v4[14];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___wifiAutoJoinNotification_block_invoke;
  v9[3] = &unk_1E788A658;
  v10 = v4;
  v11 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

void _wifiDeviceDetached(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2[14];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___wifiDeviceDetached_block_invoke;
  block[3] = &unk_1E788B198;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

_BYTE *___wifiAutoJoinNotification_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[8] & 1) == 0)
  {
    return [result _wifiAutoJoinNotification:*(a1 + 40)];
  }

  return result;
}

uint64_t ___wifiDeviceAttached_block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      ___wifiDeviceAttached_block_invoke_cold_1();
    }

    v3 = *(v2 + 32);

    return [v3 _update];
  }

  return result;
}

uint64_t ___wifiDeviceDetached_block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v2 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 30 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      ___wifiDeviceDetached_block_invoke_cold_1();
    }

    *(*(v2 + 32) + 32) = 0;
    *(*(v2 + 32) + 24) = 0;
    v3 = *(v2 + 32);

    return [v3 _update];
  }

  return result;
}

uint64_t ___wifiServerRestarted_block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v7 = v1;
    v5 = result;
    if (gLogCategory_SFWiFiHealthMonitor <= 60 && (gLogCategory_SFWiFiHealthMonitor != -1 || _LogCategory_Initialize()))
    {
      ___wifiServerRestarted_block_invoke_cold_1();
    }

    [*(v5 + 32) _wifiEnsureStopped];
    v6 = *(v5 + 32);

    return [v6 _wifiEnsureStarted];
  }

  return result;
}

uint64_t sub_1A97A4444()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B0AB8);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B0AB8);
  if (qword_1EB3B0B18 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3638);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SFUserDefault.key.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t SFUserDefault.keyString.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t SFUserDefault.__allocating_init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(void *a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = *(v12 + 48);
  v21 = *(v12 + 52);
  v22 = swift_allocObject();
  SFUserDefault.init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(a1, a2, a3, a4, a5, a6, a7 & 0x1FF, a8, a9, a10, a11, a12);
  return v22;
}

uint64_t SFUserDefault.init(userDefaults:key:featureFlagsDomain:defaultValue:prefsChangedLibNotifyName:override:processesToKill:)(void *a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v55 = a8;
  v51 = a5;
  v52 = a6;
  LODWORD(v54) = a4;
  v18 = *v12;
  v19 = *(v18 + 80);
  v20 = sub_1A99770A0();
  v53 = *(v20 - 8);
  v21 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v48 - v22;
  v49 = a1;
  v59 = a1;
  v57 = v19;
  v58 = *(v18 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0B98, &unk_1A9990570);
  v24 = type metadata accessor for SFUserDefault.SendableUserDefaultsBox();
  sub_1A97A4AD0(sub_1A97A4AA0, v56, MEMORY[0x1E69E73E0], v24, v25, &v60);
  v50 = a12;
  v26 = v60;
  v13[2] = a2;
  v13[3] = a3;
  v48 = a3;
  LOBYTE(a1) = v54;
  *(v13 + 32) = v54;
  v28 = v51;
  v27 = v52;
  v13[7] = v26;
  v13[8] = v28;
  v13[9] = v27;
  *(v13 + 80) = a7;
  *(v13 + 81) = HIBYTE(a7) & 1;
  v29 = *(v19 - 8);
  (*(v29 + 16))(v13 + *(*v13 + 128), v55, v19);
  v30 = (v13 + *(*v13 + 144));
  *v30 = a9;
  v30[1] = a10;
  sub_1A9976550();
  v31 = v53;
  (*(v53 + 16))(v23, a11, v20);
  *(v13 + *(*v13 + 136)) = sub_1A9976560();
  v32 = *(*v13 + 152);
  *(v13 + v32) = v50;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v33 = sub_1A99768B0();
      v35 = v34;

      (*(v31 + 8))(a11, v20);
      (*(v29 + 8))(v55, v19);
LABEL_10:
      v13[5] = v33;
      v13[6] = v35;
      return v13;
    }

    __break(1u);
    goto LABEL_12;
  }

  v32 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((a2 & 0xFFFFF800) != 0xD800)
  {
    v32 = a2 >> 16;
    if (a2 >> 16 <= 0x10)
    {
      v54 = a11;
      if (a2 <= 0x7F)
      {
        v36 = a2 + 1;
LABEL_9:
        v37 = v55;
        v38 = v49;
        v60 = (v36 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v36) >> 3))));
        v33 = sub_1A99768B0();
        v35 = v39;

        (*(v31 + 8))(v54, v20);
        (*(v29 + 8))(v37, v19);
        goto LABEL_10;
      }

LABEL_14:
      v41 = (a2 & 0x3F) << 8;
      v42 = (a2 >> 6) + v41 + 33217;
      v43 = (v41 | (a2 >> 6) & 0x3F) << 8;
      v44 = (a2 >> 18) + ((v43 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
      v45 = (a2 >> 12) + v43 + 8487393;
      if (v32)
      {
        v36 = v44;
      }

      else
      {
        v36 = v45;
      }

      if (a2 < 0x800)
      {
        v36 = v42;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  v46 = *(*v13 + 48);
  v47 = *(*v13 + 52);
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

id sub_1A97A4AA0@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_1A97A4AD0@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t SFUserDefault.runtimeOverride.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1A97AF6E4(a1);
  v4 = *(v3 + 80);
  v5 = sub_1A99770A0();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*SFUserDefault.runtimeOverride.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v7 = sub_1A99770A0();
  v5[1] = v7;
  v8 = *(v7 - 8);
  v5[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  v11 = *(v1 + *(*v1 + 136));
  sub_1A9976530();
  return sub_1A97A5014;
}

void sub_1A97A5014(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_1A97AF6E4(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1A97AF6E4((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

BOOL SFUserDefault.hasRuntimeOverride.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1A99770A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *(v0 + *(v1 + 136));
  sub_1A9976530();
  v9 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v9;
}

Swift::Void __swiftcall SFUserDefault.clearRuntimeOverride()()
{
  v1 = *(*v0 + 80);
  v2 = sub_1A99770A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v7 - v5;
  (*(*(v1 - 8) + 56))(&v7 - v5, 1, 1, v1);
  sub_1A97AF6E4(v6);
  (*(v3 + 8))(v6, v2);
}

uint64_t SFUserDefault.hasValueOnDisk.getter()
{
  v1 = v0[7];
  if (!v1)
  {
    v11 = 0u;
    v12 = 0u;
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v2 = v0[5];
  v3 = v0[6];
  v4 = v1;
  v5 = sub_1A99767E0();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:
  sub_1A97B06FC(&v11, &qword_1EB3B0BA0, &unk_1A99923D0);
  return v7;
}

Swift::Void __swiftcall SFUserDefault.clearValueOnDisk()()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];
    v3 = v0[6];
    v4 = v1;
    v5 = sub_1A99767E0();
    [v4 removeObjectForKey_];
  }
}

uint64_t SFUserDefault.hasFeatureFlag.getter()
{
  v1 = *v0;
  if (*(v0 + 81))
  {
    v2 = 0;
  }

  else
  {
    v3 = *(v1 + 80);
    v4 = *(v1 + 88);
    v6 = *(v0 + 4);
    v7 = *(v0 + 80);
    v8 = *(v0 + 1);
    v9 = *(v0 + 32);
    type metadata accessor for SFUserDefault.FFKey();
    v2 = sub_1A97A553C();
  }

  return v2 & 1;
}

id sub_1A97A553C()
{
  result = objc_opt_self();
  if (!*v0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((*(v0 + 40) | *(v0 + 16)))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*(v0 + 24))
  {
    return [result featureEnabledForDomain_feature_];
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t SFUserDefault.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v86 = *v1;
  v4 = v86;
  v5 = *(v86 + 80);
  v6 = sub_1A99770A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v83 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v85 = &v77 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v77 - v14;
  v16 = *(v5 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v13);
  v82 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v77 - v22;
  v24 = *&v1[*(v4 + 136)];
  sub_1A9976530();
  v25 = v16;
  v26 = *(v16 + 48);
  if (v26(v15, 1, v5) != 1)
  {
    v38 = *(v25 + 32);
    v38(v23, v15, v5);
    v40 = a1;
    v41 = v23;
    return (v38)(v40, v41, v5);
  }

  v81 = a1;
  v29 = *(v7 + 8);
  v27 = v7 + 8;
  v28 = v29;
  v29(v15, v6);
  v30 = *(v2 + 7);
  if (!v30)
  {
    goto LABEL_9;
  }

  v78 = v28;
  v79 = v27;
  v80 = v25;
  v31 = *(v2 + 5);
  v32 = *(v2 + 6);
  v33 = v30;
  v34 = sub_1A99767E0();
  v35 = [v33 objectForKey_];

  if (!v35)
  {

    v25 = v80;
LABEL_9:
    if ((v2[81] & 1) != 0 || v5 != MEMORY[0x1E69E6370])
    {
      return (*(v25 + 16))(v81, &v2[*(*v2 + 128)], v5);
    }

    v43 = v2[80];
    v44 = v2[32];
    v45 = *(v86 + 88);
    v88 = *(v2 + 4);
    v89 = v43;
    v90 = *(v2 + 1);
    v91 = v44;
    type metadata accessor for SFUserDefault.FFKey();
    LOBYTE(v87[0]) = sub_1A97A553C() & 1;
    return swift_dynamicCast();
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(&v88, v87);
  v36 = v85;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v88);

    v37 = v80;
    (*(v80 + 56))(v36, 0, 1, v5);
    v38 = *(v37 + 32);
    v39 = v84;
    v38(v84, v36, v5);
    v40 = v81;
    v41 = v39;
    return (v38)(v40, v41, v5);
  }

  (*(v80 + 56))(v36, 1, 1, v5);
  v78(v36, v6);
  v46 = sub_1A99767E0();
  v47 = [v33 stringForKey_];

  if (!v47)
  {
    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v66 = sub_1A99764A0();
    __swift_project_value_buffer(v66, qword_1EB3B0AB8);

    v53 = sub_1A9976480();
    v54 = sub_1A9976F70();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87[0] = v56;
      *v55 = 136315138;
      v67 = *(v2 + 2);
      v68 = *(v2 + 3);
      v69 = v2[32];
      v70 = v5;
      v71 = sub_1A99772C0();
      v73 = v72;

      v74 = sub_1A97AF148(v71, v73, v87);

      *(v55 + 4) = v74;
      v5 = v70;
      v65 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_23;
    }

LABEL_24:

    goto LABEL_25;
  }

  v48 = sub_1A9976820();
  v50 = v49;

  v51 = v83;
  (*(*(v86 + 88) + 16))(v48, v50, v5);
  if (v26(v51, 1, v5) == 1)
  {
    v78(v51, v6);
    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v52 = sub_1A99764A0();
    __swift_project_value_buffer(v52, qword_1EB3B0AB8);

    v53 = sub_1A9976480();
    v54 = sub_1A9976F70();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v87[0] = v56;
      *v55 = 136315138;
      v57 = *(v2 + 2);
      v58 = *(v2 + 3);
      v59 = v2[32];
      v60 = v5;
      v61 = sub_1A99772C0();
      v63 = v62;

      v64 = sub_1A97AF148(v61, v63, v87);

      *(v55 + 4) = v64;
      v5 = v60;
      v65 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_23:
      _os_log_impl(&dword_1A9662000, v53, v54, v65, v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v56);
      MEMORY[0x1AC58D2C0](v56, -1, -1);
      MEMORY[0x1AC58D2C0](v55, -1, -1);

LABEL_25:
      __swift_destroy_boxed_opaque_existential_0Tm(&v88);
      return (*(v80 + 16))(v81, &v2[*(*v2 + 128)], v5);
    }

    goto LABEL_24;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v88);

  v75 = *(v80 + 32);
  v76 = v82;
  v75(v82, v51, v5);
  return (v75)(v81, v76, v5);
}

uint64_t sub_1A97A5DD0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 16) - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return SFUserDefault.value.setter(v7);
}

uint64_t SFUserDefault.value.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1A99762C0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A9976230();
  v77 = *(v10 - 8);
  v11 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SFUserDefaultsRepresentation();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2[7];
  if (v18)
  {
    v73 = v10;
    v74 = v9;
    v75 = v6;
    v76 = v5;
    v19 = a1;
    v21 = *(v4 + 80);
    v20 = *(v4 + 88);
    v22 = *(v20 + 8);
    v78 = v18;
    v79 = v21;
    v23 = v19;
    v22(v21, v20);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          v64 = *v17;
          v65 = v2[5];
          v66 = v2[6];
          v67 = sub_1A99767E0();
          v28 = v78;
          [v78 setDouble:v67 forKey:v64];

          goto LABEL_20;
        }

        v40 = *v17;
        v41 = sub_1A9977A30();
        v42 = v2[5];
        v43 = v2[6];
        v44 = sub_1A99767E0();
        v45 = v78;
        [v78 setObject:v41 forKey:v44];
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v25 = *v17;
          v26 = v2[5];
          v27 = v2[6];
          v28 = sub_1A99767E0();
          v29 = v78;
          [v78 setBool:v25 forKey:v28];

LABEL_20:
          return (*(*(v79 - 8) + 8))(v23);
        }

        v54 = *v17;
        v55 = v2[5];
        v56 = v2[6];
        v44 = sub_1A99767E0();
        v45 = v78;
        [v78 setInteger:*&v54 forKey:v44];
      }

      return (*(*(v79 - 8) + 8))(v23);
    }

    if (EnumCaseMultiPayload > 5)
    {
      v32 = v19;
      if (EnumCaseMultiPayload == 6)
      {
        v47 = v74;
        v46 = v75;
        v48 = v76;
        (*(v75 + 32))(v74, v17, v76);
        _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
        v49 = sub_1A99767E0();

        v50 = v2[5];
        v51 = v2[6];
        v52 = sub_1A99767E0();
        v53 = v78;
        [v78 setObject:v49 forKey:v52];

        (*(*(v79 - 8) + 8))(v32);
        return (*(v46 + 8))(v47, v48);
      }

      v68 = v2[5];
      v69 = v2[6];
      v70 = sub_1A99767E0();
      v71 = v78;
      [v78 removeObjectForKey_];
    }

    else
    {
      v32 = v19;
      if (EnumCaseMultiPayload != 4)
      {
        v57 = v77;
        v58 = v73;
        (*(v77 + 32))(v13, v17, v73);
        v59 = sub_1A99760F0();
        v60 = v2[5];
        v61 = v2[6];
        v62 = sub_1A99767E0();
        v63 = v78;
        [v78 setObject:v59 forKey:v62];

        (*(*(v79 - 8) + 8))(v32);
        return (*(v57 + 8))(v13, v58);
      }

      v33 = *v17;
      v34 = *(v17 + 1);
      v35 = sub_1A99767E0();

      v36 = v2[5];
      v37 = v2[6];
      v38 = sub_1A99767E0();
      v39 = v78;
      [v78 setObject:v35 forKey:v38];
    }

    return (*(*(v79 - 8) + 8))(v32);
  }

  else
  {
    v30 = *(*(*(v4 + 80) - 8) + 8);

    return v30(a1);
  }
}

void (*SFUserDefault.value.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  SFUserDefault.value.getter(v9);
  return sub_1A97A6560;
}

void sub_1A97A6560(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    SFUserDefault.value.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    SFUserDefault.value.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SFUserDefault.values.getter()
{
  v1 = *(*v0 + 80);
  v2 = sub_1A9976C30();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  *(&v7 - v4) = 1;
  (*(v5 + 104))(&v7 - v4, *MEMORY[0x1E69E8640]);
  return sub_1A9976C90();
}

uint64_t sub_1A97A6720(uint64_t a1, uint64_t *a2)
{
  v44 = *a2;
  v4 = *(v44 + 80);
  v5 = sub_1A9976C60();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - v12;
  v14 = sub_1A9976C00();
  v15 = *(v14 - 8);
  v40 = *(v15 + 56);
  v41 = v14;
  v39 = v15 + 56;
  v40(v13, 1, 1);
  v16 = *(v6 + 16);
  v45 = a1;
  v38 = v16;
  v16(v9, a1, v5);
  v17 = *(v6 + 80);
  v43 = v7;
  v18 = swift_allocObject();
  v19 = v44;
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v44 = v4;
  *(v18 + 4) = v4;
  v20 = *(v19 + 88);
  *(v18 + 5) = v20;
  *(v18 + 6) = a2;
  v21 = *(v6 + 32);
  v42 = v9;
  v37 = v21;
  v21(&v18[(v17 + 56) & ~v17], v9, v5);

  v22 = v13;
  v23 = sub_1A97B4F40(0, 0, v13, &unk_1A9991A10, v18);
  v24 = (a2 + *(*a2 + 144));
  v25 = v24[1];
  if (v25)
  {
    v26 = v20;
    v35 = *v24;
    v36 = v22;
    (v40)(v22, 1, 1, v41);
    v27 = v42;
    v38(v42, v45, v5);
    v28 = (v17 + 72) & ~v17;
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v30 = v44;
    *(v29 + 4) = v44;
    *(v29 + 5) = v26;
    *(v29 + 6) = v35;
    *(v29 + 7) = v25;
    *(v29 + 8) = a2;
    v37(&v29[v28], v27, v5);

    v31 = sub_1A97B4F40(0, 0, v36, &unk_1A9991A20, v29);
  }

  else
  {
    v31 = 0;
    v30 = v44;
    v26 = v20;
  }

  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v31;

  sub_1A9976C20();
}

uint64_t sub_1A97A6AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = *(*a4 + 80);
  v5[5] = v6;
  v7 = sub_1A9976C10();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(v6 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = sub_1A99770A0();
  v12 = sub_1A99770A0();
  v5[13] = v12;
  v13 = *(v12 - 8);
  v5[14] = v13;
  v14 = *(v13 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = sub_1A9976550();
  v5[17] = swift_getWitnessTable();
  v15 = sub_1A9976500();
  v5[18] = v15;
  v16 = *(v15 - 8);
  v5[19] = v16;
  v17 = *(v16 + 64) + 15;
  v5[20] = swift_task_alloc();
  v18 = sub_1A99764F0();
  v5[21] = v18;
  v19 = *(v18 - 8);
  v5[22] = v19;
  v20 = *(v19 + 64) + 15;
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97A6DA8, 0, 0);
}

uint64_t sub_1A97A6DA8()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v6 = v0[16];
  v0[2] = *(v0[3] + *(*v0[3] + 136));
  MEMORY[0x1AC589270](v6, v4);
  sub_1A99764D0();
  (*(v3 + 8))(v2, v5);
  v7 = v0[21];
  v8 = *(MEMORY[0x1E69E85D8] + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_1A97A6EE8;
  v11 = v0[23];
  v12 = v0[21];
  v13 = v0[15];

  return MEMORY[0x1EEE6D8E0](v13, 0, 0, v12, WitnessTable);
}

uint64_t sub_1A97A6EE8()
{
  v2 = *(*v1 + 192);
  v4 = *v1;

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A97A6FF8, 0, 0);
  }

  return result;
}

uint64_t sub_1A97A6FF8()
{
  v1 = v0[15];
  if ((*(*(v0[12] - 8) + 48))(v1, 1) == 1)
  {
    v2 = v0[20];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[8];
    (*(v0[22] + 8))(v0[23], v0[21]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[14];
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[7];
    v24 = v0[6];
    v25 = v0[13];
    v14 = v0[5];
    v23 = v0[4];
    v15 = v0[3];
    SFUserDefault.value.getter(v9);
    (*(v12 + 16))(v10, v9, v14);
    sub_1A9976C60();
    sub_1A9976C40();
    (*(v13 + 8))(v11, v24);
    (*(v12 + 8))(v9, v14);
    (*(v8 + 8))(v1, v25);
    v16 = v0[21];
    v17 = *(MEMORY[0x1E69E85D8] + 4);
    v18 = swift_task_alloc();
    v0[24] = v18;
    WitnessTable = swift_getWitnessTable();
    *v18 = v0;
    v18[1] = sub_1A97A6EE8;
    v20 = v0[23];
    v21 = v0[21];
    v22 = v0[15];

    return MEMORY[0x1EEE6D8E0](v22, 0, 0, v21, WitnessTable);
  }
}

uint64_t sub_1A97A7268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = *(*a6 + 80);
  v7[6] = v8;
  v9 = sub_1A9976C10();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  v12 = *(v8 - 8);
  v7[10] = v12;
  v13 = *(v12 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1220, &qword_1A9991A28);
  v7[13] = v14;
  v15 = *(v14 - 8);
  v7[14] = v15;
  v16 = *(v15 + 64) + 15;
  v7[15] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1228, &qword_1A9991A30);
  v7[16] = v17;
  v18 = *(v17 - 8);
  v7[17] = v18;
  v19 = *(v18 + 64) + 15;
  v7[18] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1230, &qword_1A9991A38);
  v7[19] = v20;
  v21 = *(v20 - 8);
  v7[20] = v21;
  v22 = *(v21 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A97A74DC, 0, 0);
}

uint64_t sub_1A97A74DC()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = v0[14];
  v9 = v0[2];
  v8 = v0[3];
  *v5 = 1;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8640], v6);
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  sub_1A9976C90();

  sub_1A9976C70();
  (*(v3 + 8))(v2, v4);
  v11 = *(MEMORY[0x1E69E8678] + 4);
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_1A97A7648;
  v13 = v0[21];
  v14 = v0[19];

  return MEMORY[0x1EEE6D9C8](v0 + 23, 0, 0, v14);
}

uint64_t sub_1A97A7648()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A97A7744, 0, 0);
}

uint64_t sub_1A97A7744()
{
  if (*(v0 + 188) == 1)
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 120);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 72);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 40);
    v14 = *(v0 + 48);
    v16 = *(v0 + 32);
    SFUserDefault.value.getter(v8);
    (*(v11 + 16))(v9, v8, v14);
    sub_1A9976C60();
    sub_1A9976C40();
    (*(v13 + 8))(v10, v12);
    (*(v11 + 8))(v8, v14);
    v17 = *(MEMORY[0x1E69E8678] + 4);
    v18 = swift_task_alloc();
    *(v0 + 176) = v18;
    *v18 = v0;
    v18[1] = sub_1A97A7648;
    v19 = *(v0 + 168);
    v20 = *(v0 + 152);

    return MEMORY[0x1EEE6D9C8](v0 + 184, 0, 0, v20);
  }
}

uint64_t sub_1A97A793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9976CB0();
  if (a3)
  {

    return sub_1A9976CB0();
  }

  return result;
}

char *SFUserDefault.description.getter(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v31 - v5;
  if (SFUserDefault.hasRuntimeOverride.getter())
  {
    v7 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1A97AE618((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = 0x4F656D69746E7572;
    *(v10 + 5) = 0xEF65646972726576;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (SFUserDefault.hasValueOnDisk.getter())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A97AE618(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v11 = *(v7 + 3);
    if (v12 >= v11 >> 1)
    {
      v7 = sub_1A97AE618((v11 > 1), v12 + 1, 1, v7);
    }

    *(v7 + 2) = v12 + 1;
    v13 = &v7[16 * v12];
    *(v13 + 4) = 0x446E4F65756C6176;
    *(v13 + 5) = 0xEB000000006B7369;
  }

  if (SFUserDefault.hasFeatureFlag.getter())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1A97AE618(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1A97AE618((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    v16 = &v7[16 * v15];
    *(v16 + 4) = 0x4665727574616566;
    *(v16 + 5) = 0xEB0000000067616CLL;
  }

  else if (!*(v7 + 2))
  {

    v31 = 0;
    v32 = 0xE000000000000000;
    v27 = *(v1 + 16);
    v28 = *(v1 + 24);
    v29 = *(v1 + 32);
    v30 = sub_1A99772C0();
    MEMORY[0x1AC5895B0](v30);

    v24 = 8250;
    v25 = 0xE200000000000000;
    goto LABEL_20;
  }

  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580);
  v17 = sub_1A9976760();
  v19 = v18;

  v31 = 0;
  v32 = 0xE000000000000000;
  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = *(v1 + 32);
  v23 = sub_1A99772C0();
  MEMORY[0x1AC5895B0](v23);

  MEMORY[0x1AC5895B0](15392, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v17, v19);

  v24 = 2112062;
  v25 = 0xE300000000000000;
LABEL_20:
  MEMORY[0x1AC5895B0](v24, v25);
  SFUserDefault.value.getter(v6);
  sub_1A99777B0();
  (*(v3 + 8))(v6, v2);
  return v31;
}

uint64_t SFUserDefault.userDefaultDescription.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - v7;
  v9 = v4 == MEMORY[0x1E69E6370];
  v11 = v2[5];
  v10 = v2[6];
  v17 = 0;
  v18 = 0xE000000000000000;

  SFUserDefault.value.getter(v8);
  sub_1A99777B0();
  (*(v5 + 8))(v8, v4);
  v12 = v17;
  v13 = v18;
  LOBYTE(v4) = SFUserDefault.hasRuntimeOverride.getter();
  LOBYTE(v8) = SFUserDefault.hasValueOnDisk.getter();
  v14 = SFUserDefault.hasFeatureFlag.getter();
  v15 = *(v2 + *(*v2 + 152));
  *a2 = v11;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v4 & 1;
  *(a2 + 33) = v8 & 1;
  *(a2 + 34) = v14 & 1;
  *(a2 + 35) = 0;
  *(a2 + 36) = v9;
  *(a2 + 40) = v15;
}

uint64_t *SFUserDefault.deinit()
{
  v1 = *v0;
  v2 = v0[6];

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 128));
  v3 = *(v0 + *(*v0 + 136));

  v4 = *(v0 + *(*v0 + 144) + 8);

  v5 = *(v0 + *(*v0 + 152));

  return v0;
}

uint64_t SFUserDefault.__deallocating_deinit()
{
  SFUserDefault.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SFAnyUserDefault.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1A97A805C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[6];
  *a2 = a1[5];
  a2[1] = v2;
  a2[3] = sub_1A97B22CC;
  a2[4] = a1;
  a2[7] = j___s7Sharing13SFUserDefaultC04userC11DescriptionAA0bcE0Vvg;
  a2[8] = a1;
  a2[5] = sub_1A97B22EC;
  a2[6] = a1;
  a2[2] = *(a1 + *(*a1 + 152));
  swift_retain_n();
}

uint64_t sub_1A97A80FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a4;
  v7 = *a3;
  v8 = *(*a3 + 80);
  v9 = sub_1A99770A0();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v30 = *(v8 - 8);
  v14 = *(v30 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v29 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v31 = a3;
  v19 = *(v7 + 88);
  v20 = *(v19 + 16);

  v20(a1, a2, v8, v19);
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  v21 = sub_1A9977B00();
  MEMORY[0x1AC5895B0](v21);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  v22 = v33;
  Optional.tryUnwrap(_:file:line:)(v34, v35, 0xD00000000000004CLL, 0x80000001A99E2A20, 235, v9, v18);
  (*(v36 + 8))(v13, v9);
  if (v22)
  {
  }

  v24 = v29;
  v25 = v30;
  (*(v30 + 16))(v29, v18, v8);
  SFUserDefault.value.setter(v24);
  v26 = v32;
  v32[3] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  return (*(v25 + 32))(boxed_opaque_existential_0, v18, v8);
}

uint64_t SFAnyUserDefault.userDefaultDescription.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  return v1();
}

uint64_t SFAnyUserDefault.update(with:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

Swift::Bool __swiftcall SFAnyUserDefault.clearValueOnDisk()()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1() & 1;
}

uint64_t sub_1A97A84A4()
{
  type metadata accessor for SFUserDefaultsRegistry();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1180, &qword_1A99919C8);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1188, &qword_1A99919D0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1A9977AE0();
  qword_1EB3EAF78 = result;
  return result;
}

uint64_t sub_1A97A8548()
{

  sub_1A97A805C(v1, v5);
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1A97B2280(v3);
  os_unfair_lock_unlock(v2 + 4);
  return sub_1A97B229C(v5);
}

uint64_t sub_1A97A85B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1A97AE724(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 16) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1A97AE724((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[72 * v8];
  *(v9 + 2) = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  *(v9 + 12) = *(a3 + 64);
  *(v9 + 4) = v11;
  *(v9 + 5) = v12;
  *(v9 + 3) = v10;
  *(a2 + 16) = v5;
  swift_endAccess();
  return sub_1A97B2248(a3, v14);
}

uint64_t sub_1A97A86B4@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *(a1 + 16);
}

uint64_t SFUserDefaultsRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t SFUserDefaultsRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t SFUserDefaultDescription.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SFUserDefaultDescription.resolvedValueDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SFUserDefaultDescription.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 33);
  v6 = *(v0 + 34);
  v7 = *(v0 + 35);
  if (*(v0 + 32) != 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    if (!*(v0 + 33))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v8 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1A97AE618((v9 > 1), v10 + 1, 1, v8);
  }

  *(v8 + 2) = v10 + 1;
  v11 = &v8[16 * v10];
  *(v11 + 4) = 0x4F656D69746E7572;
  *(v11 + 5) = 0xEF65646972726576;
  if (v5)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A97AE618(0, *(v8 + 2) + 1, 1, v8);
    }

    v13 = *(v8 + 2);
    v12 = *(v8 + 3);
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1A97AE618((v12 > 1), v13 + 1, 1, v8);
    }

    *(v8 + 2) = v13 + 1;
    v14 = &v8[16 * v13];
    *(v14 + 4) = 0x446E4F65756C6176;
    *(v14 + 5) = 0xEB000000006B7369;
  }

LABEL_12:
  if (v6)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A97AE618(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_1A97AE618((v18 > 1), v19 + 1, 1, v8);
    }

    *(v8 + 2) = v19 + 1;
    v20 = &v8[16 * v19];
    *(v20 + 4) = 0x4665727574616566;
    *(v20 + 5) = 0xEB0000000067616CLL;
    if (v7)
    {
      goto LABEL_14;
    }
  }

  else if (v7)
  {
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1A97AE618(0, *(v8 + 2) + 1, 1, v8);
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    if (v16 >= v15 >> 1)
    {
      v8 = sub_1A97AE618((v15 > 1), v16 + 1, 1, v8);
    }

    *(v8 + 2) = v16 + 1;
    v17 = &v8[16 * v16];
    *(v17 + 4) = 0x656B636172746E75;
    *(v17 + 5) = 0xE900000000000064;
    goto LABEL_25;
  }

  if (!*(v8 + 2))
  {

    v27 = v2;

    v24 = 8250;
    v25 = 0xE200000000000000;
    goto LABEL_26;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97AF974(&qword_1EB3AB6D0, &unk_1EB3B2AC0, &qword_1A9990580);
  v21 = sub_1A9976760();
  v23 = v22;

  v27 = v2;

  MEMORY[0x1AC5895B0](15392, 0xE200000000000000);
  MEMORY[0x1AC5895B0](v21, v23);

  v24 = 2112062;
  v25 = 0xE300000000000000;
LABEL_26:
  MEMORY[0x1AC5895B0](v24, v25);
  MEMORY[0x1AC5895B0](v4, v3);
  return v27;
}

uint64_t SFUserDefaultDescription.oneLineValueDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v7[0] = 10;
  v7[1] = 0xE100000000000000;
  v6[2] = v7;

  v7[0] = sub_1A97ADE50(0x7FFFFFFFFFFFFFFFLL, 1, sub_1A97AF91C, v6, v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA8, &qword_1A9990588);
  sub_1A97AF974(&qword_1EB3B0BB0, &qword_1EB3B0BA8, &qword_1A9990588);
  sub_1A97AF9BC();
  v4 = sub_1A9976A30();

  return v4;
}

unint64_t sub_1A97A8C94()
{
  v1 = *v0;
  v2 = 7955819;
  v3 = 0x6C6F6F427369;
  if (v1 != 6)
  {
    v3 = 0x65737365636F7270;
  }

  v4 = 0x7574616546736168;
  if (v1 != 4)
  {
    v4 = 0x656B636172746E75;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x65756C6156736168;
  if (v1 == 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A97A8DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97B075C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97A8DE4(uint64_t a1)
{
  v2 = sub_1A97AFA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A8E20(uint64_t a1)
{
  v2 = sub_1A97AFA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFUserDefaultDescription.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BC0, &qword_1A9990590);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  LODWORD(v10) = *(v1 + 32);
  v19[6] = *(v1 + 33);
  v19[7] = v10;
  LODWORD(v10) = *(v1 + 34);
  v19[4] = *(v1 + 35);
  v19[5] = v10;
  v19[3] = *(v1 + 36);
  v11 = v1[5];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1A97AFA54();
  sub_1A9977AA0();
  LOBYTE(v24) = 0;
  v17 = v22;
  sub_1A9977690();
  if (!v17)
  {
    LOBYTE(v24) = 1;
    sub_1A9977690();
    LOBYTE(v24) = 2;
    sub_1A99776A0();
    LOBYTE(v24) = 3;
    sub_1A99776A0();
    LOBYTE(v24) = 4;
    sub_1A99776A0();
    LOBYTE(v24) = 5;
    sub_1A99776A0();
    LOBYTE(v24) = 6;
    sub_1A99776A0();
    v24 = v11;
    v23 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
    sub_1A97AFAF4(&qword_1EB3AB6F0);
    sub_1A99776E0();
  }

  return (*(v4 + 8))(v7, v16);
}

uint64_t SFUserDefaultDescription.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0BD8, &qword_1A9990598);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97AFA54();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_1A99775A0();
  v13 = v12;
  v31 = a2;
  v14 = v11;
  LOBYTE(v34[0]) = 1;
  *&v30 = sub_1A99775A0();
  *(&v30 + 1) = v15;
  LOBYTE(v34[0]) = 2;
  v29 = sub_1A99775B0();
  LOBYTE(v34[0]) = 3;
  v16 = sub_1A99775B0();
  LOBYTE(v34[0]) = 4;
  LODWORD(v28) = sub_1A99775B0();
  LOBYTE(v34[0]) = 5;
  v27 = sub_1A99775B0();
  LOBYTE(v34[0]) = 6;
  v26 = sub_1A99775B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  v41 = 7;
  sub_1A97AFAF4(&unk_1EB3AB6C0);
  sub_1A99775F0();
  v29 &= 1u;
  LOBYTE(v16) = v16 & 1;
  v25 = v28 & 1;
  v17 = v27 & 1;
  v27 = v26 & 1;
  (*(v6 + 8))(v9, v5);
  v28 = v42;
  *&v32[0] = v14;
  *(&v32[0] + 1) = v13;
  v18 = *(&v30 + 1);
  v32[1] = v30;
  LOBYTE(v33) = v29;
  BYTE1(v33) = v16;
  v19 = v25;
  BYTE2(v33) = v25;
  BYTE3(v33) = v17;
  v20 = v27;
  BYTE4(v33) = v27;
  *(&v33 + 1) = v42;
  v21 = v30;
  v22 = v31;
  *v31 = v32[0];
  v22[1] = v21;
  v22[2] = v33;
  sub_1A97AFB60(v32, v34);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v34[0] = v14;
  v34[1] = v13;
  v34[2] = v30;
  v34[3] = v18;
  v35 = v29;
  v36 = v16;
  v37 = v19;
  v38 = v17;
  v39 = v20;
  v40 = v28;
  return sub_1A97AFB98(v34);
}

uint64_t sub_1A97A95C0(uint64_t a1)
{
  v2 = sub_1A97AFF14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A95FC(uint64_t a1)
{
  v2 = sub_1A97AFF14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s7Sharing18OSLogDateFormatterV5StyleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9680()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t sub_1A97A96C4()
{
  v1 = *v0;
  v2 = 1819242338;
  v3 = 1684632949;
  if (v1 != 6)
  {
    v3 = 1701736302;
  }

  v4 = 0x676E69727473;
  if (v1 != 4)
  {
    v4 = 1702125924;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x3233746E6975;
  if (v1 != 2)
  {
    v5 = 0x656C62756F64;
  }

  if (*v0)
  {
    v2 = 7630441;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A97A978C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A97B0A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A97A97B4(uint64_t a1)
{
  v2 = sub_1A97AFBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A97F0(uint64_t a1)
{
  v2 = sub_1A97AFBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A982C(uint64_t a1)
{
  v2 = sub_1A97AFD28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9868(uint64_t a1)
{
  v2 = sub_1A97AFD28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A98A4(uint64_t a1)
{
  v2 = sub_1A97AFE18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A98E0(uint64_t a1)
{
  v2 = sub_1A97AFE18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A991C(uint64_t a1)
{
  v2 = sub_1A97AFEC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9958(uint64_t a1)
{
  v2 = sub_1A97AFEC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A99A0(uint64_t a1)
{
  v2 = sub_1A97AFC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A99DC(uint64_t a1)
{
  v2 = sub_1A97AFC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9A18(uint64_t a1)
{
  v2 = sub_1A97AFDC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9A54(uint64_t a1)
{
  v2 = sub_1A97AFDC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9A90(uint64_t a1)
{
  v2 = sub_1A97AFE6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9ACC(uint64_t a1)
{
  v2 = sub_1A97AFE6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A97A9B08()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9B4C()
{
  sub_1A9977980();
  MEMORY[0x1AC58A630](0);
  return sub_1A99779B0();
}

uint64_t sub_1A97A9B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A97A9C0C(uint64_t a1)
{
  v2 = sub_1A97AFCD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A97A9C48(uint64_t a1)
{
  v2 = sub_1A97AFCD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFUserDefaultsRepresentation.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BE8, &qword_1A99905A0);
  v86 = *(v2 - 8);
  v87 = v2;
  v3 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v84 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BF0, &qword_1A99905A8);
  v91 = *(v5 - 8);
  v92 = v5;
  v6 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v65 - v7;
  v8 = sub_1A99762C0();
  v89 = *(v8 - 8);
  v90 = v8;
  v9 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v85 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BF8, &qword_1A99905B0);
  v82 = *(v11 - 8);
  v83 = v11;
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v65 - v13;
  v14 = sub_1A9976230();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v78 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C00, &qword_1A99905B8);
  v76 = *(v77 - 8);
  v17 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v65 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C08, &qword_1A99905C0);
  v73 = *(v74 - 8);
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v65 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C10, &qword_1A99905C8);
  v70 = *(v71 - 8);
  v21 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v65 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C18, &qword_1A99905D0);
  v67 = *(v68 - 8);
  v23 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v25 = &v65 - v24;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C20, &qword_1A99905D8);
  v65 = *(v66 - 8);
  v26 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v28 = &v65 - v27;
  v29 = type metadata accessor for SFUserDefaultsRepresentation();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = (&v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C28, &qword_1A99905E0);
  v34 = *(v33 - 8);
  v94 = v33;
  v95 = v34;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v65 - v36;
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97AFBC8();
  v39 = v37;
  sub_1A9977AA0();
  sub_1A97AFC1C(v93, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v103 = 7;
        sub_1A97AFC80();
        v63 = v84;
        v64 = v94;
        sub_1A9977640();
        (*(v86 + 8))(v63, v87);
        return (*(v95 + 8))(v37, v64);
      }

      v54 = v89;
      v53 = v90;
      v55 = v85;
      (*(v89 + 32))(v85, v32, v90);
      v102 = 6;
      sub_1A97AFCD4();
      v56 = v88;
      v47 = v94;
      sub_1A9977640();
      sub_1A97AFD7C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8]);
      v57 = v92;
      sub_1A99776E0();
      v58 = v91;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v45 = *v32;
        v44 = v32[1];
        v100 = 4;
        sub_1A97AFDC4();
        v46 = v75;
        v47 = v94;
        sub_1A9977640();
        v48 = v77;
        sub_1A9977690();

        (*(v76 + 8))(v46, v48);
        return (*(v95 + 8))(v39, v47);
      }

      v54 = v80;
      v53 = v81;
      v55 = v78;
      (*(v80 + 32))(v78, v32, v81);
      v101 = 5;
      sub_1A97AFD28();
      v56 = v79;
      v47 = v94;
      sub_1A9977640();
      sub_1A97AFD7C(&qword_1EB3B0C58, MEMORY[0x1E6969530]);
      v57 = v83;
      sub_1A99776E0();
      v58 = v82;
    }

    (*(v58 + 8))(v56, v57);
    (*(v54 + 8))(v55, v53);
    return (*(v95 + 8))(v39, v47);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = *v32;
      v98 = 2;
      sub_1A97AFE6C();
      v50 = v69;
      v42 = v94;
      sub_1A9977640();
      v51 = v71;
      sub_1A9977700();
      v52 = &v104;
    }

    else
    {
      v62 = *v32;
      v99 = 3;
      sub_1A97AFE18();
      v50 = v72;
      v42 = v94;
      sub_1A9977640();
      v51 = v74;
      sub_1A99776B0();
      v52 = &v105;
    }

    (*(*(v52 - 32) + 8))(v50, v51);
  }

  else if (EnumCaseMultiPayload)
  {
    v59 = *v32;
    v97 = 1;
    sub_1A97AFEC0();
    v42 = v94;
    sub_1A9977640();
    v60 = v68;
    sub_1A99776C0();
    (*(v67 + 8))(v25, v60);
  }

  else
  {
    v41 = *v32;
    v96 = 0;
    sub_1A97AFF14();
    v42 = v94;
    sub_1A9977640();
    v43 = v66;
    sub_1A99776A0();
    (*(v65 + 8))(v28, v43);
  }

  return (*(v95 + 8))(v39, v42);
}

uint64_t SFUserDefaultsRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C88, &qword_1A99905E8);
  v119 = *(v3 - 8);
  v120 = v3;
  v4 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v129 = &v101 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C90, &qword_1A99905F0);
  v7 = *(v6 - 8);
  v121 = v6;
  v122 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v135 = &v101 - v9;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0C98, &qword_1A99905F8);
  v117 = *(v118 - 8);
  v10 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v128 = &v101 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CA0, &qword_1A9990600);
  v115 = *(v116 - 8);
  v12 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v127 = &v101 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CA8, &qword_1A9990608);
  v113 = *(v114 - 8);
  v14 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v126 = &v101 - v15;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CB0, &qword_1A9990610);
  v111 = *(v112 - 8);
  v16 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v134 = &v101 - v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CB8, &qword_1A9990618);
  v110 = *(v109 - 8);
  v18 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v133 = &v101 - v19;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CC0, &qword_1A9990620);
  v107 = *(v108 - 8);
  v20 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v125 = &v101 - v21;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0CC8, &qword_1A9990628);
  v136 = *(v132 - 8);
  v22 = *(v136 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v24 = &v101 - v23;
  v131 = type metadata accessor for SFUserDefaultsRepresentation();
  v25 = *(*(v131 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v131);
  v124 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v123 = &v101 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v106 = (&v101 - v31);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v101 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v101 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v101 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v101 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v101 - v44;
  v46 = a1[3];
  v47 = a1[4];
  v138 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v46);
  sub_1A97AFBC8();
  v48 = v137;
  sub_1A9977A70();
  if (!v48)
  {
    v101 = v43;
    v102 = v40;
    v103 = v37;
    v104 = v34;
    v50 = v133;
    v49 = v134;
    v51 = v135;
    v105 = v45;
    v137 = 0;
    v52 = v132;
    v53 = sub_1A9977620();
    if (*(v53 + 16) != 1 || (v54 = *(v53 + 32), v54 == 8))
    {
      v57 = sub_1A9977300();
      swift_allocError();
      v59 = v58;
      v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630) + 48);
      *v59 = v131;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v57 - 8) + 104))(v59, *MEMORY[0x1E69E6AF8], v57);
      swift_willThrow();
      (*(v136 + 8))(v24, v52);
      goto LABEL_10;
    }

    if (*(v53 + 32) <= 3u)
    {
      if (*(v53 + 32) <= 1u)
      {
        if (!*(v53 + 32))
        {
          v139 = 0;
          sub_1A97AFF14();
          v55 = v125;
          v56 = v137;
          sub_1A9977530();
          if (v56)
          {
LABEL_8:
            (*(v136 + 8))(v24, v52);
LABEL_10:
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0Tm(v138);
          }

          v85 = v108;
          v86 = sub_1A99775B0();
          (*(v107 + 8))(v55, v85);
          (*(v136 + 8))(v24, v52);
          swift_unknownObjectRelease();
          v87 = v86 & 1;
          v96 = v101;
          *v101 = v87;
          goto LABEL_34;
        }

        v140 = 1;
        sub_1A97AFEC0();
        v78 = v137;
        sub_1A9977530();
        if (v78)
        {
          goto LABEL_8;
        }

        v88 = v109;
        v89 = sub_1A99775D0();
        v90 = v136;
        v100 = v89;
        (*(v110 + 8))(v50, v88);
        (*(v90 + 8))(v24, v52);
        swift_unknownObjectRelease();
        v93 = v102;
        *v102 = v100;
LABEL_35:
        swift_storeEnumTagMultiPayload();
        v97 = v93;
        goto LABEL_36;
      }

      v64 = v136;
      if (v54 == 2)
      {
        v141 = 2;
        sub_1A97AFE6C();
        v62 = v24;
        v70 = v137;
        sub_1A9977530();
        if (!v70)
        {
          v71 = v112;
          v72 = sub_1A9977610();
          v73 = v49;
          v95 = v72;
          (*(v111 + 8))(v73, v71);
          (*(v64 + 8))(v24, v52);
          swift_unknownObjectRelease();
          v93 = v103;
          *v103 = v95;
          goto LABEL_35;
        }
      }

      else
      {
        v142 = 3;
        sub_1A97AFE18();
        v81 = v126;
        v62 = v24;
        v82 = v137;
        sub_1A9977530();
        if (!v82)
        {
          v83 = v114;
          sub_1A99775C0();
          v99 = v98;
          (*(v113 + 8))(v81, v83);
          (*(v64 + 8))(v24, v52);
          swift_unknownObjectRelease();
          v93 = v104;
          *v104 = v99;
          goto LABEL_35;
        }
      }

      goto LABEL_28;
    }

    v62 = v24;
    if (*(v53 + 32) <= 5u)
    {
      v64 = v136;
      v63 = v137;
      if (v54 == 4)
      {
        v143 = 4;
        sub_1A97AFDC4();
        v65 = v127;
        sub_1A9977530();
        if (!v63)
        {
          v66 = v65;
          v67 = v116;
          v68 = sub_1A99775A0();
          v137 = v69;
          v92 = v68;
          (*(v115 + 8))(v66, v67);
          (*(v64 + 8))(v24, v52);
          swift_unknownObjectRelease();
          v93 = v106;
          v94 = v137;
          *v106 = v92;
          v93[1] = v94;
          goto LABEL_35;
        }

LABEL_28:
        (*(v64 + 8))(v62, v52);
        goto LABEL_10;
      }

      v144 = 5;
      sub_1A97AFD28();
      v79 = v128;
      sub_1A9977530();
      if (v63)
      {
        goto LABEL_28;
      }

      sub_1A9976230();
      sub_1A97AFD7C(&qword_1EB3B0CE0, MEMORY[0x1E6969530]);
      v80 = v118;
      sub_1A99775F0();
      (*(v117 + 8))(v79, v80);
      (*(v64 + 8))(v24, v52);
      swift_unknownObjectRelease();
      v96 = v123;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v97 = v96;
LABEL_36:
      v91 = v105;
      sub_1A97AFF68(v97, v105);
      v74 = v130;
      goto LABEL_37;
    }

    v74 = v130;
    v76 = v136;
    v75 = v137;
    if (v54 == 6)
    {
      v145 = 6;
      sub_1A97AFCD4();
      sub_1A9977530();
      if (!v75)
      {
        sub_1A99762C0();
        sub_1A97AFD7C(&qword_1EB3AD060, MEMORY[0x1E69695A8]);
        v77 = v121;
        sub_1A99775F0();
        (*(v122 + 8))(v51, v77);
        (*(v76 + 8))(v24, v52);
        swift_unknownObjectRelease();
        v96 = v124;
        goto LABEL_34;
      }
    }

    else
    {
      v146 = 7;
      sub_1A97AFC80();
      v84 = v129;
      sub_1A9977530();
      if (!v75)
      {
        (*(v119 + 8))(v84, v120);
        (*(v76 + 8))(v24, v52);
        swift_unknownObjectRelease();
        v91 = v105;
        swift_storeEnumTagMultiPayload();
LABEL_37:
        sub_1A97AFF68(v91, v74);
        return __swift_destroy_boxed_opaque_existential_0Tm(v138);
      }
    }

    (*(v76 + 8))(v24, v52);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v138);
}

uint64_t sub_1A97AB7CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 22;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1A97AB800()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1A97AB82C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB860()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB894()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 15;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB8C8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 14;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB8FC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB930()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB964()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB998()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A97AB9CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Optional<A>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v13);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    type metadata accessor for SFUserDefaultsRepresentation();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v4 + 32))(v8, v11, v3);
    (*(a2 + 8))(v3, a2);
    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t Optional<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A99770A0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v9 + 48))(v18, 1, a3) == 1)
  {
    (*(v14 + 8))(v18, v13);
    v21 = 1;
  }

  else
  {
    v22 = *(v9 + 32);
    v22(v12, v18, a3);
    v22(v20, v12, a3);
    v21 = 0;
  }

  (*(v9 + 56))(v20, v21, 1, a3);
  v23 = v26;
  (*(v14 + 32))(v26, v20, v13);
  return (*(v14 + 56))(v23, 0, 1, v13);
}

uint64_t String.userDefaultsRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for SFUserDefaultsRepresentation();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABEE0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for SFUserDefaultsRepresentation();
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABF34@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Bool.userDefaultsRepresentation.getter@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABF88@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97ABFD4@<X0>(_BYTE *a1@<X8>)
{
  result = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t Int.userDefaultsRepresentation.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

Swift::Int_optional __swiftcall Int.init(userDefaultsString:)(Swift::String userDefaultsString)
{
  v1 = sub_1A97B03FC(userDefaultsString._countAndFlagsBits, userDefaultsString._object);
  v3 = v2 & 1;
  result.value = v1;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1A97AC060@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC0AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A97B03FC(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t UInt32.userDefaultsRepresentation.getter@<X0>(int a1@<W0>, _DWORD *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC150@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC19C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1A97B0120(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t Double.userDefaultsRepresentation.getter@<X0>(double *a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

Swift::Double_optional __swiftcall Double.init(userDefaultsString:)(Swift::String userDefaultsString)
{
  sub_1A97AD5A4(userDefaultsString._countAndFlagsBits, userDefaultsString._object);

  v2 = 0;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1A97AC274@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC2C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1A97AD5A4(a1, a2);

  *a3 = 0;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t Date.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A99760E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = a1;
  v15[3] = a2;

  MEMORY[0x1AC588B40](v13);
  sub_1A97AFD7C(&qword_1EB3B0CE8, MEMORY[0x1E69693A0]);
  sub_1A9976240();

  (*(v9 + 32))(a3, v12, v8);
  return (*(v9 + 56))(a3, 0, 1, v8);
}

uint64_t sub_1A97AC6E4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  (*(*(v4 - 8) + 16))(a2, v2, v4);
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t UUID.init(userDefaultsString:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v10 - v4;
  sub_1A9976250();

  v6 = sub_1A99762C0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A97B06FC(v5, &unk_1EB3B29B0, &qword_1A9990640);
    v8 = 1;
  }

  else
  {
    (*(v7 + 32))(a1, v5, v6);
    v8 = 0;
  }

  return (*(v7 + 56))(a1, v8, 1, v6);
}

uint64_t sub_1A97AC8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AC950@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1A9976250();

  v8 = *(a1 - 8);
  if ((*(v8 + 48))(v7, 1, a1) == 1)
  {
    sub_1A97B06FC(v7, &unk_1EB3B29B0, &qword_1A9990640);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v7, a1);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, a1);
}

uint64_t RawRepresentable<>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  sub_1A9976A40();
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t RawRepresentable<>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a2;
  v40 = a6;
  v10 = sub_1A99770A0();
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v34 - v12;
  v37 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1A99770A0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v34 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v34 - v25;
  (*(a5 + 16))(a1, v39, AssociatedTypeWitness, a5);
  if ((*(v20 + 48))(v19, 1, AssociatedTypeWitness) == 1)
  {
    (*(v15 + 8))(v19, v14);
    v27 = *(a3 - 8);
  }

  else
  {
    (*(v20 + 32))(v26, v19, AssociatedTypeWitness);
    (*(v20 + 16))(v24, v26, AssociatedTypeWitness);
    v28 = v38;
    sub_1A9976A50();
    (*(v20 + 8))(v26, AssociatedTypeWitness);
    v27 = *(a3 - 8);
    v29 = v27;
    if (!(*(v27 + 48))(v28, 1, a3))
    {
      v33 = v40;
      (*(v27 + 32))(v40, v28, a3);
      v31 = v33;
      v30 = 0;
      return (*(v29 + 56))(v31, v30, 1, a3);
    }

    (*(v35 + 8))(v28, v36);
  }

  v29 = v27;
  v30 = 1;
  v31 = v40;
  return (*(v29 + 56))(v31, v30, 1, a3);
}

char *SFUserDefaultObserver.__allocating_init(key:storage:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v11[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage] = a3;
  *v12 = a4;
  *(v12 + 1) = a5;
  v23.receiver = v11;
  v23.super_class = v5;

  v14 = a3;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v16 = v15;
  if (a3)
  {
    v17 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
    if (v17)
    {
      v18 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
      v19 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key + 8];
      v20 = v15;
      v21 = sub_1A99767E0();
      [v17 addObserver:v20 forKeyPath:v21 options:0 context:{0, v23.receiver, v23.super_class}];
    }
  }

  return v16;
}

char *SFUserDefaultObserver.init(key:storage:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v5[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage] = a3;
  *v12 = a4;
  *(v12 + 1) = a5;
  v23.receiver = v5;
  v23.super_class = ObjectType;

  v14 = a3;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v16 = v15;
  if (a3)
  {
    v17 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
    if (v17)
    {
      v18 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
      v19 = *&v15[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key + 8];
      v20 = v15;
      v21 = sub_1A99767E0();
      [v17 addObserver:v20 forKeyPath:v21 options:0 context:{0, v23.receiver, v23.super_class}];
    }
  }

  return v16;
}

id SFUserDefaultObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_storage];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key];
    v4 = *&v0[OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key + 8];
    v5 = v2;

    v6 = sub_1A99767E0();

    [v5 removeObserver:v0 forKeyPath:v6 context:0];
  }

  v8.receiver = v0;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

id SFUserDefaultObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

BOOL sub_1A97AD5A4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1A99772A0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1A97AD69C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = 0xE700000000000000;
  v5 = 0x6E776F6E6B6E75;
  v6 = 0xEB00000000746E65;
  v7 = 0x6D79615072656570;
  v8 = 0xE400000000000000;
  if (v3 != 5)
  {
    v7 = 1230324804;
    v6 = 0xE400000000000000;
  }

  v9 = 1952802157;
  if (v3 != 3)
  {
    v9 = 0x6572616873;
    v8 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0x636972656E6567;
  if (v3 != 1)
  {
    v10 = 0x706F7244726961;
  }

  if (*v1)
  {
    v5 = v10;
    v4 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v11 = v5;
  }

  else
  {
    v11 = v7;
  }

  if (*v1 > 2u)
  {
    v4 = v6;
  }

  *a1 = v11;
  a1[1] = v4;
  type metadata accessor for SFUserDefaultsRepresentation();

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A97AD7AC@<X0>(_BYTE *a1@<X8>)
{
  result = SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1A97AD7EC(uint64_t a1, id *a2)
{
  result = sub_1A9976800();
  *a2 = 0;
  return result;
}

uint64_t sub_1A97AD864(uint64_t a1, id *a2)
{
  v3 = sub_1A9976810();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A97AD8E4@<X0>(uint64_t *a1@<X8>)
{
  sub_1A9976820();
  v2 = sub_1A99767E0();

  *a1 = v2;
  return result;
}

uint64_t sub_1A97AD928(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_1A9976320();
}

uint64_t sub_1A97AD9AC(uint64_t a1)
{
  v2 = sub_1A97AFD7C(&qword_1EB3B1160, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_1A97AFD7C(&unk_1EB3B1280, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A97ADA68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1A99767E0();

  *a2 = v5;
  return result;
}

uint64_t sub_1A97ADAB0(uint64_t a1)
{
  v2 = sub_1A97AFD7C(&qword_1EB3B10E0, type metadata accessor for NSExceptionName);
  v3 = sub_1A97AFD7C(&qword_1EB3B10E8, type metadata accessor for NSExceptionName);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A97ADB6C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1A9976340();
}

uint64_t sub_1A97ADBB8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_1A9976330();
}

uint64_t sub_1A97ADC10()
{
  sub_1A9977980();
  v1 = *v0;
  swift_getWitnessTable();
  sub_1A9976330();
  return sub_1A99779B0();
}

uint64_t sub_1A97ADC78()
{
  v1 = *v0;
  v2 = sub_1A9976820();
  v3 = MEMORY[0x1AC589630](v2);

  return v3;
}

uint64_t sub_1A97ADCB4()
{
  v1 = *v0;
  sub_1A9976820();
  sub_1A99768D0();
}

uint64_t sub_1A97ADD08()
{
  v1 = *v0;
  sub_1A9976820();
  sub_1A9977980();
  sub_1A99768D0();
  v2 = sub_1A99779B0();

  return v2;
}

uint64_t sub_1A97ADD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1A9976820();
  v6 = v5;
  if (v4 == sub_1A9976820() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();
  }

  return v9 & 1;
}

uint64_t sub_1A97ADE04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1A97ADE50@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1A99769D0();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1A97AE84C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1A97AE84C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1A99769B0();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1A99768F0();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1A99768F0();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1A99769D0();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1A97AE84C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1A99769D0();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1A97AE84C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1A97AE84C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1A99768F0();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1A97AE210@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1A9977140();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1A9977120() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1A9977120();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1A9977150();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1A97AE84C(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1A97AE84C((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1A9977120();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1A9977150();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1A97AE84C((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1A97AE84C(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1A9977150();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1A97AE84C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

char *sub_1A97AE618(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1210, &qword_1A99919F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE724(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1170, &qword_1A99919B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE84C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1158, &qword_1A99919A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AE980(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B10F0, &qword_1A99919A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1A97AEAAC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A97AEC88(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2B10, &qword_1A99919E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A97AED8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1190, &qword_1A99919D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AEE98(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1178, &qword_1A99919C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A97AEFB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1168, &qword_1A99919B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A97AF0EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_1A97AF148(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_1A97AF148(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1A97AF214(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1A97AF7EC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1A97AF214(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1A97AF320(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1A9977340();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1A97AF320(uint64_t a1, unint64_t a2)
{
  v4 = sub_1A97AF36C(a1, a2);
  sub_1A97AF49C(&unk_1F1D26670);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1A97AF36C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1A9937658(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1A9977340();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1A9976930();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1A9937658(v10, 0);
        result = sub_1A9977290();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1A97AF49C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1A97AF588(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1A97AF588(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1238, &unk_1A9991A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1A97AF67C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1A97AF68C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A99777E0() & 1;
  }
}

uint64_t sub_1A97AF6E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1A99770A0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = *(v1 + *(v3 + 136));
  (*(v9 + 16))(&v11 - v7, a1);
  return sub_1A9976540();
}

uint64_t sub_1A97AF7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for SFUserDefaultsRepresentation()
{
  result = qword_1EB3B0D20;
  if (!qword_1EB3B0D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A97AF91C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A99777E0() & 1;
  }
}

uint64_t sub_1A97AF974(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AF9BC()
{
  result = qword_1EB3B0BB8;
  if (!qword_1EB3B0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0BB8);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1A97AFA54()
{
  result = qword_1EB3B0BC8;
  if (!qword_1EB3B0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0BC8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1A97AFAF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B2AC0, &qword_1A9990580);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AFBC8()
{
  result = qword_1EB3B0C30;
  if (!qword_1EB3B0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C30);
  }

  return result;
}

uint64_t sub_1A97AFC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFUserDefaultsRepresentation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A97AFC80()
{
  result = qword_1EB3B0C38;
  if (!qword_1EB3B0C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C38);
  }

  return result;
}

unint64_t sub_1A97AFCD4()
{
  result = qword_1EB3B0C40;
  if (!qword_1EB3B0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C40);
  }

  return result;
}

unint64_t sub_1A97AFD28()
{
  result = qword_1EB3B0C50;
  if (!qword_1EB3B0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C50);
  }

  return result;
}

uint64_t sub_1A97AFD7C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A97AFDC4()
{
  result = qword_1EB3B0C60;
  if (!qword_1EB3B0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C60);
  }

  return result;
}

unint64_t sub_1A97AFE18()
{
  result = qword_1EB3B0C68;
  if (!qword_1EB3B0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C68);
  }

  return result;
}

unint64_t sub_1A97AFE6C()
{
  result = qword_1EB3B0C70;
  if (!qword_1EB3B0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C70);
  }

  return result;
}

unint64_t sub_1A97AFEC0()
{
  result = qword_1EB3B0C78;
  if (!qword_1EB3B0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C78);
  }

  return result;
}

unint64_t sub_1A97AFF14()
{
  result = qword_1EB3B0C80;
  if (!qword_1EB3B0C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B0C80);
  }

  return result;
}

uint64_t sub_1A97AFF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFUserDefaultsRepresentation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0()
{
  v11 = sub_1A9976870();
  v12 = v0;
  v10 = &v11;
  v1 = sub_1A9824824(sub_1A97B2400, v9, &unk_1F1D26590);

  if (v1)
  {

    swift_arrayDestroy();
    return v1 & 1;
  }

  v2 = sub_1A9976870();
  v4 = v3;

  v11 = v2;
  v12 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v8[2] = &v11;
  v6 = sub_1A9824824(sub_1A97B298C, v8, &unk_1F1D26600);
  swift_arrayDestroy();

  if (v6)
  {
    return v1 & 1;
  }

  return 2;
}

uint64_t sub_1A97B0120(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1A9937C68(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1A9977340();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if ((v15 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__CFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__CFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if ((v9 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (v9 < v8)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if ((v23 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__CFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if ((v12 & 0xFFFFFFFF00000000) != 0)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (v12 < v11)
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if ((v18 & 0xFFFFFFFF00000000) != 0)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__CFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_1A97B03FC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1A9977340();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1A99376CC(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1A97B06FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A97B075C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001A99E2990 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A99E29B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65756C6156736168 && a2 == 0xEE006B7369446E4FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7574616546736168 && a2 == 0xEE0067616C466572 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656B636172746E75 && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F6F427369 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65737365636F7270 && a2 == 0xEF6C6C694B6F5473)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1A97B0A18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819242338 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t _s7Sharing21SFUserDefaultObserverC12observeValue10forKeyPath2of6change7contextySSSg_ypSgSDySo05NSKeyf6ChangeH0aypGSgSvSgtF_0(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key);
    v4 = result == v3 && *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_key + 8) == a2;
    if (v4 || (result = sub_1A99777E0(), (result & 1) != 0))
    {
      v5 = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler);
      if (v5)
      {
        v6 = *(v2 + OBJC_IVAR____TtC7Sharing21SFUserDefaultObserver_defaultChangedHandler + 8);

        v5(v7);

        return sub_1A967C46C(v5);
      }
    }
  }

  return result;
}

uint64_t sub_1A97B0D3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A97B0EA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A97B0EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A97B0FB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A97B0FFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A97B10D4()
{
  result = sub_1A9976230();
  if (v1 <= 0x3F)
  {
    result = sub_1A99762C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SF_os_activity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SF_os_activity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A97B129C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A97B12BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SFAirDrop(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SFAirDrop(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SFString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}