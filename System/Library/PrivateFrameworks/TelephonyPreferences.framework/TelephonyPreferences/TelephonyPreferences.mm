uint64_t sub_21B8EB69C()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B8EB6E8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8EB728()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8EB760()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21B8EB798()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21B8EB820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD48, &qword_21B923758);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21B8EB8EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD48, &qword_21B923758);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21B8EB9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD48, &qword_21B923758);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21B8EBA8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD48, &qword_21B923758);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t CallDirectoryLog()
{
  if (CallDirectoryLog_onceToken != -1)
  {
    CallDirectoryLog_cold_1();
  }

  return CallDirectoryLog_sLog;
}

os_log_t __CallDirectoryLog_block_invoke()
{
  result = os_log_create("com.apple.TelephonySettings", "CallDirectory");
  CallDirectoryLog_sLog = result;
  return result;
}

void sub_21B8ECF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSSimStatusCacheClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SettingsCellularLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SettingsCellularLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782E3920;
    v7 = 0;
    SettingsCellularLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (SettingsCellularLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSSimStatusCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSSimStatusCacheClass_block_invoke_cold_1();
  }

  getPSSimStatusCacheClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SettingsCellularLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SettingsCellularLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21B8F1620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_21B8F1768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _handleLLExtensionsChangedNotification(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = a3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Handling %@", &v7, 0xCu);
  }

  if (a2)
  {
    [a2 _updateExtensions];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_21B8F2914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B8F43E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21B8F6AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_21B8F6D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t TPSLog()
{
  if (TPSLog_onceToken != -1)
  {
    TPSLog_cold_1();
  }

  return TPSLog_sLog;
}

os_log_t __TPSLog_block_invoke()
{
  result = os_log_create("com.apple.TelephonyPreferences", "default");
  TPSLog_sLog = result;
  return result;
}

__CFString *TPSLocalizedPhoneNumberString(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFPhoneNumberCreate();
  if (!v6 || (v7 = v6, String = CFPhoneNumberCreateString(), CFRelease(v7), !String))
  {
    String = &stru_282D54710;
  }

  v9 = TPSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = String;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Localized '%@' to '%@' using ISO country code '%@'.", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return String;
}

__CFString *TPSNormalizedPhoneNumberString(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = *MEMORY[0x277CBECE8];
  v6 = CFPhoneNumberCreate();
  if (!v6 || (v7 = v6, String = CFPhoneNumberCreateString(), CFRelease(v7), !String))
  {
    String = &stru_282D54710;
  }

  v9 = TPSLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v3;
    v14 = 2112;
    v15 = String;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "Normalized '%@' to '%@' using ISO country code '%@'.", &v12, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return String;
}

uint64_t CTCallingLineIdRestrictionValueForState(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 3;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t TPSCallingLineIdRestrictionStateForValue(int a1)
{
  if (a1)
  {
    return 2 * (a1 == 1);
  }

  else
  {
    return 1;
  }
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

JSValueRef provisioningDone(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = CloudCallingWebViewController_controllerClass;
  if (!CloudCallingWebViewController_controllerClass)
  {
    v5 = JSClassCreate(&CloudCallingWebViewController_classDefinition);
    CloudCallingWebViewController_controllerClass = v5;
  }

  if (JSValueIsObjectOfClass(ctx, value, v5))
  {
    v6 = JSObjectGetPrivate(value);
    v7 = WebThreadMakeNSInvocation();
    WebThreadCallDelegate();

    Undefined = JSValueMakeUndefined(ctx);
    return Undefined;
  }

  else
  {
LABEL_6:

    return JSValueMakeUndefined(ctx);
  }
}

JSValueRef provisioningCanceled(JSContextRef ctx, int a2, JSValueRef value)
{
  if (!value)
  {
    goto LABEL_6;
  }

  v5 = CloudCallingWebViewController_controllerClass;
  if (!CloudCallingWebViewController_controllerClass)
  {
    v5 = JSClassCreate(&CloudCallingWebViewController_classDefinition);
    CloudCallingWebViewController_controllerClass = v5;
  }

  if (JSValueIsObjectOfClass(ctx, value, v5))
  {
    v6 = JSObjectGetPrivate(value);
    v7 = WebThreadMakeNSInvocation();
    WebThreadCallDelegate();

    Undefined = JSValueMakeUndefined(ctx);
    return Undefined;
  }

  else
  {
LABEL_6:

    return JSValueMakeUndefined(ctx);
  }
}

void sub_21B90394C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B903A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getOBPrivacyLinkControllerClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OBPrivacyLinkController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBPrivacyLinkControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBPrivacyLinkControllerClass_block_invoke_cold_1();
    OnBoardingKitLibrary();
  }
}

void OnBoardingKitLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __OnBoardingKitLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_2782E3D10;
    v4 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __OnBoardingKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

TPSSetCallWaitingRequest *__getOBPrivacyPresenterClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBPrivacyPresenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBPrivacyPresenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBPrivacyPresenterClass_block_invoke_cold_1();
    return [(TPSSetCallWaitingRequest *)v3 initWithSubscriptionContext:v4, v5];
  }

  return result;
}

