@interface WBSCoalescedAsynchronousWriter
- (WBSCoalescedAsynchronousWriterDelegate)delegate;
- (id)_dataForPlistDictionary:(id)a3;
- (id)_dataFromDataSourceOnDataSourceQueue;
- (id)_initWithName:(id)a3 fileURL:(id)a4 writerBlock:(id)a5 dataSourceQueue:(id)a6 dataSourceBlock:(id)a7 plistDictionarySourceBlock:(id)a8 plistFormat:(unint64_t)a9 writeDelayInterval:(double)a10 fileResourceValues:(id)a11;
- (id)_plistDictionaryFromDataSourceOnDataSourceQueue;
- (id)_synchronousDataOnDataSourceQueue;
- (void)_asynchronouslyWriteData:(id)a3 orPlistDictionary:(id)a4 completionHandler:(id)a5;
- (void)_cancelPendingWriteSynchronouslyLeavingSuddenTerminationIntact;
- (void)_invalidateTimer;
- (void)_scheduleTimer;
- (void)_timerFired;
- (void)_waitForWriteCompletion;
- (void)_writeData:(id)a3;
- (void)cancelPendingWriteSynchronously;
- (void)completePendingWriteSynchronously;
- (void)dealloc;
- (void)performScheduledWriteSynchronously;
- (void)scheduleWrite;
- (void)startScheduledWriteNowWithCompletionHandler:(id)a3;
@end

@implementation WBSCoalescedAsynchronousWriter

- (void)scheduleWrite
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSCoalescedAsynchronousWriter_scheduleWrite__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

_BYTE *__47__WBSCoalescedAsynchronousWriter_scheduleWrite__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if ((result[112] & 1) == 0)
  {
    [result _invalidateTimer];
    operator new();
  }

  return result;
}

- (void)_invalidateTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)_scheduleTimer
{
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
  timer = self->_timer;
  self->_timer = v3;

  v5 = self->_timer;
  v6 = dispatch_walltime(0, (self->_writeDelayInterval * 1000000000.0));
  dispatch_source_set_timer(v5, v6, 0xFFFFFFFFFFFFFFFFLL, (self->_writeDelayInterval * 0.1 * 1000000000.0));
  objc_initWeak(&location, self);
  v7 = self->_timer;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__WBSCoalescedAsynchronousWriter__scheduleTimer__block_invoke;
  v8[3] = &unk_1E7CF1AA0;
  objc_copyWeak(&v9, &location);
  dispatch_source_set_event_handler(v7, v8);
  dispatch_resume(self->_timer);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (id)_initWithName:(id)a3 fileURL:(id)a4 writerBlock:(id)a5 dataSourceQueue:(id)a6 dataSourceBlock:(id)a7 plistDictionarySourceBlock:(id)a8 plistFormat:(unint64_t)a9 writeDelayInterval:(double)a10 fileResourceValues:(id)a11
{
  v18 = a3;
  v43 = a4;
  v19 = a5;
  v42 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a11;
  v44.receiver = self;
  v44.super_class = WBSCoalescedAsynchronousWriter;
  v23 = [(WBSCoalescedAsynchronousWriter *)&v44 init];
  if (v23)
  {
    v24 = [v18 copy];
    name = v23->_name;
    v23->_name = v24;

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.CoalescedAsynchronousWriter.%p.%@.DiskAccessQueue", v23, v18, v42, v43];
    v27 = dispatch_queue_create([v26 UTF8String], 0);
    diskAccessQueue = v23->_diskAccessQueue;
    v23->_diskAccessQueue = v27;

    objc_storeStrong(&v23->_fileURL, a4);
    v29 = [v20 copy];
    dataSourceBlock = v23->_dataSourceBlock;
    v23->_dataSourceBlock = v29;

    v31 = [v21 copy];
    plistDictionarySourceBlock = v23->_plistDictionarySourceBlock;
    v23->_plistDictionarySourceBlock = v31;

    v23->_plistFormat = a9;
    objc_storeStrong(&v23->_dataSourceQueue, a6);
    if (!v23->_dataSourceQueue)
    {
      objc_storeStrong(&v23->_dataSourceQueue, MEMORY[0x1E69E96A0]);
    }

    v33 = [v19 copy];
    writerBlock = v23->_writerBlock;
    v23->_writerBlock = v33;

    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.Safari.CoalescedAsynchronousWriter.%p.%@.InternalQueue", v23, v18];
    v36 = dispatch_queue_create([v35 UTF8String], 0);
    internalQueue = v23->_internalQueue;
    v23->_internalQueue = v36;

    v23->_writeDelayInterval = a10;
    v38 = [v22 copy];
    fileResourceValues = v23->_fileResourceValues;
    v23->_fileResourceValues = v38;

    v40 = v23;
  }

  return v23;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 120);
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(&dword_1B8447000, v2, OS_LOG_TYPE_ERROR, "WBSCoalescedAsynchronousWriter <%{public}@, %p>: Timer is still valid in dealloc", v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_timerFired
{
  [(WBSCoalescedAsynchronousWriter *)self _invalidateTimer];
  if (self->_writeGroup)
  {

    [(WBSCoalescedAsynchronousWriter *)self _scheduleTimer];
  }

  else
  {
    dataSourceQueue = self->_dataSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__WBSCoalescedAsynchronousWriter__timerFired__block_invoke;
    block[3] = &unk_1E7CF0828;
    block[4] = self;
    dispatch_async(dataSourceQueue, block);
  }
}

void __45__WBSCoalescedAsynchronousWriter__timerFired__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _dataFromDataSourceOnDataSourceQueue];
  v3 = [*(a1 + 32) _plistDictionaryFromDataSourceOnDataSourceQueue];
  v4 = *(a1 + 32);
  v5 = *(v4 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__WBSCoalescedAsynchronousWriter__timerFired__block_invoke_2;
  block[3] = &unk_1E7CF0A38;
  block[4] = v4;
  v9 = v2;
  v10 = v3;
  v6 = v3;
  v7 = v2;
  dispatch_async(v5, block);
}

void __48__WBSCoalescedAsynchronousWriter__scheduleTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _timerFired];
}

