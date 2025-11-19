uint64_t SYIsBacklinkingSupportedForDevice()
{
  v0 = MGGetSInt32Answer();
  if (v0 == 9 || v0 == 3)
  {

    return +[SYFeatureEligibility supportsQuickNote];
  }

  else if (v0 == 1 && +[SYFeatureEligibility supportsQuickNote])
  {

    return SYIsQuickNoteOnPhoneEnabled();
  }

  else
  {
    return 0;
  }
}

void sub_2259030F4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22590325C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225903390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIApplicationClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIApplicationClass_block_invoke_cold_1();
  }

  getUIApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIApplicationClass_block_invoke_0(uint64_t a1)
{
  UIKitLibrary_0();
  result = objc_getClass("UIApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIApplicationClass_block_invoke_cold_1_0();
  }

  getUIApplicationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getUAUserActivityClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUAUserActivityClass_softClass;
  v7 = getUAUserActivityClass_softClass;
  if (!getUAUserActivityClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUAUserActivityClass_block_invoke;
    v3[3] = &unk_27856B3C8;
    v3[4] = &v4;
    __getUAUserActivityClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2259036D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUAUserActivityClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UserActivityLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UserActivityLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856C5F8;
    v6 = 0;
    UserActivityLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!UserActivityLibraryCore_frameworkLibrary_0)
  {
    __getUAUserActivityClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UAUserActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUAUserActivityClass_block_invoke_cold_1();
  }

  getUAUserActivityClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUAUserActivityClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UserActivityLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UserActivityLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856C638;
    v6 = 0;
    UserActivityLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!UserActivityLibraryCore_frameworkLibrary_1)
  {
    __getUAUserActivityClass_block_invoke_cold_2_0(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UAUserActivity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUAUserActivityClass_block_invoke_cold_1_0();
  }

  getUAUserActivityClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_225903B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _localUIApplicationIsExtension()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_UIApplicationIsExtensionSymbolLoc_ptr;
  v6 = get_UIApplicationIsExtensionSymbolLoc_ptr;
  if (!get_UIApplicationIsExtensionSymbolLoc_ptr)
  {
    v1 = UIKitLibrary_0();
    v4[3] = dlsym(v1, "_UIApplicationIsExtension");
    get_UIApplicationIsExtensionSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    _localUIApplicationIsExtension_cold_1();
  }

  return v0();
}

void sub_225903C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t UIKitLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27856B7D0;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_0;
  if (!UIKitLibraryCore_frameworkLibrary_0)
  {
    UIKitLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t UIKitLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_2)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __UIKitLibraryCore_block_invoke_2;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_27856C668;
    v5 = 0;
    UIKitLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  v0 = UIKitLibraryCore_frameworkLibrary_2;
  if (!UIKitLibraryCore_frameworkLibrary_2)
  {
    UIKitLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

Class __getFBSDisplayLayoutMonitorClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSDisplayLayoutMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1();
  }

  getFBSDisplayLayoutMonitorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getFBSDisplayLayoutMonitorClass_block_invoke_0(uint64_t a1)
{
  FrontBoardServicesLibrary_0();
  result = objc_getClass("FBSDisplayLayoutMonitor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1_0();
  }

  getFBSDisplayLayoutMonitorClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_225904264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v16 - 80), 8);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FrontBoardServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856BBC8;
    v3 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    FrontBoardServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

void FrontBoardServicesLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __FrontBoardServicesLibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856C6A8;
    v3 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary_1)
  {
    FrontBoardServicesLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t SYIsMailApp()
{
  if (SYIsMailApp___onceToken != -1)
  {
    SYIsMailApp_cold_1();
  }

  return SYIsMailApp___result;
}

void __SYIsMailApp_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  SYIsMailApp___result = [v0 isEqualToString:@"com.apple.mobilemail"];
}

