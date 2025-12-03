@interface TPSPairedAirTagValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSPairedAirTagValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = objc_alloc_init(MEMORY[0x277D49638]);
  v5 = v13[5];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v6);

    v5 = v13[5];
  }

  v7 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D49810]];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__TPSPairedAirTagValidation_validateWithCompletion___block_invoke;
  v9[3] = &unk_2789B0A18;
  v9[4] = self;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v12;
  [v5 allBeaconsOfTypes:v7 completion:v9];

  _Block_object_dispose(&v12, 8);
}

void __52__TPSPairedAirTagValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 count];
  v4 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__TPSPairedAirTagValidation_validateWithCompletion___block_invoke_cold_1(a1, v3 != 0, v4);
  }

  (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void __52__TPSPairedAirTagValidation_validateWithCompletion___block_invoke_cold_1(uint64_t a1, char a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) name];
  v7 = [*(a1 + 32) targetContext];
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