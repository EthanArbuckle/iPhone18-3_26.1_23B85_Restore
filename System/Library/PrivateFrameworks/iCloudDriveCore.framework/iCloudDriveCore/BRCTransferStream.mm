@interface BRCTransferStream
- (BRCTransferStream)initWithSyncContext:(id)a3 name:(id)a4 scheduler:(id)a5 maxCountOfBatchesInFlight:(unint64_t)a6;
- (NSArray)operations;
- (NSString)description;
- (double)progressForTransferID:(id)a3 operationID:(id)a4;
- (int64_t)_compareTransferBatchOperationByQoSAndStartDateWithFirstOp:(id)a3 secondOp:(id)a4;
- (void)_addBatchOperation:(id)a3;
- (void)_evaluateCap;
- (void)_scheduleOneBatchWithQoS:(int64_t)a3;
- (void)_setReachedCap:(BOOL)a3;
- (void)addBatchOperation:(id)a3;
- (void)cancel;
- (void)cancelTransferID:(id)a3 operationID:(id)a4;
- (void)close;
- (void)endSchedulingMultipleItemsInteractively;
- (void)forceSchedulingPendingInteractiveTransfers;
- (void)signalWithDeadline:(int64_t)minSignalTime;
@end

@implementation BRCTransferStream

- (NSArray)operations
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_inFlightOpByID allValues];
  v4 = [v3 copy];

  objc_sync_exit(v2);

  return v4;
}

- (BRCTransferStream)initWithSyncContext:(id)a3 name:(id)a4 scheduler:(id)a5 maxCountOfBatchesInFlight:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v31.receiver = self;
  v31.super_class = BRCTransferStream;
  v14 = [(BRCTransferStream *)&v31 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_syncContext, a3);
    v15->_session = [v11 session];
    if (!v13)
    {
      abc_report_panic_with_signature();
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"scheduler is nil"];
      v27 = brc_bread_crumbs();
      v28 = brc_default_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [BRCTransferStream initWithSyncContext:v26 name:v27 scheduler:v28 maxCountOfBatchesInFlight:?];
      }

      brc_append_system_info_to_message();
      v29 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCTransferStream initWithSyncContext:name:scheduler:maxCountOfBatchesInFlight:]", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/sync/transfers/BRCTransferStream.m", 66, v29);
    }

    v16 = [[BRCDeadlineSource alloc] initWithScheduler:v13 name:v12];
    schedulingSource = v15->_schedulingSource;
    v15->_schedulingSource = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    inFlightOpByID = v15->_inFlightOpByID;
    v15->_inFlightOpByID = v18;

    v20 = dispatch_workloop_create([v12 UTF8String]);
    transferWorkloop = v15->_transferWorkloop;
    v15->_transferWorkloop = v20;

    v22 = dispatch_group_create();
    transferBatchRequestWaiter = v15->_transferBatchRequestWaiter;
    v15->_transferBatchRequestWaiter = v22;

    v24 = v15->_schedulingSource;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __82__BRCTransferStream_initWithSyncContext_name_scheduler_maxCountOfBatchesInFlight___block_invoke;
    v30[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v30[4] = v15;
    [(BRCDeadlineSource *)v24 setEventHandler:v30];
    [(BRCDeadlineSource *)v15->_schedulingSource setWorkloop:v15->_transferWorkloop];
    v15->_maxCountOfBatchesInFlight = a6;
  }

  return v15;
}

void __82__BRCTransferStream_initWithSyncContext_name_scheduler_maxCountOfBatchesInFlight___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _schedule];

  objc_autoreleasePoolPop(v2);
}

- (void)signalWithDeadline:(int64_t)minSignalTime
{
  schedulingSource = self->_schedulingSource;
  if (self->_minSignalTime > minSignalTime)
  {
    minSignalTime = self->_minSignalTime;
  }

  [(BRCDeadlineSource *)self->_schedulingSource signalWithDeadline:minSignalTime];
}

- (void)_setReachedCap:(BOOL)a3
{
  v3 = a3;
  dispatch_assert_queue_V2(self->_transferWorkloop);
  if (self->_hasReachedCap != v3)
  {
    self->_hasReachedCap = v3;
    schedulingSource = self->_schedulingSource;
    if (v3)
    {

      [(BRCDeadlineSource *)schedulingSource suspend];
    }

    else
    {

      [(BRCDeadlineSource *)schedulingSource resume];
    }
  }
}

