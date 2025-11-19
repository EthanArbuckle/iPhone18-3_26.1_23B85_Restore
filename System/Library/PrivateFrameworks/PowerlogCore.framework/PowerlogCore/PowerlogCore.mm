void notificationCallback(__CFNotificationCenter *a1, void *a2, void *a3, void *a4, void *a5)
{
  if (a2)
  {
    state64 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__9;
    v24 = __Block_byref_object_dispose__9;
    v25 = a2;
    if (CFNotificationCenterGetDarwinNotifyCenter() == a1)
    {
      if ([v21[5] isStateRequired] && objc_msgSend(v21[5], "stateToken") && !notify_get_state(objc_msgSend(v21[5], "stateToken"), &state64))
      {
        a5 = objc_opt_new();
        v11 = [MEMORY[0x1E696AD98] numberWithLongLong:state64];
        v12 = [v21[5] notificationName];
        [a5 setObject:v11 forKey:v12];
      }

      else
      {
        a5 = 0;
      }
    }

    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__9;
    v18[4] = __Block_byref_object_dispose__9;
    v19 = a3;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = __Block_byref_object_copy__9;
    v16[4] = __Block_byref_object_dispose__9;
    v17 = a4;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__9;
    v14[4] = __Block_byref_object_dispose__9;
    v9 = a5;
    v15 = v9;
    v10 = [v21[5] workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __notificationCallback_block_invoke;
    block[3] = &unk_1E851A068;
    block[4] = &v20;
    block[5] = v14;
    block[6] = v18;
    block[7] = v16;
    dispatch_async(v10, block);

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);

    _Block_object_dispose(v18, 8);
    _Block_object_dispose(&v20, 8);
  }
}

void sub_1D8613090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 136), 8);
  _Unwind_Resume(a1);
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

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __notificationCallback_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(*(a1[4] + 8) + 40) operatorBlock];
  v3[2](v3, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 40), *(*(a1[7] + 8) + 40));

  objc_autoreleasePoolPop(v2);
}

id PLLogTimeManager()
{
  if (PLLogTimeManager_onceToken != -1)
  {
    PLLogTimeManager_cold_1();
  }

  v1 = PLLogTimeManager__logHandle;

  return v1;
}

void ioCallBack(void *a1, int a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 operator];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __ioCallBack_block_invoke;
  block[3] = &unk_1E8519EC8;
  v14 = a2;
  v15 = a3;
  v12 = v7;
  v13 = a4;
  v10 = v7;
  dispatch_async(v9, block);
}

void __ioCallBack_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) operatorBlock];
  v3[2](v3, *(a1 + 48), *(a1 + 52), *(a1 + 40));

  objc_autoreleasePoolPop(v2);
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

id PPSLogCommon()
{
  if (PPSLogCommon_onceToken != -1)
  {
    PPSLogCommon_cold_1();
  }

  v1 = PPSLogCommon___logObj;

  return v1;
}

void sub_1D8616DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a52, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_1D8617BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void sub_1D86190F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PLCFPreferencesSetValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB8460](a1, a2, a3, a4, a5, v10);
}

uint64_t PLCFPreferencesCopyValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB83F0](a1, a2, a3, a4, v8);
}

void sub_1D861AD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D861B614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 112), 8);

  _Unwind_Resume(a1);
}