void sub_225904820(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

BOOL SYIsLinkableUserActivity(void *a1)
{
  v1 = a1;
  v2 = [v1 activityType];
  if ([v2 length])
  {
    v3 = [v1 activityType];
    if ([v3 isEqualToString:@"com.apple.notes.activity.edit-note"])
    {
      v4 = 0;
    }

    else
    {
      v5 = [v1 webpageURL];
      if (v5)
      {
        v4 = 1;
      }

      else
      {
        v6 = [v1 canonicalURL];
        if (v6)
        {
          v4 = 1;
        }

        else
        {
          v7 = [v1 persistentIdentifier];
          if ([v7 length])
          {
            v4 = 1;
          }

          else
          {
            v8 = [v1 targetContentIdentifier];
            v4 = [v8 length] != 0;
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_225905B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2259065C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getLPMetadataProviderClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPMetadataProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPMetadataProviderClass_block_invoke_cold_1();
  }

  getLPMetadataProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void LinkPresentationLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __LinkPresentationLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856B3E8;
    v3 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    LinkPresentationLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __LinkPresentationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856B420;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary)
  {
    __getUIImageClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIImageClass_block_invoke_cold_1();
  }

  getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLPImageClass_block_invoke(uint64_t a1)
{
  LinkPresentationLibrary();
  result = objc_getClass("LPImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPImageClass_block_invoke_cold_1();
  }

  getLPImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_225908128(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_225908C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2259097BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_225909A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_22590A008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_22590B384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22590B4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22590B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SYScreenScale_block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getUIScreenClass_softClass;
  v8 = getUIScreenClass_softClass;
  if (!getUIScreenClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getUIScreenClass_block_invoke;
    v4[3] = &unk_27856B3C8;
    v4[4] = &v5;
    __getUIScreenClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 mainScreen];
  [v2 scale];
  SYScreenScale___scale = v3;
}

void sub_22590BB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIScreenClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIScreenClass_block_invoke_cold_1();
  }

  getUIScreenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __SYIsRTL_block_invoke()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIApplicationClass_softClass;
  v7 = getUIApplicationClass_softClass;
  if (!getUIApplicationClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIApplicationClass_block_invoke;
    v3[3] = &unk_27856B3C8;
    v3[4] = &v4;
    __getUIApplicationClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);
  v2 = [v0 sharedApplication];
  SYIsRTL___isRTL = [v2 userInterfaceLayoutDirection] == 1;
}

void sub_22590BD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCNAvatarImageRendererSettingsClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRendererSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void ContactsUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __ContactsUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856B7E8;
    v3 = 0;
    ContactsUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!ContactsUILibraryCore_frameworkLibrary)
  {
    ContactsUILibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __ContactsUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ContactsUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getCNAvatarImageRendererClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRendererClass_block_invoke_cold_1();
  }

  getCNAvatarImageRendererClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCNAvatarImageRenderingScopeClass_block_invoke(uint64_t a1)
{
  ContactsUILibrary();
  result = objc_getClass("CNAvatarImageRenderingScope");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1();
  }

  getCNAvatarImageRenderingScopeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIImagePNGRepresentationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIImagePNGRepresentation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIImagePNGRepresentationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22590CDEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22590D220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22590E2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22590E47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22590FDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SYNotesUserDefaults()
{
  v0 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.mobilenotes"];

  return v0;
}

uint64_t SYIsQuickNoteAvailable()
{
  v6 = 0;
  v0 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.mobilenotes" allowPlaceholder:1 error:&v6];
  v1 = v6;
  if (v1)
  {
    v2 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      SYIsQuickNoteAvailable_cold_1(v1, v2);
    }
  }

  v3 = [v0 applicationState];
  v4 = [v3 isInstalled];

  return v4;
}

uint64_t SYIsReturnToSenderAllowed()
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  if (SYIsReturnToSenderAllowed_onceToken != -1)
  {
    SYIsReturnToSenderAllowed_cold_1();
  }

  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];

  v2 = [SYIsReturnToSenderAllowed_disabledBundleIds containsObject:v1] ^ 1;
  return v2;
}

uint64_t __SYIsReturnToSenderAllowed_block_invoke()
{
  SYIsReturnToSenderAllowed_disabledBundleIds = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.weather", 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t SYIsPreviewApp()
{
  if (SYIsPreviewApp___onceToken != -1)
  {
    SYIsPreviewApp_cold_1();
  }

  return SYIsPreviewApp___result;
}

void __SYIsPreviewApp_block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  SYIsPreviewApp___result = [v0 isEqualToString:@"com.apple.Preview"];
}

