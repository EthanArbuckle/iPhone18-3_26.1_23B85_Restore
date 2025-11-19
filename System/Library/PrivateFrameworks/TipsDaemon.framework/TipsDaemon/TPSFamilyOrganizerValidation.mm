@interface TPSFamilyOrganizerValidation
- (void)getCurrentStateWithCompletion:(id)a3;
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSFamilyOrganizerValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__TPSFamilyOrganizerValidation_validateWithCompletion___block_invoke;
  v6[3] = &unk_2789AF8C8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(TPSFamilyOrganizerValidation *)self getCurrentStateWithCompletion:v6];
}

void __55__TPSFamilyOrganizerValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__15;
  v13 = __Block_byref_object_dispose__15;
  v14 = objc_alloc_init(MEMORY[0x277D08280]);
  [v10[5] setCachePolicy:0];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__TPSFamilyOrganizerValidation_getCurrentStateWithCompletion___block_invoke;
  v6[3] = &unk_2789AFA70;
  v5 = v3;
  v7 = v5;
  v8 = &v9;
  [v4 startRequestWithCompletionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __62__TPSFamilyOrganizerValidation_getCurrentStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!v6)
  {
    v8 = [v5 members];
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __65__TPSFamilyChildAccountValidation_getCurrentStateWithCompletion___block_invoke_cold_1(v8, v5, v9);
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__TPSFamilyOrganizerValidation_getCurrentStateWithCompletion___block_invoke_2;
    v14[3] = &unk_2789B1288;
    v14[4] = &v15;
    [v8 enumerateObjectsUsingBlock:v14];

    v7 = *(v16 + 24);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7 & 1];
  (*(v10 + 16))(v10, v11, v6);

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  _Block_object_dispose(&v15, 8);
}

void __62__TPSFamilyOrganizerValidation_getCurrentStateWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 isMe];
  if (v6)
  {
    LOBYTE(v6) = [v7 isOrganizer];
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

@end