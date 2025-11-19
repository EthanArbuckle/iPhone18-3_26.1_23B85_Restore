id PLLogCamera()
{
  if (PLLogCamera_onceToken != -1)
  {
    PLLogCamera_cold_1();
  }

  v1 = PLLogCamera___logObj;

  return v1;
}

uint64_t __PLLogCamera_block_invoke()
{
  PLLogCamera___logObj = os_log_create("com.apple.powerlog", "camera");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_25EE58860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
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

void *PLProcessPrioritiesInit(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void PLProcessPrioritiesRead(void *a1)
{
  v2 = 0;
  v3 = 0;
  *a1 = 0;
  a1[1] = 0;
  while (1)
  {
    while (1)
    {
      v4 = memorystatus_control();
      if (v4 > 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        goto LABEL_11;
      }
    }

    v5 = (v4 + 96);
    if (v2 < v5)
    {
      v3 = malloc_type_realloc(v3, v5, 0x1000040504FFAC1uLL);
      v2 = v5;
    }

    v6 = memorystatus_control();
    if (v6 > 0)
    {
      break;
    }

    if (*__error() != 22 && *__error() != 4)
    {
      free(v3);
LABEL_11:
      v2 = 0;
      v7 = 0;
      goto LABEL_12;
    }
  }

  *a1 = v3;
  v7 = v6 / 0x18uLL;
LABEL_12:
  a1[1] = v2;
  a1[2] = v7;
}

uint64_t PLProcessPrioritiesMetricsForPriority(uint64_t *a1, int64x2_t *a2, int a3)
{
  a2->i64[0] = 0;
  a2->i64[1] = 0;
  v5 = a1[2];
  if (v5 < 1)
  {
    return 0;
  }

  v14 = v3;
  v15 = v4;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *a1;
    if (*(*a1 + v9 + 4) == a3)
    {
      break;
    }

LABEL_6:
    ++v10;
    v9 += 24;
    if (v10 >= v5)
    {
      return 0;
    }
  }

  v13 = 0uLL;
  if (!PLProcessMetricsRead(&v13, *(v11 + v9)))
  {
    *a2 = vaddq_s64(v13, *a2);
    v5 = a1[2];
    goto LABEL_6;
  }

  return 1;
}

uint64_t PLProcessMetricsRead(void *a1, int pid)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  result = proc_pid_rusage(pid, 0, v6);
  if (result)
  {
    result = 1;
  }

  else
  {
    v4 = *(&v8 + 1);
    *a1 = *(&v7 + 1);
    a1[1] = v4;
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t PLProcessMetricsAdd(int64x2_t *a1, int64x2_t *a2, int64x2_t *a3)
{
  result = vaddq_s64(*a3, *a2);
  *a1 = result;
  return result;
}

void *PLProcessMetricsInitWithRusage(void *result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *result = *(a2 + 56);
  result[1] = v2;
  return result;
}

uint64_t PLProcessMetricsForIdleBand(int64x2_t *a1)
{
  memset(v4, 0, sizeof(v4));
  PLProcessPrioritiesRead(v4);
  v2 = PLProcessPrioritiesMetricsForPriority(v4, a1, 0);
  free(v4[0]);
  return v2;
}

id PLLogCoalition()
{
  if (PLLogCoalition_onceToken != -1)
  {
    PLLogCoalition_cold_1();
  }

  v1 = PLLogCoalition___logObj;

  return v1;
}

uint64_t __PLLogCoalition_block_invoke()
{
  PLLogCoalition___logObj = os_log_create("com.apple.powerlog", "coalition");

  return MEMORY[0x2821F96F8]();
}

void sub_25EE5D87C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_25EE640A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EE65274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void NotificationCallback(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__2;
  v4[4] = __Block_byref_object_dispose__2;
  v5 = a2;
  v2 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __NotificationCallback_block_invoke;
  block[3] = &unk_279A5C0C8;
  block[4] = v4;
  dispatch_async(v2, block);

  _Block_object_dispose(v4, 8);
}

void sub_25EE6D2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __NotificationCallback_block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(*(*(a1 + 32) + 8) + 40) batteryBreakdownAndGraphWithPayload:&unk_287147D20];
  v3 = [v1 stringWithFormat:@"%@", v2];

  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLBatteryUIService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NotificationCallback_block_invoke"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:124];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
  }
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_9(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_25EE6D730(void *a1)
{
  MEMORY[0x25F8D1DD0](v1, 0x10B1C40CB89C51DLL);
  objc_begin_catch(a1);
  objc_end_catch();
  JUMPOUT(0x25EE6D71CLL);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_7_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_25EE734D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id PLLogSleepWake()
{
  if (PLLogSleepWake_onceToken != -1)
  {
    PLLogSleepWake_cold_1();
  }

  v1 = PLLogSleepWake___logObj;

  return v1;
}

uint64_t __PLLogSleepWake_block_invoke()
{
  PLLogSleepWake___logObj = os_log_create("com.apple.powerlog", "SleepWake");

  return MEMORY[0x2821F96F8]();
}

void PowerChangedCallback(void *a1, uint64_t a2, uint64_t a3, intptr_t a4)
{
  v82 = *MEMORY[0x277D85DE8];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__4;
  v77 = __Block_byref_object_dispose__4;
  v78 = a1;
  HIDWORD(v7) = a3 + 536870288;
  LODWORD(v7) = a3 + 536870288;
  v6 = v7 >> 4;
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v56 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v74[5] getSleepStatisticsApps];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      obj = v59 = 0u;
      v39 = [obj countByEnumeratingWithState:&v58 objects:v81 count:16];
      if (v39)
      {
        v40 = *v59;
        do
        {
          for (i = 0; i != v39; ++i)
          {
            if (*v59 != v40)
            {
              objc_enumerationMutation(obj);
            }

            v42 = *(*(&v58 + 1) + 8 * i);
            v79[0] = @"PID";
            v43 = [v42 objectForKeyedSubscript:@"PID"];
            v80[0] = v43;
            v79[1] = @"AppName";
            v44 = [v42 objectForKeyedSubscript:@"AppName"];
            v80[1] = v44;
            v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];

            v46 = [v42 objectForKeyedSubscript:@"ResponseType"];
            [v56 setObject:v46 forKeyedSubscript:v45];
          }

          v39 = [obj countByEnumeratingWithState:&v58 objects:v81 count:16];
        }

        while (v39);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v47 = objc_opt_class();
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __PowerChangedCallback_block_invoke_460;
        v57[3] = &__block_descriptor_40_e5_v8__0lu32l8;
        v57[4] = v47;
        if (PowerChangedCallback_defaultOnce_458 != -1)
        {
          dispatch_once(&PowerChangedCallback_defaultOnce_458, v57);
        }

        if (PowerChangedCallback_classDebugEnabled_459 == 1)
        {
          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: SystemWillNotSleep dict[kPLSWE_ResponseType] =%lld ", objc_msgSend(v56, "entryID")];
          v49 = MEMORY[0x277D3F178];
          v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
          v51 = [v50 lastPathComponent];
          v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
          [v49 logMessage:v48 fromFile:v51 fromFunction:v52 fromLineNumber:1225];

          v53 = PLLogCommon();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      [v74[5] logEntry:v56];
    }

    else if (v6 == 9)
    {
      [v74[5] systemPoweredOn];
    }
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v8 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
      [v74[5] logEntry:v8];
      IOAllowPowerChange([v74[5] rootDomainConnect], a4);
    }
  }

  else
  {
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v9 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __PowerChangedCallback_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v9;
      if (PowerChangedCallback_defaultOnce != -1)
      {
        dispatch_once(&PowerChangedCallback_defaultOnce, block);
      }

      if (PowerChangedCallback_classDebugEnabled == 1)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: start listening"];
        v11 = MEMORY[0x277D3F178];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v13 = [v12 lastPathComponent];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1202];

        v15 = PLLogCommon();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    v16 = [v74[5] canSleepSemaphore];
    [v16 signalStartListening];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __PowerChangedCallback_block_invoke_438;
      v71[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v71[4] = v17;
      if (PowerChangedCallback_defaultOnce_436 != -1)
      {
        dispatch_once(&PowerChangedCallback_defaultOnce_436, v71);
      }

      if (PowerChangedCallback_classDebugEnabled_437 == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: log entry"];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v21 = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v19 logMessage:v18 fromFile:v21 fromFunction:v22 fromLineNumber:1204];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__4;
    v69 = __Block_byref_object_dispose__4;
    v70 = [[PLEventForwardPowerStateEntry alloc] initEntryWithIOMessage:a3];
    [v74[5] logEntry:v66[5]];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v24 = objc_opt_class();
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __PowerChangedCallback_block_invoke_444;
      v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v64[4] = v24;
      if (PowerChangedCallback_defaultOnce_442 != -1)
      {
        dispatch_once(&PowerChangedCallback_defaultOnce_442, v64);
      }

      if (PowerChangedCallback_classDebugEnabled_443 == 1)
      {
        v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: begin block entry.id=%lld", objc_msgSend(v66[5], "entryID")];
        v26 = MEMORY[0x277D3F178];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v28 = [v27 lastPathComponent];
        v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v26 logMessage:v25 fromFile:v28 fromFunction:v29 fromLineNumber:1207];

        v30 = PLLogCommon();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    v31 = [v74[5] canSleepSemaphore];
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __PowerChangedCallback_block_invoke_448;
    v63[3] = &unk_279A5C250;
    v63[4] = &v73;
    v63[5] = &v65;
    v63[6] = a4;
    [v31 waitWithBlock:v63];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v32 = objc_opt_class();
      v62[0] = MEMORY[0x277D85DD0];
      v62[1] = 3221225472;
      v62[2] = __PowerChangedCallback_block_invoke_454;
      v62[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v62[4] = v32;
      if (PowerChangedCallback_defaultOnce_452 != -1)
      {
        dispatch_once(&PowerChangedCallback_defaultOnce_452, v62);
      }

      if (PowerChangedCallback_classDebugEnabled_453 == 1)
      {
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep: after block entry.id=%lld", objc_msgSend(v66[5], "entryID")];
        v34 = MEMORY[0x277D3F178];
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
        v36 = [v35 lastPathComponent];
        v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback"];
        [v34 logMessage:v33 fromFile:v36 fromFunction:v37 fromLineNumber:1212];

        v38 = PLLogCommon();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    _Block_object_dispose(&v65, 8);
  }

  _Block_object_dispose(&v73, 8);

  v54 = *MEMORY[0x277D85DE8];
}

void fakeSleep(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v3 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __fakeSleep_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v3;
    if (fakeSleep_defaultOnce != -1)
    {
      dispatch_once(&fakeSleep_defaultOnce, block);
    }

    if (fakeSleep_classDebugEnabled == 1)
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep Fake: start listening"];
      v5 = MEMORY[0x277D3F178];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v7 = [v6 lastPathComponent];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fakeSleep"];
      [v5 logMessage:v4 fromFile:v7 fromFunction:v8 fromLineNumber:1160];

      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v10 = [v2 canSleepSemaphore];
  [v10 signalStartListening];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v11 = objc_opt_class();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __fakeSleep_block_invoke_395;
    v41[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v41[4] = v11;
    if (fakeSleep_defaultOnce_393 != -1)
    {
      dispatch_once(&fakeSleep_defaultOnce_393, v41);
    }

    if (fakeSleep_classDebugEnabled_394 == 1)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep Fake: log entry"];
      v13 = MEMORY[0x277D3F178];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v15 = [v14 lastPathComponent];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fakeSleep"];
      [v13 logMessage:v12 fromFile:v15 fromFunction:v16 fromLineNumber:1163];

      v17 = PLLogCommon();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v18 = [PLEventForwardPowerStateEntry alloc];
  v19 = [MEMORY[0x277CBEAA8] monotonicDate];
  v20 = [(PLEventForwardPowerStateEntry *)v18 initEntryWithState:1 withEvent:3 withReason:&unk_28714BD08 withDate:v19];

  [v2 logEntry:v20];
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v21 = objc_opt_class();
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __fakeSleep_block_invoke_407;
    v40[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v40[4] = v21;
    if (fakeSleep_defaultOnce_405 != -1)
    {
      dispatch_once(&fakeSleep_defaultOnce_405, v40);
    }

    if (fakeSleep_classDebugEnabled_406 == 1)
    {
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep Fake: begin block entry.id=%lld", objc_msgSend(v20, "entryID")];
      v23 = MEMORY[0x277D3F178];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v25 = [v24 lastPathComponent];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fakeSleep"];
      [v23 logMessage:v22 fromFile:v25 fromFunction:v26 fromLineNumber:1166];

      v27 = PLLogCommon();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }

  v28 = [v2 canSleepSemaphore];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __fakeSleep_block_invoke_411;
  v38[3] = &unk_279A5BDC0;
  v29 = v20;
  v39 = v29;
  [v28 waitWithBlock:v38];

  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v30 = objc_opt_class();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __fakeSleep_block_invoke_417;
    v37[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v37[4] = v30;
    if (fakeSleep_defaultOnce_415 != -1)
    {
      dispatch_once(&fakeSleep_defaultOnce_415, v37);
    }

    if (fakeSleep_classDebugEnabled_416 == 1)
    {
      v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sleep Fake: after block entry.id=%lld", objc_msgSend(v29, "entryID")];
      v32 = MEMORY[0x277D3F178];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v34 = [v33 lastPathComponent];
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fakeSleep"];
      [v32 logMessage:v31 fromFile:v34 fromFunction:v35 fromLineNumber:1171];

      v36 = PLLogCommon();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

void fakeWakeBB(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PLEventForwardPowerStateEntry alloc];
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLEventForwardPowerStateEntry *)v3 initEntryWithState:0 withEvent:0 withReason:&unk_28714BD20 withDate:v5];
  [v2 logEntry:v4];
}

void fakeWakeWiFi(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [PLEventForwardPowerStateEntry alloc];
  v5 = [MEMORY[0x277CBEAA8] monotonicDate];
  v4 = [(PLEventForwardPowerStateEntry *)v3 initEntryWithState:0 withEvent:0 withReason:&unk_28714BD38 withDate:v5];
  [v2 logEntry:v4];
}

uint64_t __fakeSleep_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  fakeSleep_classDebugEnabled = result;
  return result;
}

uint64_t __fakeSleep_block_invoke_395(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  fakeSleep_classDebugEnabled_394 = result;
  return result;
}

uint64_t __fakeSleep_block_invoke_407(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  fakeSleep_classDebugEnabled_406 = result;
  return result;
}

void __fakeSleep_block_invoke_411(uint64_t a1)
{
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __fakeSleep_block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v2;
    if (kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_defaultOnce != -1)
    {
      dispatch_once(&kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_defaultOnce, &block);
    }

    if (kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_classDebugEnabled == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [*(a1 + 32) entryID];
      v5 = [v3 stringWithFormat:@"Sleep Fake: block Done entry.id=%lld", v4, block, v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"fakeSleep_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1169];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __fakeSleep_block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_classDebugEnabled = result;
  return result;
}

uint64_t __fakeSleep_block_invoke_417(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  fakeSleep_classDebugEnabled_416 = result;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __PowerChangedCallback_block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PowerChangedCallback_classDebugEnabled = result;
  return result;
}

uint64_t __PowerChangedCallback_block_invoke_438(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PowerChangedCallback_classDebugEnabled_437 = result;
  return result;
}

uint64_t __PowerChangedCallback_block_invoke_444(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PowerChangedCallback_classDebugEnabled_443 = result;
  return result;
}

void __PowerChangedCallback_block_invoke_448(void *a1)
{
  IOAllowPowerChange([*(*(a1[4] + 8) + 40) rootDomainConnect], a1[6]);
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v2 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __PowerChangedCallback_block_invoke_2;
    v14 = &__block_descriptor_40_e5_v8__0lu32l8;
    v15 = v2;
    if (kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_2_defaultOnce != -1)
    {
      dispatch_once(&kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_2_defaultOnce, &block);
    }

    if (kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_2_classDebugEnabled == 1)
    {
      v3 = MEMORY[0x277CCACA8];
      v4 = [*(*(a1[5] + 8) + 40) entryID];
      v5 = [v3 stringWithFormat:@"Sleep: block Done entry.id=%lld", v4, block, v12, v13, v14, v15];
      v6 = MEMORY[0x277D3F178];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Software/PLSleepWakeAgent.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PowerChangedCallback_block_invoke"];
      [v6 logMessage:v5 fromFile:v8 fromFunction:v9 fromLineNumber:1210];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
      }
    }
  }
}

uint64_t __PowerChangedCallback_block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  kPLSleepWakeAgentEventPointNameCoSocPowerTriggerType_block_invoke_2_classDebugEnabled = result;
  return result;
}

uint64_t __PowerChangedCallback_block_invoke_454(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PowerChangedCallback_classDebugEnabled_453 = result;
  return result;
}

uint64_t __PowerChangedCallback_block_invoke_460(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  PowerChangedCallback_classDebugEnabled_459 = result;
  return result;
}

void sub_25EE82010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void myRelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

id PLLogUrsa()
{
  if (PLLogUrsa_onceToken != -1)
  {
    PLLogUrsa_cold_1();
  }

  v1 = PLLogUrsa___logObj;

  return v1;
}

uint64_t __PLLogUrsa_block_invoke()
{
  PLLogUrsa___logObj = os_log_create("com.apple.powerlog", "Ursa");

  return MEMORY[0x2821F96F8]();
}

id PLLogComputeSafeguards()
{
  if (PLLogComputeSafeguards_onceToken != -1)
  {
    PLLogComputeSafeguards_cold_1();
  }

  v1 = PLLogComputeSafeguards___logObj;

  return v1;
}

uint64_t __PLLogComputeSafeguards_block_invoke()
{
  PLLogComputeSafeguards___logObj = os_log_create("com.apple.powerlog", "ComputeSafeguards");

  return MEMORY[0x2821F96F8]();
}

id PLLogPowerMetricMonitor()
{
  if (PLLogPowerMetricMonitor_onceToken != -1)
  {
    PLLogPowerMetricMonitor_cold_1();
  }

  v1 = PLLogPowerMetricMonitor_log;

  return v1;
}

uint64_t __PLLogPowerMetricMonitor_block_invoke()
{
  PLLogPowerMetricMonitor_log = os_log_create("com.apple.PerfPowerMetricMonitor", "powerMetricMonitorService");

  return MEMORY[0x2821F96F8]();
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

uint64_t __PLLogPowerSignpost_block_invoke()
{
  PLLogPowerSignpost_log = os_log_create("com.apple.PerfPowerMetricMonitor", "Power");

  return MEMORY[0x2821F96F8]();
}

void sub_25EE99C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EE9DC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25EE9F114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25EEA1424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25EEA1F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25EEA7950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PowerChangedCallback_0(void *a1)
{
  if (a1)
  {

    [a1 _handlePowerNotification:? argument:?];
  }

  else
  {
    v2 = PLLogPowerMetricMonitor();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      PowerChangedCallback_cold_1();
    }
  }
}

void sub_25EEA85B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EEA86C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EEA9824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PLLogCommon()
{
  if (PLLogCommon_onceToken != -1)
  {
    PLLogCommon_cold_1();
  }

  v1 = PLLogCommon___logObj;

  return v1;
}

id PLLogZlib()
{
  if (PLLogZlib_onceToken != -1)
  {
    PLLogZlib_cold_1();
  }

  v1 = PLLogZlib___logObj;

  return v1;
}

void sub_25EEAB0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __PLLogCommon_block_invoke()
{
  PLLogCommon___logObj = os_log_create("com.apple.powerlog", "");

  return MEMORY[0x2821F96F8]();
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

id PLLogSubmission()
{
  if (PLLogSubmission_onceToken != -1)
  {
    PLLogSubmission_cold_1();
  }

  v1 = PLLogSubmission___logObj;

  return v1;
}

uint64_t __PLLogSubmission_block_invoke()
{
  PLLogSubmission___logObj = os_log_create("com.apple.powerlog", "submission");

  return MEMORY[0x2821F96F8]();
}

id PLLogSQLiteConnection()
{
  if (PLLogSQLiteConnection_onceToken != -1)
  {
    PLLogSQLiteConnection_cold_1();
  }

  v1 = PLLogSQLiteConnection___logObj;

  return v1;
}

uint64_t __PLLogSQLiteConnection_block_invoke()
{
  PLLogSQLiteConnection___logObj = os_log_create("com.apple.powerlog", "sqliteconnection");

  return MEMORY[0x2821F96F8]();
}

uint64_t __PLLogZlib_block_invoke()
{
  PLLogZlib___logObj = os_log_create("com.apple.powerlog", "zlib");

  return MEMORY[0x2821F96F8]();
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

void PLEmitSystemPowerSignpost()
{
  v0 = PLLogPower();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    PLEmitSystemPowerSignpost_cold_1();
  }
}

uint64_t __stringIsUUID_block_invoke()
{
  stringIsUUID_hexChars = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];

  return MEMORY[0x2821F96F8]();
}

void logRunStateNotificationReceived(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *MEMORY[0x277D3F5D0];
    v3 = a2;
    v4 = [(PLOperator *)PLARKitAgent entryKeyForType:v2 andName:@"State"];
    v8 = @"State";
    v9[0] = &unk_287145910;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v5];
    [v3 logEntry:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void logPauseStateNotificationReceived(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *MEMORY[0x277D3F5D0];
    v3 = a2;
    v4 = [(PLOperator *)PLARKitAgent entryKeyForType:v2 andName:@"State"];
    v8 = @"State";
    v9[0] = &unk_287145928;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v4 withRawData:v5];
    [v3 logEntry:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

id PLLogAggregateSummarizationService()
{
  if (PLLogAggregateSummarizationService_onceToken != -1)
  {
    PLLogAggregateSummarizationService_cold_1();
  }

  v1 = PLLogAggregateSummarizationService___logObj;

  return v1;
}

uint64_t __PLLogAggregateSummarizationService_block_invoke()
{
  PLLogAggregateSummarizationService___logObj = os_log_create("com.apple.powerlog", "aggregateSummarizationService");

  return MEMORY[0x2821F96F8]();
}

id PLLogScreenState()
{
  if (PLLogScreenState_onceToken != -1)
  {
    PLLogScreenState_cold_1();
  }

  v1 = PLLogScreenState___logObj;

  return v1;
}

uint64_t __PLLogScreenState_block_invoke()
{
  PLLogScreenState___logObj = os_log_create("com.apple.powerlog", "screenState");

  return MEMORY[0x2821F96F8]();
}

void sub_25EEBF644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

id PLLogApplication()
{
  if (PLLogApplication_onceToken != -1)
  {
    PLLogApplication_cold_1();
  }

  v1 = PLLogApplication___logObj;

  return v1;
}

uint64_t __PLLogApplication_block_invoke()
{
  PLLogApplication___logObj = os_log_create("com.apple.powerlog", "application");

  return MEMORY[0x2821F96F8]();
}

void sub_25EEC58EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v3 - 232));
  _Unwind_Resume(a1);
}

void sub_25EEC7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25EECB3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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

void sub_25EECB82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Unwind_Resume(a1);
}

