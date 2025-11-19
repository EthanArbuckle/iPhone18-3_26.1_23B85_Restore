@interface SPNVRAM
+ (BOOL)write:(id)a3;
+ (id)read;
+ (void)clear;
@end

@implementation SPNVRAM

+ (void)clear
{
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = [MEMORY[0x277D08F78] sharedInstance];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __16__SPNVRAM_clear__block_invoke;
  v6[3] = &unk_279B587C8;
  v7 = v2;
  v4 = v2;
  [v3 clearOfflineFindingInfoWithCompletion:v6];

  v5 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v4, v5);
}

void __16__SPNVRAM_clear__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LogCategory_NVRAM();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __16__SPNVRAM_clear__block_invoke_cold_1();
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "NVRAM cleared.", v6, 2u);
    }
  }
}

+ (id)read
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v2 = dispatch_group_create();
  dispatch_group_enter(v2);
  v3 = LogCategory_NVRAM();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2643D0000, v3, OS_LOG_TYPE_DEFAULT, "Beginning read of keys from NVRAM.", buf, 2u);
  }

  v4 = [MEMORY[0x277D08F78] sharedInstance];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __15__SPNVRAM_read__block_invoke;
  v17 = &unk_279B587F0;
  v5 = v2;
  v18 = v5;
  v19 = &v20;
  [v4 fetchOfflineFindingInfoWithCompletion:&v14];

  v6 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v5, v6);
  v7 = LogCategory_NVRAM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v21[5];
    v9 = [v8 length];
    v10 = @"(not-nil)";
    if (!v8)
    {
      v10 = @"(nil)";
    }

    *buf = 138543618;
    v27 = v10;
    v28 = 2048;
    v29 = v9;
    _os_log_impl(&dword_2643D0000, v7, OS_LOG_TYPE_DEFAULT, "Done waiting to read keys from NVRAM returnValue %{public}@ %lu", buf, 0x16u);
  }

  v11 = v21[5];
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __15__SPNVRAM_read__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = LogCategory_NVRAM();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __15__SPNVRAM_read__block_invoke_cold_1();
    }
  }

  else if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v9 = LogCategory_NVRAM();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = [v6 length];
      _os_log_impl(&dword_2643D0000, v9, OS_LOG_TYPE_DEFAULT, "Read %lu bytes from NVRAM.", &v11, 0xCu);
    }

    v8 = LogCategory_NVRAM();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __15__SPNVRAM_read__block_invoke_cold_2(v6, v8);
    }
  }

  else
  {
    v8 = LogCategory_NVRAM();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_2643D0000, v8, OS_LOG_TYPE_DEFAULT, "No key data received from NVRAM", &v11, 2u);
    }
  }

  dispatch_group_leave(*(a1 + 32));
  v10 = *MEMORY[0x277D85DE8];
}

+ (BOOL)write:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = LogCategory_NVRAM();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v3 length];
    *buf = 134217984;
    v22 = v6;
    _os_log_impl(&dword_2643D0000, v5, OS_LOG_TYPE_DEFAULT, "Writing %lu bytes to NVRAM.", buf, 0xCu);
  }

  v7 = LogCategory_NVRAM();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v3 fm_hexString];
    [(SPNVRAM *)v8 write:buf, v7];
  }

  v9 = [MEMORY[0x277D08F78] sharedInstance];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __17__SPNVRAM_write___block_invoke;
  v14[3] = &unk_279B58818;
  v16 = &v17;
  v10 = v4;
  v15 = v10;
  [v9 storeOfflineFindingInfo:v3 completion:v14];

  v11 = dispatch_time(0, 30000000000);
  dispatch_group_wait(v10, v11);
  LOBYTE(v9) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __17__SPNVRAM_write___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  if (v3)
  {
    *(v4 + 24) = 0;
    v5 = LogCategory_NVRAM();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __17__SPNVRAM_write___block_invoke_cold_1();
    }
  }

  else
  {
    *(v4 + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __16__SPNVRAM_clear__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "clearOfflineFindingInfoWithCompletion error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __15__SPNVRAM_read__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "fetchOfflineFindingInfoWithCompletion error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __15__SPNVRAM_read__block_invoke_cold_2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 fm_hexString];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_2643D0000, a2, OS_LOG_TYPE_DEBUG, "Read NVRAM data: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)write:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_2643D0000, log, OS_LOG_TYPE_DEBUG, "Writing NVRAM data: %@", buf, 0xCu);
}

void __17__SPNVRAM_write___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2643D0000, v0, v1, "storeOfflineFindingInfo error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end