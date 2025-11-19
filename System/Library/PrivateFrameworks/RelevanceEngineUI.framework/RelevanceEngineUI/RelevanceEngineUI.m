void sub_261AADC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261AAE76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id REUIActionsAlertProviderServerInterface()
{
  if (REUIActionsAlertProviderServerInterface_onceToken != -1)
  {
    REUIActionsAlertProviderServerInterface_cold_1();
  }

  v1 = REUIActionsAlertProviderServerInterface_interface;

  return v1;
}

void __REUIActionsAlertProviderServerInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287469E08];
  v1 = REUIActionsAlertProviderServerInterface_interface;
  REUIActionsAlertProviderServerInterface_interface = v0;

  v2 = REUIActionsAlertProviderServerInterface_interface;
  v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_displayAlertWithProperties_backgroundImageData_reply_ argumentIndex:0 ofReply:0];

  v4 = REUIActionsAlertProviderServerInterface_interface;
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setClasses:v5 forSelector:sel_displayAlertWithProperties_backgroundImageData_reply_ argumentIndex:1 ofReply:0];
}

id REUIActionsAlertProviderClientInterface()
{
  if (REUIActionsAlertProviderClientInterface_onceToken != -1)
  {
    REUIActionsAlertProviderClientInterface_cold_1();
  }

  v1 = REUIActionsAlertProviderClientInterface_interface;

  return v1;
}

uint64_t __REUIActionsAlertProviderClientInterface_block_invoke()
{
  REUIActionsAlertProviderClientInterface_interface = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287469E68];

  return MEMORY[0x2821F96F8]();
}

id REUISampleRelevanceProviderForPosition(double a1)
{
  v2 = RELogForDomain();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_261AAC000, v2, OS_LOG_TYPE_DEFAULT, "WARNING: Please consider using the new alternative method when generating a Sample Content RERelevanceProvider with position.", v6, 2u);
  }

  v3 = a1;
  v4 = softRESampleRelevanceProviderForPosition(v3);

  return v4;
}

id softRESampleRelevanceProviderForPosition(float a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getRESampleRelevanceProviderForPositionSymbolLoc_ptr;
  v10 = getRESampleRelevanceProviderForPositionSymbolLoc_ptr;
  if (!getRESampleRelevanceProviderForPositionSymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getRESampleRelevanceProviderForPositionSymbolLoc_block_invoke;
    v6[3] = &unk_279AF61E8;
    v6[4] = &v7;
    __getRESampleRelevanceProviderForPositionSymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = softRESampleRelevanceProviderForPosition_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(a1);

  return v3;
}

id REUISampleRelevanceProviderForSamplePositionWithPercentage(unint64_t a1, double a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = fmin(a2, 1.0);
  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  if (v4 == 1.0)
  {
    v5 = 0.99;
  }

  else
  {
    v5 = v4;
  }

  if (v5 != a2)
  {
    v6 = RELogForDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218240;
      v12 = a2;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_261AAC000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Your given percentage of %f is being clamped to %f; please stay within your bounds.", &v11, 0x16u);
    }
  }

  v7 = v5 + a1;
  v8 = softRESampleRelevanceProviderForPosition(v7);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void *__getRESampleRelevanceProviderForPositionSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!RelevanceEngineLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __RelevanceEngineLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279AF6208;
    v8 = 0;
    RelevanceEngineLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = RelevanceEngineLibraryCore_frameworkLibrary;
    if (RelevanceEngineLibraryCore_frameworkLibrary)
    {
      if (!v6[0])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v3 = abort_report_np();
    }

    free(v3);
    goto LABEL_5;
  }

  v2 = RelevanceEngineLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "RESampleRelevanceProviderForPosition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRESampleRelevanceProviderForPositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __ClippingRadiusForDevice_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kNanoRadioAppBundleID_block_invoke_lock);
  if (kNanoRadioAppBundleID_block_invoke___cachedDevice)
  {
    v3 = kNanoRadioAppBundleID_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == kNanoRadioAppBundleID_block_invoke___previousCLKDeviceVersion))
  {
    v5 = kNanoRadioAppBundleID_block_invoke_value;
  }

  else
  {
    kNanoRadioAppBundleID_block_invoke___cachedDevice = v2;
    kNanoRadioAppBundleID_block_invoke___previousCLKDeviceVersion = [v2 version];
    __ClippingRadiusForDevice_block_invoke_3(kNanoRadioAppBundleID_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    kNanoRadioAppBundleID_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&kNanoRadioAppBundleID_block_invoke_lock);

  return v5;
}

