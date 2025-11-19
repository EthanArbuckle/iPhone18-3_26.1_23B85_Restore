void sub_27102DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_27102EC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2710307A8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

id _AXFrontBoardFocusedAppProcesses()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getAXFrontBoardFocusedAppProcessesSymbolLoc_ptr;
  v7 = getAXFrontBoardFocusedAppProcessesSymbolLoc_ptr;
  if (!getAXFrontBoardFocusedAppProcessesSymbolLoc_ptr)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getAXFrontBoardFocusedAppProcessesSymbolLoc_block_invoke;
    v3[3] = &unk_279E2C600;
    v3[4] = &v4;
    __getAXFrontBoardFocusedAppProcessesSymbolLoc_block_invoke(v3);
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    _AXFrontBoardFocusedAppProcesses_cold_1();
  }

  v1 = v0();

  return v1;
}

void sub_27103089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_271030FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getkSBNotificationKeyDeviceLockStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardUILibrary();
  result = dlsym(v2, "kSBNotificationKeyDeviceLockState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkSBNotificationKeyDeviceLockStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t SpringBoardUILibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!SpringBoardUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __SpringBoardUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_279E2C840;
    v5 = 0;
    SpringBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = SpringBoardUILibraryCore_frameworkLibrary;
  if (!SpringBoardUILibraryCore_frameworkLibrary)
  {
    SpringBoardUILibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t __SpringBoardUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getSBLockButtonPressedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardUILibrary();
  result = dlsym(v2, "SBLockButtonPressedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBLockButtonPressedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBVolumeButtonPressedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardUILibrary();
  result = dlsym(v2, "SBVolumeButtonPressedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBVolumeButtonPressedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBDeviceLockStateChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardUILibrary();
  result = dlsym(v2, "SBDeviceLockStateChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBDeviceLockStateChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSBRingerChangedNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = SpringBoardUILibrary();
  result = dlsym(v2, "SBRingerChangedNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBRingerChangedNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAXFrontBoardFocusedAppProcessesSymbolLoc_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!AXFrontBoardUtilsLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __AXFrontBoardUtilsLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_279E2C878;
    v7 = 0;
    AXFrontBoardUtilsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = AXFrontBoardUtilsLibraryCore_frameworkLibrary;
  if (!AXFrontBoardUtilsLibraryCore_frameworkLibrary)
  {
    __getAXFrontBoardFocusedAppProcessesSymbolLoc_block_invoke_cold_1(v5);
  }

  if (v5[0])
  {
    free(v5[0]);
  }

  result = dlsym(v2, "AXFrontBoardFocusedAppProcesses");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAXFrontBoardFocusedAppProcessesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __AXFrontBoardUtilsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXFrontBoardUtilsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_27103467C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_271034930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void _AXFrontBoardFocusedAppProcesses_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSArray<FBProcess *> *_AXFrontBoardFocusedAppProcesses(void)"];
  [v0 handleFailureInFunction:v1 file:@"AXVisualAlertManager.m" lineNumber:66 description:{@"%s", dlerror()}];

  __break(1u);
}

void SpringBoardUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SpringBoardUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXVisualAlertManager.m" lineNumber:82 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXFrontBoardFocusedAppProcessesSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *AXFrontBoardUtilsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"AXVisualAlertManager.m" lineNumber:65 description:{@"%s", *a1}];

  __break(1u);
}