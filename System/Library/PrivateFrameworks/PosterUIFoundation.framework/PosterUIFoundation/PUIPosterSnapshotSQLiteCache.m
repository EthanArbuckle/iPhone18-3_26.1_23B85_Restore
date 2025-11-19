@interface PUIPosterSnapshotSQLiteCache
- (BOOL)checkCacheIsReachableWithError:(id *)a3;
- (BOOL)hasSnapshotsWithError:(uint64_t)a1;
- (PUIPosterSnapshotSQLiteCache)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (_PUIPosterSnapshotSQLiteCacheInstance)_accessCacheImplementationSyncWithReason:(void *)a3 outError:;
- (id)_accessCacheImplementationWithReason:(uint64_t)a1;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4 outError:(id *)a5;
- (id)cleanup;
- (id)cleanupWithError:(id *)a3;
- (id)discardSnapshotBundlesMatchingPredicate:(id)a3;
- (id)discardSnapshotBundlesMatchingPredicate:(id)a3 outError:(id *)a4;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3;
- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3 outError:(id *)a4;
- (id)latestSnapshotBundleMatchingPredicate:(id)a3;
- (id)latestSnapshotBundleMatchingPredicate:(id)a3 outError:(id *)a4;
- (id)reachableCacheFuture;
- (id)snapshotBundlesMatchingPredicate:(void *)a3 orderedBy:(void *)a4 limit:;
- (id)snapshotBundlesMatchingPredicate:(void *)a3 orderedBy:(void *)a4 limit:(void *)a5 outError:;
- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4;
- (uint64_t)_invalidateReason:(uint64_t)result;
- (void)_cacheImplementationLock_teardownSync:(uint64_t)a1;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotSQLiteCache

- (PUIPosterSnapshotSQLiteCache)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  if (!v11)
  {
    [PUIPosterSnapshotSQLiteCache initWithURL:a2 fileManager:? options:? error:?];
  }

  v13 = v12;
  v38.receiver = self;
  v38.super_class = PUIPosterSnapshotSQLiteCache;
  v14 = [(PUIPosterSnapshotSQLiteCache *)&v38 init];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x1E698E618]);
    invalidationFlag = v14->_invalidationFlag;
    v14->_invalidationFlag = v15;

    objc_storeStrong(&v14->_cacheURL, a3);
    v14->_options = a5;
    v17 = objc_opt_new();
    cacheImplementationLock_inUseReasons = v14->_cacheImplementationLock_inUseReasons;
    v14->_cacheImplementationLock_inUseReasons = v17;

    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AAE8] mainBundle];
    v21 = [v20 bundleIdentifier];
    v22 = [v21 lastPathComponent];
    v23 = [v11 lastPathComponent];
    v24 = [v19 stringWithFormat:@"%@:%@:%p", v22, v23, v14];
    cacheLogIdentifier = v14->_cacheLogIdentifier;
    v14->_cacheLogIdentifier = v24;

    v26 = [objc_alloc(MEMORY[0x1E69C5140]) initWithLockIdentifier:v14->_cacheLogIdentifier];
    cacheImplementationLock = v14->_cacheImplementationLock;
    v14->_cacheImplementationLock = v26;

    if (v13)
    {
      v28 = v13;
    }

    else
    {
      v28 = objc_opt_new();
    }

    fileManager = v14->_fileManager;
    v14->_fileManager = v28;

    v30 = [(NSString *)v14->_cacheLogIdentifier stringByAppendingFormat:@"Processing-%@", @"PostersSQLiteCacheQueue"];
    v31 = [MEMORY[0x1E698E698] serial];
    v32 = [v31 serviceClass:25];
    v33 = BSDispatchQueueCreate();
    cacheQueue = v14->_cacheQueue;
    v14->_cacheQueue = v33;

    v35 = [MEMORY[0x1E69C5268] schedulerWithDispatchQueue:v14->_cacheQueue];
    cacheQueueScheduler = v14->_cacheQueueScheduler;
    v14->_cacheQueueScheduler = v35;
  }

  return v14;
}