void sub_25EECBBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

void sub_25EECBF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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

id PLLogSMC()
{
  if (PLLogSMC_onceToken != -1)
  {
    PLLogSMC_cold_1();
  }

  v1 = PLLogSMC___logObj;

  return v1;
}

uint64_t __PLLogSMC_block_invoke()
{
  PLLogSMC___logObj = os_log_create("com.apple.powerlog", "smc");

  return MEMORY[0x2821F96F8]();
}

void sub_25EECEA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

unsigned int *OUTLINED_FUNCTION_8_3@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id PPSLogAPFS()
{
  if (PPSLogAPFS_onceToken != -1)
  {
    PPSLogAPFS_cold_1();
  }

  v1 = PPSLogAPFS__logHandle;

  return v1;
}

uint64_t __PPSLogAPFS_block_invoke()
{
  PPSLogAPFS__logHandle = os_log_create("com.apple.powerlog", "apfs");

  return MEMORY[0x2821F96F8]();
}

id PLLogUrsaUtilities()
{
  if (PLLogUrsaUtilities_onceToken != -1)
  {
    PLLogUrsaUtilities_cold_1();
  }

  v1 = PLLogUrsaUtilities___logObj;

  return v1;
}

uint64_t __PLLogUrsaUtilities_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "Ursa");
  PLLogUrsaUtilities___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

