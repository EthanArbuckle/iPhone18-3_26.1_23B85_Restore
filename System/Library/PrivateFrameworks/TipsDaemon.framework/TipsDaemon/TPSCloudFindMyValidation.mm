@interface TPSCloudFindMyValidation
- (void)validateWithCompletion:(id)completion;
@end

@implementation TPSCloudFindMyValidation

- (void)validateWithCompletion:(id)completion
{
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__11;
  v17 = __Block_byref_object_dispose__11;
  mEMORY[0x277D08F78] = [MEMORY[0x277D08F78] sharedInstance];
  v5 = v14[5];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    completionCopy[2](completionCopy, 0, v6);

    v5 = v14[5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__TPSCloudFindMyValidation_validateWithCompletion___block_invoke;
  v8[3] = &unk_2789B0ED8;
  v10 = v21;
  v11 = v19;
  v8[4] = self;
  v7 = completionCopy;
  v9 = v7;
  v12 = &v13;
  [v5 fmipStateWithCompletion:v8];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
}

void __51__TPSCloudFindMyValidation_validateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2 == 1;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = (a1 + 32);
  *(*(*(a1 + 56) + 8) + 24) = v3 == [*(a1 + 32) BOOLValue];
  v5 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __51__TPSCloudFindMyValidation_validateWithCompletion___block_invoke_cold_1(v4, a1 + 56, v5);
  }

  v6 = *(*(*(a1 + 56) + 8) + 24);
  (*(*(a1 + 40) + 16))();
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

void __51__TPSCloudFindMyValidation_validateWithCompletion___block_invoke_cold_1(id *a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = [*a1 name];
  v7 = [*a1 targetContext];
  v8 = *(*(*a2 + 8) + 24);
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 1024;
  v15 = v8;
  _os_log_debug_impl(&dword_232D6F000, a3, OS_LOG_TYPE_DEBUG, "%@ - targetContext: %@. Valid: %d", &v10, 0x1Cu);

  v9 = *MEMORY[0x277D85DE8];
}

@end