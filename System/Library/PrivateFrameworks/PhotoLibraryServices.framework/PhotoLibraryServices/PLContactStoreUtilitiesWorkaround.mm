@interface PLContactStoreUtilitiesWorkaround
+ (id)compareContactMatchingDictionary:(id)dictionary withDictionary:(id)withDictionary;
+ (id)comparisonDictionaryDescription:(id)description;
+ (id)contactWithMatchingDictionary:(id)dictionary keysToFetch:(id)fetch contactStore:(id)store;
@end

@implementation PLContactStoreUtilitiesWorkaround

+ (id)comparisonDictionaryDescription:(id)description
{
  v3 = MEMORY[0x1E696AD60];
  descriptionCopy = description;
  v5 = objc_alloc_init(v3);
  [v5 appendString:@"{"];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__PLContactStoreUtilitiesWorkaround_comparisonDictionaryDescription___block_invoke;
  v9[3] = &unk_1E75728D8;
  v6 = v5;
  v10 = v6;
  [descriptionCopy enumerateKeysAndObjectsUsingBlock:v9];

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

+ (id)compareContactMatchingDictionary:(id)dictionary withDictionary:(id)withDictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  withDictionaryCopy = withDictionary;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E695DFA8];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  allKeys2 = [withDictionaryCopy allKeys];
  v12 = [v10 setByAddingObjectsFromArray:allKeys2];

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
        v19 = [dictionaryCopy objectForKeyedSubscript:{v18, v25}];
        v20 = [withDictionaryCopy objectForKeyedSubscript:v18];
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

        [dictionary setObject:v22 forKeyedSubscript:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v15);
  }

  v23 = [dictionary copy];

  return v23;
}

+ (id)contactWithMatchingDictionary:(id)dictionary keysToFetch:(id)fetch contactStore:(id)store
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  storeCopy = store;
  v10 = [storeCopy contactWithMatchingDictionary:dictionaryCopy keysToFetch:fetch];
  if (v10)
  {
    v11 = [self matchingDictionaryForContact:v10 contactStore:storeCopy];
    if (v11)
    {
      v12 = [self compareContactMatchingDictionary:dictionaryCopy withDictionary:v11];
      identifier2 = [self comparisonDictionaryDescription:v12];
      v14 = PLBackendGetLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [v10 identifier];
        v17 = 138543618;
        v18 = identifier;
        v19 = 2114;
        v20 = identifier2;
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

      identifier2 = [v10 identifier];
      v17 = 138543362;
      v18 = identifier2;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "No matching dictionary for contact %{public}@", &v17, 0xCu);
    }

    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

@end