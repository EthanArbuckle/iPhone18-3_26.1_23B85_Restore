void SiriUIInvokeOnMainQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    v1 = block;
  }
}

uint64_t SiriUIDeviceShouldDeferFlamesView()
{
  v0 = +[SiriUIDeviceInfo sharedInstance];
  v1 = [v0 deviceShouldDeferFlamesView];

  return v1;
}

uint64_t SiriUIIsLargePhoneLayout()
{
  v0 = +[SiriUIDeviceInfo sharedInstance];
  v1 = [v0 isLargeFormatPhone];

  if (v1)
  {
    return SiriUIDeviceIsZoomed() ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t SiriUIDeviceIsZoomed()
{
  v0 = +[SiriUIDeviceInfo sharedInstance];
  v1 = [v0 isDeviceZoomed];

  return v1;
}

uint64_t SiriUIIsAllOrientationsSupported()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    return 1;
  }

  return SiriUIIsLargePhoneLayout();
}

id SiriUIDismissalReasonStringFromReason(uint64_t a1)
{
  if (SiriUIDismissalReasonStringFromReason_onceToken != -1)
  {
    SiriUIDismissalReasonStringFromReason_cold_1();
  }

  v2 = SiriUIDismissalReasonStringFromReason_reasonStrings;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

void SiriUISyncCachedPreferences()
{
  v0 = [MEMORY[0x277D61AB8] sharedInstance];
  [v0 updatePreferences];
}

uint64_t SiriUISafeForLockScreen()
{
  v0 = [MEMORY[0x277D61AB8] sharedInstance];
  v1 = [v0 isSiriSafeForLockScreen];

  return v1;
}

BOOL SiriLanguageIsRTL()
{
  v0 = [MEMORY[0x277CEF368] sharedPreferences];
  if ([v0 assistantLanguageForceRTL])
  {
    v1 = 1;
  }

  else
  {
    v2 = MEMORY[0x277CBEAF8];
    v3 = [MEMORY[0x277CEF368] sharedPreferences];
    v4 = [v3 languageCode];
    v1 = [v2 characterDirectionForLanguage:v4] == 2;
  }

  return v1;
}

uint64_t SiriUIDisableAlternativesFeature()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.alternatives"];
  v1 = [v0 objectForKey:@"SiriUIAlternativesDisabledKey"];
  v2 = [v1 BOOLValue];

  return v2;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_26949CA84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCKTextBalloonViewClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __ChatKitLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C59F60;
    v5 = 0;
    ChatKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ChatKitLibraryCore_frameworkLibrary)
  {
    __getCKTextBalloonViewClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CKTextBalloonView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKTextBalloonViewClass_block_invoke_cold_1();
  }

  getCKTextBalloonViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ChatKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ChatKitLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_26949FFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSearchUICardViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSearchUICardViewControllerClass_softClass;
  v7 = getSearchUICardViewControllerClass_softClass;
  if (!getSearchUICardViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSearchUICardViewControllerClass_block_invoke;
    v3[3] = &unk_279C59F40;
    v3[4] = &v4;
    __getSearchUICardViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2694A02A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694A1394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a37);
  _Unwind_Resume(a1);
}

