@interface ICStorePlatformResponse
- (BOOL)isAuthenticated;
- (ICStorePlatformResponse)initWithResponseDictionary:(id)dictionary requestedItemIdentifiers:(id)identifiers;
- (ICStorePlatformResponse)initWithURLResponse:(id)response requestedItemIdentifiers:(id)identifiers;
- (NSArray)allItems;
- (NSDictionary)resultsDictionary;
- (NSString)storefrontIdentifier;
- (id)itemForIdentifier:(id)identifier;
- (void)_enumerateResultDictionariesUsingBlock:(id)block;
- (void)enumerateItemsUsingBlock:(id)block;
@end

@implementation ICStorePlatformResponse

- (void)_enumerateResultDictionariesUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSDictionary *)self->_responseDictionary objectForKey:@"storePlatformData"];
  v6 = [(NSDictionary *)self->_responseDictionary objectForKey:@"results"];
  if (_NSIsNSDictionary())
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__ICStorePlatformResponse__enumerateResultDictionariesUsingBlock___block_invoke;
    v8[3] = &unk_1E7BF8360;
    v9 = blockCopy;
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }

  else if (_NSIsNSDictionary())
  {
    v7 = 0;
    (*(blockCopy + 2))(blockCopy, v6, &stru_1F2C4A680, &v7);
  }
}

void __66__ICStorePlatformResponse__enumerateResultDictionariesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (_NSIsNSDictionary())
  {
    v6 = [v5 objectForKey:@"results"];
    if (_NSIsNSDictionary())
    {
      (*(*(a1 + 32) + 16))();
    }
  }
}

- (NSDictionary)resultsDictionary
{
  v2 = [(NSDictionary *)self->_responseDictionary objectForKey:@"results"];
  if (_NSIsNSDictionary())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isAuthenticated
{
  v2 = [(NSDictionary *)self->_responseDictionary valueForKey:@"isAuthenticated"];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [v2 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (NSString)storefrontIdentifier
{
  storefrontIdentifier = self->_storefrontIdentifier;
  if (storefrontIdentifier)
  {
    v3 = storefrontIdentifier;
    goto LABEL_16;
  }

  v4 = [(NSDictionary *)self->_responseDictionary objectForKey:@"meta"];
  if (_NSIsNSDictionary())
  {
    v5 = [v4 objectForKey:@"storefront"];
    if (!_NSIsNSDictionary())
    {
      v3 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v6 = [v5 objectForKey:@"id"];
    if (_NSIsNSString())
    {
      stringValue = v6;
    }

    else
    {
      if (!_NSIsNSNumber())
      {
        v3 = 0;
        goto LABEL_13;
      }

      stringValue = [v6 stringValue];
    }

    v3 = stringValue;
LABEL_13:

    goto LABEL_14;
  }

  v3 = 0;
LABEL_15:

LABEL_16:

  return v3;
}

- (id)itemForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__32785;
  v16 = __Block_byref_object_dispose__32786;
  v17 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__ICStorePlatformResponse_itemForIdentifier___block_invoke;
  v8[3] = &unk_1E7BF8338;
  v5 = identifierCopy;
  selfCopy = self;
  v11 = &v12;
  v9 = v5;
  [(ICStorePlatformResponse *)self _enumerateResultDictionariesUsingBlock:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __45__ICStorePlatformResponse_itemForIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 objectForKey:*(a1 + 32)];
  if (v6)
  {
    v12 = v6;
    if (_NSIsNSDictionary())
    {
      v7 = [ICStorePlatformMetadata alloc];
      v8 = [*(a1 + 40) expirationDate];
      v9 = [(ICStorePlatformMetadata *)v7 initWithMetadataDictionary:v12 expirationDate:v8];
      v10 = *(*(a1 + 48) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    *a4 = 1;
    v6 = v12;
  }
}

- (void)enumerateItemsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(NSArray *)self->_requestedItemIdentifiers count])
  {
    requestedItemIdentifiers = self->_requestedItemIdentifiers;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke;
    v10[3] = &unk_1E7BF82C0;
    v10[4] = self;
    v11 = blockCopy;
    expirationDate = blockCopy;
    [(NSArray *)requestedItemIdentifiers enumerateObjectsUsingBlock:v10];
  }

  else
  {
    expirationDate = [(ICStorePlatformResponse *)self expirationDate];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke_2;
    v8[3] = &unk_1E7BF8310;
    v8[4] = expirationDate;
    v9 = blockCopy;
    v7 = blockCopy;
    [(ICStorePlatformResponse *)self _enumerateResultDictionariesUsingBlock:v8];
  }
}

uint64_t __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) itemForIdentifier:a2];
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    v3 = (*(*(a1 + 40) + 16))();
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

