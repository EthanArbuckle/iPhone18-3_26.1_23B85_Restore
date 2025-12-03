@interface SBKSyncTransaction
- (NSArray)keysToDelete;
- (NSArray)keysToUpdate;
- (NSString)syncAnchor;
- (SBKSyncTransaction)initWithStoreBagContext:(id)context syncAnchor:(id)anchor keysToUpdate:(id)update keysToDelete:(id)delete conflictDetectionType:(int64_t)type;
- (SBKSyncTransaction)initWithSyncRequestURL:(id)l domain:(id)domain syncAnchor:(id)anchor keysToUpdate:(id)update keysToDelete:(id)delete conflictDetectionType:(int64_t)type;
- (SBKSyncTransactionProcessing)transactionProcessor;
- (id)clampsKey;
- (id)conflictDetectionOrdinalForKey:(id)key;
- (id)description;
- (id)keyValuePairForUpdatedKey:(id)key;
- (int64_t)conflictDetectionType;
- (void)_validateTransactionProcessor:(id)processor;
- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler;
- (void)setTransactionProcessor:(id)processor;
@end

@implementation SBKSyncTransaction

- (void)processDataInResponse:(id)response withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([responseCopy syncResponseData], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = os_log_create("com.apple.amp.StoreBookkeeper", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = responseCopy;
      _os_log_impl(&dword_26BC19000, v9, OS_LOG_TYPE_ERROR, "WARNING: Invalid response (%@).  Skipping...", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
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
  v17 = handlerCopy;
  v12 = v8;
  v13 = handlerCopy;
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

- (id)keyValuePairForUpdatedKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  v6 = [WeakRetained transaction:self keyValuePairForUpdatedKey:keyCopy];

  return v6;
}

- (id)conflictDetectionOrdinalForKey:(id)key
{
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_transactionProcessor);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:124 description:@"transactions using conflict detection must supply a conflict ordinal"];
  }

  v7 = [WeakRetained transaction:self conflictDetectionOrdinalForKey:keyCopy];

  return v7;
}

- (id)description
{
  if ([(SBKSyncTransaction *)self type]== 1)
  {
    v3 = MEMORY[0x277CCACA8];
    syncAnchor = [(SBKSyncTransaction *)self syncAnchor];
    v5 = [v3 stringWithFormat:@"SYNC: anchor=%@", syncAnchor];

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

- (void)setTransactionProcessor:(id)processor
{
  obj = processor;
  [(SBKSyncTransaction *)self _validateTransactionProcessor:obj];
  objc_storeWeak(&self->_transactionProcessor, obj);
}

- (void)_validateTransactionProcessor:(id)processor
{
  processorCopy = processor;
  if (processorCopy)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:81 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:82 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:83 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler4 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:84 description:@"Invalid processor"];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler5 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:85 description:@"Invalid processor"];
    }

    if ([(SBKSyncTransaction *)self conflictDetectionType]&& (objc_opt_respondsToSelector() & 1) == 0)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"SBKSyncTransaction.m" lineNumber:88 description:@"Invalid processor"];
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
  type = [(SBKSyncTransaction *)self type];
  transactionProcessor = [(SBKSyncTransaction *)self transactionProcessor];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  keysToUpdate = [(SBKSyncTransaction *)self keysToUpdate];
  v9 = [v3 stringWithFormat:@"%lld-%@-%lld", type, v7, objc_msgSend(keysToUpdate, "count")];

  return v9;
}

- (SBKSyncTransaction)initWithStoreBagContext:(id)context syncAnchor:(id)anchor keysToUpdate:(id)update keysToDelete:(id)delete conflictDetectionType:(int64_t)type
{
  deleteCopy = delete;
  updateCopy = update;
  anchorCopy = anchor;
  contextCopy = context;
  syncRequestURL = [contextCopy syncRequestURL];
  domain = [contextCopy domain];

  v18 = [(SBKSyncTransaction *)self initWithSyncRequestURL:syncRequestURL domain:domain syncAnchor:anchorCopy keysToUpdate:updateCopy keysToDelete:deleteCopy conflictDetectionType:type];
  return v18;
}

- (SBKSyncTransaction)initWithSyncRequestURL:(id)l domain:(id)domain syncAnchor:(id)anchor keysToUpdate:(id)update keysToDelete:(id)delete conflictDetectionType:(int64_t)type
{
  lCopy = l;
  domainCopy = domain;
  anchorCopy = anchor;
  updateCopy = update;
  deleteCopy = delete;
  v24.receiver = self;
  v24.super_class = SBKSyncTransaction;
  v19 = [(SBKTransaction *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_syncRequestURL, l);
    objc_storeStrong(&v20->_domain, domain);
    if (anchorCopy)
    {
      v21 = anchorCopy;
    }

    else
    {
      v21 = @"0";
    }

    objc_storeStrong(&v20->_syncAnchor, v21);
    objc_storeStrong(&v20->_keysToUpdate, update);
    objc_storeStrong(&v20->_keysToDelete, delete);
    v20->_conflictDetectionType = type;
    v20->_type = 1;
  }

  return v20;
}

@end