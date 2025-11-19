@interface BRCThumbnailGenerationManager
+ (id)defaultManager;
- (BRCThumbnailGenerationManager)init;
- (id)_generateThumbnailOperationAtURL:(id)a3 targetURL:(id)a4 timeout:(id)a5 sessionContext:(id)a6;
- (id)description;
- (id)operationForThumbnailID:(id)a3;
- (unint64_t)_thumbnailOperationsMax;
- (void)_addThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 thumbnailID:(id)a5 timeout:(id)a6 syncContext:(id)a7 completionHandler:(id)a8;
- (void)_addThumbnailOperation:(id)a3 thumbnailID:(id)a4;
- (void)_removeThumbnailOperationForThumbnailID:(id)a3;
- (void)addOutOfBandThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 timeout:(double)a5 syncContext:(id)a6 completionHandler:(id)a7;
- (void)addThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 thumbnailID:(id)a5 syncContext:(id)a6 completionHandler:(id)a7;
- (void)cancel;
- (void)getLocalThumbnailWithShare:(id)a3 mangledID:(id)a4 targetURL:(id)a5 sessionContext:(id)a6 completionHandler:(id)a7;
@end

@implementation BRCThumbnailGenerationManager

- (BRCThumbnailGenerationManager)init
{
  v14.receiver = self;
  v14.super_class = BRCThumbnailGenerationManager;
  v2 = [(BRCThumbnailGenerationManager *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    thumbnailsOperations = v2->_thumbnailsOperations;
    v2->_thumbnailsOperations = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(v5, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.bird.thumbnails", v6);

    thumbnailQueue = v2->_thumbnailQueue;
    v2->_thumbnailQueue = v7;

    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(v9, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bird.thumbnails.private", v10);

    thumbnailPrivateQueue = v2->_thumbnailPrivateQueue;
    v2->_thumbnailPrivateQueue = v11;
  }

  return v2;
}

+ (id)defaultManager
{
  if (defaultManager_onceToken != -1)
  {
    +[BRCThumbnailGenerationManager defaultManager];
  }

  v3 = defaultManager_defaultManager;

  return v3;
}

uint64_t __47__BRCThumbnailGenerationManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager = objc_alloc_init(BRCThumbnailGenerationManager);

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)_thumbnailOperationsMax
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  v3 = [v2 thumbnailTransferQueueWidth];

  return v3;
}

- (void)_addThumbnailOperation:(id)a3 thumbnailID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    thumbnailPrivateQueue = self->_thumbnailPrivateQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__BRCThumbnailGenerationManager__addThumbnailOperation_thumbnailID___block_invoke;
    block[3] = &unk_2784FF4A0;
    block[4] = self;
    v11 = v7;
    v12 = v6;
    dispatch_sync(thumbnailPrivateQueue, block);
  }
}

unint64_t __68__BRCThumbnailGenerationManager__addThumbnailOperation_thumbnailID___block_invoke(void *a1)
{
  v1 = (a1 + 4);
  [*(a1[4] + 32) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = [*(*v1 + 4) count];
  result = [*v1 _thumbnailOperationsMax];
  if (v2 >= result)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __68__BRCThumbnailGenerationManager__addThumbnailOperation_thumbnailID___block_invoke_cold_1(v1);
    }

    *(*v1 + 24) = 1;
    result = *(*v1 + 5);
    if (result)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

- (void)_removeThumbnailOperationForThumbnailID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    thumbnailPrivateQueue = self->_thumbnailPrivateQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__BRCThumbnailGenerationManager__removeThumbnailOperationForThumbnailID___block_invoke;
    v7[3] = &unk_2784FF478;
    v7[4] = self;
    v8 = v4;
    dispatch_sync(thumbnailPrivateQueue, v7);
  }
}

unint64_t __73__BRCThumbnailGenerationManager__removeThumbnailOperationForThumbnailID___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  result = [*(*(a1 + 32) + 32) removeObjectForKey:*(a1 + 40)];
  if (*(*v1 + 24) == 1)
  {
    v3 = [*(*v1 + 4) count];
    result = [*v1 _thumbnailOperationsMax];
    if (v3 < result)
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __73__BRCThumbnailGenerationManager__removeThumbnailOperationForThumbnailID___block_invoke_cold_1(v1);
      }

      *(*v1 + 24) = 0;
      result = *(*v1 + 6);
      if (result)
      {
        return (*(result + 16))();
      }
    }
  }

  return result;
}