void sub_2694A1928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694A2B94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getAPUICardServiceClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AppPredictionUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AppPredictionUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A100;
    v5 = 0;
    AppPredictionUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppPredictionUILibraryCore_frameworkLibrary)
  {
    __getAPUICardServiceClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("APUICardService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPUICardServiceClass_block_invoke_cold_1();
  }

  getAPUICardServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AppPredictionUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AppPredictionUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSearchUICardViewControllerClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SearchUICardViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUICardViewControllerClass_block_invoke_cold_1();
  }

  getSearchUICardViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SearchUILibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __SearchUILibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_279C5A118;
    v2 = 0;
    SearchUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SearchUILibraryCore_frameworkLibrary)
  {
    SearchUILibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __SearchUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSearchUIBackgroundColorViewClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SearchUIBackgroundColorView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIBackgroundColorViewClass_block_invoke_cold_1();
  }

  getSearchUIBackgroundColorViewClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2694A94E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2694AE5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2694AFAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694AFF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSASSystemStateClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SiriActivationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A2E0;
    v5 = 0;
    SiriActivationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriActivationLibraryCore_frameworkLibrary)
  {
    __getSASSystemStateClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SASSystemState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSASSystemStateClass_block_invoke_cold_1();
  }

  getSASSystemStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriActivationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriActivationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVTPreferencesClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceTriggerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A2F8;
    v5 = 0;
    VoiceTriggerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceTriggerLibraryCore_frameworkLibrary)
  {
    __getVTPreferencesClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VTPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVTPreferencesClass_block_invoke_cold_1();
  }

  getVTPreferencesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceTriggerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceTriggerLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAnalyticsSendEventLazySymbolLoc_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreAnalyticsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279C5A310;
    v6 = 0;
    CoreAnalyticsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreAnalyticsLibraryCore_frameworkLibrary;
  if (!CoreAnalyticsLibraryCore_frameworkLibrary)
  {
    __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "AnalyticsSendEventLazy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAnalyticsSendEventLazySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreAnalyticsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreAnalyticsLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2694B6E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2694B9EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SiriUIViewModeToSISchemaSiriPresentationType(uint64_t a1)
{
  if ((a1 - 4) > 4)
  {
    return 0;
  }

  else
  {
    return dword_2694DDC58[a1 - 4];
  }
}

void sub_2694BD92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694BDC58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2694BE184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2694BE5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694BEC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2694BEED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_2694C310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id getSearchUIBackgroundColorViewClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSearchUIBackgroundColorViewClass_softClass_0;
  v7 = getSearchUIBackgroundColorViewClass_softClass_0;
  if (!getSearchUIBackgroundColorViewClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSearchUIBackgroundColorViewClass_block_invoke_0;
    v3[3] = &unk_279C59F40;
    v3[4] = &v4;
    __getSearchUIBackgroundColorViewClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2694C494C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSearchUIBackgroundColorViewClass_block_invoke_0(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchUILibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A6E0;
    v5 = 0;
    SearchUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SearchUILibraryCore_frameworkLibrary_0)
  {
    __getSearchUIBackgroundColorViewClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SearchUIBackgroundColorView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIBackgroundColorViewClass_block_invoke_cold_1_0();
  }

  getSearchUIBackgroundColorViewClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

void __SiriUIDismissalReasonStringFromReason_block_invoke()
{
  v3[6] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_287A0D328;
  v2[1] = &unk_287A0D340;
  v3[0] = @"User";
  v3[1] = @"System";
  v2[2] = &unk_287A0D358;
  v2[3] = &unk_287A0D370;
  v3[2] = @"IdleTimer";
  v3[3] = @"IncomingPhoneCall";
  v2[4] = &unk_287A0D388;
  v2[5] = &unk_287A0D3A0;
  v3[4] = @"PunchOut";
  v3[5] = @"Unknown";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:6];
  v1 = SiriUIDismissalReasonStringFromReason_reasonStrings;
  SiriUIDismissalReasonStringFromReason_reasonStrings = v0;
}

BOOL SiriUISystemLanguageIsRTL()
{
  v0 = MEMORY[0x277CBEAF8];
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v1 objectForKey:*MEMORY[0x277CBE6C8]];
  v3 = [v0 characterDirectionForLanguage:v2] == 2;

  return v3;
}

void SiriUIBlockExecuteMonitored(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    v3[2](v3);
  }
}

void sub_2694C7C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, char a16)
{
  if (a2 == 1)
  {
    v17 = objc_begin_catch(exception_object);
    v18 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v26 = [v17 reason];
    [v18 appendFormat:@"Exception raised while executing monitored block: %@\n"];

    a13 = 0u;
    a14 = 0u;
    a11 = 0u;
    a12 = 0u;
    v19 = [v17 callStackSymbols];
    v20 = [v19 countByEnumeratingWithState:&a11 objects:&a16 count:16];
    if (v20)
    {
      v21 = *a12;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*a12 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [v18 appendFormat:@"%@\n"];
        }

        v20 = [v19 countByEnumeratingWithState:&a11 objects:&a16 count:16];
      }

      while (v20);
    }

    LoadCrashSupportIfNecessary();
    v23 = SiriUISimulateCrash;
    if (SiriUISimulateCrash)
    {
      v24 = getpid();
      v23(v24, 2327501518, v18);
    }

    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      SiriUIBlockExecuteMonitored_cold_1(v18, v25);
    }

    if (v16)
    {
      (*(v16 + 16))(v16);
    }

    objc_end_catch();
    JUMPOUT(0x2694C7C10);
  }

  _Unwind_Resume(exception_object);
}

