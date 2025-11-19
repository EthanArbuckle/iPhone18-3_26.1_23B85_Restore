@interface SBKSyncRequestHandler
- (NSArray)responseConflictedKeys;
- (NSArray)responseDeletedKeys;
- (NSArray)responseUpdatedKeys;
- (NSString)responseDomainVersion;
- (SBKSyncRequestHandler)initWithBagContext:(id)a3;
- (SBKSyncRequestHandler)initWithBagContext:(id)a3 accountIdentifier:(id)a4;
- (id)responseDataForResponseKey:(id)a3;
- (id)transaction:(id)a3 keyValuePairForUpdatedKey:(id)a4;
- (void)_onQueue_clearTransactionResponseData;
- (void)clearTransactionResponseData;
- (void)setResponseDomainVersion:(id)a3;
- (void)startTransactionWithSyncAnchor:(id)a3 keysToUpdate:(id)a4 keysToDelete:(id)a5 finishedBlock:(id)a6;
- (void)transaction:(id)a3 processDeletedKey:(id)a4 isDirty:(BOOL *)a5;
- (void)transaction:(id)a3 processUpdatedKey:(id)a4 data:(id)a5 conflict:(BOOL)a6 isDirty:(BOOL *)a7;
- (void)transaction:(id)a3 willProcessResponseData:(id)a4;
@end

@implementation SBKSyncRequestHandler

- (id)transaction:(id)a3 keyValuePairForUpdatedKey:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"SBKSyncRequestHandler.m" lineNumber:158 description:@"subclass must supply key-value pair by implementing the SBKSyncTransactionProcessing protocol"];

  return 0;
}

- (void)transaction:(id)a3 processDeletedKey:(id)a4 isDirty:(BOOL *)a5
{
  v7 = a4;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__SBKSyncRequestHandler_transaction_processDeletedKey_isDirty___block_invoke;
  v10[3] = &unk_279D23150;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_sync(queue, v10);
  *a5 = 0;
}

- (void)transaction:(id)a3 processUpdatedKey:(id)a4 data:(id)a5 conflict:(BOOL)a6 isDirty:(BOOL *)a7
{
  v11 = a4;
  v12 = a5;
  queue = self->_queue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__SBKSyncRequestHandler_transaction_processUpdatedKey_data_conflict_isDirty___block_invoke;
  v16[3] = &unk_279D23240;
  v19 = a6;
  v16[4] = self;
  v17 = v12;
  v18 = v11;
  v14 = v11;
  v15 = v12;
  dispatch_sync(queue, v16);
  *a7 = 0;
}

uint64_t __77__SBKSyncRequestHandler_transaction_processUpdatedKey_data_conflict_isDirty___block_invoke(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = &OBJC_IVAR___SBKSyncRequestHandler__responseConflictedKeys;
  }

  else
  {
    v2 = &OBJC_IVAR___SBKSyncRequestHandler__responseUpdatedKeys;
  }

  v3 = 48;
  if (*(a1 + 56))
  {
    v3 = 40;
  }

  result = [*(*(a1 + 32) + *v2) addObject:*(a1 + v3)];
  if (*(a1 + 40))
  {
    v5 = *(*(a1 + 32) + 64);
    v6 = *(a1 + 48);

    return [v5 setObject:? forKey:?];
  }

  return result;
}

- (void)transaction:(id)a3 willProcessResponseData:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__SBKSyncRequestHandler_transaction_willProcessResponseData___block_invoke;
  v8[3] = &unk_279D23150;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

void __61__SBKSyncRequestHandler_transaction_willProcessResponseData___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = os_log_create("com.apple.amp.StoreBookkeeper", "Sync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(*(a1 + 32) + 32) syncAnchor];
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26BC19000, v2, OS_LOG_TYPE_DEFAULT, "will process response with responseDomainVersion = %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)startTransactionWithSyncAnchor:(id)a3 keysToUpdate:(id)a4 keysToDelete:(id)a5 finishedBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a6 copy];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__SBKSyncRequestHandler_startTransactionWithSyncAnchor_keysToUpdate_keysToDelete_finishedBlock___block_invoke;
  block[3] = &unk_279D23218;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;
  dispatch_async(queue, block);
}

void __96__SBKSyncRequestHandler_startTransactionWithSyncAnchor_keysToUpdate_keysToDelete_finishedBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _onQueue_clearTransactionResponseData];
  v2 = [SBKSyncTransaction alloc];
  v3 = [*(a1 + 32) bagContext];
  v4 = *(a1 + 32);
  v5 = -[SBKSyncTransaction initWithStoreBagContext:syncAnchor:keysToUpdate:keysToDelete:conflictDetectionType:](v2, "initWithStoreBagContext:syncAnchor:keysToUpdate:keysToDelete:conflictDetectionType:", v3, *(a1 + 40), *(a1 + 48), *(a1 + 56), [objc_opt_class() conflictDetectionType]);

  [(SBKSyncTransaction *)v5 setTransactionProcessor:*(a1 + 32)];
  v6 = *(*(a1 + 32) + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __96__SBKSyncRequestHandler_startTransactionWithSyncAnchor_keysToUpdate_keysToDelete_finishedBlock___block_invoke_2;
  v7[3] = &unk_279D231F0;
  v8 = *(a1 + 64);
  [v6 scheduleTransaction:v5 withTransactionFinishedBlock:v7];
}

