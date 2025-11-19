@interface PBItemCollectionServicer
+ (id)newServicerForConnection:(id)a3 itemCollection:(id)a4;
- (PBItemCollectionServicer)initWithConnection:(id)a3 itemCollection:(id)a4;
- (void)callCleanupBlockWithUUID:(id)a3;
- (void)loadRepresentationForItemAtIndex:(unint64_t)a3 type:(id)a4 completionBlock:(id)a5;
@end

@implementation PBItemCollectionServicer

+ (id)newServicerForConnection:(id)a3 itemCollection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PBItemCollectionServicer alloc] initWithConnection:v6 itemCollection:v5];

  return v7;
}

- (PBItemCollectionServicer)initWithConnection:(id)a3 itemCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = PBItemCollectionServicer;
  v8 = [(PBItemCollectionServicer *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_itemCollection, a4);
    v10 = [MEMORY[0x277CBEB38] dictionary];
    cleanupQueue_cleanupHandlerByUUID = v9->_cleanupQueue_cleanupHandlerByUUID;
    v9->_cleanupQueue_cleanupHandlerByUUID = v10;

    [v6 setExportedObject:v9];
    v12 = PBNewDataProviderXPCInterface();
    [v6 setExportedInterface:v12];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __62__PBItemCollectionServicer_initWithConnection_itemCollection___block_invoke;
    v14[3] = &unk_279A063A0;
    v15 = v9;
    [v6 setInvalidationHandler:v14];
  }

  return v9;
}

void __62__PBItemCollectionServicer_initWithConnection_itemCollection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = _PBLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_25E138000, v2, OS_LOG_TYPE_INFO, "PBItemCollectionServicer connection disconnected.", buf, 2u);
  }

  [*(a1 + 32) setItemCollection:0];
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__2;
  v22 = __Block_byref_object_dispose__2;
  v23 = 0;
  v3 = _cleanupQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__PBItemCollectionServicer_initWithConnection_itemCollection___block_invoke_2;
  block[3] = &unk_279A06A60;
  v17 = buf;
  v16 = *(a1 + 32);
  dispatch_sync(v3, block);

  if ([*(v19 + 5) count])
  {
    v4 = _PBLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(v19 + 5) count];
      *v25 = 134217984;
      v26 = v10;
      _os_log_debug_impl(&dword_25E138000, v4, OS_LOG_TYPE_DEBUG, "Calling %lu cleanup handlers because connection disconnected.", v25, 0xCu);
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = *(v19 + 5);
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v24 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          (*(*(*(&v11 + 1) + 8 * v8) + 16))(*(*(&v11 + 1) + 8 * v8));
          ++v8;
        }

        while (v6 != v8);
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v24 count:16];
      }

      while (v6);
    }
  }

  _Block_object_dispose(buf, 8);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __62__PBItemCollectionServicer_initWithConnection_itemCollection___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 32) + 8);

  return [v5 removeAllObjects];
}

