@interface SBHLibraryCategoryMapProvider
+ (NSString)cacheDirectory;
+ (id)baseFilePath;
+ (id)categoryMapCacheFilePathForVersion:(id)a3 source:(id)a4;
+ (id)categoryMapFromURL:(id)a3 error:(id *)a4;
+ (unint64_t)derivedOptionsFromArrayOfRequests:(id)a3;
+ (void)clearCachesForReason:(id)a3;
- (BOOL)_workQueue_updateLibraryCategoryMap:(id)a3 withSessionId:(unint64_t)a4 shouldPersist:(BOOL)a5 reason:(id)a6;
- (BOOL)forbidApplicationIdentifier:(id)a3;
- (BOOL)hasCachedLibraryCategoryMapOnFileSystem;
- (BOOL)overrideCategoryMapForTestingAtURL:(id)a3 error:(id *)a4;
- (BOOL)unforbidApplicationIdentifier:(id)a3;
- (SBHLibraryCategoryMap)libraryCategoryMap;
- (SBHLibraryCategoryMapProvider)initWithSource:(id)a3;
- (id)_copyOfObservers;
- (id)requestLibraryCategoryMapRefreshWithOptions:(unint64_t)a3 reason:(id)a4;
- (unint64_t)_nextSessionIdentifier;
- (void)_callbackQueue_notifyObserverCategoryMapWasRefreshedWithOptions:(unint64_t)a3 refreshedCategoryMap:(id)a4;
- (void)_callbackQueue_notifyObserversBeginningRefreshSession:(int64_t)a3 requests:(id)a4;
- (void)_callbackQueue_notifyObserversCategoryMapDidntNeedRefresh;
- (void)_callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:(id)a3;
- (void)_callbackQueue_notifyObserversFinishedRefreshSession:(int64_t)a3 requests:(id)a4;
- (void)_callbackQueue_notifyObserversWillReEnqueueFailedRequests:(id)a3;
- (void)_callbackQueue_notifyObserversWillRefresh:(int64_t)a3 options:(unint64_t)a4;
- (void)_callbackQueue_notifyObserversWillSunsetFailedRequests:(id)a3;
- (void)_kickoffInitialHydration;
- (void)_setupClearCacheNotification;
- (void)_setupLocaleNotification;
- (void)_workQueue_performNextRequest;
- (void)_workQueue_queueUpNextRequests:(id)a3 runNow:(BOOL)a4;
- (void)_workQueue_scheduleRefreshIfNotScheduled;
- (void)addObserver:(id)a3;
- (void)overrideCategoryMapForTesting:(id)a3;
- (void)removeObserver:(id)a3;
- (void)requestLibraryCategoryMapUpdateWithRefreshOptions:(unint64_t)a3 source:(id)a4;
- (void)resetForbiddenApplicationIdentifiers;
@end

@implementation SBHLibraryCategoryMapProvider

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_161(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _callbackQueue_notifyObserversBeginningRefreshSession:*(a1 + 48) requests:*(a1 + 32)];
    v4 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = *(a1 + 32);
      v10 = 134218242;
      v11 = v5;
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "(%ld) Starting Library Category Map refresh from requests '%@'", &v10, 0x16u);
    }

    v7 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = NSDictionaryFromSBHLibraryCategoryMapRefreshOptions(*(a1 + 56));
      v10 = 134218242;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "(%ld) Refresh options: %@", &v10, 0x16u);
    }

    [v3 _callbackQueue_notifyObserversWillRefresh:*(a1 + 48) options:*(a1 + 56)];
  }
}

- (id)_copyOfObservers
{
  v3 = self->_observers;
  objc_sync_enter(v3);
  v4 = [(NSHashTable *)self->_observers copy];
  objc_sync_exit(v3);

  return v4;
}