void IOHIDPropertyChangedCallback(uint64_t a1, void *a2, const void *a3, const void *a4)
{
  v7 = a2;
  CFRetain(a3);
  CFRetain(a4);
  v8 = [v7 operator];
  v9 = [v8 workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __IOHIDPropertyChangedCallback_block_invoke;
  block[3] = &unk_1E8519040;
  v12 = v7;
  v13 = a1;
  v14 = v7;
  v15 = a3;
  v16 = a4;
  v10 = v7;
  dispatch_async(v9, block);
}

void __IOHIDPropertyChangedCallback_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) operatorBlock];
  v3[2](v3, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));

  CFRelease(*(a1 + 56));
  CFRelease(*(a1 + 64));

  objc_autoreleasePoolPop(v2);
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void _PLStateChanged(uint64_t a1, uint64_t a2, void *a3)
{
  if (+[PLDefaults debugEnabled])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** PLStateChanged ***"];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PowerlogCore.m"];
    v6 = [v5 lastPathComponent];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PLStateChanged"];
    [PLCoreStorage logMessage:v4 fromFile:v6 fromFunction:v7 fromLineNumber:60];

    v8 = PLLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
    }
  }

  if (![a3 caseInsensitiveCompare:@"com.apple.powerlog.state_changed"])
  {
    v9 = +[PowerlogCore allowRun];
    v10 = +[PLXPCRelay sharedInstance];
    if (v9)
    {
      if (!_PLStateChanged_powerlogRelayIsRunning)
      {
        if ((_PLStateChanged_powerlogIsRunning & 1) == 0)
        {
          if (+[PLDefaults debugEnabled])
          {
            v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** starting powerlog ***"];
            v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PowerlogCore.m"];
            v13 = [v12 lastPathComponent];
            v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PLStateChanged"];
            [PLCoreStorage logMessage:v11 fromFile:v13 fromFunction:v14 fromLineNumber:83];

            v15 = PLLogCommon();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
            }
          }

          _PLStateChanged_powerlogIsRunning = 1;
          v16 = +[PowerlogCore sharedCore];
          [v16 startCore];
        }

        return;
      }

      if (+[PLDefaults debugEnabled])
      {
        v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Stop xpc relay ***"];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PowerlogCore.m"];
        v25 = [v24 lastPathComponent];
        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PLStateChanged"];
        [PLCoreStorage logMessage:v23 fromFile:v25 fromFunction:v26 fromLineNumber:68];

        v27 = PLLogCommon();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      _PLStateChanged_powerlogRelayIsRunning = 0;
      v28 = +[PLXPCRelay sharedInstance];
      [v28 stopRelay];

LABEL_32:
      exit(0);
    }

    if ((_PLStateChanged_powerlogRelayIsRunning & 1) == 0)
    {
      if (+[PLDefaults debugEnabled])
      {
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** Start xpc relay ***"];
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PowerlogCore.m"];
        v19 = [v18 lastPathComponent];
        v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PLStateChanged"];
        [PLCoreStorage logMessage:v17 fromFile:v19 fromFunction:v20 fromLineNumber:76];

        v21 = PLLogCommon();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      _PLStateChanged_powerlogRelayIsRunning = 1;
      v22 = +[PLXPCRelay sharedInstance];
      [v22 startRelay];
    }

    if (_PLStateChanged_powerlogIsRunning == 1)
    {
      if (+[PLDefaults debugEnabled])
      {
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"*** stopping powerlog ***"];
        v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogCore/PowerlogCore.m"];
        v31 = [v30 lastPathComponent];
        v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_PLStateChanged"];
        [PLCoreStorage logMessage:v29 fromFile:v31 fromFunction:v32 fromLineNumber:88];

        v33 = PLLogCommon();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          [PLSubmissionFile logSubmissionResultToCAWithErrorType:withFileType:withOverrideKeys:];
        }
      }

      v34 = +[PowerlogCore sharedCore];
      [v34 stopCore];

      _PLStateChanged_powerlogIsRunning = 0;
      goto LABEL_32;
    }
  }
}

void sub_1D86239F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8625930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D8625BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D8625E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D862611C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D8626394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D862659C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D8626B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1D862B0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862B270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862B5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862B7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862C9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  objc_sync_exit(v9);
  _Unwind_Resume(a1);
}

