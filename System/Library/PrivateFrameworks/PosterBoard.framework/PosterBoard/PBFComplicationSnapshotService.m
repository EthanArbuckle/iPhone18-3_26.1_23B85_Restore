@interface PBFComplicationSnapshotService
- (PBFComplicationSnapshotService)init;
- (id)preparedComplicationSnapshotsForRequests:(id)a3;
- (void)_buildAndExecuteComplicationSnapshotterForRequest:(id)a3;
- (void)_fireCompletionHandlersForRequest:(id)a3 snapshot:(id)a4 error:(id)a5;
- (void)_lock_cancelRequests:(id)a3;
- (void)_lock_trimCachedSnapshotsToRequests:(id)a3 trimCache:(BOOL)a4;
- (void)cancelRequests:(id)a3;
- (void)complicationSnapshotter:(id)a3 didFinishWithSnapshot:(id)a4 error:(id)a5;
- (void)fetchComplicationSnapshotsForRequests:(id)a3 complicationSnapshotReceivedHandler:(id)a4 errorHandler:(id)a5 completionHandler:(id)a6;
- (void)invalidate;
- (void)trimCachedSnapshotsToRequests:(id)a3;
@end

@implementation PBFComplicationSnapshotService

- (PBFComplicationSnapshotService)init
{
  v14.receiver = self;
  v14.super_class = PBFComplicationSnapshotService;
  v2 = [(PBFComplicationSnapshotService *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"ComplicationSnapshotQueue"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:3];
    [(NSOperationQueue *)v2->_operationQueue setQualityOfService:25];
    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_inflightRequestToFuture = v2->_lock_inflightRequestToFuture;
    v2->_lock_inflightRequestToFuture = v5;

    v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    lock_finishedRequestToFuture = v2->_lock_finishedRequestToFuture;
    v2->_lock_finishedRequestToFuture = v7;

    v9 = [MEMORY[0x277D3EBA8] sharedWorkloop];
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v9;

    v11 = objc_opt_new();
    invalidationFlag = v2->_invalidationFlag;
    v2->_invalidationFlag = v11;

    if (init_onceToken != -1)
    {
      [PBFComplicationSnapshotService init];
    }

    objc_storeStrong(&v2->_complicationImageCache, init_complicationSnapshotServiceDefaultImageCache);
  }

  return v2;
}

void __38__PBFComplicationSnapshotService_init__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CF0D68]) initWithUniqueIdentifier:@"ComplicationSnapshotServiceDefaultCache"];
  v1 = init_complicationSnapshotServiceDefaultImageCache;
  init_complicationSnapshotServiceDefaultImageCache = v0;
}

- (id)preparedComplicationSnapshotsForRequests:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    v5 = 0;
    goto LABEL_29;
  }

  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v5 = objc_opt_new();
    goto LABEL_29;
  }

  os_unfair_lock_lock(&self->_lock);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = v4;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v7)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_28;
  }

  v8 = v7;
  v9 = 0;
  v5 = 0;
  v10 = *v26;
  do
  {
    v11 = 0;
    do
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v13 = [(NSMapTable *)self->_lock_finishedRequestToFuture objectForKey:v12, v23];
      if (v13)
      {
        v14 = v13;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_13;
      }

      v14 = [v12 cacheIdentifier];
      if (!v9)
      {
        v15 = MEMORY[0x277CBEB98];
        v16 = [(BSUIMappedImageCache *)self->_complicationImageCache allKeys];
        v9 = [v15 setWithArray:v16];
      }

      if (![v9 containsObject:v14])
      {
        goto LABEL_21;
      }

      v17 = [(BSUIMappedImageCache *)self->_complicationImageCache imageForKey:v14];
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = v17;
      v24 = v9;
      v19 = v6;
      v20 = [MEMORY[0x277D3EC50] futureWithResult:v17];
      [(NSMapTable *)self->_lock_finishedRequestToFuture setObject:v20 forKey:v12];

      if (v20)
      {
        v14 = v20;
        v6 = v19;
        v9 = v24;
        if (!v5)
        {
LABEL_12:
          v5 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
        }

LABEL_13:
        [v5 setObject:v14 forKey:v12];
LABEL_21:

        goto LABEL_22;
      }

      v6 = v19;
      v9 = v24;
LABEL_22:
      ++v11;
    }

    while (v8 != v11);
    v21 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v8 = v21;
  }

  while (v21);
