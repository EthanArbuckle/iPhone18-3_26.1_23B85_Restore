void sub_1C8139C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SASRequestStateGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"SASRequestStateOff";
  }

  else
  {
    return off_1E82F4850[a1 - 1];
  }
}

void sub_1C813B26C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id soft_SBUIGetUserAgent()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSBUIGetUserAgentSymbolLoc_ptr;
  v8 = getSBUIGetUserAgentSymbolLoc_ptr;
  if (!getSBUIGetUserAgentSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSBUIGetUserAgentSymbolLoc_block_invoke;
    v4[3] = &unk_1E82F38F8;
    v4[4] = &v5;
    __getSBUIGetUserAgentSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v1 = v0();

  return v1;
}

id soft_SBUIGetUserAgent_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getSBUIGetUserAgentSymbolLoc_ptr_0;
  v8 = getSBUIGetUserAgentSymbolLoc_ptr_0;
  if (!getSBUIGetUserAgentSymbolLoc_ptr_0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getSBUIGetUserAgentSymbolLoc_block_invoke_0;
    v4[3] = &unk_1E82F38F8;
    v4[4] = &v5;
    __getSBUIGetUserAgentSymbolLoc_block_invoke_0(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v1 = v0();

  return v1;
}

uint64_t SASRequestSourceGetName(unint64_t a1)
{
  if (a1 > 0x3D)
  {
    return 0;
  }

  else
  {
    return *(&off_1E82F4338 + a1);
  }
}

void sub_1C813C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void sub_1C813C430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unsigned int SASMyriadUtilCurrentBoostForDecay(int a1, double *a2, double a3, double a4, double a5)
{
  if (a3 <= 0.0)
  {
    return 0;
  }

  v5 = a5 - a4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  *a2 = v5;
  return llround((1.0 - v6 / a3) * a1);
}

void sub_1C813D4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

void SiriInvokeOnMainQueue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    block = v1;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      block[2]();
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    v1 = block;
  }
}

uint64_t AFDirectActionSourceFromSASRequestSource(unint64_t a1)
{
  if (a1 < 0x3E)
  {
    return qword_1C818F920[a1];
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    AFDirectActionSourceFromSASRequestSource_cold_1();
  }

  return 0;
}

__CFString *SiriPresentationRotationStyleGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E82F3718[a1];
  }
}

uint64_t CARAutomaticFeatureStateGetName(unint64_t a1)
{
  if (a1 < 3)
  {
    return *(&off_1E82F4528 + a1);
  }

  if (os_log_type_enabled(*MEMORY[0x1E698D0A0], OS_LOG_TYPE_ERROR))
  {
    CARAutomaticFeatureStateGetName_cold_1();
  }

  return 0;
}

__CFString *SASLockStateGetName(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"SASLockStateScreenLocked"];
    }

    if ((v1 & 2) != 0)
    {
      [v3 addObject:@"SASLockStatePasscodeLocked"];
    }

    v4 = [v3 componentsJoinedByString:@" & "];
  }

  else
  {
    v4 = @"SASLockStateUnlocked";
  }

  return v4;
}

uint64_t sub_1C813FDD0()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C813FE14()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double SiriSystemUpTimeFromCFAbsoluteCurrentTime(double a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = [MEMORY[0x1E696AE30] processInfo];
  [v3 systemUptime];
  v5 = a1 - (Current - v4);

  return v5;
}

uint64_t SiriIsCurrentProcessSpringBoard()
{
  if (SiriIsCurrentProcessSpringBoard_once != -1)
  {
    SiriIsCurrentProcessSpringBoard_cold_1();
  }

  return SiriIsCurrentProcessSpringBoard_isSpringBoard;
}

void __SiriIsCurrentProcessSpringBoard_block_invoke()
{
  v1 = [MEMORY[0x1E696AE30] processInfo];
  v0 = [v1 processName];
  SiriIsCurrentProcessSpringBoard_isSpringBoard = [v0 isEqualToString:@"SpringBoard"];
}

void sub_1C81421D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t SASDismissalReasonToSISchemaDismissalReason(uint64_t a1)
{
  if ((a1 - 1) > 0x45)
  {
    return 0;
  }

  else
  {
    return dword_1C818F690[a1 - 1];
  }
}

uint64_t SASDismissalReasonGetCancellationReason(unint64_t a1)
{
  v1 = 14;
  if (((1 << a1) & 0x2400401800040020) == 0)
  {
    v1 = 0;
  }

  if (a1 <= 0x3D)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_1C81435F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v6 - 40));
  _Unwind_Resume(a1);
}

