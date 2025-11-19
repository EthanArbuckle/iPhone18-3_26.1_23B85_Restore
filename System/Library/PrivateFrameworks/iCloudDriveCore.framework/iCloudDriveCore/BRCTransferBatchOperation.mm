@interface BRCTransferBatchOperation
- (BRCTransferBatchOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6;
- (BRCTransferBatchOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6 callBackQueueTarget:(id)a7;
- (NSString)description;
- (double)progressForTransferID:(id)a3;
- (id)_finishedTransferForRecord:(id)a3 recordID:(id)a4 error:(id)a5;
- (id)createActivity;
- (id)fetchOperationForTransfers:(id)a3 traceCode:(int)a4;
- (id)getTransferForTransferID:(id)a3;
- (id)subclassableDescriptionWithContext:(id)a3;
- (void)_addTransfer:(id)a3;
- (void)_cancelTransferID:(id)a3;
- (void)_finishedTransfer:(id)a3 error:(id)a4;
- (void)_setProgress:(double)a3 forTransfer:(id)a4;
- (void)addTransfer:(id)a3;
- (void)cancelTransferID:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)finishedTransferForRecord:(id)a3 recordID:(id)a4 error:(id)a5;
- (void)main;
- (void)mainWithTransfers:(id)a3;
- (void)sendBatchProgressedCallback;
- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4;
- (void)setProgress:(double)a3 forRecordID:(id)a4;
@end

@implementation BRCTransferBatchOperation

- (BRCTransferBatchOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6 callBackQueueTarget:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v15 contextIdentifier];
  v18 = [v16 stringByAppendingPathComponent:v17];

  v19 = [(BRCTransferBatchOperation *)self initWithName:v18 syncContext:v15 sessionContext:v14 group:v13];
  if (v19)
  {
    v20 = [(_BRCOperation *)v19 callbackQueue];
    dispatch_set_target_queue(v20, v12);
  }

  return v19;
}

- (id)fetchOperationForTransfers:(id)a3 traceCode:(int)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[BRCAccountsManager sharedManager];
  v6 = [v5 isInSyncBubble];

  if (v6)
  {
    [BRCTransferBatchOperation(Downloads) fetchOperationForTransfers:traceCode:];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[BRCTransferBatchOperation itemsCount](self, "itemsCount")}];
  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[BRCTransferBatchOperation itemsCount](self, "itemsCount")}];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v10)
  {
    v11 = *v45;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v44 + 1) + 8 * i);
        v14 = [v13 recordID];
        v15 = [v8 objectForKey:v14];
        v16 = v15 == 0;

        if (v16)
        {
          v20 = [v13 secondaryRecordID];

          if (v20)
          {
            v21 = [v13 secondaryRecordID];
            [v7 addObject:v21];
          }

          v22 = [v13 recordID];
          [v7 addObject:v22];

          if (([v13 progressPublished] & 1) == 0)
          {
            v23 = brc_bread_crumbs();
            v24 = brc_default_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              *&buf[4] = self;
              *&buf[12] = 2112;
              *&buf[14] = v13;
              *&buf[22] = 2112;
              v49 = v23;
              _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Publishing download progress for %@%@", buf, 0x20u);
            }

            v25 = [v13 progress];
            [v25 brc_publish];

            [v13 setProgressPublished:1];
          }

          v17 = [v13 etag];
          v18 = [v13 recordID];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }

        else
        {
          v17 = brc_bread_crumbs();
          v18 = brc_default_log();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            v19 = [v13 recordID];
            *buf = 138412546;
            *&buf[4] = v19;
            *&buf[12] = 2112;
            *&buf[14] = v17;
            _os_log_fault_impl(&dword_223E7A000, v18, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We got two downloads for the same record ID: %@%@", buf, 0x16u);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v10);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v49 = __Block_byref_object_copy__37;
  v50 = __Block_byref_object_dispose__37;
  v51 = 0;
  v26 = [(BRCTransferBatchOperation *)self pendingGroup];
  dispatch_group_enter(v26);

  v27 = [(BRCTransferBatchOperation *)self pendingGroup];
  v28 = [(_BRCOperation *)self callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke;
  block[3] = &unk_278505400;
  block[4] = self;
  block[5] = buf;
  v43 = a4;
  dispatch_group_notify(v27, v28, block);

  [(BRCTransferBatchOperation *)self hash];
  kdebug_trace();
  v29 = [[BRFetchRecordsOperation alloc] initWithRecordIDs:v7];
  [(BRFetchRecordsOperation *)v29 setShouldFetchAssetContent:1];
  v30 = [(_BRCOperation *)self callbackQueue];
  [(BRFetchRecordsOperation *)v29 setCallbackQueue:v30];

  [(BRFetchRecordsOperation *)v29 setRecordIDsToVersionETags:v8];
  objc_initWeak(&location, v29);
  v31 = [BRCUserDefaults defaultsForMangledID:0];
  v32 = [v31 requestCKCacheAssetClone];

  if (v32)
  {
    [(BRFetchRecordsOperation *)v29 setShouldCloneFileInAssetCache:1];
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_2;
  v40[3] = &unk_278505428;
  v40[4] = self;
  [(BRFetchRecordsOperation *)v29 setPerRecordProgressBlock:v40];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_102;
  v39[3] = &unk_278504F10;
  v39[4] = self;
  [(BRFetchRecordsOperation *)v29 setPerRecordCompletionBlock:v39];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_106;
  v37[3] = &unk_278505450;
  objc_copyWeak(&v38, &location);
  v37[4] = self;
  v37[5] = buf;
  [(BRFetchRecordsOperation *)v29 setFetchRecordsCompletionBlock:v37];
  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  v33 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completedWithResult:0 error:*(*(*(a1 + 40) + 8) + 40)];
  v2 = (4 * *(a1 + 48) + 4) & 0xFFFC;
  [*(a1 + 32) hash];

  return kdebug_trace();
}

void __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_2(uint64_t a1, void *a2, double a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 < 0.0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138412802;
      v11 = v8;
      v12 = 2048;
      v13 = a3;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] %@ - Download: Received negative progress from CK. progress [%f]%@", &v10, 0x20u);
    }
  }

  [*(a1 + 32) setProgress:v5 forRecordID:a3];

  v9 = *MEMORY[0x277D85DE8];
}

