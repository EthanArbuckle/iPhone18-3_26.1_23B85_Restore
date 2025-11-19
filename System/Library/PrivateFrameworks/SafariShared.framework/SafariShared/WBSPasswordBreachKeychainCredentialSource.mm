@interface WBSPasswordBreachKeychainCredentialSource
- (NSArray)credentials;
- (id)savedAccountsForPersistentIdentifiers:(id)a3;
- (void)credentials;
@end

@implementation WBSPasswordBreachKeychainCredentialSource

- (NSArray)credentials
{
  v36[8] = *MEMORY[0x1E69E9840];
  result = 0;
  v2 = *MEMORY[0x1E697B018];
  v3 = *MEMORY[0x1E697ABD0];
  v35[0] = *MEMORY[0x1E697AFF8];
  v35[1] = v3;
  v36[0] = v2;
  v36[1] = @"com.apple.cfnetwork";
  v4 = *MEMORY[0x1E697AEB8];
  v5 = *MEMORY[0x1E697AC50];
  v35[2] = *MEMORY[0x1E697AEB0];
  v35[3] = v5;
  v6 = *MEMORY[0x1E697AC60];
  v36[2] = v4;
  v36[3] = v6;
  v7 = *MEMORY[0x1E697B268];
  v8 = *MEMORY[0x1E697B310];
  v35[4] = *MEMORY[0x1E697B260];
  v35[5] = v8;
  v36[4] = v7;
  v36[5] = MEMORY[0x1E695E118];
  v9 = *MEMORY[0x1E697B320];
  v35[6] = *MEMORY[0x1E697B318];
  v35[7] = v9;
  v36[6] = MEMORY[0x1E695E118];
  v36[7] = MEMORY[0x1E695E118];
  v10 = SecItemCopyMatching([MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:8], &result);
  if (v10)
  {
    v11 = v10;
    if (v10 == -25300)
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v12, OS_LOG_TYPE_INFO, "Keychain does not contain any saved passwords.", buf, 2u);
      }
    }

    else
    {
      v25 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [(WBSPasswordBreachKeychainCredentialSource *)v11 credentials];
      }
    }

    v27 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v13 = [MEMORY[0x1E69C8870] dontSaveMarker];
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = result;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      v18 = *MEMORY[0x1E697AC30];
      v19 = *MEMORY[0x1E697AE80];
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          v22 = [v21 safari_stringForKey:v18];
          if (([v22 isEqualToString:v13] & 1) == 0)
          {
            v23 = [v21 objectForKeyedSubscript:v19];
            if ([v23 length])
            {
              v24 = [objc_alloc(MEMORY[0x1E69C8918]) initWithSecItemDictionary:v21];
              if (v24)
              {
                [v27 addObject:v24];
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v16);
    }
  }

  return v27;
}

- (id)savedAccountsForPersistentIdentifiers:(id)a3
{
  v3 = MEMORY[0x1E69C8A38];
  v4 = a3;
  v5 = [v3 sharedStore];
  v6 = [v5 savedAccountsForPersistentIdentifiers:v4];

  return v6;
}

- (void)credentials
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67240192;
  v2[1] = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch passwords. SecItemCopyMatching failed with error code %{public}d.", v2, 8u);
}

@end