- (void)endSchedulingMultipleItemsInteractively
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _multipleItemsInteractiveSchedulingCount >= 0%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (int64_t)_compareTransferBatchOperationByQoSAndStartDateWithFirstOp:(id)a3 secondOp:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 qualityOfService];
  if (v7 >= [v6 qualityOfService])
  {
    v9 = [v5 qualityOfService];
    if (v9 <= [v6 qualityOfService])
    {
      v10 = [v5 startDate];
      v11 = [v6 startDate];
      v8 = [v10 compare:v11];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (void)forceSchedulingPendingInteractiveTransfers
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx force scheduling interactive transfers%@", v4, DWORD2(v4), *&v5[2], v6);
  v3 = *MEMORY[0x277D85DE8];
}

void __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40) == 1)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v2 = [*(*(a1 + 32) + 40) allValues];
    v3 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v25;
      do
      {
        v6 = 0;
        do
        {
          if (*v25 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v24 + 1) + 8 * v6++) cancel];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v4);
    }

    [*(a1 + 32) signal];
    goto LABEL_28;
  }

  v7 = [*(*(a1 + 32) + 40) count];
  v8 = *(a1 + 32);
  v9 = *(v8 + 80);
  v10 = 2 * v9;
  if (v7 + ((v7 < 2 * v9) & *(v8 + 72)) >= v9)
  {
    v11 = [*(v8 + 40) allValues];
    v12 = [v11 br_transform:&__block_literal_global_46];

    if ([v12 count] >= 2)
    {
      v13 = [*(*(a1 + 32) + 40) allValues];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_3;
      v23[3] = &unk_278504E20;
      v23[4] = *(a1 + 32);
      v14 = [v13 sortedArrayUsingComparator:v23];

      v12 = v14;
    }

    v15 = [v12 firstObject];
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_1(v15, v16, v17);
    }

    if (!v15)
    {
      __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_2();
    }

    [v15 cancel];
  }

  if (v7 >= v10)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v18;
      _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] We have way too many operations in flight.  Waiting for cancelled operations to finish cancelling%@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (*(*(a1 + 32) + 72) == 1)
  {
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_4();
    }

LABEL_24:

    goto LABEL_28;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_3();
  }

  [*(a1 + 32) _scheduleOneBatchWithQoS:25];
LABEL_28:
  v22 = *MEMORY[0x277D85DE8];
}

void *__63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isFinished])
  {
    v3 = 0;
  }

  else if ([v2 isCancelled])
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v3;
}

- (void)_evaluateCap
{
  v17 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_transferWorkloop);
  if ([(NSMutableDictionary *)self->_inFlightOpByID count]>= self->_maxCountOfBatchesInFlight)
  {
    v10 = *MEMORY[0x277D85DE8];

    [(BRCTransferStream *)self _setReachedCap:1];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [(NSMutableDictionary *)self->_inFlightOpByID objectEnumerator];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v12 + 1) + 8 * i);
          v9 = self->_maxCountOfBatchesInFlight * [v8 doneSize];
          if (v9 < [v8 totalSize])
          {
            [(BRCTransferStream *)self _setReachedCap:1];

            goto LABEL_15;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    [(BRCTransferStream *)self _setReachedCap:0];
LABEL_15:
    v11 = *MEMORY[0x277D85DE8];
  }
}

