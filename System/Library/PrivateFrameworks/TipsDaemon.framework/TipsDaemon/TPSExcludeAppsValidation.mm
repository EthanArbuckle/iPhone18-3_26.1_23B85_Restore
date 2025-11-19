@interface TPSExcludeAppsValidation
- (void)validateWithCompletion:(id)a3;
@end

@implementation TPSExcludeAppsValidation

- (void)validateWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(TPSTargetingValidation *)self arrayValue];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke;
  v15[3] = &unk_2789B0078;
  v7 = v6;
  v16 = v7;
  [v5 enumerateObjectsUsingBlock:v15];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke_5;
  aBlock[3] = &unk_2789B0AD0;
  aBlock[4] = self;
  v8 = v4;
  v14 = v8;
  v9 = _Block_copy(aBlock);
  if ([v7 count])
  {
    v10 = [(TPSTargetingValidation *)self name];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke_8;
    v11[3] = &unk_2789AFFD8;
    v12 = v9;
    [TPSTargetingValidator validateConditions:v7 joinType:1 context:v10 cache:0 completionQueue:0 completionHandler:v11];
  }

  else
  {
    (*(v9 + 2))(v9, 1, 0);
  }
}

void __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TPSInstalledAppInfo alloc] initWithDictionary:v3];
    v5 = [[TPSInstalledAppsValidation alloc] initWithInstalledAppInfo:v4];
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke_cold_1(v3, v6);
    }
  }
}

uint64_t __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke_5(uint64_t a1, char a2)
{
  v4 = [MEMORY[0x277D71778] targeting];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __52__TPSPairedAirTagValidation_validateWithCompletion___block_invoke_cold_1(a1, a2, v4);
  }

  return (*(*(a1 + 40) + 16))();
}

void __51__TPSExcludeAppsValidation_validateWithCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_232D6F000, a2, OS_LOG_TYPE_DEBUG, "Unexpected value for exclude app condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end