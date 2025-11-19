@interface TUIKTAppIntentsData
- (TUIKTAppIntentsData)init;
- (void)init;
- (void)publicVerificationCodeWithCompletion:(id)a3;
- (void)statusWithCompletion:(id)a3;
@end

@implementation TUIKTAppIntentsData

- (TUIKTAppIntentsData)init
{
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
  {
    [TUIKTAppIntentsData init];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTAppIntentsData init];
  }

  v10.receiver = self;
  v10.super_class = TUIKTAppIntentsData;
  v3 = [(TUIKTAppIntentsData *)&v10 init];
  if (v3)
  {
    v4 = objc_opt_new();
    stateManager = v3->_stateManager;
    v3->_stateManager = v4;

    v6 = objc_alloc(MEMORY[0x277D73568]);
    v7 = [v6 initWithApplication:*MEMORY[0x277D735B0]];
    ktStatus = v3->_ktStatus;
    v3->_ktStatus = v7;
  }

  return v3;
}

uint64_t __27__TUIKTAppIntentsData_init__block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)statusWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
  {
    [TUIKTAppIntentsData statusWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTAppIntentsData statusWithCompletion:];
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
  {
    [TUIKTAppIntentsData statusWithCompletion:];
  }

  v5 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[TUIKTAppIntentsData statusWithCompletion:]";
    v14 = 2114;
    v15 = self;
    _os_log_impl(&dword_26F50B000, v5, OS_LOG_TYPE_DEFAULT, "%s getting CKV status on %{public}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v6 = dispatch_get_global_queue(33, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_9;
  v9[3] = &unk_279DDAF50;
  objc_copyWeak(&v11, buf);
  v10 = v4;
  v7 = v4;
  dispatch_async(v6, v9);

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_6()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_9(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained ktStatus];
    v21 = 0;
    v5 = [v4 status:&v21];
    v6 = v21;

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
    {
      __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_9_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v23 = "[TUIKTAppIntentsData statusWithCompletion:]_block_invoke_2";
      v24 = 2114;
      v25 = v5;
      v26 = 2114;
      v27 = v6;
      v28 = 2114;
      v29 = v3;
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%s got CKV status = %{public}@, error = %{public}@ on %{public}@", buf, 0x2Au);
    }

    v8 = [v3 stateManager];
    [v8 updateStateWithKTStatusResult:v5];

    v9 = [v3 stateManager];
    v10 = [v9 stateLabel];

    if (![v10 length])
    {
      v11 = [v3 stateManager];
      if ([v11 optIn] == 1)
      {
        v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v13 = [v12 localizedStringForKey:@"CKV_STATUS_ENABLED" value:&stru_287F92480 table:@"Localizable"];
      }

      else
      {
        v12 = [v3 stateManager];
        v16 = [v12 optIn];
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = v17;
        if (v16)
        {
          v19 = @"CKV_STATUS_PENDING";
        }

        else
        {
          v19 = @"CKV_STATUS_DISABLED";
        }

        v13 = [v17 localizedStringForKey:v19 value:&stru_287F92480 table:@"Localizable"];

        v10 = v18;
      }

      v10 = v13;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
    {
      __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_9_cold_2();
    }

    v14 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v23 = "[TUIKTAppIntentsData statusWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v14, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v6 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"object deallocated"];
    (*(v15 + 16))(v15, &stru_287F92480, v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __44__TUIKTAppIntentsData_statusWithCompletion___block_invoke_17()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)publicVerificationCodeWithCompletion:(id)a3
{
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
  {
    [TUIKTAppIntentsData publicVerificationCodeWithCompletion:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEBUG))
  {
    [TUIKTAppIntentsData publicVerificationCodeWithCompletion:];
  }

  objc_initWeak(&location, self);
  v5 = dispatch_get_global_queue(33, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_35;
  block[3] = &unk_279DDAF50;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

uint64_t __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_35(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained ktStatus];
    v20 = 0;
    v5 = [v4 status:&v20];
    v6 = v20;

    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
    {
      __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_35_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v22 = "[TUIKTAppIntentsData publicVerificationCodeWithCompletion:]_block_invoke_2";
      v23 = 2114;
      v24 = v5;
      v25 = 2114;
      v26 = v6;
      v27 = 2114;
      v28 = v3;
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_DEFAULT, "%s got CKV status = %{public}@, error = %{public}@ on %{public}@", buf, 0x2Au);
    }

    v8 = [v3 stateManager];
    [v8 updateStateWithKTStatusResult:v5];

    v9 = [MEMORY[0x277D73538] accountPublicID:*MEMORY[0x277D735B0]];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"VERIFICATION_CODE_NOT_AVAILABLE" value:&stru_287F92480 table:@"Localizable"];

    v12 = [v3 stateManager];
    if ([v12 optIn] == 1)
    {
      v13 = [v9 publicAccountIdentity];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v11;
      }

      v16 = v15;
    }

    else
    {
      v16 = v11;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_18 != -1)
    {
      __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_35_cold_2();
    }

    v17 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[TUIKTAppIntentsData publicVerificationCodeWithCompletion:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v17, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", buf, 0xCu);
    }

    v18 = *(a1 + 32);
    v6 = [MEMORY[0x277D735A0] errorWithDomain:*MEMORY[0x277D735F0] code:-120 description:@"object deallocated"];
    (*(v18 + 16))(v18, &stru_287F92480, v6);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __60__TUIKTAppIntentsData_publicVerificationCodeWithCompletion___block_invoke_38()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_18 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)statusWithCompletion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)publicVerificationCodeWithCompletion:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_26F50B000, v0, v1, "%s  on %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end