id PLLogLocation()
{
  if (PLLogLocation_onceToken != -1)
  {
    PLLogLocation_cold_1();
  }

  v1 = PLLogLocation___logObj;

  return v1;
}

uint64_t __PLLogLocation_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "Location");
  PLLogLocation___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

_BYTE *OUTLINED_FUNCTION_3_2(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_5_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

id PLLogPush()
{
  if (PLLogPush_onceToken != -1)
  {
    PLLogPush_cold_1();
  }

  v1 = PLLogPush___logObj;

  return v1;
}

uint64_t __PLLogPush_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "push");
  PLLogPush___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_25EEEAED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void testLogEvents(uint64_t a1, void *a2)
{
  v89[4] = *MEMORY[0x277D85DE8];
  v88[0] = @"bundleID";
  v88[1] = @"updateType";
  v89[0] = @"cloudphotod";
  v89[1] = &unk_287145FB8;
  v88[2] = @"eventIntervals";
  v85[0] = @"startDate";
  v2 = MEMORY[0x277CBEAA8];
  v51 = a2;
  v3 = [v2 dateWithTimeIntervalSince1970:0.0];
  v85[1] = @"endDate";
  v86[0] = v3;
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:3.0];
  v86[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  v87[0] = v5;
  v83[0] = @"startDate";
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:8.0];
  v83[1] = @"endDate";
  v84[0] = v6;
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:25.0];
  v84[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v87[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:2];
  v88[3] = @"childBundleIDToWeight";
  v89[2] = v9;
  v89[3] = &unk_287148B58;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];

  v81[0] = @"bundleID";
  v81[1] = @"updateType";
  v82[0] = @"com.apple.bird";
  v82[1] = &unk_287145FB8;
  v81[2] = @"eventIntervals";
  v78[0] = @"startDate";
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v79[0] = v10;
  v78[1] = @"endDate";
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:5.0];
  v79[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:2];
  v80[0] = v12;
  v76[0] = @"startDate";
  v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v77[0] = v13;
  v76[1] = @"endDate";
  v14 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:12.0];
  v77[1] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v80[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v82[2] = v16;
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:3];

  v74[0] = @"bundleID";
  v74[1] = @"updateType";
  v75[0] = @"nsurlsessiond";
  v75[1] = &unk_287145FB8;
  v74[2] = @"eventIntervals";
  v71[0] = @"startDate";
  v48 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:0.0];
  v71[1] = @"endDate";
  v72[0] = v48;
  v47 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v72[1] = v47;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v73[0] = v46;
  v69[0] = @"startDate";
  v45 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v69[1] = @"endDate";
  v70[0] = v45;
  v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v70[1] = v44;
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v73[1] = v43;
  v67[0] = @"startDate";
  v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v67[1] = @"endDate";
  v68[0] = v42;
  v41 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v68[1] = v41;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v73[2] = v40;
  v65[0] = @"startDate";
  v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1.0];
  v65[1] = @"endDate";
  v66[0] = v39;
  v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2.0];
  v66[1] = v38;
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
  v73[3] = v37;
  v63[0] = @"startDate";
  v36 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:2.0];
  v63[1] = @"endDate";
  v64[0] = v36;
  v35 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v64[1] = v35;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:2];
  v73[4] = v34;
  v61[0] = @"startDate";
  v33 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:7.0];
  v61[1] = @"endDate";
  v62[0] = v33;
  v32 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:14.0];
  v62[1] = v32;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v73[5] = v31;
  v59[0] = @"startDate";
  v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:20.0];
  v59[1] = @"endDate";
  v60[0] = v30;
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:24.0];
  v60[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v73[6] = v18;
  v57[0] = @"startDate";
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:27.0];
  v57[1] = @"endDate";
  v58[0] = v19;
  v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:34.0];
  v58[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v73[7] = v21;
  v55[0] = @"startDate";
  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:34.0];
  v55[1] = @"endDate";
  v56[0] = v22;
  v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:40.0];
  v56[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
  v73[8] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:9];
  v75[2] = v25;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v75 forKeys:v74 count:3];

  v52[0] = v50;
  v52[1] = v49;
  v52[2] = v29;
  v53 = @"events";
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
  v54 = v26;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];

  [v51 didReceiveEventWithPayload:v27];
  v28 = *MEMORY[0x277D85DE8];
}