void LoadCrashSupportIfNecessary()
{
  v4 = *MEMORY[0x277D85DE8];
  if (!LoadCrashSupportIfNecessary___CrashReportHandle)
  {
    v0 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
    LoadCrashSupportIfNecessary___CrashReportHandle = v0;
    if (v0)
    {
      SiriUISimulateCrash = dlsym(v0, "SimulateCrash");
    }

    else
    {
      v1 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v2 = 136315138;
        v3 = "LoadCrashSupportIfNecessary";
        _os_log_impl(&dword_26948D000, v1, OS_LOG_TYPE_DEFAULT, "%s Unable to load CrashReporterSupport framework.", &v2, 0xCu);
      }
    }
  }
}

CGFloat SiriUIRectForLabelWithDistanceFromTopToBaseline(void *a1, CGFloat a2, double a3, double a4, double a5)
{
  v8 = a1;
  [v8 frame];
  v10 = v9;
  [v8 sizeThatFits:{a4, a5}];
  v12 = v11;
  v14 = v13;
  v17.origin.x = a2;
  v17.origin.y = v10;
  v17.size.width = v12;
  v17.size.height = v14;
  CGRectGetHeight(v17);
  v15 = [v8 font];

  [v15 descender];
  return a2;
}

CGFloat SiriUIRectForLabelWithDistanceFromBottomToBaseline(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  [v9 frame];
  v11 = v10;
  [v9 sizeThatFits:{a4, a5}];
  v13 = v12;
  v15 = v14;
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetHeight(v19);
  v20.origin.x = a2;
  v20.origin.y = v11;
  v20.size.width = v13;
  v20.size.height = v15;
  CGRectGetHeight(v20);
  v16 = [v9 font];

  [v16 descender];
  v17 = [MEMORY[0x277D759A0] mainScreen];
  [v17 scale];

  return a2;
}

float64x2_t SiriUIAspectFitSizeInSizeWithScale(float64_t a1, float64_t a2, double a3, double a4, double a5)
{
  v5.f64[0] = a1;
  v6 = a1 <= 0.0;
  result = *MEMORY[0x277CBF3A8];
  if (!v6 && a2 > 0.0)
  {
    v8 = a3 / v5.f64[0];
    v9 = a4 / a2;
    if (v8 < a4 / a2)
    {
      v9 = v8;
    }

    if (a5 <= 2.22044605e-16)
    {
      v15 = v5.f64[0];
      v13 = v9;
      v14 = a2;
      v10 = [MEMORY[0x277D759A0] mainScreen];
      [v10 scale];
      v12 = v11;

      a5 = v12;
      v9 = v13;
      a2 = v14;
      v5.f64[0] = v15;
    }

    v5.f64[1] = a2;
    return vdivq_f64(vrndmq_f64(vmulq_n_f64(vmulq_n_f64(v5, v9), a5)), vdupq_lane_s64(*&a5, 0));
  }

  return result;
}

BOOL SiriUIDeviceIsPhone()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 0;

  return v1;
}

BOOL SiriUIDeviceIsPad()
{
  v0 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v0 userInterfaceIdiom] == 1;

  return v1;
}

BOOL SiriUIDeviceIsPod()
{
  v0 = MGCopyAnswer();
  v1 = CFEqual(v0, @"iPod") != 0;
  CFRelease(v0);
  return v1;
}

BOOL SiriUIDeviceIsSmallPhone()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  return CGRectGetWidth(v10) <= 320.0;
}

BOOL SiriUIDeviceIsLargeFormatPad()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  if (CGRectGetWidth(v10) < 1024.0)
  {
    return 0;
  }

  v11.origin.x = v2;
  v11.origin.y = v4;
  v11.size.width = v6;
  v11.size.height = v8;
  return CGRectGetHeight(v11) >= 1366.0;
}

BOOL SiriUIIsExtendedWidth()
{
  result = SiriUIDeviceIsLargeFormatPad();
  if (result)
  {
    return !SiriUIIsCompactWidth();
  }

  return result;
}