- (void)dealloc
{
  [(PUIPosterSnapshotSQLiteCache *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotSQLiteCache;
  [(PUIPosterSnapshotSQLiteCache *)&v3 dealloc];
}

- (void)invalidate
{
  [(PFOSUnfairLock *)self->_cacheImplementationLock lock];
  if ([(BSAtomicSignal *)self->_invalidationFlag signal])
  {
    [(PUIPosterSnapshotSQLiteCache *)self _cacheImplementationLock_teardownSync:?];
  }

  cacheImplementationLock = self->_cacheImplementationLock;

  [(PFOSUnfairLock *)cacheImplementationLock unlock];
}

- (id)reachableCacheFuture
{
  objc_initWeak(&location, self);
  v4 = NSStringFromSelector(a2);
  v5 = [(PUIPosterSnapshotSQLiteCache *)self _accessCacheImplementationWithReason:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__PUIPosterSnapshotSQLiteCache_reachableCacheFuture__block_invoke;
  v8[3] = &unk_1E7855160;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

- (id)_accessCacheImplementationWithReason:(uint64_t)a1
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 16);
    objc_initWeak(&location, a1);
    v5 = MEMORY[0x1E69C5258];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke;
    v11[3] = &unk_1E78552E8;
    objc_copyWeak(&v14, &location);
    v6 = v4;
    v12 = v6;
    v7 = v3;
    v13 = v7;
    a1 = [v5 futureWithBlock:v11 scheduler:*(a1 + 40)];
    v16 = @"cacheAccessReason";
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = @"(null)";
    }

    v17[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [a1 setUserInfo:v9];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return a1;
}

id __52__PUIPosterSnapshotSQLiteCache_reachableCacheFuture__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v3 impl];
    v12 = 0;
    v6 = [v5 checkCacheIsReachableWithError:&v12];
    v7 = v12;

    [v3 invalidate];
    if (v6)
    {
      [MEMORY[0x1E69C5258] futureWithResult:WeakRetained];
    }

    else
    {
      [MEMORY[0x1E69C5258] futureWithError:v7];
    }
    v10 = ;
  }

  else
  {
    [v3 invalidate];
    v8 = MEMORY[0x1E69C5258];
    v9 = [MEMORY[0x1E696ABC0] pui_errorWithCode:10];
    v10 = [v8 futureWithError:v9];
  }

  return v10;
}

- (BOOL)checkCacheIsReachableWithError:(id *)a3
{
  v4 = [(PUIPosterSnapshotSQLiteCache *)self reachableCacheFuture];
  v5 = [v4 result:a3];
  LOBYTE(a3) = v5 != 0;

  return a3;
}

id __70__PUIPosterSnapshotSQLiteCache_latestSnapshotBundleMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 count];
  v4 = MEMORY[0x1E69C5258];
  if (v3)
  {
    v5 = [v2 firstObject];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A588];
    v12[0] = @"No snapshot bundles available";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 pui_errorWithCode:3 userInfo:v8];
    v6 = [v4 futureWithError:v9];
  }

  return v6;
}

- (id)discardSnapshotBundlesMatchingPredicate:(id)a3
{
  v4 = [a3 SQLitePredicate];
  v5 = [(PUIPosterSnapshotSQLiteCache *)self discardSnapshotBundlesMatchingSQLPredicate:v4];

  return v5;
}

