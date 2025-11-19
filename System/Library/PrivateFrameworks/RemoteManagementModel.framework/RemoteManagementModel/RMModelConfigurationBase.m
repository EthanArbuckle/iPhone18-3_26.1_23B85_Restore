@interface RMModelConfigurationBase
+ (BOOL)usesKeychainAssets;
+ (id)assetTypes;
+ (id)combineArrayAppend:(id)a3 other:(id)a4;
+ (id)combineBooleanAnd:(id)a3 other:(id)a4;
+ (id)combineBooleanOr:(id)a3 other:(id)a4;
+ (id)combineDictionary:(id)a3 other:(id)a4;
+ (id)combineEnumFirst:(id)a3 other:(id)a4 enums:(id)a5;
+ (id)combineEnumLast:(id)a3 other:(id)a4 enums:(id)a5;
+ (id)combineFirst:(id)a3 other:(id)a4;
+ (id)combineMergeDictionary:(id)a3 other:(id)a4;
+ (id)combineNumberMax:(id)a3 other:(id)a4;
+ (id)combineNumberMin:(id)a3 other:(id)a4;
+ (id)combineSetIntersection:(id)a3 other:(id)a4;
+ (id)combineSetUnion:(id)a3 other:(id)a4;
- (id)assetReferencesFromKeyPaths:(id)a3 payloadObject:(id)a4;
- (void)_addAssetReference:(id)a3 identifier:(id)a4 keyPath:(id)a5 result:(id)a6 processedIdentifiers:(id)a7;
- (void)_walkObject:(id)a3 keyPath:(id)a4 assetReference:(id)a5 result:(id)a6 processedIdentifiers:(id)a7;
@end

@implementation RMModelConfigurationBase

+ (BOOL)usesKeychainAssets
{
  if (usesKeychainAssets_onceToken != -1)
  {
    +[RMModelConfigurationBase usesKeychainAssets];
  }

  v3 = usesKeychainAssets_keychainTypes;
  v4 = [a1 assetTypes];
  LOBYTE(v3) = [v3 intersectsSet:v4];

  return v3;
}

uint64_t __46__RMModelConfigurationBase_usesKeychainAssets__block_invoke()
{
  usesKeychainAssets_keychainTypes = [MEMORY[0x277CBEB98] setWithArray:&unk_287466C20];

  return MEMORY[0x2821F96F8]();
}

+ (id)assetTypes
{
  v2 = objc_opt_new();

  return v2;
}

- (id)assetReferencesFromKeyPaths:(id)a3 payloadObject:(id)a4
{
  v20 = self;
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v23 = a4;
  v22 = objc_opt_new();
  v21 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        v12 = [v11 keyPath];
        v13 = [v12 componentsSeparatedByString:@"."];

        v14 = [v13 firstObject];
        v15 = [v14 isEqualToString:@"$"];

        if (v15)
        {
          v16 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
          [(RMModelConfigurationBase *)v20 _walkObject:v23 keyPath:v16 assetReference:v11 result:v22 processedIdentifiers:v21];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v8);
  }

  v17 = [v22 copy];
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)_walkObject:(id)a3 keyPath:(id)a4 assetReference:(id)a5 result:(id)a6 processedIdentifiers:(id)a7
{
  v70 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v49 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = [v13 firstObject];
    v17 = [v16 isEqualToString:@"*"];

    if (v17)
    {
      if ([v13 count] == 1)
      {
        v18 = v13;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v48 = v12;
        v19 = [v12 allValues];
        v20 = [v19 countByEnumeratingWithState:&v62 objects:v69 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v63;
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v63 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v62 + 1) + 8 * i);
              v25 = [v18 objectAtIndexedSubscript:0];
              [(RMModelConfigurationBase *)self _addAssetReference:v49 identifier:v24 keyPath:v25 result:v14 processedIdentifiers:v15];
            }

            v21 = [v19 countByEnumeratingWithState:&v62 objects:v69 count:16];
          }

          while (v21);
        }

