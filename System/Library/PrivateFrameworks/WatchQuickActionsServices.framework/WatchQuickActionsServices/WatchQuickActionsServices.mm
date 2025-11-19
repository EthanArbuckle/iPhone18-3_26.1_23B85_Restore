id wqa_services_log()
{
  if (wqa_services_log_onceToken != -1)
  {
    wqa_services_log_cold_1();
  }

  v1 = wqa_services_log___logger;

  return v1;
}

uint64_t __wqa_services_log_block_invoke()
{
  wqa_services_log___logger = os_log_create("com.apple.WatchQuickActions", "services");

  return MEMORY[0x2821F96F8]();
}

id wqa_client_log()
{
  if (wqa_client_log_onceToken != -1)
  {
    wqa_client_log_cold_1();
  }

  v1 = wqa_client_log___logger;

  return v1;
}

uint64_t __wqa_client_log_block_invoke()
{
  wqa_client_log___logger = os_log_create("com.apple.WatchQuickActions", "client");

  return MEMORY[0x2821F96F8]();
}

id wqa_server_log()
{
  if (wqa_server_log_onceToken != -1)
  {
    wqa_server_log_cold_1();
  }

  v1 = wqa_server_log___logger;

  return v1;
}

uint64_t __wqa_server_log_block_invoke()
{
  wqa_server_log___logger = os_log_create("com.apple.WatchQuickActions", "server");

  return MEMORY[0x2821F96F8]();
}

id wqa_input_log()
{
  if (wqa_input_log_onceToken != -1)
  {
    wqa_input_log_cold_1();
  }

  v1 = wqa_input_log___logger;

  return v1;
}

uint64_t __wqa_input_log_block_invoke()
{
  wqa_input_log___logger = os_log_create("com.apple.WatchQuickActions", "input");

  return MEMORY[0x2821F96F8]();
}

id wqa_feedback_log()
{
  if (wqa_feedback_log_onceToken != -1)
  {
    wqa_feedback_log_cold_1();
  }

  v1 = wqa_feedback_log___logger;

  return v1;
}

uint64_t __wqa_feedback_log_block_invoke()
{
  wqa_feedback_log___logger = os_log_create("com.apple.WatchQuickActions", "feedback");

  return MEMORY[0x2821F96F8]();
}

id wqa_overlay_log()
{
  if (wqa_overlay_log_onceToken != -1)
  {
    wqa_overlay_log_cold_1();
  }

  v1 = wqa_overlay_log___logger;

  return v1;
}

uint64_t __wqa_overlay_log_block_invoke()
{
  wqa_overlay_log___logger = os_log_create("com.apple.WatchQuickActions", "overlay");

  return MEMORY[0x2821F96F8]();
}

void wqa_dump_call_stack(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (_os_feature_enabled_impl())
  {
    v5 = wqa_services_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v21 = v3;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_272AAE000, v5, OS_LOG_TYPE_INFO, "[dump call stack] reason='%@', params=%@", buf, 0x16u);
    }

    v14 = v3;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [MEMORY[0x277CCACC8] callStackSymbols];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = wqa_services_log();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_272AAE000, v12, OS_LOG_TYPE_INFO, "%@", buf, 0xCu);
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    v3 = v14;
  }

  v13 = *MEMORY[0x277D85DE8];
}

id getWatchControlSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getWatchControlSettingsClass_softClass;
  v7 = getWatchControlSettingsClass_softClass;
  if (!getWatchControlSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getWatchControlSettingsClass_block_invoke;
    v3[3] = &unk_279E65C30;
    v3[4] = &v4;
    __getWatchControlSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_272AAF9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t WatchControlSettingsLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!WatchControlSettingsLibraryCore_frameworkLibrary)
  {
    WatchControlSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = WatchControlSettingsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __WatchControlSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  WatchControlSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getWatchControlSettingsClass_block_invoke(uint64_t a1)
{
  WatchControlSettingsLibrary();
  result = objc_getClass("WatchControlSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getWatchControlSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getWatchControlSettingsClass_block_invoke_cold_1();
    return WatchControlSettingsLibrary();
  }

  return result;
}

uint64_t WatchControlSettingsLibrary()
{
  v0 = WatchControlSettingsLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

void *__getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WatchControlSettingsLibrary();
  result = dlsym(v2, "kWatchControlReceivedActivationGestureDidChange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWatchControlReceivedActivationGestureDidChangeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WatchControlSettingsLibrary();
  result = dlsym(v2, "kWatchControlInputSourcesRequireFocusRingDidChange");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkWatchControlInputSourcesRequireFocusRingDidChangeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getWCGreyEventNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = WatchControlSettingsLibrary();
  result = dlsym(v2, "WCGreyEventNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getWCGreyEventNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id WQADefaultTintColor()
{
  if (WQADefaultTintColor_onceToken != -1)
  {
    WQADefaultTintColor_cold_1();
  }

  v1 = WQADefaultTintColor_DefaultTintColor;

  return v1;
}

uint64_t __WQADefaultTintColor_block_invoke()
{
  WQADefaultTintColor_DefaultTintColor = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];

  return MEMORY[0x2821F96F8]();
}

double WQADefaultOpacity()
{
  v0 = _AXSEnhanceBackgroundContrastEnabled();
  result = 0.97;
  if (v0)
  {
    return 1.0;
  }

  return result;
}

void sub_272AB5990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272AB613C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_272AB65F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  objc_destroyWeak((v31 + 40));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_272AB72E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WQAErrorForErrorCode(uint64_t a1)
{
  v2 = @"unknown error";
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = @"no activation callback";
  v4 = @"quick actions not enabled";
  if (a1 != -100)
  {
    v4 = @"unknown error";
  }

  if (a1 != -1000)
  {
    v3 = v4;
  }

  v5 = @"missing service handler";
  v6 = @"unexpected payload";
  if (a1 != -1001)
  {
    v6 = @"unknown error";
  }

  if (a1 != -1002)
  {
    v5 = v6;
  }

  if (a1 <= -1001)
  {
    v3 = v5;
  }

  if (a1 == -1003)
  {
    v2 = @"no feedback available";
  }

  if (a1 == -1004)
  {
    v2 = @"no quick action found for identifier";
  }

  if (a1 == -1005)
  {
    v2 = @"app not in foreground";
  }

  if (a1 <= -1003)
  {
    v3 = v2;
  }

  v7 = MEMORY[0x277CCA9B8];
  v12 = *MEMORY[0x277CCA450];
  v13[0] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [v7 errorWithDomain:@"com.apple.WatchQuickActions.ErrorDomain" code:a1 userInfo:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_272AB7A60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_272AB7D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272AB83C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_272AB85F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
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
    v6 = xmmword_279E65E20;
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

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}