- (void)_workQueue_performNextRequest
{
  BSDispatchQueueAssert();
  if (!self->_inflightRefreshRequests)
  {
    v4 = [(NSMutableArray *)self->_pendingRefreshRequests copy];
    if ([v4 count])
    {
      v5 = self;
      objc_sync_enter(v5);
      isCategoryMapOverriddenForTesting = v5->_isCategoryMapOverriddenForTesting;
      objc_sync_exit(v5);

      if (isCategoryMapOverriddenForTesting)
      {
        v7 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [SBHLibraryCategoryMapProvider _workQueue_performNextRequest];
        }
      }

      else
      {
        v36 = NSStringFromSelector(a2);
        Current = CFAbsoluteTimeGetCurrent();
        [(NSMutableArray *)self->_pendingRefreshRequests removeAllObjects];
        objc_storeStrong(&self->_inflightRefreshRequests, v4);
        v9 = [objc_opt_class() derivedOptionsFromArrayOfRequests:v4];
        v10 = [(SBHLibraryCategoryMapProvider *)v5 hasCachedLibraryCategoryMapOnFileSystem];
        v11 = v9 | 0x10;
        if (v10)
        {
          v11 = v9;
        }

        v40 = v11;
        v12 = [(SBHLibraryCategoryMapProvider *)v5 _nextSessionIdentifier];
        v38 = [(SBHLibraryCategoryMapProvider *)v5 libraryCategoryMap];
        v13 = self->_workQueue;
        v14 = v5->_callbackQueue;
        objc_initWeak(location, v5);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke;
        aBlock[3] = &unk_1E808C600;
        v15 = v13;
        v64 = v15;
        objc_copyWeak(v67, location);
        v16 = v14;
        v65 = v16;
        v67[1] = v12;
        v17 = v4;
        v66 = v17;
        v67[2] = *&Current;
        v18 = _Block_copy(aBlock);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141;
        v56[3] = &unk_1E808C650;
        v19 = v15;
        v57 = v19;
        objc_copyWeak(v62, location);
        v35 = v36;
        v58 = v35;
        v62[1] = v12;
        v20 = v17;
        v59 = v20;
        v21 = v16;
        v60 = v21;
        v22 = v18;
        v61 = v22;
        v37 = _Block_copy(v56);
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3;
        v50[3] = &unk_1E808C678;
        v23 = v19;
        v51 = v23;
        objc_copyWeak(v55, location);
        v55[1] = v12;
        v39 = v38;
        v52 = v39;
        v24 = v21;
        v53 = v24;
        v33 = v22;
        v54 = v33;
        v55[2] = v40;
        v25 = _Block_copy(v50);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_161;
        block[3] = &unk_1E808C6A0;
        objc_copyWeak(v49, location);
        v49[1] = v12;
        v26 = v20;
        v48 = v26;
        v49[2] = v40;
        v34 = v24;
        dispatch_async(v24, block);
        libraryCategoryMapProviderSource = v5->_libraryCategoryMapProviderSource;
        forbiddenApplicationIdentifiers = v5->_forbiddenApplicationIdentifiers;
        workQueue = self->_workQueue;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_162;
        v41[3] = &unk_1E808C6C8;
        v32 = v23;
        v42 = v32;
        v30 = v37;
        v44 = v30;
        v43 = v26;
        v46 = v12;
        v31 = v25;
        v45 = v31;
        [(SBHLibraryCategoryMapProviderSource *)libraryCategoryMapProviderSource requestLibraryCategoryMapWithOptions:v40 existingLibraryCategoryMap:v39 forbiddenApplicationIdentifiers:forbiddenApplicationIdentifiers sessionId:v12 queue:workQueue completion:v41];

        objc_destroyWeak(v49);
        objc_destroyWeak(v55);

        objc_destroyWeak(v62);
        objc_destroyWeak(v67);

        objc_destroyWeak(location);
        v7 = v35;
      }
    }
  }
}

- (BOOL)hasCachedLibraryCategoryMapOnFileSystem
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  LOBYTE(self) = [v3 fileExistsAtPath:self->_cacheFilePath];

  return self;
}

- (unint64_t)_nextSessionIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sessionIdentifier + 1;
  v2->_sessionIdentifier = v3;
  objc_sync_exit(v2);

  return v3;
}

- (SBHLibraryCategoryMap)libraryCategoryMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_libraryCategoryMap;
  objc_sync_exit(v2);

  return v3;
}