void sub_1C8143880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);
  objc_destroyWeak((v5 - 24));
  _Unwind_Resume(a1);
}

uint64_t SiriPresentationRotationStyleGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SiriPresentationRotationStyleGetFromName_onceToken != -1)
    {
      SiriPresentationRotationStyleGetFromName_cold_1();
    }

    v2 = [SiriPresentationRotationStyleGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SiriPresentationRotationStyleGetFromName_block_invoke()
{
  v0 = SiriPresentationRotationStyleGetFromName_map;
  SiriPresentationRotationStyleGetFromName_map = &unk_1F47D1FC8;
}

void sub_1C8144218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C81447D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8144B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8145B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  _Block_object_dispose(&a22, 8);
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8146010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8147920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

id getMTTimerManagerTimersChanged()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMTTimerManagerTimersChangedSymbolLoc_ptr;
  v8 = getMTTimerManagerTimersChangedSymbolLoc_ptr;
  if (!getMTTimerManagerTimersChangedSymbolLoc_ptr)
  {
    v1 = MobileTimerLibrary();
    v6[3] = dlsym(v1, "MTTimerManagerTimersChanged");
    getMTTimerManagerTimersChangedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getMTTimerManagerStateReset()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMTTimerManagerStateResetSymbolLoc_ptr;
  v8 = getMTTimerManagerStateResetSymbolLoc_ptr;
  if (!getMTTimerManagerStateResetSymbolLoc_ptr)
  {
    v1 = MobileTimerLibrary();
    v6[3] = dlsym(v1, "MTTimerManagerStateReset");
    getMTTimerManagerStateResetSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getMTAlarmManagerAlarmsChanged()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMTAlarmManagerAlarmsChangedSymbolLoc_ptr;
  v8 = getMTAlarmManagerAlarmsChangedSymbolLoc_ptr;
  if (!getMTAlarmManagerAlarmsChangedSymbolLoc_ptr)
  {
    v1 = MobileTimerLibrary();
    v6[3] = dlsym(v1, "MTAlarmManagerAlarmsChanged");
    getMTAlarmManagerAlarmsChangedSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v2 = *v0;

  return v2;
}

id getMTAlarmManagerStateReset()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMTAlarmManagerStateResetSymbolLoc_ptr;
  v8 = getMTAlarmManagerStateResetSymbolLoc_ptr;
  if (!getMTAlarmManagerStateResetSymbolLoc_ptr)
  {
    v1 = MobileTimerLibrary();
    v6[3] = dlsym(v1, "MTAlarmManagerStateReset");
    getMTAlarmManagerStateResetSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    MTTimerManagerTimersChanged_cold_1 = getMTTimerManagerTimersChanged_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(MTTimerManagerTimersChanged_cold_1);
  }

  v2 = *v0;

  return v2;
}

void sub_1C8149634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C81498D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8149F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C814A1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  _Block_object_dispose(&a17, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __destructor_8_s0_s8_s16_s24_s32_s40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

uint64_t MobileTimerLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MobileTimerLibraryCore_frameworkLibrary)
  {
    MobileTimerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = MobileTimerLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileTimerLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileTimerLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getMTTimerManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTTimerManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTTimerManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getMTTimerManagerClass_block_invoke_cold_1();
    return MobileTimerLibrary();
  }

  return result;
}

uint64_t MobileTimerLibrary()
{
  v0 = MobileTimerLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

Class __getMTAlarmManagerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTAlarmManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTAlarmManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMTAlarmManagerClass_block_invoke_cold_1();
    return __getAWAttentionAwarenessConfigurationClass_block_invoke(v3);
  }

  return result;
}

void __getAWAttentionAwarenessConfigurationClass_block_invoke(uint64_t a1)
{
  AttentionAwarenessLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AWAttentionAwarenessConfiguration");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAWAttentionAwarenessConfigurationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getAWAttentionAwarenessConfigurationClass_block_invoke_cold_1();
    AttentionAwarenessLibrary();
  }
}

void AttentionAwarenessLibrary()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!AttentionAwarenessLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __AttentionAwarenessLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E82F3918;
    v4 = 0;
    AttentionAwarenessLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!AttentionAwarenessLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x1E69E9840];
}