void sub_21B9060F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B906498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B9068C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_21B906E84(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id OUTLINED_FUNCTION_1_1(id a1)
{

  return a1;
}

__CFString *TPSStringForCTSuppServicesEventType(unsigned int a1)
{
  if (a1 > 6)
  {
    return 0;
  }

  else
  {
    return off_2782E3E18[a1];
  }
}

__CFString *TPSStringForCTSuppServicesSettingsType(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 0;
  }

  else
  {
    return off_2782E3E50[a1];
  }
}

__CFString *TPSStringForCTCallForwardingReason(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return off_2782E3EB0[a1];
  }
}

__CFString *TPSStringForCTCallingLineIdRestrictionValue(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_2782E3EE0[a1];
  }
}

uint64_t TPSCallForwardingLog()
{
  if (TPSCallForwardingLog_onceToken != -1)
  {
    TPSCallForwardingLog_cold_1();
  }

  return TPSCallForwardingLog_sLog;
}

os_log_t __TPSCallForwardingLog_block_invoke()
{
  result = os_log_create("com.apple.TelephonySettings", "CallForwarding");
  TPSCallForwardingLog_sLog = result;
  return result;
}

void sub_21B90A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B90AAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_21B90AF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B90B420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B90B9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPSSimStatusCacheClass_block_invoke_0(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!SettingsCellularLibraryCore_frameworkLibrary_0)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __SettingsCellularLibraryCore_block_invoke_0;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2782E3F98;
    v7 = 0;
    SettingsCellularLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v5[0];
    if (SettingsCellularLibraryCore_frameworkLibrary_0)
    {
      if (!v5[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PSSimStatusCache");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSSimStatusCacheClass_block_invoke_cold_1();
  }

  getPSSimStatusCacheClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __SettingsCellularLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SettingsCellularLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_21B90C77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21B90D654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B90DF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B90E2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21B913060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_21B9155E4()
{
  result = sub_21B91E7EC();
  qword_27CD9AEF8 = result;
  return result;
}

id static LiveLookupManagerProxy.LLExtensionsChangedNotification.getter()
{
  if (qword_27CD9AEF0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CD9AEF8;

  return v1;
}

uint64_t LiveLookupManagerProxy.extensions()()
{
  v1 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_21B91E42C();

  return v3;
}

uint64_t LiveLookupManagerProxy.extensionName(_:)(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_21B91E70C();

  return v2;
}

uint64_t LiveLookupManagerProxy.set(enabled:for:)(char a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 80) = a1;
  return MEMORY[0x2822009F8](sub_21B9158A8, 0, 0);
}

uint64_t sub_21B9158A8()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  *(v0 + 56) = *(v1 + v2);
  v3 = *(MEMORY[0x277CD2C08] + 4);
  v8 = (*MEMORY[0x277CD2C08] + MEMORY[0x277CD2C08]);

  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_21B91598C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 80);

  return v8(v6, v5);
}

uint64_t sub_21B91598C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B915AC8, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_21B915AC8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_21B915CBC(char a1, void *a2, void *aBlock, void *a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a4;
  *(v4 + 88) = a1;
  *(v4 + 56) = _Block_copy(aBlock);
  v7 = a2;
  v8 = a4;

  return MEMORY[0x2822009F8](sub_21B915D4C, 0, 0);
}

uint64_t sub_21B915D4C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  *(v0 + 64) = *(v1 + v2);
  v3 = *(MEMORY[0x277CD2C08] + 4);
  v8 = (*MEMORY[0x277CD2C08] + MEMORY[0x277CD2C08]);

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_21B915E30;
  v5 = *(v0 + 40);
  v6 = *(v0 + 88);

  return v8(v6, v5);
}

uint64_t sub_21B915E30()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21B915FA0, 0, 0);
  }

  else
  {
    v5 = *(v3 + 56);
    v4 = *(v3 + 64);
    v7 = *(v3 + 40);
    v6 = *(v3 + 48);

    (*(v5 + 16))(v5, 0);
    _Block_release(*(v3 + 56));
    v8 = *(v3 + 8);

    return v8();
  }
}

