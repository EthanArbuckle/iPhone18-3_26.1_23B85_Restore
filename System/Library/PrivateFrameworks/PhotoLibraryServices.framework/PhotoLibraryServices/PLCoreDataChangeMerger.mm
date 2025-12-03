@interface PLCoreDataChangeMerger
- (PLCoreDataChangeMerger)init;
- (void)dealloc;
- (void)invalidate;
- (void)mergeChangesFromRemoteContextSave:(id)save intoAllContextsNotIdenticalTo:(id)to debugEvent:(id)event completionHandler:(id)handler;
- (void)refreshAllObjects;
- (void)registerToReceiveCoreDataChanges:(id)changes;
@end

@implementation PLCoreDataChangeMerger

- (PLCoreDataChangeMerger)init
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = PLCoreDataChangeMerger;
  v2 = [(PLCoreDataChangeMerger *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(PLManagedObjectContextList);
    contextsToReceiveNotifications = v2->_contextsToReceiveNotifications;
    v2->_contextsToReceiveNotifications = v3;

    v5 = dispatch_queue_create("com.apple.PLManagedObjectContext.mergeChanges", 0);
    mergeChangesQueue = v2->_mergeChangesQueue;
    v2->_mergeChangesQueue = v5;

    v7 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      *buf = 138412546;
      v13 = v8;
      v14 = 2048;
      v15 = v2;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "%@ %p init", buf, 0x16u);
    }

    v9 = v2;
  }

  return v2;
}

- (void)refreshAllObjects
{
  v14 = *MEMORY[0x1E69E9840];
  allContexts = [(PLCoreDataChangeMerger *)self allContexts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [allContexts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(allContexts);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __43__PLCoreDataChangeMerger_refreshAllObjects__block_invoke;
        v8[3] = &unk_1E75781E8;
        v8[4] = v7;
        [v7 performBlock:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [allContexts countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 25) = 1;
    v3 = [*(a1 + 32) allContexts];
    if ([v3 count])
    {
      v4 = [MEMORY[0x1E695DF90] dictionary];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v25 = v3;
      v5 = v3;
      v6 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v38;
        do
        {
          v9 = 0;
          do
          {
            if (*v38 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v37 + 1) + 8 * v9);
            v35[0] = MEMORY[0x1E69E9820];
            v35[1] = 3221225472;
            v35[2] = __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_2;
            v35[3] = &unk_1E7578848;
            v35[4] = v10;
            v36 = v4;
            [v10 performBlockAndWait:v35];

            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v7);
      }

      v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
      v12 = [v5 objectAtIndex:0];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_3;
      v31[3] = &unk_1E75761B8;
      v13 = v4;
      v32 = v13;
      v14 = v5;
      v33 = v14;
      v15 = v11;
      v34 = v15;
      [v12 performBlockAndWait:v31];

      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v16 = v14;
      v17 = [v16 countByEnumeratingWithState:&v27 objects:v43 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v28;
        do
        {
          v20 = 0;
          do
          {
            if (*v28 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v27 + 1) + 8 * v20);
            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_5;
            v26[3] = &unk_1E7578848;
            v22 = *(a1 + 32);
            v26[4] = v21;
            v26[5] = v22;
            [v21 performBlockAndWait:v26];
            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v27 objects:v43 count:16];
        }

        while (v18);
      }

      v3 = v25;
    }

    *(*(a1 + 32) + 25) = 0;
    v23 = [MEMORY[0x1E696AD88] defaultCenter];
    v41 = @"PLUnknownMergeEvent";
    v42 = MEMORY[0x1E695E118];
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
    [v23 postNotificationName:@"PLManagedObjectContextsPhotoKitNotification" object:0 userInfo:v24];
  }
}

void __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) registeredObjects];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if (([v7 isDeleted] & 1) == 0)
        {
          v8 = [v7 entity];
          v9 = [v8 name];

          v10 = [*(a1 + 40) objectForKey:v9];
          if (!v10)
          {
            v10 = [MEMORY[0x1E695DFA8] set];
            [*(a1 + 40) setObject:v10 forKey:v9];
          }

          v11 = [v7 objectID];
          [v10 addObject:v11];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }
}

void __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_4;
  v3[3] = &unk_1E756DD90;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) stalenessInterval];
  v3 = v2;
  [*(a1 + 32) setStalenessInterval:0.1];
  [*(a1 + 32) pl_refresh];
  v10 = [*(a1 + 32) photoLibrary];
  if ([*(a1 + 32) isBackingALAssetsLibrary])
  {
    v4 = v10 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    [*(a1 + 32) resetAllFetchingAlbums];
    if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
    {
      NSLog(&cfstr_Plgenericchang_2.isa, *(a1 + 40));
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = MEMORY[0x1E696AD80];
    v7 = [*(a1 + 32) photoLibrary];
    v8 = [v6 notificationWithName:@"PLGenericChangeNotification" object:v7 userInfo:0];
    [v5 postNotification:v8];
  }

  if ([*(a1 + 32) isUserInterfaceContext])
  {
    v9 = +[PLChangeNotificationCenter defaultCenter];
    [v9 postShouldReloadNotificationWithPhotoLibrary:v10];
  }

  [*(a1 + 32) setStalenessInterval:v3];
}

