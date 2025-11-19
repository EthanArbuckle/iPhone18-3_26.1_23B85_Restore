@interface TPSAppleCardSetupValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSAppleCardSetupValidation

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
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = [MEMORY[0x277D37CD0] sharedInstance];
  v5 = v13[5];
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
    v4[2](v4, 0, v6);

    v5 = v13[5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__TPSAppleCardSetupValidation_validateWithCompletion___block_invoke;
  v8[3] = &unk_2789B0970;
  v10 = v18;
  v8[4] = self;
  v7 = v4;
  v9 = v7;
  v11 = &v12;
  [v5 accountsWithPassLocallyProvisionedWithCompletion:v8];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v18, 8);
}

void __54__TPSAppleCardSetupValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if ([v8 type] == 1 && objc_msgSend(v8, "feature") == 2)
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *(*(*(a1 + 48) + 8) + 24);
  v10 = [*(a1 + 32) BOOLValue];
  v11 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1((a1 + 32), v9 == v10, v11);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *MEMORY[0x277D85DE8];
}

@end