void sub_1D862E42C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862E660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862E8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862EAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862EC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D862EEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D863000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86312BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__167(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA71B0D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void setCapabilities(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  hasCapability__blockWrapper[0] = a3 != 0;
  v11 = &a9;
  do
  {
    v10 = v11;
    v11 += 8;
    hasCapability__blockWrapper[++v9] = *v10 != 0;
  }

  while (v9 != 8);
}

uint64_t PLGetCPUFamily()
{
  if (PLGetCPUFamily_onceToken != -1)
  {
    PLGetCPUFamily_cold_1();
  }

  result = 2001002;
  if (PLGetCPUFamily_cpu_type > 506291072)
  {
    if (PLGetCPUFamily_cpu_type <= 1418770315)
    {
      if (PLGetCPUFamily_cpu_type > 933271105)
      {
        switch(PLGetCPUFamily_cpu_type)
        {
          case 933271106:
            return 2001023;
          case 939270559:
            return 2001013;
          case 1404044789:
            return 2001017;
        }
      }

      else
      {
        switch(PLGetCPUFamily_cpu_type)
        {
          case 506291073:
            return 2001022;
          case 526772277:
            return 2001010;
          case 747742334:
            return 2001024;
        }
      }
    }

    else if (PLGetCPUFamily_cpu_type <= 1741614738)
    {
      switch(PLGetCPUFamily_cpu_type)
      {
        case 1418770316:
          return 2001009;
        case 1463508716:
          return 2001008;
        case 1479463068:
          return 2001012;
      }
    }

    else if (PLGetCPUFamily_cpu_type > 2009171117)
    {
      if (PLGetCPUFamily_cpu_type == 2028621756)
      {
        return 2001006;
      }

      if (PLGetCPUFamily_cpu_type == 2009171118)
      {
        return 2001003;
      }
    }

    else
    {
      if (PLGetCPUFamily_cpu_type == 1741614739)
      {
        return 2001026;
      }

      if (PLGetCPUFamily_cpu_type == 1801080018)
      {
        return 2001007;
      }
    }
  }

  else if (PLGetCPUFamily_cpu_type <= -823913144)
  {
    if (PLGetCPUFamily_cpu_type > -1471079479)
    {
      switch(PLGetCPUFamily_cpu_type)
      {
        case -1471079478:
          return 2001021;
        case -1439483605:
          return 2001005;
        case -1122301207:
          return 2001018;
      }
    }

    else
    {
      switch(PLGetCPUFamily_cpu_type)
      {
        case -1879695144:
          return 2001016;
        case -1829029944:
          return 2001025;
        case -1777893647:
          return 2001020;
      }
    }
  }

  else if (PLGetCPUFamily_cpu_type <= -310978391)
  {
    switch(PLGetCPUFamily_cpu_type)
    {
      case -823913143:
        return result;
      case -416119890:
        return 2001015;
      case -400654602:
        return 2001027;
    }
  }

  else if (PLGetCPUFamily_cpu_type > 260141637)
  {
    if (PLGetCPUFamily_cpu_type == 260141638)
    {
      return 2001014;
    }

    if (PLGetCPUFamily_cpu_type == 280134364)
    {
      return 2001011;
    }
  }

  else
  {
    if (PLGetCPUFamily_cpu_type == -310978390)
    {
      return 2001004;
    }

    if (PLGetCPUFamily_cpu_type == 214503012)
    {
      return 2001019;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t __PLLogTimeManager_block_invoke()
{
  PLLogTimeManager__logHandle = os_log_create("com.apple.powerlog", "time");

  return MEMORY[0x1EEE66BB8]();
}

id PLLogMetricdLifecycleManager()
{
  if (PLLogMetricdLifecycleManager_onceToken != -1)
  {
    PLLogMetricdLifecycleManager_cold_1();
  }

  v1 = PLLogMetricdLifecycleManager_log;

  return v1;
}

uint64_t __PLLogMetricdLifecycleManager_block_invoke()
{
  PLLogMetricdLifecycleManager_log = os_log_create("com.apple.powerlog", "perfpowermetricdLifecycleManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D8650E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__732(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1DA71B0D0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1D8651488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D86517C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_1D8653238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1D86535D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1D865388C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1D865410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Block_object_dispose(&a56, 8);
  _Unwind_Resume(a1);
}

void sub_1D8654C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_1D8658D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8658FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86591CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86593E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8659B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id PPSLogSignpostController()
{
  if (PPSLogSignpostController_onceToken != -1)
  {
    PPSLogSignpostController_cold_1();
  }

  v1 = PPSLogSignpostController__logHandle;

  return v1;
}

uint64_t __PPSLogSignpostController_block_invoke()
{
  PPSLogSignpostController__logHandle = os_log_create("com.apple.perfpowerservices.signpost", "controller");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D865BCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D865CC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D865D170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_1D865D9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D865EAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void applyIOIterator(void *a1, io_iterator_t a2)
{
  v6 = a1;
  v3 = IOIteratorNext(a2);
  if (v3)
  {
    v4 = v3;
    do
    {
      v5 = [v6 matchBlock];
      v5[2](v5, v4);

      IOObjectRelease(v4);
      v4 = IOIteratorNext(a2);
    }

    while (v4);
  }
}

id logPPSFeatureFlagReaderHelper()
{
  if (logPPSFeatureFlagReaderHelper_onceToken != -1)
  {
    logPPSFeatureFlagReaderHelper_cold_1();
  }

  v1 = logPPSFeatureFlagReaderHelper__logHandle;

  return v1;
}

uint64_t __logPPSFeatureFlagReaderHelper_block_invoke()
{
  logPPSFeatureFlagReaderHelper__logHandle = os_log_create("com.apple.powerlog", "PPSFeatureFlagReaderHelper");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D8663DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
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
  logHandle__logHandle = os_log_create("com.apple.PerfPowerServicesSignpostReader", "");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PPSLogCommon_block_invoke()
{
  PPSLogCommon___logObj = os_log_create("com.apple.powerlog", "PerfPowerServices");

  return MEMORY[0x1EEE66BB8]();
}

id sqlLog()
{
  if (sqlLog_onceToken != -1)
  {
    sqlLog_cold_1();
  }

  v1 = sqlLog___logObj;

  return v1;
}

uint64_t __sqlLog_block_invoke()
{
  sqlLog___logObj = os_log_create("com.apple.powerlog", "PPSSQLStorage");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_3_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

void sub_1D8671724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
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

void sub_1D8672FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

uint64_t __PLLogCommon_block_invoke()
{
  PLLogCommon___logObj = os_log_create("com.apple.powerlog", "");

  return MEMORY[0x1EEE66BB8]();
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

  return MEMORY[0x1EEE66BB8]();
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

  return MEMORY[0x1EEE66BB8]();
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

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __PLLogZlib_block_invoke()
{
  PLLogZlib___logObj = os_log_create("com.apple.powerlog", "zlib");

  return MEMORY[0x1EEE66BB8]();
}

void PLEmitPowerSignpost(void *a1, void *a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x1E69E9840];
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
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v9, "intValue")];
      goto LABEL_10;
    }

LABEL_9:
    v14 = MEMORY[0x1E696AEC0];
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

  v18 = *MEMORY[0x1E69E9840];
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
  stringIsUUID_hexChars = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"0123456789ABCDEFabcdef"];

  return MEMORY[0x1EEE66BB8]();
}

void kQueueEvent(uint64_t a1, uint64_t a2, void *a3)
{
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __kQueueEvent_block_invoke;
    v22[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v22[4] = v5;
    if (kQueueEvent_defaultOnce != -1)
    {
      dispatch_once(&kQueueEvent_defaultOnce, v22);
    }

    if (kQueueEvent_classDebugEnabled == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"kQueueEvent fdref=%@", a1];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
      v8 = [v7 lastPathComponent];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"kQueueEvent"];
      [PLCoreStorage logMessage:v6 fromFile:v8 fromFunction:v9 fromLineNumber:124];

      v10 = PLLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)v6 initWithOperator:v10 forService:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v17 = a3;
  v18 = [v17 dispatchQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __kQueueEvent_block_invoke_104;
  block[3] = &unk_1E85190B8;
  v21 = v17;
  v19 = v17;
  dispatch_async(v18, block);
}

BOOL __kQueueEvent_block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  kQueueEvent_classDebugEnabled = result;
  return result;
}

uint64_t __kQueueEvent_block_invoke_104(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) kQueueBlock];
  v3[2]();

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) enabled];
  if (result)
  {
    [*(a1 + 32) setEnabled:0];
    v5 = *(a1 + 32);

    return [v5 setEnabled:1];
  }

  return result;
}

