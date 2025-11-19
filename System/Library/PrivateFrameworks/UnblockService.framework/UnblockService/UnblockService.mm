id TakeLiveStackshot()
{
  if (!stackshot_config_create())
  {
    v0 = *__error();
    v1 = _ublogt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      TakeLiveStackshot_cold_4();
    }

    goto LABEL_13;
  }

  if (stackshot_config_set_flags())
  {
    stackshot_config_dealloc();
    v0 = *__error();
    v1 = _ublogt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      TakeLiveStackshot_cold_1();
    }

LABEL_13:

    v2 = 0;
    *__error() = v0;
    goto LABEL_14;
  }

  if (stackshot_config_set_pid())
  {
    stackshot_config_dealloc();
    v0 = *__error();
    v1 = _ublogt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      TakeLiveStackshot_cold_2();
    }

    goto LABEL_13;
  }

  if (stackshot_capture_with_config())
  {
    stackshot_config_dealloc();
    v0 = *__error();
    v1 = _ublogt();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      TakeLiveStackshot_cold_3();
    }

    goto LABEL_13;
  }

  stackshot_buffer = stackshot_config_get_stackshot_buffer();
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:stackshot_buffer length:stackshot_config_get_stackshot_size()];
  stackshot_config_dealloc();
LABEL_14:

  return v2;
}

double findTimeSpentBlocked(void *a1)
{
  v1 = a1;
  if (([v1 isWaiting] & 1) != 0 || (v2 = 0.0, objc_msgSend(v1, "isWaitingUninterruptibly")))
  {
    v3 = [v1 timestampLastRan];

    v2 = 0.0;
    if (v3)
    {
      v4 = [v1 timestampLastRan];
      v5 = [v1 endTimestamp];
      [v4 deltaSecondsTo:v5 timeDomainPriorityList:&unk_288046F80 timeDomainUsed:0];
      v2 = v6;

      if (v2 < 0.0)
      {
        v2 = 0.0;
      }
    }
  }

  return v2;
}

void sub_27039A590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t WatchdogCodeForIssueType(uint64_t a1)
{
  if (a1 == 1)
  {
    return 3;
  }

  if (a1 == 2)
  {
    return 4;
  }

  v2 = *__error();
  v3 = _ublogt();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    WatchdogCodeForIssueType_cold_1();
  }

  *__error() = v2;
  return 3;
}

id UBCopyPathForPid(int a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (proc_pidpath(a1, buffer, 0x400u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buffer];
  }

  v2 = *MEMORY[0x277D85DE8];

  return v1;
}

id UBCopyBundleIDForPath(void *a1)
{
  v1 = MEMORY[0x277CBEBC0];
  v2 = a1;
  v3 = [[v1 alloc] initFileURLWithPath:v2 isDirectory:0];

  if (v3 && (v4 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle()) != 0)
  {
    v5 = v4;
    v6 = CFBundleGetIdentifier(v4);
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __48__UBUnblockReactiveRecovery_getDiagnosticsQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_BACKGROUND, 0);

  v2 = dispatch_queue_create("com.apple.unblock.diagnostics", v1);
  v3 = getDiagnosticsQueue_queue;
  getDiagnosticsQueue_queue = v2;

  if (!getDiagnosticsQueue_queue)
  {
    v4 = *__error();
    v5 = _ublogt();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__UBUnblockReactiveRecovery_getDiagnosticsQueue__block_invoke_cold_1();
    }

    *__error() = v4;
  }
}

uint64_t CompareProcessesAndThreads(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = [v7 name];
  v12 = [v9 name];
  v13 = v12;
  if (!v11)
  {
    if (v12)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v14 = [v11 compare:v12 options:577];
  if (!v14)
  {
LABEL_6:
    if (v8)
    {
      if (v10)
      {
        v15 = [v8 dqLabel];
        v16 = [v10 dqLabel];
        v17 = v16;
        if (v15)
        {
          if (v16)
          {
            v14 = [v15 compare:v16 options:577];
            if (!v14)
            {
LABEL_16:
              v14 = [v8 threadName];
              v18 = [v10 threadName];
              v19 = v18;
              v27 = v14;
              if (v14)
              {
                if (!v18)
                {
                  v26 = 0;
                  v14 = -1;
LABEL_26:

                  if ((v26 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_27;
                }

                v20 = [v14 compare:v18 options:577];
                if (v20)
                {
                  v14 = v20;
                  v26 = 0;
                  goto LABEL_26;
                }
              }

              else if (v18)
              {
                v26 = 0;
                v14 = 1;
                goto LABEL_26;
              }

              v26 = 1;
              goto LABEL_26;
            }
          }

          else
          {
            v14 = -1;
          }
        }

        else
        {
          if (!v16)
          {
            goto LABEL_16;
          }

          v14 = 1;
        }

        goto LABEL_29;
      }

LABEL_28:
      v14 = -1;
      goto LABEL_29;
    }

    if (!v10)
    {
LABEL_27:
      v21 = [v7 pid];
      if (v21 < [v9 pid])
      {
        goto LABEL_28;
      }

      v23 = [v7 pid];
      if (v23 <= [v9 pid])
      {
        if (!v8 || !v10)
        {
          goto LABEL_35;
        }

        v24 = [v8 tid];
        if (v24 < [v10 tid])
        {
          goto LABEL_28;
        }

        v25 = [v8 tid];
        if (v25 <= [v10 tid])
        {
LABEL_35:
          v14 = 0;
          goto LABEL_29;
        }
      }
    }

LABEL_13:
    v14 = 1;
  }

LABEL_29:

  return v14;
}

id __117__UBUnblockReactiveRecovery_fillInRecoveryInfo_deadlockNodeSelected_exhaustedTaskSelected_threadExhaustions_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "pid")}];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = objc_alloc(MEMORY[0x277D779B0]);
    v8 = [v3 pid];
    v9 = [v3 name];
    v6 = [v7 initWithPid:v8 name:v9 is3P:{objc_msgSend(*(a1 + 40), "taskIs3PApp:options:", v3, *(a1 + 48))}];

    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "pid")}];
    [v10 setObject:v6 forKeyedSubscript:v11];
  }

  return v6;
}