void __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_102(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!(v7 | v9))
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      __44__BRCSharingFetchUserRecordIDOperation_main__block_invoke_cold_1(v10, v11);
    }

    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: no record and no error"];
  }

  v12 = objc_autoreleasePoolPush();
  [*(a1 + 32) finishedTransferForRecord:v7 recordID:v8 error:v9];
  objc_autoreleasePoolPop(v12);
}

void __77__BRCTransferBatchOperation_Downloads__fetchOperationForTransfers_traceCode___block_invoke_106(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained metrics];
  v7 = [v6 MMCSMetrics];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = 138413826;
    v17 = v15;
    v18 = 2112;
    v19 = WeakRetained;
    v20 = 2048;
    v21 = [v7 bytesDownloaded];
    v22 = 2048;
    v23 = [v7 bytesFulfilledLocally];
    v24 = 2048;
    v25 = [v7 bytesFulfilledByPeers];
    v26 = 2112;
    v27 = v4;
    v28 = 2112;
    v29 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Finished records in op %@ (%lu downloaded, %lld locally, %lld from peers), Error: %@%@", &v16, 0x48u);
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v4;
  v12 = v4;

  v13 = [*(a1 + 32) pendingGroup];

  dispatch_group_leave(v13);
  v14 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(_BRCOperation *)self operationID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@(%@)", v4, v6];

  return v7;
}

- (BRCTransferBatchOperation)initWithName:(id)a3 syncContext:(id)a4 sessionContext:(id)a5 group:(id)a6
{
  v17.receiver = self;
  v17.super_class = BRCTransferBatchOperation;
  v6 = [(_BRCOperation *)&v17 initWithName:a3 syncContext:a4 sessionContext:a5 group:a6];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entriesByRecordID = v6->_entriesByRecordID;
    v6->_entriesByRecordID = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    entriesByTransferID = v6->_entriesByTransferID;
    v6->_entriesByTransferID = v9;

    v11 = dispatch_group_create();
    pendingGroup = v6->_pendingGroup;
    v6->_pendingGroup = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("transfer-queue", v13);

    queue = v6->_queue;
    v6->_queue = v14;
  }

  return v6;
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "BRCTransferBatchOperation/? (subclass activity missing)", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)mainWithTransfers:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_fault_impl(&dword_223E7A000, v4, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: should be subclassed%@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  queue = self->_queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __33__BRCTransferBatchOperation_main__block_invoke;
  v3[3] = &unk_2784FF450;
  v3[4] = self;
  dispatch_async_with_logs_10(queue, v3);
}