- (id)_dataFromDataSourceOnDataSourceQueue
{
  dataSourceBlock = self->_dataSourceBlock;
  if (dataSourceBlock)
  {
    dataSourceBlock = (dataSourceBlock)[2](dataSourceBlock, a2);
    v2 = vars8;
  }

  return dataSourceBlock;
}

- (id)_plistDictionaryFromDataSourceOnDataSourceQueue
{
  plistDictionarySourceBlock = self->_plistDictionarySourceBlock;
  if (plistDictionarySourceBlock)
  {
    plistDictionarySourceBlock = (plistDictionarySourceBlock)[2](plistDictionarySourceBlock, a2);
    v2 = vars8;
  }

  return plistDictionarySourceBlock;
}

- (id)_dataForPlistDictionary:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    plistFormat = self->_plistFormat;
    v13 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v4 format:plistFormat options:0 error:&v13];
    v7 = v13;
    if (!v6)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        name = self->_name;
        v12 = [v7 safari_privacyPreservingDescription];
        *buf = 138543874;
        v15 = name;
        v16 = 2048;
        v17 = self;
        v18 = 2114;
        v19 = v12;
        _os_log_error_impl(&dword_1B8447000, v8, OS_LOG_TYPE_ERROR, "WBSCoalescedAsynchronousWriter <%{public}@, %p>: Unable to serialize dictionary to data with error: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_synchronousDataOnDataSourceQueue
{
  if (self->_dataSourceBlock)
  {
    v3 = [(WBSCoalescedAsynchronousWriter *)self _dataFromDataSourceOnDataSourceQueue];
  }

  else
  {
    v4 = [(WBSCoalescedAsynchronousWriter *)self _plistDictionaryFromDataSourceOnDataSourceQueue];
    v3 = [(WBSCoalescedAsynchronousWriter *)self _dataForPlistDictionary:v4];
  }

  return v3;
}

- (void)_waitForWriteCompletion
{
  writeGroup = self->_writeGroup;
  if (writeGroup)
  {
    dispatch_group_wait(writeGroup, 0xFFFFFFFFFFFFFFFFLL);
    v4 = self->_writeGroup;
    self->_writeGroup = 0;
  }
}

- (void)_writeData:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    writerBlock = self->_writerBlock;
    if (writerBlock)
    {
      writerBlock[2](writerBlock, v4);
    }

    else
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [(NSURL *)self->_fileURL URLByDeletingLastPathComponent];
      v8 = [v6 safari_ensureDirectoryExists:v7];

      if (([v4 writeToURL:self->_fileURL atomically:1] & 1) == 0)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = [(NSURL *)self->_fileURL lastPathComponent];
          [(WBSCoalescedAsynchronousWriter *)v10 _writeData:v23, v9];
        }
      }

      if ([(NSString *)self->_name isEqualToString:@"SessionState"])
      {
        v11 = WBS_LOG_CHANNEL_PREFIXPinnedTabRestoration();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_INFO, "Writing LastSession.plist file.", buf, 2u);
        }
      }

      if ([(NSDictionary *)self->_fileResourceValues count])
      {
        fileURL = self->_fileURL;
        fileResourceValues = self->_fileResourceValues;
        v21 = 0;
        v14 = [(NSURL *)fileURL setResourceValues:fileResourceValues error:&v21];
        v15 = v21;
        if (!v14)
        {
          v16 = WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            name = self->_name;
            v18 = [v15 safari_privacyPreservingDescription];
            [(WBSCoalescedAsynchronousWriter *)name _writeData:v18, buf, v16];
          }
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained coalescedAsynchronousWriter:self didFinishWritingData:v4];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_asynchronouslyWriteData:(id)a3 orPlistDictionary:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v8 | v9)
  {
    v12 = dispatch_group_create();
    writeGroup = self->_writeGroup;
    self->_writeGroup = v12;

    v14 = self->_writeGroup;
    diskAccessQueue = self->_diskAccessQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__WBSCoalescedAsynchronousWriter__asynchronouslyWriteData_orPlistDictionary_completionHandler___block_invoke;
    v16[3] = &unk_1E7CF1AC8;
    v17 = v8;
    v18 = self;
    v19 = v9;
    v20 = v11;
    dispatch_group_async(v14, diskAccessQueue, v16);
  }

  else if (v10)
  {
    (*(v10 + 2))(v10);
  }
}

