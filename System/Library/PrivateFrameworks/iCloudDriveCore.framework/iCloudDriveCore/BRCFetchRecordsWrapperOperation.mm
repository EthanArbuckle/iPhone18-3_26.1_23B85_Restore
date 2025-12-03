@interface BRCFetchRecordsWrapperOperation
- (BRCFetchRecordsWrapperOperation)initWithCKFetchRecordsOperation:(id)operation opName:(id)name group:(id)group serverZone:(id)zone isUserWaiting:(BOOL)waiting sessionContext:(id)context;
- (id)createActivity;
- (void)main;
@end

@implementation BRCFetchRecordsWrapperOperation

- (BRCFetchRecordsWrapperOperation)initWithCKFetchRecordsOperation:(id)operation opName:(id)name group:(id)group serverZone:(id)zone isUserWaiting:(BOOL)waiting sessionContext:(id)context
{
  waitingCopy = waiting;
  v32 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  groupCopy = group;
  zoneCopy = zone;
  contextCopy = context;
  nameCopy = name;
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = operationCopy;
    v30 = 2112;
    v31 = v19;
    _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_INFO, "[INFO] Request to wrap and run CKFetchRecordsOperation: [%@]%@", buf, 0x16u);
  }

  v21 = [@"fetch-records-wrapper/" stringByAppendingString:nameCopy];

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v27.receiver = self;
  v27.super_class = BRCFetchRecordsWrapperOperation;
  v23 = [(_BRCOperation *)&v27 initWithName:v21 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v23)
  {
    [(_BRCOperation *)v23 setGroup:groupCopy];
    [(_BRCOperation *)v23 setNonDiscretionary:waitingCopy];
    objc_storeStrong(&v23->_serverZone, zone);
    objc_storeStrong(&v23->_fetchRecordsOperation, operation);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/fetch-records-wrapper", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)main
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    fetchRecordsOperation = self->_fetchRecordsOperation;
    *buf = 138412546;
    v16 = fetchRecordsOperation;
    v17 = 2112;
    v18 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_INFO, "[INFO] Running CKFetchRecordsOperation: [%@]%@", buf, 0x16u);
  }

  fetchRecordsCompletionBlock = [(CKFetchRecordsOperation *)self->_fetchRecordsOperation fetchRecordsCompletionBlock];
  objc_initWeak(buf, self);
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __39__BRCFetchRecordsWrapperOperation_main__block_invoke;
  v12 = &unk_278504F88;
  objc_copyWeak(&v14, buf);
  v7 = fetchRecordsCompletionBlock;
  v13 = v7;
  [(CKFetchRecordsOperation *)self->_fetchRecordsOperation setFetchRecordsCompletionBlock:&v9];
  [(_BRCOperation *)self addSubOperation:self->_fetchRecordsOperation, v9, v10, v11, v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __39__BRCFetchRecordsWrapperOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = WeakRetained[64];
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_INFO, "[INFO] finished running CKFetchRecordsOperation [%@] with error [%@]%@", &v12, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  [WeakRetained completedWithResult:0 error:v5];

  v11 = *MEMORY[0x277D85DE8];
}

@end