- (id)cleanup
{
  v3 = objc_opt_new();
  v4 = [v3 SQLitePredicate];
  v5 = [v4 notPredicate];

  v6 = [(PUIPosterSnapshotSQLiteCache *)self discardSnapshotBundlesMatchingSQLPredicate:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PUIPosterSnapshotSQLiteCache_cleanup__block_invoke;
  v9[3] = &unk_1E78551A8;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = NSStringFromSelector(a2);
    v7 = [(PUIPosterSnapshotSQLiteCache *)self _accessCacheImplementationWithReason:v6];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke;
    v14[3] = &unk_1E78551F8;
    v16 = a2;
    v14[4] = self;
    v15 = v5;
    v8 = [v7 flatMap:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_3;
    v13[3] = &unk_1E78551A8;
    v13[4] = self;
    v9 = [v8 flatMap:v13];
  }

  else
  {
    v10 = MEMORY[0x1E69C5258];
    v11 = [MEMORY[0x1E695DFD8] set];
    v9 = [v10 futureWithResult:v11];
  }

  return v9;
}

id __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 impl];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_cold_1(a1);
  }

  v9 = [v8 discardSnapshotBundlesMatchingSQLPredicate:*(a1 + 40)];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_46;
  v14[3] = &unk_1E78551D0;
  v15 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_2;
  v12[3] = &unk_1E7854AC0;
  v13 = v15;
  v10 = v15;
  [v9 addSuccessBlock:v14 andFailureBlock:v12];

  return v9;
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [PUIPosterSnapshotSQLiteCache cacheSnapshotBundle:a2 options:?];
  }

  v9 = v8;
  v10 = NSStringFromSelector(a2);
  v11 = [(PUIPosterSnapshotSQLiteCache *)self _accessCacheImplementationWithReason:v10];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke;
  v18[3] = &unk_1E7855220;
  v19 = v7;
  v20 = self;
  v21 = v9;
  v22 = a2;
  v12 = v9;
  v13 = v7;
  v14 = [v11 flatMap:v18];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke_3;
  v17[3] = &unk_1E78551A8;
  v17[4] = self;
  v15 = [v14 flatMap:v17];

  return v15;
}

id __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) bundleURL];
  v5 = [v4 checkResourceIsReachableAndReturnError:0];

  if (v5)
  {
    v6 = [v3 impl];
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = v9;

    if (!v12)
    {
      __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke_cold_1(a1);
    }

    v14 = [v12 cacheSnapshotBundle:*(a1 + 32) options:*(a1 + 48)];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke_55;
    v18[3] = &unk_1E78551D0;
    v19 = v3;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke_2;
    v16[3] = &unk_1E7854AC0;
    v17 = v19;
    [v14 addSuccessBlock:v18 andFailureBlock:v16];

    v13 = v19;
  }

  else
  {
    [v3 invalidate];
    v10 = MEMORY[0x1E69C5258];
    v11 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A588];
    v21[0] = @"Snapshot bundle is not valid.";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v13 = [v11 pui_errorWithCode:3 userInfo:v12];
    v14 = [v10 futureWithError:v13];
  }

  return v14;
}

id __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 impl];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (!v8)
  {
    __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_cold_1(a1);
  }

  v9 = [*(a1 + 40) SQLitePredicate];
  v10 = [v8 snapshotBundlesMatchingSQLPredicate:v9 orderedBy:*(a1 + 48) limit:*(a1 + 56)];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_58;
  v15[3] = &unk_1E7855248;
  v15[4] = *(a1 + 32);
  v16 = v3;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_59;
  v13[3] = &unk_1E7855270;
  v13[4] = *(a1 + 32);
  v14 = v16;
  v11 = v16;
  [v10 addSuccessBlock:v15 andFailureBlock:v13];

  return v10;
}

void __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PUILogSnapshotCache();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_58_cold_1(a1, v3, v4);
  }

  [*(a1 + 40) invalidate];
}

void __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_59(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = PUILogSnapshotCache();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_59_cold_1(a1, v3);
  }

  [*(a1 + 40) invalidate];
}

