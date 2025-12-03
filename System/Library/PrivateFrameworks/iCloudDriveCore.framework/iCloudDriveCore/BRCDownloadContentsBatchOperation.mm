@interface BRCDownloadContentsBatchOperation
- (BRCDownloadContentsBatchOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext group:(id)group callBackQueueTarget:(id)target;
- (id)createActivity;
- (void)finishWithResult:(id)result error:(id)error;
- (void)mainWithTransfers:(id)transfers;
- (void)sendTransferCompletionCallBack:(id)back error:(id)error;
@end

@implementation BRCDownloadContentsBatchOperation

- (BRCDownloadContentsBatchOperation)initWithSyncContext:(id)context sessionContext:(id)sessionContext group:(id)group callBackQueueTarget:(id)target
{
  v7.receiver = self;
  v7.super_class = BRCDownloadContentsBatchOperation;
  return [(BRCTransferBatchOperation *)&v7 initWithName:@"dl-content" syncContext:context sessionContext:sessionContext group:group callBackQueueTarget:target];
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "dl-content", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)sendTransferCompletionCallBack:(id)back error:(id)error
{
  backCopy = back;
  errorCopy = error;
  perDownloadCompletionBlock = [(BRCDownloadContentsBatchOperation *)self perDownloadCompletionBlock];
  if (perDownloadCompletionBlock)
  {
    v9 = backCopy;
    v17 = errorCopy;
    if (!v17)
    {
      [v9 _stageWithError:&v17];
    }

    clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
    serialQueue = [clientReadWriteDatabaseFacade serialQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__BRCDownloadContentsBatchOperation_sendTransferCompletionCallBack_error___block_invoke;
    v13[3] = &unk_2784FFBF0;
    v16 = perDownloadCompletionBlock;
    v14 = v9;
    v15 = v17;
    v12 = v9;
    dispatch_sync(serialQueue, v13);
  }
}

- (void)mainWithTransfers:(id)transfers
{
  v30 = *MEMORY[0x277D85DE8];
  allObjects = [transfers allObjects];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = allObjects;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        desiredIndices = [v10 desiredIndices];
        v12 = desiredIndices;
        if (desiredIndices)
        {
          v27 = @"pkgContent";
          v28 = desiredIndices;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          recordID = [v10 recordID];
          [v4 setObject:v13 forKeyedSubscript:recordID];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v7);
  }

  if ([v5 br_any_of:&__block_literal_global_50])
  {
    v15 = MEMORY[0x277CCABB0];
    v16 = +[BRCContainerCellularSettings containerCellularSettings];
    v17 = [v15 numberWithBool:{objc_msgSend(v16, "isCellularEnabled")}];
  }

  else
  {
    v17 = &unk_2837B0448;
  }

  objectEnumerator = [v5 objectEnumerator];
  v19 = [(BRCTransferBatchOperation *)self fetchOperationForTransfers:objectEnumerator traceCode:18];

  v20 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:260];
  [v19 setDesiredKeys:v20];

  if ([v4 count])
  {
    [v19 setDesiredPackageFileIndices:v4];
  }

  [(_BRCOperation *)self addSubOperation:v19 overrideContext:0 allowsCellularAccess:v17];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  v5.receiver = self;
  v5.super_class = BRCDownloadContentsBatchOperation;
  [(BRCTransferBatchOperation *)&v5 finishWithResult:result error:error];
  [(BRCDownloadContentsBatchOperation *)self setPerDownloadCompletionBlock:0];
}

@end