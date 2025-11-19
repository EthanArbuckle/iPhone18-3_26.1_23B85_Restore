@interface TPSScreenTimeCloudValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSScreenTimeCloudValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = objc_alloc_init(MEMORY[0x277D4BA08]);
  v5 = v13[5];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v4[2](v4, 0, v6);

    v5 = v13[5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__TPSScreenTimeCloudValidation_validateWithCompletion___block_invoke;
  v8[3] = &unk_2789B0BE0;
  v10 = v18;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  v11 = &v12;
  [v5 screenTimeSyncStateWithCompletionHandler:v8];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
}

void __55__TPSScreenTimeCloudValidation_validateWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2 == 2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = (a1 + 32);
  v5 = [*(a1 + 32) BOOLValue];
  v6 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1(v4, v3 == v5, v6);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;
}

@end