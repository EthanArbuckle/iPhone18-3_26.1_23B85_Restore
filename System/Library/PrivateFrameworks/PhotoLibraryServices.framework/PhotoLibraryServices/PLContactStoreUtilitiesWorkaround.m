@interface PLContactStoreUtilitiesWorkaround
+ (id)compareContactMatchingDictionary:(id)a3 withDictionary:(id)a4;
+ (id)comparisonDictionaryDescription:(id)a3;
+ (id)contactWithMatchingDictionary:(id)a3 keysToFetch:(id)a4 contactStore:(id)a5;
@end

@implementation PLContactStoreUtilitiesWorkaround

+ (id)comparisonDictionaryDescription:(id)a3
{
  v3 = MEMORY[0x1E696AD60];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 appendString:@"{"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PLContactStoreUtilitiesWorkaround_comparisonDictionaryDescription___block_invoke;
  v9[3] = &unk_1E75728D8;
  v6 = v5;
  v10 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  if ([v6 length] >= 2)
  {
    [v6 appendString:@"\n"];
  }

  [v6 appendString:@"}"];
  v7 = [v6 copy];

  return v7;
}

void __69__PLContactStoreUtilitiesWorkaround_comparisonDictionaryDescription___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 intValue] + 2;
  if (v5 <= 3)
  {
    [*(a1 + 32) appendFormat:off_1E7571900[v5], v6];
  }
}

+ (id)compareContactMatchingDictionary:(id)a3 withDictionary:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E695DFA8];
  v9 = [v5 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = [v6 allKeys];
  v12 = [v10 setByAddingObjectsFromArray:v11];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = [v5 objectForKeyedSubscript:{v18, v25}];
        v20 = [v6 objectForKeyedSubscript:v18];
        v21 = v20;
        if (v19)
        {
          if (v20)
          {
            if ([v19 isEqual:v20])
            {
              v22 = &unk_1F0FBD870;
            }

            else
            {
              v22 = &unk_1F0FBD888;
            }
          }

          else
          {
            v22 = &unk_1F0FBD858;
          }
        }

        else
        {
          v22 = &unk_1F0FBD840;
        }

        [v7 setObject:v22 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v23 = [v7 copy];

  return v23;
}

+ (id)contactWithMatchingDictionary:(id)a3 keysToFetch:(id)a4 contactStore:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v9 contactWithMatchingDictionary:v8 keysToFetch:a4];
  if (v10)
  {
    v11 = [a1 matchingDictionaryForContact:v10 contactStore:v9];
    if (v11)
    {
      v12 = [a1 compareContactMatchingDictionary:v8 withDictionary:v11];
      v13 = [a1 comparisonDictionaryDescription:v12];
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 identifier];
        v17 = 138543618;
        v18 = v15;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Found contact: %{public}@, match details: %{public}@", &v17, 0x16u);
      }
    }

    else
    {
      v12 = PLBackendGetLog();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
LABEL_9:

        goto LABEL_10;
      }

      v13 = [v10 identifier];
      v17 = 138543362;
      v18 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "No matching dictionary for contact %{public}@", &v17, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

@end