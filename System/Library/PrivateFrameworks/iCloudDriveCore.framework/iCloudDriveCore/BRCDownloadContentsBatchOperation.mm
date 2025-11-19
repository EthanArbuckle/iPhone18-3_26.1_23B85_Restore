@interface BRCDownloadContentsBatchOperation
- (BRCDownloadContentsBatchOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4 group:(id)a5 callBackQueueTarget:(id)a6;
- (id)createActivity;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)mainWithTransfers:(id)a3;
- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4;
@end

@implementation BRCDownloadContentsBatchOperation

- (BRCDownloadContentsBatchOperation)initWithSyncContext:(id)a3 sessionContext:(id)a4 group:(id)a5 callBackQueueTarget:(id)a6
{
  v7.receiver = self;
  v7.super_class = BRCDownloadContentsBatchOperation;
  return [(BRCTransferBatchOperation *)&v7 initWithName:@"dl-content" syncContext:a3 sessionContext:a4 group:a5 callBackQueueTarget:a6];
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "dl-content", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRCDownloadContentsBatchOperation *)self perDownloadCompletionBlock];
  if (v8)
  {
    v9 = v6;
    v17 = v7;
    if (!v17)
    {
      [v9 _stageWithError:&v17];
    }

    v10 = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
    v11 = [v10 serialQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__BRCDownloadContentsBatchOperation_sendTransferCompletionCallBack_error___block_invoke;
    v13[3] = &unk_2784FFBF0;
    v16 = v8;
    v14 = v9;
    v15 = v17;
    v12 = v9;
    dispatch_sync(v11, v13);
  }
}

- (void)mainWithTransfers:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [a3 allObjects];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
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
        v11 = [v10 desiredIndices];
        v12 = v11;
        if (v11)
        {
          v27 = @"pkgContent";
          v28 = v11;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
          v14 = [v10 recordID];
          [v4 setObject:v13 forKeyedSubscript:v14];
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

  v18 = [v5 objectEnumerator];
  v19 = [(BRCTransferBatchOperation *)self fetchOperationForTransfers:v18 traceCode:18];

  v20 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:260];
  [v19 setDesiredKeys:v20];

  if ([v4 count])
  {
    [v19 setDesiredPackageFileIndices:v4];
  }

  [(_BRCOperation *)self addSubOperation:v19 overrideContext:0 allowsCellularAccess:v17];

  v21 = *MEMORY[0x277D85DE8];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v5.receiver = self;
  v5.super_class = BRCDownloadContentsBatchOperation;
  [(BRCTransferBatchOperation *)&v5 finishWithResult:a3 error:a4];
  [(BRCDownloadContentsBatchOperation *)self setPerDownloadCompletionBlock:0];
}

@end