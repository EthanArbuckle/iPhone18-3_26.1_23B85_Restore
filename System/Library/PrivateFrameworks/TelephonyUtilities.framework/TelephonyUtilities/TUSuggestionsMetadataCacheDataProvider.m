@interface TUSuggestionsMetadataCacheDataProvider
+ (BOOL)canUseSiriSuggestions;
+ (SGSuggestionsServiceContactsProtocol)sharedService;
+ (id)newestSuggestedContactForDestinationID:(id)a3;
- (TUSuggestionsMetadataCacheDataProvider)init;
- (void)updateCacheWithDestinationIDs:(id)a3 withGroup:(id)a4;
@end

@implementation TUSuggestionsMetadataCacheDataProvider

- (TUSuggestionsMetadataCacheDataProvider)init
{
  v15.receiver = self;
  v15.super_class = TUSuggestionsMetadataCacheDataProvider;
  v2 = [(TUMetadataCacheDataProvider *)&v15 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(9);
    suggestionsServiceThrottleSemaphore = v2->_suggestionsServiceThrottleSemaphore;
    v2->_suggestionsServiceThrottleSemaphore = v3;

    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Initializing new instance of TUSuggestionsMetadataCacheDataProvider", buf, 2u);
    }

    objc_initWeak(buf, v2);
    v6 = [objc_opt_class() sharedService];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__TUSuggestionsMetadataCacheDataProvider_init__block_invoke;
    v11[3] = &unk_1E7424BA0;
    v7 = v2;
    v12 = v7;
    objc_copyWeak(&v13, buf);
    v8 = [v6 registerContactsChangeObserver:v11];
    suggestionsContactsObserver = v7->_suggestionsContactsObserver;
    v7->_suggestionsContactsObserver = v8;

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  return v2;
}

void __55__TUSuggestionsMetadataCacheDataProvider_sharedService__block_invoke()
{
  v0 = [CUTWeakLinkClass() serviceForContacts];
  v1 = sharedService_sharedService;
  sharedService_sharedService = v0;

  [sharedService_sharedService setSyncTimeout:5.0];
  if (!sharedService_sharedService)
  {
    v2 = TUDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __55__TUSuggestionsMetadataCacheDataProvider_sharedService__block_invoke_cold_1(v2);
    }
  }
}

+ (SGSuggestionsServiceContactsProtocol)sharedService
{
  if (sharedService_onceToken != -1)
  {
    +[TUSuggestionsMetadataCacheDataProvider sharedService];
  }

  v3 = sharedService_sharedService;

  return v3;
}

+ (BOOL)canUseSiriSuggestions
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.mobilephone"];

  return v3 ^ 1;
}

+ (id)newestSuggestedContactForDestinationID:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![a1 canUseSiriSuggestions])
  {
    goto LABEL_14;
  }

  if (![v4 destinationIdIsEmailAddress])
  {
    if ([v4 destinationIdIsPhoneNumber])
    {
      v9 = [a1 sharedService];
      v31 = 0;
      v6 = [v9 contactMatchesByPhoneNumber:v4 error:&v31];
      v7 = v31;

      if (!v6 && v7)
      {
        v8 = TUDefaultLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          +[TUSuggestionsMetadataCacheDataProvider newestSuggestedContactForDestinationID:];
        }

        goto LABEL_12;
      }

      goto LABEL_17;
    }

LABEL_14:
    v7 = 0;
    v6 = 0;
    goto LABEL_15;
  }

  v5 = [a1 sharedService];
  v32 = 0;
  v6 = [v5 contactMatchesByEmailAddress:v4 error:&v32];
  v7 = v32;

  if (v6 || !v7)
  {
LABEL_17:
    if (v6)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v6 = v6;
      v10 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v10)
      {
        v25 = v7;
        v26 = v4;
        v8 = 0;
        v14 = *v28;
        v15 = -1;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v28 != v14)
            {
              objc_enumerationMutation(v6);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            v18 = [v17 contact];
            v19 = [v18 recordId];
            v20 = [v19 numericValue];

            if (v20 > v15)
            {
              v21 = [v17 contact];
              v22 = [v21 recordId];
              v15 = [v22 numericValue];

              v23 = v17;
              v8 = v23;
            }
          }

          v10 = [v6 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v10);

        v7 = v25;
        if (!v8)
        {
          v10 = 0;
          v4 = v26;
          goto LABEL_16;
        }

        v24 = [v8 contact];
        v10 = [v24 cnContact];

        v4 = v26;
      }

      else
      {
        v8 = v6;
      }

      goto LABEL_13;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[TUSuggestionsMetadataCacheDataProvider newestSuggestedContactForDestinationID:];
  }

LABEL_12:
  v6 = 0;
  v10 = 0;
LABEL_13:

LABEL_16:
  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void __46__TUSuggestionsMetadataCacheDataProvider_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a1 + 32;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling Suggestions contacts change by refreshing %p", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained refresh];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)updateCacheWithDestinationIDs:(id)a3 withGroup:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v29;
    *&v9 = 138412290;
    v24 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [v13 handle];
        v15 = [v14 normalizedValue];

        if ([v15 length])
        {
          v16 = [(TUSuggestionsMetadataCacheDataProvider *)self suggestionsServiceThrottleSemaphore];
          v17 = dispatch_time(0, 1000000000);
          v18 = dispatch_semaphore_wait(v16, v17);

          v19 = TUDefaultLog();
          v20 = v19;
          if (v18)
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v33 = v13;
              _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "[WARN] TUSuggestionsMetadataCacheDataProvider waited too long for other requests and will not look up '%@'", buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = v24;
              v33 = v15;
              _os_log_debug_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEBUG, "dispatch_group_enter %@", buf, 0xCu);
            }

            dispatch_group_enter(v7);
            v21 = objc_opt_class();
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke;
            v25[3] = &unk_1E7424BC8;
            v25[4] = self;
            v25[5] = v13;
            v22 = v15;
            v26 = v22;
            v27 = v7;
            [v21 suggestedNamesForDestinationID:v22 onlySignificant:0 withCompletion:v25];
          }
        }
      }

      v10 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && [v5 count])
  {
    v7 = *(a1 + 32);
    v8 = [v5 firstObject];
    [v7 setObject:v8 forDestinationID:*(a1 + 40)];

    v9 = [TUMetadataDict alloc];
    v10 = [v5 firstObject];
    v11 = [(TUMetadataDict *)v9 initWithSource:@"Apple" identificationLabel:v10];

    [*(a1 + 32) setMetadataDict:v11 forDestinationID:*(a1 + 40)];
  }

  if (v6)
  {
    v12 = TUDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_1956FD000, v12, OS_LOG_TYPE_DEFAULT, "Could not fetch suggested contact via [SGSuggestionsService namesForDetail:limitTo:prependMaybe:withCompletion:]: %@", &v16, 0xCu);
    }
  }

  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(a1, v13);
  }

  v14 = [*(a1 + 32) suggestionsServiceThrottleSemaphore];
  dispatch_semaphore_signal(v14);

  dispatch_group_leave(*(a1 + 56));
  v15 = *MEMORY[0x1E69E9840];
}

+ (void)newestSuggestedContactForDestinationID:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Retrieving suggested contact matches by phone number %@ failed with error %@.");
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)newestSuggestedContactForDestinationID:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Retrieving suggested contact matches by email address %@ failed with error %@.");
  v2 = *MEMORY[0x1E69E9840];
}

void __82__TUSuggestionsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1956FD000, a2, OS_LOG_TYPE_DEBUG, "dispatch_group_leave %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end