- (void)loadRepresentationForItemAtIndex:(unint64_t)a3 type:(id)a4 completionBlock:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:100];
  v11 = [(PBItemCollectionServicer *)self itemCollection];
  v12 = _PBLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_debug_impl(&dword_25E138000, v12, OS_LOG_TYPE_DEBUG, "loadRepresentationForItemAtIndex:type:completionBlock: requesting load of type %@ from item at index %ld", buf, 0x16u);
  }

  v13 = [v11 items];
  v14 = [v13 count] > a3;

  if (v14)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v52 = __Block_byref_object_copy__2;
    v53 = __Block_byref_object_dispose__2;
    v54 = 0;
    v15 = [(PBItemCollectionServicer *)self itemCollection];
    v16 = [v15 isGeneralPasteboard];

    if (v16)
    {
      v17 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, 0);
      v18 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v17;

      dispatch_source_set_event_handler(*(*&buf[8] + 40), &__block_literal_global_4);
      v19 = *(*&buf[8] + 40);
      v20 = dispatch_time(0, 500000000);
      dispatch_source_set_timer(v19, v20, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_activate(*(*&buf[8] + 40));
    }

    v21 = [v11 items];
    v22 = [v21 objectAtIndexedSubscript:a3];

    v23 = [v22 representationConformingToType:v8];
    if (v23)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_4;
      v35[3] = &unk_279A06F38;
      v36 = v8;
      v40 = buf;
      v41 = a3;
      v37 = v22;
      v38 = self;
      v39 = v9;
      v24 = [v23 loadWithCompletionHandler:v35];
      [v10 addChild:v24 withPendingUnitCount:100];

      v25 = v36;
    }

    else
    {
      v29 = PBCannotLoadRepresentationError(v8, 0);
      [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
      v30 = _PBLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *v45 = 138412802;
        v46 = v8;
        v47 = 2048;
        v48 = a3;
        v49 = 2112;
        v50 = v11;
        _os_log_fault_impl(&dword_25E138000, v30, OS_LOG_TYPE_FAULT, "loadRepresentationForItemAtIndex:type:completionBlock: was asked to load representation of type %@ for index %ld but no such representation could be found from collection %@", v45, 0x20u);
      }

      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_11;
      v32[3] = &unk_279A06B28;
      v34 = v9;
      v25 = v29;
      v33 = v25;
      PBDispatchAsyncCallback(v32);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = _PBLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 2112;
      v52 = v11;
      _os_log_error_impl(&dword_25E138000, v26, OS_LOG_TYPE_ERROR, "loadRepresentationForItemAtIndex:type:completionBlock: was asked to load representation of type %@ for index %ld from collection %@ but no such index exists.", buf, 0x20u);
    }

    if (v9)
    {
      v27 = PBIndexOutOfRangeError(a3, 0);
      [v10 setCompletedUnitCount:{objc_msgSend(v10, "totalUnitCount")}];
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke;
      v42[3] = &unk_279A06B28;
      v43 = v27;
      v44 = v9;
      v28 = v27;
      PBDispatchAsyncCallback(v42);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_2()
{
  v0 = _PBLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_25E138000, v0, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF PASTEBOARD: This application has failed to return data it promised for a pasteboard copy in a timely fashion and is now hanging other processes waiting to access the pasteboard.", v1, 2u);
  }
}

void __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v63 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = _PBLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v14 = *(a1 + 32);
    v15 = *(a1 + 72);
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v14;
    *&buf[22] = 2048;
    v60 = v15;
    v16 = "loadRepresentationForItemAtIndex:type:completionBlock: load returned error %@ for type %@ at index %ld";
    v17 = v13;
    v18 = 32;
    goto LABEL_4;
  }

  if (v9)
  {
    v13 = _PBLog();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v19 = [v9 length];
    v20 = *(a1 + 32);
    v21 = *(a1 + 72);
    *buf = 134218498;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = v20;
    *&buf[22] = 2048;
    v60 = v21;
    v22 = "loadRepresentationForItemAtIndex:type:completionBlock: completed load as NSData (%ld bytes) for representation of type %@ at index %ld";
    v23 = v13;
    v24 = 32;
LABEL_11:
    _os_log_debug_impl(&dword_25E138000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    goto LABEL_13;
  }

  v25 = _PBLog();
  v13 = v25;
  if (v10)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 72);
    *buf = 138412546;
    *&buf[4] = v26;
    *&buf[12] = 2048;
    *&buf[14] = v27;
    v22 = "loadRepresentationForItemAtIndex:type:completionBlock: completed load as URL for representation of type %@ at index %ld";
    v23 = v13;
    v24 = 22;
    goto LABEL_11;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v46 = *(a1 + 32);
    v47 = *(a1 + 72);
    *buf = 138412546;
    *&buf[4] = v46;
    *&buf[12] = 2048;
    *&buf[14] = v47;
    v16 = "loadRepresentationForItemAtIndex:type:completionBlock: load handler returned neither result nor error for type %@ at index %ld";
    v17 = v13;
    v18 = 22;
