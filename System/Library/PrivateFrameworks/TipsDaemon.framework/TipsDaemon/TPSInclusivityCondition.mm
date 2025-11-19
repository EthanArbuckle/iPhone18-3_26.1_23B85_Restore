@interface TPSInclusivityCondition
- (id)_valuesFromValueTypeArray:(id)a3;
- (id)_valuesFromValuesArray:(id)a3;
@end

@implementation TPSInclusivityCondition

- (id)_valuesFromValueTypeArray:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(TPSCondition *)self valueType];
  v7 = [v6 isEqualToString:@"include"];

  if (v7)
  {
    v8 = v4;
    v9 = 0;
  }

  else
  {
    v10 = [(TPSCondition *)self valueType];
    v11 = [v10 isEqualToString:@"exclude"];

    if (v11)
    {
      v9 = v4;
    }

    else
    {
      v12 = [MEMORY[0x277D71778] targeting];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(TPSInclusivityCondition *)self _valuesFromValueTypeArray:v12];
      }

      v9 = 0;
    }

    v8 = 0;
  }

  v13 = [[TPSInclusivityInfo alloc] initWithTargetValues:v8 excludeValues:v9];
  [v5 addObject:v13];
  v14 = [v5 copy];

  return v14;
}

- (id)_valuesFromValuesArray:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v7 = [(TPSCondition *)self valueType];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [(TPSInclusivityCondition *)self _valuesFromValueTypeArray:v5];
  }

  else
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __50__TPSInclusivityCondition__valuesFromValuesArray___block_invoke;
    v15 = &unk_2789B0550;
    v16 = self;
    v10 = v6;
    v17 = v10;
    [v5 enumerateObjectsUsingBlock:&v12];

    v9 = [v10 copy];
  }

  return v9;
}

void __50__TPSInclusivityCondition__valuesFromValuesArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 TPSSafeArrayForKey:@"include"];
    v5 = [v3 TPSSafeArrayForKey:@"exclude"];
  }

  else
  {
    v6 = [MEMORY[0x277D71778] targeting];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __50__TPSInclusivityCondition__valuesFromValuesArray___block_invoke_cold_1(v3, a1, v6);
    }

    v5 = 0;
    v4 = 0;
  }

  v7 = [[TPSInclusivityInfo alloc] initWithTargetValues:v4 excludeValues:v5];
  [*(a1 + 40) addObject:v7];
}

- (void)_valuesFromValueTypeArray:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 valueType];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_232D6F000, a2, OS_LOG_TYPE_ERROR, "Unknown value type for include/exclude: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

void __50__TPSInclusivityCondition__valuesFromValuesArray___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = *(a2 + 32);
  v7 = v5;
  v10 = 138412546;
  v11 = v5;
  v12 = 2112;
  v13 = objc_opt_class();
  v8 = v13;
  _os_log_error_impl(&dword_232D6F000, a3, OS_LOG_TYPE_ERROR, "Unexpected value element type (%@) for condition: %@", &v10, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

@end