uint64_t __AttentionAwarenessLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AttentionAwarenessLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAWAttentionAwarenessClientClass_block_invoke(uint64_t a1)
{
  AttentionAwarenessLibrary();
  result = objc_getClass("AWAttentionAwarenessClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getAWAttentionAwarenessClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getAWAttentionAwarenessClientClass_block_invoke_cold_1();
    return __getMTTimerManagerTimersChangedSymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMTTimerManagerTimersChangedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTTimerManagerTimersChanged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTTimerManagerTimersChangedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMTTimerManagerStateResetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTTimerManagerStateReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTTimerManagerStateResetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMTAlarmManagerAlarmsChangedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTAlarmManagerAlarmsChanged");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAlarmManagerAlarmsChangedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getMTAlarmManagerStateResetSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTAlarmManagerStateReset");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAlarmManagerStateResetSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMTMutableTimerClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTMutableTimer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTMutableTimerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMTMutableTimerClass_block_invoke_cold_1();
    return __getMTTimerManagerTimersKeySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMTTimerManagerTimersKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTTimerManagerTimersKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTTimerManagerTimersKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getMTMutableAlarmClass_block_invoke(uint64_t a1)
{
  MobileTimerLibrary();
  result = objc_getClass("MTMutableAlarm");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTMutableAlarmClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getMTMutableAlarmClass_block_invoke_cold_1();
    return __getMTAlarmManagerAlarmsKeySymbolLoc_block_invoke(v3);
  }

  return result;
}

void *__getMTAlarmManagerAlarmsKeySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = MobileTimerLibrary();
  result = dlsym(v2, "MTAlarmManagerAlarmsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMTAlarmManagerAlarmsKeySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1C814CF38(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_1C814D344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C814F02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C815159C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C8152098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8156298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8156A28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void *__getSBUIGetUserAgentSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardUILibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardUILibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82F3C70;
    v8 = 0;
    SpringBoardUILibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardUILibraryCore_frameworkLibrary;
    if (SpringBoardUILibraryCore_frameworkLibrary)
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

  v2 = SpringBoardUILibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "SBUIGetUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIGetUserAgentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C81592C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8159DD4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

__CFString *SASHeadphonesAuthenticationInvalidationReasonGetName(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E82F3D80[a1];
  }
}

uint64_t SASHeadphonesAuthenticationInvalidationReasonGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SASHeadphonesAuthenticationInvalidationReasonGetFromName_onceToken != -1)
    {
      SASHeadphonesAuthenticationInvalidationReasonGetFromName_cold_1();
    }

    v2 = [SASHeadphonesAuthenticationInvalidationReasonGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SASHeadphonesAuthenticationInvalidationReasonGetFromName_block_invoke()
{
  v0 = SASHeadphonesAuthenticationInvalidationReasonGetFromName_map;
  SASHeadphonesAuthenticationInvalidationReasonGetFromName_map = &unk_1F47D1FF0;
}

void sub_1C8161558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8161AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SASPresentationManagerErrorGetName(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"SASPresentationManagerErrorInvalidStateTransition";
  }

  else
  {
    return off_1E82F3ED8[a1 - 1];
  }
}

uint64_t SASCarPlayTransportTypeToSISchemaCarPlayConnection(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_1C818F830[a1];
  }
}

uint64_t SASCarPlayEnhancedVoiceTriggerModeToSISchemaEnhancedVoiceTriggerMode(unint64_t a1)
{
  if (a1 > 3)
  {
    return 4;
  }

  else
  {
    return dword_1C818F840[a1];
  }
}

void sub_1C8163B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C816422C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8165090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8165998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8166188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8169C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C8169E90(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

__CFString *SASPreheatConfigurationGetName(uint64_t a1)
{
  v1 = @"(unknown)";
  if (a1 == 1)
  {
    v1 = @"EagerLaunchActionDecisionNonCancellable";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"PresentationBringupCancellable";
  }
}

uint64_t SASPreheatConfigurationGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SASPreheatConfigurationGetFromName_onceToken != -1)
    {
      SASPreheatConfigurationGetFromName_cold_1();
    }

    v2 = [SASPreheatConfigurationGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SASPreheatConfigurationGetFromName_block_invoke()
{
  v0 = SASPreheatConfigurationGetFromName_map;
  SASPreheatConfigurationGetFromName_map = &unk_1F47D2018;
}

void sub_1C816CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C816CC8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  _Block_object_dispose((v4 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C816D728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SASTestingInputTypeGetName(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E82F4180[a1];
  }
}

uint64_t SASTestingInputTypeGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SASTestingInputTypeGetFromName_onceToken != -1)
    {
      SASTestingInputTypeGetFromName_cold_1();
    }

    v2 = [SASTestingInputTypeGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SASTestingInputTypeGetFromName_block_invoke()
{
  v0 = SASTestingInputTypeGetFromName_map;
  SASTestingInputTypeGetFromName_map = &unk_1F47D2040;
}

id SASCarPlayEnhancedSiriCharacteristicsToString(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"zll"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
LABEL_6:
          v1 = [v3 componentsJoinedByString:{@", "}];

          goto LABEL_7;
        }

LABEL_5:
        [v3 addObject:@"mixable"];
        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"zllButton"];
    if ((v1 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:

  return v1;
}

void sub_1C816F000(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

uint64_t SASRemoteTypeFromSiriTVRemoteType(uint64_t result)
{
  if ((result - 1) >= 6)
  {
    return 0;
  }

  return result;
}

__CFString *SASRequestInputTypeGetDescription(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"SASRequestInputTypeNone";
  }

  else
  {
    return *(&off_1E82F4540 + a1 - 1);
  }
}

__CFString *SASSuggestionRequestTypeGetDescription(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1E82F4558 + a1);
  }
}

