void _axSettingsHandlePreferenceChanged(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = +[RTTSettings sharedInstance];
  [v4 _handlePreferenceChanged:a3];
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

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id ttyLocString(void *a1)
{
  v1 = a1;
  v2 = accessibilityRTTUtilitiesBundle();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:@"TTYSupport"];

  return v3;
}

id accessibilityRTTUtilitiesBundle()
{
  v0 = accessibilityRTTUtilitiesBundle_AXBundle;
  if (!accessibilityRTTUtilitiesBundle_AXBundle)
  {
    v1 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v2 = accessibilityRTTUtilitiesBundle_AXBundle;
    accessibilityRTTUtilitiesBundle_AXBundle = v1;

    v0 = accessibilityRTTUtilitiesBundle_AXBundle;
  }

  return v0;
}

void sub_261757C9C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v6 - 176));
  objc_destroyWeak((v6 - 136));
  objc_destroyWeak((v6 - 128));
  _Unwind_Resume(a1);
}

uint64_t sub_261758694()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2617586CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_261759DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26175A6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26175AEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26175BC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    if (![MEMORY[0x277D12B60] isInternalInstall])
    {
      v10 = AXLogRTT();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __39__RTTController_handleDatabaseRequest___block_invoke_cold_4();
      }

      objc_end_catch();
      JUMPOUT(0x26175B5C0);
    }

    v11 = v9;
    objc_exception_throw(v9);
  }

  _Unwind_Resume(exception_object);
}

void sub_26175CCA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXUIClientClass_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUILibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279AE7910;
    v7 = 0;
    AccessibilityUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v5[0];
    if (AccessibilityUILibraryCore_frameworkLibrary)
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
  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1();
  }

  getAXUIClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSFSpeechRecognizerClass_block_invoke(uint64_t a1)
{
  SpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSpeechRecognizer");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSpeechRecognizerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSFSpeechRecognizerClass_block_invoke_cold_1();
    SpeechLibrary();
  }
}

void SpeechLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!SpeechLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __SpeechLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279AE7948;
    v4 = 0;
    SpeechLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!SpeechLibraryCore_frameworkLibrary)
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

uint64_t __SpeechLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpeechLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void __getSFSpeechURLRecognitionRequestClass_block_invoke(uint64_t a1)
{
  SpeechLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SFSpeechURLRecognitionRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFSpeechURLRecognitionRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSFSpeechURLRecognitionRequestClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_0();
  }
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id ttyLocStringAndLocale(void *a1, void *a2)
{
  v3 = a1;
  v4 = *MEMORY[0x277CBECE8];
  v5 = a2;
  v6 = accessibilityRTTUtilitiesBundle();
  v7 = [v6 bundleURL];
  v8 = CFBundleCreate(v4, v7);

  v9 = CFBundleCopyLocalizedStringForLocalization();
  if ([v9 isEqualToString:v3])
  {
    v10 = ttyLocString(v3);

    v9 = v10;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void sub_26175ED90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26175EFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void transportMethodDidChange()
{
  v0 = +[RTTTelephonyUtilities sharedUtilityProvider];
  [v0 headphoneStateChangedNotification:0];
}

void sub_261761174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26176150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261761704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261762020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261762754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2617681C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261768A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void destructor(id a1)
{
  if (a1)
  {
  }
}

void sub_2617696CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void TranslationLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!TranslationLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __TranslationLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279AE7F58;
    v4 = 0;
    TranslationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!TranslationLibraryCore_frameworkLibrary)
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

uint64_t __TranslationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  TranslationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getAXSpringBoardServerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary();
  result = objc_getClass("AXSpringBoardServer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXSpringBoardServerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXSpringBoardServerClass_block_invoke_cold_1();
    return AccessibilityUtilitiesLibrary();
  }

  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AE7F70;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAXInCallServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXInCallServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXInCallServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RTTSetDownlinkMute(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v4 = *MEMORY[0x277D26BA0];
  v8 = 0;
  [v2 setAttribute:v3 forKey:v4 error:&v8];
  v5 = v8;

  v6 = AXLogRTT();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v10 = a1;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_261754000, v6, OS_LOG_TYPE_INFO, "Toggled downlink mute: %d - err: %@", buf, 0x12u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void RTTRequestNotificationAuthorization()
{
  v0 = +[RTTSettings sharedInstance];
  v1 = [v0 showsRTTNotifications];

  if (v1)
  {
    v3 = RTTNotificationCenter();
    [v3 requestAuthorizationWithOptions:32 completionHandler:&__block_literal_global_4];
  }

  else
  {
    v2 = AXLogRTT();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Not requesting user notification permission because feature is user disabled", buf, 2u);
    }
  }
}

id RTTNotificationCenter()
{
  if (RTTNotificationCenter_onceToken != -1)
  {
    RTTNotificationCenter_cold_1();
  }

  v1 = RTTNotificationCenter_rttNotificationCenter;

  return v1;
}

void __RTTRequestNotificationAuthorization_block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = AXLogRTT();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_261754000, v5, OS_LOG_TYPE_INFO, "Requested authorization to show notification: %d %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void RTTGenerateUserNotificationForContact(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = +[RTTSettings sharedInstance];
  v12 = [v11 showsRTTNotifications];

  if (v12)
  {
    v13 = UtteranceCoalescer;
    if (!UtteranceCoalescer)
    {
      v14 = objc_alloc_init(MEMORY[0x277CE6950]);
      v15 = UtteranceCoalescer;
      UtteranceCoalescer = v14;

      [UtteranceCoalescer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
      v13 = UtteranceCoalescer;
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __RTTGenerateUserNotificationForContact_block_invoke;
    v17[3] = &unk_279AE7FE8;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [v13 afterDelay:v17 processBlock:5.0];

    v16 = v18;
  }

  else
  {
    v16 = AXLogRTT();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_261754000, v16, OS_LOG_TYPE_INFO, "Not generating user notification because feature is user disabled", buf, 2u);
    }
  }
}