void __33__BRCTransferBatchOperation_main__block_invoke(uint64_t a1)
{
  if (([*(a1 + 32) finishIfCancelled] & 1) == 0)
  {
    v2 = *(a1 + 32);
    v3 = [v2[65] objectEnumerator];
    [v2 mainWithTransfers:v3];
  }
}

- (id)subclassableDescriptionWithContext:(id)a3
{
  v4 = a3;
  v5 = [(BRCTransferBatchOperation *)self doneSize]* 100.0;
  v6 = v5 / [(BRCTransferBatchOperation *)self totalSize];
  v7 = MEMORY[0x277CCACA8];
  v8 = [(BRCTransferBatchOperation *)self itemsCount];
  v9 = [BRCDumpContext stringFromByteCount:self->_totalSize context:v4];

  v10 = [v7 stringWithFormat:@"records-left:%ld progress:%.1f%% size:%@", v8, *&v6, v9];

  return v10;
}

- (void)_addTransfer:(id)a3
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_queue);
  self->_totalSize += [v13 totalSize];
  entriesByRecordID = self->_entriesByRecordID;
  v5 = [v13 recordID];
  [(NSMutableDictionary *)entriesByRecordID setObject:v13 forKeyedSubscript:v5];

  entriesByTransferID = self->_entriesByTransferID;
  v7 = [v13 transferID];
  [(NSMutableDictionary *)entriesByTransferID setObject:v13 forKeyedSubscript:v7];

  ++self->_itemsCount;
  v8 = [v13 secondaryRecordID];

  if (v8)
  {
    entriesBySecondaryRecordID = self->_entriesBySecondaryRecordID;
    if (!entriesBySecondaryRecordID)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v11 = self->_entriesBySecondaryRecordID;
      self->_entriesBySecondaryRecordID = v10;

      entriesBySecondaryRecordID = self->_entriesBySecondaryRecordID;
    }

    v12 = [v13 secondaryRecordID];
    [(NSMutableDictionary *)entriesBySecondaryRecordID setObject:v13 forKeyedSubscript:v12];
  }
}

- (void)addTransfer:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__BRCTransferBatchOperation_addTransfer___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

- (void)_cancelTransferID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMutableDictionary *)self->_entriesByTransferID objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v14 = self;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v6;
      _os_log_debug_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - cancelling %@%@", buf, 0x20u);
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:20 userInfo:0];
    [(BRCTransferBatchOperation *)self _finishedTransfer:v5 error:v8];
    if (![(NSMutableDictionary *)self->_entriesByRecordID count])
    {
      memset(v12, 0, sizeof(v12));
      __brc_create_section(0, "[BRCTransferBatchOperation _cancelTransferID:]", 131, 0, v12);
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218754;
        v14 = v12[0];
        v15 = 2112;
        v16 = self;
        v17 = 2112;
        v18 = self;
        v19 = 2112;
        v20 = v9;
        _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx %@ - operation is now empty, cancelling %@%@", buf, 0x2Au);
      }

      [(_BRCOperation *)self cancel];
      __brc_leave_section(v12);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelTransferID:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__BRCTransferBatchOperation_cancelTransferID___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_with_logs_10(queue, v7);
}

- (double)progressForTransferID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  queue = self->_queue;
  v15 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__BRCTransferBatchOperation_progressForTransferID___block_invoke;
  block[3] = &unk_278502B88;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

void __51__BRCTransferBatchOperation_progressForTransferID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 520) objectForKeyedSubscript:a1[5]];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 doneSize];
    v4 = [v6 totalSize];
    v2 = v6;
    v5 = v3 / v4;
  }

  else
  {
    v5 = -1.0;
  }

  *(*(a1[6] + 8) + 24) = v5;
}