uint64_t SYIsiWorkApp()
{
  if (SYIsiWorkApp___onceToken != -1)
  {
    SYIsiWorkApp_cold_1();
  }

  return SYIsiWorkApp___result;
}

void __SYIsiWorkApp_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v2 = [v0 bundleIdentifier];

  if ([v2 isEqualToString:@"com.apple.iWork.Pages"] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.iWork.Numbers") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.iWork.Keynote") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Pages") & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", @"com.apple.Numbers"))
  {
    v1 = 1;
  }

  else
  {
    v1 = [v2 isEqualToString:@"com.apple.Keynote"];
  }

  SYIsiWorkApp___result = v1;
}

uint64_t SYPBContentItemReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 9)
        {
          if (v13 == 10)
          {
            v14 = PBReaderReadData();
            v15 = 40;
            goto LABEL_44;
          }

          if (v13 == 11)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              v27 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v27 & 0x7F) << v16;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                v22 = 0;
                goto LABEL_52;
              }
            }

            if ([a2 hasError])
            {
              v22 = 0;
            }

            else
            {
              v22 = v18;
            }

LABEL_52:
            *(a1 + 8) = v22;
            goto LABEL_45;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadString();
            v15 = 32;
            goto LABEL_44;
          }

          if (v13 == 9)
          {
            v14 = PBReaderReadData();
            v15 = 64;
            goto LABEL_44;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v14 = PBReaderReadString();
          v15 = 56;
          goto LABEL_44;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadData();
          v15 = 24;
          goto LABEL_44;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 16;
LABEL_44:
          v23 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_45;
        }
      }

      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

LABEL_45:
      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_2259124EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22591325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_2259138BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v16 - 96), 8);
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _SYHandleRemoteCurrentActivityChange(uint64_t a1, void *a2)
{
  v3 = os_log_create("com.apple.synapse", "LinkableItemFinder");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_225901000, v3, OS_LOG_TYPE_INFO, "Handle remote user activity change", v5, 2u);
  }

  return [a2 handleRemoteCurrentActivityDidChange];
}

void sub_225914638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(uint64_t a1)
{
  FrontBoardServicesLibrary();
  result = objc_getClass("FBSDisplayLayoutMonitorConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1();
  }

  getFBSDisplayLayoutMonitorConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAPApplicationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AppProtectionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856BBE0;
    v6 = 0;
    AppProtectionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AppProtectionLibraryCore_frameworkLibrary)
  {
    __getAPApplicationClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("APApplication");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAPApplicationClass_block_invoke_cold_1();
  }

  getAPApplicationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AppProtectionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AppProtectionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUAUserActivityProxyClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UserActivityLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UserActivityLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856BBF8;
    v6 = 0;
    UserActivityLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UserActivityLibraryCore_frameworkLibrary)
  {
    __getUAUserActivityProxyClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UAUserActivityProxy");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUAUserActivityProxyClass_block_invoke_cold_1();
  }

  getUAUserActivityProxyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UserActivityLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserActivityLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

SYNotesActivationContext *SYActivationContextForUserActivity(void *a1)
{
  v1 = a1;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [v3 isEqual:@"com.apple.springboard"];

  if ((v4 & 1) == 0)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __SYActivationContextForUserActivity_block_invoke;
    v10[3] = &unk_27856BCD8;
    v10[4] = &v15;
    v10[5] = &v11;
    v5 = MEMORY[0x22AA6A360](v10);
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v5[2](v5);
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], v5);
    }
  }

  v6 = [v1 _createUserActivityDataWithSaving:0 options:MEMORY[0x277CBEC10] error:0];
  v7 = [SYNotesActivationContext alloc];
  v8 = [(SYNotesActivationContext *)v7 initWithUserActivityData:v6 contextID:*(v12 + 6) renderID:v16[3]];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  return v8;
}

void sub_225916544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