_PUIPosterSnapshotSQLiteCacheInstance *__69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke(id *a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    *a2 = v8 = 0;
    goto LABEL_22;
  }

  v6 = WeakRetained[4];
  v7 = v5[7];
  [v5[7] lock];
  if (![a1[4] hasBeenSignalled])
  {
    v9 = v5[9];
    if (v9)
    {
      v10 = [v9 databaseConnectionAcquisitionError];

      v11 = v5[9];
      if (v10)
      {
        *a2 = [v11 databaseConnectionAcquisitionError];
LABEL_8:
        [v7 unlock];
        v8 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      v12 = [(_PUIPosterSnapshotSQLiteCacheImplementation *)[_PUIPosterSnapshotSQLiteCacheAsyncImplementation alloc] initWithURL:v5[11] fileManager:v5[1] options:v5[12] cacheQueue:v5[4] scheduler:v5[5] error:a2];
      v13 = v5[9];
      v5[9] = v12;

      v11 = v5[9];
      if (v11 && (~*(v5 + 24) & 6) == 0)
      {
        if (![v11 checkCacheIsReachableWithError:a2])
        {
          goto LABEL_8;
        }

        v11 = v5[9];
      }
    }

    v35 = 0;
    v14 = [v11 prepareCacheWithError:&v35];
    v15 = v35;
    *(v5 + 24) = v14;
    v16 = v5[9];
    if (v15)
    {
      [v16 invalidate];
      v17 = v5[9];
      v5[9] = 0;

      [v5[8] invalidate];
      v18 = v5[8];
      v5[8] = 0;

      v19 = v15;
      *a2 = v15;
      v20 = v7;
    }

    else
    {
      if (v16)
      {
        if (!v5[8])
        {
          v21 = [MEMORY[0x1E69C7548] pf_finishTaskInterruptableWithExplanation:@"finish sqlite cache operation" invalidationHandler:0];
          v22 = v5[8];
          v5[8] = v21;

          [v5[8] acquireWithError:0];
          v16 = v5[9];
        }

        v23 = v16;
        [v5[10] addObject:a1[5]];
        v24 = objc_alloc(MEMORY[0x1E698E778]);
        v25 = a1[5];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke_2;
        v31[3] = &unk_1E78552C0;
        v32 = v6;
        objc_copyWeak(&v34, a1 + 6);
        v33 = a1[5];
        v26 = [v24 initWithIdentifier:@"PUIPOSTERSNAPSHOTSQLITECACHE_IN_USE_ASSERTION" forReason:v25 invalidationBlock:v31];
        v8 = [[_PUIPosterSnapshotSQLiteCacheInstance alloc] initWithCacheImplementation:v23 assertion:v26];
        [v5[7] unlock];

        objc_destroyWeak(&v34);
        goto LABEL_20;
      }

      if (!*a2)
      {
        v28 = PFFunctionNameForAddress();
        v30 = 0;
        *a2 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      [v5[8] invalidate];
      v29 = v5[8];
      v5[8] = 0;

      v20 = v5[7];
    }

    [v20 unlock];
    v8 = 0;
LABEL_20:

    goto LABEL_21;
  }

  [v7 unlock];
  [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  *a2 = v8 = 0;
LABEL_21:

LABEL_22:

  return v8;
}

void __69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke_3;
  v3[3] = &unk_1E7854C68;
  objc_copyWeak(&v5, (a1 + 48));
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v5);
}

void __69__PUIPosterSnapshotSQLiteCache__accessCacheImplementationWithReason___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(PUIPosterSnapshotSQLiteCache *)WeakRetained _invalidateReason:?];
}

uint64_t __70__PUIPosterSnapshotSQLiteCache__cacheImplementationLock_teardownSync___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4
{
  v5 = a4;
  if ([(BSAtomicSignal *)self->_invalidationFlag hasBeenSignalled])
  {
    v6 = MEMORY[0x1E69C5258];
    v7 = PFFunctionNameForAddress();
    v8 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v9 = [v6 futureWithError:{v8, 0}];
  }

  else
  {
    v17 = 0;
    v10 = [PUIPosterSnapshotDestination destinationForCache:self clientAuditToken:v5 error:&v17];
    v11 = v17;
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10 == 0;
    }

    if (v12)
    {
      v13 = v11;
      if (!v11)
      {
        v14 = PFFunctionNameForAddress();
        v16 = 0;
        v13 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      }

      v9 = [MEMORY[0x1E69C5258] futureWithError:{v13, v16}];
    }

    else
    {
      v9 = [MEMORY[0x1E69C5258] futureWithResult:v10];
    }
  }

  return v9;
}