- (void)_setProgress:(double)a3 forTransfer:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [v6 totalSize] * (a3 * 1000.0) / 0x3E8;
  v8 = [v6 doneSize];
  v9 = v7 - v8;
  if (v7 > v8)
  {
    v10 = v8;
    [v6 setDoneSize:v7];
    [(BRCTransferBatchOperation *)self setDoneSize:v9 + [(BRCTransferBatchOperation *)self doneSize]];
    v11 = [v6 progress];
    v12 = ([v11 totalUnitCount] * a3);

    v13 = [v6 progress];
    v14 = [v13 completedUnitCount];

    if (v14 < v12)
    {
      v15 = [v6 progress];
      [v15 setCompletedUnitCount:v12];
    }

    if ((a3 < 0.0 || os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG)) && round(v7 / [v6 totalSize] * 1000.0) != round(v10 / objc_msgSend(v6, "totalSize") * 1000.0))
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v19 = 138413058;
        v20 = self;
        v21 = 2112;
        v22 = v6;
        v23 = 2048;
        v24 = a3 * 100.0;
        v25 = 2112;
        v26 = v16;
        _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - %@ progress %.1f%%%@", &v19, 0x2Au);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)setProgress:(double)a3 forRecordID:(id)a4
{
  v6 = a4;
  v7 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v7);

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__BRCTransferBatchOperation_setProgress_forRecordID___block_invoke;
  block[3] = &unk_2785010A0;
  block[4] = self;
  v11 = v6;
  v12 = a3;
  v9 = v6;
  dispatch_sync(queue, block);
  [(BRCTransferBatchOperation *)self sendBatchProgressedCallback];
}

uint64_t __53__BRCTransferBatchOperation_setProgress_forRecordID___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 504) objectForKeyedSubscript:*(a1 + 40)];
  if (v2)
  {
    v4 = v2;
    [*(a1 + 32) _setProgress:v2 forTransfer:*(a1 + 48)];
    [*(a1 + 32) _publishProgressIfNecessaryForTransfer:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_finishedTransfer:(id)a3 error:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [(BRCTransferBatchOperation *)self _setProgress:v6 forTransfer:1.0];
  }

  entriesByRecordID = self->_entriesByRecordID;
  v9 = [v6 recordID];
  [(NSMutableDictionary *)entriesByRecordID removeObjectForKey:v9];

  entriesByTransferID = self->_entriesByTransferID;
  v11 = [v6 transferID];
  [(NSMutableDictionary *)entriesByTransferID removeObjectForKey:v11];

  entriesBySecondaryRecordID = self->_entriesBySecondaryRecordID;
  v13 = [v6 secondaryRecordID];
  [(NSMutableDictionary *)entriesBySecondaryRecordID removeObjectForKey:v13];

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v17 = @"success";
    v18 = 138413058;
    if (v7)
    {
      v17 = v7;
    }

    v19 = self;
    v20 = 2112;
    v21 = v6;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v14;
    _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - done with %@: %@%@", &v18, 0x2Au);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendBatchProgressedCallback
{
  v3 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v3);

  didProgressBlock = self->_didProgressBlock;
  if (didProgressBlock)
  {
    v5 = *(didProgressBlock + 2);

    v5();
  }
}

- (void)sendTransferCompletionCallBack:(id)a3 error:(id)a4
{
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [BRCTransferBatchOperation sendTransferCompletionCallBack:v4 error:v5];
  }
}

- (id)getTransferForTransferID:(id)a3
{
  queue = self->_queue;
  v5 = a3;
  dispatch_assert_queue_V2(queue);
  v6 = [(NSMutableDictionary *)self->_entriesByTransferID objectForKeyedSubscript:v5];

  return v6;
}

