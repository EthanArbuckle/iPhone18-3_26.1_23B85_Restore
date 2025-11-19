void sub_1000017F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001808(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001820(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v3 localizedDescription];
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Error communicating with diagnose service: %{public}@", &v5, 0xCu);
  }

  [*(a1 + 32) diagnosticServiceStateDidChange:0xFFFFFFFFLL outputURL:0 error:v3];
}

void sub_1000018FC(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [v7 path];
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(*(*(a1 + 32) + 8) + 40) lastPathComponent];
      v14 = 138543362;
      v15 = v12;
      v13 = "Diagnose started into %{public}@";
LABEL_6:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v13, &v14, 0xCu);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 localizedFailureReason];
    v14 = 138543362;
    v15 = v12;
    v13 = "Error starting diagnose: %{public}@";
    goto LABEL_6;
  }
}

void sub_100001C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

void sub_100001CB4(void *a1, void *a2, char a3)
{
  v6 = a2;
  v7 = v6;
  if (!a1[4] || ([v6 lastPathComponent], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "containsString:", a1[4]), v8, (v9 & 1) == 0))
  {
    v13 = 0;
    [v7 getResourceValue:&v13 forKey:NSURLCreationDateKey error:0];
    v10 = v13;
    v11 = v13;
    v12 = v11;
    if ((a3 & 1) == 0 && [v11 compare:*(*(a1[5] + 8) + 40)] == 1)
    {
      objc_storeStrong((*(a1[5] + 8) + 40), v10);
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
    }
  }
}