BOOL SiriUIIsCompactWidth()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  [v0 siriui_applicationFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  if (SiriUIIsLargePhoneLayout())
  {
    v16.origin.x = v2;
    v16.origin.y = v4;
    v16.size.width = v6;
    v16.size.height = v8;
    Width = CGRectGetWidth(v16);
    v17.origin.x = v2;
    v17.origin.y = v4;
    v17.size.width = v6;
    v17.size.height = v8;
    return Width < CGRectGetHeight(v17);
  }

  else
  {
    if (SiriUIDeviceIsPad())
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      v11 = CGRectGetWidth(v18) <= 374.0;
    }

    else
    {
      v11 = 0;
    }

    v12 = [MEMORY[0x277D75128] sharedApplication];
    v13 = [v12 keyWindow];
    v14 = [v13 traitCollection];

    v10 = [v14 horizontalSizeClass] == 1 || v11;
  }

  return v10;
}

BOOL SiriUIIsCompactHeight()
{
  v0 = [MEMORY[0x277D759A0] mainScreen];
  v1 = [v0 traitCollection];

  v2 = [v1 verticalSizeClass] == 1;
  return v2;
}

uint64_t SiriUIDeviceShouldFreezeAura()
{
  v0 = +[SiriUIDeviceInfo sharedInstance];
  v1 = [v0 deviceShouldFreezeAura];

  return v1;
}

uint64_t SiriUIDeviceShouldUseFrozenBackdropSnapshot()
{
  v0 = +[SiriUIDeviceInfo sharedInstance];
  v1 = [v0 deviceShouldUseFrozenBackdropSnapshot];

  return v1;
}

uint64_t SiriUIDeviceHasSideButton()
{
  if (SiriUIDeviceHasSideButton_onceToken != -1)
  {
    SiriUIDeviceHasSideButton_cold_1();
  }

  return SiriUIDeviceHasSideButton_hasSideButton;
}

uint64_t __SiriUIDeviceHasSideButton_block_invoke()
{
  result = MGGetSInt32Answer();
  SiriUIDeviceHasSideButton_hasSideButton = result == 2;
  return result;
}

uint64_t SiriUIShowSpeechAlternativeScore()
{
  if (AFIsCustomerInstallOrPPT())
  {
    return 0;
  }

  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.siri.alternatives"];
  v2 = [v1 objectForKey:@"SiriUIAlternativesShowScoreKey"];
  v3 = [v2 BOOLValue];

  return v3;
}

uint64_t SiriLanguageSemanticContentAttribute()
{
  if (SiriLanguageIsRTL())
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t SiriUISystemLanguageSemanticContentAttribute()
{
  if (SiriUISystemLanguageIsRTL())
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

uint64_t SiriLanguageTextAlignmentLeft()
{
  if (SiriLanguageIsRTL())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t SiriLanguageTextAlignmentRight()
{
  if (SiriLanguageIsRTL())
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t SiriUIIsHTTForTextInputEnabled()
{
  v0 = [MEMORY[0x277D61AB8] sharedInstance];
  v1 = [v0 isHoldToTalkForTextInputEnabled];

  return v1;
}

uint64_t SiriUIIsStreamingDictationEnabled()
{
  v0 = [MEMORY[0x277D61AB8] sharedInstance];
  v1 = [v0 isStreamingDictationEnabled];

  return v1;
}

__CFString *SiriUINSStringFromSiriUIViewMode(uint64_t a1)
{
  if ((a1 - 4) > 4)
  {
    return @"SiriUIViewModeNone";
  }

  else
  {
    return off_279C5A768[a1 - 4];
  }
}

double SiriUITextHyphenationFactor()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v1);

  result = 0.0;
  if (IsAccessibilityCategory)
  {
    return 0.5;
  }

  return result;
}

double SiriUIMapRectMakeWithZoomLevel(CLLocationDegrees a1, CLLocationDegrees a2, double a3)
{
  v5 = a3 * 3000.0 * MEMORY[0x26D63F2B0]();
  v7.latitude = a1;
  v7.longitude = a2;
  return MKMapPointForCoordinate(v7).x - v5 * 0.5;
}

id SiriUIMapRegionFromMapRect(double a1, double a2, double a3, double a4)
{
  v8 = objc_alloc_init(MEMORY[0x277D4C448]);
  v14.x = a1;
  v14.y = a2 + a4 * 0.5;
  [v8 setWestLng:MKCoordinateForMapPoint(v14).longitude];
  v15.x = a1 + a3;
  v15.y = a2 + a4 * 0.5;
  [v8 setEastLng:MKCoordinateForMapPoint(v15).longitude];
  v9 = a1 + a3 * 0.5;
  v16.x = v9;
  v16.y = a2;
  v10 = MKCoordinateForMapPoint(v16);
  [v8 setNorthLat:{v10.latitude, v10.longitude}];
  v17.y = a2 + a4;
  v17.x = v9;
  v11 = MKCoordinateForMapPoint(v17);
  [v8 setSouthLat:{v11.latitude, v11.longitude}];

  return v8;
}

BOOL SiriUIAceViewHasButtons(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v1 allConfirmationOptions];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v2 = 0;
          goto LABEL_9;
        }

        v5 = [v1 confirmationOptions];
        v4 = v5;
        goto LABEL_8;
      }

      v3 = [v1 items];
    }

    v4 = v3;
    v5 = [v3 count];
