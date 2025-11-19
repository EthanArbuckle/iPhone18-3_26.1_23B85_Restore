@interface TPSAppIntentCondition
- (TPSAppIntentCondition)init;
- (id)_valuesFromValuesArray:(id)a3;
- (id)targetingValidations;
@end

@implementation TPSAppIntentCondition

- (TPSAppIntentCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSAppIntentCondition;
  v2 = [(TPSAppIntentCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:12];
  }

  return v3;
}

- (id)_valuesFromValuesArray:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__TPSAppIntentCondition__valuesFromValuesArray___block_invoke;
  v9[3] = &unk_2789B0078;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __48__TPSAppIntentCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TPSAppIntent alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __48__TPSAppIntentCondition__valuesFromValuesArray___block_invoke_cold_1(v3, v5);
    }
  }
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(TPSCondition *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__TPSAppIntentCondition_targetingValidations__block_invoke;
  v9[3] = &unk_2789B11E8;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __45__TPSAppIntentCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TPSAppIntentValidation alloc] initWithAppIntent:v3];

  [*(a1 + 32) addObject:v4];
}

void __48__TPSAppIntentCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unexpected value for app intent condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end