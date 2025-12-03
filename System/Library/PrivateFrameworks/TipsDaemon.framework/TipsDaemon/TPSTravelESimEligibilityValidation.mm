@interface TPSTravelESimEligibilityValidation
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSTravelESimEligibilityValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke;
  v6[3] = &unk_2789AF8C8;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  [(TPSTravelESimEligibilityValidation *)self getCurrentStateWithCompletion:v6];
}

void __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)getCurrentStateWithCompletion:(id)completion
{
  v3 = MEMORY[0x277CC37B0];
  completionCopy = completion;
  v5 = [v3 alloc];
  v6 = [v5 initWithQueue:MEMORY[0x277D85CD0]];
  v9 = 0;
  v7 = [v6 shouldShoweSIMTravelTip:&v9];
  v8 = v9;
  completionCopy[2](completionCopy, v7, v8);
}

void __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1(id *a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*a1 name];
  v7 = [*a1 targetContext];
  v9 = 138412802;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = a2 & 1;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d", &v9, 0x1Cu);

  v8 = *MEMORY[0x277D85DE8];
}

@end