- (void)_callbackQueue_notifyObserversCategoryMapDidntNeedRefresh
{
  v14 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 libraryCategoryMapProviderRefreshedButFoundNoChanges:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3_164(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 options] & 0x20) != 0)
        {
          v8 = [MEMORY[0x1E696AD88] defaultCenter];
          v15[0] = @"sbh_categoryMapRefreshSessionIDKey";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
          v15[1] = @"sbh_categoryMapKey";
          v16[0] = v9;
          v16[1] = *(a1 + 40);
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
          [v8 postNotificationName:@"com.apple.springboardhome.categoryMapProviderRefreshCompleted" object:v7 userInfo:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_162(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  BSDispatchQueueAssert();
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
    v7 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v8 = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_163;
    v9 = v6;
  }

  else
  {
    (*(*(a1 + 56) + 16))();
    v7 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v8 = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3_164;
    v9 = v5;
  }

  v7[2] = v8;
  v7[3] = &unk_1E808A090;
  v7[4] = *(a1 + 40);
  v7[6] = *(a1 + 64);
  v7[5] = v9;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_3(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 72);
      *buf = 134217984;
      v30 = v6;
      _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "(%ld) Finished Library Category Map refresh", buf, 0xCu);
    }

    if ([v3 isEqualToCategoryMap:*(a1 + 40)])
    {
      v7 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 72);
        *buf = 134217984;
        v30 = v8;
        _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map refresh yielded no changes to map; bailing.", buf, 0xCu);
      }

      v9 = *(a1 + 48);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_155;
      block[3] = &unk_1E8088C90;
      block[4] = WeakRetained;
      dispatch_async(v9, block);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      v10 = *(a1 + 40);
      v11 = SBLogProactiveAppLibrary();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v3 && v10)
      {
        if (v12)
        {
          v13 = *(a1 + 72);
          v14 = *(a1 + 40);
          *buf = 134218240;
          v30 = v13;
          v31 = 2048;
          v32 = v14;
          _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "(%ld) Existing Library category map: %p", buf, 0x16u);
        }

        v15 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(a1 + 72);
          *buf = 134218240;
          v30 = v16;
          v31 = 2048;
          v32 = v3;
          _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "(%ld) Refreshed Library category map: %p", buf, 0x16u);
        }

        v11 = SBLogProactiveAppLibrary();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 72);
          v18 = [SBHLibraryCategoryMap diffMap:v3 withMap:*(a1 + 40)];
          *buf = 134218242;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map changes: %@", buf, 0x16u);
        }
      }

      else if (v12)
      {
        v19 = *(a1 + 72);
        *buf = 134218242;
        v30 = v19;
        v31 = 2112;
        v32 = v3;
        _os_log_impl(&dword_1BEB18000, v11, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map was freshly generated: %@", buf, 0x16u);
      }

      [WeakRetained _workQueue_updateLibraryCategoryMap:v3 withSessionId:*(a1 + 72) shouldPersist:1 reason:@"_performNextRequest"];
      v20 = *(a1 + 48);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_159;
      v25[3] = &unk_1E808A090;
      v21 = *(a1 + 80);
      v25[4] = WeakRetained;
      v27 = v21;
      v26 = v3;
      dispatch_async(v20, v25);
      (*(*(a1 + 56) + 16))(*(a1 + 56), 0, v22, v23, v24);
    }
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2;
    block[3] = &unk_1E808A090;
    v6 = *(a1 + 64);
    block[4] = WeakRetained;
    v16 = v6;
    v7 = *(a1 + 40);
    v15 = *(a1 + 48);
    dispatch_async(v7, block);
    v8 = v5[9];
    v5[9] = 0;

    v9 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 64);
      if (v3)
      {
        v11 = @"UNSUCCESSFULLY";
      }

      else
      {
        v11 = @"SUCCESSFULLY";
      }

      v12 = CFAbsoluteTimeGetCurrent() - *(a1 + 72);
      v13 = *(a1 + 48);
      *buf = 134218754;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "(%ld) Session completed '%@'; Request fulfillment time: %f -- Requests fulfilled: %@", buf, 0x2Au);
    }

    [v5 _workQueue_scheduleRefreshIfNotScheduled];
  }
}

- (void)_workQueue_scheduleRefreshIfNotScheduled
{
  if (!self->_refreshIsScheduled)
  {
    objc_initWeak(&location, self);
    [(SBHLibraryCategoryMapProvider *)self workQueueCoalescingInterval];
    v4 = dispatch_time(0, (v3 * 1000000000.0));
    workQueue = self->_workQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__SBHLibraryCategoryMapProvider__workQueue_scheduleRefreshIfNotScheduled__block_invoke;
    v6[3] = &unk_1E808C278;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, workQueue, v6);
    self->_refreshIsScheduled = 1;
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

uint64_t __73__SBHLibraryCategoryMapProvider__workQueue_scheduleRefreshIfNotScheduled__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(WeakRetained + 80) == 1)
    {
      *(WeakRetained + 80) = 0;
      v3 = WeakRetained;
      if (![*(WeakRetained + 9) count])
      {
        [v3 _workQueue_performNextRequest];
      }
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

+ (void)clearCachesForReason:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock(&__lock);
  v5 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1BEB18000, v5, OS_LOG_TYPE_DEFAULT, "Marking SBHLibraryCategoryMapProvider caches are needing to be wiped for reason: %@", buf, 0xCu);
  }

  v6 = [a1 cacheDirectory];
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = 0;
  [v7 removeItemAtPath:v6 error:&v13];
  v8 = v13;

  v9 = SBLogProactiveAppLibrary();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SBHLibraryCategoryMapProvider clearCachesForReason:];
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v10, OS_LOG_TYPE_DEFAULT, "Success in deleting app library cache.", buf, 2u);
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 postNotificationName:@"SBHLibraryCategoryMapProviderCachesWereClearedNotification" object:0];

  v12 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v12, OS_LOG_TYPE_DEFAULT, "SBHLibraryCategoryMapProvider caches have been cleaned.  Hopefully successfully.", buf, 2u);
  }

  os_unfair_lock_unlock(&__lock);
}