uint64_t sub_21B915FA0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);

  v6 = sub_21B91E39C();
  (*(v3 + 16))(v3, v6);

  _Block_release(*(v0 + 56));
  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall LiveLookupManagerProxy.set(prioritizedExtensionIdentifiers:)(Swift::OpaquePointer prioritizedExtensionIdentifiers)
{
  v2 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_21B91E43C();
}

id LiveLookupManagerProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveLookupManagerProxy.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___LiveLookupManagerProxy_manager;
  sub_21B91E45C();
  *&v0[v2] = sub_21B91E44C();
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id LiveLookupManagerProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
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

uint64_t sub_21B916300()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21B9163C4;

  return sub_21B915CBC(v2, v3, v4, v5);
}

uint64_t sub_21B9163C4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21B9164B8(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_21B916F48;

  return v7();
}

uint64_t sub_21B9165A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21B916F48;

  return sub_21B9164B8(v2, v3, v5);
}

uint64_t sub_21B916660(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_21B9163C4;

  return v8();
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21B916788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21B916F48;

  return sub_21B916660(a1, v4, v5, v7);
}

uint64_t sub_21B916854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AC98, &qword_21B923378) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = v24 - v10;
  sub_21B916B10(a3, v24 - v10);
  v12 = sub_21B91E78C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21B916B80(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21B91E77C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_21B91E76C();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_21B91E71C() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_21B916B80(a3);

    return v22;
  }

LABEL_8:
  sub_21B916B80(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21B916B10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AC98, &qword_21B923378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B916B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AC98, &qword_21B923378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B916BE8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B916CE0;

  return v7(a1);
}

uint64_t sub_21B916CE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21B916DD8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21B916F48;

  return sub_21B916BE8(a1, v5);
}

uint64_t sub_21B916E90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21B9163C4;

  return sub_21B916BE8(a1, v5);
}

uint64_t sub_21B916F70()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t sub_21B916FA8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t sub_21B917040()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
}

uint64_t sub_21B917078(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 96);
  *(v1 + 96) = a1;
}

uint64_t sub_21B91715C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACA0, &qword_21B9233E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9171CC(uint64_t a1)
{
  swift_beginAccess();
  sub_21B91721C(a1, v1 + 104);
  return swift_endAccess();
}

uint64_t sub_21B91721C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACA0, &qword_21B9233E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B9172DC@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBAF60]) init];
  result = sub_21B918A60(0, &qword_27CD9ACA8, 0x277CBAF60);
  a1[3] = result;
  a1[4] = &off_282D54628;
  *a1 = v2;
  return result;
}

uint64_t sub_21B917348(uint64_t *a1)
{
  v2 = swift_allocObject();
  sub_21B917388(a1);
  return v2;
}