void __SYActivationContextForUserActivity_block_invoke(uint64_t a1)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v2 = getUIWindowClass_softClass;
  v13 = getUIWindowClass_softClass;
  if (!getUIWindowClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getUIWindowClass_block_invoke;
    v9[3] = &unk_27856B3C8;
    v9[4] = &v10;
    __getUIWindowClass_block_invoke(v9);
    v2 = v11[3];
  }

  v3 = v2;
  _Block_object_dispose(&v10, 8);
  v4 = [v2 _applicationKeyWindow];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 layer];
    v7 = CALayerGetContext();

    v8 = [v7 layer];
    *(*(*(a1 + 32) + 8) + 24) = CALayerGetRenderId();

    *(*(*(a1 + 40) + 8) + 24) = [v7 contextId];
  }
}

void sub_225916908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIWindowClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __UIKitLibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856BCF8;
    v6 = 0;
    UIKitLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  if (!UIKitLibraryCore_frameworkLibrary_1)
  {
    __getUIWindowClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("UIWindow");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getUIWindowClass_block_invoke_cold_1();
  }

  getUIWindowClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id SYFormatErrorMalformed()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA9B8];
  v5 = *MEMORY[0x277CCA450];
  v6[0] = @"Data format is corrupted or malformed.";
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v2 = [v0 errorWithDomain:@"com.apple.synapse" code:-122 userInfo:v1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

__CFString *SYDescriptionForBacklinkMonitorOperationState(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_2838DFF18;
  }

  else
  {
    return off_27856BD88[a1];
  }
}

void sub_2259193C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22591AA7C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_22591C198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22591EF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_22591FA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSSystemNotesPresentationConfigurationClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSSystemNotesPresentationConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSSystemNotesPresentationConfigurationClass_block_invoke_cold_1();
  }

  getSBSSystemNotesPresentationConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SpringBoardServicesLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SpringBoardServicesLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856C168;
    v3 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary)
  {
    SpringBoardServicesLibrary_cold_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSBSSystemNotesPresentationHandleClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary();
  result = objc_getClass("SBSSystemNotesPresentationHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSSystemNotesPresentationHandleClass_block_invoke_cold_1();
  }

  getSBSSystemNotesPresentationHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_2259201E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22592052C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_225920824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_225921020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __FrontBoardServicesLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27856C250;
    v7 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v2 = FrontBoardServicesLibraryCore_frameworkLibrary_0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary_0)
  {
    __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "FBSOpenApplicationOptionKeyActivateSuspended");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

id _escapedSearchString(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"" withString:@"\\" options:0 range:{0, objc_msgSend(v1, "length"")}];
  [v1 replaceOccurrencesOfString:@"'" withString:@"\\'" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v1, "length")}];

  return v1;
}

id _searchableDomainNameForURL(void *a1)
{
  v1 = a1;
  v2 = [v1 _lp_highLevelDomain];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [v1 host];
  }

  v5 = v4;

  v6 = _escapedSearchString(v5);

  return v6;
}

void sub_2259276DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSBSSystemNotesPresentationConfigurationClass_block_invoke_0(uint64_t a1)
{
  SpringBoardServicesLibrary_0();
  result = objc_getClass("SBSSystemNotesPresentationConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSSystemNotesPresentationConfigurationClass_block_invoke_cold_1_0();
  }

  getSBSSystemNotesPresentationConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void SpringBoardServicesLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SpringBoardServicesLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_27856C470;
    v3 = 0;
    SpringBoardServicesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!SpringBoardServicesLibraryCore_frameworkLibrary_0)
  {
    SpringBoardServicesLibrary_cold_1_0(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t __SpringBoardServicesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardServicesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getSBSSystemNotesPresentationRequestClass_block_invoke(uint64_t a1)
{
  SpringBoardServicesLibrary_0();
  result = objc_getClass("SBSSystemNotesPresentationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSBSSystemNotesPresentationRequestClass_block_invoke_cold_1();
  }

  getSBSSystemNotesPresentationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_225927E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22592866C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_225929264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_225929F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22592ACCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getICSystemPaperSceneViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SystemPaperPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SystemPaperPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_27856C518;
    v6 = 0;
    SystemPaperPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!SystemPaperPresentationLibraryCore_frameworkLibrary)
  {
    __getICSystemPaperSceneViewControllerClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("ICSystemPaperSceneViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getICSystemPaperSceneViewControllerClass_block_invoke_cold_1();
  }

  getICSystemPaperSceneViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SystemPaperPresentationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SystemPaperPresentationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UserActivityLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserActivityLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_22592CDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_22592D104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v7);
  _Unwind_Resume(a1);
}

uint64_t __UserActivityLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserActivityLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

BOOL SYIsDeviceLocked()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  v6 = getMKBGetDeviceLockStateSymbolLoc_ptr;
  if (!getMKBGetDeviceLockStateSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getMKBGetDeviceLockStateSymbolLoc_block_invoke;
    v2[3] = &unk_27856B3C8;
    v2[4] = &v3;
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    SYIsDeviceLocked_cold_1();
  }

  return v0(0) - 1 < 2;
}