void sub_1D8680208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D8681E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PPSDataStreamLog()
{
  if (PPSDataStreamLog_onceToken != -1)
  {
    PPSDataStreamLog_cold_1();
  }

  v1 = PPSDataStreamLog___logObj;

  return v1;
}

uint64_t __PPSDataStreamLog_block_invoke()
{
  PPSDataStreamLog___logObj = os_log_create("com.apple.powerlog", "DataStream");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PLLogABMClient(void)
{
  if (PLLogABMClient(void)::onceToken != -1)
  {
    PLLogABMClient();
  }

  return PLLogABMClient(void)::__logObj;
}

os_log_t ___Z14PLLogABMClientv_block_invoke()
{
  result = os_log_create("com.apple.powerlog", "abm-client");
  PLLogABMClient(void)::__logObj = result;
  return result;
}

void sub_1D86844AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_1D8684B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, xpc_object_t object, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  xpc_release(object);
  xpc_release(v40);

  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

uint64_t TelephonyXPC::Result::describe(TelephonyXPC::Result *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Result:'", 8);
  TelephonyXPC::Result::toString(*this, __p);
  if ((v13 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "'", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      goto LABEL_20;
    }

LABEL_13:
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, " Info:'", 7);
    v7 = *(this + 31);
    if (v7 >= 0)
    {
      v8 = this + 8;
    }

    else
    {
      v8 = *(this + 1);
    }

    if (v7 >= 0)
    {
      v9 = *(this + 31);
    }

    else
    {
      v9 = *(this + 2);
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "'", 1);
    goto LABEL_20;
  }

  if (*(this + 31))
  {
    goto LABEL_13;
  }

LABEL_20:
  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1DA71A790](&v18);
}

