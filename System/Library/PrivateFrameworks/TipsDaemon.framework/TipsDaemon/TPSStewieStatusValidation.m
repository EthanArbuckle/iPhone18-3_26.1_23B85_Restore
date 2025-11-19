@interface TPSStewieStatusValidation
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSStewieStatusValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TPSStewieStatusValidation_validateWithCompletion___block_invoke;
  v6[3] = &unk_2789AF8C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSStewieStatusValidation *)self getCurrentStateWithCompletion:v6];
}

void __52__TPSStewieStatusValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 BOOLValue];
  v7 = v6 ^ [*(a1 + 32) BOOLValue];
  v8 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1((a1 + 32), v7 ^ 1, v8);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v3 = MEMORY[0x277CC37B0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithQueue:MEMORY[0x277D85CD0]];
  v10 = 0;
  v7 = [v6 getStewieSupport:&v10];
  v8 = v10;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "status")}];
  v4[2](v4, v9, v8);
}

@end