void sub_22592D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getMKBGetDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __MobileKeyBagLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_27856C650;
    v7 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "MKBGetDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBGetDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __UIKitLibraryCore_block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UIKitLibraryCore_frameworkLibrary_2 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getUIApplicationDidBecomeActiveNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_0();
  result = dlsym(v2, "UIApplicationDidBecomeActiveNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIApplicationDidBecomeActiveNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getUIApplicationWillResignActiveNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary_0();
  result = dlsym(v2, "UIApplicationWillResignActiveNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIApplicationWillResignActiveNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_22592E4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

Class __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_0(uint64_t a1)
{
  FrontBoardServicesLibrary_0();
  result = objc_getClass("FBSDisplayLayoutMonitorConfiguration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1_0();
  }

  getFBSDisplayLayoutMonitorConfigurationClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke_1(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary_1 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t SYPathIsInUserLibrarySubdirectory(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v6 = [v5 firstObject];

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
  v8 = [v7 URLByAppendingPathComponent:v3];

  v9 = [v8 path];

  v10 = [v4 hasPrefix:v9];
  return v10;
}

uint64_t OUTLINED_FUNCTION_4_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void sub_2259337D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_225933DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id _SYBundle()
{
  if (_SYBundle___onceToken != -1)
  {
    _SYBundle_cold_1();
  }

  v1 = _SYBundle___bundle;

  return v1;
}

id SYSupportedLinkContextInfoClasses()
{
  if (SYSupportedLinkContextInfoClasses_onceToken != -1)
  {
    SYSupportedLinkContextInfoClasses_cold_1();
  }

  v1 = SYSupportedLinkContextInfoClasses_supportedClasses;

  return v1;
}

uint64_t __SYSupportedLinkContextInfoClasses_block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  SYSupportedLinkContextInfoClasses_supportedClasses = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t SYCanUseObjectInContextInfo(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = SYSupportedLinkContextInfoClasses();
  if ([v2 containsObject:objc_opt_class()])
  {
    v3 = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = v2;
    v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v5 = *v11;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v4);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            v3 = 1;
            goto LABEL_13;
          }
        }

        v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t SYEquivalentUserActivities(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v7 = [v3 activityType];
    v8 = [v5 activityType];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      v10 = [v5 persistentIdentifier];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v3 persistentIdentifier];
        v13 = [v5 persistentIdentifier];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          goto LABEL_9;
        }
      }

      v15 = [v5 targetContentIdentifier];
      v16 = [v15 length];

      if (v16)
      {
        v17 = [v3 targetContentIdentifier];
        v18 = [v5 targetContentIdentifier];
        v19 = [v17 isEqualToString:v18];

        if (v19)
        {
          goto LABEL_9;
        }
      }
    }

    v20 = [v3 canonicalURL];
    v21 = [v5 canonicalURL];
    v22 = SYEquivalentURLs(v20, v21);

    if (v22)
    {
LABEL_9:
      v6 = 1;
    }

    else
    {
      v23 = [v3 webpageURL];
      v24 = [v5 webpageURL];
      v6 = SYEquivalentURLs(v23, v24);
    }
  }

  return v6;
}