uint64_t sub_21B917388(uint64_t *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FA0];
  *(v1 + 16) = MEMORY[0x277D84FA0];
  type metadata accessor for ExtensionObserver();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = sub_21B91E38C();
  v9 = v8;

  *(v2 + 72) = v7;
  *(v2 + 80) = v9;
  *(v2 + 88) = v4;
  *(v2 + 96) = v4;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  sub_21B9193C0(a1, v2 + 24);
  type metadata accessor for LiveLookupManagerProxy();
  *(v2 + 64) = LiveLookupManagerProxy.__allocating_init()();
  v10 = *MEMORY[0x277CBAF20];
  sub_21B91E73C();
  v11 = sub_21B91E6FC();

  v12 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v12, v2, sub_21B919478, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v13 = sub_21B91E7EC();
  v14 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(v14, v2, sub_21B917A70, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_21B91755C()
{
  v1 = sub_21B917C44();
  (*(*v0 + 344))(v1);
  v2 = *(*v0 + 320);

  return v2();
}

uint64_t sub_21B9175E4()
{
  v0 = sub_21B91E6CC();
  v13 = *(v0 - 8);
  v1 = *(v13 + 64);
  MEMORY[0x28223BE20]();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B91E6EC();
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B918A60(0, &qword_27CD9ACB0, 0x277D85C78);
  v8 = sub_21B91E7CC();
  v9 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_21B918114;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21B917A2C;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  sub_21B91E6DC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21B91848C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACC0, &qword_21B9233E8);
  sub_21B918A18(&qword_27CD9ACC8, &qword_27CD9ACC0, &qword_21B9233E8);
  sub_21B91E80C();
  MEMORY[0x21CEFA890](0, v7, v3, v10);
  _Block_release(v10);

  (*(v13 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_21B9178AC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_21B918AA8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B9179B0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_21B91E81C();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_21B919424(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_21B917A2C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_21B917A74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    type metadata accessor for ExtensionObserver();
    swift_unknownObjectRetain();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      (*(*v2 + 312))();
    }

    swift_unknownObjectRelease();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_21B917B48()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x277D84FA0];
  sub_21B9193C0(v0 + 24, v7);
  v2 = v8;
  v3 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v0;
  v5 = *(v3 + 8);

  v5(sub_21B918570, v4, v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_21B917C44()
{
  v1 = v0;
  v42 = *MEMORY[0x277D85DE8];
  v41 = MEMORY[0x277D84FA0];
  v2 = *(v0 + 64);
  v3 = LiveLookupManagerProxy.extensions()();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &off_21B923000; v4; i = &off_21B923000)
  {
    v6 = 0;
    v7 = v3 & 0xC000000000000001;
    v38 = v1;
    v39 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = &unk_2782E4000;
    while (1)
    {
      if (v7)
      {
        v9 = MEMORY[0x21CEFA900](v6, v3);
      }

      else
      {
        if (v6 >= *(v39 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v1 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v9 v8[248]])
      {
        v11 = [v10 identifier];
        sub_21B91E70C();

        v12 = sub_21B91E6FC();

        v13 = objc_opt_self();
        v40 = 0;
        v14 = [v13 extensionWithIdentifier:v12 error:&v40];

        if (!v14)
        {
          v25 = v40;

          v26 = sub_21B91E3AC();

          swift_willThrow();
          sub_21B91E79C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD0, &qword_21B923468);
          v27 = swift_allocObject();
          i = &off_21B923000;
          *(v27 + 16) = xmmword_21B9233D0;
          swift_getErrorValue();
          v28 = sub_21B91E89C();
          v30 = v29;
          *(v27 + 56) = MEMORY[0x277D837D0];
          *(v27 + 64) = sub_21B918BF8();
          *(v27 + 32) = v28;
          *(v27 + 40) = v30;
          sub_21B918A60(0, &qword_27CD9ACE8, 0x277D86200);
          v31 = sub_21B91E7FC();
          sub_21B91E49C();

          v1 = v38;
          goto LABEL_21;
        }

        v15 = v3;
        v16 = v4;
        v17 = v7;
        v18 = v8;
        v19 = v40;
        v20 = [v14 localizedContainingAppName];
        if (!v20)
        {
          __break(1u);
        }

        v21 = v20;
        v22 = sub_21B91E70C();
        v24 = v23;

        sub_21B918AA8(&v40, v22, v24);

        v8 = v18;
        v7 = v17;
        v4 = v16;
        v3 = v15;
        v1 = v6 + 1;
      }

      else
      {
      }

      ++v6;
      if (v1 == v4)
      {

        v1 = v38;
        i = &off_21B923000;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v4 = sub_21B91E85C();
  }

LABEL_21:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD0, &qword_21B923468);
  v32 = swift_allocObject();
  *(v32 + 16) = *(i + 61);
  v33 = v41;
  *(v32 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD8, &qword_21B923470);
  *(v32 + 64) = sub_21B918A18(&qword_27CD9ACE0, &qword_27CD9ACD8, &qword_21B923470);
  *(v32 + 32) = v33;
  sub_21B918A60(0, &qword_27CD9ACE8, 0x277D86200);

  v34 = sub_21B91E7FC();
  sub_21B91E7BC();
  sub_21B91E49C();

  v35 = (*(*v1 + 264))(v33);
  result = (*(*v1 + 320))(v35);
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21B918114()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 232))();
    v3 = (*(*v1 + 256))();
    v4 = sub_21B9178AC(v3, v2);
    v5 = v1[2];
    v1[2] = v4;

    v6 = *(v4 + 16);

    if (v6)
    {
      v7 = v1[2];
      if (*(v7 + 16) == 1)
      {
        v8 = v1[2];

        v10 = sub_21B9179B0(v9);
        v12 = v11;

        if (!v12)
        {
          __break(1u);
          return result;
        }
      }

      else
      {
        v26[0] = *(v7 + 16);
        v10 = sub_21B91E86C();
        v12 = v16;
      }
    }

    else
    {
      type metadata accessor for ExtensionObserver();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v14 = [objc_opt_self() bundleForClass_];
      v10 = sub_21B91E38C();
      v12 = v15;
    }

    v17 = v1[10];
    v1[9] = v10;
    v1[10] = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD0, &qword_21B923468);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_21B9233D0;
    *(v18 + 56) = MEMORY[0x277D837D0];
    *(v18 + 64) = sub_21B918BF8();
    *(v18 + 32) = v10;
    *(v18 + 40) = v12;
    sub_21B918A60(0, &qword_27CD9ACE8, 0x277D86200);
    v19 = sub_21B91E7FC();
    sub_21B91E7BC();
    sub_21B91E49C();

    (*(*v1 + 280))(v26, v20);
    if (v26[3])
    {
      sub_21B9193C0(v26, v23);
      sub_21B918948(v26);
      v21 = v24;
      v22 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v22 + 8))(v10, v12, v21, v22);

      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    else
    {

      return sub_21B918948(v26);
    }
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B91848C()
{
  result = qword_27CD9ACB8;
  if (!qword_27CD9ACB8)
  {
    sub_21B91E6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9ACB8);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_21B918570(unint64_t a1, id a2)
{
  v30 = *(v2 + 16);
  v29 = *(v2 + 24);
  if (a2)
  {
    v5 = a2;
    sub_21B91E79C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD0, &qword_21B923468);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_21B9233D0;
    swift_getErrorValue();
    v7 = sub_21B91E89C();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_21B918BF8();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    sub_21B918A60(0, &qword_27CD9ACE8, 0x277D86200);
    v10 = sub_21B91E7FC();
    sub_21B91E49C();
  }

  if (!a1)
  {
    goto LABEL_20;
  }

  if (a1 >> 62)
  {
LABEL_19:
    v11 = sub_21B91E85C();
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_20:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD0, &qword_21B923468);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_21B9233D0;
    swift_beginAccess();
    v23 = *(v30 + 16);
    *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACD8, &qword_21B923470);
    *(v22 + 64) = sub_21B918A18(&qword_27CD9ACE0, &qword_27CD9ACD8, &qword_21B923470);
    *(v22 + 32) = v23;
    sub_21B918A60(0, &qword_27CD9ACE8, 0x277D86200);

    v24 = sub_21B91E7FC();
    sub_21B91E7BC();
    sub_21B91E49C();

    swift_beginAccess();
    v25 = *(v30 + 16);
    v26 = *(*v29 + 240);

    v28 = v26(v27);
    return (*(*v29 + 320))(v28);
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_6:
  v12 = 4;
  while (1)
  {
    v13 = v12 - 4;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CEFA900](v12 - 4, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v14 = *(a1 + 8 * v12);
    }

    v15 = v14;
    v16 = v12 - 3;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v14 state] == 4)
    {
      break;
    }