void __95__WBSCoalescedAsynchronousWriter__asynchronouslyWriteData_orPlistDictionary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
LABEL_4:
    [*(a1 + 40) _writeData:v3];
    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __95__WBSCoalescedAsynchronousWriter__asynchronouslyWriteData_orPlistDictionary_completionHandler___block_invoke_2;
    v9[3] = &unk_1E7CF09E8;
    v9[4] = v4;
    v10 = *(a1 + 56);
    dispatch_async(v5, v9);

    return;
  }

  v3 = [*(a1 + 40) _dataForPlistDictionary:*(a1 + 48)];
  if (v3)
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))();
  }
}

uint64_t __95__WBSCoalescedAsynchronousWriter__asynchronouslyWriteData_orPlistDictionary_completionHandler___block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 112) & 1) == 0)
  {
    v2 = result;
    if (!*(v1 + 80))
    {
      std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((v1 + 104), 0);
      v1 = *(v2 + 32);
    }

    v3 = *(v1 + 96);
    *(v1 + 96) = 0;

    result = *(v2 + 40);
    if (result)
    {
      v4 = *(result + 16);

      return v4();
    }
  }

  return result;
}

- (void)_cancelPendingWriteSynchronouslyLeavingSuddenTerminationIntact
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_done)
  {
    self->_done = 1;
    [(WBSCoalescedAsynchronousWriter *)self _waitForWriteCompletion];
    [(WBSCoalescedAsynchronousWriter *)self _invalidateTimer];
    v3 = WBS_LOG_CHANNEL_PREFIXCoalescedAsynchronousWriter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      name = self->_name;
      v6 = 138543618;
      v7 = name;
      v8 = 2048;
      v9 = self;
      _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "WBSCoalescedAsynchronousWriter <%{public}@, %p>: Done with writer", &v6, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)startScheduledWriteNowWithCompletionHandler:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__WBSCoalescedAsynchronousWriter_startScheduledWriteNowWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7CF09E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(internalQueue, v7);
}

