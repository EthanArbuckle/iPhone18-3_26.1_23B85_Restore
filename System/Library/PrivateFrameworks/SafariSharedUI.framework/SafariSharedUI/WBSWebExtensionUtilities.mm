@interface WBSWebExtensionUtilities
+ (BOOL)validateContentsOfDictionary:(id)a3 requiredKeys:(id)a4 optionalKeys:(id)a5 keyToExpectedValueType:(id)a6 outExceptionString:(id *)a7;
+ (double)nextTabID;
+ (double)nextWindowID;
+ (double)storageSizeForKeysAndValues:(id)a3;
+ (id)serializeObjectToJSON:(id)a3;
+ (id)tabIDToTabPositionDictionaryForTabs:(id)a3;
@end

@implementation WBSWebExtensionUtilities

+ (double)nextWindowID
{
  result = *&+[WBSWebExtensionUtilities nextWindowID]::currentWindowIDForWebExtension;
  do
  {
    result = result + 1.0;
  }

  while (result == -1.0 || result == -2.0 || result == 0.0 || result == -100.0);
  +[WBSWebExtensionUtilities nextWindowID]::currentWindowIDForWebExtension = *&result;
  return result;
}

+ (double)nextTabID
{
  result = *&+[WBSWebExtensionUtilities nextTabID]::currentTabIDForWebExtension;
  do
  {
    result = result + 1.0;
  }

  while (result == -1.0 || result == 0.0 || result == -100.0);
  +[WBSWebExtensionUtilities nextTabID]::currentTabIDForWebExtension = *&result;
  return result;
}

+ (BOOL)validateContentsOfDictionary:(id)a3 requiredKeys:(id)a4 optionalKeys:(id)a5 keyToExpectedValueType:(id)a6 outExceptionString:(id *)a7
{
  v30 = a3;
  v11 = a4;
  v12 = a5;
  v28 = a6;
  v29 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v11];
  v13 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v11];
  v14 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v12];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__32;
  v41 = __Block_byref_object_dispose__32;
  v42 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __125__WBSWebExtensionUtilities_validateContentsOfDictionary_requiredKeys_optionalKeys_keyToExpectedValueType_outExceptionString___block_invoke;
  v31[3] = &unk_1E8289750;
  v15 = v13;
  v32 = v15;
  v16 = v14;
  v33 = v16;
  v17 = v28;
  v34 = v17;
  v36 = &v37;
  v18 = v29;
  v35 = v18;
  [v30 enumerateKeysAndObjectsUsingBlock:v31];
  v19 = [v18 count];
  v20 = v38;
  if (v19 && !v38[5])
  {
    v21 = [v18 allObjects];
    v22 = [v21 componentsJoinedByString:{@", "}];

    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required keys: %@.", v22, v28];
    v24 = v38[5];
    v38[5] = v23;

    v20 = v38;
  }

  v25 = v20[5];
  if (v25)
  {
    *a7 = v25;
    v26 = v38[5] == 0;
  }

  else
  {
    v26 = 1;
  }

  _Block_object_dispose(&v37, 8);
  return v26;
}

void __125__WBSWebExtensionUtilities_validateContentsOfDictionary_requiredKeys_optionalKeys_keyToExpectedValueType_outExceptionString___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7] & 1) != 0 || (objc_msgSend(*(a1 + 40), "containsObject:", v7))
  {
    v9 = [*(a1 + 48) objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v39 = v11;
    if (v11)
    {
      v12 = [v11 firstObject];
      v13 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v16 = v15;
        v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v17)
        {
          v18 = *v41;
          v38 = v8;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v41 != v18)
              {
                objc_enumerationMutation(v16);
              }

              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                *a4 = 1;
                v21 = MEMORY[0x1E696AEC0];
                v8 = v38;
                v22 = classToClassString(v12, 1);
                v23 = objc_opt_class();
                v24 = classToClassString(v23, 0);
                v25 = [v21 stringWithFormat:@"Expected %@ in the array for '%@', found %@ instead.", v22, v7, v24, v15];
                v26 = *(*(a1 + 64) + 8);
                v27 = *(v26 + 40);
                *(v26 + 40) = v25;

                goto LABEL_28;
              }
            }

            v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
            v8 = v38;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        goto LABEL_21;
      }

      *a4 = 1;
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an array for '%@'.", v7];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;
    }

    else
    {
      if (objc_opt_isKindOfClass())
      {
LABEL_21:
        if ([*(a1 + 32) containsObject:v7])
        {
          [*(a1 + 56) removeObject:v7];
        }

        goto LABEL_28;
      }

      *a4 = 1;
      v31 = MEMORY[0x1E696AEC0];
      v32 = classToClassString(v9, 0);
      v33 = objc_opt_class();
      v34 = classToClassString(v33, 0);
      v35 = [v31 stringWithFormat:@"Expected %@ for '%@', found %@ instead.", v32, v7, v34];
      v36 = *(*(a1 + 64) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;
    }

LABEL_28:

    goto LABEL_29;
  }

  v20 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v46 = v7;
    _os_log_impl(&dword_1C6968000, v20, OS_LOG_TYPE_INFO, "Found unrecognized key (%{private}@), not specified in required or optional keys.", buf, 0xCu);
  }

LABEL_29:
}

+ (id)serializeObjectToJSON:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v10 = 0;
    v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:&v10];
    v5 = v10;
    if (v5)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = [v5 safari_privacyPreservingDescription];
        [(WBSWebExtensionUtilities *)v3 serializeObjectToJSON:v7, buf, v6];
      }

      v8 = 0;
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (double)storageSizeForKeysAndValues:(id)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__WBSWebExtensionUtilities_storageSizeForKeysAndValues___block_invoke;
  v5[3] = &unk_1E8289778;
  v5[4] = &v6;
  v5[5] = a1;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __56__WBSWebExtensionUtilities_storageSizeForKeysAndValues___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  [objc_opt_class() storageSizeForKeyOrValue:v9];
  v7 = v6;
  [objc_opt_class() storageSizeForKeyOrValue:v5];
  *(*(*(a1 + 32) + 8) + 24) = v7 + v8 + *(*(*(a1 + 32) + 8) + 24);
}

+ (id)tabIDToTabPositionDictionaryForTabs:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v14;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [[WBSWebExtensionTabPosition alloc] initWithTab:v8];
        v10 = MEMORY[0x1E696AD98];
        [v8 idForWebExtensions];
        v11 = [v10 numberWithDouble:?];
        [v3 setObject:v9 forKeyedSubscript:v11];
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v3 copy];

  return v12;
}

+ (void)serializeObjectToJSON:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6968000, log, OS_LOG_TYPE_ERROR, "Error serializing %{private}@: %{public}@", buf, 0x16u);
}

@end