LABEL_8:
    ++v12;
    if (v16 == v11)
    {
      goto LABEL_20;
    }
  }

  result = [v15 localizedContainingAppName];
  if (result)
  {
    v18 = result;
    v19 = sub_21B91E70C();
    v21 = v20;

    swift_beginAccess();
    sub_21B918AA8(&v31, v19, v21);
    swift_endAccess();

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B918948(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACA0, &qword_21B9233E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B9189B0()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 96);

  sub_21B918948(v0 + 104);

  return MEMORY[0x2821FE8D8](v0, 144, 7);
}

uint64_t sub_21B918A18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21B918A60(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_21B918AA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21B91E8AC();
  sub_21B91E72C();
  v9 = sub_21B91E8BC();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21B91E87C() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21B918EAC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_21B918BF8()
{
  result = qword_27CD9ACF0;
  if (!qword_27CD9ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9ACF0);
  }

  return result;
}

uint64_t sub_21B918C4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACF8, &qword_21B923478);
  result = sub_21B91E83C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21B91E8AC();
      sub_21B91E72C();
      result = sub_21B91E8BC();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21B918EAC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21B918C4C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21B91902C();
      goto LABEL_16;
    }

    sub_21B919188(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21B91E8AC();
  sub_21B91E72C();
  result = sub_21B91E8BC();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21B91E87C();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21B91E88C();
  __break(1u);
  return result;
}

void *sub_21B91902C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACF8, &qword_21B923478);
  v2 = *v0;
  v3 = sub_21B91E82C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B919188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9ACF8, &qword_21B923478);
  result = sub_21B91E83C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21B91E8AC();

      sub_21B91E72C();
      result = sub_21B91E8BC();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21B9193C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21B919424(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 48) + 16 * result);
    result = *v4;
    v5 = v4[1];
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21B919480(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21B919534;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);

  [v3 extensionsWithCompletionHandler_];
  _Block_release(v4);
}

