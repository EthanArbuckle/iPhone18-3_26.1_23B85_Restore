@interface VSIdentityProviderFetchAllFromStoreOperation
- (VSIdentityProviderFetchAllFromStoreOperation)init;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderFetchAllFromStoreOperation

- (VSIdentityProviderFetchAllFromStoreOperation)init
{
  v8.receiver = self;
  v8.super_class = VSIdentityProviderFetchAllFromStoreOperation;
  v2 = [(VSIdentityProviderFetchAllFromStoreOperation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CE2298]);
    v4 = v2->_result;
    v2->_result = v3;

    v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
    privateQueue = v2->_privateQueue;
    v2->_privateQueue = v5;

    [(NSOperationQueue *)v2->_privateQueue setName:@"VSIdentityProviderFetchAllFromStoreOperation"];
    [(NSOperationQueue *)v2->_privateQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)executionDidBegin
{
  privateQueue = [(VSIdentityProviderFetchAllFromStoreOperation *)self privateQueue];
  v4 = objc_alloc_init(MEMORY[0x277CE21A8]);
  [v4 setRequestType:0];
  [v4 setMethodName:*MEMORY[0x277CE2378]];
  auditToken = [(VSIdentityProviderFetchAllFromStoreOperation *)self auditToken];
  [v4 setAuditToken:auditToken];

  v6 = [objc_alloc(MEMORY[0x277CE21B0]) initWithRequest:v4];
  [privateQueue addOperation:v6];
  v7 = objc_alloc_init(VSFeaturedIdentityProviderLimitingOperation);
  objc_initWeak(&location, v7);
  objc_initWeak(&from, self);
  v8 = MEMORY[0x277CCA8C8];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke;
  v15 = &unk_279E19668;
  v9 = v6;
  v16 = v9;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v10 = privateQueue;
  v17 = v10;
  v11 = [v8 blockOperationWithBlock:&v12];
  [v11 addDependency:{v9, v12, v13, v14, v15}];
  [v10 addOperation:v11];
  [(VSFeaturedIdentityProviderLimitingOperation *)v7 addDependency:v11];
  [v10 addOperation:v7];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke(id *a1)
{
  v2 = [MEMORY[0x277CCAE68] valueTransformerForName:@"VSAMSIdentityProviderResponseValueTransformer"];
  v3 = [a1[4] result];
  v4 = [v3 forceUnwrapObject];
  v5 = [v2 transformedValue:v4];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_2;
  v8[3] = &unk_279E19640;
  objc_copyWeak(&v10, a1 + 6);
  objc_copyWeak(&v11, a1 + 7);
  v9 = a1[5];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_4;
  v6[3] = &unk_279E194D0;
  objc_copyWeak(&v7, a1 + 7);
  [v5 unwrapObject:v8 error:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  [WeakRetained setUnlimitedIdentityProviders:v3];
  v5 = MEMORY[0x277CCA8C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_3;
  v11 = &unk_279E19618;
  objc_copyWeak(&v13, a1 + 6);
  v6 = WeakRetained;
  v12 = v6;
  v7 = [v5 blockOperationWithBlock:&v8];
  [v7 addDependency:{v6, v8, v9, v10, v11}];
  [a1[4] addOperation:v7];

  objc_destroyWeak(&v13);
}

void __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = MEMORY[0x277CE2298];
  v3 = MEMORY[0x277CE2250];
  v4 = [*(a1 + 32) result];
  v5 = [v4 forceUnwrapObject];
  v6 = [v3 failableWithObject:v5];
  v7 = [v2 optionalWithObject:v6];
  [WeakRetained setResult:v7];

  [WeakRetained finishExecutionIfPossible];
}

void __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_4_cold_1(v3, v4);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MEMORY[0x277CE2298];
  v7 = [MEMORY[0x277CE2250] failableWithError:v3];
  v8 = [v6 optionalWithObject:v7];
  [WeakRetained setResult:v8];

  [WeakRetained finishExecutionIfPossible];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSIdentityProviderFetchAllFromStoreOperation;
  [(VSAsyncOperation *)&v4 cancel];
  privateQueue = [(VSIdentityProviderFetchAllFromStoreOperation *)self privateQueue];
  [privateQueue cancelAllOperations];
}

void __65__VSIdentityProviderFetchAllFromStoreOperation_executionDidBegin__block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_270DD4000, a2, OS_LOG_TYPE_ERROR, "Unable to transform response: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end