void __RTTGenerateUserNotificationForContact_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = getUNMutableNotificationContentClass_softClass;
  v27 = getUNMutableNotificationContentClass_softClass;
  if (!getUNMutableNotificationContentClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v31 = __getUNMutableNotificationContentClass_block_invoke;
    v32 = &unk_279AE78F0;
    v33 = &v24;
    __getUNMutableNotificationContentClass_block_invoke(&buf);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v10 = objc_opt_new();
  v11 = [v6 text];
  [v10 setBody:v11];

  [v10 setCategoryIdentifier:@"com.apple.RTTNotifications.message"];
  [v10 setTitle:v4];
  [v10 setThreadIdentifier:v7];
  v12 = [MEMORY[0x277CBEBC0] faceTimeShowInCallUIURL];
  [v10 setDefaultActionURL:v12];

  [v10 setShouldSuppressDefaultAction:0];
  [v10 setShouldAuthenticateDefaultAction:0];
  v13 = [MEMORY[0x277CBEAA8] date];
  v14 = [v13 dateByAddingTimeInterval:3600.0];
  [v10 setExpirationDate:v14];

  v28 = @"CallUID";
  v29 = v7;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  [v10 setUserInfo:v15];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v16 = getUNNotificationRequestClass_softClass;
  v27 = getUNNotificationRequestClass_softClass;
  if (!getUNNotificationRequestClass_softClass)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v31 = __getUNNotificationRequestClass_block_invoke;
    v32 = &unk_279AE78F0;
    v33 = &v24;
    __getUNNotificationRequestClass_block_invoke(&buf);
    v16 = v25[3];
  }

  v17 = v16;
  _Block_object_dispose(&v24, 8);
  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = [v18 UUIDString];
  v20 = [v16 requestWithIdentifier:v19 content:v10 trigger:0];

  v21 = AXLogRTT();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_261754000, v21, OS_LOG_TYPE_INFO, "Posting local notification: %@", &buf, 0xCu);
  }

  v22 = RTTNotificationCenter();
  [v22 addNotificationRequest:v20 withCompletionHandler:&__block_literal_global_50];

  v23 = *MEMORY[0x277D85DE8];
}