void __78__WBSCoalescedAsynchronousWriter_startScheduledWriteNowWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 112) & 1) != 0 || !*(v2 + 80))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = *(v5 + 16);

      v6();
    }
  }

  else
  {
    [v2 _invalidateTimer];
    [*(a1 + 32) _waitForWriteCompletion];
    v3 = *(a1 + 32);
    v7 = [v3 _dataFromDataSourceOnDataSourceQueue];
    v4 = [*(a1 + 32) _plistDictionaryFromDataSourceOnDataSourceQueue];
    [v3 _asynchronouslyWriteData:v7 orPlistDictionary:v4 completionHandler:*(a1 + 40)];
  }
}

- (void)performScheduledWriteSynchronously
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__WBSCoalescedAsynchronousWriter_performScheduledWriteSynchronously__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

void __68__WBSCoalescedAsynchronousWriter_performScheduledWriteSynchronously__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 112) & 1) == 0)
  {
    if (*(v2 + 80))
    {
      [v2 _invalidateTimer];
      [*(a1 + 32) _waitForWriteCompletion];
      v3 = *(a1 + 32);
      v4 = *(v3 + 8);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__WBSCoalescedAsynchronousWriter_performScheduledWriteSynchronously__block_invoke_2;
      block[3] = &unk_1E7CF0828;
      block[4] = v3;
      dispatch_sync(v4, block);
    }
  }
}

void __68__WBSCoalescedAsynchronousWriter_performScheduledWriteSynchronously__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _synchronousDataOnDataSourceQueue];
  [v1 _writeData:?];
}

- (void)completePendingWriteSynchronously
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__WBSCoalescedAsynchronousWriter_completePendingWriteSynchronously__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

id *__67__WBSCoalescedAsynchronousWriter_completePendingWriteSynchronously__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  [v2 _cancelPendingWriteSynchronouslyLeavingSuddenTerminationIntact];
  v4 = *(a1 + 32);
  if (v3 && (*(v4 + 32) || *(v4 + 56)))
  {
    v5 = *(v4 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__WBSCoalescedAsynchronousWriter_completePendingWriteSynchronously__block_invoke_2;
    block[3] = &unk_1E7CF0828;
    block[4] = v4;
    dispatch_sync(v5, block);
    v4 = *(a1 + 32);
  }

  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100]((v4 + 104), 0);
}

void __67__WBSCoalescedAsynchronousWriter_completePendingWriteSynchronously__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _synchronousDataOnDataSourceQueue];
  [v1 _writeData:?];
}

- (void)cancelPendingWriteSynchronously
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__WBSCoalescedAsynchronousWriter_cancelPendingWriteSynchronously__block_invoke;
  block[3] = &unk_1E7CF0828;
  block[4] = self;
  dispatch_sync(internalQueue, block);
}

id *__65__WBSCoalescedAsynchronousWriter_cancelPendingWriteSynchronously__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _cancelPendingWriteSynchronouslyLeavingSuddenTerminationIntact];
  v2 = (*(a1 + 32) + 104);

  return std::unique_ptr<SafariShared::SuddenTerminationDisabler>::reset[abi:sn200100](v2, 0);
}

- (WBSCoalescedAsynchronousWriterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_writeData:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Error writing %{public}@ to disk.", buf, 0xCu);
}

- (void)_writeData:(uint8_t *)buf .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Error setting file resource values for %{public}@: %{public}@", buf, 0x16u);
}

@end