LABEL_28:

  os_unfair_lock_unlock(&self->_lock);
  v4 = v23;
LABEL_29:

  return v5;
}

- (void)fetchComplicationSnapshotsForRequests:(id)a3 complicationSnapshotReceivedHandler:(id)a4 errorHandler:(id)a5 completionHandler:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    if (v13)
    {
      v14 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      v13[2](v13, v14);
    }
  }

  else
  {
    v40 = v13;
    v15 = objc_opt_new();
    v16 = dispatch_group_create();
    dispatch_group_enter(v16);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke;
    aBlock[3] = &unk_2782C6F18;
    v42 = v11;
    v64 = v11;
    v17 = v16;
    v63 = v17;
    v46 = _Block_copy(aBlock);
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_2;
    v58[3] = &unk_2782C6F40;
    v39 = v15;
    v59 = v39;
    v41 = v12;
    v61 = v12;
    v18 = v17;
    v60 = v18;
    v19 = _Block_copy(v58);
    os_unfair_lock_lock(&self->_lock);
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v43 = v10;
    obj = v10;
    v47 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    if (v47)
    {
      v20 = *v55;
      v45 = 0;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v55 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v54 + 1) + 8 * i);
          dispatch_group_enter(v18);
          v23 = [(NSMapTable *)self->_lock_inflightRequestToFuture objectForKey:v22];
          v24 = [(NSMapTable *)self->_lock_finishedRequestToFuture objectForKey:v22];
          if (v23 | v24)
          {
            v34 = v24;
            v35 = v24;
          }

          else
          {
            v25 = v20;
            v26 = v19;
            v27 = v18;
            v28 = v45;
            if (!v45)
            {
              v29 = MEMORY[0x277CBEB98];
              v30 = [(BSUIMappedImageCache *)self->_complicationImageCache allKeys];
              v28 = [v29 setWithArray:v30];
            }

            v31 = [v22 cacheIdentifier];
            v45 = v28;
            if ([v28 containsObject:v31] && (-[BSUIMappedImageCache imageForKey:](self->_complicationImageCache, "imageForKey:", v31), (v32 = objc_claimAutoreleasedReturnValue()) != 0))
            {
              v33 = v32;
              v34 = [MEMORY[0x277D3EC50] futureWithResult:v32];
              [(NSMapTable *)self->_lock_finishedRequestToFuture setObject:v34 forKey:v22];

              v23 = 0;
              v35 = v34;
            }

            else
            {
              v23 = objc_opt_new();
              [(NSMapTable *)self->_lock_inflightRequestToFuture setObject:v23 forKey:v22];
              [(PBFComplicationSnapshotService *)self _buildAndExecuteComplicationSnapshotterForRequest:v22];
              v34 = 0;
              v35 = v23;
            }

            v18 = v27;
            v19 = v26;
            v20 = v25;
          }

          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_3;
          v51[3] = &unk_2782C6F68;
          v36 = v19;
          v51[4] = v22;
          v52 = v36;
          v53 = v46;
          [v35 addCompletionBlock:v51];
        }

        v47 = [obj countByEnumeratingWithState:&v54 objects:v65 count:16];
      }

      while (v47);
    }

    else
    {
      v45 = 0;
    }

    os_unfair_lock_unlock(&self->_lock);
    dispatch_group_leave(v18);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_4;
    block[3] = &unk_2782C6310;
    v13 = v40;
    v49 = v39;
    v50 = v40;
    v37 = v18;
    v38 = v39;
    dispatch_group_notify(v37, MEMORY[0x277D85CD0], block);

    v11 = v42;
    v10 = v43;
    v12 = v41;
  }
}

void __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) addObject:v5];
  objc_sync_exit(v6);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

