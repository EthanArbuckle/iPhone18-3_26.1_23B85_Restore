@interface NSDictionary(SafariCoreExtras)
+ (id)safari_dictionaryWithJSONData:()SafariCoreExtras options:;
+ (id)safari_dictionaryWithJSONOrPropertyListData:()SafariCoreExtras;
+ (id)safari_dictionaryWithObjectsInFastEnumerationCollection:()SafariCoreExtras groupedUsingBlock:;
+ (id)safari_dictionaryWithPropertyListData:()SafariCoreExtras options:;
- (BOOL)safari_containsEntryPassingTest:()SafariCoreExtras;
- (BOOL)safari_containsObject:()SafariCoreExtras;
- (id)_safari_sortedTupleArray;
- (id)safari_arrayContainingObjectsOfClass:()SafariCoreExtras forKey:;
- (id)safari_dictionaryByMergingWithDictionary:()SafariCoreExtras;
- (id)safari_dictionaryByRemovingNullObjects;
- (id)safari_dictionaryWithLowercaseKeys;
- (id)safari_diffWithDictionary:()SafariCoreExtras;
- (id)safari_jsonRepresentation;
- (id)safari_mapAndFilterKeysAndObjectsUsingBlock:()SafariCoreExtras;
- (id)safari_mapAndFilterKeysUsingBlock:()SafariCoreExtras;
- (id)safari_mutableDeepCopy;
- (id)safari_objectsForKeys:()SafariCoreExtras;
- (id)safari_setValuesFromDictionary:()SafariCoreExtras;
- (id)safari_valueOfEntryPassingTest:()SafariCoreExtras;
- (id)safari_valuesOfEntriesPassingTest:()SafariCoreExtras;
- (uint64_t)safari_BOOLForKey:()SafariCoreExtras;
- (void)safari_URLForKey:()SafariCoreExtras;
- (void)safari_UUIDForKey:()SafariCoreExtras;
- (void)safari_arrayForKey:()SafariCoreExtras;
- (void)safari_dataForKey:()SafariCoreExtras;
- (void)safari_dateForKey:()SafariCoreExtras;
- (void)safari_dictionaryForKey:()SafariCoreExtras;
- (void)safari_mapTableForKey:()SafariCoreExtras;
- (void)safari_mutableArrayForKey:()SafariCoreExtras;
- (void)safari_numberForKey:()SafariCoreExtras;
- (void)safari_setForKey:()SafariCoreExtras;
- (void)safari_stringForKey:()SafariCoreExtras;
- (void)safari_stringForKey:()SafariCoreExtras returningNilIfEmpty:;
- (void)safari_userActivityForKey:()SafariCoreExtras;
@end

@implementation NSDictionary(SafariCoreExtras)

- (uint64_t)safari_BOOLForKey:()SafariCoreExtras
{
  v1 = [a1 safari_numberForKey:?];
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)safari_stringForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_numberForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_stringForKey:()SafariCoreExtras returningNilIfEmpty:
{
  v5 = [a1 safari_stringForKey:?];
  v6 = v5;
  if (a4 && ![v5 length])
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v7;
}