void RTTRemoveUserNotifications(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = RTTNotificationCenter();
  v3 = [v2 deliveredNotifications];

  v4 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [v8 request];
        v10 = [v9 content];
        v11 = [v10 threadIdentifier];
        v12 = [v11 isEqualToString:v1];

        if (v12)
        {
          v13 = [v8 request];
          v14 = [v13 identifier];
          [v19 addObject:v14];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v5);
  }

  v15 = AXLogRTT();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [v19 count];
    *buf = 134218242;
    v25 = v16;
    v26 = 2112;
    v27 = v1;
    _os_log_impl(&dword_261754000, v15, OS_LOG_TYPE_INFO, "Removing %lu RTT notifications for call %@", buf, 0x16u);
  }

  v17 = RTTNotificationCenter();
  [v17 removeDeliveredNotificationsWithIdentifiers:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __RTTNotificationCenter_block_invoke()
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v0 = getUNUserNotificationCenterClass_softClass;
  v17 = getUNUserNotificationCenterClass_softClass;
  if (!getUNUserNotificationCenterClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getUNUserNotificationCenterClass_block_invoke;
    v12 = &unk_279AE78F0;
    v13 = &v14;
    __getUNUserNotificationCenterClass_block_invoke(&v9);
    v0 = v15[3];
  }

  v1 = v0;
  _Block_object_dispose(&v14, 8);
  v2 = [[v0 alloc] initWithBundleIdentifier:@"com.apple.RTTNotifications"];
  v3 = RTTNotificationCenter_rttNotificationCenter;
  RTTNotificationCenter_rttNotificationCenter = v2;

  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getUNNotificationCategoryClass_softClass;
  v17 = getUNNotificationCategoryClass_softClass;
  if (!getUNNotificationCategoryClass_softClass)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __getUNNotificationCategoryClass_block_invoke;
    v12 = &unk_279AE78F0;
    v13 = &v14;
    __getUNNotificationCategoryClass_block_invoke(&v9);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = [v4 categoryWithIdentifier:@"com.apple.RTTNotifications.message" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:0];
  v7 = RTTNotificationCenter_rttNotificationCenter;
  v8 = [MEMORY[0x277CBEB98] setWithObject:v6];
  [v7 setNotificationCategories:v8];
}

void sub_2617709EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getUNUserNotificationCenterClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("UNUserNotificationCenter");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNUserNotificationCenterClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getUNUserNotificationCenterClass_block_invoke_cold_1();
    UserNotificationsLibrary();
  }
}

void UserNotificationsLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!UserNotificationsLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __UserNotificationsLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_279AE8008;
    v4 = 0;
    UserNotificationsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!UserNotificationsLibraryCore_frameworkLibrary)
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

uint64_t __UserNotificationsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserNotificationsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getUNNotificationCategoryClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationCategory");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNNotificationCategoryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNNotificationCategoryClass_block_invoke_cold_1();
    return ___RTTSendUserNotification_block_invoke(v3);
  }

  return result;
}

Class __getUNMutableNotificationContentClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNMutableNotificationContent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNMutableNotificationContentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNMutableNotificationContentClass_block_invoke_cold_1();
    return __getUNNotificationRequestClass_block_invoke(v3);
  }

  return result;
}

RTTTranscriptionController *__getUNNotificationRequestClass_block_invoke(uint64_t a1)
{
  UserNotificationsLibrary();
  result = objc_getClass("UNNotificationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUNNotificationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUNNotificationRequestClass_block_invoke_cold_1();
    return [(RTTTranscriptionController *)v3 initWithDelegate:v4, v5];
  }

  return result;
}

uint64_t soft_AXHasCapability(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getAXHasCapabilitySymbolLoc_ptr;
  v10 = getAXHasCapabilitySymbolLoc_ptr;
  if (!getAXHasCapabilitySymbolLoc_ptr)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getAXHasCapabilitySymbolLoc_block_invoke;
    v6[3] = &unk_279AE78F0;
    v6[4] = &v7;
    __getAXHasCapabilitySymbolLoc_block_invoke(v6);
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = __41__RTTCall__postLocalNotificationForText___block_invoke_cold_1();
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v5);
  }

  v3 = v2(v1);

  return v3;
}

void sub_261771930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXLTLiveTranscriptionClass_block_invoke(uint64_t a1)
{
  LiveTranscriptionLibrary();
  result = objc_getClass("AXLTLiveTranscription");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXLTLiveTranscriptionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAXLTLiveTranscriptionClass_block_invoke_cold_1();
    return LiveTranscriptionLibrary();
  }

  return result;
}