+ (unint64_t)derivedOptionsFromArrayOfRequests:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 count] > 1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v3;
    v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v5 = 0;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v11 + 1) + 8 * i) options] & 0xF;
        }

        v7 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = [v3 firstObject];
    v5 = [v4 options];
  }

  return v5;
}

+ (id)categoryMapFromURL:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a3;
  v7 = [v5 setWithObjects:{objc_opt_class(), 0}];
  v14 = 0;
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:1 error:&v14];

  v9 = v14;
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      v12 = 0;
      *a4 = v10;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v7 fromData:v8 error:a4];
  }

  return v12;
}

- (SBHLibraryCategoryMapProvider)initWithSource:(id)a3
{
  v5 = a3;
  v21.receiver = self;
  v21.super_class = SBHLibraryCategoryMapProvider;
  v6 = [(SBHLibraryCategoryMapProvider *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_libraryCategoryMapProviderSource, a3);
    [(SBHLibraryCategoryMapProviderSource *)v7->_libraryCategoryMapProviderSource setDelegate:v7];
    v7->_workQueueCoalescingInterval = 1.0;
    SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
    workQueue = v7->_workQueue;
    v7->_workQueue = SerialWithQoS;

    v10 = BSDispatchQueueCreateSerialWithQoS();
    serializationQueue = v7->_serializationQueue;
    v7->_serializationQueue = v10;

    objc_storeStrong(&v7->_callbackQueue, MEMORY[0x1E69E96A0]);
    v12 = objc_opt_class();
    v13 = [v5 sourceName];
    v14 = [v12 categoryMapCacheFilePathForVersion:@"6" source:v13];
    cacheFilePath = v7->_cacheFilePath;
    v7->_cacheFilePath = v14;

    v16 = objc_opt_new();
    pendingRefreshRequests = v7->_pendingRefreshRequests;
    v7->_pendingRefreshRequests = v16;

    v18 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v7->_observers;
    v7->_observers = v18;

    [(SBHLibraryCategoryMapProvider *)v7 _setupLocaleNotification];
    [(SBHLibraryCategoryMapProvider *)v7 _setupClearCacheNotification];
    [(SBHLibraryCategoryMapProvider *)v7 _kickoffInitialHydration];
  }

  return v7;
}

+ (NSString)cacheDirectory
{
  v2 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndex:0];

  v4 = [v3 stringByAppendingPathComponent:@"com.apple.springboard.appLibrary"];

  return v4;
}

+ (id)baseFilePath
{
  v2 = [a1 cacheDirectory];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.springboardhome.categorymapcache."];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

+ (id)categoryMapCacheFilePathForVersion:(id)a3 source:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 baseFilePath];
  v9 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v10 = [v9 localeIdentifier];

  v11 = [v8 stringByAppendingFormat:@"%@.%@.%@", v10, v6, v7];

  v12 = [v11 stringByAppendingPathExtension:@"plist"];

  return v12;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers addObject:v5];
  objc_sync_exit(v4);
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = self->_observers;
  objc_sync_enter(v4);
  [(NSHashTable *)self->_observers removeObject:v5];
  objc_sync_exit(v4);
}

- (void)_callbackQueue_notifyObserverCategoryMapWasRefreshedWithOptions:(unint64_t)a3 refreshedCategoryMap:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self categoryMapWasRefreshed:a3 libraryCategoryMap:{v6, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self failedToRefreshWithError:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callbackQueue_notifyObserversWillRefresh:(int64_t)a3 options:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssert();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 libraryCategoryMapProvider:self willRefreshWithOptions:{a4, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_callbackQueue_notifyObserversBeginningRefreshSession:(int64_t)a3 requests:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self beginningRefreshWithSessionID:a3 requests:{v6, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversFinishedRefreshSession:(int64_t)a3 requests:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a4;
  BSDispatchQueueAssert();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 libraryCategoryMapProvider:self finishedRefreshWithSessionID:a3 requests:{v6, v13}];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_callbackQueue_notifyObserversWillReEnqueueFailedRequests:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self willReEnqueueFailedRequests:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_callbackQueue_notifyObserversWillSunsetFailedRequests:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  BSDispatchQueueAssert();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SBHLibraryCategoryMapProvider *)self _copyOfObservers];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 libraryCategoryMapProvider:self willSunsetFailedRequests:{v4, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)overrideCategoryMapForTestingAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() categoryMapFromURL:v6 error:a4];

  if (v7)
  {
    [(SBHLibraryCategoryMapProvider *)self overrideCategoryMapForTesting:v7];
  }

  return v7 != 0;
}