- (id)_finishedTransferForRecord:(id)a3 recordID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(NSMutableDictionary *)self->_entriesByRecordID objectForKeyedSubscript:v9];
  if (v11)
  {
    v12 = v11;
    [(NSMutableDictionary *)self->_entriesByRecordID removeObjectForKey:v9];
    [v12 setRecord:v8];
    v13 = [v12 secondaryRecordID];
    if (!v13)
    {
      v18 = 1;
      goto LABEL_8;
    }

    entriesBySecondaryRecordID = self->_entriesBySecondaryRecordID;
    v15 = [v12 secondaryRecordID];
    v16 = [(NSMutableDictionary *)entriesBySecondaryRecordID objectForKeyedSubscript:v15];
  }

  else
  {
    v12 = [(NSMutableDictionary *)self->_entriesBySecondaryRecordID objectForKeyedSubscript:v9];
    if (!v12)
    {
LABEL_10:
      v19 = 0;
      goto LABEL_12;
    }

    [(NSMutableDictionary *)self->_entriesBySecondaryRecordID removeObjectForKey:v9];
    [v12 setSecondaryRecord:v8];
    entriesByRecordID = self->_entriesByRecordID;
    v13 = [v12 recordID];
    v15 = [(NSMutableDictionary *)entriesByRecordID objectForKeyedSubscript:v13];
    v16 = v15;
  }

  v18 = v16 == 0;

LABEL_8:
  if (!v10 && !v18)
  {
    goto LABEL_10;
  }

  [(BRCTransferBatchOperation *)self _finishedTransfer:v12 error:v10];
  v12 = v12;
  v19 = v12;
LABEL_12:

  return v19;
}