void testReportEnergy(uint64_t a1, void *a2)
{
  v2 = [a2 energyResponse];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyResponse=%@", v2];
  v4 = MEMORY[0x277D3F178];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
  v6 = [v5 lastPathComponent];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testReportEnergy"];
  [v4 logMessage:v3 fromFile:v6 fromFunction:v7 fromLineNumber:697];

  v8 = PLLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __111__PLProcessPortMap_pidAndProcessNameForDestAddress_withDestPort_withSourceAddress_withSourcePort_withProtocol___block_invoke_cold_1();
  }
}

void testStopEvent2(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v9[1] = @"info";
  v10[0] = @"diagnosticd";
  v7[0] = &unk_287145FB8;
  v7[1] = &unk_287146000;
  v8[0] = &unk_28714B558;
  v8[1] = &unk_28714B568;
  v9[0] = @"bundleID";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v10[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v5 = [v2 didReceiveStopEventWithPayload:v4];

  v6 = *MEMORY[0x277D85DE8];
}

void testCapping(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = 0;
  v4 = 0.0;
  do
  {
    v17 = v3;
    v5 = -20;
    v6 = 0.0;
    do
    {
      [v2 capUtilizationInSeconds:v4 withUpperBoundInError:90.0 withCapInError:1.0 withCappedUpperBound:30.0];
      v8 = v7;
      [v2 capUtilizationInSeconds:v6 withUpperBoundInError:90.0 withCapInError:10.0 withCappedUpperBound:30.0];
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%f, %f => %f, %f", *&v4, *&v6, v8, v9];
      v11 = MEMORY[0x277D3F178];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/PLDuetService.m"];
      v13 = [v12 lastPathComponent];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"testCappingWithInput"];
      [v11 logMessage:v10 fromFile:v13 fromFunction:v14 fromLineNumber:1047];

      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v19 = v10;
        _os_log_debug_impl(&dword_25EE51000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      v6 = v6 + 20.0;
      v5 += 20;
    }

    while (v5 < 0xB4);
    v4 = v4 + 20.0;
    v3 = v17 + 20;
  }

  while (v17 < 0xB4);

  v16 = *MEMORY[0x277D85DE8];
}

void OUTLINED_FUNCTION_8_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

id PLLogProcessNetwork()
{
  if (PLLogProcessNetwork_onceToken != -1)
  {
    PLLogProcessNetwork_cold_1();
  }

  v1 = PLLogProcessNetwork___logObj;

  return v1;
}

uint64_t __PLLogProcessNetwork_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "ProcessNetwork");
  PLLogProcessNetwork___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_25EEFB794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a67, 8);
  _Unwind_Resume(a1);
}

void sub_25EF06534(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x25EF06504);
  }

  objc_exception_rethrow();
}

id PLLogProcessMonitor()
{
  if (PLLogProcessMonitor_onceToken != -1)
  {
    PLLogProcessMonitor_cold_1();
  }

  v1 = PLLogProcessMonitor___logObj;

  return v1;
}

uint64_t __PLLogProcessMonitor_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "processMonitor");
  PLLogProcessMonitor___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

id PLLogWifi()
{
  if (PLLogWifi_onceToken != -1)
  {
    PLLogWifi_cold_1();
  }

  v1 = PLLogWifi___logObj;

  return v1;
}

uint64_t __PLLogWifi_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "wifi");
  PLLogWifi___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void WiFiDeviceAttached(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __WiFiDeviceAttached_block_invoke;
  block[3] = &unk_279A5BDC0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void WiFiVirtualInterfaceCallback(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__11;
  v22 = __Block_byref_object_dispose__11;
  v23 = a2;
  v5 = v19[5];
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"LINK_CHANGED_IS_LINKDOWN"];

    if (v6)
    {
      v7 = [v4 workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __WiFiVirtualInterfaceCallback_block_invoke;
      block[3] = &unk_279A5D9A8;
      v16 = v4;
      v17 = &v18;
      dispatch_async(v7, block);
    }
  }

  v8 = v19[5];
  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D297F8]];
    if (v9)
    {
      v10 = [v19[5] objectForKeyedSubscript:*MEMORY[0x277D297F0]];

      if (v10)
      {
        v11 = [v4 workQueue];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __WiFiVirtualInterfaceCallback_block_invoke_2;
        v12[3] = &unk_279A5D9A8;
        v13 = v4;
        v14 = &v18;
        dispatch_async(v11, v12);
      }
    }
  }

  _Block_object_dispose(&v18, 8);
}

void WiFiDeviceAvailableCallback(uint64_t a1, const __CFDictionary *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"DRIVER_AVAILABLE");
    if (CFBooleanGetValue(Value))
    {
      if (CFDictionaryContainsKey(a2, @"IO80211InterfaceWoWWakeUpParams"))
      {
        v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:CFDictionaryGetValue(a2 copyItems:{@"IO80211InterfaceWoWWakeUpParams", 1}];
      }

      else
      {
        v5 = 0;
      }

      [v6 logFromWiFiNoAvailableCallback:@"WiFiDeviceAvailableCallback" withAvailability:1 withWakeParams:v5];
    }
  }
}

void WiFiClientScanCacheCallback(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__11;
  v18 = __Block_byref_object_dispose__11;
  v19 = a5;
  if (a2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a2))
    {
      CFRetain(a2);
      v7 = a2;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
      v9 = v8;
      if (v15[5] && v8)
      {
        CFRelease(v7);
        v10 = [v15[5] workQueue];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __WiFiClientScanCacheCallback_block_invoke;
        v11[3] = &unk_279A5C3D0;
        v13 = &v14;
        v12 = v9;
        dispatch_async(v10, v11);
      }
    }
  }

  _Block_object_dispose(&v14, 8);
}

void sub_25EF22C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void WiFiDeviceLinkQualityChanged(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [v4 remainingAllowedRSSIEntryCount];
  if (a2 && v5)
  {
    v6 = a2;
    v7 = [v4 workQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __WiFiDeviceLinkQualityChanged_block_invoke;
    v9[3] = &unk_279A5C3F8;
    v10 = v4;
    v11 = v6;
    v8 = v6;
    dispatch_async(v7, v9);
  }
}

void __WiFiDeviceAttached_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) findWifiDevice];

  objc_autoreleasePoolPop(v2);
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __WiFiVirtualInterfaceCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardAWDLState:*(*(*(a1 + 40) + 8) + 40)];

  objc_autoreleasePoolPop(v2);
}

