@interface SKUILoadItemResourceOperation
- (SKUILoadItemResourceOperation)initWithResourceRequest:(id)request;
- (SSVPlatformRequestOperation)underlyingOperation;
- (void)cancel;
- (void)main;
@end

@implementation SKUILoadItemResourceOperation

- (SKUILoadItemResourceOperation)initWithResourceRequest:(id)request
{
  requestCopy = request;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadItemResourceOperation initWithResourceRequest:];
  }

  v7.receiver = self;
  v7.super_class = SKUILoadItemResourceOperation;
  v5 = [(SKUILoadResourceOperation *)&v7 initWithResourceRequest:requestCopy];

  return v5;
}

- (void)main
{
  clientContext = [(SKUILoadResourceOperation *)self clientContext];
  v4 = objc_alloc(MEMORY[0x277D69CF0]);
  platformContext = [clientContext platformContext];
  v6 = [v4 initWithPlatformContext:platformContext];

  resourceRequest = [(SKUILoadResourceOperation *)self resourceRequest];
  imageProfile = [resourceRequest imageProfile];
  [v6 setImageProfile:imageProfile];

  keyProfile = [resourceRequest keyProfile];
  [v6 setKeyProfile:keyProfile];

  v10 = [clientContext valueForConfigurationKey:@"sfsuffix"];
  [v6 setStoreFrontSuffix:v10];

  itemIdentifiers = [resourceRequest itemIdentifiers];
  [v6 setItemIdentifiers:itemIdentifiers];
  outputBlock = [(SKUILoadResourceOperation *)self outputBlock];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __37__SKUILoadItemResourceOperation_main__block_invoke;
  v18 = &unk_2781FE310;
  v19 = itemIdentifiers;
  v20 = outputBlock;
  v13 = itemIdentifiers;
  v14 = outputBlock;
  [v6 setResponseBlock:&v15];
  [(SKUILoadItemResourceOperation *)self setUnderlyingOperation:v6, v15, v16, v17, v18];
  [v6 main];
}

void __37__SKUILoadItemResourceOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = objc_alloc_init(SKUILoadItemsResponse);
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:*(a1 + 32)];
    v9 = [v5 allItems];
    if ([v9 count])
    {
      v22 = a1;
      v23 = v6;
      v24 = v5;
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v21 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v26;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v26 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v25 + 1) + 8 * i);
            v17 = [SKUIItem alloc];
            v18 = [v16 lookupDictionary];
            v19 = [(SKUIItem *)v17 initWithLookupDictionary:v18];

            if (v19)
            {
              v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{-[SKUIItem itemIdentifier](v19, "itemIdentifier")}];
              [v10 setObject:v19 forKey:v20];
              [v8 removeObject:v20];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v13);
      }

      v6 = v23;
      v5 = v24;
      a1 = v22;
      v9 = v21;
    }

    else
    {
      v10 = 0;
    }

    [(SKUILoadItemsResponse *)v7 setInvalidItemIdentifiers:v8];
    [(SKUILoadItemsResponse *)v7 setLoadedItems:v10];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SKUILoadItemResourceOperation;
  [(SKUILoadResourceOperation *)&v4 cancel];
  underlyingOperation = [(SKUILoadItemResourceOperation *)self underlyingOperation];
  [underlyingOperation cancel];
}

- (SSVPlatformRequestOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

- (void)initWithResourceRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadItemResourceOperation initWithResourceRequest:]";
}

@end