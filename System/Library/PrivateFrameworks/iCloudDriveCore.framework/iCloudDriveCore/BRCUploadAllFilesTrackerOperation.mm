@interface BRCUploadAllFilesTrackerOperation
- (BRCUploadAllFilesTrackerOperation)initWithSessionContext:(id)context appLibraries:(id)libraries;
- (NSString)description;
- (void)cancel;
- (void)clientZone:(id)zone didFinishUploadingAllItemsWithError:(id)error;
- (void)main;
@end

@implementation BRCUploadAllFilesTrackerOperation

- (BRCUploadAllFilesTrackerOperation)initWithSessionContext:(id)context appLibraries:(id)libraries
{
  v30 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  librariesCopy = libraries;
  syncContextProvider = [contextCopy syncContextProvider];
  defaultSyncContext = [syncContextProvider defaultSyncContext];
  v28.receiver = self;
  v28.super_class = BRCUploadAllFilesTrackerOperation;
  v10 = [(_BRCOperation *)&v28 initWithName:@"upload-tracker" syncContext:defaultSyncContext sessionContext:contextCopy];

  if (v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = librariesCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          defaultClientZone = [*(*(&v24 + 1) + 8 * v16) defaultClientZone];
          [v11 addObject:defaultClientZone];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v14);
    }

    allObjects = [v11 allObjects];
    v19 = [allObjects mutableCopy];
    zonesStillUploading = v10->_zonesStillUploading;
    v10->_zonesStillUploading = v19;

    br_logout = [MEMORY[0x277CBC4F8] br_logout];
    [(_BRCOperation *)v10 setGroup:br_logout];
  }

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)cancel
{
  v6.receiver = self;
  v6.super_class = BRCUploadAllFilesTrackerOperation;
  [(_BRCOperation *)&v6 cancel];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__BRCUploadAllFilesTrackerOperation_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(serialQueue, block);
}

void __43__BRCUploadAllFilesTrackerOperation_cancel__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) finishIfCancelled])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = *(*(a1 + 32) + 520);
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v10 + 1) + 8 * v6++) unregisterAllItemsDidUploadTracker:{*(a1 + 32), v10}];
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    v7 = *(a1 + 32);
    v8 = *(v7 + 520);
    *(v7 + 520) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)clientZone:(id)zone didFinishUploadingAllItemsWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  errorCopy = error;
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  [clientReadWriteDatabaseFacade assertOnQueue];

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    zoneName = [zoneCopy zoneName];
    v22 = zoneName;
    *buf = 138413058;
    v23 = @"success";
    selfCopy = self;
    if (errorCopy)
    {
      v23 = errorCopy;
    }

    v28 = 2112;
    v29 = zoneName;
    v30 = 2112;
    v31 = v23;
    v32 = 2112;
    v33 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@: finished uploading all items in %@: %@%@", buf, 0x2Au);
  }

  [(NSMutableArray *)self->_zonesStillUploading removeObject:zoneCopy];
  if (errorCopy)
  {
    perContainerIDError = self->_perContainerIDError;
    mangledID = [zoneCopy mangledID];
    aliasTargetContainerString = [mangledID aliasTargetContainerString];
    [(NSMutableDictionary *)perContainerIDError setObject:errorCopy forKeyedSubscript:aliasTargetContainerString];
  }

  if (![(NSMutableArray *)self->_zonesStillUploading count]&& self->_zonesStillUploading)
  {
    if ([(NSMutableDictionary *)self->_perContainerIDError count])
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277CFABD0];
      v16 = [(NSMutableDictionary *)self->_perContainerIDError copy];
      v25 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v18 = [v14 errorWithDomain:v15 code:21 userInfo:v17];

      errorCopy = v18;
    }

    [(_BRCOperation *)self completedWithResult:0 error:errorCopy];
    zonesStillUploading = self->_zonesStillUploading;
    self->_zonesStillUploading = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)main
{
  v24 = *MEMORY[0x277D85DE8];
  clientReadWriteDatabaseFacade = [(BRCSessionContext *)self->super.super._sessionContext clientReadWriteDatabaseFacade];
  serialQueue = [clientReadWriteDatabaseFacade serialQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__BRCUploadAllFilesTrackerOperation_main__block_invoke;
  v15[3] = &unk_2784FF450;
  v15[4] = self;
  v5 = serialQueue;
  v6 = v15;
  v7 = objc_autoreleasePoolPush();
  v16 = 0uLL;
  v17 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v16);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = v16;
    label = dispatch_queue_get_label(v5);
    *block = 134218498;
    *&block[4] = v13;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v19 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v22 = v16;
  v23 = v17;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_18;
  v19 = &unk_2784FF568;
  v10 = v5;
  v20 = v10;
  v11 = v6;
  v21 = v11;
  dispatch_async(v10, block);

  objc_autoreleasePoolPop(v7);
  v12 = *MEMORY[0x277D85DE8];
}

void __41__BRCUploadAllFilesTrackerOperation_main__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) finishIfCancelled])
  {
LABEL_11:
    v7 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([*(*(a1 + 32) + 520) count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(*(a1 + 32) + 520) copy];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v2);
          }

          [*(*(&v10 + 1) + 8 * i) registerAllItemsDidUploadTracker:*(a1 + 32)];
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    goto LABEL_11;
  }

  v8 = *(a1 + 32);
  v9 = *MEMORY[0x277D85DE8];

  [v8 completedWithResult:0 error:0];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = BRCUploadAllFilesTrackerOperation;
  v4 = [(_BRCOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - zones still uploading: %@", v4, self->_zonesStillUploading];

  return v5;
}

@end