void __49__UBUnblockReactiveRecovery_taskIs3PApp_options___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 9);
    objc_sync_enter(v3);
    v4 = v6[9];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    [v4 setObject:0 forKeyedSubscript:v5];

    objc_sync_exit(v3);
  }

  dispatch_source_cancel(*(a1 + 32));
}

id __51__UBUnblockReactiveRecovery_emitTelemetryForError___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"Error";
  v1 = MEMORY[0x277CCABB0];
  v2 = [*(a1 + 32) code];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = -1;
  }

  v4 = [v1 numberWithInteger:v3];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

void __UBWQTotalThreadLimit_block_invoke()
{
  if (!_gUBWorkQueueTotalThreadLimit)
  {
    v2 = 4;
    if (sysctlbyname("kern.wq_max_threads", &_gUBWorkQueueTotalThreadLimit, &v2, 0, 0))
    {
      v0 = *__error();
      v1 = _ublogt();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        __UBWQTotalThreadLimit_block_invoke_cold_1();
      }

      *__error() = v0;
      _gUBWorkQueueTotalThreadLimit = 512;
    }
  }
}

void __UBWQConstrainedThreadLimit_block_invoke()
{
  if (!_gUBWorkQueueConstrainedThreadLimit)
  {
    v2 = 4;
    if (sysctlbyname("kern.wq_max_constrained_threads", &_gUBWorkQueueConstrainedThreadLimit, &v2, 0, 0))
    {
      v0 = *__error();
      v1 = _ublogt();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        __UBWQConstrainedThreadLimit_block_invoke_cold_1();
      }

      *__error() = v0;
      _gUBWorkQueueConstrainedThreadLimit = 64;
    }
  }
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

id _UBCopySanitizedString(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = MEMORY[0x277CCAB50];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  if (a2)
  {
    v12 = [MEMORY[0x277CCA900] alphanumericCharacterSet];
    v13 = [v12 invertedSet];
    [v8 formUnionWithCharacterSet:v13];

    goto LABEL_10;
  }

  if ((a2 & 2) != 0)
  {
    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    [v8 formUnionWithCharacterSet:v9];
  }

  else
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v10 = [v5 componentsSeparatedByCharactersInSet:v9];
    v11 = [v10 componentsJoinedByString:@" "];

    v5 = v11;
  }

LABEL_8:
  if ((a2 & 8) != 0)
  {
    [v8 addCharactersInString:@"[]"];
  }

LABEL_10:
  v14 = [v5 componentsSeparatedByCharactersInSet:v8];
  v15 = [v14 componentsJoinedByString:v7];

  return v15;
}

uint64_t __34__UBUnblockService_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = [[UBUnblockService alloc] _init];

  return MEMORY[0x2821F96F8]();
}

id _ublogt()
{
  if (_ublogt_onceToken != -1)
  {
    _ublogt_cold_1();
  }

  v1 = _ublogt_myLogger;

  return v1;
}

void ___ublogt_block_invoke()
{
  v0 = os_log_create("com.apple.unblock", "WatchdogTimeoutRecovery");
  v1 = _ublogt_myLogger;
  _ublogt_myLogger = v0;

  if (!_ublogt_myLogger && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    ___ublogt_block_invoke_cold_1();
  }
}

void TakeLiveStackshot_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void TakeLiveStackshot_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void TakeLiveStackshot_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void TakeLiveStackshot_cold_4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void WatchdogCodeForIssueType_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  _os_log_fault_impl(&dword_270397000, v0, OS_LOG_TYPE_FAULT, "Bad issue type %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __48__UBUnblockReactiveRecovery_getDiagnosticsQueue__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __UBWQTotalThreadLimit_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 8u);
  v4 = *MEMORY[0x277D85DE8];
}

void __UBWQConstrainedThreadLimit_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = *__error();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 8u);
  v4 = *MEMORY[0x277D85DE8];
}