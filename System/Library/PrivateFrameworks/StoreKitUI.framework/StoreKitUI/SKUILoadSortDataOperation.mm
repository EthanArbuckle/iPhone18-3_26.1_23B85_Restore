@interface SKUILoadSortDataOperation
- (SKUILoadSortDataOperation)initWithResourceRequest:(id)a3;
- (SSVLoadURLOperation)underlyingOperation;
- (void)cancel;
- (void)main;
@end

@implementation SKUILoadSortDataOperation

- (SKUILoadSortDataOperation)initWithResourceRequest:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILoadSortDataOperation initWithResourceRequest:];
  }

  v7.receiver = self;
  v7.super_class = SKUILoadSortDataOperation;
  v5 = [(SKUILoadResourceOperation *)&v7 initWithResourceRequest:v4];

  return v5;
}

- (void)main
{
  v3 = objc_alloc(MEMORY[0x277D69CD8]);
  v4 = [(SKUILoadResourceOperation *)self resourceRequest];
  v5 = [v4 sortURL];
  v6 = [v3 initWithURL:v5];

  v7 = [MEMORY[0x277D69D48] consumer];
  [v6 setDataConsumer:v7];

  v8 = [(SKUILoadResourceOperation *)self clientContext];
  v9 = [v8 valueForConfigurationKey:@"sfsuffix"];
  [v6 setStoreFrontSuffix:v9];

  v10 = [(SKUILoadResourceOperation *)self outputBlock];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__SKUILoadSortDataOperation_main__block_invoke;
  v12[3] = &unk_2781FFB60;
  v13 = v10;
  v11 = v10;
  [v6 setOutputBlock:v12];
  [(SKUILoadSortDataOperation *)self setUnderlyingOperation:v6];
  [v6 main];
}

void __33__SKUILoadSortDataOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKey:@"storePlatformData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v5 objectForKey:@"storePlatformPrewarmDataKey"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v11 = objc_opt_class();
      v10 = SKUIStorePageItemsWithStorePlatformDictionary(v7, v9, v11);
    }

    else
    {
      v10 = 0;
    }

    v12 = [v5 objectForKey:@"adamIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v7;
      v27 = a1;
      v28 = v5;
      v36 = 0uLL;
      v37 = 0;
      SKUILockupStyleDefault(&v36);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v25 = v12;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v33;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v32 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = [v10 objectForKey:v18];
              v20 = [SKUILockupComponent alloc];
              v21 = v20;
              if (v19)
              {
                v30 = v36;
                v31 = v37;
                v22 = [(SKUILockupComponent *)v20 initWithItem:v19 style:&v30];
              }

              else
              {
                v23 = [v18 longLongValue];
                v30 = v36;
                v31 = v37;
                v22 = [(SKUILockupComponent *)v21 initWithItemIdentifier:v23 style:&v30];
              }

              v24 = v22;
              [v29 addObject:{v22, v25}];
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v15);
      }

      v5 = v28;
      v7 = v26;
      a1 = v27;
      v12 = v25;
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = SKUILoadSortDataOperation;
  [(SKUILoadResourceOperation *)&v4 cancel];
  v3 = [(SKUILoadSortDataOperation *)self underlyingOperation];
  [v3 cancel];
}

- (SSVLoadURLOperation)underlyingOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_underlyingOperation);

  return WeakRetained;
}

- (void)initWithResourceRequest:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILoadSortDataOperation initWithResourceRequest:]";
}

@end