uint64_t sub_21B919534(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_21B9195E0();
    v4 = sub_21B91E75C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21B9195E0()
{
  result = qword_27CD9AD00;
  if (!qword_27CD9AD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD9AD00);
  }

  return result;
}

uint64_t type metadata accessor for DefaultSpamFilterSettingsProvider()
{
  result = qword_27CD9B0B0;
  if (!qword_27CD9B0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_21B919758@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_21B91E87C() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_21B91E3BC();
  }
}

uint64_t sub_21B919984()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

void (*DefaultSpamFilterSettingsProvider.localizedTitle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20TelephonyPreferences33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_21B91E3EC();

  swift_beginAccess();
  return sub_21B919B2C;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedDetail.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_21B919BFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_21B919CBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return DefaultSpamFilterSettingsProvider.localizedDetail.setter(v2, v3);
}

uint64_t DefaultSpamFilterSettingsProvider.localizedDetail.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (sub_21B91E87C())
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3BC();
}

uint64_t sub_21B919E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void (*DefaultSpamFilterSettingsProvider.localizedDetail.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20TelephonyPreferences33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_21B91E3EC();

  swift_beginAccess();
  return sub_21B91A034;
}

uint64_t DefaultSpamFilterSettingsProvider.localizedNavigationTitle.getter()
{
  swift_getKeyPath();
  v4 = v0;
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v2 = *(v0 + 48);
  v1 = *(v4 + 56);

  return v2;
}

uint64_t sub_21B91A104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_21B91A1DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t DefaultSpamFilterSettingsProvider.localizedNavigationTitle.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (v6 = *(v2 + 56), (sub_21B91E87C() & 1) != 0))
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_21B91E3BC();
  }
}

uint64_t sub_21B91A378()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  v4 = *(v1 + 56);
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
}

void (*DefaultSpamFilterSettingsProvider.localizedNavigationTitle.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20TelephonyPreferences33DefaultSpamFilterSettingsProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  *v4 = v1;
  swift_getKeyPath();
  sub_21B91E3EC();

  swift_beginAccess();
  return sub_21B91A520;
}

void sub_21B91A52C(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  v2 = v1[4];
  v3 = v1[5];
  *v1 = v1[3];
  swift_getKeyPath();
  sub_21B91E3DC();

  free(v1);
}

uint64_t sub_21B91A5B0()
{
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  v1 = *(v0 + 64);
}

uint64_t sub_21B91A654@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  *a2 = *(v3 + 64);
}

uint64_t sub_21B91A700(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_21B91A72C(v4);
}

uint64_t sub_21B91A72C(uint64_t a1)
{
  if (*(v1 + 64) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_21B91E3BC();
  }
}

uint64_t DefaultSpamFilterSettingsProvider.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  DefaultSpamFilterSettingsProvider.init()();
  return v3;
}

void *DefaultSpamFilterSettingsProvider.init()()
{
  v1 = v0;
  v22 = *v0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  v5 = sub_21B91E38C();
  v7 = v6;

  v1[2] = v5;
  v1[3] = v7;
  v8 = [v3 bundleForClass_];
  v9 = sub_21B91E38C();
  v11 = v10;

  v1[4] = v9;
  v1[5] = v11;
  v12 = [v3 bundleForClass_];
  v13 = sub_21B91E38C();
  v15 = v14;

  v1[6] = v13;
  v1[7] = v15;
  sub_21B91E3FC();
  type metadata accessor for ExtensionObserver();
  sub_21B9172DC(v23);
  v1[8] = sub_21B917348(v23);
  swift_getKeyPath();
  v23[0] = v1;
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  v16 = v1[8];
  v23[3] = v22;
  v23[4] = &off_282D54660;
  v23[0] = v1;
  v17 = *(*v16 + 288);

  v17(v23);

  swift_getKeyPath();
  v23[0] = v1;
  sub_21B91E3CC();

  v18 = *(*v1[8] + 312);

  v18(v19);

  v20 = [objc_opt_self() defaultCenter];
  [v20 addObserver:v1 selector:sel_updateExtensions name:*MEMORY[0x277D76758] object:0];

  return v1;
}

void *DefaultSpamFilterSettingsProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveEveryObserver(v2, v0);

  v3 = v0[3];

  v4 = v0[5];

  v5 = v0[7];

  v6 = v0[8];

  v7 = OBJC_IVAR____TtC20TelephonyPreferences33DefaultSpamFilterSettingsProvider___observationRegistrar;
  v8 = sub_21B91E40C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t DefaultSpamFilterSettingsProvider.__deallocating_deinit()
{
  DefaultSpamFilterSettingsProvider.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21B91AE74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5 && (*(v2 + 32) == a1 ? (v6 = v5 == a2) : (v6 = 0), v6 || (v7 = *(v2 + 40), (sub_21B91E87C() & 1) != 0)))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
    sub_21B91E3BC();
  }
}