void __ClippingRadiusForDevice_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:3];
  v6[0] = &unk_28743B6D8;
  v6[1] = &unk_28743B6F0;
  v7[0] = &unk_28743B708;
  v7[1] = &unk_28743B708;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 scaledValue:v3 withOverrides:3.0];
  ClippingRadiusForDevice__clippingRadius = v4;

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t RelevanceEngineLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_0)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getREIntentBySimplifyingParametersForIntentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibrary();
  result = dlsym(v2, "REIntentBySimplifyingParametersForIntent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getREIntentBySimplifyingParametersForIntentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t RelevanceEngineLibrary()
{
  v0 = RelevanceEngineLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class __getREAppNameCacheClass_block_invoke(uint64_t a1)
{
  RelevanceEngineLibrary();
  result = objc_getClass("REAppNameCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREAppNameCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getREAppNameCacheClass_block_invoke_cold_1();
    return __getREAppIconCacheClass_block_invoke(v3);
  }

  return result;
}

REUIElementDonatedActionAction *__getREAppIconCacheClass_block_invoke(uint64_t a1)
{
  RelevanceEngineLibrary();
  result = objc_getClass("REAppIconCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getREAppIconCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getREAppIconCacheClass_block_invoke_cold_1();
    return [(REUIElementDonatedActionAction *)v3 initWithProperties:v4, v5];
  }

  return result;
}

void sub_261ABB394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id REEncodeImage(void *a1)
{
  v17[7] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v16[0] = @"data";
    v1 = a1;
    v2 = UIImagePNGRepresentation(v1);
    v17[0] = v2;
    v16[1] = @"scale";
    v3 = MEMORY[0x277CCABB0];
    [(UIImage *)v1 scale];
    v4 = [v3 numberWithDouble:?];
    v17[1] = v4;
    v16[2] = @"orientation";
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIImage imageOrientation](v1, "imageOrientation")}];
    v17[2] = v5;
    v16[3] = @"template";
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIImage renderingMode](v1, "renderingMode")}];
    v17[3] = v6;
    v16[4] = @"capInsets";
    v7 = MEMORY[0x277CCAE60];
    [(UIImage *)v1 capInsets];
    v8 = [v7 valueWithUIEdgeInsets:?];
    v17[4] = v8;
    v16[5] = @"resizingMode";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[UIImage resizingMode](v1, "resizingMode")}];
    v17[5] = v9;
    v16[6] = @"supressHairline";
    v10 = MEMORY[0x277CCABB0];
    v11 = [(UIImage *)v1 _suppressesAccessibilityHairlineThickening];

    v12 = [v10 numberWithBool:v11];
    v17[6] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id REDecodeImage(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [v1 objectForKeyedSubscript:@"data"];
    v3 = [v1 objectForKeyedSubscript:@"scale"];
    [v3 doubleValue];
    v5 = v4;

    v6 = [v1 objectForKeyedSubscript:@"orientation"];
    v7 = [v6 unsignedIntegerValue];

    v8 = [v1 objectForKeyedSubscript:@"template"];
    v9 = [v8 unsignedIntegerValue];

    v10 = [v1 objectForKeyedSubscript:@"capInsets"];
    [v10 UIEdgeInsetsValue];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = [v1 objectForKeyedSubscript:@"resizingMode"];
    v20 = [v19 unsignedIntegerValue];

    v21 = [MEMORY[0x277D755B8] imageWithData:v2];
    v22 = [MEMORY[0x277D755B8] imageWithCGImage:objc_msgSend(v21 scale:"CGImage") orientation:{v7, v5}];

    v23 = [v22 resizableImageWithCapInsets:v20 resizingMode:{v12, v14, v16, v18}];

    v24 = [v1 objectForKeyedSubscript:@"supressHairline"];

    LODWORD(v1) = [v24 BOOLValue];
    if (v1)
    {
      v25 = [v23 _imageThatSuppressesAccessibilityHairlineThickening];

      v23 = v25;
    }

    v26 = [v23 imageWithRenderingMode:v9];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id REImageNamedFromBundle(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBBB68];
  v4 = a2;
  v5 = a1;
  v6 = [v3 sharedRenderingContext];
  v7 = [v6 device];
  v8 = CLKUIImageNamedFromBundleForDevice();

  return v8;
}

