@interface TPSHRAccountInfoStatusValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSHRAccountInfoStatusValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[TPSHealthKitDefines sharedHealthStore];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = [objc_alloc(MEMORY[0x277CCD4B8]) initWithHealthStore:v5];
  v6 = v13[5];
  if (!v6)
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v7);

    v6 = v13[5];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__TPSHRAccountInfoStatusValidation_validateWithCompletion___block_invoke;
  v9[3] = &unk_2789B0F50;
  v9[4] = self;
  v8 = completionCopy;
  v10 = v8;
  v11 = &v12;
  [v6 determineMedicalRecordsAccountInfoStatusWithCompletion:v9];

  _Block_object_dispose(&v12, 8);
}

void __59__TPSHRAccountInfoStatusValidation_validateWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __59__TPSHRAccountInfoStatusValidation_validateWithCompletion___block_invoke_cold_1(a1, v5, v6);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    v8 = [*(a1 + 32) integerValue];
    v9 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1((a1 + 32), v8 == a2, v9);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void __59__TPSHRAccountInfoStatusValidation_validateWithCompletion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = [*(a1 + 32) name];
  v7 = [*(a1 + 32) targetContext];
  v9 = 138413058;
  v10 = v6;
  v11 = 2112;
  v12 = v7;
  v13 = 1024;
  v14 = 0;
  v15 = 2112;
  v16 = a2;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d. Error: %@", &v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

@end