uint64_t sub_21B91B06C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_21B91B130()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_21B91B3A0(&qword_27CD9AD08, type metadata accessor for DefaultSpamFilterSettingsProvider);
  sub_21B91E3CC();

  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

void *sub_21B91B210@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  result = DefaultSpamFilterSettingsProvider.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_21B91B2C0()
{
  result = sub_21B91E40C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B91B3A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21B91B3E8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 64);
  *(v1 + 64) = *(v0 + 24);
}

uint64_t sub_21B91B43C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD20, &qword_21B923700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v15 - v5);
  sub_21B91D02C(v2, &v15 - v5, &qword_27CD9AD20, &qword_21B923700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21B91C098(v6, a1, &qword_27CD9AD28, &qword_21B923708);
  }

  v8 = *v6;
  sub_21B91E7AC();
  v9 = sub_21B91E5CC();
  sub_21B91E4AC();

  v10 = sub_21B91E52C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B91E51C();
  swift_getAtKeyPath();

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_21B91B638(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD28, &qword_21B923708) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  sub_21B91D02C(a1, &v5 - v3, &qword_27CD9AD28, &qword_21B923708);
  return sub_21B91E50C();
}

uint64_t sub_21B91B700(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD40, &qword_21B923750);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v29 - v7;
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD28, &qword_21B923708) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v29 - v10;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD20, &qword_21B923700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = (&v29 - v13);
  sub_21B91D02C(v2, &v29 - v13, &qword_27CD9AD20, &qword_21B923700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21B91C098(v14, v11, &qword_27CD9AD28, &qword_21B923708);
  }

  else
  {
    v15 = *v14;
    sub_21B91E7AC();
    v16 = sub_21B91E5CC();
    sub_21B91E4AC();

    v17 = sub_21B91E52C();
    v18 = *(v17 - 8);
    v19 = *(v18 + 64);
    MEMORY[0x28223BE20]();
    v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_21B91E51C();
    swift_getAtKeyPath();

    (*(v18 + 8))(v21, v17);
  }

  if ((*(v5 + 48))(v11, 1, v4) == 1)
  {
    return sub_21B91CFCC(v11, &qword_27CD9AD28, &qword_21B923708);
  }

  sub_21B91C098(v11, v8, &qword_27CD9AD40, &qword_21B923750);
  v23 = sub_21B91E6BC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20]();
  v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CEFA740](v4);
  v28 = sub_21B91E6AC();
  (*(v24 + 8))(v27, v23);
  [a1 setEditing:v28 & 1 animated:1];
  return sub_21B91CFCC(v8, &qword_27CD9AD40, &qword_21B923750);
}

uint64_t sub_21B91BAF4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator_parent;
  swift_beginAccess();
  return sub_21B91BB4C(v1 + v3, a1);
}

uint64_t sub_21B91BB4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B91BBB0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator_parent;
  swift_beginAccess();
  sub_21B91BC10(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_21B91BC10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21B91BCD4(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  sub_21B91BB4C(a1, v3 + OBJC_IVAR____TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator_parent);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  sub_21B91BD48(a1);
  return v4;
}

uint64_t sub_21B91BD48(uint64_t a1)
{
  v2 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B91BDC4(uint64_t a1, char a2)
{
  v4 = (type metadata accessor for DefaultSpamFilterSettingsController(0) - 8);
  v5 = *(*v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*((*MEMORY[0x277D85000] & *v2) + 0x58))(v6);
  v9 = &v8[v4[7]];
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v9) = v9[16];
  v14 = v10;
  v15 = v11;
  v16 = v9;
  v13[7] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD30, &qword_21B923740);
  sub_21B91E69C();
  sub_21B91BD48(v8);
}

id sub_21B91C050()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DefaultSpamFilterSettingsController.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21B91C098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

