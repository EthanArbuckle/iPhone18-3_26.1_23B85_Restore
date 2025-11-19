void sub_26C360304(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  _Unwind_Resume(a1);
}

id SDRGetAllLogFileURLs(void *a1)
{
  v2 = objc_alloc_init(SDRDiagnosticReporter);
  v3 = _SDRGetAllLogFileURLs(a1, v2);

  return v3;
}

id _SDRGetAllLogFileURLs(void *a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.symptomdiagnosticreporter", "framework");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    _SDRGetAllLogFileURLs_cold_1();
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v5 = dispatch_semaphore_create(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C35F000, v4, OS_LOG_TYPE_INFO, "SDRDiagnosticReporter - retrieving configuration", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___SDRGetAllLogFileURLs_block_invoke;
  v12[3] = &unk_279D2CD78;
  v6 = v4;
  v13 = v6;
  v15 = &v24;
  v16 = &v18;
  v7 = v5;
  v14 = v7;
  [v3 getAutoBugCaptureConfiguration:v12];
  v8 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v7, v8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_26C35F000, v6, OS_LOG_TYPE_INFO, "SDRDiagnosticReporter - ready to return results", buf, 2u);
  }

  v9 = v25[5];
  if (a1)
  {
    v10 = v19[5];
    if (v10)
    {
      *a1 = v10;
    }
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v9;
}

void sub_26C3605F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26C36283C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C363278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C3669D4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

__CFString *diagnosticErrorStringForCode(unsigned int a1)
{
  if (a1 > 0x29)
  {
    return @"Unknown error code";
  }

  else
  {
    return off_279D2D658[a1];
  }
}

id responseDict(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc(MEMORY[0x277CBEB38]);
  v13 = [MEMORY[0x277CCABB0] numberWithBool:a1];
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v15 = [v12 initWithObjectsAndKeys:{v13, @"success", v14, @"reason", 0}];

  if ([v9 count])
  {
    [v15 addEntriesFromDictionary:v9];
  }

  if ([v10 length])
  {
    [v15 setObject:v10 forKeyedSubscript:@"session"];
  }

  if ([v11 length])
  {
    [v15 setObject:v11 forKeyedSubscript:@"groupID"];
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v16 = diagnosticErrorStringForCode(a2);
    [v15 setObject:v16 forKeyedSubscript:@"reasonStr"];
  }

  return v15;
}

void _SDRGetAllLogFileURLs_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}