LABEL_4:
    _os_log_error_impl(&dword_25E138000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
  }

LABEL_13:

  v28 = *(*(*(a1 + 64) + 8) + 40);
  if (v28)
  {
    dispatch_source_cancel(v28);
    v29 = *(*(a1 + 64) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = 0;
  }

  v31 = MEMORY[0x25F8AC430](v12);
  if ([v9 length] > 0x100000)
  {
    v32 = CPTemporaryFileWithUniqueName();
    if (v32)
    {
      [v9 writeToURL:v32 atomically:0];
      v33 = [*(a1 + 40) metadata];
      v50 = [v33 objectForKeyedSubscript:@"com.apple.Pasteboard.suggestedName"];

      v34 = *(a1 + 32);
      v57 = 0;
      v58 = 0;
      v49 = PBCloneURLToTemporaryFolder(v32, @"com.apple.Pasteboard", v34, v50, &v58, &v57);
      v35 = v58;
      v36 = v57;
      if (v36)
      {
        v37 = PBCannotCreateTemporaryFile(0, v36);
        v38 = v11;
        v11 = v37;
      }

      else
      {
        v48 = [[PBSecurityScopedURLWrapper alloc] initWithURL:v49 readonly:1];

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_6;
        v54[3] = &unk_279A06A10;
        v55 = v35;
        v56 = v12;
        v39 = MEMORY[0x25F8AC430](v54);

        v38 = v55;
        v31 = v39;
        v10 = v48;
      }

      v40 = [MEMORY[0x277CCAA00] defaultManager];
      [v40 removeItemAtURL:v32 error:0];
    }

    v9 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v60 = __Block_byref_object_copy__2;
  v61 = __Block_byref_object_dispose__2;
  v62 = 0;
  if (v31)
  {
    v41 = [MEMORY[0x277CCAD78] UUID];
    v42 = *(*&buf[8] + 40);
    *(*&buf[8] + 40) = v41;

    v43 = _cleanupQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_2_9;
    block[3] = &unk_279A06328;
    block[4] = *(a1 + 48);
    v53 = buf;
    v52 = v31;
    dispatch_sync(v43, block);
  }

  v44 = *(a1 + 56);
  if (v44)
  {
    (*(v44 + 16))(v44, v9, v10, v11, *(*&buf[8] + 40));
  }

  _Block_object_dispose(buf, 8);

  v45 = *MEMORY[0x277D85DE8];
}

uint64_t __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __82__PBItemCollectionServicer_loadRepresentationForItemAtIndex_type_completionBlock___block_invoke_2_9(void *a1)
{
  v2 = MEMORY[0x25F8AC430](a1[5]);
  [*(a1[4] + 8) setObject:v2 forKeyedSubscript:*(*(a1[6] + 8) + 40)];
}

- (void)callCleanupBlockWithUUID:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__12_0;
  v14 = __Block_byref_object_dispose__13_0;
  v15 = 0;
  if (v4)
  {
    v5 = _cleanupQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__PBItemCollectionServicer_callCleanupBlockWithUUID___block_invoke;
    block[3] = &unk_279A06D80;
    v9 = &v10;
    block[4] = self;
    v8 = v4;
    dispatch_sync(v5, block);

    v6 = v11[5];
    if (v6)
    {
      (*(v6 + 16))();
    }
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __53__PBItemCollectionServicer_callCleanupBlockWithUUID___block_invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = _PBLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v8 = a1[5];
      v9 = 138412290;
      v10 = v8;
      _os_log_debug_impl(&dword_25E138000, v5, OS_LOG_TYPE_DEBUG, "Cleaup handler UUID %@ is not found.", &v9, 0xCu);
    }
  }

  result = [*(a1[4] + 8) removeObjectForKey:a1[5]];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end