void __WiFiVirtualInterfaceCallback_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardHotspotState:*(*(*(a1 + 40) + 8) + 40)];

  objc_autoreleasePoolPop(v2);
}

void __WiFiDeviceLinkQualityChanged_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) logEventForwardRSSI:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

id PLLogXPC()
{
  if (PLLogXPC_onceToken != -1)
  {
    PLLogXPC_cold_1();
  }

  v1 = PLLogXPC___logObj;

  return v1;
}

uint64_t __PLLogXPC_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "xpc");
  PLLogXPC___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_25EF5C908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t *OUTLINED_FUNCTION_11@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

id PLLogFSEvent()
{
  if (PLLogFSEvent_onceToken != -1)
  {
    PLLogFSEvent_cold_1();
  }

  v1 = PLLogFSEvent___logObj;

  return v1;
}

uint64_t __PLLogFSEvent_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "FSEvent");
  PLLogFSEvent___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void fsEventsHandler(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v14 = a4;
  if (a3)
  {
    v7 = 0;
    do
    {
      if ((~*(a5 + 4 * v7) & 0x10100) == 0)
      {
        v8 = [v14 objectAtIndexedSubscript:v7];
        v9 = [v8 lastPathComponent];

        if ((~*(a5 + 4 * v7) & 0x900) == 0)
        {
          v10 = [v9 componentsSeparatedByString:@"."];
          if ([v10 count] == 4)
          {
            v11 = [v10 objectAtIndexedSubscript:1];
            v12 = [v11 isEqualToString:@"microstackshots"];

            if (v12)
            {
              [a2 logLogFileName:@"microstackshots" withName:v9];
            }
          }
        }
      }

      ++v7;
    }

    while (a3 != v7);
  }
}

void PLProcessCPU::PLProcessCPU(PLProcessCPU *this)
{
  *this = &unk_287101210;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 19) = 0;
  v2 = os_log_create("com.apple.powerlog", "PLProcessCPU");
  v3 = *(this + 19);
  *(this + 19) = v2;

  LODWORD(count) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 17) = 0x100000000;
  *(this + 144) = 1;
  v4 = mach_absolute_time();
  *(this + 15) = v4;
  *(this + 16) = v4;
  v7 = 4;
  sysctlbyname("kern.maxproc", &count, &v7, 0, 0);
  *(this + 11) = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  v5 = malloc_type_calloc(count, 4uLL, 0x100004052888210uLL);
  *(this + 12) = v5;
  *(this + 26) = 4 * count;
  v6 = *(this + 19);
  if (!*(this + 11) || !v5)
  {
    if (os_log_type_enabled(*(this + 19), OS_LOG_TYPE_ERROR))
    {
      PLProcessCPU::PLProcessCPU(v6);
    }

    __cxa_rethrow();
  }

  if (os_log_type_enabled(*(this + 19), OS_LOG_TYPE_DEBUG))
  {
    PLProcessCPU::PLProcessCPU(v6);
  }
}

void sub_25EF603C4(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table(v3);
  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(v2);
  _Unwind_Resume(a1);
}

void PLProcessCPU::~PLProcessCPU(void **this)
{
  *this = &unk_287101210;
  free(this[11]);
  free(this[12]);

  std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table((this + 6));
  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table((this + 1));
}

void PLProcessCPU::findMissing(PLProcessCPU *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + *(this + 35) + 27);
  if (v3)
  {
    v26 = *(this + *(this + 34) + 27);
    if (v26 >= 1 && v3 >= 1)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = this + 88;
      v25 = v3 - v26;
      v27 = this + 88;
      do
      {
        v10 = 0;
        v11 = v26 - v7;
        v12 = v8;
        v13 = 4 * v8;
        v14 = v3 - v8;
        v28 = v13;
        while (1)
        {
          v15 = *(*&v9[8 * *(this + 35)] + v13 + 4 * v10);
          if (*(*&v9[8 * *(this + 34)] + 4 * v7) == v15)
          {
            break;
          }

          if (v11 >= v14)
          {
            v8 = v12 + v10;
            goto LABEL_28;
          }

          v16 = a2[2];
          if (v6 >= v16)
          {
            v17 = *a2;
            v18 = v6 - *a2;
            v19 = v18 >> 2;
            v20 = (v18 >> 2) + 1;
            if (v20 >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v21 = v16 - v17;
            if (v21 >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a2, v23);
            }

            *(4 * v19) = v15;
            v6 = (4 * v19 + 4);
            memcpy(0, v17, v18);
            v24 = *a2;
            *a2 = 0;
            a2[1] = v6;
            a2[2] = 0;
            if (v24)
            {
              operator delete(v24);
            }

            v9 = v27;
            v13 = v28;
            v11 = v26 - v7;
          }

          else
          {
            *v6 = v15;
            v6 += 4;
          }

          a2[1] = v6;
          ++v10;
          --v14;
          if (v12 + v10 >= v3)
          {
            return;
          }
        }

        if (v12 + v10 == v25)
        {
          return;
        }

        v8 = v12 + v10 + 1;
LABEL_28:
        if (++v7 >= v26)
        {
          break;
        }

        ++v25;
      }

      while (v8 < v3);
    }
  }
}

void sub_25EF60658(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void PLProcessCPU::cleanupDeadPids(PLProcessCPU *this)
{
  PLProcessCPU::findMissing(this, &v7);
  v2 = v7;
  v3 = v8;
  if (v7 != v8)
  {
    do
    {
      v6 = *v2;
      v4 = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(this + 1, &v6);
      if (v4)
      {
        v9 = v4 + 3;
        v5 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, v4 + 3);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v5 + 3, &v6);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(this + 1, &v6);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = v7;
  }

  if (v2)
  {
    v8 = v2;
    operator delete(v2);
  }
}

void sub_25EF60730(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__darwin_ino64_t PLProcessCPU::getInode(PLProcessCPU *this, const char *a2)
{
  if (stat(a2, &v3) == -1)
  {
    return -1;
  }

  else
  {
    return v3.st_ino;
  }
}

uint64_t PLProcessCPU::updateInodeMap(PLProcessCPU *this, int *a2)
{
  buffer[128] = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    if (!proc_pidpath(*a2, buffer, 0x400u))
    {
      exception = __cxa_allocate_exception(8uLL);
      *exception = "Unable to get path for pid, or process terminated";
      __cxa_throw(exception, MEMORY[0x277D82740], 0);
    }

    v4 = (**this)(this, buffer);
    v17 = v4;
    if (v4 == -1)
    {
      v5 = __cxa_allocate_exception(8uLL);
      *v5 = "Cannot find the inode for the process";
      __cxa_throw(v5, MEMORY[0x277D82740], 0);
    }
  }

  else
  {
    v4 = 0;
    strcpy(buffer, "kernel_task");
    v17 = 0;
  }

  std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(this + 1, a2)[3] = v4;
  *&v15 = &v17;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 6, &v17);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v6 + 3, a2);
  if ((*(v6 + 87) & 0x8000000000000000) != 0)
  {
    if (v6[9])
    {
      goto LABEL_20;
    }
  }

  else if (*(v6 + 87))
  {
    goto LABEL_20;
  }

  v7 = (*(*this + 8))(this, buffer);
  v8 = v7;
  if (!v7)
  {
    v14 = __cxa_allocate_exception(8uLL);
    *v14 = "Unable to get basename for the process";
    __cxa_throw(v14, MEMORY[0x277D82740], 0);
  }

  v9 = strlen(v7);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v9;
  if (v9)
  {
    memmove(&v15, v8, v9);
  }

  *(&v15 + v10) = 0;
  if (*(v6 + 87) < 0)
  {
    operator delete(v6[8]);
  }

  *(v6 + 4) = v15;
  v6[10] = v16;
LABEL_20:
  result = v17;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t PLProcessCPU::getRawCpu(PLProcessCPU *this, int *a2, unint64_t *a3)
{
  if ((*(*this + 16))(this, *a2, v9) != 96)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(this + 1, a2);
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::find<unsigned long long>(this + 6, a3);
    if (!v7[6])
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v7 + 3, a2);
    }

    exception = __cxa_allocate_exception(8uLL);
    *exception = "Process terminated while acquiring pidinfo";
    __cxa_throw(exception, MEMORY[0x277D82740], 0);
  }

  return v9[3] + v9[2];
}

uint64_t PLProcessCPU::aggregateCpu(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::find<unsigned long long>(a2, a4);
  if (v7)
  {
    v8 = v7;
    result = v7[3];
    v10 = *a3 + result;
    *a3 = v10;
    v8[3] = v10;
  }

  else
  {
    v11 = *a3;
    v12 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, a4);
    result = 0;
    v12[3] = v11;
  }

  return result;
}

