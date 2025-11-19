@interface NSDictionary(RCAdditions)
+ (id)rc_dictionaryFromData:()RCAdditions error:;
+ (id)rc_dictionaryFromJSON:()RCAdditions error:;
- (id)rc_dictionaryByTransformingKeysWithKeyAndValueBlock:()RCAdditions;
- (id)rc_dictionaryByTransformingValuesWithKeyAndValueBlock:()RCAdditions;
- (id)rc_subdictionaryForKeys:()RCAdditions;
@end

@implementation NSDictionary(RCAdditions)

+ (id)rc_dictionaryFromData:()RCAdditions error:
{
  if (a3)
  {
    v5 = a3;
    v6 = objc_opt_class();
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:a4];

    v8 = RCCheckedDynamicCast(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)rc_dictionaryFromJSON:()RCAdditions error:
{
  v5 = [a3 dataUsingEncoding:4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:0 error:a4];
    v8 = RCCheckedDynamicCast(v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rc_dictionaryByTransformingKeysWithKeyAndValueBlock:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSDictionary(RCAdditions) rc_dictionaryByTransformingKeysWithKeyAndValueBlock:];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__NSDictionary_RCAdditions__rc_dictionaryByTransformingKeysWithKeyAndValueBlock___block_invoke;
  v11[3] = &unk_278230008;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)rc_dictionaryByTransformingValuesWithKeyAndValueBlock:()RCAdditions
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NSDictionary(RCAdditions) rc_dictionaryByTransformingValuesWithKeyAndValueBlock:];
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __83__NSDictionary_RCAdditions__rc_dictionaryByTransformingValuesWithKeyAndValueBlock___block_invoke;
  v11[3] = &unk_278230008;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)rc_subdictionaryForKeys:()RCAdditions
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [a1 objectForKeyedSubscript:{v11, v15}];
        if (v12)
        {
          [v5 setObject:v12 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)rc_dictionaryByTransformingKeysWithKeyAndValueBlock:()RCAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "transformBlock", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)rc_dictionaryByTransformingValuesWithKeyAndValueBlock:()RCAdditions .cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3(&dword_2179FC000, MEMORY[0x277D86220], v1, "*** Assertion failure: %s %s:%d %{public}@", v2, v3, v4, v5, "transformBlock", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end