- (void)safari_dataForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_dateForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_arrayForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_mutableArrayForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)safari_arrayContainingObjectsOfClass:()SafariCoreExtras forKey:
{
  v5 = [a1 objectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__NSDictionary_SafariCoreExtras__safari_arrayContainingObjectsOfClass_forKey___block_invoke;
    v8[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v8[4] = a3;
    v6 = [v5 safari_filterObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)safari_dictionaryForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_URLForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_UUIDForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_setForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (void)safari_userActivityForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)safari_dictionaryByMergingWithDictionary:()SafariCoreExtras
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v14 = a1;
LABEL_15:
    v5 = v14;
    goto LABEL_16;
  }

  if (![a1 count])
  {
    v14 = v4;
    goto LABEL_15;
  }

  v5 = [a1 mutableCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [a1 objectForKeyedSubscript:v11];

        if (!v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          [v5 setObject:v13 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_setValuesFromDictionary:()SafariCoreExtras
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![v4 count])
  {
    v13 = a1;
LABEL_13:
    v5 = v13;
    goto LABEL_14;
  }

  if (![a1 count])
  {
    v13 = v4;
    goto LABEL_13;
  }

  v5 = [a1 mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v4 objectForKeyedSubscript:v11];
        [v5 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

LABEL_14:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)safari_dictionaryWithLowercaseKeys
{
  v18 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [a1 allKeys];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v9 = [a1 objectForKeyedSubscript:v8];
            v10 = [v8 lowercaseString];
            [v2 setObject:v9 forKeyedSubscript:v10];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = MEMORY[0x1E695E0F8];
  }

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)safari_jsonRepresentation
{
  v1 = [MEMORY[0x1E696ACB0] dataWithJSONObject:a1 options:0 error:0];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v1 encoding:4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)safari_mapTableForKey:()SafariCoreExtras
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

- (id)safari_mapAndFilterKeysAndObjectsUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__NSDictionary_SafariCoreExtras__safari_mapAndFilterKeysAndObjectsUsingBlock___block_invoke;
    v10[3] = &unk_1E7CF2678;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [a1 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

- (id)safari_mapAndFilterKeysUsingBlock:()SafariCoreExtras
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(a1, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68__NSDictionary_SafariCoreExtras__safari_mapAndFilterKeysUsingBlock___block_invoke;
    v10[3] = &unk_1E7CF2678;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [a1 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F8];
  }

  return v8;
}

- (id)_safari_sortedTupleArray
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [a1 allKeys];
  v4 = [v3 sortedArrayUsingSelector:sel_compare_];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v19[0] = *(*(&v15 + 1) + 8 * i);
        v10 = [a1 objectForKeyedSubscript:v15];
        v19[1] = v10;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
        [v2 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = [v2 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)safari_diffWithDictionary:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 _safari_sortedTupleArray];
  v6 = [v4 _safari_sortedTupleArray];

  v7 = [v5 safari_diffWithArray:v6];

  return v7;
}

- (id)safari_dictionaryByRemovingNullObjects
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__8;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__NSDictionary_SafariCoreExtras__safari_dictionaryByRemovingNullObjects__block_invoke;
  v6[3] = &unk_1E7CF26A0;
  v6[4] = a1;
  v6[5] = &v7;
  [a1 enumerateKeysAndObjectsUsingBlock:v6];
  v2 = v8[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [a1 copy];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (BOOL)safari_containsObject:()SafariCoreExtras
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __56__NSDictionary_SafariCoreExtras__safari_containsObject___block_invoke;
    v9[3] = &unk_1E7CF26C8;
    v10 = v4;
    v6 = [a1 keysOfEntriesPassingTest:v9];
    v7 = [v6 count] != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)safari_containsEntryPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__NSDictionary_SafariCoreExtras__safari_containsEntryPassingTest___block_invoke;
  v9[3] = &unk_1E7CF26F0;
  v10 = v4;
  v5 = v4;
  v6 = [a1 keysOfEntriesPassingTest:v9];
  v7 = [v6 count] != 0;

  return v7;
}

+ (id)safari_dictionaryWithPropertyListData:()SafariCoreExtras options:
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696AE40] propertyListWithData:a3 options:a4 format:0 error:0];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)safari_dictionaryWithJSONData:()SafariCoreExtras options:
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:a4 error:0];
    objc_opt_class();
    v5 = 0;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)safari_dictionaryWithJSONOrPropertyListData:()SafariCoreExtras
{
  v4 = a3;
  v5 = [a1 safari_dictionaryWithJSONData:v4 options:0];
  if (!v5)
  {
    v5 = [a1 safari_dictionaryWithPropertyListData:v4];
  }

  return v5;
}

+ (id)safari_dictionaryWithObjectsInFastEnumerationCollection:()SafariCoreExtras groupedUsingBlock:
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = v6[2](v6, v13);
        if (v14)
        {
          v15 = [v7 objectForKeyedSubscript:{v14, v21}];

          if (!v15)
          {
            v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v7 setObject:v16 forKeyedSubscript:v14];
          }

          v17 = [v7 objectForKeyedSubscript:v14];
          [v17 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v18 = [v7 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)safari_mutableDeepCopy
{
  v1 = [a1 safari_mapAndFilterKeysAndObjectsUsingBlock:&__block_literal_global_21];
  v2 = [v1 mutableCopy];

  return v2;
}

- (id)safari_objectsForKeys:()SafariCoreExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
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

        v11 = [a1 objectForKeyedSubscript:{*(*(&v15 + 1) + 8 * i), v15}];
        [v5 safari_addObjectUnlessNil:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)safari_valueOfEntryPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__NSDictionary_SafariCoreExtras__safari_valueOfEntryPassingTest___block_invoke;
  v10[3] = &unk_1E7CF2738;
  v11 = v4;
  v5 = v4;
  v6 = [a1 keysOfEntriesPassingTest:v10];
  v7 = [v6 anyObject];
  v8 = [a1 objectForKeyedSubscript:v7];

  return v8;
}

- (id)safari_valuesOfEntriesPassingTest:()SafariCoreExtras
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __68__NSDictionary_SafariCoreExtras__safari_valuesOfEntriesPassingTest___block_invoke;
  v13 = &unk_1E7CF2678;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

@end