void PLProcessCPU::addToReport(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4, uint64_t *a5, unint64_t *a6)
{
  v10 = PLProcessCPU::aggregateCpu(a1, a3, a5, a2);
  v25[0] = *a2;
  v25[1] = v10;
  v11 = std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::find<std::pair<unsigned long long,unsigned long long>>(a4, v25);
  v12 = (a4 + 8);
  if ((a4 + 8) != v11)
  {
    v13 = v11;
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(a4, v11);
    operator delete(v13);
  }

  v14 = *a5;
  if (*(a4 + 16) != 10 || v14 > *a6)
  {
    v24[0] = *a2;
    v24[1] = v14;
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long>>(a4, v24);
    if (*(a4 + 16) >= 0xBuLL)
    {
      do
      {
        v16 = *v12;
        v17 = (a4 + 8);
        if (*v12)
        {
          do
          {
            v17 = v16;
            v16 = v16[1];
          }

          while (v16);
          v18 = *v17;
        }

        else
        {
          do
          {
            v19 = v17;
            v17 = v17[2];
            v18 = *v17;
          }

          while (*v17 == v19);
        }

        if (v18)
        {
          do
          {
            v17 = v18;
            v18 = v18[1];
          }

          while (v18);
          *a6 = v17[5];
        }

        else
        {
          do
          {
            v22 = v17;
            v17 = v17[2];
          }

          while (*v17 == v22);
          v23 = v17[1];
          *a6 = v17[5];
          if (v23)
          {
            do
            {
              v20 = v23;
              v23 = *v23;
            }

            while (v23);
            goto LABEL_22;
          }
        }

        do
        {
          v20 = v17[2];
          v21 = *v20 == v17;
          v17 = v20;
        }

        while (!v21);
LABEL_22:
        std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(a4, v20);
        operator delete(v20);
      }

      while (*(a4 + 16) > 0xAuLL);
    }
  }
}

void PLProcessCPU::reportCpus(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  [PLUtilities secondsFromMachTime:*a3];
  v6 = v5 * 1000.0;
  [PLUtilities secondsFromMachTime:*(a1 + 120 + 8 * *(a1 + 136)) - *(a1 + 120 + 8 * *(a1 + 140))];
  if (a2[2])
  {
    v8 = *&v7;
    v9 = *(a1 + 152);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      *buf = 134218240;
      *v31 = v6;
      *&v31[8] = 2048;
      *&v31[10] = v10;
      _os_log_impl(&dword_25EE51000, v9, OS_LOG_TYPE_DEFAULT, "plcpu-00, %8.2f ms, %6.2f s", buf, 0x16u);
    }
  }

  v13 = *a2;
  v11 = a2 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    v14 = 0;
    v15 = v6;
    *&v7 = 67110146;
    v27 = v7;
    do
    {
      v28 = *(v12 + 2);
      [PLUtilities secondsFromMachTime:*(&v28 + 1), v27, v28];
      v17 = v16;
      v18 = *(a1 + 152);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = &v28;
        v19 = *(std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 48), &v28)[5] + 16);
        v29 = &v28;
        v20 = std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 48), &v28);
        v21 = v20 + 8;
        if (*(v20 + 87) < 0)
        {
          v21 = *v21;
        }

        v22 = v17 * 1000.0;
        ++v14;
        *buf = v27;
        *v31 = v14;
        *&v31[4] = 2048;
        *&v31[6] = v22;
        *&v31[14] = 2048;
        *&v31[16] = v22 * 100.0 / v15;
        v32 = 1024;
        v33 = v19;
        v34 = 2080;
        v35 = v21;
        _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "plcpu-%02d, %8.2f ms, %6.2f %%, %5d, %s", buf, 0x2Cu);
      }

      v23 = v12[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v12[2];
          v25 = *v24 == v12;
          v12 = v24;
        }

        while (!v25);
      }

      v12 = v24;
    }

    while (v24 != v11);
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t PLProcessCPU::processPids(int32x2_t *this)
{
  v2 = this + 11;
  v3 = &this[13] + 4;
  this[13].i32[this[17].i32[0] + 1] = proc_listallpids(*&this[this[17].i32[0] + 11], this[13].i32[0]);
  PLProcessCPU::cleanupDeadPids(this);
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v17[0] = 0;
  v17[1] = 0;
  v15 = 0;
  v16 = v17;
  v14 = 0;
  v4 = mach_absolute_time();
  v5 = this[17].i32[0];
  this[v5 + 15] = v4;
  if (this[13].i32[v5 + 1] >= 1)
  {
    v6 = 0;
    do
    {
      v13 = *(*&v2[v5] + 4 * v6);
      v12 = 0;
      v7 = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(&this[1], &v13);
      v8 = v7;
      if (v7)
      {
        updated = v7[3];
      }

      else
      {
        updated = PLProcessCPU::updateInodeMap(this, &v13);
      }

      v12 = updated;
      RawCpu = PLProcessCPU::getRawCpu(this, &v13, &v12);
      if (v8)
      {
        v8[this[17].i32[0] + 4] = RawCpu;
        if ((this[18].i8[0] & 1) == 0)
        {
          v20 = (RawCpu - v8[this[17].i32[1] + 4]);
          v14 += v20;
          if (v20)
          {
            PLProcessCPU::addToReport(RawCpu, &v12, v18, &v16, &v20, &v15);
          }
        }
      }

      else
      {
        v20 = &v13;
        std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&this[1], &v13)[this[17].i32[0] + 4] = RawCpu;
      }

      ++v6;
      v5 = this[17].i32[0];
    }

    while (v6 < *&v3[4 * v5]);
  }

  PLProcessCPU::reportCpus(this, &v16, &v14);
  this[17] = vrev64_s32(this[17]);
  this[18].i8[0] = 0;
  std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(&v16, v17[0]);
  return std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(v18);
}

uint64_t std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::~__hash_table(a1 + 8);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A5BAE8, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_25EF6172C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,PLProcessCPU::inode_data_t>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::__unordered_map_hasher<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,PLProcessCPU::inode_cpu_t>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,PLProcessCPU::inode_data_t>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::find<std::pair<unsigned long long,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 40);
    v9 = v8 >= v6;
    v10 = v8 > v6;
    v11 = v9;
    if (*(v3 + 32) == v5)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = v12 == 0;
    if (v12)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    if (v13)
    {
      v7 = v3;
    }

    v3 = *(v3 + v14);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v15 = *(v7 + 40);
  v9 = v6 >= v15;
  v16 = v6 > v15;
  v17 = v9;
  if (v5 == *(v7 + 32) ? v16 : v17)
  {
    return v2;
  }

  return v7;
}

uint64_t *std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<std::pair<unsigned long long,unsigned long long>,std::pair<unsigned long long,unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__find_equal<std::pair<unsigned long long,unsigned long long>>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__find_equal<std::pair<unsigned long long,unsigned long long>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = v4[4];
        v10 = v8[5];
        v11 = v7 > v10;
        if (v6 != v9)
        {
          v11 = v7 >= v10;
        }

        if (!v11)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_18;
        }
      }

      v12 = v10 >= v7;
      v13 = v10 > v7;
      v14 = v12;
      if (v6 == v9)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v15 != 1)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_18:
  *a2 = v8;
  return result;
}

uint64_t *std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(a1, *a2);
    std::__tree<std::pair<unsigned long long,unsigned long long>,PLProcessCPU::compare_t,std::allocator<std::pair<unsigned long long,unsigned long long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void sub_25EF6FBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLLogDisplay()
{
  if (PLLogDisplay_onceToken != -1)
  {
    PLLogDisplay_cold_1();
  }

  v1 = PLLogDisplay___logObj;

  return v1;
}

uint64_t __PLLogDisplay_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "display");
  PLLogDisplay___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void serviceInterestCallback(void *a1, uint64_t a2, int a3)
{
  if (a3 == -536870896)
  {
    v8 = v3;
    v9 = v4;
    v5 = a1;
    [v5 cancel];
    [v5 setValid:0];

    v6 = PLLogDisplay();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_DEFAULT, "Cancelled AFKInterface", v7, 2u);
    }
  }
}

uint64_t handleIOMFBPowerCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!_os_feature_enabled_impl() || (result = [MEMORY[0x277D3F208] hasAOD], (result & 1) == 0))
  {

    return [a4 logEventPointDisplayBacklightWithState:a3];
  }

  return result;
}

void sub_25EF7E544(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25EF843A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id location)
{
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __HIDTouchEventCallback(void *a1)
{
  if (IOHIDEventGetType() != 11)
  {
    return;
  }

  Children = IOHIDEventGetChildren();
  if (!Children)
  {
    return;
  }

  v3 = Children;
  v9 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        if (IOHIDEventGetType() == 11)
        {
          if (IOHIDEventGetIntegerValue())
          {
            break;
          }
        }

        v6 = ++v7;
        if (v5 <= v7)
        {
          goto LABEL_9;
        }
      }

      if ([v9 userTouch])
      {
        goto LABEL_15;
      }

      v8 = 1;
      goto LABEL_14;
    }

