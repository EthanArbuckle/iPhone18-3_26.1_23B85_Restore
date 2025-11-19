@interface TPSContactsFavoriteValidation
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSContactsFavoriteValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__TPSContactsFavoriteValidation_validateWithCompletion___block_invoke;
  v6[3] = &unk_2789AF8C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSContactsFavoriteValidation *)self getCurrentStateWithCompletion:v6];
}

void __56__TPSContactsFavoriteValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v4 = MEMORY[0x277D716E8];
  v5 = a3;
  if ([v4 isCellularChinaSKUDevice])
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(TPSContactsMeCardValidation *)self validateWithCompletion:v6];
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:13 userInfo:0];
    v5[2](v5, 0, v7);
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBDAB8]);
    v8 = [objc_alloc(MEMORY[0x277CBDAF8]) initWithContactStore:v12];
    v9 = [v8 entries];
    v10 = [v9 count] != 0;

    v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    (v5)[2](v5, v11, 0);
  }
}

@end