- (void)overrideCategoryMapForTesting:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v5->_isCategoryMapOverriddenForTesting = v4 != 0;
  objc_sync_exit(v5);

  if (v4)
  {
    v6 = v5->_callbackQueue;
    workQueue = v5->_workQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke;
    block[3] = &unk_1E8088F88;
    block[4] = v5;
    v11 = v4;
    v12 = v6;
    v8 = v6;
    v9 = workQueue;
    dispatch_async(v9, block);
  }
}

void __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _workQueue_updateLibraryCategoryMap:*(a1 + 40) withSessionId:objc_msgSend(*(a1 + 32) shouldPersist:"_nextSessionIdentifier") reason:{0, @"Category map overidden for testing"}];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__SBHLibraryCategoryMapProvider_overrideCategoryMapForTesting___block_invoke_2;
  v4[3] = &unk_1E8088F18;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 32);
  v5 = v2;
  dispatch_async(v3, v4);
}

- (void)resetForbiddenApplicationIdentifiers
{
  forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
  if (forbiddenApplicationIdentifiers)
  {
    self->_forbiddenApplicationIdentifiers = 0;

    v4 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:7 reason:@"[SBHLibraryCategoryMapProvider resetForbiddenApplicationIdentifiers]"];
  }
}

- (BOOL)forbidApplicationIdentifier:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_4;
  }

  forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
  if (!forbiddenApplicationIdentifiers)
  {
    v7 = objc_opt_new();
    v8 = self->_forbiddenApplicationIdentifiers;
    self->_forbiddenApplicationIdentifiers = v7;

    goto LABEL_6;
  }

  if (([(NSMutableSet *)forbiddenApplicationIdentifiers containsObject:v4]& 1) == 0)
  {
LABEL_6:
    [(NSMutableSet *)self->_forbiddenApplicationIdentifiers bs_safeAddObject:v4];
    v9 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"[SBHLibraryCategoryMapProvider forbidApplicationIdentifier]"];
    v6 = 1;
    goto LABEL_7;
  }

LABEL_4:
  v6 = 0;
LABEL_7:

  return v6;
}

- (BOOL)unforbidApplicationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableSet *)self->_forbiddenApplicationIdentifiers containsObject:v4];
  if (v5)
  {
    [(NSMutableSet *)self->_forbiddenApplicationIdentifiers removeObject:v4];
    if (![(NSMutableSet *)self->_forbiddenApplicationIdentifiers count])
    {
      forbiddenApplicationIdentifiers = self->_forbiddenApplicationIdentifiers;
      self->_forbiddenApplicationIdentifiers = 0;
    }

    v7 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"[SBHLibraryCategoryMapProvider unforbidApplicationIdentifier]"];
  }

  return v5;
}

- (id)requestLibraryCategoryMapRefreshWithOptions:(unint64_t)a3 reason:(id)a4
{
  v6 = a4;
  v7 = [[SBHLibraryCategoryMapProviderRefreshRequest alloc] initWithOptions:a3 reason:v6];

  workQueue = self->_workQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__SBHLibraryCategoryMapProvider_requestLibraryCategoryMapRefreshWithOptions_reason___block_invoke;
  block[3] = &unk_1E808A090;
  v15 = a3;
  block[4] = self;
  v9 = v7;
  v14 = v9;
  dispatch_async(workQueue, block);
  v10 = v14;
  v11 = v9;

  return v9;
}

void __84__SBHLibraryCategoryMapProvider_requestLibraryCategoryMapRefreshWithOptions_reason___block_invoke(void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = (a1[6] >> 3) & 1;
  v2 = a1[4];
  v4[0] = a1[5];
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v2 _workQueue_queueUpNextRequests:v3 runNow:v1];
}

- (void)requestLibraryCategoryMapUpdateWithRefreshOptions:(unint64_t)a3 source:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v10 = NSStringFromClass(v7);
  v8 = [v6 stringWithFormat:@"-[SBHLibraryCategoryMapProvider requestLibraryCategoryMapUpdateWithRefreshOptions:source:%@]", v10];
  v9 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:a3 reason:v8];
}