- (id)latestSnapshotBundleMatchingPredicate:(id)a3 outError:(id *)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
  v8 = objc_alloc(MEMORY[0x1E69C51C0]);
  v9 = [v7 columnForName:@"_dateCreated"];
  v10 = [v8 initWithColumn:v9 comparison:1];
  v11 = [MEMORY[0x1E69C51B8] limit:1];
  v12 = [(PUIPosterSnapshotSQLiteCache *)self snapshotBundlesMatchingPredicate:v6 orderedBy:v10 limit:v11 outError:a4];

  if ([v12 count])
  {
    a4 = [v12 firstObject];
  }

  else if (a4)
  {
    v13 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v17[0] = @"No snapshot bundles available";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a4 = [v13 pui_errorWithCode:3 userInfo:v14];

    a4 = 0;
  }

  return a4;
}

- (id)snapshotBundlesMatchingPredicate:(void *)a3 orderedBy:(void *)a4 limit:(void *)a5 outError:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (a1)
  {
    v12 = NSStringFromSelector(sel_snapshotBundlesMatchingPredicate_orderedBy_limit_outError_);
    v13 = [(PUIPosterSnapshotSQLiteCache *)a1 _accessCacheImplementationSyncWithReason:v12 outError:a5];

    if (v13)
    {
      v14 = [v13 impl];
      v15 = objc_opt_class();
      v16 = v14;
      if (v15)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v19 = v17;

      if (!v19)
      {
        [PUIPosterSnapshotSQLiteCache snapshotBundlesMatchingPredicate:? orderedBy:? limit:? outError:?];
      }

      v20 = [v9 SQLitePredicate];
      v18 = [v19 snapshotBundlesMatchingSQLPredicate:v20 orderedBy:v10 limit:v11 outError:a5];

      [v13 invalidate];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)discardSnapshotBundlesMatchingPredicate:(id)a3 outError:(id *)a4
{
  v6 = [a3 SQLitePredicate];
  v7 = [(PUIPosterSnapshotSQLiteCache *)self discardSnapshotBundlesMatchingSQLPredicate:v6 outError:a4];

  return v7;
}

- (id)cleanupWithError:(id *)a3
{
  v5 = objc_opt_new();
  v6 = [v5 SQLitePredicate];
  v7 = [v6 notPredicate];

  v8 = [(PUIPosterSnapshotSQLiteCache *)self discardSnapshotBundlesMatchingSQLPredicate:v7 outError:a3];

  return v8;
}

uint64_t __82__PUIPosterSnapshotSQLiteCache__accessCacheImplementationSyncWithReason_outError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 invalidate];
}

- (void)_cacheImplementationLock_teardownSync:(uint64_t)a1
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 56) assertOwner];
    v4 = PUILogSnapshotCache();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v15 = a1;
      v16 = 1024;
      v17 = a2;
      _os_log_debug_impl(&dword_1A8C85000, v4, OS_LOG_TYPE_DEBUG, "<%p> invalidate teardown sync....: %d", buf, 0x12u);
    }

    v5 = *(a1 + 72);
    v6 = *(a1 + 64);
    if (v5 | v6)
    {
      OUTLINED_FUNCTION_6();
      v11[1] = 3221225472;
      v11[2] = __70__PUIPosterSnapshotSQLiteCache__cacheImplementationLock_teardownSync___block_invoke;
      v11[3] = &unk_1E78548A0;
      v12 = v5;
      v13 = v6;
      v7 = MEMORY[0x1AC5769F0](v11);
      v8 = *(a1 + 32);
      if (a2)
      {
        dispatch_assert_queue_V2(v8);
        v7[2](v7);
      }

      else
      {
        dispatch_async(v8, v7);
      }
    }

    v9 = *(a1 + 72);
    *(a1 + 72) = 0;

    v10 = *(a1 + 64);
    *(a1 + 64) = 0;
  }
}