uint64_t SYEquivalentURLs(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v3 isEqual:v4])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 _lp_simplifiedURLStringForFuzzyMatching];
      v8 = [v5 _lp_simplifiedURLStringForFuzzyMatching];
      v6 = [v7 isEqualToString:v8];
    }
  }

  return v6;
}

void *SYIsCurrentLocalUserActivity(void *result)
{
  if (result)
  {
    v1 = MEMORY[0x277CC1EF0];
    v2 = result;
    v3 = [v1 _currentUserActivityUUID];
    v4 = [v2 _uniqueIdentifier];

    v5 = [v3 isEqual:v4];
    return v5;
  }

  return result;
}

id SYMakeUserActivity(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CC1EF0];
  v8 = a1;
  v9 = [[v7 alloc] initWithActivityType:v8];

  v10 = [MEMORY[0x277CBEB38] dictionary];
  if ([v5 count])
  {
    v11 = [v5 firstObject];
    [v10 setObject:v11 forKeyedSubscript:@"domainIdentifier"];
  }

  if ([v6 count])
  {
    v12 = [v6 firstObject];
    [v10 setObject:v12 forKeyedSubscript:@"uuid"];
  }

  v13 = SYNotesUserDefaults();
  v14 = [v13 objectForKey:@"ICShouldResumeLastQuickNoteDefaultsKey"];

  if (v14)
  {
    v15 = [v13 BOOLForKey:@"ICShouldResumeLastQuickNoteDefaultsKey"];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v15 ^ 1u];
    [v10 setObject:v16 forKeyedSubscript:@"SYLinkPreferNewDocument"];
  }

  v17 = [v10 copy];
  [v9 setUserInfo:v17];

  return v9;
}

void __getLPMetadataProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLPMetadataProviderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYContentItemPreviewManager.m" lineNumber:21 description:{@"Unable to find class %s", "LPMetadataProvider"}];

  __break(1u);
}

void LinkPresentationLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *LinkPresentationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYContentItemPreviewManager.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getLPLinkMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLPLinkMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYContentItemPreviewManager.m" lineNumber:22 description:{@"Unable to find class %s", "LPLinkMetadata"}];

  __break(1u);
}

void __getUIImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYContentItemPreviewManager.m" lineNumber:28 description:{@"Unable to find class %s", "UIImage"}];

  __break(1u);
}

void __getUIImageClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYContentItemPreviewManager.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
}

void __getLPImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getLPImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYContentItemPreviewManager.m" lineNumber:23 description:{@"Unable to find class %s", "LPImage"}];

  __break(1u);
}

void __getUIScreenClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIScreenClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:25 description:{@"Unable to find class %s", "UIScreen"}];

  __break(1u);
}

void UIKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYDocumentSenderAvatar.m" lineNumber:23 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:24 description:{@"Unable to find class %s", "UIApplication"}];

  __break(1u);
}

void __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRendererSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:27 description:{@"Unable to find class %s", "CNAvatarImageRendererSettings"}];

  __break(1u);
}

void ContactsUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYDocumentSenderAvatar.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAvatarImageRendererClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRendererClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:18 description:{@"Unable to find class %s", "CNAvatarImageRenderer"}];

  __break(1u);
}

void __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getCNAvatarImageRenderingScopeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYDocumentSenderAvatar.m" lineNumber:19 description:{@"Unable to find class %s", "CNAvatarImageRenderingScope"}];

  __break(1u);
}

void SYIsQuickNoteAvailable_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = @"com.apple.mobilenotes";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_225901000, a2, OS_LOG_TYPE_ERROR, "Failed to find record for %@, error: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYLinkableContentItemFinder.m" lineNumber:44 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitorConfiguration"}];

  __break(1u);
}

void FrontBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYLinkableContentItemFinder.m" lineNumber:42 description:{@"%s", *a1}];

  __break(1u);
}

void __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYLinkableContentItemFinder.m" lineNumber:43 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitor"}];

  __break(1u);
}

void __getAPApplicationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getAPApplicationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYLinkableContentItemFinder.m" lineNumber:26 description:{@"Unable to find class %s", "APApplication"}];

  __break(1u);
}