LABEL_8:
    v2 = v5 != 0;

    goto LABEL_9;
  }

  v2 = 1;
LABEL_9:

  return v2;
}

void sub_2694C90D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSearchUIDefaultBrowserAppIconImageClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchUILibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A750;
    v5 = 0;
    SearchUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!SearchUILibraryCore_frameworkLibrary_1)
  {
    __getSearchUIDefaultBrowserAppIconImageClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SearchUIDefaultBrowserAppIconImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIDefaultBrowserAppIconImageClass_block_invoke_cold_1();
  }

  getSearchUIDefaultBrowserAppIconImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

__CFString *SiriUIPresentationStateGetName(unint64_t a1)
{
  if (a1 < 7)
  {
    return off_279C5A7C0[a1];
  }

  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
  {
    SiriUIPresentationStateGetName_cold_1(a1, v3);
  }

  return 0;
}

void sub_2694CB89C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2694CC248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Class __getSUICKPEntryPointClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SearchUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SearchUICardKitProviderSupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A968;
    v5 = 0;
    SearchUICardKitProviderSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SearchUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    __getSUICKPEntryPointClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SUICKPEntryPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSUICKPEntryPointClass_block_invoke_cold_1();
  }

  getSUICKPEntryPointClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUICardKitProviderSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUICardKitProviderSupportLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getINUICKPEntryPointClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!IntentsUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __IntentsUICardKitProviderSupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A980;
    v5 = 0;
    IntentsUICardKitProviderSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntentsUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    __getINUICKPEntryPointClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("INUICKPEntryPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getINUICKPEntryPointClass_block_invoke_cold_1();
  }

  getINUICKPEntryPointClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __IntentsUICardKitProviderSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  IntentsUICardKitProviderSupportLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getVSUICKPEntryPointClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!VoiceShortcutsUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __VoiceShortcutsUICardKitProviderSupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A998;
    v5 = 0;
    VoiceShortcutsUICardKitProviderSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!VoiceShortcutsUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    __getVSUICKPEntryPointClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("VSUICKPEntryPoint");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getVSUICKPEntryPointClass_block_invoke_cold_1();
  }

  getVSUICKPEntryPointClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __VoiceShortcutsUICardKitProviderSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  VoiceShortcutsUICardKitProviderSupportLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSCKPProviderClass_block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SiriUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SiriUICardKitProviderSupportLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279C5A9B0;
    v5 = 0;
    SiriUICardKitProviderSupportLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SiriUICardKitProviderSupportLibraryCore_frameworkLibrary)
  {
    __getSCKPProviderClass_block_invoke_cold_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SCKPProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSCKPProviderClass_block_invoke_cold_1();
  }

  getSCKPProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SiriUICardKitProviderSupportLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SiriUICardKitProviderSupportLibraryCore_frameworkLibrary = result;
  return result;
}

void __getCKTextBalloonViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCKTextBalloonViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUIMessageContentTemplateView.m" lineNumber:18 description:{@"Unable to find class %s", "CKTextBalloonView"}];

  __break(1u);
}

void __getCKTextBalloonViewClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ChatKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUIMessageContentTemplateView.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getAPUICardServiceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAPUICardServiceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardSnippetViewController.m" lineNumber:109 description:{@"Unable to find class %s", "APUICardService"}];

  __break(1u);
}

