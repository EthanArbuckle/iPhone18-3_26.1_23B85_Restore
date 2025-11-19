@interface TPSFamilyCircleValidation
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSFamilyCircleValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__TPSFamilyCircleValidation_validateWithCompletion___block_invoke;
  v6[3] = &unk_2789AF8C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSFamilyCircleValidation *)self getCurrentStateWithCompletion:v6];
}

void __52__TPSFamilyCircleValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  LODWORD(a2) = [a2 BOOLValue];
  v6 = a2 ^ [*(a1 + 32) BOOLValue] ^ 1;
  v7 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) name];
    v10 = [*(a1 + 32) targetContext];
    v11 = 138413058;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 1024;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_debug_impl(&dword_232D6F000, v7, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", &v11, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)getCurrentStateWithCompletion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = objc_alloc_init(MEMORY[0x277D08280]);
  v4 = v12[5];
  if (!v4)
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v3[2](v3, MEMORY[0x277CBEC28], v5);

    v4 = v12[5];
  }

  [v4 setCachePolicy:0];
  v6 = v12[5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__TPSFamilyCircleValidation_getCurrentStateWithCompletion___block_invoke;
  v8[3] = &unk_2789AFA70;
  v7 = v3;
  v9 = v7;
  v10 = &v11;
  [v6 startRequestWithCompletionHandler:v8];

  _Block_object_dispose(&v11, 8);
}

void __59__TPSFamilyCircleValidation_getCurrentStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 members];
  v7 = [v6 count] != 0;

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  (*(v8 + 16))(v8, v9, v5);

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

@end