LABEL_11:

        v12 = v48;
LABEL_42:
        v13 = v18;
        goto LABEL_43;
      }

      v18 = v13;
      v37 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v38 = [v12 allValues];
      v39 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v59;
        do
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v59 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [(RMModelConfigurationBase *)self _walkObject:*(*(&v58 + 1) + 8 * j) keyPath:v37 assetReference:v49 result:v14 processedIdentifiers:v15];
          }

          v40 = [v38 countByEnumeratingWithState:&v58 objects:v68 count:16];
        }

        while (v40);
      }

      goto LABEL_41;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v26 = [v13 firstObject];
    v27 = [v12 valueForKey:v26];

    if ([v13 count] == 1)
    {
      if (v27)
      {
        v28 = [v13 objectAtIndexedSubscript:0];
        [(RMModelConfigurationBase *)self _addAssetReference:v49 identifier:v27 keyPath:v28 result:v14 processedIdentifiers:v15];
LABEL_19:
      }
    }

    else if (v27)
    {
      v28 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
      [(RMModelConfigurationBase *)self _walkObject:v27 keyPath:v28 assetReference:v49 result:v14 processedIdentifiers:v15];
      goto LABEL_19;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v13 firstObject];
    v30 = [v29 isEqualToString:@"*"];

    if (v30)
    {
      if ([v13 count] == 1)
      {
        v18 = v13;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v48 = v12;
        v19 = v12;
        v31 = [v19 countByEnumeratingWithState:&v54 objects:v67 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v55;
          do
          {
            for (k = 0; k != v32; ++k)
            {
              if (*v55 != v33)
              {
                objc_enumerationMutation(v19);
              }

              v35 = *(*(&v54 + 1) + 8 * k);
              v36 = [v18 objectAtIndexedSubscript:{0, v48}];
              [(RMModelConfigurationBase *)self _addAssetReference:v49 identifier:v35 keyPath:v36 result:v14 processedIdentifiers:v15];
            }

            v32 = [v19 countByEnumeratingWithState:&v54 objects:v67 count:16];
          }

          while (v32);
        }

        goto LABEL_11;
      }

      v18 = v13;
      v37 = [v13 subarrayWithRange:{1, objc_msgSend(v13, "count") - 1}];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = v12;
      v44 = [v38 countByEnumeratingWithState:&v50 objects:v66 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v51;
        do
        {
          for (m = 0; m != v45; ++m)
          {
            if (*v51 != v46)
            {
              objc_enumerationMutation(v38);
            }

            [(RMModelConfigurationBase *)self _walkObject:*(*(&v50 + 1) + 8 * m) keyPath:v37 assetReference:v49 result:v14 processedIdentifiers:v15];
          }

          v45 = [v38 countByEnumeratingWithState:&v50 objects:v66 count:16];
        }

        while (v45);
      }

LABEL_41:

      goto LABEL_42;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelConfigurationBase _walkObject:v49 keyPath:? assetReference:? result:? processedIdentifiers:?];
  }

LABEL_43:

  v43 = *MEMORY[0x277D85DE8];
}

- (void)_addAssetReference:(id)a3 identifier:(id)a4 keyPath:(id)a5 result:(id)a6 processedIdentifiers:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v15 containsObject:v12] & 1) == 0)
    {
      v16 = [RMModelAssetReference alloc];
      v17 = [v11 assetTypes];
      v18 = [(RMModelAssetReference *)v16 initWithIdentifier:v12 assetTypes:v17];
      [v14 addObject:v18];

      [v15 addObject:v12];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RMModelConfigurationBase _addAssetReference:v11 identifier:? keyPath:? result:? processedIdentifiers:?];
  }
}