- (BOOL)_workQueue_updateLibraryCategoryMap:(id)a3 withSessionId:(unint64_t)a4 shouldPersist:(BOOL)a5 reason:(id)a6
{
  v7 = a5;
  v35 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  BSDispatchQueueAssert();
  v13 = self->_serializationQueue;
  v14 = self;
  objc_sync_enter(v14);
  v15 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = a4;
    _os_log_impl(&dword_1BEB18000, v15, OS_LOG_TYPE_DEFAULT, "(%ld) Will update library category map", buf, 0xCu);
  }

  objc_storeStrong(&v14->_libraryCategoryMap, a3);
  isCategoryMapOverriddenForTesting = v14->_isCategoryMapOverriddenForTesting;
  v17 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = a4;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "(%ld) Did update library category map", buf, 0xCu);
  }

  objc_sync_exit(v14);
  v18 = v14->_cacheFilePath;
  v19 = v18;
  if (v7)
  {
    if (isCategoryMapOverriddenForTesting)
    {
      v20 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = a4;
        v21 = "(%ld) Skipping library category map persistence; testing is running and so the data there is bupkis";
LABEL_18:
        _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v22 = [(NSString *)v18 length]== 0;
    v20 = SBLogProactiveAppLibrary();
    v23 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v23)
      {
        *buf = 134217984;
        v32 = a4;
        v21 = "(%ld) Skipping library category map persistence; no path specified";
        goto LABEL_18;
      }

LABEL_19:
      v24 = 0;
      goto LABEL_20;
    }

    if (v23)
    {
      *buf = 134218242;
      v32 = a4;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "(%ld) Attempting to persist library category map, updated for reason: %@", buf, 0x16u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke;
    v26[3] = &unk_1E808B200;
    v27 = v11;
    v28 = v19;
    v29 = v14;
    v30 = a4;
    dispatch_async(v13, v26);

    v20 = v27;
  }

  else
  {
    v20 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v32 = a4;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_1BEB18000, v20, OS_LOG_TYPE_DEFAULT, "(%ld) Skipping library category map persistence; reason '%@' didn't want it", buf, 0x16u);
    }
  }

  v24 = 1;
LABEL_20:

  return v24;
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke(uint64_t a1)
{
  v59[1] = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695DFF8];
    v3 = [*(a1 + 40) stringByDeletingLastPathComponent];
    v4 = [v2 fileURLWithPath:v3];

    v51 = 0;
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [v4 path];
    v7 = [v5 fileExistsAtPath:v6 isDirectory:&v51];

    v8 = [*(a1 + 48) hasCachedLibraryCategoryMapOnFileSystem];
    if (v7 && (v51 & 1) != 0 && (v8 & 1) != 0)
    {
      v9 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        v11 = *(a1 + 40);
        *buf = 134218242;
        v53 = v10;
        v54 = 2112;
        v55 = v11;
        _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map caches directory exists @ '%@'; skipping creation...", buf, 0x16u);
      }

LABEL_23:
      v33 = *(a1 + 32);
      v48 = 0;
      v34 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v33 requiringSecureCoding:1 error:&v48];
      v14 = v48;
      v35 = SBLogProactiveAppLibrary();
      v36 = v35;
      if (v14)
      {
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_2();
        }
      }

      else if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v37 = *(a1 + 56);
        *buf = 134217984;
        v53 = v37;
        _os_log_impl(&dword_1BEB18000, v36, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map update persisted; contacting observers about successful refresh.", buf, 0xCu);
      }

      v38 = *(a1 + 40);
      v47 = 0;
      [v34 writeToFile:v38 options:268435457 error:&v47];
      v39 = v47;
      v40 = SBLogProactiveAppLibrary();
      v41 = v40;
      if (v39)
      {
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_3();
        }
      }

      else if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v42 = *(a1 + 56);
        *buf = 134217984;
        v53 = v42;
        _os_log_impl(&dword_1BEB18000, v41, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map successfully written to file.", buf, 0xCu);
      }

      goto LABEL_34;
    }

    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = MEMORY[0x1E695DFF8];
    v18 = [objc_opt_class() cacheDirectory];
    v19 = [v17 fileURLWithPath:v18];
    [v16 removeItemAtURL:v19 error:0];

    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v58 = *MEMORY[0x1E696A3A0];
    v59[0] = *MEMORY[0x1E696A3A8];
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:&v58 count:1];
    v50 = 0;
    v22 = [v20 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:v21 error:&v50];
    v23 = v50;

    if (v22)
    {
      v24 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(a1 + 56);
        v26 = *(a1 + 40);
        *buf = 134218242;
        v53 = v25;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map caches directory was created at URL '%@'", buf, 0x16u);
      }

      v14 = 0;
    }

    else
    {
      v14 = v23;
      v24 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v44 = *(a1 + 56);
        v45 = *(a1 + 40);
        *buf = 134218498;
        v53 = v44;
        v54 = 2112;
        v55 = v45;
        v56 = 2112;
        v57 = v14;
        _os_log_error_impl(&dword_1BEB18000, v24, OS_LOG_TYPE_ERROR, "(%ld) Error creating directory path '%@'  with error: %@", buf, 0x20u);
      }
    }

    v27 = *MEMORY[0x1E695DB80];
    v49 = 0;
    v28 = [v4 setResourceValue:MEMORY[0x1E695E118] forKey:v27 error:&v49];
    v29 = v49;
    v30 = SBLogProactiveAppLibrary();
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 56);
        *buf = 134217984;
        v53 = v32;
        _os_log_impl(&dword_1BEB18000, v31, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map cache directory path tagged excluded from backup successfully.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_1();
    }

    if (!v14)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = *(a1 + 40);
    v46 = 0;
    [v12 removeItemAtPath:v13 error:&v46];
    v14 = v46;

    v15 = SBLogProactiveAppLibrary();
    v4 = v15;
    if (v14)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_4();
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v43 = *(a1 + 56);
      *buf = 134217984;
      v53 = v43;
      _os_log_impl(&dword_1BEB18000, v4, OS_LOG_TYPE_DEFAULT, "(%ld) Library category map update persisted; requested deletion of internal cache. Contacting observers about successful refresh.", buf, 0xCu);
    }
  }