void sub_1D8684ED8(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1DA71A790](va);
  _Unwind_Resume(a1);
}

_BYTE *TelephonyXPC::Result::toString@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 <= -534716413)
  {
    if (a1 <= -534716415)
    {
      if (a1 == -534716416)
      {
        v2 = "kInternalError";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }

      if (a1 == -534716415)
      {
        v2 = "kServerError";
        return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }

      goto LABEL_21;
    }

    if (a1 == -534716414)
    {
      v2 = "kCommandError";
    }

    else
    {
      v2 = "kTimeout";
    }
  }

  else
  {
    if (a1 > -534716411)
    {
      switch(a1)
      {
        case -534716410:
          v2 = "kPermissionDenied";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case -534716409:
          v2 = "kNotAvailable";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
        case 0:
          v2 = "kSuccess";
          return std::string::basic_string[abi:ne200100]<0>(a2, v2);
      }

LABEL_21:
      v2 = "kInvalidErrorCode";
      return std::string::basic_string[abi:ne200100]<0>(a2, v2);
    }

    if (a1 == -534716412)
    {
      v2 = "kNotSupported";
    }

    else
    {
      v2 = "kRetry";
    }
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void sub_1D8685118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D86852A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D868577C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  v21 = *(v19 - 24);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D86858FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D8685C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t object)
{
  xpc_release(object);
  if (*(v25 - 65) < 0)
  {
    operator delete(*(v25 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_1D8686208(_Unwind_Exception *a1)
{
  xpc_release(*(v1 - 136));
  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void sub_1D8686B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void sub_1D86870F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 49) < 0)
  {
    operator delete(*(v29 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1D8687564(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1DA71A790](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1DA71A740](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1D8687620(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1DA71A700](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1DA71A710](v13);
  return a1;
}

void sub_1D8687890(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x1DA71A710](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1D8687870);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_1D8687AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8518FC0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long const*,long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D8687D9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(a1, a2);
  }

  std::vector<long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *OUTLINED_FUNCTION_3_2(uint64_t *result)
{
  v1 = *(result + 23);
  v2 = *result;
  return result;
}

id PLLogAppDeletion()
{
  if (PLLogAppDeletion_onceToken != -1)
  {
    PLLogAppDeletion_cold_1();
  }

  v1 = PLLogAppDeletion___logObj;

  return v1;
}

uint64_t __PLLogAppDeletion_block_invoke()
{
  PLLogAppDeletion___logObj = os_log_create("com.apple.powerlog", "appDeletion");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D8688504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t PLCFPreferencesSetAppValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB8448](a1, a2, a3, v6);
}

uint64_t PLCFPreferencesAppSynchronize(uint64_t a1)
{
  v2 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB83D0](a1, v2);
}

uint64_t PLCFPreferencesCopyAppValueWithContainer(uint64_t a1, uint64_t a2)
{
  v4 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB83D8](a1, a2, v4);
}

uint64_t PLCFPreferencesCopyAppValue(uint64_t a1, uint64_t a2)
{
  v4 = +[PLUtilities containerPath];

  return MEMORY[0x1EEDB83D8](a1, a2, v4);
}

id PLLogOSMetrics()
{
  if (PLLogOSMetrics_onceToken != -1)
  {
    PLLogOSMetrics_cold_1();
  }

  v1 = PLLogOSMetrics___logObj;

  return v1;
}

uint64_t __PLLogOSMetrics_block_invoke()
{
  PLLogOSMetrics___logObj = os_log_create("com.apple.PerfPowerServices", "osmetrics");

  return MEMORY[0x1EEE66BB8]();
}

void EnterSandbox(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = PLLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = a1;
    v8 = 2080;
    v9 = a2;
    _os_log_impl(&dword_1D8611000, v4, OS_LOG_TYPE_INFO, "In sandbox method %s and profile name %s", &v6, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void timeChangedNotificationReceived(uint64_t a1, void *a2, const void *a3)
{
  v5 = a2;
  if (v5 && CFEqual(a3, @"SignificantTimeChangeNotification"))
  {
    v4 = [v5 currentTime];
    [v5 checkForTimeChangeWithCurrentTime:v4];
    if ([MEMORY[0x1E695DF00] dateIsMidnightLocalTime:v4])
    {
      [v5 timeChangedToMidnightLocalTime];
    }
  }
}

uint64_t clockSetNotificationReceived(uint64_t a1, void *a2, const void *a3)
{
  v4 = a2;
  if (v4)
  {
    v7 = v4;
    if (CFEqual(a3, @"com.apple.system.clock_set"))
    {
      v5 = [v7 currentTime];
      [v7 checkForTimeChangeWithCurrentTime:v5];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

id PLLogArchiving()
{
  if (PLLogArchiving_onceToken != -1)
  {
    PLLogArchiving_cold_1();
  }

  v1 = PLLogArchiving___logObj;

  return v1;
}

uint64_t __PLLogArchiving_block_invoke()
{
  PLLogArchiving___logObj = os_log_create("com.apple.powerlog", "archiving");

  return MEMORY[0x1EEE66BB8]();
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

id RapidLog()
{
  if (RapidLog_onceToken != -1)
  {
    RapidLog_cold_1();
  }

  v1 = RapidLog__RapidLog;

  return v1;
}

uint64_t __RapidLog_block_invoke()
{
  RapidLog__RapidLog = os_log_create("com.apple.powerlog", "Rapid");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D86A08A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86A0CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _submitTaskingCAEventPayload(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PLLogSubmission();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = @"com.apple.perfpowerservices.tasking.state";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Logging CoreAnalytics event %@ for reason:%@", buf, 0x16u);
  }

  v8 = v3;
  v6 = v3;
  AnalyticsSendEventLazy();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D86ABEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86AC5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sqlConnectionHandle()
{
  if (sqlConnectionHandle_onceToken != -1)
  {
    sqlConnectionHandle_cold_1();
  }

  v1 = sqlConnectionHandle___logObj;

  return v1;
}

uint64_t __sqlConnectionHandle_block_invoke()
{
  sqlConnectionHandle___logObj = os_log_create("com.apple.powerlog", "PLSQLiteConnection");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D86ADCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86ADEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1D86B284C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const char *OUTLINED_FUNCTION_12(sqlite3 **a1)
{
  v2 = *a1;

  return sqlite3_errmsg(v2);
}

id logHandleRbdcHelper()
{
  if (logHandleRbdcHelper_onceToken != -1)
  {
    logHandleRbdcHelper_cold_1();
  }

  v1 = logHandleRbdcHelper__logHandle;

  return v1;
}

uint64_t __logHandleRbdcHelper_block_invoke()
{
  logHandleRbdcHelper__logHandle = os_log_create("com.apple.powerlog", "rbdcConverterHelper");

  return MEMORY[0x1EEE66BB8]();
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

  return MEMORY[0x1EEE66BB8]();
}

void sub_1D86C3858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

id PLLogThreadStats()
{
  if (PLLogThreadStats_onceToken != -1)
  {
    PLLogThreadStats_cold_1();
  }

  v1 = PLLogThreadStats___logObj;

  return v1;
}

uint64_t __PLLogThreadStats_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog.threadstats", "");
  PLLogThreadStats___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1D86CEDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

void _submitTaskingTypeCAEventPayload(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = PLLogSubmission();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v10 = @"com.apple.perfpowerservices.tasking.type";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_1D8611000, v5, OS_LOG_TYPE_DEFAULT, "Logging CoreAnalytics event %@ for reason:%@", buf, 0x16u);
  }

  v8 = v3;
  v6 = v3;
  AnalyticsSendEventLazy();

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1D86DA49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id PPSCoreStorageLog()
{
  if (PPSCoreStorageLog_onceToken != -1)
  {
    PPSCoreStorageLog_cold_1();
  }

  v1 = PPSCoreStorageLog___logObj;

  return v1;
}

uint64_t __PPSCoreStorageLog_block_invoke()
{
  v0 = os_log_create("com.apple.powerlog", "PPSCoreStorage");
  PPSCoreStorageLog___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0);
}

void sub_1D86DB258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void didReceiveLogNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 log];
  }
}

void sub_1D86DF7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1D86E2E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void PLEmitSystemPowerSignpost_cold_1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t abm::client::RegisterEventHandler()
{
  return MEMORY[0x1EEDECAF8]();
}

{
  return MEMORY[0x1EEDECB00]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}