LABEL_9:
    if ([v9 userTouch])
    {
      v8 = 0;
LABEL_14:
      [v9 logEventBackwardUserTouch:v8];
    }
  }

LABEL_15:
}

void sub_25EF84E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 200), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t updateDisplayIOReportAZLStats(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 subscription])
    {
      [v2 subscription];
      v3 = [v2 subscribedChannels];
      Samples = IOReportCreateSamples();

      if (Samples)
      {
        v5 = [MEMORY[0x277CBEAA8] monotonicDate];
        v6 = [v2 ioReportSample];

        if (!v6)
        {
LABEL_7:
          [v2 setIoReportSample:Samples];
          v10 = [v2 sampleTime];
          [v2 setSampleTimePrevious:v10];

          [v2 setSampleTime:v5];
          v11 = 1;
LABEL_19:

          goto LABEL_20;
        }

        v7 = [v2 ioReportSample];
        SamplesDelta = IOReportCreateSamplesDelta();

        if (SamplesDelta)
        {
          v14 = objc_alloc_init(PLDisplayAZLStats);
          v9 = v14;
          IOReportIterate();
          [v2 setDisplayAZLStats:v9];

          goto LABEL_7;
        }

        v12 = PLLogDisplay();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          updateDisplayIOReportAZLStats_cold_1();
        }
      }

      else
      {
        v5 = PLLogDisplay();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          updateDisplayIOReportAZLStats_cold_2();
        }
      }

      v11 = 0;
      goto LABEL_19;
    }

    Samples = PLLogDisplay();
    if (os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
    {
      updateDisplayIOReportAZLStats_cold_3();
    }
  }

  else
  {
    Samples = PLLogDisplay();
    if (os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
    {
      updateDisplayIOReportAZLStats_cold_4();
    }
  }

  v11 = 0;
LABEL_20:

  return v11;
}

void __updateDisplayIOReportAZLStats_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetChannelName();
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v5 = v4;
  v6 = &unk_287146D20;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([v3 isEqualToString:@"power"])
  {
    [*(a1 + 32) setAvgPower:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAZLStats_block_invoke_cold_5(v7);
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([v3 isEqualToString:@"azl_accum"])
  {
    [*(a1 + 32) setAzlAccum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAZLStats_block_invoke_cold_4(v7);
    }

    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"nits_accum"])
  {
    [*(a1 + 32) setNitsAccum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAZLStats_block_invoke_cold_3(v7);
    }

    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"bl_update_count"])
  {
    [*(a1 + 32) setBlUpdateCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAZLStats_block_invoke_cold_2(v7);
    }

    goto LABEL_18;
  }

  if ([v3 isEqualToString:@"bl_frame_count"])
  {
    [*(a1 + 32) setBlFrameCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAZLStats_block_invoke_cold_1(v7);
    }

    goto LABEL_18;
  }

LABEL_19:

  objc_autoreleasePoolPop(v2);
}

uint64_t updateDisplayIOReportAODStats(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 subscription];
    Samples = PLLogDisplay();
    v5 = os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG);
    if (v3)
    {
      if (v5)
      {
        updateDisplayIOReportAODStats_cold_1();
      }

      [v2 subscription];
      v6 = [v2 subscribedChannels];
      Samples = IOReportCreateSamples();

      if (Samples)
      {
        v7 = [MEMORY[0x277CBEAA8] monotonicDate];
        v8 = PLLogDisplay();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          updateDisplayIOReportAODStats_cold_2(v2);
        }

        v9 = [v2 ioReportSample];

        if (!v9)
        {
          goto LABEL_11;
        }

        v10 = [v2 ioReportSample];
        SamplesDelta = IOReportCreateSamplesDelta();

        if (SamplesDelta)
        {
          v17 = objc_alloc_init(PLDisplayAODStats);
          v12 = v17;
          IOReportIterate();
          [v2 setDisplayAODStats:v12];

LABEL_11:
          [v2 setIoReportSample:Samples];
          v13 = [v2 sampleTime];
          [v2 setSampleTimePrevious:v13];

          [v2 setSampleTime:v7];
          v14 = 1;
LABEL_23:

          goto LABEL_24;
        }

        v15 = PLLogDisplay();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          updateDisplayIOReportAODStats_cold_3();
        }
      }

      else
      {
        v7 = PLLogDisplay();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          updateDisplayIOReportAODStats_cold_4();
        }
      }

      v14 = 0;
      goto LABEL_23;
    }

    if (v5)
    {
      updateDisplayIOReportAODStats_cold_5();
    }
  }

  else
  {
    Samples = PLLogDisplay();
    if (os_log_type_enabled(Samples, OS_LOG_TYPE_DEBUG))
    {
      updateDisplayIOReportAODStats_cold_6();
    }
  }

  v14 = 0;
LABEL_24:

  return v14;
}

void __updateDisplayIOReportAODStats_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = IOReportChannelGetChannelName();
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:IOReportSimpleGetIntegerValue()];
  v5 = v4;
  v6 = &unk_287146D20;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  if ([v3 isEqualToString:@"awake_count"])
  {
    [*(a1 + 32) setAwakeCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_14(v7);
    }

LABEL_45:

    goto LABEL_46;
  }

  if ([v3 isEqualToString:@"media_count"])
  {
    [*(a1 + 32) setMediaCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_13(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"flipbook_count"])
  {
    [*(a1 + 32) setFlipbookCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_12(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"flipbook_delay"])
  {
    [*(a1 + 32) setFlipbookDelay:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_11(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"media_scanout"])
  {
    [*(a1 + 32) setMediaScanout:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_10(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"ambient_count"])
  {
    [*(a1 + 32) setAmbientCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_9(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"prc_repeat_coun"])
  {
    [*(a1 + 32) setPrcRepeatCoun:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_8(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"pdc_repeat_coun"])
  {
    [*(a1 + 32) setPdcRepeatCoun:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_7(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"llm_count"])
  {
    [*(a1 + 32) setLlmCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_6(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"apl_sum"])
  {
    [*(a1 + 32) setAplSum:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_5(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"apl_count"])
  {
    [*(a1 + 32) setAplCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_4(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"1hz_flipbook_fr"])
  {
    [*(a1 + 32) setOneHzFlipbookFrameCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_3(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"1hz_frame_miss_"])
  {
    [*(a1 + 32) setOneHzFrameMissCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_2(v7);
    }

    goto LABEL_45;
  }

  if ([v3 isEqualToString:@"1hz_bic_accum_c"])
  {
    [*(a1 + 32) setOneHzBicAccumCount:v7];
    v8 = PLLogDisplay();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __updateDisplayIOReportAODStats_block_invoke_cold_1(v7);
    }

    goto LABEL_45;
  }

LABEL_46:

  objc_autoreleasePoolPop(v2);
}

void sub_25EF87BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_25EF8AE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLLogDuetServiceDAS()
{
  if (PLLogDuetServiceDAS_onceToken != -1)
  {
    PLLogDuetServiceDAS_cold_1();
  }

  v1 = PLLogDuetServiceDAS___logObj;

  return v1;
}

uint64_t __PLLogDuetServiceDAS_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "DuetServiceDAS");
  PLLogDuetServiceDAS___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

id PLLogPausedCharging()
{
  if (PLLogPausedCharging_onceToken != -1)
  {
    PLLogPausedCharging_cold_1();
  }

  v1 = PLLogPausedCharging___logObj;

  return v1;
}

uint64_t __PLLogPausedCharging_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "pausedCharging");
  PLLogPausedCharging___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

id PLLogUrsaNotification()
{
  if (PLLogUrsaNotification_onceToken != -1)
  {
    PLLogUrsaNotification_cold_1();
  }

  v1 = PLLogUrsaNotification___logObj;

  return v1;
}

uint64_t __PLLogUrsaNotification_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "Ursa");
  PLLogUrsaNotification___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void OUTLINED_FUNCTION_5_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_7_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id PLLogXPCService()
{
  if (PLLogXPCService_onceToken != -1)
  {
    PLLogXPCService_cold_1();
  }

  v1 = PLLogXPCService___logObj;

  return v1;
}

uint64_t __PLLogXPCService_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "xpc-service");
  PLLogXPCService___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_25EF9BA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62, uint64_t a63)
{
  _Block_object_dispose(&a62, 8);
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&STACK[0x208], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose(&STACK[0x298], 8);
  _Block_object_dispose(&STACK[0x2B8], 8);
  _Block_object_dispose((v68 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id PLLogSoC()
{
  if (PLLogSoC_onceToken != -1)
  {
    PLLogSoC_cold_1();
  }

  v1 = PLLogSoC___logObj;

  return v1;
}

uint64_t __PLLogSoC_block_invoke()
{
  v0 = os_log_create("com.apple.PerfPowerServices", "soc");
  PLLogSoC___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t pushConfigToAggd(uint64_t a1, void *a2)
{
  if (a2)
  {
    return [a2 aggdTimerFired];
  }

  return result;
}

void sub_25EFC2F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25EFCDA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_25EFCDD08(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x25EFCDCDCLL);
  }

  objc_exception_rethrow();
}

void sub_25EFCE89C(void *a1, int a2)
{
  objc_begin_catch(a1);
  if (a2 == 2)
  {
    objc_end_catch();
    JUMPOUT(0x25EFCE860);
  }

  objc_exception_rethrow();
}

void sub_25EFCF0F8(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2 == 2)
  {
    v12 = objc_begin_catch(exc_buf);
    v13 = PLLogCommon();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent parseTimeAtHighSoc:];
    }

    objc_end_catch();
    JUMPOUT(0x25EFCF08CLL);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x25EFCF090);
}

void sub_25EFCF310(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 2)
  {
    v11 = objc_begin_catch(exc_buf);
    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PLBatteryAgent parseLowVoltageResidencyCounters:];
    }

    objc_end_catch();
    JUMPOUT(0x25EFCF29CLL);
  }

  objc_begin_catch(exc_buf);
  JUMPOUT(0x25EFCF2A0);
}