- (BOOL)hasSnapshotsWithError:(uint64_t)a1
{
  v2 = a1;
  if (a1)
  {
    v4 = *(a1 + 16);
    if ([v4 hasBeenSignalled])
    {
      if (a2)
      {
        [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
        *a2 = v2 = 0;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E69C51B8] limit:1];
      v7 = [(PUIPosterSnapshotSQLiteCache *)v2 snapshotBundlesMatchingPredicate:0 orderedBy:v6 limit:?];

      v8 = [v7 result:a2];
      v2 = [v8 count] != 0;
    }
  }

  return v2;
}

- (id)snapshotBundlesMatchingPredicate:(void *)a3 orderedBy:(void *)a4 limit:
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = NSStringFromSelector(sel_snapshotBundlesMatchingPredicate_orderedBy_limit_);
    v11 = [(PUIPosterSnapshotSQLiteCache *)a1 _accessCacheImplementationWithReason:v10];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke;
    v16[3] = &unk_1E7855298;
    v20 = sel_snapshotBundlesMatchingPredicate_orderedBy_limit_;
    v16[4] = a1;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v12 = [v11 flatMap:v16];
    OUTLINED_FUNCTION_6();
    v15[1] = 3221225472;
    v15[2] = __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_60;
    v15[3] = &unk_1E78551A8;
    v15[4] = a1;
    a1 = [v13 flatMap:v15];
  }

  return a1;
}

- (id)latestSnapshotBundleMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = +[_PUIPosterSnapshotCacheRecord pf_sqliteCodingDescriptor];
  v6 = objc_alloc(MEMORY[0x1E69C51C0]);
  v7 = [v5 columnForName:@"_dateCreated"];
  v8 = [v6 initWithColumn:v7 comparison:1];
  v9 = [MEMORY[0x1E69C51B8] limit:1];
  v10 = [(PUIPosterSnapshotSQLiteCache *)self snapshotBundlesMatchingPredicate:v4 orderedBy:v8 limit:v9];

  v11 = [v10 flatMap:&__block_literal_global_19];

  return v11;
}

- (uint64_t)_invalidateReason:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 56);
    v4 = a2;
    [v3 lock];
    [*(v2 + 80) removeObject:v4];

    if (![*(v2 + 80) count])
    {
      [(PUIPosterSnapshotSQLiteCache *)v2 _cacheImplementationLock_teardownSync:?];
    }

    v5 = *(v2 + 56);

    return [v5 unlock];
  }

  return result;
}