- (void)finishedTransferForRecord:(id)a3 recordID:(id)a4 error:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_BRCOperation *)self callbackQueue];
  dispatch_assert_queue_V2(v11);

  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v28 = v10;
    LOWORD(v29) = 2112;
    *(&v29 + 2) = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Finished transfer for recordID: %@ with error: %@%@", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy__45;
  *&v29 = __Block_byref_object_dispose__45;
  *(&v29 + 1) = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__BRCTransferBatchOperation_finishedTransferForRecord_recordID_error___block_invoke;
  block[3] = &unk_2785025F8;
  v26 = buf;
  block[4] = self;
  v15 = v8;
  v23 = v15;
  v16 = v9;
  v24 = v16;
  v17 = v10;
  v25 = v17;
  dispatch_sync(queue, block);
  v18 = *(*&buf[8] + 40);
  if (v18)
  {
    [(BRCTransferBatchOperation *)self sendTransferCompletionCallBack:v18 error:v17];
    [(BRCTransferBatchOperation *)self sendBatchProgressedCallback];
    v19 = *(*&buf[8] + 40);
  }

  else
  {
    v19 = 0;
  }

  if ([v19 progressPublished])
  {
    v20 = [*(*&buf[8] + 40) progress];
    [v20 brc_unpublish];

    [*(*&buf[8] + 40) setProgressPublished:0];
  }

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __70__BRCTransferBatchOperation_finishedTransferForRecord_recordID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _finishedTransferForRecord:*(a1 + 40) recordID:*(a1 + 48) error:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v6 = a4;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__45;
  v53 = __Block_byref_object_dispose__45;
  v54 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke;
  block[3] = &unk_278500D08;
  v48 = &v49;
  block[4] = self;
  v30 = v6;
  v47 = v30;
  dispatch_sync(queue, block);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = [v50[5] objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v61 count:16];
  if (v9)
  {
    v10 = *v43;
    v28 = *MEMORY[0x277CFACB0];
    obj = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v43 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v42 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [v12 recordID];
        v15 = [v30 brc_cloudKitErrorForRecordID:v14];

        if (!v15)
        {
          v16 = brc_bread_crumbs();
          v17 = brc_default_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v56 = v12;
            v57 = 2112;
            v58 = v16;
            _os_log_fault_impl(&dword_223E7A000, v17, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Missing transfer error for record %@%@", buf, 0x16u);
          }

          v15 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v28 code:15 description:{@"unreachable: Missing transfer error for record %@", v12}];
        }

        v18 = self->_queue;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke_27;
        v40[3] = &unk_2784FF4A0;
        v40[4] = self;
        v40[5] = v12;
        v19 = v15;
        v41 = v19;
        dispatch_sync(v18, v40);
        [(BRCTransferBatchOperation *)self sendTransferCompletionCallBack:v12 error:v19];

        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v8 = obj;
      v9 = [obj countByEnumeratingWithState:&v42 objects:v61 count:16];
    }

    while (v9);
  }

  [(BRCTransferBatchOperation *)self sendBatchProgressedCallback];
  v36 = 0uLL;
  v37 = 0;
  __brc_create_section(0, "[BRCTransferBatchOperation finishWithResult:error:]", 330, 0, &v36);
  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v56 = v36;
    v57 = 2112;
    v58 = self;
    v59 = 2112;
    v60 = v20;
    _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx %@ - waiting for callback...%@", buf, 0x20u);
  }

  v38 = v36;
  v39 = v37;
  pendingGroup = self->_pendingGroup;
  v23 = [(_BRCOperation *)self callbackQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke_28;
  v31[3] = &unk_2785064C0;
  v34 = v38;
  v35 = v39;
  v31[4] = self;
  v32 = v27;
  v33 = v30;
  v24 = v30;
  v25 = v27;
  dispatch_group_notify(pendingGroup, v23, v31);

  _Block_object_dispose(&v49, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 504) copy];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 40);
  if (v5 && ([v5 brc_isCloudKitCancellationError] & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v29 = [v17 actionPrettyName];
      v18 = [*(a1 + 32) itemsCount];
      v11 = [*(a1 + 32) transferredObjectsPrettyName];
      v12 = [BRCDumpContext stringFromByteCount:*(*(a1 + 32) + 528) showActualByteCount:0 suffix:0 context:0];
      v13 = [*(a1 + 32) syncContext];
      v14 = [v13 contextIdentifier];
      v19 = *(a1 + 40);
      *buf = 138414082;
      v31 = v17;
      v32 = 2112;
      v15 = v29;
      v33 = v29;
      v34 = 2048;
      v35 = v18;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      v40 = 2112;
      v41 = v14;
      v42 = 2112;
      v43 = v19;
      v44 = 2112;
      v45 = v6;
      v16 = "[WARNING] %@ - failed %@ %ld %@ (%@) in %@: %@%@";
LABEL_10:
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, v16, buf, 0x52u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v27 = [v8 actionPrettyName];
      v28 = v6;
      if ([*(a1 + 40) brc_isCloudKitCancellationError])
      {
        v9 = @" (cancelled)";
      }

      else
      {
        v9 = &stru_2837504F0;
      }

      v10 = [*(a1 + 32) itemsCount];
      v11 = [*(a1 + 32) transferredObjectsPrettyName];
      v12 = [BRCDumpContext stringFromByteCount:*(*(a1 + 32) + 528) showActualByteCount:0 suffix:0 context:0];
      v13 = [*(a1 + 32) syncContext];
      v14 = [v13 contextIdentifier];
      *buf = 138414082;
      v31 = v8;
      v32 = 2112;
      v15 = v27;
      v33 = v27;
      v34 = 2112;
      v35 = v9;
      v6 = v28;
      v36 = 2048;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v28;
      v16 = "[NOTICE] %@ - finished %@%@ %ld %@ (%@) in %@%@";
      goto LABEL_10;
    }
  }

  v20 = *(a1 + 32);
  v21 = *(v20 + 504);
  *(v20 + 504) = 0;

  v22 = *(a1 + 32);
  v23 = *(v22 + 520);
  *(v22 + 520) = 0;

  v24 = *(a1 + 32);
  v25 = *(v24 + 512);
  *(v24 + 512) = 0;

  if ([*(*(*(a1 + 48) + 8) + 40) count] && !*(a1 + 40))
  {
    __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke_cold_1();
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke_28(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    *buf = 134218498;
    v12 = v9;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx %@ - callbacks finished%@", buf, 0x20u);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8.receiver = *(a1 + 32);
  v8.super_class = BRCTransferBatchOperation;
  objc_msgSendSuper2(&v8, sel_finishWithResult_error_, v4, v5);
  __brc_leave_section(&v9);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendTransferCompletionCallBack:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: implement in subclass%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __52__BRCTransferBatchOperation_finishWithResult_error___block_invoke_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 138412290;
    v4 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: entries.count == 0 || error%@", &v3, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end