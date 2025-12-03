@interface TUCallDirectoryMetadataCacheDataProvider
- (TUCallDirectoryMetadataCacheDataProvider)init;
- (TUCallDirectoryMetadataCacheDataProvider)initWithCacheOnly:(BOOL)only;
- (void)dealloc;
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUCallDirectoryMetadataCacheDataProvider

- (TUCallDirectoryMetadataCacheDataProvider)init
{
  v17.receiver = self;
  v17.super_class = TUCallDirectoryMetadataCacheDataProvider;
  v2 = [(TUMetadataCacheDataProvider *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(CUTWeakLinkClass());
    callDirectoryManager = v2->_callDirectoryManager;
    v2->_callDirectoryManager = v3;

    objc_initWeak(&location, v2);
    v2->_cacheOnly = 1;
    countryDialingCode = v2->_countryDialingCode;
    v2->_countryDialingCode = &__block_literal_global_1;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke_2;
    aBlock[3] = &unk_1E7424C38;
    objc_copyWeak(&v15, &location);
    v6 = _Block_copy(aBlock);
    firstIdentificationEntriesForEnabledExtensions = v2->_firstIdentificationEntriesForEnabledExtensions;
    v2->_firstIdentificationEntriesForEnabledExtensions = v6;

    if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
    {
      [TUCallDirectoryMetadataCacheDataProvider init];
    }

    v8 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
    v9 = MEMORY[0x1E69E96A0];
    v10 = MEMORY[0x1E69E96A0];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke_3;
    handler[3] = &unk_1E7424C60;
    objc_copyWeak(&v13, &location);
    notify_register_dispatch(v8, &v2->_identificationEntriesChangedNotifyToken, v9, handler);

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained callDirectoryManager];
  [v7 firstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:v6 cacheOnly:objc_msgSend(WeakRetained completionHandler:{"cacheOnly"), v5}];
}

id __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E695DF58] ITUCountryCodeForISOCountryCode:a2];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", v2];
  }

  return v3;
}

void __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (__CUTWeakCXCallDirectoryManagerIdentificationEntriesChangedNotification__pred_CXCallDirectoryManagerIdentificationEntriesChangedNotificationCallKit != -1)
    {
      __48__TUCallDirectoryMetadataCacheDataProvider_init__block_invoke_3_cold_1();
    }

    v5 = 136315138;
    v6 = __CUTStaticWeak_CXCallDirectoryManagerIdentificationEntriesChangedNotification;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Handling %s by refreshing", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained refresh];

  v4 = *MEMORY[0x1E69E9840];
}

- (TUCallDirectoryMetadataCacheDataProvider)initWithCacheOnly:(BOOL)only
{
  result = [(TUCallDirectoryMetadataCacheDataProvider *)self init];
  result->_cacheOnly = only;
  return result;
}

- (void)dealloc
{
  notify_cancel(self->_identificationEntriesChangedNotifyToken);
  v3.receiver = self;
  v3.super_class = TUCallDirectoryMetadataCacheDataProvider;
  [(TUCallDirectoryMetadataCacheDataProvider *)&v3 dealloc];
}

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v38 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  group = group;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = dsCopy;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
  v27 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v28 = dictionary;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        handle = [v12 handle];
        if ([handle type] == 2)
        {
          normalizedValue = [handle normalizedValue];
          if (![normalizedValue length])
          {
            value = [handle value];

            normalizedValue = value;
          }

          if ([normalizedValue length])
          {
            [dictionary setObject:v12 forKeyedSubscript:normalizedValue];
            if (([normalizedValue pn_hasInternationalDirectDialingPrefix] & 1) == 0)
            {
              isoCountryCode = [handle isoCountryCode];
              if ([isoCountryCode length])
              {
                v17 = [MEMORY[0x1E695DF58] nationalDirectDialingPrefixForISOCountryCode:isoCountryCode];
                if ([v17 length] && objc_msgSend(normalizedValue, "hasPrefix:", v17))
                {
                  v18 = [normalizedValue substringFromIndex:{objc_msgSend(v17, "length")}];

                  normalizedValue = v18;
                }

                countryDialingCode = [(TUCallDirectoryMetadataCacheDataProvider *)self countryDialingCode];
                v20 = (countryDialingCode)[2](countryDialingCode, isoCountryCode);

                v21 = [v20 stringByAppendingString:normalizedValue];
                if ([v21 length])
                {
                  [v28 setObject:v12 forKeyedSubscript:v21];
                }

                v7 = v27;
                dictionary = v28;
              }
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  if ([dictionary count])
  {
    dispatch_group_enter(group);
    firstIdentificationEntriesForEnabledExtensions = [(TUCallDirectoryMetadataCacheDataProvider *)self firstIdentificationEntriesForEnabledExtensions];
    allKeys = [dictionary allKeys];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __84__TUCallDirectoryMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke;
    v29[3] = &unk_1E7424C88;
    v30 = dictionary;
    selfCopy = self;
    groupCopy = group;
    (firstIdentificationEntriesForEnabledExtensions)[2](firstIdentificationEntriesForEnabledExtensions, allKeys, v29);

    v7 = v27;
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __84__TUCallDirectoryMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v24)
  {
    v23 = *v26;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [v5 objectForKeyedSubscript:v7];
        v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
        if (v9)
        {
          v10 = MEMORY[0x1E696AEC0];
          v11 = TUBundle();
          v12 = [v11 localizedStringForKey:@"CALL_DIRECTORY_EXTENSION_%@_LABEL_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
          v13 = [v8 localizedExtensionContainingAppName];
          v14 = [v8 localizedLabel];
          v15 = [v10 stringWithFormat:v12, v13, v14];

          [*(a1 + 40) setObject:v15 forDestinationID:v9];
          v16 = [TUMetadataDict alloc];
          v17 = [v8 localizedExtensionContainingAppName];
          v18 = [v8 localizedLabel];
          v19 = [(TUMetadataDict *)v16 initWithSource:v17 identificationLabel:v18];

          [*(a1 + 40) setMetadataDict:v19 forDestinationID:v9];
        }

        else
        {
          v15 = TUDefaultLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v7;
            _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "[WARN] No metadata destinationID found for phone number '%@'", buf, 0xCu);
          }
        }
      }

      v24 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v24);
  }

  if (v22)
  {
    v20 = TUDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __84__TUCallDirectoryMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(a1, v22, v20);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v21 = *MEMORY[0x1E69E9840];
}

void __84__TUCallDirectoryMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) allKeys];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1956FD000, a3, OS_LOG_TYPE_ERROR, "Error retrieving first identification entries for phone numbers %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

@end