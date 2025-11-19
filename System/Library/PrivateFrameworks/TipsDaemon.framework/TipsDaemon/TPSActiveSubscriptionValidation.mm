@interface TPSActiveSubscriptionValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSActiveSubscriptionValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CEC398] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke;
  v7[3] = &unk_2789B0FF0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getAllIAPsForActiveAccountWithResultHandler:v7];
}

void __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v5)
    {
      v8 = [MEMORY[0x277CBEAA8] now];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_2;
      aBlock[3] = &unk_2789B0FA0;
      v9 = v8;
      v23 = v9;
      v10 = _Block_copy(aBlock);
      if ([MEMORY[0x277D71740] debugActiveIAPs])
      {
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_3;
        v20[3] = &unk_2789B0FC8;
        v11 = &v21;
        v21 = v10;
        v12 = v10;
        v13 = [v5 na_filter:v20];
        v14 = [v13 count] != 0;
      }

      else
      {
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_4;
        v18[3] = &unk_2789B0FC8;
        v11 = &v19;
        v19 = v10;
        v15 = v10;
        v14 = [v5 na_any:v18];
      }
    }

    else
    {
      v14 = 0;
    }

    v16 = [*(a1 + 32) BOOLValue];
    v17 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __61__TPSTravelESimEligibilityValidation_validateWithCompletion___block_invoke_cold_1((a1 + 32), v14 == v16, v17);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
}

BOOL __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == 3)
  {
    v4 = [v3 expirationDate];
    if (v4)
    {
      v5 = [v3 expirationDate];
      v6 = [v5 compare:*(a1 + 32)] != -1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 32) + 16))();
  if (v4)
  {
    v5 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_3_cold_1(v3, v5);
    }
  }

  return v4;
}

void __58__TPSActiveSubscriptionValidation_validateWithCompletion___block_invoke_3_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Found subscription: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end