void sub_1C8172924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C81740FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _AFPreferencesDidChangeCallback(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v5 = [MEMORY[0x1E698D1C0] sharedPreferences];
  v4 = [v3 numberWithBool:{objc_msgSend(v5, "assistantIsEnabled")}];
  [a2 setAssistantIsEnabled:v4];
}

void *__getSBUIGetUserAgentSymbolLoc_block_invoke_0(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!SpringBoardUILibraryCore_frameworkLibrary_0)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __SpringBoardUILibraryCore_block_invoke_0;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82F45B8;
    v8 = 0;
    SpringBoardUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v3 = v6[0];
    v2 = SpringBoardUILibraryCore_frameworkLibrary_0;
    if (SpringBoardUILibraryCore_frameworkLibrary_0)
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

  v2 = SpringBoardUILibraryCore_frameworkLibrary_0;
LABEL_5:
  result = dlsym(v2, "SBUIGetUserAgent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSBUIGetUserAgentSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SpringBoardUILibraryCore_block_invoke_0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SpringBoardUILibraryCore_frameworkLibrary_0 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__getMKBDeviceUnlockedSinceBootSymbolLoc_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!MobileKeyBagLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __MobileKeyBagLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E82F45D0;
    v8 = 0;
    MobileKeyBagLibraryCore_frameworkLibrary = _sl_dlopen();
    v3 = v6[0];
    v2 = MobileKeyBagLibraryCore_frameworkLibrary;
    if (MobileKeyBagLibraryCore_frameworkLibrary)
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

  v2 = MobileKeyBagLibraryCore_frameworkLibrary;
LABEL_5:
  result = dlsym(v2, "MKBDeviceUnlockedSinceBoot");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getMKBDeviceUnlockedSinceBootSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __MobileKeyBagLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  MobileKeyBagLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C81757DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _HomeButtonTripleClickEnabled(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___HomeButtonTripleClickEnabled_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void sub_1C817624C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C8176D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C817A234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *SiriTVStringForRemoteType(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"SiriTVRemoteTypeUnknown";
  }

  else
  {
    return off_1E82F4768[a1 - 1];
  }
}

__CFString *SASButtonEventTypeGetName(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"SASButtonEventTypeUnknown";
  }

  else
  {
    return off_1E82F4798[a1 - 1];
  }
}

uint64_t SASRequestSourceFromSAInputOrigin(void *a1)
{
  if ([a1 isEqualToString:*MEMORY[0x1E69C7F48]])
  {
    return 61;
  }

  else
  {
    return 0;
  }
}

__CFString *SASDismissalReasonGetName(unint64_t a1)
{
  if (a1 > 0x47)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E82F48B8[a1];
  }
}

