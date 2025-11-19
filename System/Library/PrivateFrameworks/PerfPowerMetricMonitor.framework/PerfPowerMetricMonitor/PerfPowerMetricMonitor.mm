void sub_22E4FB6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E4FBC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FC2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FC92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FCF1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FD5C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FDB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_22E4FDF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_22E4FEBAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_22E4FEF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22E4FF35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

id PPSMetricMonitorLogHandleForCategory(uint64_t a1)
{
  if (PPSMetricMonitorLogHandleForCategory_onceToken != -1)
  {
    PPSMetricMonitorLogHandleForCategory_cold_1();
  }

  if (PPSMetricMonitorLogHandleForCategory_logHandles[a1])
  {
    v2 = PPSMetricMonitorLogHandleForCategory_logHandles[a1];
  }

  else
  {
    v2 = MEMORY[0x277D86228];
  }

  return v2;
}

uint64_t __PPSMetricMonitorLogHandleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.PerfPowerMetricMonitor", "unspecified");
  v1 = PPSMetricMonitorLogHandleForCategory_logHandles[0];
  PPSMetricMonitorLogHandleForCategory_logHandles[0] = v0;

  v2 = os_log_create("com.apple.PerfPowerMetricMonitor", "client");
  v3 = qword_280FAD050;
  qword_280FAD050 = v2;

  v4 = os_log_create("com.apple.PerfPowerMetricMonitor", "service");
  v5 = qword_280FAD058;
  qword_280FAD058 = v4;

  qword_280FAD060 = os_log_create("com.apple.PerfPowerMetricMonitor", "xpc");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E500520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id powerMetricsTotalsLogHandle()
{
  if (powerMetricsTotalsLogHandle_onceToken != -1)
  {
    powerMetricsTotalsLogHandle_cold_1();
  }

  v1 = powerMetricsTotalsLogHandle___logObj;

  return v1;
}

uint64_t __powerMetricsTotalsLogHandle_block_invoke()
{
  powerMetricsTotalsLogHandle___logObj = os_log_create("com.apple.PerfPowerMetricMonitor", "PowerMetrics");

  return MEMORY[0x2821F96F8]();
}

void sub_22E501448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22E503888(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 96));
  _Unwind_Resume(a1);
}

void sub_22E504E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E505374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22E505FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_22E506C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose((v53 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22E507C28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void PLEmitPowerSignpost(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [v9 objCType];
    if (*v11 == 102)
    {
      v12 = v11[1];
      v13 = [v9 objCType];
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = [v9 objCType];
    }

    if (*v13 != 100 || v13[1])
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v9, "intValue")];
      goto LABEL_10;
    }

LABEL_9:
    v14 = MEMORY[0x277CCACA8];
    [v9 doubleValue];
    [v14 stringWithFormat:@"%.6e", v15];
    v16 = LABEL_10:;
    v17 = os_signpost_enabled(v7);
    if (v10)
    {
      if (v17)
      {
        goto LABEL_14;
      }
    }

    else if (v17)
    {
LABEL_14:
      _os_signpost_emit_unreliably_with_name_impl();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

id PLLogPowerSignpost()
{
  if (PLLogPowerSignpost_onceToken != -1)
  {
    PLLogPowerSignpost_cold_1();
  }

  v1 = PLLogPowerSignpost_log;

  return v1;
}

void PLEmitSystemPowerSignpost()
{
  v0 = PLLogPower();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    PLEmitSystemPowerSignpost_cold_1();
  }
}

id PLLogPower()
{
  if (PLLogPower_onceToken != -1)
  {
    PLLogPower_cold_1();
  }

  v1 = PLLogPower___logObj;

  return v1;
}

uint64_t __PLLogPower_block_invoke()
{
  PLLogPower___logObj = os_log_create("com.apple.powerlog", "Power");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLLogPowerSignpost_block_invoke()
{
  PLLogPowerSignpost_log = os_log_create("com.apple.PerfPowerMetricMonitor", "Power");

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 8u);
}

id PPSTimeStringFromDate(void *a1)
{
  v1 = PPSTimeStringFromDate_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    PPSTimeStringFromDate_cold_1();
  }

  v3 = [PPSTimeStringFromDate_dateFormatter stringFromDate:v2];

  return v3;
}

uint64_t __PPSTimeStringFromDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = PPSTimeStringFromDate_dateFormatter;
  PPSTimeStringFromDate_dateFormatter = v0;

  v2 = PPSTimeStringFromDate_dateFormatter;

  return [v2 setDateFormat:@"HH:mm:ss.SSS"];
}

void PLEmitSystemPowerSignpost_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}