id sub_21B91C100()
{
  v0 = [objc_allocWithZone(DefaultSpamFilterListController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD38, &qword_21B923748);
  sub_21B91E5BC();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_21B91C1B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B91BB4C(v2, v6);
  v7 = type metadata accessor for DefaultSpamFilterSettingsController.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  sub_21B91BB4C(v6, v8 + OBJC_IVAR____TtCV20TelephonyPreferences35DefaultSpamFilterSettingsController11Coordinator_parent);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  result = sub_21B91BD48(v6);
  *a2 = v9;
  return result;
}

void sub_21B91C3C4()
{
  sub_21B91CF88(&unk_27CD9AE20);
  sub_21B91E59C();
  __break(1u);
}

uint64_t sub_21B91C408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for DefaultSpamFilterSettingsController(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = (v1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20));
  v9 = *v8;
  v10 = *(v8 + 1);
  v25 = v9;
  v26 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD50, &qword_21B923760);
  sub_21B91E67C();
  v11 = v22;
  v12 = v23;
  v13 = v24;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD20, &qword_21B923700);
  swift_storeEnumTagMultiPayload();
  v14 = v7 + *(v4 + 20);
  *v14 = v11;
  *(v14 + 1) = v12;
  v14[16] = v13;
  v21 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD58, &qword_21B923768);
  sub_21B91CF88(&qword_27CD9AD60);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9AD68, &qword_21B923770);
  v16 = sub_21B91C9F4();
  v22 = v15;
  v23 = v16;
  swift_getOpaqueTypeConformance2();
  sub_21B91E64C();
  sub_21B91BD48(v7);
  v17 = sub_21B91E4EC();
  LOBYTE(v4) = sub_21B91E5DC();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD9AD80, &qword_21B923778);
  v19 = a1 + *(result + 36);
  *v19 = v17;
  *(v19 + 8) = v4;
  return result;
}

uint64_t sub_21B91C628(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B91C660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD68, &qword_21B923770);
  v3 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v26[-v4];
  v6 = sub_21B91E4CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B91E4BC();
  v11 = (a1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20));
  v12 = *v11;
  v13 = *(v11 + 1);
  v26[16] = v12;
  v27 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD50, &qword_21B923760);
  sub_21B91E66C();
  if (v26[15])
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  (*(v7 + 32))(v5, v10, v6);
  *&v5[*(v2 + 36)] = v14;
  v15 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD28, &qword_21B923708) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v17 = &v26[-v16];
  sub_21B91B43C(&v26[-v16]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD40, &qword_21B923750);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_21B91CFCC(v17, &qword_27CD9AD28, &qword_21B923708);
LABEL_8:
    sub_21B91E5EC();
    goto LABEL_9;
  }

  v19 = sub_21B91E6BC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20]();
  v23 = &v26[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x21CEFA740](v18);
  sub_21B91CFCC(v17, &qword_27CD9AD40, &qword_21B923750);
  v24 = sub_21B91E6AC();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_21B91E5FC();
LABEL_9:
  sub_21B91C9F4();
  sub_21B91E62C();
  return sub_21B91CFCC(v5, &qword_27CD9AD68, &qword_21B923770);
}

unint64_t sub_21B91C9F4()
{
  result = qword_27CD9AD70;
  if (!qword_27CD9AD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9AD68, &qword_21B923770);
    sub_21B91CA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9AD70);
  }

  return result;
}

unint64_t sub_21B91CA74()
{
  result = qword_27CD9AD78;
  if (!qword_27CD9AD78)
  {
    sub_21B91E4CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9AD78);
  }

  return result;
}

uint64_t _s20TelephonyPreferences33DefaultSpamFilterSettingsProviderC7contentQrvg_0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD9AD20, &qword_21B923700);
  swift_storeEnumTagMultiPayload();
  v2 = a1 + *(type metadata accessor for DefaultSpamFilterView(0) + 20);
  result = sub_21B91E65C();
  *v2 = v4;
  *(v2 + 1) = v5;
  return result;
}

void sub_21B91CC3C()
{
  if (!qword_27CD9AD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9AD28, &qword_21B923708);
    v0 = sub_21B91E4DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD9AD90);
    }
  }
}

uint64_t sub_21B91CCA8()
{
  result = type metadata accessor for DefaultSpamFilterSettingsController(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_21B91CD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void, void))
{
  sub_21B91CC3C();
  if (v7 <= 0x3F)
  {
    sub_21B91CE10(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21B91CE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21B91CE64()
{
  result = qword_27CD9AE18;
  if (!qword_27CD9AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CD9AD80, &qword_21B923778);
    type metadata accessor for DefaultSpamFilterSettingsController(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9AD58, &qword_21B923768);
    sub_21B91CF88(&qword_27CD9AD60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD9AD68, &qword_21B923770);
    sub_21B91C9F4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD9AE18);
  }

  return result;
}

uint64_t sub_21B91CF88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultSpamFilterSettingsController(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B91CFCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21B91D02C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  MEMORY[0x282114910](line, options);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}