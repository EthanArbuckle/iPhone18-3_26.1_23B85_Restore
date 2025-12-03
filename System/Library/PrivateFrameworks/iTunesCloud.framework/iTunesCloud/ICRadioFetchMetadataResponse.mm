@interface ICRadioFetchMetadataResponse
- (NSArray)allStorePlatformMetadata;
- (id)_storePlatformMetadataDictionaryFromRadioMetadataDictionary:(id)dictionary;
- (id)storePlatformMetadataForStoreAdamID:(int64_t)d;
@end

@implementation ICRadioFetchMetadataResponse

- (id)_storePlatformMetadataDictionaryFromRadioMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:@"album-id"];
  if (v4)
  {
    v5 = [dictionaryCopy mutableCopy];
    [v5 setObject:v4 forKey:@"collectionId"];
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = dictionaryCopy;
  }

  v7 = v6;

  return v6;
}

- (id)storePlatformMetadataForStoreAdamID:(int64_t)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__14820;
  v14 = __Block_byref_object_dispose__14821;
  v15 = 0;
  contentDictionary = [(ICRadioResponse *)self contentDictionary];
  v6 = [contentDictionary objectForKey:@"results"];
  if (_NSIsNSDictionary())
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __68__ICRadioFetchMetadataResponse_storePlatformMetadataForStoreAdamID___block_invoke;
    v9[3] = &unk_1E7BF58B8;
    v9[5] = &v10;
    v9[6] = d;
    v9[4] = self;
    [v6 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v7;
}

void __68__ICRadioFetchMetadataResponse_storePlatformMetadataForStoreAdamID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v14 = a2;
  v7 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && _NSIsNSDictionary() && [v14 storeAdamID] == *(a1 + 48))
  {
    v8 = [ICStorePlatformMetadata alloc];
    v9 = [*(a1 + 32) _storePlatformMetadataDictionaryFromRadioMetadataDictionary:v7];
    v10 = [*(a1 + 32) expirationDate];
    v11 = [(ICStorePlatformMetadata *)v8 initWithMetadataDictionary:v9 expirationDate:v10];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *a4 = 1;
  }
}

- (NSArray)allStorePlatformMetadata
{
  v25 = *MEMORY[0x1E69E9840];
  contentDictionary = [(ICRadioResponse *)self contentDictionary];
  v4 = [contentDictionary objectForKey:@"results"];
  if (_NSIsNSDictionary())
  {
    v19 = contentDictionary;
    expirationDate = [(ICRadioResponse *)self expirationDate];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v18 = v4;
    allValues = [v4 allValues];
    v7 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v13 = [ICStorePlatformMetadata alloc];
            v14 = [(ICRadioFetchMetadataResponse *)self _storePlatformMetadataDictionaryFromRadioMetadataDictionary:v12];
            v15 = [(ICStorePlatformMetadata *)v13 initWithMetadataDictionary:v14 expirationDate:expirationDate];

            if (v15)
            {
              if (!v9)
              {
                v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              [(NSArray *)v9 addObject:v15];
            }
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v4 = v18;
    contentDictionary = v19;
  }

  else
  {
    v9 = 0;
  }

  v16 = v9;

  return v9;
}

@end