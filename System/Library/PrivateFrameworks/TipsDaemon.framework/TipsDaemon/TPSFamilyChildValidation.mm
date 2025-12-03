@interface TPSFamilyChildValidation
- (void)getCurrentStateWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSFamilyChildValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__13;
  v14 = __Block_byref_object_dispose__13;
  v15 = objc_alloc_init(MEMORY[0x277D08280]);
  [v11[5] setCachePolicy:0];
  v5 = v11[5];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke;
  v7[3] = &unk_2789B0F78;
  v7[4] = self;
  v6 = completionCopy;
  v8 = v6;
  v9 = &v10;
  [v5 startRequestWithCompletionHandler:v7];

  _Block_object_dispose(&v10, 8);
}

void __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 members];
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke_cold_1();
    }

    if ([*(a1 + 32) BOOLValue])
    {
      v10 = [v8 na_any:&__block_literal_global_8];
    }

    else
    {
      v10 = [v8 na_all:&__block_literal_global_4_0];
    }

    v7 = v10;
  }

  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = [*(a1 + 32) name];
    v16 = [*(a1 + 32) targetContext];
    v17 = 138413058;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    v21 = 1024;
    v22 = v7;
    v23 = 2112;
    v24 = v6;
    _os_log_debug_impl(&dword_232D6F000, v11, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", &v17, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isMe] & 1) == 0 && objc_msgSend(v2, "memberType") == 2;

  return v3;
}

- (void)getCurrentStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__13;
  v13 = __Block_byref_object_dispose__13;
  v14 = objc_alloc_init(MEMORY[0x277D08280]);
  [v10[5] setCachePolicy:0];
  v4 = v10[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__TPSFamilyChildValidation_getCurrentStateWithCompletion___block_invoke;
  v6[3] = &unk_2789AFA70;
  v5 = completionCopy;
  v7 = v5;
  v8 = &v9;
  [v4 startRequestWithCompletionHandler:v6];

  _Block_object_dispose(&v9, 8);
}

void __58__TPSFamilyChildValidation_getCurrentStateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v5 members];
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke_cold_1();
    }

    v7 = [v8 na_any:&__block_literal_global_8];
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  (*(v10 + 16))(v10, v11, v6);

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

BOOL __58__TPSFamilyChildValidation_getCurrentStateWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isMe] & 1) == 0 && objc_msgSend(v2, "memberType") == 2;

  return v3;
}

void __51__TPSFamilyChildValidation_validateWithCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5(&dword_232D6F000, v0, v1, "Family members received: %@ in circle: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end