uint64_t SASDismissalReasonGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    if (SASDismissalReasonGetFromName_onceToken != -1)
    {
      SASDismissalReasonGetFromName_cold_1();
    }

    v2 = [SASDismissalReasonGetFromName_map objectForKey:v1];
    v3 = [v2 integerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __SASDismissalReasonGetFromName_block_invoke()
{
  v0 = SASDismissalReasonGetFromName_map;
  SASDismissalReasonGetFromName_map = &unk_1F47D2090;
}

void sub_1C817F300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *sub_1C8183BF0()
{
  v1 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id sub_1C8183C9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_1C8183D04(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id EngagementMonitor.__deallocating_deinit()
{
  if (*&v0[OBJC_IVAR___SASEngagementMonitor_task])
  {
    *&v0[OBJC_IVAR___SASEngagementMonitor_task] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC298988, &qword_1C818FBB0);
    sub_1C8188A0C();

    v1 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
    swift_beginAccess();
    v2 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for EngagementMonitor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1C8183E94()
{
  if (*(v0 + OBJC_IVAR___SASEngagementMonitor_task))
  {
    *(v0 + OBJC_IVAR___SASEngagementMonitor_task) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC298988, &qword_1C818FBB0);
    sub_1C8188A0C();

    v1 = OBJC_IVAR___SASEngagementMonitor_currentEngagementContext;
    swift_beginAccess();
    v2 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
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

id EngagementMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EngagementMonitor.init()()
{
  *&v0[OBJC_IVAR___SASEngagementMonitor_currentEngagementContext] = 0;
  *&v0[OBJC_IVAR___SASEngagementMonitor_task] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementMonitor();
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t UserEngagementStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C81841EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1C818421C()
{
  v1 = *v0;
  sub_1C8188A1C();
  MEMORY[0x1CCA6FE30](v1);
  return sub_1C8188A3C();
}

uint64_t sub_1C8184264()
{
  v1 = *v0;
  sub_1C8188A1C();
  MEMORY[0x1CCA6FE30](v1);
  return sub_1C8188A3C();
}

void *sub_1C81842A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1C8184460(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2](v3, 0);
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

id PerceptionEntityWrapper.__allocating_init(model:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C8184F1C(a1);
}

id PerceptionEntityWrapper.init(model:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1C8184F70(a1, v1);
}

id PerceptionEntityWrapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PerceptionEntityWrapper.init()()
{
  type metadata accessor for PerceptionModelImpl();
  v0 = swift_allocObject();
  swift_getObjectType();
  v1 = type metadata accessor for PerceptionEntityWrapper();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR___SASPerceptionEntityWrapper_model] = v0;
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_deallocPartialClassInstance();
  return v3;
}

id PerceptionEntityWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerceptionEntityWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C81847AC(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1C8185954;

  return v7();
}

uint64_t sub_1C8184894(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1C818497C;

  return v8();
}

uint64_t sub_1C818497C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1C8184A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2989A8, &qword_1C818FE08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v24 - v10;
  sub_1C8185708(a3, v24 - v10);
  v12 = sub_1C81889FC();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1C8185778(v11);
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

  sub_1C81889EC();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v14 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1C81889DC();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1C81889CC() + 32;
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

    sub_1C8185778(a3);

    return v22;
  }

LABEL_8:
  sub_1C8185778(a3);
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

uint64_t sub_1C8184D2C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C8184E24;

  return v7(a1);
}

uint64_t sub_1C8184E24()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1C8184F1C(uint64_t a1)
{
  v2 = type metadata accessor for PerceptionEntityWrapper();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR___SASPerceptionEntityWrapper_model] = a1;
  v5.receiver = v3;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1C8184F70(uint64_t a1, char *a2)
{
  *&a2[OBJC_IVAR___SASPerceptionEntityWrapper_model] = a1;
  v3.receiver = a2;
  v3.super_class = type metadata accessor for PerceptionEntityWrapper();
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1C8185008()
{
  result = qword_1EC298998;
  if (!qword_1EC298998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC298998);
  }

  return result;
}

unint64_t sub_1C8185060()
{
  result = qword_1EC2989A0;
  if (!qword_1EC2989A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2989A0);
  }

  return result;
}

uint64_t dispatch thunk of PerceptionModelImpl.performQuery(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C818520C;

  return v8(a1);
}

uint64_t sub_1C818520C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of PerceptionEntityWrapper.userEngagementStatus()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C818520C;

  return v6();
}

uint64_t sub_1C8185488()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C818497C;

  return sub_1C8184460(v2, v3);
}

uint64_t sub_1C818553C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C8185954;

  return sub_1C81847AC(v2, v3, v5);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C818563C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C8185954;

  return sub_1C8184894(a1, v4, v5, v7);
}

uint64_t sub_1C8185708(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2989A8, &qword_1C818FE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8185778(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2989A8, &qword_1C818FE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C81857E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C8185954;

  return sub_1C8184D2C(a1, v5);
}

uint64_t sub_1C8185898(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1C818497C;

  return sub_1C8184D2C(a1, v5);
}

uint64_t getMTTimerManagerTimersChanged_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return __getMTTimerManagerClass_block_invoke_cold_1(v0);
}

void CARAutomaticFeatureStateGetName_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_1C8137000, v0, OS_LOG_TYPE_ERROR, "%s Unsupported CARAutomaticFeatureState value: %lu", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void AFDirectActionSourceFromSASRequestSource_cold_1()
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(&dword_1C8137000, v0, OS_LOG_TYPE_ERROR, "%s Unsupported SASRequestSource value: %lu, returning back AFDirectActionSourceUnknown.", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}