- (id)_generateThumbnailOperationAtURL:(id)a3 targetURL:(id)a4 timeout:(id)a5 sessionContext:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[BRCThumbnailGenerateOperation alloc] initWithDocumentAtURL:v12 targetURL:v11 timeout:v10 sessionContext:v9];

  return v13;
}

- (void)_addThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 thumbnailID:(id)a5 timeout:(id)a6 syncContext:(id)a7 completionHandler:(id)a8
{
  v60 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v40 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v17 sessionContext];
  v20 = [(BRCThumbnailGenerationManager *)self _generateThumbnailOperationAtURL:v14 targetURL:v15 timeout:v40 sessionContext:v19];

  [(BRCThumbnailGenerationManager *)self _addThumbnailOperation:v20 thumbnailID:v16];
  v21 = brc_bread_crumbs();
  v22 = brc_default_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *block = 138412802;
    *&block[4] = v16;
    *&block[12] = 2112;
    *&block[14] = v20;
    *&block[22] = 2112;
    v55 = v21;
    _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] Generating thumbnail for ID %@ (shouldTransferThumbnail:yes) %@%@", block, 0x20u);
  }

  objc_initWeak(&location, v20);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __125__BRCThumbnailGenerationManager__addThumbnailGenerationJobAtURL_targetURL_thumbnailID_timeout_syncContext_completionHandler___block_invoke;
  v44[3] = &unk_2785054C0;
  v39 = v15;
  v45 = v39;
  v38 = v14;
  v46 = v38;
  objc_copyWeak(&v50, &location);
  v23 = v18;
  v49 = v23;
  v47 = self;
  v24 = v16;
  v48 = v24;
  [v20 setSaveThumbnailCompletionBlock:v44];
  thumbnailQueue = self->_thumbnailQueue;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __125__BRCThumbnailGenerationManager__addThumbnailGenerationJobAtURL_targetURL_thumbnailID_timeout_syncContext_completionHandler___block_invoke_7;
  v41[3] = &unk_2784FF478;
  v26 = v17;
  v42 = v26;
  v27 = v20;
  v43 = v27;
  v28 = thumbnailQueue;
  v29 = v41;
  v30 = objc_autoreleasePoolPush();
  v52 = 0uLL;
  v53 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v52);
  v31 = brc_bread_crumbs();
  v32 = brc_default_log();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    v36 = v52;
    label = dispatch_queue_get_label(v28);
    *block = 134218498;
    *&block[4] = v36;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v55 = v31;
    _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v58 = v52;
  v59 = v53;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_14;
  v55 = &unk_2784FF568;
  v33 = v28;
  v56 = v33;
  v34 = v29;
  v57 = v34;
  dispatch_async(v33, block);

  objc_autoreleasePoolPop(v30);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&location);
  v35 = *MEMORY[0x277D85DE8];
}

void __125__BRCThumbnailGenerationManager__addThumbnailGenerationJobAtURL_targetURL_thumbnailID_timeout_syncContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      v9 = *(a1 + 40);
      v10 = 138412802;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      v14 = 2112;
      v15 = v5;
      _os_log_error_impl(&dword_223E7A000, v6, 0x90u, "[ERROR] Thumbnail creation of %@ failed with error: %@%@", &v10, 0x20u);
    }

    v4 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  (*(*(a1 + 64) + 16))();
  [*(a1 + 48) _removeThumbnailOperationForThumbnailID:*(a1 + 56)];
  [WeakRetained hash];
  kdebug_trace();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)addThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 thumbnailID:(id)a5 syncContext:(id)a6 completionHandler:(id)a7
{
  if (a5)
  {
    v15 = a7;
    [(BRCThumbnailGenerationManager *)self _addThumbnailGenerationJobAtURL:a3 targetURL:a4 thumbnailID:a5 timeout:0 syncContext:a6 completionHandler:?];
  }

  else
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = a7;
    v15 = [v13 brc_errorInvalidParameter:@"thumbnailID" value:0];
    (*(a7 + 2))(v14, 0);
  }
}

