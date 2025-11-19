@interface VSFeaturedIdentityProviderLimitingOperation
- (VSFeaturedIdentityProviderLimitingOperation)init;
- (void)executionDidBegin;
@end

@implementation VSFeaturedIdentityProviderLimitingOperation

- (VSFeaturedIdentityProviderLimitingOperation)init
{
  v13.receiver = self;
  v13.super_class = VSFeaturedIdentityProviderLimitingOperation;
  v2 = [(VSFeaturedIdentityProviderLimitingOperation *)&v13 init];
  v3 = v2;
  if (v2)
  {
    unlimitedIdentityProviders = v2->_unlimitedIdentityProviders;
    v2->_unlimitedIdentityProviders = MEMORY[0x277CBEBF8];

    v5 = objc_alloc_init(MEMORY[0x277CE2298]);
    v6 = v3->_result;
    v3->_result = v5;

    v7 = MEMORY[0x277CCABD8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 queueWithName:v9];
    privateQueue = v3->_privateQueue;
    v3->_privateQueue = v10;
  }

  return v3;
}

- (void)executionDidBegin
{
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Will attempt to determine maximum number of featured providers.", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE21A0]);
  [v4 setBagKey:*MEMORY[0x277CE2368]];
  objc_initWeak(buf, v4);
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__VSFeaturedIdentityProviderLimitingOperation_executionDidBegin__block_invoke;
  v6[3] = &unk_279E19F20;
  objc_copyWeak(&v7, buf);
  objc_copyWeak(&v8, &location);
  [v4 setCompletionBlock:v6];
  v5 = [(VSFeaturedIdentityProviderLimitingOperation *)self privateQueue];
  [v5 addOperation:v4];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
  objc_destroyWeak(buf);
}

void __64__VSFeaturedIdentityProviderLimitingOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained value];
  objc_opt_class();
  v24 = WeakRetained;
  v22 = v4;
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = [v4 integerValue] + 1;
  }

  else
  {
    v5 = 16;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = v3;
  obj = [v3 unlimitedIdentityProviders];
  v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v26 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v10 = [v9 storefronts];
        v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v28;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v28 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v27 + 1) + 8 * j);
              v16 = [v15 sortOrdinal];
              v17 = [v16 unsignedIntegerValue];

              if (v17 >= v5)
              {
                [v15 setSortOrdinal:0];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
          }

          while (v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v18 = MEMORY[0x277CE2298];
  v19 = [v23 unlimitedIdentityProviders];
  v20 = [v18 optionalWithObject:v19];
  [v23 setResult:v20];

  [v23 finishExecutionIfPossible];
  v21 = *MEMORY[0x277D85DE8];
}

@end