void __139__PBFComplicationSnapshotService_fetchComplicationSnapshotsForRequests_complicationSnapshotReceivedHandler_errorHandler_completionHandler___block_invoke_4(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v2 = *(a1 + 32);
    objc_sync_enter(v2);
    if ([*(a1 + 32) count])
    {
      v3 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277CCA578];
      v4 = [*(a1 + 32) copy];
      v8[0] = v4;
      v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      v6 = [v3 pbf_generalErrorWithCode:10 userInfo:v5];
    }

    else
    {
      v6 = [*(a1 + 32) firstObject];
    }

    objc_sync_exit(v2);

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_buildAndExecuteComplicationSnapshotterForRequest:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[PBFComplicationSnapshotter alloc] initWithComplicationSnapshotRequest:v4];
  v6 = [[PBFComplicationSnapshotterOperation alloc] initWithRequest:v4 snapshotter:v5];

  [(PBFComplicationSnapshotter *)v5 addObserver:self];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __84__PBFComplicationSnapshotService__buildAndExecuteComplicationSnapshotterForRequest___block_invoke;
  v9[3] = &unk_2782C5888;
  v7 = v5;
  v10 = v7;
  [(PBFComplicationSnapshotterOperation *)v6 setCompletionBlock:v9];
  v8 = PBFLogComplicationSnapshotter();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = v7;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "ComplicationSnapshotterOperation for snapshotter %{public}@ added to operation queue", buf, 0xCu);
  }

  [(NSOperationQueue *)self->_operationQueue addOperation:v6];
}

void __84__PBFComplicationSnapshotService__buildAndExecuteComplicationSnapshotterForRequest___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = PBFLogComplicationSnapshotter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138543362;
    v5 = v3;
    _os_log_impl(&dword_21B526000, v2, OS_LOG_TYPE_DEFAULT, "ComplicationSnapshotterOperation for snapshotter %{public}@ completed", &v4, 0xCu);
  }
}

- (void)trimCachedSnapshotsToRequests:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PBFComplicationSnapshotService *)self _lock_trimCachedSnapshotsToRequests:v4 trimCache:1];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)cancelRequests:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(PBFComplicationSnapshotService *)self _lock_cancelRequests:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_fireCompletionHandlersForRequest:(id)a3 snapshot:(id)a4 error:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  NSClassFromString(&cfstr_Pbfcomplicatio_1.isa);
  if (!v12)
  {
    [PBFComplicationSnapshotService _fireCompletionHandlersForRequest:a2 snapshot:? error:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotService _fireCompletionHandlersForRequest:a2 snapshot:? error:?];
  }

  if (v11 && (key = "hasTriedBeforeKey", objc_getAssociatedObject(v12, &key), v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v17 = [MEMORY[0x277CBEB68] null];
    objc_setAssociatedObject(v12, &key, v17, 1);

    [(PBFComplicationSnapshotService *)self _buildAndExecuteComplicationSnapshotterForRequest:v12];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [(NSMapTable *)self->_lock_inflightRequestToFuture objectForKey:v12];
    [(NSMapTable *)self->_lock_inflightRequestToFuture removeObjectForKey:v12];
    if (v10 && !v11)
    {
      [(NSMapTable *)self->_lock_finishedRequestToFuture setObject:v14 forKey:v12];
      complicationImageCache = self->_complicationImageCache;
      v16 = [v12 cacheIdentifier];
      [(BSUIMappedImageCache *)complicationImageCache setImage:v10 forKey:v16];
    }

    os_unfair_lock_unlock(&self->_lock);
    [v14 finishWithResult:v10 error:v11];
  }
}

- (void)complicationSnapshotter:(id)a3 didFinishWithSnapshot:(id)a4 error:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 request];
  [(PBFComplicationSnapshotService *)self _fireCompletionHandlersForRequest:v10 snapshot:v9 error:v8];
}

- (void)_lock_cancelRequests:(id)a3
{
  v8 = a3;
  if ([v8 count] && -[NSMapTable count](self->_lock_inflightRequestToFuture, "count"))
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = NSAllMapTableKeys(self->_lock_inflightRequestToFuture);
    v6 = [v4 setWithArray:v5];

    v7 = [v6 mutableCopy];
    [v7 minusSet:v8];
    if ((BSEqualObjects() & 1) == 0)
    {
      [(PBFComplicationSnapshotService *)self _lock_trimCachedSnapshotsToRequests:v7 trimCache:0];
    }
  }
}

