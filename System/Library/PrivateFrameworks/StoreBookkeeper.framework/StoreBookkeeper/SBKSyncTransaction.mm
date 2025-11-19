@interface SBKSyncTransaction
- (NSArray)keysToDelete;
- (NSArray)keysToUpdate;
- (NSString)syncAnchor;
- (SBKSyncTransaction)initWithStoreBagContext:(id)a3 syncAnchor:(id)a4 keysToUpdate:(id)a5 keysToDelete:(id)a6 conflictDetectionType:(int64_t)a7;
- (SBKSyncTransaction)initWithSyncRequestURL:(id)a3 domain:(id)a4 syncAnchor:(id)a5 keysToUpdate:(id)a6 keysToDelete:(id)a7 conflictDetectionType:(int64_t)a8;
- (SBKSyncTransactionProcessing)transactionProcessor;
- (id)clampsKey;
- (id)conflictDetectionOrdinalForKey:(id)a3;
- (id)description;
- (id)keyValuePairForUpdatedKey:(id)a3;
- (int64_t)conflictDetectionType;
- (void)_validateTransactionProcessor:(id)a3;
- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4;
- (void)setTransactionProcessor:(id)a3;
@end

@implementation SBKSyncTransaction

- (void)processDataInResponse:(id)a3 withCompletionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v6 syncResponseData], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_ERROR, "WARNING: Invalid response (%@).  Skipping...", buf, 0xCu);
    }

    v7[2](v7, 0);
    v8 = 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  [WeakRetained transaction:self willProcessResponseData:v8];

  v11 = [[SBKSyncResponseDataKeyEnumerator alloc] initWithResponseData:v8];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__SBKSyncTransaction_processDataInResponse_withCompletionHandler___block_invoke;
  v15[3] = &unk_279D22FB0;
  v15[4] = self;
  v16 = v8;
  v17 = v7;
  v12 = v8;
  v13 = v7;
  [(SBKSyncResponseDataKeyEnumerator *)v11 enumerateKeysInResponseForTransaction:self completionBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __66__SBKSyncTransaction_processDataInResponse_withCompletionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 80));
  [WeakRetained transaction:a1[4] didProcessResponseData:a1[5]];

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (NSArray)keysToDelete
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v4 = objc_opt_respondsToSelector();
  keysToDelete = self->_keysToDelete;
  if (v4)
  {
    v6 = [WeakRetained transaction:self keysForTransactionForTransactionKeysToDelete:keysToDelete];
  }

  else
  {
    v6 = keysToDelete;
  }

  v7 = v6;

  return v7;
}

- (NSArray)keysToUpdate
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v4 = objc_opt_respondsToSelector();
  keysToUpdate = self->_keysToUpdate;
  if (v4)
  {
    v6 = [WeakRetained transaction:self keysForTransactionForTransactionKeysToUpdate:keysToUpdate];
  }

  else
  {
    v6 = keysToUpdate;
  }

  v7 = v6;

  return v7;
}

- (int64_t)conflictDetectionType
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v4 = objc_opt_respondsToSelector();
  conflictDetectionType = self->_conflictDetectionType;
  if (v4)
  {
    conflictDetectionType = [WeakRetained transaction:self conflictDetectionTypeForTransactionDetectionType:self->_conflictDetectionType];
  }

  return conflictDetectionType;
}

- (NSString)syncAnchor
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v4 = objc_opt_respondsToSelector();
  syncAnchor = self->_syncAnchor;
  if (v4)
  {
    v6 = [WeakRetained transaction:self syncAnchorForTransactionSyncAnchor:syncAnchor];
  }

  else
  {
    v6 = syncAnchor;
  }

  v7 = v6;

  return v7;
}

- (id)keyValuePairForUpdatedKey:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v6 = [WeakRetained transaction:self keyValuePairForUpdatedKey:v4];

  return v6;
}

- (id)conflictDetectionOrdinalForKey:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:124 description:@"transactions using conflict detection must supply a conflict ordinal"];
  }

  v7 = [WeakRetained transaction:self conflictDetectionOrdinalForKey:v5];

  return v7;
}

- (id)description
{
  if ([(SBKSyncTransaction *)self type]== 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [(SBKSyncTransaction *)self syncAnchor];
    v5 = [v3 stringWithFormat:@"SYNC: anchor=%@", v4];

    if ([(NSArray *)self->_keysToDelete count])
    {
      v6 = [(NSArray *)self->_keysToDelete componentsJoinedByString:@", "];
      v7 = [(__CFString *)v5 stringByAppendingFormat:@", deletes=%@", v6];
    }

    if ([(NSArray *)self->_keysToUpdate count])
    {
      v8 = [(NSArray *)self->_keysToUpdate componentsJoinedByString:@", "];
      v9 = [(__CFString *)v5 stringByAppendingFormat:@", updates=%@", v8];
    }
  }

  else
  {
    v5 = @"????";
  }

  v10 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = SBKSyncTransaction;
  v11 = [(SBKSyncTransaction *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@ domain = %@, %@", v11, self->_domain, v5];

  return v12;
}

- (SBKSyncTransactionProcessing)transactionProcessor
{
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);

  return WeakRetained;
}

- (void)setTransactionProcessor:(id)a3
{
  obj = a3;
  [(SBKSyncTransaction *)self _validateTransactionProcessor:obj];
  objc_storeWeak(&self->_transactionProcessor, obj);
}

- (void)_validateTransactionProcessor:(id)a3
{
  v11 = a3;
  if (v11)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:81 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:82 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:83 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:84 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:85 description:@"Invalid processor"];
    }

    if ([(SBKSyncTransaction *)self conflictDetectionType]&& (objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = [MEMORY[0x277CCA890] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:88 description:@"Invalid processor"];
    }
  }

  else
  {
    [(SBKSyncTransaction *)self conflictDetectionType];
  }
}

- (id)clampsKey
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SBKSyncTransaction *)self type];
  v5 = [(SBKSyncTransaction *)self transactionProcessor];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(SBKSyncTransaction *)self keysToUpdate];
  v9 = [v3 stringWithFormat:@"%lld-%@-%lld", v4, v7, objc_msgSend(v8, "count")];

  return v9;
}

- (SBKSyncTransaction)initWithStoreBagContext:(id)a3 syncAnchor:(id)a4 keysToUpdate:(id)a5 keysToDelete:(id)a6 conflictDetectionType:(int64_t)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [v15 syncRequestURL];
  v17 = [v15 domain];

  v18 = [(SBKSyncTransaction *)self initWithSyncRequestURL:v16 domain:v17 syncAnchor:v14 keysToUpdate:v13 keysToDelete:v12 conflictDetectionType:a7];
  return v18;
}

- (SBKSyncTransaction)initWithSyncRequestURL:(id)a3 domain:(id)a4 syncAnchor:(id)a5 keysToUpdate:(id)a6 keysToDelete:(id)a7 conflictDetectionType:(int64_t)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v24.receiver = self;
  v24.super_class = SBKSyncTransaction;
  v19 = [(SBKTransaction *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_syncRequestURL, a3);
    objc_storeStrong(&v20->_domain, a4);
    if (v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = @"0";
    }

    objc_storeStrong(&v20->_syncAnchor, v21);
    objc_storeStrong(&v20->_keysToUpdate, a6);
    objc_storeStrong(&v20->_keysToDelete, a7);
    v20->_conflictDetectionType = a8;
    v20->_type = 1;
  }

  return v20;
}

@end