id REUILocalizedString(void *a1)
{
  v1 = REUILocalizedString_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    REUILocalizedString_cold_1();
  }

  v3 = [REUILocalizedString_Bundle localizedStringForKey:v2 value:&stru_287437DE8 table:@"RelevanceEngineUI"];

  return v3;
}

uint64_t __REUILocalizedString_block_invoke()
{
  REUILocalizedString_Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id RELegibilityColorForContentColor(void *a1)
{
  [a1 _luminance];
  if (v1 <= 0.7)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v2 = ;

  return v2;
}

double REUpNextUnitRectForFrameInBounds(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v15.origin.x = a5;
  v15.origin.y = a6;
  v15.size.width = a7;
  v15.size.height = a8;
  CGRectGetMinY(v15);
  v16.origin.x = a5;
  v16.origin.y = a6;
  v16.size.width = a7;
  v16.size.height = a8;
  CGRectGetHeight(v16);
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  v13 = a1 / CGRectGetWidth(v17);
  v18.origin.x = a5;
  v18.origin.y = a6;
  v18.size.width = a7;
  v18.size.height = a8;
  CGRectGetHeight(v18);
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  CGRectGetWidth(v19);
  return v13;
}

uint64_t soft_RETrainingSimulationIsCurrentlyActive()
{
  result = RelevanceEngineLibraryCore_0();
  if (result)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v1 = getRETrainingSimulationIsCurrentlyActiveSymbolLoc_ptr;
    v7 = getRETrainingSimulationIsCurrentlyActiveSymbolLoc_ptr;
    if (!getRETrainingSimulationIsCurrentlyActiveSymbolLoc_ptr)
    {
      v3[0] = MEMORY[0x277D85DD0];
      v3[1] = 3221225472;
      v3[2] = __getRETrainingSimulationIsCurrentlyActiveSymbolLoc_block_invoke;
      v3[3] = &unk_279AF61E8;
      v3[4] = &v4;
      __getRETrainingSimulationIsCurrentlyActiveSymbolLoc_block_invoke(v3);
      v1 = v5[3];
    }

    _Block_object_dispose(&v4, 8);
    if (!v1)
    {
      v2 = softRESampleRelevanceProviderForPosition_cold_1();
      _Block_object_dispose(&v4, 8);
      _Unwind_Resume(v2);
    }

    return v1();
  }

  return result;
}

uint64_t RelevanceEngineLibraryCore_0()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!RelevanceEngineLibraryCore_frameworkLibrary_1)
  {
    RelevanceEngineLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  result = RelevanceEngineLibraryCore_frameworkLibrary_1;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __RelevanceEngineLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RelevanceEngineLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getRETrainingSimulationIsCurrentlyActiveSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = RelevanceEngineLibraryCore_0();
  if (!v2)
  {
    v4 = abort_report_np();
    free(v4);
  }

  result = dlsym(v2, "RETrainingSimulationIsCurrentlyActive");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getRETrainingSimulationIsCurrentlyActiveSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t softRESampleRelevanceProviderForPosition_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [REUIDonatedElementProperties _placeholderImageNameForBundleID:v0];
}