LABEL_34:
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v32 = WeakRetained;
    v5 = [v3 userInfo];
    v6 = v5;
    if (!v5)
    {
      v5 = MEMORY[0x1E695E0F8];
    }

    v7 = [v5 mutableCopy];

    if (*(a1 + 40))
    {
      v8 = *(a1 + 40);
    }

    else
    {
      v8 = @"No reason?";
    }

    v33 = v7;
    [v7 setObject:v8 forKeyedSubscript:@"SBHLibraryCategoryMapProviderUpdateReason"];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 80)];
    [v7 setObject:v9 forKeyedSubscript:@"SBHLibraryCategoryMapProviderUpdateSessionId"];

    v10 = MEMORY[0x1E696ABC0];
    v11 = [v3 domain];
    v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v3 userInfo:{"code"), v7}];

    v13 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_1();
    }

    v14 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_2();
    }

    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v17 = *(a1 + 48);
    v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v18)
    {
      v19 = *v44;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v43 + 1) + 8 * i);
          [v21 accumulateFailure:v12 forSession:*(a1 + 80)];
          if ([v21 hasFailedSeveralTimes])
          {
            v22 = v16;
          }

          else
          {
            v22 = v15;
          }

          [v22 addObject:v21];
        }

        v18 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v18);
    }

    if ([v15 count])
    {
      v23 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_3();
      }

      [v32[8] addObjectsFromArray:v15];
      v24 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v15 copyItems:1];
      v25 = *(a1 + 56);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_152;
      block[3] = &unk_1E808C628;
      objc_copyWeak(&v42, (a1 + 72));
      v41 = v24;
      v26 = v24;
      dispatch_async(v25, block);

      objc_destroyWeak(&v42);
    }

    if ([v16 count])
    {
      v27 = SBLogProactiveAppLibrary();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_4();
      }

      v28 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v16 copyItems:1];
      v29 = *(a1 + 56);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_153;
      v37[3] = &unk_1E808C628;
      objc_copyWeak(&v39, (a1 + 72));
      v38 = v28;
      v30 = v28;
      dispatch_async(v29, v37);

      objc_destroyWeak(&v39);
    }

    v31 = *(a1 + 56);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_154;
    v34[3] = &unk_1E808C628;
    objc_copyWeak(&v36, (a1 + 72));
    v3 = v12;
    v35 = v3;
    dispatch_async(v31, v34);
    (*(*(a1 + 64) + 16))();

    objc_destroyWeak(&v36);
    WeakRetained = v32;
  }
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_152(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversWillReEnqueueFailedRequests:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_153(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversWillSunsetFailedRequests:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callbackQueue_notifyObserversCategoryMapRefreshFailedWithError:*(a1 + 32)];
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_2_163(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (([v7 options] & 0x20) != 0)
        {
          v8 = [MEMORY[0x1E696AD88] defaultCenter];
          v15[0] = @"sbh_categoryMapRefreshSessionIDKey";
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
          v15[1] = @"sbh_categoryMapRefreshErrorKey";
          v16[0] = v9;
          v16[1] = *(a1 + 40);
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
          [v8 postNotificationName:@"com.apple.springboardhome.categoryMapProviderRefreshCompleted" object:v7 userInfo:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }
}

- (void)_kickoffInitialHydration
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_cacheFilePath];
  v20 = 0;
  v4 = [v3 checkResourceIsReachableAndReturnError:&v20];
  v5 = v20;
  if (v4)
  {
    v19 = v5;
    v6 = [objc_opt_class() categoryMapFromURL:v3 error:&v19];
    v7 = v19;

    libraryCategoryMap = self->_libraryCategoryMap;
    self->_libraryCategoryMap = v6;

    v9 = self->_libraryCategoryMap;
    v10 = SBLogProactiveAppLibrary();
    v11 = v10;
    if (v9 && !v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = self->_libraryCategoryMap;
        *buf = 138412290;
        v22 = v12;
        v13 = "Initialized app library w/ persisted library category map: %@";
        v14 = v11;
        v15 = 12;
LABEL_18:
        _os_log_impl(&dword_1BEB18000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }

LABEL_19:
      v7 = 0;
      goto LABEL_20;
    }

    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [SBHLibraryCategoryMapProvider _kickoffInitialHydration];
      }

      goto LABEL_20;
    }

    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "Unable to open library catalog map; carrying on...";