uint64_t LiveTranscriptionLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LiveTranscriptionLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LiveTranscriptionLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AE8090;
    v6 = 0;
    LiveTranscriptionLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = LiveTranscriptionLibraryCore_frameworkLibrary;
  v1 = v4[0];
  if (!LiveTranscriptionLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __LiveTranscriptionLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LiveTranscriptionLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAXHasCapabilitySymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_279AE80A8;
    v8 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
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

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "AXHasCapability");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXHasCapabilitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LiveTranscriptionLibrary();
  result = dlsym(v2, "AXLCLiveCaptionsSelectedLocaleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXLCLiveCaptionsSelectedLocaleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_261772674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261772994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261772E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void sub_2617739B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26177413C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_1_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(*result + 40);
  return result;
}

void AccessibilitySettingsChangedOnCompanion()
{
  v7[4] = *MEMORY[0x277D85DE8];
  v0 = AXLogRTT();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_261754000, v0, OS_LOG_TYPE_INFO, "Settings changed on companion", v6, 2u);
  }

  v7[0] = kAXSTTYSoftwareEnabledPreference;
  v7[1] = kAXSTTYPreferredRelayNumberPreference;
  v7[2] = kAXSTTYShouldBeRealtimePreference;
  v7[3] = @"TTYCannedResponsesPreference";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  [v1 enumerateObjectsUsingBlock:&__block_literal_global_393];
  v2 = AXLogRTT();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_261754000, v2, OS_LOG_TYPE_INFO, "Posting transport changed because accessibility settings on companion changed", v6, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AXTTYPreferredTransportMethodChangedNotification", 0, 0, 1u);
  v4 = +[RTTTelephonyUtilities sharedUtilityProvider];
  [v4 currentPreferredTransportMethod];

  v5 = *MEMORY[0x277D85DE8];
}

void sub_261774FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __AccessibilitySettingsChangedOnCompanion_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[RTTSettings sharedInstance];
  name = [v3 _notificationForPreferenceKey:v2];

  if (name)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, name, 0, 0, 1u);
  }
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_261778D5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261779170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_261779EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26177A08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id RTTLiveCaptionObjC.__allocating_init(rootObject:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___RTTLiveCaptionObjC_rootObject] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id RTTLiveCaptionObjC.init(rootObject:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___RTTLiveCaptionObjC_rootObject] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RTTLiveCaptionObjC();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26177B584()
{
  v1 = *(v0 + OBJC_IVAR___RTTLiveCaptionObjC_rootObject);
  sub_26177D4A0();

  return sub_26177D500();
}

id RTTLiveCaptionObjC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26177B6C0()
{
  result = [objc_allocWithZone(type metadata accessor for RTTLiveCaptionsObjC()) init];
  qword_27FEB9378 = result;
  return result;
}

id static RTTLiveCaptionsObjC.shared.getter()
{
  if (qword_27FEB9370 != -1)
  {
    swift_once();
  }

  v1 = qword_27FEB9378;

  return v1;
}

uint64_t sub_26177B7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(v6 + OBJC_IVAR___RTTLiveCaptionsObjC_rootObject);
  sub_26177D510();
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;

  sub_26177D4D0();

  if (v7)
  {
    return swift_willThrow();
  }

  return result;
}

void sub_26177B86C(void *a1, void (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for RTTLiveCaptionObjC();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___RTTLiveCaptionObjC_rootObject] = a1;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  a2(v7, v8);
}

uint64_t sub_26177BB98()
{
  v2 = *(v0 + OBJC_IVAR___RTTLiveCaptionsObjC_rootObject);
  sub_26177D510();
  result = sub_26177D4C0();
  if (v1)
  {
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26177BC90()
{
  result = sub_26177D500();
  qword_27FEB9388 = result;
  return result;
}

uint64_t sub_26177BCFC()
{
  result = sub_26177D520();
  qword_27FEB9398 = result;
  return result;
}

uint64_t sub_26177BD44(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_26177BDB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

id RTTLiveCaptionsObjC.init()()
{
  v1 = OBJC_IVAR___RTTLiveCaptionsObjC_rootObject;
  sub_26177D4F0();
  *&v0[v1] = sub_26177D4E0();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for RTTLiveCaptionsObjC();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_26177BF00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
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

uint64_t sub_26177C0E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB92C8, &qword_26177FCD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}