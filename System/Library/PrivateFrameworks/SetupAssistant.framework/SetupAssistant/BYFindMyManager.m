@interface BYFindMyManager
- (BOOL)isFindMyEnabled;
@end

@implementation BYFindMyManager

- (BOOL)isFindMyEnabled
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v3, OS_LOG_TYPE_DEFAULT, "Will fetch Find My state.", buf, 2u);
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v4 = getFMDFMIPManagerClass_softClass;
  v26 = getFMDFMIPManagerClass_softClass;
  if (!getFMDFMIPManagerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __getFMDFMIPManagerClass_block_invoke;
    v21 = &unk_1E7D02730;
    v22 = &v23;
    __getFMDFMIPManagerClass_block_invoke(buf);
    v4 = v24[3];
  }

  v5 = v4;
  _Block_object_dispose(&v23, 8);
  v6 = [v4 sharedInstance];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __34__BYFindMyManager_isFindMyEnabled__block_invoke;
  v11[3] = &unk_1E7D028F0;
  v13 = &v14;
  v7 = v2;
  v12 = v7;
  [v6 fmipStateWithCompletion:v11];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  v8 = _BYLoggingFacility();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B862F000, v8, OS_LOG_TYPE_DEFAULT, "Did finish waiting for Find My state.", buf, 2u);
  }

  v9 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v9;
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _BYLoggingFacility();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_1(v5, v6);
    }
  }

  else
  {
    if (v7)
    {
      __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_2(a2, v6);
    }

    *(*(*(a1 + 40) + 8) + 24) = a2 == 1;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _BYIsInternalInstall();
  if ((v5 & 1) == 0)
  {
    v6 = MEMORY[0x1E696AEC0];
    v2 = [a1 domain];
    a1 = [v6 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(a1, "code")];
  }

  *buf = 138543362;
  v9 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch Find My state: %{public}@", buf, 0xCu);
  if (!v5)
  {
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __34__BYFindMyManager_isFindMyEnabled__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Did fetch Find My state %lu", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end