void __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke_3;
  v7[3] = &unk_1E7BF82E8;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  v9 = a4;
  [a2 enumerateKeysAndObjectsUsingBlock:v7];
}

void __52__ICStorePlatformResponse_enumerateItemsUsingBlock___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (_NSIsNSDictionary())
  {
    v7 = [[ICStorePlatformMetadata alloc] initWithMetadataDictionary:v6 expirationDate:*(a1 + 32)];
    if (v7)
    {
      (*(*(a1 + 40) + 16))();
      **(a1 + 48) = 0;
      *a4 = 0;
    }
  }
}

- (NSArray)allItems
{
  array = [MEMORY[0x1E695DF70] array];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__ICStorePlatformResponse_allItems__block_invoke;
  v5[3] = &unk_1E7BF8298;
  v5[4] = array;
  [(ICStorePlatformResponse *)self enumerateItemsUsingBlock:v5];

  return array;
}

- (ICStorePlatformResponse)initWithURLResponse:(id)response requestedItemIdentifiers:(id)identifiers
{
  responseCopy = response;
  identifiersCopy = identifiers;
  parsedBodyDictionary = [responseCopy parsedBodyDictionary];
  if (!parsedBodyDictionary)
  {
    v9 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v9 = [(ICStorePlatformResponse *)self initWithResponseDictionary:parsedBodyDictionary requestedItemIdentifiers:identifiersCopy];
  if (v9)
  {
    self = [responseCopy urlRequest];
    urlResponse = [responseCopy urlResponse];
    v11 = [urlResponse ic_valueForHTTPHeaderField:@"X-Set-Apple-Store-Front"];
    if (v11 || ([urlResponse ic_valueForHTTPHeaderField:@"X-Apple-Request-Store-Front"], (v11 = objc_claimAutoreleasedReturnValue()) != 0) || (-[ICStorePlatformResponse ic_valueForHTTPHeaderField:](self, "ic_valueForHTTPHeaderField:", @"X-Apple-Store-Front"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v11 copy];
      storefrontIdentifier = v9->_storefrontIdentifier;
      v9->_storefrontIdentifier = v13;
    }

    v15 = [(ICStorePlatformResponse *)self ic_valueForHTTPHeaderField:@"X-Dsid"];
    uTF8String = [v15 UTF8String];

    if (uTF8String)
    {
      v17 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{strtoull(uTF8String, 0, 10)}];
      accountIdentifier = v9->_accountIdentifier;
      v9->_accountIdentifier = v17;
    }

    v19 = [(ICStorePlatformResponse *)self ic_valueForHTTPHeaderField:@"X-Enqueuer-DSID"];
    uTF8String2 = [v19 UTF8String];

    if (uTF8String2)
    {
      v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{strtoull(uTF8String2, 0, 10)}];
      enqueuerAccountIdentifier = v9->_enqueuerAccountIdentifier;
      v9->_enqueuerAccountIdentifier = v21;
    }

    if ([urlResponse hasCacheControl])
    {
      [urlResponse cacheControlMaxAge];
      v23 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
      expirationDate = v9->_expirationDate;
      v9->_expirationDate = v23;
    }

    performanceMetrics = [responseCopy performanceMetrics];

    if (performanceMetrics)
    {
      aggregatedPerformanceMetrics = [responseCopy aggregatedPerformanceMetrics];
      performanceMetrics = v9->_performanceMetrics;
      v9->_performanceMetrics = aggregatedPerformanceMetrics;
    }

    goto LABEL_17;
  }

LABEL_18:

  return v9;
}

- (ICStorePlatformResponse)initWithResponseDictionary:(id)dictionary requestedItemIdentifiers:(id)identifiers
{
  dictionaryCopy = dictionary;
  identifiersCopy = identifiers;
  v14.receiver = self;
  v14.super_class = ICStorePlatformResponse;
  v8 = [(ICStorePlatformResponse *)&v14 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    requestedItemIdentifiers = v8->_requestedItemIdentifiers;
    v8->_requestedItemIdentifiers = v9;

    v11 = [dictionaryCopy copy];
    responseDictionary = v8->_responseDictionary;
    v8->_responseDictionary = v11;
  }

  return v8;
}

@end