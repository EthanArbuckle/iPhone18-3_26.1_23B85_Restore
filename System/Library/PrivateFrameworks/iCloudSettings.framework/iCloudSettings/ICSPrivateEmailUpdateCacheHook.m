@interface ICSPrivateEmailUpdateCacheHook
- (BOOL)shouldMatchElement:(id)a3;
- (BOOL)shouldMatchModel:(id)a3;
- (RUIServerHookDelegate)delegate;
- (void)_removePrivateEmailKey:(id)a3 withCompletion:(id)a4;
- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6;
- (void)processObjectModel:(id)a3 completion:(id)a4;
@end

@implementation ICSPrivateEmailUpdateCacheHook

- (void)processElement:(id)a3 attributes:(id)a4 objectModel:(id)a5 completion:(id)a6
{
  v8 = a6;
  v9 = [a4 objectForKeyedSubscript:@"privateEmailKey"];
  [(ICSPrivateEmailUpdateCacheHook *)self _removePrivateEmailKey:v9 withCompletion:v8];
}

- (void)processObjectModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 clientInfo];
  v8 = [v7 objectForKeyedSubscript:@"privateEmailKey"];

  [(ICSPrivateEmailUpdateCacheHook *)self _removePrivateEmailKey:v8 withCompletion:v6];
}

- (void)_removePrivateEmailKey:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CF02A0]);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__ICSPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke;
  v10[3] = &unk_27A666560;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 removePrivateEmailKey:v9 completion:v10];
}

void __72__ICSPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LogSubsystem();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__ICSPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke_cold_1(a1, v3, v5);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
LABEL_10:
      v7();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_275819000, v5, OS_LOG_TYPE_DEFAULT, "private email remove for key %@ is success", &v11, 0xCu);
    }

    v9 = *(a1 + 40);
    if (v9)
    {
      v7 = *(v9 + 16);
      goto LABEL_10;
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldMatchElement:(id)a3
{
  v3 = [a3 name];
  v4 = [@"action:hideMyEmailUpdateCache" isEqualToString:v3];

  return v4;
}

- (BOOL)shouldMatchModel:(id)a3
{
  v3 = [a3 clientInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CEC988]];
  v5 = [@"action:hideMyEmailUpdateCache" isEqualToString:v4];

  return v5;
}

- (RUIServerHookDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __72__ICSPrivateEmailUpdateCacheHook__removePrivateEmailKey_withCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_275819000, log, OS_LOG_TYPE_ERROR, "private email remove for key %@ failed with error %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end