+ (id)combineBooleanOr:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x277CCABB0];
      if ([v5 BOOLValue])
      {
        v9 = 1;
      }

      else
      {
        v9 = [v7 BOOLValue];
      }

      v10 = [v8 numberWithBool:v9];
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

+ (id)combineBooleanAnd:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x277CCABB0];
      if ([v5 BOOLValue])
      {
        v9 = [v7 BOOLValue];
      }

      else
      {
        v9 = 0;
      }

      v10 = [v8 numberWithBool:v9];
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

+ (id)combineNumberMin:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v8 = v5;
    if (v6)
    {
      if ([v5 compare:v6] == -1)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v9 = v8;

  return v9;
}

+ (id)combineNumberMax:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = v6;
  if (v5)
  {
    v8 = v5;
    if (v6)
    {
      if ([v5 compare:v6] == 1)
      {
        v8 = v5;
      }

      else
      {
        v8 = v7;
      }
    }
  }

  v9 = v8;

  return v9;
}

+ (id)combineEnumFirst:(id)a3 other:(id)a4 enums:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (!v8 || (v11 = [v9 indexOfObject:v7], v12 = objc_msgSend(v10, "indexOfObject:", v8), v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = v7;
      goto LABEL_7;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 >= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      v13 = [v10 objectAtIndexedSubscript:v16];
      goto LABEL_7;
    }
  }

  v13 = v8;
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)combineEnumLast:(id)a3 other:(id)a4 enums:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v7)
  {
    if (!v8 || (v11 = [v9 indexOfObject:v7], v12 = objc_msgSend(v10, "indexOfObject:", v8), v12 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = v7;
      goto LABEL_7;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v11 <= v12)
      {
        v16 = v12;
      }

      else
      {
        v16 = v11;
      }

      v13 = [v10 objectAtIndexedSubscript:v16];
      goto LABEL_7;
    }
  }

  v13 = v8;
LABEL_7:
  v14 = v13;

  return v14;
}

+ (id)combineFirst:(id)a3 other:(id)a4
{
  if (a3)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

+ (id)combineArrayAppend:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 arrayByAddingObjectsFromArray:v6];
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

+ (id)combineSetUnion:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CBEB58] setWithArray:v5];
      v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
      [v8 unionSet:v9];
      v10 = [v8 allObjects];

      goto LABEL_7;
    }

    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v10 = v11;
LABEL_7:

  return v10;
}

+ (id)combineSetIntersection:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [MEMORY[0x277CBEB58] setWithArray:v5];
      v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
      [v8 intersectSet:v9];
      v10 = [v8 allObjects];

      goto LABEL_7;
    }

    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v10 = v11;
LABEL_7:

  return v10;
}

+ (id)combineDictionary:(id)a3 other:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      [v5 combineWithOther:v6];
    }

    v8 = v5;
  }

  else
  {
    v8 = [v6 copyWithZone:0];
  }

  v9 = v8;

  return v9;
}

+ (id)combineMergeDictionary:(id)a3 other:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!v5)
  {
    v19 = [v6 copyWithZone:0];
LABEL_19:
    v18 = v19;
    goto LABEL_20;
  }

  if (!v6)
  {
    v19 = v5;
    goto LABEL_19;
  }

  v23 = v5;
  v8 = [v5 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v22 = v7;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:{v14, v22}];
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = v16;
        if (v15)
        {
          if (v16 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v15 combineWithOther:v17];
          }
        }

        else
        {
          [v8 setObject:v16 forKeyedSubscript:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v18 = [v8 copy];
  v7 = v22;
  v5 = v23;
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)_walkObject:(void *)a1 keyPath:assetReference:result:processedIdentifiers:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Asset reference key path failed: %{public}@ at %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_addAssetReference:(void *)a1 identifier:keyPath:result:processedIdentifiers:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = [a1 keyPath];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_261DAE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Asset reference key wrong type: %{public}@ at %{public}@", v3, 0x16u);

  v2 = *MEMORY[0x277D85DE8];
}

@end