- (void)_addBatchOperation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [BRCTransferStream _addBatchOperation:];
  }

  dispatch_assert_queue_V2(self->_transferWorkloop);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCTransferStream _addBatchOperation:];
  }

  if (v4)
  {
    v7 = [v4 operationID];
    v8 = [v4 finishBlock];
    objc_initWeak(&location, self);
    v9 = [v4 totalSize];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__BRCTransferStream__addBatchOperation___block_invoke;
    v21[3] = &unk_2784FFDF8;
    objc_copyWeak(&v22, &location);
    v21[4] = self;
    [v4 setDidProgressBlock:v21];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __40__BRCTransferStream__addBatchOperation___block_invoke_3;
    v16 = &unk_278504E48;
    objc_copyWeak(v20, &location);
    v10 = v8;
    v19 = v10;
    v17 = self;
    v20[1] = v9;
    v11 = v7;
    v18 = v11;
    [v4 setFinishBlock:&v13];
    self->_inFlightSize += v9;
    v12 = self;
    objc_sync_enter(v12);
    [(NSMutableDictionary *)v12->_inFlightOpByID setObject:v4 forKeyedSubscript:v11, v13, v14, v15, v16, v17];
    objc_sync_exit(v12);

    [v4 schedule];
    [(BRCTransferStream *)v12 _evaluateCap];

    objc_destroyWeak(v20);
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }
}

void __40__BRCTransferStream__addBatchOperation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([WeakRetained isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__BRCTransferStream__addBatchOperation___block_invoke_2;
    block[3] = &unk_2784FF450;
    block[4] = v3;
    dispatch_async_and_wait(v4, block);
  }
}

void __40__BRCTransferStream__addBatchOperation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  if (WeakRetained)
  {
    [v6 br_suggestedRetryTimeInterval];
    if (v9 > 0.0)
    {
      v10 = v9;
      if (([v6 brc_isCloudKitOutOfQuota] & 1) == 0)
      {
        v11 = WeakRetained;
        objc_sync_enter(v11);
        v12 = brc_current_date_nsec();
        v13 = brc_interval_to_nsec() + v12;
        if (v13 > v11[4])
        {
          v14 = brc_bread_crumbs();
          v15 = brc_default_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            __40__BRCTransferStream__addBatchOperation___block_invoke_3_cold_1(v10);
          }

          v11[4] = v13;
        }

        objc_sync_exit(v11);
      }
    }

    v16 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__BRCTransferStream__addBatchOperation___block_invoke_7;
    block[3] = &unk_2785010A0;
    v17 = *(a1 + 64);
    block[4] = WeakRetained;
    v20 = v17;
    v19 = *(a1 + 40);
    dispatch_async_and_wait(v16, block);
  }
}

uint64_t __40__BRCTransferStream__addBatchOperation___block_invoke_7(uint64_t a1)
{
  *(*(a1 + 32) + 64) -= *(a1 + 48);
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  [*(*(a1 + 32) + 40) removeObjectForKey:*(a1 + 40)];
  objc_sync_exit(v2);

  v3 = *(a1 + 32);

  return [v3 _evaluateCap];
}

- (void)addBatchOperation:(id)a3
{
  v4 = a3;
  if (!self->_isWaitingForTransferBatch)
  {
    [BRCTransferStream addBatchOperation:];
  }

  transferWorkloop = self->_transferWorkloop;
  transferBatchRequestWaiter = self->_transferBatchRequestWaiter;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __39__BRCTransferStream_addBatchOperation___block_invoke;
  v8[3] = &unk_2784FF478;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_group_async(transferBatchRequestWaiter, transferWorkloop, v8);
}

uint64_t __39__BRCTransferStream_addBatchOperation___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    [*(a1 + 40) cancel];
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _addBatchOperation:v3];
}

- (void)_scheduleOneBatchWithQoS:(int64_t)a3
{
  dispatch_assert_queue_V2(self->_transferWorkloop);
  v5 = [(BRCSyncContext *)self->_syncContext defaults];
  [(BRCDeadlineSource *)self->_schedulingSource suspend];
  dispatch_group_enter(self->_transferBatchRequestWaiter);
  self->_isWaitingForTransferBatch = 1;
  streamDidBecomeReadyToTransferRecords = self->_streamDidBecomeReadyToTransferRecords;
  [v5 transferQueueTransferBudget];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__BRCTransferStream__scheduleOneBatchWithQoS___block_invoke;
  v8[3] = &unk_2784FF450;
  v8[4] = self;
  streamDidBecomeReadyToTransferRecords[2](streamDidBecomeReadyToTransferRecords, v7, a3, v8);
}

void __46__BRCTransferStream__scheduleOneBatchWithQoS___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__BRCTransferStream__scheduleOneBatchWithQoS___block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __46__BRCTransferStream__scheduleOneBatchWithQoS___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  [*(*(a1 + 32) + 24) resume];
  v2 = *(*(a1 + 32) + 56);

  dispatch_group_leave(v2);
}

