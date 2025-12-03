@interface TUMapsMetadataCacheDataProvider
- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group;
@end

@implementation TUMapsMetadataCacheDataProvider

- (void)updateCacheWithDestinationIDs:(id)ds withGroup:(id)group
{
  v31 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  groupCopy = group;
  v8 = [MEMORY[0x1E695DFA8] set];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    v13 = *MEMORY[0x1E695E480];
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v9);
        }

        handle = [*(*(&v26 + 1) + 8 * v14) handle];
        normalizedValue = [handle normalizedValue];

        if ([normalizedValue length])
        {
          v17 = CFPhoneNumberCreate();
          if (v17)
          {
            v18 = v17;
            [v8 addObject:v17];
            CFRelease(v18);
          }
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    dispatch_group_enter(groupCopy);
    v19 = objc_alloc_init(CUTWeakLinkClass());
    [v19 _setAllowPhoneNumberLookupUsingCellular:1];
    allObjects = [v8 allObjects];
    [v19 _setPhoneNumbers:allObjects];

    v21 = dispatch_queue_create("com.apple.telephonyutilities.metadatacache.mapsQueue", 0);
    v22 = [objc_alloc(CUTWeakLinkClass()) initWithRequest:v19];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __75__TUMapsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke;
    v24[3] = &unk_1E7426AD8;
    v24[4] = self;
    v25 = groupCopy;
    [v22 _phoneOnlyStartWithCompletionHandler:v24 queue:v21];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __75__TUMapsMetadataCacheDataProvider_updateCacheWithDestinationIDs_withGroup___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v2 = [a2 mapItems];
  v3 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    v6 = 0x1E7423000uLL;
    do
    {
      v7 = 0;
      v24 = v4;
      do
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v25 + 1) + 8 * v7);
        v9 = [v8 name];
        if ([v9 length])
        {
          v10 = [v8 phoneNumber];
          v11 = [v10 length];

          if (!v11)
          {
            goto LABEL_15;
          }

          v9 = [v8 phoneNumber];
          if ([v9 length])
          {
            v12 = [v8 placemark];
            v13 = [v12 countryCode];

            v14 = [*(v6 + 3480) normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v13];
            if (v14)
            {
              v15 = [[TUMetadataDestinationID alloc] initWithHandle:v14];
              if (v15)
              {
                v16 = v5;
                v17 = v2;
                v18 = v6;
                v19 = *(a1 + 32);
                v20 = [v8 name];
                v21 = v19;
                v6 = v18;
                v2 = v17;
                v5 = v16;
                v4 = v24;
                [v21 setObject:v20 forDestinationID:v15];
              }
            }
          }
        }

LABEL_15:
        ++v7;
      }

      while (v4 != v7);
      v4 = [v2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v4);
  }

  dispatch_group_leave(*(a1 + 40));
  v22 = *MEMORY[0x1E69E9840];
}

@end