- (_PUIPosterSnapshotSQLiteCacheInstance)_accessCacheImplementationSyncWithReason:(void *)a3 outError:
{
  v5 = a2;
  if (a1)
  {
    v6 = [[_PUIPosterSnapshotSQLiteCacheSyncImplementation alloc] initWithURL:a1[11] fileManager:a1[1] options:a1[12] error:a3];
    v7 = v6;
    if (!v6 || (~*(a1 + 24) & 6) != 0 || [(_PUIPosterSnapshotSQLiteCacheImplementation *)v6 checkCacheIsReachableWithError:a3])
    {
      v23 = 0;
      [(_PUIPosterSnapshotSQLiteCacheImplementation *)v7 prepareCacheWithError:&v23];
      v8 = v23;
      if (v23)
      {
        if (a3)
        {
          v9 = v23;
          *a3 = v8;
        }

        v10 = v8;
        [(_PUIPosterSnapshotSQLiteCacheImplementation *)v7 invalidate];
        v11 = 0;
      }

      else
      {
        v12 = MEMORY[0x1E69C7548];
        v13 = 0;
        v14 = [v12 pf_finishTaskInterruptableWithExplanation:@"finish sqlite cache operation synchronously" invalidationHandler:0];
        [v14 acquireWithError:a3];
        v15 = objc_alloc(MEMORY[0x1E698E778]);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __82__PUIPosterSnapshotSQLiteCache__accessCacheImplementationSyncWithReason_outError___block_invoke;
        v20[3] = &unk_1E7855310;
        v16 = v7;
        v21 = v16;
        v22 = v14;
        v17 = v14;
        v18 = [v15 initWithIdentifier:@"PUIPOSTERSNAPSHOTSQLITECACHE_IN_USE_ASSERTION" forReason:v5 invalidationBlock:v20];
        v11 = [[_PUIPosterSnapshotSQLiteCacheInstance alloc] initWithCacheImplementation:v16 assertion:v18];
      }
    }

    else
    {
      [(_PUIPosterSnapshotSQLiteCacheImplementation *)v7 invalidate];
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)discardSnapshotBundlesMatchingSQLPredicate:(id)a3 outError:(id *)a4
{
  v7 = a3;
  v8 = NSStringFromSelector(a2);
  v9 = [(PUIPosterSnapshotSQLiteCache *)self _accessCacheImplementationSyncWithReason:v8 outError:a4];

  if (v9)
  {
    v10 = [v9 impl];
    v11 = objc_opt_class();
    v12 = v10;
    if (v11)
    {
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;

    if (!v15)
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = NSStringFromSelector(a2);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v21, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v22, v23, v24, v25, @"__obj", v26, v27);
      }

      [v17 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8D132D4);
    }

    v14 = [v15 discardSnapshotBundlesMatchingSQLPredicate:v7 outError:a4];
    [v9 invalidate];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4 outError:(id *)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = NSStringFromSelector(a2);
  v12 = [(PUIPosterSnapshotSQLiteCache *)self _accessCacheImplementationSyncWithReason:v11 outError:a5];

  if (!v12)
  {
    v20 = 0;
    goto LABEL_17;
  }

  v13 = [v9 bundleURL];
  v37 = 0;
  v14 = [v13 checkResourceIsReachableAndReturnError:&v37];
  v15 = v37;

  if (v14)
  {
    v16 = [v12 impl];
    v17 = objc_opt_class();
    v18 = v16;
    if (v17)
    {
      if (objc_opt_isKindOfClass())
      {
        v19 = v18;
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v22 = v19;

    if (!v22)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v28 = NSStringFromSelector(a2);
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        OUTLINED_FUNCTION_2_1();
        v39 = self;
        v40 = v31;
        v41 = @"PUIPosterSnapshotSQLiteCache.m";
        v42 = 1024;
        v43 = 563;
        v44 = v31;
        v45 = v27;
        OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v32, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v33, v34, v35, v36, @"__obj", v37, v38);
      }

      [v27 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1A8D135D8);
    }

    v20 = [v22 cacheSnapshotBundle:v9 options:v10 outError:a5];
    [v12 invalidate];

    goto LABEL_16;
  }

  [v12 invalidate];
  if (!a5)
  {
    goto LABEL_15;
  }

  if (!v15)
  {
    v23 = MEMORY[0x1E696ABC0];
    v46 = *MEMORY[0x1E696A588];
    v47[0] = @"Snapshot bundle is not valid.";
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v25 = [v23 pui_errorWithCode:3 userInfo:v24];
    *a5 = v25;

LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v21 = v15;
  v20 = 0;
  *a5 = v15;
LABEL_16:

LABEL_17:

  return v20;
}

- (void)initWithURL:(char *)a1 fileManager:options:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"cacheURL", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __75__PUIPosterSnapshotSQLiteCache_discardSnapshotBundlesMatchingSQLPredicate___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 48));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"__obj", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)cacheSnapshotBundle:(char *)a1 options:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"incomingSnapshotBundle", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __60__PUIPosterSnapshotSQLiteCache_cacheSnapshotBundle_options___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 56));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"__obj", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 64));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_1_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"__obj", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_58_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 134218242;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1A8C85000, log, OS_LOG_TYPE_DEBUG, "<%p> found matching result: %@", &v4, 0x16u);
}

void __81__PUIPosterSnapshotSQLiteCache_snapshotBundlesMatchingPredicate_orderedBy_limit___block_invoke_59_cold_1(uint64_t a1, void *a2)
{
  v2 = [a2 localizedDescription];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9(&dword_1A8C85000, v3, v4, "<%p> no result found: %@", v5, v6, v7, v8, 2u);
}

- (void)snapshotBundlesMatchingPredicate:(char *)a1 orderedBy:limit:outError:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"__obj", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end