void sub_25EFCF5F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x25EFCF600);
  }

  _Unwind_Resume(a1);
}

void sub_25EFCF610(_Unwind_Exception *a1)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

void sub_25EFCF620(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x25EFCF62CLL);
}

void sub_25EFCF8B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void sub_25EFD2D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t block, uint64_t a19, uint64_t (*a20)(uint64_t a1), void *a21, uint64_t a22)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v22 = objc_begin_catch(exception_object);
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v23 = objc_opt_class();
        block = MEMORY[0x277D85DD0];
        a19 = 3221225472;
        a20 = __46__PLBatteryAgent_logEventPointBatteryShutdown__block_invoke;
        a21 = &__block_descriptor_40_e5_v8__0lu32l8;
        a22 = v23;
        if (logEventPointBatteryShutdown_defaultOnce != -1)
        {
          dispatch_once(&logEventPointBatteryShutdown_defaultOnce, &block);
        }

        if (logEventPointBatteryShutdown_classDebugEnabled == 1)
        {
          v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryShutdown data could not be parsed"];
          v25 = MEMORY[0x277D3F178];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v27 = [v26 lastPathComponent];
          v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointBatteryShutdown]"];
          [v25 logMessage:v24 fromFile:v27 fromFunction:v28 fromLineNumber:7524];

          v29 = PLLogCommon();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      objc_end_catch();
      JUMPOUT(0x25EFD2CBCLL);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_25EFD3164(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(uint64_t a1), void *a12, uint64_t a13)
{
  if (a2 == 2)
  {
    v14 = objc_begin_catch(exc_buf);
    if ([*(v13 + 384) debugEnabled])
    {
      v15 = objc_opt_class();
      a9 = MEMORY[0x277D85DD0];
      a10 = 3221225472;
      a11 = __52__PLBatteryAgent_logEventPointBatteryPanicShutdown___block_invoke_2;
      a12 = &__block_descriptor_40_e5_v8__0lu32l8;
      a13 = v15;
      if (logEventPointBatteryPanicShutdown__defaultOnce != -1)
      {
        dispatch_once(&logEventPointBatteryPanicShutdown__defaultOnce, &a9);
      }

      if (logEventPointBatteryPanicShutdown__classDebugEnabled == 1)
      {
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryPanicShutdown data could not be parsed"];
        v17 = MEMORY[0x277D3F178];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventPointBatteryPanicShutdown:]"];
        [v17 logMessage:v16 fromFile:v19 fromFunction:v20 fromLineNumber:7569];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
        }
      }
    }

    objc_end_catch();
    JUMPOUT(0x25EFD3134);
  }

  objc_begin_catch(exc_buf);
  objc_exception_rethrow();
}

void sub_25EFD5B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t a1), void *a26, uint64_t a27)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v27 = objc_begin_catch(exception_object);
      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        v28 = objc_opt_class();
        a23 = MEMORY[0x277D85DD0];
        a24 = 3221225472;
        a25 = __55__PLBatteryAgent_logEventNoneBatteryConfigWithRawData___block_invoke_5061;
        a26 = &__block_descriptor_40_e5_v8__0lu32l8;
        a27 = v28;
        v29 = &a23;
        if (logEventNoneBatteryConfigWithRawData__defaultOnce_5059 != -1)
        {
          dispatch_once(&logEventNoneBatteryConfigWithRawData__defaultOnce_5059, v29);
        }

        if (logEventNoneBatteryConfigWithRawData__classDebugEnabled_5060 == 1)
        {
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"BatteryConfig data could not be parsed"];
          v31 = MEMORY[0x277D3F178];
          v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Agents/Hardware/PLBatteryAgent.m"];
          v33 = [v32 lastPathComponent];
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLBatteryAgent logEventNoneBatteryConfigWithRawData:]"];
          [v31 logMessage:v30 fromFile:v33 fromFunction:v34 fromLineNumber:8015];

          v35 = PLLogCommon();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            __46__PLBatteryUIService_initOperatorDependancies__block_invoke_cold_1();
          }
        }
      }

      objc_end_catch();
      JUMPOUT(0x25EFD5B28);
    }

    objc_begin_catch(exception_object);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id PLLogBH()
{
  if (PLLogBH_onceToken != -1)
  {
    PLLogBH_cold_1();
  }

  v1 = PLLogBH___logObj;

  return v1;
}

uint64_t __PLLogBH_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "batteryhealth");
  PLLogBH___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_25EFDF10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 208), 8);
  _Block_object_dispose((v35 - 176), 8);
  _Block_object_dispose((v35 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_11_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

id logHandle()
{
  if (logHandle_onceToken != -1)
  {
    logHandle_cold_1();
  }

  v1 = logHandle__logHandle;

  return v1;
}

uint64_t __logHandle_block_invoke()
{
  v0 = os_log_create("com.apple.PerfPowerServicesSignpostReader", "");
  logHandle__logHandle = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void NotificationCallback_0(uint64_t a1, void *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3032000000;
  v4[3] = __Block_byref_object_copy__18;
  v4[4] = __Block_byref_object_dispose__18;
  v5 = a2;
  v2 = dispatch_get_global_queue(-2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __NotificationCallback_block_invoke_0;
  block[3] = &unk_279A5C0C8;
  block[4] = v4;
  dispatch_async(v2, block);

  _Block_object_dispose(v4, 8);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id hdqRead16(mach_port_t a1, unsigned int a2)
{
  output[1] = *MEMORY[0x277D85DE8];
  output[0] = 0;
  outputCnt = 1;
  v6 = a2;
  v2 = IOConnectCallScalarMethod(a1, 8u, &v6, 1u, output, &outputCnt);
  v3 = 0;
  if (!v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithShort:SLOWORD(output[0])];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id PLLogDuetServiceLpmSource()
{
  if (PLLogDuetServiceLpmSource_onceToken != -1)
  {
    PLLogDuetServiceLpmSource_cold_1();
  }

  v1 = PLLogDuetServiceLpmSource___logObj;

  return v1;
}

uint64_t __PLLogDuetServiceLpmSource_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "lpmsource");
  PLLogDuetServiceLpmSource___logObj = v0;

  return MEMORY[0x2821F96F8](v0);
}

void PLEmitSystemPowerSignpost_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void PLProcessCPU::PLProcessCPU(os_log_t log)
{
  *v1 = 0;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "PLProcessCPU initialized.", v1, 2u);
}

{
  *v1 = 0;
  _os_log_error_impl(&dword_25EE51000, log, OS_LOG_TYPE_ERROR, "Unable to allocate memory.", v1, 2u);
}

void updateDisplayIOReportAZLStats_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAZLStats_cold_2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAZLStats_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAZLStats_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __updateDisplayIOReportAZLStats_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAZLStats_block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAZLStats_block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAZLStats_block_invoke_cold_4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAZLStats_block_invoke_cold_5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void updateDisplayIOReportAODStats_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_25EE51000, v0, v1, "Got callback for updateDisplayIOReportAODStat with ioReportAODStats %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void updateDisplayIOReportAODStats_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 ioReportSample];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void updateDisplayIOReportAODStats_cold_3()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAODStats_cold_4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAODStats_cold_5()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void updateDisplayIOReportAODStats_cold_6()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __updateDisplayIOReportAODStats_block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_3(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_4(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_5(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_6(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_8(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_9(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_10(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_11(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_12(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_13(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __updateDisplayIOReportAODStats_block_invoke_cold_14(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  [a1 unsignedLongLongValue];
  v1 = [OUTLINED_FUNCTION_5_3() numberWithUnsignedLongLong:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}