LABEL_17:
    v14 = v11;
    v15 = 2;
    goto LABEL_18;
  }

  v16 = SBLogProactiveAppLibrary();
  v11 = v16;
  if (!v5)
  {
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "Initialized app library w/o persisted library category map.";
    goto LABEL_17;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [SBHLibraryCategoryMapProvider _kickoffInitialHydration];
  }

  v7 = v5;
LABEL_20:

  v17 = SBLogProactiveAppLibrary();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BEB18000, v17, OS_LOG_TYPE_DEFAULT, "Kicking off initial hydration...", buf, 2u);
  }

  v18 = [(SBHLibraryCategoryMapProvider *)self requestLibraryCategoryMapRefreshWithOptions:14 reason:@"initial hydration"];
}

- (void)_setupClearCacheNotification
{
  objc_initWeak(&location, self);
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke;
  v6[3] = &unk_1E808C6F0;
  objc_copyWeak(&v7, &location);
  v4 = [v3 addObserverForName:@"SBHLibraryCategoryMapProviderCachesWereClearedNotification" object:0 queue:0 usingBlock:v6];
  clearCacheNotificationHandle = self->_clearCacheNotificationHandle;
  self->_clearCacheNotificationHandle = v4;

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[4];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke_2;
    block[3] = &unk_1E8088C90;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __61__SBHLibraryCategoryMapProvider__setupClearCacheNotification__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _nextSessionIdentifier];

  return [v1 _workQueue_updateLibraryCategoryMap:0 withSessionId:v2 shouldPersist:0 reason:@"Caches Were Cleared Notification"];
}

- (void)_setupLocaleNotification
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [v5 addObserverForName:*MEMORY[0x1E695D8F0] object:0 queue:0 usingBlock:&__block_literal_global_39];
  localeNotificationHandle = self->_localeNotificationHandle;
  self->_localeNotificationHandle = v3;
}

void __57__SBHLibraryCategoryMapProvider__setupLocaleNotification__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LOCALE WAS CHANGED: %@", a2];
  [SBHLibraryCategoryMapProvider clearCachesForReason:v2];
}

- (void)_workQueue_queueUpNextRequests:(id)a3 runNow:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  BSDispatchQueueAssert();
  if ([v6 count])
  {
    v7 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      pendingRefreshRequests = self->_pendingRefreshRequests;
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = pendingRefreshRequests;
      _os_log_impl(&dword_1BEB18000, v7, OS_LOG_TYPE_DEFAULT, "Accumulating pending requests: %@ / Current Request Queue: %@", &v10, 0x16u);
    }

    [(NSMutableArray *)self->_pendingRefreshRequests addObjectsFromArray:v6];
  }

  if ([(NSArray *)self->_inflightRefreshRequests count])
  {
    v9 = SBLogProactiveAppLibrary();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1BEB18000, v9, OS_LOG_TYPE_DEFAULT, "Requests are inflight; deferring pending requests until after current requests are finished.", &v10, 2u);
    }
  }

  else if (v4)
  {
    [(SBHLibraryCategoryMapProvider *)self _workQueue_cancelAnyScheduledRefresh];
    [(SBHLibraryCategoryMapProvider *)self _workQueue_performNextRequest];
  }

  else
  {
    [(SBHLibraryCategoryMapProvider *)self _workQueue_scheduleRefreshIfNotScheduled];
  }
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Failed to tag library category map cache directory as excluded from backup:%@");
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Error persisting library category map: %@");
}

void __104__SBHLibraryCategoryMapProvider__workQueue_updateLibraryCategoryMap_withSessionId_shouldPersist_reason___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_5_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Error deleting category map: %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_1()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Finished Library Category Map refresh WITH ERROR: %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_3()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Several failed requests are still valid; re-enqueing %@");
}

void __62__SBHLibraryCategoryMapProvider__workQueue_performNextRequest__block_invoke_141_cold_4()
{
  OUTLINED_FUNCTION_4_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_5(&dword_1BEB18000, v0, v1, "(%ld) Several failed requests are now invalid; letting these sunset: %@");
}

@end