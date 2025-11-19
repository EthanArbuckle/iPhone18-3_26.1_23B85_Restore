@interface TPSContentStatusCondition
+ (id)_contextualEventFromConditionDictionary:(id)a3;
- (TPSContentStatusCondition)init;
- (id)_valuesFromValuesArray:(id)a3;
- (id)targetingValidations;
@end

@implementation TPSContentStatusCondition

- (TPSContentStatusCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSContentStatusCondition;
  v2 = [(TPSContentStatusCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:11];
  }

  return v3;
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v6 = [(TPSCondition *)self values];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__TPSContentStatusCondition_targetingValidations__block_invoke;
  v9[3] = &unk_2789B0528;
  v7 = v5;
  v10 = v7;
  [v6 enumerateObjectsUsingBlock:v9];

  return v7;
}

void __49__TPSContentStatusCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[TPSContextualEventValidation alloc] initWithContextualEvent:v3];

  [*(a1 + 32) addObject:v4];
}

- (id)_valuesFromValuesArray:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __52__TPSContentStatusCondition__valuesFromValuesArray___block_invoke;
  v13 = &unk_2789B0550;
  v14 = self;
  v15 = v6;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __52__TPSContentStatusCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() _contextualEventFromConditionDictionary:v3];
    [*(a1 + 40) addObject:v5];
  }

  else
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __52__TPSContentStatusCondition__valuesFromValuesArray___block_invoke_cold_1(v3, v6);
    }
  }
}

+ (id)_contextualEventFromConditionDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 TPSSafeStringForKey:@"contentID"];
  v5 = [v3 TPSSafeIntegerForKey:@"statusType"];
  v6 = [v3 TPSSafeIntegerForKey:@"status"];

  v7 = objc_alloc(MEMORY[0x277D71728]);
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 initWithEventIdentifier:v9 contentIdentifier:v4 statusType:v5 status:v6];

  return v10;
}

void __52__TPSContentStatusCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unexpected value for content status condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end