void __getAPUICardServiceClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppPredictionUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardSnippetViewController.m" lineNumber:108 description:{@"%s", *a1}];

  __break(1u);
}

void __getSearchUICardViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSearchUICardViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardSnippetViewController.m" lineNumber:100 description:{@"Unable to find class %s", "SearchUICardViewController"}];

  __break(1u);
}

void SearchUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardSnippetViewController.m" lineNumber:99 description:{@"%s", *a1}];

  __break(1u);
}

void __getSearchUIBackgroundColorViewClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSearchUIBackgroundColorViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardSnippetViewController.m" lineNumber:101 description:{@"Unable to find class %s", "SearchUIBackgroundColorView"}];

  __break(1u);
}

void __getSASSystemStateClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSASSystemStateClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:36 description:{@"Unable to find class %s", "SASSystemState"}];

  __break(1u);
}

void __getSASSystemStateClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriActivationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:35 description:{@"%s", *a1}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVTPreferencesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:48 description:{@"Unable to find class %s", "VTPreferences"}];

  __break(1u);
}

void __getVTPreferencesClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceTriggerLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

void __getAnalyticsSendEventLazySymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *CoreAnalyticsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICarDNDUseSiriHeaderViewController.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void __getSearchUIBackgroundColorViewClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSearchUIBackgroundColorViewClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardSnippetView.m" lineNumber:18 description:{@"Unable to find class %s", "SearchUIBackgroundColorView"}];

  __break(1u);
}

void __getSearchUIBackgroundColorViewClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardSnippetView.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void SiriUIBlockExecuteMonitored_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "SiriUIBlockExecuteMonitored";
  v4 = 2114;
  v5 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s %{public}@", &v2, 0x16u);
}

void __getSearchUIDefaultBrowserAppIconImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSearchUIDefaultBrowserAppIconImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUIUtilities.m" lineNumber:42 description:{@"Unable to find class %s", "SearchUIDefaultBrowserAppIconImage"}];

  __break(1u);
}

void __getSearchUIDefaultBrowserAppIconImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUIUtilities.m" lineNumber:41 description:{@"%s", *a1}];

  __break(1u);
}

void SiriUIPresentationStateGetName_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "SiriUIPresentationStateGetName";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_26948D000, a2, OS_LOG_TYPE_ERROR, "%s Unknown SiriUIPresentationState %li", &v2, 0x16u);
}

void __getSUICKPEntryPointClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSUICKPEntryPointClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardProviderRegistry.m" lineNumber:28 description:{@"Unable to find class %s", "SUICKPEntryPoint"}];

  __break(1u);
}

void __getSUICKPEntryPointClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SearchUICardKitProviderSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardProviderRegistry.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getINUICKPEntryPointClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getINUICKPEntryPointClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardProviderRegistry.m" lineNumber:25 description:{@"Unable to find class %s", "INUICKPEntryPoint"}];

  __break(1u);
}

void __getINUICKPEntryPointClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *IntentsUICardKitProviderSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardProviderRegistry.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getVSUICKPEntryPointClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getVSUICKPEntryPointClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardProviderRegistry.m" lineNumber:34 description:{@"Unable to find class %s", "VSUICKPEntryPoint"}];

  __break(1u);
}

void __getVSUICKPEntryPointClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *VoiceShortcutsUICardKitProviderSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardProviderRegistry.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void __getSCKPProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSCKPProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SiriUICardProviderRegistry.m" lineNumber:31 description:{@"Unable to find class %s", "SCKPProvider"}];

  __break(1u);
}

void __getSCKPProviderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SiriUICardKitProviderSupportLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SiriUICardProviderRegistry.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
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

CLLocationCoordinate2D MKCoordinateForMapPoint(MKMapPoint mapPoint)
{
  MEMORY[0x282123638](mapPoint, *&mapPoint.y);
  result.longitude = v2;
  result.latitude = v1;
  return result;
}

MKMapPoint MKMapPointForCoordinate(CLLocationCoordinate2D coordinate)
{
  MEMORY[0x282123658](coordinate, *&coordinate.longitude);
  result.y = v2;
  result.x = v1;
  return result;
}