- (void)_lock_trimCachedSnapshotsToRequests:(id)a3 trimCache:(BOOL)a4
{
  v50 = a4;
  v85 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v6 = [(NSOperationQueue *)self->_operationQueue operations];
  v7 = [v6 countByEnumeratingWithState:&v72 objects:v84 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v73;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v73 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v72 + 1) + 8 * i);
        v12 = [v11 request];
        if (([v5 containsObject:v12] & 1) == 0)
        {
          v13 = PBFLogComplicationSnapshotter();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [v11 snapshotter];
            *buf = 138543618;
            v81 = v12;
            v82 = 2114;
            v83 = v14;
            _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "Trimming request: %{public}@. Associated operation snapshotter: %{public}@", buf, 0x16u);
          }

          v15 = [(NSMapTable *)self->_lock_inflightRequestToFuture objectForKey:v12];
          v16 = v15;
          if (v15)
          {
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 3221225472;
            aBlock[2] = __80__PBFComplicationSnapshotService__lock_trimCachedSnapshotsToRequests_trimCache___block_invoke;
            aBlock[3] = &unk_2782C5888;
            v71 = v15;
            v17 = _Block_copy(aBlock);
            [v51 addObject:v17];

            [(NSMapTable *)self->_lock_inflightRequestToFuture removeObjectForKey:v12];
          }

          v18 = [v11 snapshotter];
          [v18 invalidate];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v72 objects:v84 count:16];
    }

    while (v8);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v19 = [(NSMapTable *)self->_lock_inflightRequestToFuture copy];
  v20 = [v19 keyEnumerator];

  v21 = [v20 countByEnumeratingWithState:&v66 objects:v79 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v67;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v67 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v66 + 1) + 8 * j);
        if (([v5 containsObject:v25] & 1) == 0)
        {
          v26 = [(NSMapTable *)self->_lock_inflightRequestToFuture objectForKey:v25];
          v27 = v26;
          if (v26)
          {
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __80__PBFComplicationSnapshotService__lock_trimCachedSnapshotsToRequests_trimCache___block_invoke_2;
            v64[3] = &unk_2782C5888;
            v65 = v26;
            v28 = _Block_copy(v64);
            [v51 addObject:v28];
          }
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v66 objects:v79 count:16];
    }

    while (v22);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v29 = [(NSMapTable *)self->_lock_finishedRequestToFuture copy];
  v30 = [v29 keyEnumerator];

  v31 = [v30 countByEnumeratingWithState:&v60 objects:v78 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v61;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v61 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v60 + 1) + 8 * k);
        if (([v5 containsObject:v35] & 1) == 0)
        {
          [(NSMapTable *)self->_lock_finishedRequestToFuture removeObjectForKey:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v60 objects:v78 count:16];
    }

    while (v32);
  }

  if (v50)
  {
    v36 = MEMORY[0x277CBEB58];
    v37 = [(BSUIMappedImageCache *)self->_complicationImageCache allKeys];
    v38 = [v36 setWithArray:v37];

    v39 = [v5 bs_map:&__block_literal_global_40];
    [v38 minusSet:v39];
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v40 = v38;
    v41 = [v40 countByEnumeratingWithState:&v56 objects:v77 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v57;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v57 != v43)
          {
            objc_enumerationMutation(v40);
          }

          [(BSUIMappedImageCache *)self->_complicationImageCache removeImageForKey:*(*(&v56 + 1) + 8 * m)];
        }

        v42 = [v40 countByEnumeratingWithState:&v56 objects:v77 count:16];
      }

      while (v42);
    }
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v45 = v51;
  v46 = [v45 countByEnumeratingWithState:&v52 objects:v76 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v53;
    do
    {
      for (n = 0; n != v47; ++n)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v45);
        }

        dispatch_async(self->_callbackQueue, *(*(&v52 + 1) + 8 * n));
      }

      v47 = [v45 countByEnumeratingWithState:&v52 objects:v76 count:16];
    }

    while (v47);
  }
}

void __80__PBFComplicationSnapshotService__lock_trimCachedSnapshotsToRequests_trimCache___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  [v1 finishWithError:v2];
}

void __80__PBFComplicationSnapshotService__lock_trimCachedSnapshotsToRequests_trimCache___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
  [v1 finishWithError:v2];
}

- (void)invalidate
{
  if ([(BSAtomicSignal *)self->_invalidationFlag signal])
  {
    os_unfair_lock_lock(&self->_lock);
    v3 = [MEMORY[0x277CBEB98] set];
    [(PBFComplicationSnapshotService *)self _lock_trimCachedSnapshotsToRequests:v3 trimCache:0];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_fireCompletionHandlersForRequest:(const char *)a1 snapshot:error:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:PBFComplicationSnapshotRequestClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFComplicationSnapshotService.m";
    v9 = 1024;
    v10 = 220;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_fireCompletionHandlersForRequest:(const char *)a1 snapshot:error:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_bs_assert_object != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    v8 = @"PBFComplicationSnapshotService.m";
    v9 = 1024;
    v10 = 220;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end