void __getAPApplicationClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AppProtectionLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYLinkableContentItemFinder.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getUAUserActivityProxyClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUAUserActivityProxyClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYLinkableContentItemFinder.m" lineNumber:31 description:{@"Unable to find class %s", "UAUserActivityProxy"}];

  __break(1u);
}

void __getUAUserActivityProxyClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserActivityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYLinkableContentItemFinder.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIWindowClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIWindowClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationClient.m" lineNumber:27 description:{@"Unable to find class %s", "UIWindow"}];

  __break(1u);
}

void __getUIWindowClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYNotesActivationClient.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSSystemNotesPresentationConfigurationClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSSystemNotesPresentationConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYShowBacklinkIndicatorCommandSBImpl.m" lineNumber:19 description:{@"Unable to find class %s", "SBSSystemNotesPresentationConfiguration"}];

  __break(1u);
}

void SpringBoardServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYShowBacklinkIndicatorCommandSBImpl.m" lineNumber:17 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSSystemNotesPresentationHandleClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSSystemNotesPresentationHandleClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYShowBacklinkIndicatorCommandSBImpl.m" lineNumber:18 description:{@"Unable to find class %s", "SBSSystemNotesPresentationHandle"}];

  __break(1u);
}

void __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYShowBacklinkIndicatorCommandPhoneImpl.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSSystemNotesPresentationConfigurationClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSSystemNotesPresentationConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationCommandSBImpl.m" lineNumber:24 description:{@"Unable to find class %s", "SBSSystemNotesPresentationConfiguration"}];

  __break(1u);
}

void SpringBoardServicesLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYNotesActivationCommandSBImpl.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getSBSSystemNotesPresentationRequestClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getSBSSystemNotesPresentationRequestClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationCommandSBImpl.m" lineNumber:23 description:{@"Unable to find class %s", "SBSSystemNotesPresentationRequest"}];

  __break(1u);
}

void __getICSystemPaperSceneViewControllerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getICSystemPaperSceneViewControllerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationCommandInAppImpl.m" lineNumber:18 description:{@"Unable to find class %s", "ICSystemPaperSceneViewController"}];

  __break(1u);
}

void __getICSystemPaperSceneViewControllerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SystemPaperPresentationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYNotesActivationCommandInAppImpl.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void __getUAUserActivityClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUAUserActivityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYActivityObserver.m" lineNumber:31 description:{@"Unable to find class %s", "UAUserActivity"}];

  __break(1u);
}

void __getUAUserActivityClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserActivityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYActivityObserver.m" lineNumber:30 description:{@"%s", *a1}];

  __break(1u);
}

void __getUAUserActivityClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUAUserActivityClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNSUserActivityExtensions.m" lineNumber:20 description:{@"Unable to find class %s", "UAUserActivity"}];

  __break(1u);
}

void __getUAUserActivityClass_block_invoke_cold_2_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UserActivityLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYNSUserActivityExtensions.m" lineNumber:19 description:{@"%s", *a1}];

  __break(1u);
}

void SYIsDeviceLocked_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"int __MKBGetDeviceLockState(CFDictionaryRef)"];
  [v0 handleFailureInFunction:v1 file:@"SYCommon.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getMKBGetDeviceLockStateSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MobileKeyBagLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYCommon.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void _localUIApplicationIsExtension_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _localUIApplicationIsExtension(void)"];
  [v0 handleFailureInFunction:v1 file:@"SYApplicationStateObserver.m" lineNumber:19 description:{@"%s", dlerror()}];

  __break(1u);
}

void UIKitLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *UIKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYApplicationStateObserver.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getUIApplicationClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getUIApplicationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYApplicationStateObserver.m" lineNumber:18 description:{@"Unable to find class %s", "UIApplication"}];

  __break(1u);
}

void __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorConfigurationClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationObserver.m" lineNumber:31 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitorConfiguration"}];

  __break(1u);
}

void FrontBoardServicesLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *FrontBoardServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SYNotesActivationObserver.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void __getFBSDisplayLayoutMonitorClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getFBSDisplayLayoutMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SYNotesActivationObserver.m" lineNumber:30 description:{@"Unable to find class %s", "FBSDisplayLayoutMonitor"}];

  __break(1u);
}