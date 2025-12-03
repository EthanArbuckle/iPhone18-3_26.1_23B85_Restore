@interface TPSNRDeviceCapabilityCondition
- (TPSNRDeviceCapabilityCondition)init;
- (id)_valuesFromValuesArray:(id)array;
- (id)targetingValidations;
@end

@implementation TPSNRDeviceCapabilityCondition

- (TPSNRDeviceCapabilityCondition)init
{
  v5.receiver = self;
  v5.super_class = TPSNRDeviceCapabilityCondition;
  v2 = [(TPSNRDeviceCapabilityCondition *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(TPSCondition *)v2 setType:8];
  }

  return v3;
}

- (id)targetingValidations
{
  v3 = MEMORY[0x277CBEB18];
  values = [(TPSCondition *)self values];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(values, "count")}];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v6 = MEMORY[0x277CBEB38];
  values2 = [(TPSCondition *)self values];
  v8 = [v6 dictionaryWithCapacity:{objc_msgSend(values2, "count")}];

  values3 = [(TPSCondition *)self values];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke;
  v17[3] = &unk_2789B0838;
  v10 = v8;
  v18 = v10;
  v20 = &v21;
  v11 = v5;
  v19 = v11;
  [values3 enumerateObjectsUsingBlock:v17];

  if ([v10 count])
  {
    v12 = [(TPSDeviceCapabilityValidation *)[TPSNRDeviceCapabilityValidation alloc] initWithQueries:v10];
    [(TPSTargetingValidation *)v12 setJoinType:[(TPSCondition *)self joinType]];
    [v11 insertObject:v12 atIndex:0];
  }

  if (*(v22 + 24) == 1)
  {
    v13 = objc_alloc_init(TPSTargetingValidation);
    [v11 insertObject:v13 atIndex:0];
  }

  v14 = v19;
  v15 = v11;

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4 == 4)
  {
    v8 = [TPSCustomCapabilityValidationBuilder targetValidationForNRDeviceCapability:v3];
    [*(a1 + 40) addObject:v8];
    goto LABEL_7;
  }

  if (v4 != 3)
  {
    v11 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke_cold_2(v3);
    }

    goto LABEL_12;
  }

  v5 = [v3 key];
  if (!v5 || (v6 = v5, [v3 value], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke_cold_1(v3);
    }

LABEL_12:

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_13;
  }

  v8 = [v3 value];
  v9 = *(a1 + 32);
  v10 = [v3 key];
  [v9 setObject:v8 forKeyedSubscript:v10];

LABEL_7:
LABEL_13:
}

- (id)_valuesFromValuesArray:(id)array
{
  v3 = MEMORY[0x277CBEB18];
  arrayCopy = array;
  v5 = [v3 arrayWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__TPSNRDeviceCapabilityCondition__valuesFromValuesArray___block_invoke;
  v9[3] = &unk_2789B0078;
  v10 = v5;
  v6 = v5;
  [arrayCopy enumerateObjectsUsingBlock:v9];

  v7 = [v6 copy];

  return v7;
}

void __57__TPSNRDeviceCapabilityCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TPSNRDeviceCapability alloc] initWithDictionary:v3];
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__TPSNRDeviceCapabilityCondition__valuesFromValuesArray___block_invoke_cold_1(v3, v5);
    }
  }
}

void __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Invalid NRDevice Capability: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __54__TPSNRDeviceCapabilityCondition_targetingValidations__block_invoke_cold_2(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 debugDescription];
  OUTLINED_FUNCTION_0_1(&dword_232D6F000, v2, v3, "Unknown NRDevice Capability Type: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __57__TPSNRDeviceCapabilityCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unexpected value for NRDevice capability condition: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end