@interface VSIdentityProviderFetchOperation
- (VSIdentityProviderFetchOperation)init;
- (VSIdentityProviderFetchOperation)initWithIdentityProviderID:(id)a3;
- (VSIdentityProviderFetchOperation)initWithIdentityProviderUniqueID:(id)a3;
- (id)_fetchAllOperation;
- (void)cancel;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderFetchOperation

- (VSIdentityProviderFetchOperation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSIdentityProviderFetchOperation)initWithIdentityProviderID:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProviderID parameter must not be nil."];
  }

  v10.receiver = self;
  v10.super_class = VSIdentityProviderFetchOperation;
  v5 = [(VSIdentityProviderFetchOperation *)&v10 init];
  v6 = v5;
  if (v5)
  {
    commonInit_2(v5);
    v7 = [v4 copy];
    identityProviderID = v6->_identityProviderID;
    v6->_identityProviderID = v7;
  }

  return v6;
}

- (VSIdentityProviderFetchOperation)initWithIdentityProviderUniqueID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProviderUniqueID parameter must not be nil."];
  }

  v9.receiver = self;
  v9.super_class = VSIdentityProviderFetchOperation;
  v6 = [(VSIdentityProviderFetchOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    commonInit_2(v6);
    objc_storeStrong(&v7->_identityProviderUniqueID, a3);
  }

  return v7;
}

- (id)_fetchAllOperation
{
  v3 = [(VSIdentityProviderFetchOperation *)self fetchFromStoreOnly];
  v4 = off_279E187F0;
  if (!v3)
  {
    v4 = off_279E187F8;
  }

  v5 = objc_alloc_init(*v4);
  v6 = [(VSIdentityProviderFetchOperation *)self auditToken];
  [v5 setAuditToken:v6];

  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The fetchAllOperation parameter must not be nil."];
  }

  return v5;
}

- (void)executionDidBegin
{
  v3 = [(VSIdentityProviderFetchOperation *)self privateQueue];
  v4 = [(VSIdentityProviderFetchOperation *)self _fetchAllOperation];
  [v3 addOperation:v4];
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277CCA8C8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke;
  v11 = &unk_279E196C0;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v12 = v6;
  v13 = self;
  v7 = [v5 blockOperationWithBlock:&v8];
  [v7 addDependency:{v6, v8, v9, v10, v11}];
  [v3 addOperation:v7];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) result];
    v4 = [v3 forceUnwrapObject];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke_2;
    v6[3] = &unk_279E1A0C8;
    v6[4] = *(a1 + 40);
    v6[5] = WeakRetained;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke_3;
    v5[3] = &unk_279E19730;
    v5[4] = WeakRetained;
    [v4 unwrapObject:v6 error:v5];

    [WeakRetained finishExecutionIfPossible];
  }
}

void __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) identityProviderID];

  if (v4)
  {
    v5 = objc_alloc_init(VSIdentityProviderFilter);
    [(VSIdentityProviderFilter *)v5 setAllIdentityProviders:v3];
    v6 = [*(a1 + 40) identityProviderID];
    v33[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    [(VSIdentityProviderFilter *)v5 setSupportedAccountProviderIDs:v7];

    v8 = [(VSIdentityProviderFilter *)v5 filteredIdentityProviders];
    v9 = [v8 firstObject];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = v3;
    v9 = [(VSIdentityProviderFilter *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v9)
    {
      v27 = v3;
      v10 = *v29;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v13 = [v12 uniqueID];
          v14 = [v13 forceUnwrapObject];
          v15 = [*(a1 + 32) identityProviderUniqueID];
          v16 = [v14 isEqual:v15];

          if (v16)
          {
            v9 = v12;
            goto LABEL_13;
          }
        }

        v9 = [(VSIdentityProviderFilter *)v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

LABEL_13:
      v3 = v27;
    }
  }

  if (v9)
  {
    v17 = *(a1 + 40);
    v18 = MEMORY[0x277CE2298];
    v19 = MEMORY[0x277CE2250];
    v20 = v9;
    v21 = [v20 copy];
    v22 = [v19 failableWithObject:v21];
    v23 = [v18 optionalWithObject:v22];
    [v17 setResult:v23];
  }

  else
  {
    v21 = VSPrivateError();
    v24 = *(a1 + 40);
    v25 = MEMORY[0x277CE2298];
    v22 = [MEMORY[0x277CE2250] failableWithError:v21];
    v23 = [v25 optionalWithObject:v22];
    [v24 setResult:v23];
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __53__VSIdentityProviderFetchOperation_executionDidBegin__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithError:a2];
  v4 = [v3 optionalWithObject:v5];
  [v2 setResult:v4];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VSIdentityProviderFetchOperation;
  [(VSAsyncOperation *)&v4 cancel];
  v3 = [(VSIdentityProviderFetchOperation *)self privateQueue];
  [v3 cancelAllOperations];

  [(VSAsyncOperation *)self finishExecutionIfPossible];
}

@end