@interface TPSDeviceCapabilityCondition
- (TPSDeviceCapabilityCondition)init;
- (id)_valuesFromValuesArray:(id)a3;
- (id)targetingValidationsForType:(int64_t)a3;
@end

@implementation TPSDeviceCapabilityCondition

- (TPSDeviceCapabilityCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSDeviceCapabilityCondition;
  v2 = [(TPSDeviceCapabilityCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:1];
  }

  return v3;
}

- (id)targetingValidationsForType:(int64_t)a3
{
  v5 = MEMORY[0x277CBEB18];
  v6 = [(TPSCondition *)self values];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = MEMORY[0x277CBEB38];
  v9 = [(TPSCondition *)self values];
  v10 = [v8 dictionaryWithCapacity:{objc_msgSend(v9, "count")}];

  v11 = [(TPSCondition *)self values];
  v12 = a3 == 1;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke;
  v23 = &unk_2789B0F00;
  v27 = a3 == 0;
  v13 = v10;
  v24 = v13;
  v26 = &v29;
  v28 = v12;
  v14 = v7;
  v25 = v14;
  [v11 enumerateObjectsUsingBlock:&v20];

  if ([v13 count])
  {
    v15 = [(TPSDeviceCapabilityValidation *)[TPSGestaltValidation alloc] initWithQueries:v13];
    [(TPSTargetingValidation *)v15 setJoinType:[(TPSCondition *)self joinType]];
    [v14 insertObject:v15 atIndex:0];
  }

  if (*(v30 + 24) == 1)
  {
    v16 = objc_alloc_init(TPSTargetingValidation);
    [v14 insertObject:v16 atIndex:0];
  }

  v17 = v25;
  v18 = v14;

  _Block_object_dispose(&v29, 8);

  return v18;
}

void __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 == 2)
  {
    v8 = [TPSCustomCapabilityValidationBuilder targetValidationForCapability:v3];
    if ((*(a1 + 56) & 1) != 0 || ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v11 = 0) : (v11 = v8), *(a1 + 57) == [v11 isRegistrable]))
    {
      [*(a1 + 40) addObject:v8];
    }

    goto LABEL_13;
  }

  if (v4 != 1)
  {
    v12 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke_cold_2(v3);
    }

    goto LABEL_18;
  }

  if (*(a1 + 56) == 1)
  {
    v5 = [v3 key];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 value];

      if (v7)
      {
        v8 = [v3 value];
        v9 = *(a1 + 32);
        v10 = [v3 key];
        [v9 setObject:v8 forKeyedSubscript:v10];

LABEL_13:
        goto LABEL_19;
      }
    }

    v12 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke_cold_1(v3);
    }

LABEL_18:

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_19:
}

- (id)_valuesFromValuesArray:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__TPSDeviceCapabilityCondition__valuesFromValuesArray___block_invoke;
  v9[3] = &unk_2789B0078;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __55__TPSDeviceCapabilityCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TPSDeviceCapability alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__TPSDeviceCapabilityCondition__valuesFromValuesArray___block_invoke_cold_1(v3, v5);
    }
  }
}

void __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Invalid Device Capability: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __60__TPSDeviceCapabilityCondition_targetingValidationsForType___block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Unknown Device Capability Type: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __55__TPSDeviceCapabilityCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unexpected value for device capability condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end