- (void)cancelTransferID:(id)a3 operationID:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(v19, 0, sizeof(v19));
  __brc_create_section(0, "[BRCTransferStream cancelTransferID:operationID:]", 320, 0, v19);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = v19[0];
    v15 = [v7 UUIDString];
    *buf = 134218754;
    v21 = v14;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cancelling entry %@ in %@%@", buf, 0x2Au);
  }

  transferWorkloop = self->_transferWorkloop;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__BRCTransferStream_cancelTransferID_operationID___block_invoke;
  v16[3] = &unk_2784FF4A0;
  v16[4] = self;
  v11 = v7;
  v17 = v11;
  v12 = v6;
  v18 = v12;
  dispatch_async_with_logs_7(transferWorkloop, v16);

  __brc_leave_section(v19);
  v13 = *MEMORY[0x277D85DE8];
}

void __50__BRCTransferStream_cancelTransferID_operationID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 40) objectForKeyedSubscript:a1[5]];
  [v2 cancelTransferID:a1[6]];
}

- (double)progressForTransferID:(id)a3 operationID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(NSMutableDictionary *)v8->_inFlightOpByID objectForKeyedSubscript:v7];
  objc_sync_exit(v8);

  [v9 progressForTransferID:v6];
  v11 = v10;

  return v11;
}

- (void)cancel
{
  self->_isCancelled = 1;
  [(BRCDeadlineSource *)self->_schedulingSource cancel];
  transferWorkloop = self->_transferWorkloop;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__BRCTransferStream_cancel__block_invoke;
  v4[3] = &unk_2784FF450;
  v4[4] = self;
  dispatch_async_with_logs_7(transferWorkloop, v4);
}

void __27__BRCTransferStream_cancel__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [*(*(a1 + 32) + 40) objectEnumerator];
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) cancel];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)close
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self.isCancelled%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __26__BRCTransferStream_close__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    __26__BRCTransferStream_close__block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 96);
  *(v5 + 96) = 0;
}

void __26__BRCTransferStream_close__block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  if (*(v4 + 73) == 1)
  {
    v5 = *(v4 + 24);

    [v5 resume];
  }
}

- (NSString)description
{
  dispatch_assert_queue_not_V2(self->_transferWorkloop);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__35;
  v11 = __Block_byref_object_dispose__35;
  v12 = 0;
  transferWorkloop = self->_transferWorkloop;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__BRCTransferStream_description__block_invoke;
  v6[3] = &unk_278502000;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(transferWorkloop, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __32__BRCTransferStream_description__block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = *(a1 + 32);
  v9 = [*(v5 + 16) contextIdentifier];
  v6 = [v2 stringWithFormat:@"<%@: %p ctxID:%@ source:%@ reachedCap:%d, minSignalTime:%lld>", v4, v5, v9, *(*(a1 + 32) + 24), *(*(a1 + 32) + 73), *(*(a1 + 32) + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (void)initWithSyncContext:(NSObject *)a3 name:scheduler:maxCountOfBatchesInFlight:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  v8 = a2;
  _os_log_fault_impl(&dword_223E7A000, a3, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

void __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = 138412802;
  v7 = a1;
  v8 = 2048;
  v9 = [a1 qualityOfService];
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] cancelling oldest batch (%@) with lowest QoS (%ld)%@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_2()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: oldestBatchOperation%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Force scheduling a new high priority batch%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __63__BRCTransferStream_forceSchedulingPendingInteractiveTransfers__block_invoke_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] waiting for the next scheduling to finish%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_addBatchOperation:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: operation%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)_addBatchOperation:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] adding operation %@ to the transfer stream%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __40__BRCTransferStream__addBatchOperation___block_invoke_3_cold_1(double a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  OUTLINED_FUNCTION_4_0();
  v6 = v1;
  _os_log_debug_impl(&dword_223E7A000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] Transfer stream backing off %.03fs%@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)addBatchOperation:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: _isWaitingForTransferBatch%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __26__BRCTransferStream_close__block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: self.isCancelled%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end