void __49__PLCoreDataChangeMerger_handleUnknownMergeEvent__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = MEMORY[0x1E695D5E0];
  v6 = a3;
  v10 = [v5 fetchRequestWithEntityName:a2];
  [v10 setIncludesSubentities:1];
  [v10 setIncludesPendingChanges:0];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v6];

  [v10 setPredicate:v7];
  v8 = [*(a1 + 32) objectAtIndex:0];
  v9 = [v8 executeFetchRequest:v10 error:0];

  if (v9)
  {
    [*(a1 + 40) addObject:v9];
  }
}

- (void)mergeChangesFromRemoteContextSave:(id)save intoAllContextsNotIdenticalTo:(id)to debugEvent:(id)event completionHandler:(id)handler
{
  saveCopy = save;
  eventCopy = event;
  handlerCopy = handler;
  toCopy = to;
  v14 = PLBackendGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "mergeChangesFromRemoteContextSave", buf, 2u);
  }

  objc_initWeak(buf, toCopy);
  mergeChangesQueue = self->_mergeChangesQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __119__PLCoreDataChangeMerger_mergeChangesFromRemoteContextSave_intoAllContextsNotIdenticalTo_debugEvent_completionHandler___block_invoke;
  block[3] = &unk_1E7573148;
  v20 = eventCopy;
  selfCopy = self;
  v23 = handlerCopy;
  v16 = handlerCopy;
  v17 = eventCopy;
  objc_copyWeak(&v24, buf);
  v22 = saveCopy;
  v18 = saveCopy;
  dispatch_async(mergeChangesQueue, block);

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

void __119__PLCoreDataChangeMerger_mergeChangesFromRemoteContextSave_intoAllContextsNotIdenticalTo_debugEvent_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMergeThreadID:{+[PFAbstractStateCaptureEvent currentThreadID](PLPersistentHistoryDistributionEvent, "currentThreadID")}];
  [*(a1 + 32) setMergeInvalidated:*(*(a1 + 40) + 24)];
  if (*(*(a1 + 40) + 24) == 1)
  {
    (*(*(a1 + 56) + 16))();
    v2 = *(a1 + 32);

    [v2 end];
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v6 = [v4 allContextsNotIdenticalTo:WeakRetained];

    [*(a1 + 32) setMergedContextCount:{objc_msgSend(v6, "count")}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __119__PLCoreDataChangeMerger_mergeChangesFromRemoteContextSave_intoAllContextsNotIdenticalTo_debugEvent_completionHandler___block_invoke_2;
    v19[3] = &unk_1E756B858;
    v20 = *(a1 + 48);
    v7 = [v6 _pl_filter:v19];
    [*(a1 + 32) setReleventContextCount:{objc_msgSend(v7, "count")}];
    v8 = [*(a1 + 48) objectForKey:@"coalescedEvent"];
    *(*(a1 + 40) + 25) = [v8 BOOLValue];

    v9 = [*(a1 + 48) copy];
    v10 = *(a1 + 40);
    v11 = *(v10 + 32);
    *(v10 + 32) = v9;

    if ([v7 count])
    {
      v12 = +[PLConcurrencyLimiter sharedLimiter];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __119__PLCoreDataChangeMerger_mergeChangesFromRemoteContextSave_intoAllContextsNotIdenticalTo_debugEvent_completionHandler___block_invoke_3;
      v16[3] = &unk_1E7578848;
      v17 = *(a1 + 48);
      v18 = v7;
      [v12 sync:v16 identifyingBlock:0 library:0];
    }

    v13 = *(a1 + 40);
    v14 = *(v13 + 32);
    *(v13 + 32) = 0;

    *(*(a1 + 40) + 25) = 0;
    (*(*(a1 + 56) + 16))();
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [*(a1 + 32) setPostTimestamp:?];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"PLManagedObjectContextsPhotoKitNotification" object:0 userInfo:*(a1 + 48)];

    [*(a1 + 32) end];
    objc_autoreleasePoolPop(v3);
  }
}

- (void)registerToReceiveCoreDataChanges:(id)changes
{
  v12 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = 138412802;
    v7 = objc_opt_class();
    v8 = 2048;
    selfCopy = self;
    v10 = 2112;
    v11 = changesCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p registerToReceiveCoreDataChanges:%@", &v6, 0x20u);
  }

  [(PLManagedObjectContextList *)self->_contextsToReceiveNotifications addContext:changesCopy];
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v6 = objc_opt_class();
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = PLCoreDataChangeMerger;
  [(PLCoreDataChangeMerger *)&v4 dealloc];
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v5 = objc_opt_class();
    v6 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate BEGIN", buf, 0x16u);
  }

  pl_dispatch_sync();
}

void __36__PLCoreDataChangeMerger_invalidate__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 24) = 1;
  v2 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = objc_opt_class();
    v4 = *(a1 + 32);
    v5 = 138412546;
    v6 = v3;
    v7 = 2048;
    v8 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEBUG, "%@ %p invalidate END", &v5, 0x16u);
  }
}

@end