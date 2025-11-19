void sub_261726C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
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

void *__getAXProcessIsInCallServiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsInCallService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsInCallServiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279AE4F30;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary();
  result = dlsym(v2, "AXProcessIsRTTNotificationContentExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_261729B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26172A004(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_26172A504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t soft_AXProcessIsInCallService()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXProcessIsInCallServiceSymbolLoc_ptr_0;
  v7 = getAXProcessIsInCallServiceSymbolLoc_ptr_0;
  if (!getAXProcessIsInCallServiceSymbolLoc_ptr_0)
  {
    v1 = AccessibilityUtilitiesLibrary_0();
    v5[3] = dlsym(v1, "AXProcessIsInCallService");
    getAXProcessIsInCallServiceSymbolLoc_ptr_0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void sub_26172AF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26172B66C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak((v34 - 96));
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Block_object_dispose((v34 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t soft_AXProcessIsRTTNotificationContentExtension()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_0;
  v7 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_0;
  if (!getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_0)
  {
    v1 = AccessibilityUtilitiesLibrary_0();
    v5[3] = dlsym(v1, "AXProcessIsRTTNotificationContentExtension");
    getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_0 = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0();
}

void sub_26172CF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_261732394(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2617331FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2617333A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2617337B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose((v8 - 80), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getLPLinkMetadataClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!LinkPresentationLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __LinkPresentationLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AE5230;
    v6 = 0;
    LinkPresentationLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (LinkPresentationLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("LPLinkMetadata");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLPLinkMetadataClass_block_invoke_cold_1();
  }

  getLPLinkMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __LinkPresentationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  LinkPresentationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXProcessIsInCallServiceSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_0();
  result = dlsym(v2, "AXProcessIsInCallService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsInCallServiceSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUtilitiesLibrary_0()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279AE5248;
    v5 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

Class __getAXUserEventTimerClass_block_invoke(uint64_t a1)
{
  AccessibilityUtilitiesLibrary_0();
  result = objc_getClass("AXUserEventTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAXUserEventTimerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAXUserEventTimerClass_block_invoke_cold_1();
    return __getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke_0(v3);
  }

  return result;
}

void *__getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUtilitiesLibrary_0();
  result = dlsym(v2, "AXProcessIsRTTNotificationContentExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279AE5260;
    v7 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary;
    if (AccessibilityUIUtilitiesLibraryCore_frameworkLibrary)
    {
      if (!v5[0])
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

  v2 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "AXUIKeyboardIsOnScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardIsOnScreenSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getDDParsecCollectionViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __DataDetectorsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279AE5278;
    v6 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (DataDetectorsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
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
  result = objc_getClass("DDParsecCollectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDDParsecCollectionViewControllerClass_block_invoke_cold_1();
  }

  getDDParsecCollectionViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary = result;
  return result;
}

id OUTLINED_FUNCTION_0(id a1)
{

  return a1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

uint64_t Soft_AXProcessIsRTTNotificationContentExtension()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_1;
  v7 = getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_1;
  if (!getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke_1;
    v3[3] = &unk_279AE4F10;
    v3[4] = &v4;
    __getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke_1(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v2 = [RTTUIConversationControllerCoordinator registerForCallUpdates:];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v2);
  }

  return v0();
}

uint64_t __UIAccessibilityLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  UIAccessibilityLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAXProcessIsRTTNotificationContentExtensionSymbolLoc_block_invoke_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AccessibilityUtilitiesLibraryCore_block_invoke_1;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279AE52D0;
    v7 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v3 = v5[0];
    v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_1;
    if (AccessibilityUtilitiesLibraryCore_frameworkLibrary_1)
    {
      if (!v5[0])
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

  v2 = AccessibilityUtilitiesLibraryCore_frameworkLibrary_1;
LABEL_5:
  result = dlsym(v2, "AXProcessIsRTTNotificationContentExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXProcessIsRTTNotificationContentExtensionSymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary_1 = result;
  return result;
}

id ttyImageNamed(void *a1)
{
  v1 = MEMORY[0x277D755B8];
  v2 = MEMORY[0x277CCA8D8];
  v3 = a1;
  v4 = [v2 bundleForClass:objc_opt_class()];
  v5 = [v1 imageNamed:v3 inBundle:v4];

  return v5;
}

void sub_261738448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 40));
  _Block_object_dispose(&a19, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261738724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26173AA44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_26173CF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getAXUIKeyboardIsOnScreenSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIKeyboardIsOnScreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardIsOnScreenSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AccessibilityUIUtilitiesLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __AccessibilityUIUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279AE5458;
    v5 = 0;
    AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0;
  v1 = v3[0];
  if (!AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AccessibilityUIUtilitiesLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  AccessibilityUIUtilitiesLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void *__getAXUIKeyboardScreenFrameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AccessibilityUIUtilitiesLibrary();
  result = dlsym(v2, "AXUIKeyboardScreenFrame");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXUIKeyboardScreenFrameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
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