void SWSystemPowerCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = [a1 object];
  v8 = SWLogPower();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134218752;
    v11 = v7;
    v12 = 2048;
    v13 = a1;
    v14 = 1024;
    v15 = a3;
    v16 = 2048;
    v17 = a4;
    _os_log_debug_impl(&dword_26C657000, v8, OS_LOG_TYPE_DEBUG, "%p SWSystemPowerCallback(%p) message:%u notificationID:%p", &v10, 0x26u);
  }

  [v7 systemPowerChanged:a3 notificationID:a4];
  v9 = *MEMORY[0x277D85DE8];
}

id SWLogPower()
{
  if (SWLogPower_onceToken != -1)
  {
    dispatch_once(&SWLogPower_onceToken, &__block_literal_global_1);
  }

  v1 = SWLogPower___logObj;

  return v1;
}

uint64_t sw_kernel_wake_mach_continuous_time()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 8;
  v6 = 0;
  v0 = sysctlbyname("machdep.wake_conttime", &v6, &v5, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = SWLogPower();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v1;
      _os_log_error_impl(&dword_26C657000, v2, OS_LOG_TYPE_ERROR, "failed to get kernel continuous wake time (%d)", buf, 8u);
    }
  }

  result = v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

id SWLogTimer()
{
  if (SWLogTimer_onceToken != -1)
  {
    dispatch_once(&SWLogTimer_onceToken, &__block_literal_global_4);
  }

  v1 = SWLogTimer___logObj;

  return v1;
}

void sub_26C658618(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_26C65884C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_26C65894C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SWSystemSleepMonitor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__CFString *NSStringForSWSystemSleepMonitorState(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"waking";
  }

  else
  {
    return off_279D43230[a1 - 1];
  }
}

__CFString *NSStringForSWSystemSleepPowerManagementPhase(uint64_t a1)
{
  v1 = __ROR8__(a1 - 3758097008, 4);
  if (v1 > 0xB)
  {
    return @"initialized";
  }

  else
  {
    return off_279D43258[v1];
  }
}

__CFString *NSStringForSWSystemActivityAbortSleepPhase(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"idle";
  }

  else
  {
    return off_279D431F8[a1 - 1];
  }
}

void sub_26C65AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a59, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x26D6A63C0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_26C65C3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, _Unwind_Exception *exception_object, objc_super a12)
{
  a12.super_class = SWSystemSleepMonitorProvider;
  [(_Unwind_Exception *)&a12 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C65C444(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_26C65CE94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_26C65CF6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = SWActiveSystemActivityRegistry;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C65D954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_26C65DAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_26C65DBC0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_26C65DD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = SWSystemActivityAssertion;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C65DDC4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_26C66035C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_26C660688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = SWWakingTimer;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C6606D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t __SWLogPower_block_invoke()
{
  SWLogPower___logObj = os_log_create("com.apple.SystemWake", "Power");

  return MEMORY[0x2821F96F8]();
}

uint64_t __SWLogTimer_block_invoke()
{
  SWLogTimer___logObj = os_log_create("com.apple.SystemWake", "Timer");

  return MEMORY[0x2821F96F8]();
}

void sub_26C662108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = SWScheduledSystemWake;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C662150(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

uint64_t sw_kernel_wake_mach_absolute_time()
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 8;
  v6 = 0;
  v0 = sysctlbyname("machdep.wake_abstime", &v6, &v5, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = SWLogPower();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v8 = v1;
      _os_log_error_impl(&dword_26C657000, v2, OS_LOG_TYPE_ERROR, "failed to get kernel absolute wake time (%d)", buf, 8u);
    }
  }

  result = v6;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26C663400(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_26C663AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, _Unwind_Exception *exception_object, objc_super a13)
{
  a13.super_class = SWPreventSystemSleepAssertion;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_26C663AF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}