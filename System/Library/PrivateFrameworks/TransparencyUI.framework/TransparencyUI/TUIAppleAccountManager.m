@interface TUIAppleAccountManager
- (TUIAppleAccountManager)initWithAccountStore:(id)a3;
- (void)silentRenewAppleAccountWithCompletionHandler:(id)a3;
@end

@implementation TUIAppleAccountManager

- (TUIAppleAccountManager)initWithAccountStore:(id)a3
{
  v5 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [TUIAppleAccountManager initWithAccountStore:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    [TUIAppleAccountManager initWithAccountStore:];
  }

  v9.receiver = self;
  v9.super_class = TUIAppleAccountManager;
  v6 = [(TUIAppleAccountManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountStore, a3);
  }

  return v7;
}

uint64_t __47__TUIAppleAccountManager_initWithAccountStore___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)silentRenewAppleAccountWithCompletionHandler:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    [TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:];
  }

  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    [TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:];
  }

  v5 = [(ACAccountStore *)self->_accountStore aida_accountForPrimaryiCloudAccount];
  v6 = *MEMORY[0x277CB90A0];
  v15[0] = *MEMORY[0x277CB9098];
  v15[1] = v6;
  v16[0] = MEMORY[0x277CBEC38];
  v16[1] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  objc_initWeak(&location, self);
  accountStore = self->_accountStore;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5;
  v11[3] = &unk_279DDAE20;
  objc_copyWeak(&v13, &location);
  v9 = v4;
  v12 = v9;
  [(ACAccountStore *)accountStore renewCredentialsForAccount:v5 options:v7 completion:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

void __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
    {
      __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5_cold_1();
    }

    v7 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2;
    if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:]_block_invoke";
      _os_log_impl(&dword_26F50B000, v7, OS_LOG_TYPE_ERROR, "%s, block strong self is nil", &v10, 0xCu);
    }
  }

  if (TRANSPARENCYUI_DEFAULT_LOG_BLOCK_2 != -1)
  {
    __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_5_cold_2();
  }

  v8 = TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2;
  if (os_log_type_enabled(TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2, OS_LOG_TYPE_DEBUG))
  {
    v10 = 136315906;
    v11 = "[TUIAppleAccountManager silentRenewAppleAccountWithCompletionHandler:]_block_invoke_2";
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = WeakRetained;
    _os_log_debug_impl(&dword_26F50B000, v8, OS_LOG_TYPE_DEBUG, "%s renewResult = %ld, error = %{public}@ on %{public}@", &v10, 0x2Au);
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_2()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

uint64_t __71__TUIAppleAccountManager_silentRenewAppleAccountWithCompletionHandler___block_invoke_8()
{
  TRANSPARENCYUI_DEFAULT_LOG_INTERNAL_2 = os_log_create("com.apple.Transparency", "ui");

  return MEMORY[0x2821F96F8]();
}

- (void)initWithAccountStore:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v5 = v0;
  v6 = v1;
  _os_log_debug_impl(&dword_26F50B000, v2, OS_LOG_TYPE_DEBUG, "%s accountStore = %{public}@ on %{public}@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)silentRenewAppleAccountWithCompletionHandler:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_26F50B000, v0, OS_LOG_TYPE_DEBUG, "%s  on %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end