uint64_t __96__SBKSyncRequestHandler_startTransactionWithSyncAnchor_keysToUpdate_keysToDelete_finishedBlock___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

- (void)clearTransactionResponseData
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SBKSyncRequestHandler_clearTransactionResponseData__block_invoke;
  block[3] = &unk_279D231C8;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)_onQueue_clearTransactionResponseData
{
  responseData = self->_responseData;
  self->_responseData = 0;

  overrideResponseDomainVersion = self->_overrideResponseDomainVersion;
  self->_overrideResponseDomainVersion = 0;

  [(NSMutableArray *)self->_responseUpdatedKeys removeAllObjects];
  [(NSMutableArray *)self->_responseDeletedKeys removeAllObjects];
  [(NSMutableArray *)self->_responseConflictedKeys removeAllObjects];
  responseDataByKey = self->_responseDataByKey;

  [(NSMutableDictionary *)responseDataByKey removeAllObjects];
}

- (id)responseDataForResponseKey:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__SBKSyncRequestHandler_responseDataForResponseKey___block_invoke;
  v10[3] = &unk_279D231A0;
  v10[4] = self;
  v11 = v4;
  v6 = v10;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1889;
  v19 = __Block_byref_object_dispose__1890;
  v20 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialGetValue_block_invoke;
  block[3] = &unk_279D23290;
  v13 = v6;
  v14 = &v15;
  v7 = v4;
  dispatch_sync(queue, block);
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

- (NSArray)responseConflictedKeys
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__SBKSyncRequestHandler_responseConflictedKeys__block_invoke;
  v6[3] = &unk_279D23178;
  v6[4] = self;
  v3 = v6;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1889;
  v14 = __Block_byref_object_dispose__1890;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialGetValue_block_invoke;
  block[3] = &unk_279D23290;
  v8 = v3;
  v9 = &v10;
  dispatch_sync(queue, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (NSArray)responseDeletedKeys
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SBKSyncRequestHandler_responseDeletedKeys__block_invoke;
  v6[3] = &unk_279D23178;
  v6[4] = self;
  v3 = v6;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1889;
  v14 = __Block_byref_object_dispose__1890;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialGetValue_block_invoke;
  block[3] = &unk_279D23290;
  v8 = v3;
  v9 = &v10;
  dispatch_sync(queue, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (NSArray)responseUpdatedKeys
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__SBKSyncRequestHandler_responseUpdatedKeys__block_invoke;
  v6[3] = &unk_279D23178;
  v6[4] = self;
  v3 = v6;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1889;
  v14 = __Block_byref_object_dispose__1890;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialGetValue_block_invoke;
  block[3] = &unk_279D23290;
  v8 = v3;
  v9 = &v10;
  dispatch_sync(queue, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (NSString)responseDomainVersion
{
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SBKSyncRequestHandler_responseDomainVersion__block_invoke;
  v6[3] = &unk_279D23178;
  v6[4] = self;
  v3 = v6;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__1889;
  v14 = __Block_byref_object_dispose__1890;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialGetValue_block_invoke;
  block[3] = &unk_279D23290;
  v8 = v3;
  v9 = &v10;
  dispatch_sync(queue, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v4;
}

- (void)setResponseDomainVersion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SBKSyncRequestHandler_setResponseDomainVersion___block_invoke;
  v8[3] = &unk_279D23150;
  v8[4] = self;
  v9 = v4;
  v6 = v8;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___serialSetValue_block_invoke;
  block[3] = &unk_279D23268;
  v11 = v6;
  v7 = v4;
  dispatch_sync(queue, block);
}

- (SBKSyncRequestHandler)initWithBagContext:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v28.receiver = self;
  v28.super_class = SBKSyncRequestHandler;
  v8 = [(SBKRequestHandler *)&v28 initWithBagContext:v6];
  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.storebookkeeper.SBKSyncRequestHandler", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    v11 = [MEMORY[0x277D69A20] defaultStore];
    v12 = [v11 accountWithUniqueIdentifier:v7];

    v13 = [SBKTransactionController alloc];
    v14 = [v6 domain];
    v15 = [v6 syncRequestURL];
    v16 = [(SBKTransactionController *)v13 initWithDomain:v14 requestURL:v15 forAccount:v12];
    transactionController = v8->_transactionController;
    v8->_transactionController = v16;

    responseData = v8->_responseData;
    v8->_responseData = 0;

    v19 = [MEMORY[0x277CBEB18] array];
    responseUpdatedKeys = v8->_responseUpdatedKeys;
    v8->_responseUpdatedKeys = v19;

    v21 = [MEMORY[0x277CBEB18] array];
    responseDeletedKeys = v8->_responseDeletedKeys;
    v8->_responseDeletedKeys = v21;

    v23 = [MEMORY[0x277CBEB18] array];
    responseConflictedKeys = v8->_responseConflictedKeys;
    v8->_responseConflictedKeys = v23;

    v25 = [MEMORY[0x277CBEB38] dictionary];
    responseDataByKey = v8->_responseDataByKey;
    v8->_responseDataByKey = v25;
  }

  return v8;
}

- (SBKSyncRequestHandler)initWithBagContext:(id)a3
{
  v4 = a3;
  v5 = SBKStoreAccount();
  v6 = [v5 uniqueIdentifier];
  v7 = [(SBKSyncRequestHandler *)self initWithBagContext:v4 accountIdentifier:v6];

  return v7;
}

@end