- (void)addOutOfBandThumbnailGenerationJobAtURL:(id)a3 targetURL:(id)a4 timeout:(double)a5 syncContext:(id)a6 completionHandler:(id)a7
{
  v12 = MEMORY[0x277CCABB0];
  v13 = a7;
  v14 = a6;
  v15 = a4;
  v16 = a3;
  v17 = [v12 numberWithDouble:a5];
  [(BRCThumbnailGenerationManager *)self _addThumbnailGenerationJobAtURL:v16 targetURL:v15 thumbnailID:0 timeout:v17 syncContext:v14 completionHandler:v13];
}

- (void)getLocalThumbnailWithShare:(id)a3 mangledID:(id)a4 targetURL:(id)a5 sessionContext:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x277CCAA00] defaultManager];
  v18 = [v14 path];
  v19 = [v17 fileExistsAtPath:v18];

  if (v19)
  {
    v16[2](v16, v14);
  }

  else
  {
    v20 = [v15 clientReadWriteDatabaseFacade];
    v21 = [v20 workloop];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __113__BRCThumbnailGenerationManager_getLocalThumbnailWithShare_mangledID_targetURL_sessionContext_completionHandler___block_invoke;
    v22[3] = &unk_2785011B8;
    v23 = v12;
    v24 = v15;
    v25 = v13;
    v28 = v16;
    v26 = self;
    v27 = v14;
    dispatch_async(v21, v22);
  }
}

void __113__BRCThumbnailGenerationManager_getLocalThumbnailWithShare_mangledID_targetURL_sessionContext_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  v3 = [v2 brc_shareItemID];

  v4 = [*(a1 + 40) zoneAppRetriever];
  v5 = [v4 clientZoneByMangledID:*(a1 + 48)];
  v6 = [v5 itemByItemID:v3];

  if (!v6)
  {
    (*(*(a1 + 72) + 16))();
  }

  v7 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  v8 = [v6 fileObjectID];
  v9 = [v8 asString];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __113__BRCThumbnailGenerationManager_getLocalThumbnailWithShare_mangledID_targetURL_sessionContext_completionHandler___block_invoke_2;
  v16[3] = &unk_278505510;
  v17 = v6;
  v20 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v15 = *(a1 + 56);
  v12 = *(&v15 + 1);
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v19 = v15;
  v18 = v13;
  v14 = v6;
  [v7 getUserVisibleURLForItemIdentifier:v9 completionHandler:v16];
}

void __113__BRCThumbnailGenerationManager_getLocalThumbnailWithShare_mangledID_targetURL_sessionContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) fileObjectID];
      v15 = [v14 asString];
      *buf = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Could not get user visible URL for %@: %@%@", buf, 0x20u);
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v9 = [*(a1 + 40) syncContextProvider];
    v10 = [v9 transferSyncContextForMangledID:*(a1 + 48)];

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __113__BRCThumbnailGenerationManager_getLocalThumbnailWithShare_mangledID_targetURL_sessionContext_completionHandler___block_invoke_13;
    v16[3] = &unk_2785054E8;
    v17 = *(a1 + 72);
    [v11 addOutOfBandThumbnailGenerationJobAtURL:v5 targetURL:v12 syncContext:v10 completionHandler:v16];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancel
{
  thumbnailPrivateQueue = self->_thumbnailPrivateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BRCThumbnailGenerationManager_cancel__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(thumbnailPrivateQueue, block);
}

- (id)operationForThumbnailID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__38;
  v16 = __Block_byref_object_dispose__38;
  v17 = 0;
  thumbnailPrivateQueue = self->_thumbnailPrivateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__BRCThumbnailGenerationManager_operationForThumbnailID___block_invoke;
  block[3] = &unk_278500D08;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(thumbnailPrivateQueue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __57__BRCThumbnailGenerationManager_operationForThumbnailID___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 32) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  thumbnailsOperations = self->_thumbnailsOperations;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__BRCThumbnailGenerationManager_description__block_invoke;
  v4[3] = &unk_278505558;
  v5 = 0;
  [(NSMutableDictionary *)thumbnailsOperations enumerateKeysAndObjectsUsingBlock:v4];

  return 0;
}

void __68__BRCThumbnailGenerationManager__addThumbnailOperation_thumbnailID___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(*a1 + 32) count];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Thumbnail manager: reached maximum allowed number of thumbnails retrieval (%ld)%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __73__BRCThumbnailGenerationManager__removeThumbnailOperationForThumbnailID___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  [*(*a1 + 32) count];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_1(&dword_223E7A000, v1, v2, "[DEBUG] Thumbnail manager: below maximum allowed number of thumbnails retrieval (%ld)%@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

@end