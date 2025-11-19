@interface PBFPosterSnapshotCoordinator
- (BOOL)ingestSnapshotBundle:(id)a3 error:(id *)a4;
- (BOOL)snapshotExistsForContext:(id)a3;
- (BOOL)snapshotFulfilledForRequest:(id)a3;
- (PBFPosterSnapshotCoordinator)initWithPath:(id)a3;
- (id)_predicateForSnapshotContext:(id)a3;
- (id)cacheFuture;
- (id)checkSnapshotBundleExistsForContext:(id)a3;
- (id)fetchFulfilledSnapshotDefinitionsForRequest:(id)a3;
- (id)snapshotBundleForContext:(id)a3;
- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4;
- (id)snapshotReservationForContext:(id)a3;
- (void)cacheFuture;
- (void)dealloc;
- (void)ensureFileSystemIntegrity;
- (void)ingestSnapshotsFromCoordinator:(id)a3;
- (void)invalidate;
- (void)removeAllSnapshots;
@end

@implementation PBFPosterSnapshotCoordinator

- (PBFPosterSnapshotCoordinator)initWithPath:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PBFPosterSnapshotCoordinator;
  v6 = [(PBFPosterSnapshotCoordinator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_opt_new();
    fileManager = v7->_fileManager;
    v7->_fileManager = v8;

    v10 = [objc_alloc(MEMORY[0x277D3EB60]) initWithCapacity:5];
    snapshotBundleLRUCache = v7->_snapshotBundleLRUCache;
    v7->_snapshotBundleLRUCache = v10;

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v7->_snapshotBundleLRUCache selector:sel_removeAllObjects name:*MEMORY[0x277D76670] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(PBFPosterSnapshotCoordinator *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterSnapshotCoordinator;
  [(PBFPosterSnapshotCoordinator *)&v3 dealloc];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  [(PUIPosterSnapshotSQLiteCache *)self->_lock_cache invalidate];
  lock_cache = self->_lock_cache;
  self->_lock_cache = 0;

  lock_cacheFuture = self->_lock_cacheFuture;
  self->_lock_cacheFuture = 0;

  self->_lock_cachedHasCleanedUp = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)cacheFuture
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = [(PFServerPosterPath *)self->_path identity];
  v5 = NSStringFromSelector(a2);
  os_unfair_lock_lock(&self->_lock);
  lock_cacheFuture = self->_lock_cacheFuture;
  if (lock_cacheFuture)
  {
    v7 = lock_cacheFuture;
    if (([(PFTFuture *)self->_lock_cacheFuture isFinished]& 1) != 0)
    {
      v8 = self->_lock_cacheFuture;
      v50 = 0;
      v9 = [(PFTFuture *)v8 resultWithTimeout:&v50 error:0.5];
      v10 = v50;
      v11 = PBFLogSnapshotter();
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v52 = v4;
          v53 = 2114;
          v54 = v5;
          v55 = 2114;
          v56 = v10;
          _os_log_error_impl(&dword_21B526000, v12, OS_LOG_TYPE_ERROR, "<SnapshotCoordinator-%{public}@-%{public}@> cache future failed with error '%{public}@' - clearing state and trying again", buf, 0x20u);
        }

        v13 = self->_lock_cacheFuture;
        self->_lock_cacheFuture = 0;

        self->_lock_cachedHasCleanedUp = 0;
        [(PUIPosterSnapshotSQLiteCache *)self->_lock_cache invalidate];
        lock_cache = self->_lock_cache;
        self->_lock_cache = 0;

        goto LABEL_7;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [PBFPosterSnapshotCoordinator cacheFuture];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_24;
  }

LABEL_7:
  v15 = PBFLogSnapshotter();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v52 = v4;
    v53 = 2114;
    v54 = v5;
    _os_log_impl(&dword_21B526000, v15, OS_LOG_TYPE_INFO, "<SnapshotCoordinator-%{public}@-%{public}@> Cache instance does not exist, creating a new one.", buf, 0x16u);
  }

  path = self->_path;
  v49 = 0;
  v17 = [(PFServerPosterPath *)path ensureScratchURLIsReachableAndReturnError:&v49];
  v18 = v49;
  if (v17)
  {
    v19 = [MEMORY[0x277D46DB8] pf_finishTaskInterruptableWithExplanation:@"open sqlite database" invalidationHandler:0];
    [v19 acquireWithInvalidationHandler:0];
    v20 = [(PFServerPosterPath *)self->_path snapshotCacheURL];
    v21 = self->_fileManager;
    v48 = 0;
    v22 = [objc_alloc(MEMORY[0x277D3EFB8]) initWithURL:v20 fileManager:v21 options:0 error:&v48];
    v23 = v48;
    if (v23)
    {
      v24 = self->_lock_cacheFuture;
      self->_lock_cacheFuture = 0;

      [(PUIPosterSnapshotSQLiteCache *)self->_lock_cache invalidate];
      v25 = self->_lock_cache;
      self->_lock_cache = 0;

      [v19 invalidate];
      os_unfair_lock_unlock(&self->_lock);
      v26 = PBFLogSnapshotter();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v52 = v4;
        v53 = 2114;
        v54 = v5;
        v55 = 2114;
        v56 = v23;
        _os_log_error_impl(&dword_21B526000, v26, OS_LOG_TYPE_ERROR, "<SnapshotCoordinator-%{public}@-%{public}@> Failed to open SQLite cache: %{public}@", buf, 0x20u);
      }

      v7 = [MEMORY[0x277D3EC50] futureWithError:v23];
      v27 = 0;
    }

    else
    {
      objc_storeStrong(&self->_lock_cache, v22);
      v40 = !self->_lock_cachedHasCleanedUp;
      self->_lock_cachedHasCleanedUp = 1;
      v29 = [v22 reachableCacheFuture];
      v30 = self->_lock_cacheFuture;
      self->_lock_cacheFuture = v29;
      v41 = v29;

      v42 = v4;
      v31 = self->_lock_cacheFuture;
      os_unfair_lock_unlock(&self->_lock);
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __43__PBFPosterSnapshotCoordinator_cacheFuture__block_invoke;
      v43[3] = &unk_2782C8738;
      v44 = v42;
      v45 = v5;
      v27 = v19;
      v46 = v27;
      v47 = v40;
      v32 = [MEMORY[0x277D3EC60] offMainThreadScheduler];
      [(PFTFuture *)v31 addCompletionBlock:v43 scheduler:v32];

      v33 = v18;
      v34 = v22;
      v35 = v21;
      v36 = v20;
      v37 = v46;
      v38 = v31;
      v4 = v42;
      v7 = v38;

      v20 = v36;
      v21 = v35;
      v22 = v34;
      v18 = v33;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v28 = PBFLogSnapshotter();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v52 = v4;
      v53 = 2114;
      v54 = v5;
      v55 = 2114;
      v56 = v18;
      _os_log_error_impl(&dword_21B526000, v28, OS_LOG_TYPE_ERROR, "<SnapshotCoordinator-%{public}@-%{public}@> Failed to ensure scratch URL is reachable: %{public}@", buf, 0x20u);
    }

    v7 = [MEMORY[0x277D3EC50] futureWithError:v18];
  }

LABEL_24:

  return v7;
}

void __43__PBFPosterSnapshotCoordinator_cacheFuture__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = PBFLogSnapshotter();
  v8 = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __43__PBFPosterSnapshotCoordinator_cacheFuture__block_invoke_cold_1();
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138543618;
    v15 = v9;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_21B526000, v8, OS_LOG_TYPE_DEFAULT, "<SnapshotCoordinator-%{public}@-%{public}@> Successfully setup snapshot cache", buf, 0x16u);
  }

  if (*(a1 + 56) != 1)
  {
LABEL_10:
    [*(a1 + 48) invalidate];
    goto LABEL_11;
  }

  v11 = [v5 cleanup];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__PBFPosterSnapshotCoordinator_cacheFuture__block_invoke_10;
  v12[3] = &unk_2782C8710;
  v13 = *(a1 + 48);
  [v11 addCompletionBlock:v12];

LABEL_11:
}

- (void)ingestSnapshotsFromCoordinator:(id)a3
{
  if (a3)
  {
    p_path = &self->_path;
    path = self->_path;
    v7 = a3;
    v8 = [(PFServerPosterPath *)path identity];
    v9 = NSStringFromSelector(a2);
    v10 = PBFLogSnapshotter();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PBFPosterSnapshotCoordinator ingestSnapshotsFromCoordinator:];
    }

    v11 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
    v12 = [v7 cacheFuture];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke;
    v19[3] = &unk_2782C87D8;
    v13 = v12;
    v20 = v13;
    v14 = v8;
    v21 = v14;
    v15 = v9;
    v22 = v15;
    v16 = [v11 flatMap:v19];
    v17 = [v16 result:0];

    v18 = PBFLogSnapshotter();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(PBFPosterSnapshotCoordinator *)p_path ingestSnapshotsFromCoordinator:a2, v18];
    }
  }
}

id __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_2;
  v8[3] = &unk_2782C87D8;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v5 = v3;
  v6 = [v4 flatMap:v8];

  return v6;
}

id __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_2(id *a1, void *a2)
{
  v3 = MEMORY[0x277D3EF88];
  v4 = a2;
  v5 = [v3 truePredicate];
  v6 = [v4 snapshotBundlesMatchingPredicate:v5];

  v19 = 0;
  v7 = [v6 result:&v19];
  v8 = v19;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_3;
  v15 = &unk_2782C87B0;
  v16 = a1[4];
  v17 = a1[5];
  v18 = a1[6];
  v9 = [v7 bs_mapNoNulls:&v12];

  if (v8)
  {
    [MEMORY[0x277D3EC50] futureWithError:{v8, v12, v13, v14, v15, v16, v17}];
  }

  else
  {
    [MEMORY[0x277D3EC50] chain:{v9, v12, v13, v14, v15, v16, v17}];
  }
  v10 = ;

  return v10;
}

id __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] cacheSnapshotBundle:v3 options:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_4;
  v10[3] = &unk_2782C8760;
  v11 = a1[5];
  v12 = a1[6];
  v13 = v3;
  v5 = v3;
  [v4 addSuccessBlock:v10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_16;
  v7[3] = &unk_2782C8788;
  v8 = a1[5];
  v9 = a1[6];
  [v4 addFailureBlock:v7];

  return v4;
}

void __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_4(uint64_t a1)
{
  v2 = PBFLogSnapshotter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_4_cold_1(a1, v2);
  }
}

void __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = PBFLogSnapshotter();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_16_cold_1();
  }
}

- (id)snapshotReservationForContext:(id)a3
{
  v5 = a3;
  v6 = [v5 definition];
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v6)
  {
    [PBFPosterSnapshotCoordinator snapshotReservationForContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotReservationForContext:a2];
  }

  v7 = [v5 displayContext];
  if (!v7)
  {
    [PBFPosterSnapshotCoordinator snapshotReservationForContext:a2];
  }

  v8 = v7;
  if (([v7 conformsToProtocol:&unk_282D481D8] & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotReservationForContext:a2];
  }

  v9 = self->_snapshotBundleLRUCache;
  objc_sync_enter(v9);
  v10 = [(PFLRUCache *)v9 objectForKey:v5];
  v11 = [v10 bundleURL];
  v12 = [v11 checkResourceIsReachableAndReturnError:0];

  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x277D3EF70]);
    v14 = [v5 definition];
    v15 = [v14 levelSets];
    v16 = [v15 firstObject];
    v17 = [v16 levels];
    v18 = [v13 initWithSet:v17];

    v19 = [v10 snapshotURLForLevelSet:v18];
    if (v19)
    {
      v20 = [PBFPosterSnapshotReservation alloc];
      v21 = [MEMORY[0x277D3EC50] futureWithResult:v19];
      v22 = [(PBFPosterSnapshotReservation *)v20 initWithFuture:v21 snapshotContext:v5];
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  objc_sync_exit(v9);
  if (!v22)
  {
    v23 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __62__PBFPosterSnapshotCoordinator_snapshotReservationForContext___block_invoke;
    v27[3] = &unk_2782C87D8;
    v27[4] = self;
    v24 = v5;
    v28 = v24;
    v29 = v9;
    v25 = [v23 flatMap:v27];

    v22 = [[PBFPosterSnapshotReservation alloc] initWithFuture:v25 snapshotContext:v24];
  }

  return v22;
}

id __62__PBFPosterSnapshotCoordinator_snapshotReservationForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 _predicateForSnapshotContext:v4];
  v7 = [v5 latestSnapshotBundleMatchingPredicate:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__PBFPosterSnapshotCoordinator_snapshotReservationForContext___block_invoke_2;
  v10[3] = &unk_2782C8800;
  v11 = *(a1 + 48);
  v12 = *(a1 + 40);
  v8 = [v7 flatMap:v10];

  return v8;
}

id __62__PBFPosterSnapshotCoordinator_snapshotReservationForContext___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(a1 + 32) setObject:v3 forKey:*(a1 + 40)];
  objc_sync_exit(v4);

  v5 = objc_alloc(MEMORY[0x277D3EF70]);
  v6 = [*(a1 + 40) definition];
  v7 = [v6 levelSets];
  v8 = [v7 firstObject];
  v9 = [v8 levels];
  v10 = [v5 initWithSet:v9];

  v11 = [v3 snapshotURLForLevelSet:v10];
  if (v11)
  {
    [MEMORY[0x277D3EC50] futureWithResult:v11];
  }

  else
  {
    [MEMORY[0x277D3EC50] cancelledFuture];
  }
  v12 = ;

  return v12;
}

- (id)snapshotBundleForContext:(id)a3
{
  v5 = a3;
  v6 = [v5 definition];
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v6)
  {
    [PBFPosterSnapshotCoordinator snapshotBundleForContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotBundleForContext:a2];
  }

  v7 = [v5 displayContext];
  if (!v7)
  {
    [PBFPosterSnapshotCoordinator snapshotBundleForContext:a2];
  }

  v8 = v7;
  if (([v7 conformsToProtocol:&unk_282D481D8] & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotBundleForContext:a2];
  }

  v9 = self->_snapshotBundleLRUCache;
  v10 = objc_opt_new();
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke;
  v19 = &unk_2782C6588;
  v20 = v9;
  v21 = v5;
  v22 = v10;
  v23 = self;
  v11 = v10;
  v12 = v5;
  v13 = v9;
  PBFDispatchAsyncWithString(@"snapshotBundleForContext", QOS_CLASS_USER_INITIATED, &v16);
  v14 = [v11 future];

  return v14;
}

void __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke(id *a1)
{
  obj = a1[4];
  objc_sync_enter(obj);
  v2 = [a1[4] objectForKey:a1[5]];
  v3 = [v2 bundleURL];
  v4 = [v3 checkResourceIsReachableAndReturnError:0];

  if (v4)
  {
    [a1[6] finishWithResult:v2 error:0];

    objc_sync_exit(obj);
  }

  else
  {

    objc_sync_exit(obj);
    v5 = [a1[7] cacheFuture];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke_2;
    v12[3] = &unk_2782C8828;
    v12[4] = a1[7];
    v13 = a1[5];
    v6 = [v5 flatMap:v12];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke_3;
    v8[3] = &unk_2782C8850;
    v9 = a1[4];
    v10 = a1[5];
    v11 = a1[6];
    [v6 addCompletionBlock:v8];
  }
}

id __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 _predicateForSnapshotContext:v3];
  v6 = [v4 latestSnapshotBundleMatchingPredicate:v5];

  return v6;
}

void __57__PBFPosterSnapshotCoordinator_snapshotBundleForContext___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  [*(a1 + 32) setObject:v7 forKey:*(a1 + 40)];
  objc_sync_exit(v6);

  [*(a1 + 48) finishWithResult:v7 error:v5];
}

- (BOOL)ingestSnapshotBundle:(id)a3 error:(id *)a4
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 bundleURL];
  LODWORD(v8) = [v7 checkResourceIsReachableAndReturnError:a4];

  if (v8)
  {
    v9 = [v6 posterUUID];
    v10 = [(PFServerPosterPath *)self->_path serverIdentity];
    v11 = [v10 posterUUID];
    v12 = [v11 isEqual:v9];

    if (v12)
    {
      v13 = [v6 posterVersion];
      v14 = [(PFServerPosterPath *)self->_path serverIdentity];
      v15 = [v14 version] == 0;

      if (v13 != v15)
      {
        v36 = [MEMORY[0x277D3EF88] predicateMatchingBundlesSimilarTo:v6];
        v17 = MEMORY[0x277D3EF90];
        v41[0] = v36;
        v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
        v19 = [v17 removeBundlesMatchingPredicates:v18];

        v8 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __59__PBFPosterSnapshotCoordinator_ingestSnapshotBundle_error___block_invoke;
        v38[3] = &unk_2782C8828;
        v20 = v6;
        v39 = v20;
        v21 = v19;
        v40 = v21;
        v22 = [v8 flatMap:v38];
        v37 = 0;
        v23 = [v22 result:&v37];
        v24 = v37;

        LOBYTE(v8) = v24 == 0;
        if (v24)
        {
          if (a4)
          {
            v25 = v24;
            *a4 = v24;
          }
        }

        else
        {
          v34 = self->_snapshotBundleLRUCache;
          v26 = [PBFPosterSnapshotDefinition alloc];
          v27 = [v20 snapshotDefinitionIdentifier];
          v35 = [(PBFPosterSnapshotDefinition *)v26 initWithUniqueIdentifier:v27];

          if (v35)
          {
            v28 = v34;
            objc_sync_enter(v28);
            v29 = +[PBFGenericDisplayContext mainScreen];
            v30 = [v29 displayContextWithUpdatedInterfaceOrientation:{objc_msgSend(v20, "interfaceOrientation")}];
            v31 = [v30 displayContextWithUpdatedUserInterfaceStyle:{objc_msgSend(v20, "userInterfaceStyle")}];

            v32 = [PBFPosterSnapshotContext snapshotContextForDisplayContext:v31 definition:v35];
            [(PFLRUCache *)v28 setObject:v20 forKey:v32];

            objc_sync_exit(v28);
          }
        }

        goto LABEL_16;
      }

      if (a4)
      {
        goto LABEL_7;
      }
    }

    else if (a4)
    {
LABEL_7:
      v16 = PFFunctionNameForAddress();
      *a4 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    }

    LOBYTE(v8) = 0;
LABEL_16:
  }

  return v8;
}

- (BOOL)snapshotExistsForContext:(id)a3
{
  v5 = a3;
  v6 = [v5 definition];
  NSClassFromString(&cfstr_Pbfpostersnaps_2.isa);
  if (!v6)
  {
    [PBFPosterSnapshotCoordinator snapshotExistsForContext:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotExistsForContext:a2];
  }

  v7 = [v5 displayContext];
  if (!v7)
  {
    [PBFPosterSnapshotCoordinator snapshotExistsForContext:a2];
  }

  v8 = v7;
  if (([v7 conformsToProtocol:&unk_282D481D8] & 1) == 0)
  {
    [PBFPosterSnapshotCoordinator snapshotExistsForContext:a2];
  }

  v9 = self->_snapshotBundleLRUCache;
  objc_sync_enter(v9);
  v10 = [(PFLRUCache *)self->_snapshotBundleLRUCache objectForKey:v5];

  objc_sync_exit(v9);
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v12 = [(PBFPosterSnapshotCoordinator *)self _predicateForSnapshotContext:v5];
    v13 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__PBFPosterSnapshotCoordinator_snapshotExistsForContext___block_invoke;
    v18[3] = &unk_2782C8878;
    v19 = v12;
    v14 = v12;
    v15 = [v13 flatMap:v18];
    v16 = [v15 result:0];
    v11 = v16 != 0;
  }

  return v11;
}

- (BOOL)snapshotFulfilledForRequest:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 loadFromCacheIfAvailable])
  {
    v5 = self->_snapshotBundleLRUCache;
    objc_sync_enter(v5);
    [PBFPosterSnapshotContext snapshotContextsForRequest:v4];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v6 = v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [(PFLRUCache *)self->_snapshotBundleLRUCache objectForKey:v10, v15];
          v12 = v11 == 0;

          if (v12 && ![(PBFPosterSnapshotCoordinator *)self snapshotExistsForContext:v10])
          {
            v13 = 0;
            goto LABEL_14;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_14:

    objc_sync_exit(v5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchFulfilledSnapshotDefinitionsForRequest:(id)a3
{
  v4 = a3;
  if ([v4 loadFromCacheIfAvailable])
  {
    v5 = [PBFPosterSnapshotContext snapshotContextsForRequest:v4];
    if ([v5 count])
    {
      v6 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke;
      v11[3] = &unk_2782C8828;
      v12 = v5;
      v13 = self;
      v7 = [v6 flatMap:v11];
    }

    else
    {
      v8 = MEMORY[0x277D3EC50];
      v6 = PFFunctionNameForAddress();
      v9 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
      v7 = [v8 futureWithError:{v9, 0}];
    }
  }

  else
  {
    v7 = [MEMORY[0x277D3EC50] futureWithResult:MEMORY[0x277CBEC10]];
  }

  return v7;
}

id __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_2;
  v13 = &unk_2782C88E8;
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v3;
  v5 = v3;
  v6 = [v4 bs_mapNoNulls:&v10];
  v7 = [MEMORY[0x277D3EC50] join:{v6, v10, v11, v12, v13, v14}];
  v8 = [v7 flatMap:&__block_literal_global_140];

  return v8;
}

id __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _predicateForSnapshotContext:v3];
  v5 = [*(a1 + 40) latestSnapshotBundleMatchingPredicate:v4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_3;
  v10[3] = &unk_2782C88A0;
  v11 = v3;
  v6 = v3;
  v7 = [v5 flatMap:v10];
  v8 = [v7 recover:&__block_literal_global_20];

  return v8;
}

id __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 definition];
  v6 = objc_alloc(MEMORY[0x277D3EF70]);
  v7 = [v5 levelSets];
  v8 = [v7 firstObject];
  v9 = [v8 levels];
  v10 = [v6 initWithSet:v9];

  v11 = [v4 snapshotURLForLevelSet:v10];

  v12 = MEMORY[0x277D3EC50];
  v17 = v5;
  v13 = [[PBFPosterSnapshotReservation alloc] initWithURL:v11 snapshotContext:*(a1 + 32)];
  v18[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15 = [v12 futureWithResult:v14];

  return v15;
}

id __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__PBFPosterSnapshotCoordinator_fetchFulfilledSnapshotDefinitionsForRequest___block_invoke_6;
  v7[3] = &unk_2782C8930;
  v8 = v3;
  v4 = v3;
  [v2 enumerateObjectsUsingBlock:v7];

  v5 = [MEMORY[0x277D3EC50] futureWithResult:v4];

  return v5;
}

- (id)checkSnapshotBundleExistsForContext:(id)a3
{
  v4 = [(PBFPosterSnapshotCoordinator *)self _predicateForSnapshotContext:a3];
  v5 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__PBFPosterSnapshotCoordinator_checkSnapshotBundleExistsForContext___block_invoke;
  v9[3] = &unk_2782C8878;
  v10 = v4;
  v6 = v4;
  v7 = [v5 flatMap:v9];

  return v7;
}

- (void)removeAllSnapshots
{
  v3 = self->_snapshotBundleLRUCache;
  v4 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__PBFPosterSnapshotCoordinator_removeAllSnapshots__block_invoke;
  v8[3] = &unk_2782C8878;
  v9 = v3;
  v5 = v3;
  v6 = [v4 flatMap:v8];
  v7 = [v6 result:0];
}

id __50__PBFPosterSnapshotCoordinator_removeAllSnapshots__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  [*(a1 + 32) removeAllObjects];
  objc_sync_exit(v4);

  v5 = [MEMORY[0x277D3EF88] truePredicate];
  v6 = [v3 discardSnapshotBundlesMatchingPredicate:v5];

  return v6;
}

- (void)ensureFileSystemIntegrity
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CBE7F8];
  v30[0] = *MEMORY[0x277CBE878];
  v30[1] = v3;
  v4 = *MEMORY[0x277CBE800];
  v31[0] = MEMORY[0x277CBEC38];
  v31[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  fileManager = self->_fileManager;
  v19 = self;
  v7 = [(PFServerPosterPath *)self->_path snapshotCacheURL];
  v8 = [v5 allKeys];
  v9 = [(NSFileManager *)fileManager contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v8 options:0 error:0];

  v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        v20 = 0;
        v15 = [v14 setResourceValues:v5 error:&v20];
        v16 = v20;
        v17 = PBFLogSnapshotter();
        v18 = v17;
        if (v15)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            v26 = v14;
            _os_log_debug_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEBUG, "Updated snapshot resource values: %{public}@", buf, 0xCu);
          }
        }

        else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v26 = v14;
          v27 = 2114;
          v28 = v16;
          _os_log_error_impl(&dword_21B526000, v18, OS_LOG_TYPE_ERROR, "FAILED to update snapshot resource values for %{public}@: %{public}@", buf, 0x16u);
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v11);
  }

  os_unfair_lock_unlock(&v19->_lock);
}

- (id)_predicateForSnapshotContext:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 definition];
  v7 = [v6 uniqueIdentifier];
  [v5 setSnapshotDefinitionIdentifier:v7];

  v8 = [(PFServerPosterPath *)self->_path identity];
  v9 = [v8 posterUUID];
  [v5 setPosterUUID:v9];

  v10 = MEMORY[0x277CCABB0];
  v11 = [(PFServerPosterPath *)self->_path identity];
  v12 = [v10 numberWithUnsignedLongLong:{objc_msgSend(v11, "version")}];
  [v5 setPosterVersion:v12];

  LODWORD(v9) = PUIDynamicRotationIsActive();
  v13 = MEMORY[0x277CCABB0];
  v14 = [v4 displayContext];
  v15 = [v13 numberWithInteger:{objc_msgSend(v14, "pbf_interfaceOrientation")}];
  if (v9)
  {
    [v5 setDeviceOrientation:v15];
  }

  else
  {
    [v5 setInterfaceOrientation:v15];
  }

  v16 = MEMORY[0x277CCABB0];
  v17 = [v4 displayContext];
  v18 = [v16 numberWithInteger:{objc_msgSend(v17, "pbf_userInterfaceStyle")}];
  [v5 setUserInterfaceStyle:v18];

  v19 = MEMORY[0x277CCABB0];
  v20 = [v4 displayContext];
  v21 = [v19 numberWithInteger:{objc_msgSend(v20, "pbf_accessibilityContrast")}];
  [v5 setAccessibilityContrast:v21];

  return v5;
}

- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isServerPosterPath] & 1) != 0 && (objc_msgSend(v6, "serverIdentity"), v8 = objc_claimAutoreleasedReturnValue(), -[PFServerPosterPath serverIdentity](self->_path, "serverIdentity"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, (v10))
  {
    v11 = [(PFServerPosterPath *)self->_path snapshotCacheURL];
    v12 = [(PBFPosterSnapshotCoordinator *)self cacheFuture];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __82__PBFPosterSnapshotCoordinator_snapshotDestinationFutureForPath_clientAuditToken___block_invoke;
    v18[3] = &unk_2782C8828;
    v19 = v11;
    v20 = v7;
    v13 = v11;
    v14 = [v12 flatMap:v18];
  }

  else
  {
    v15 = MEMORY[0x277D3EC50];
    v12 = PFFunctionNameForAddress();
    v16 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    v14 = [v15 futureWithError:{v16, 0}];
  }

  return v14;
}

id __82__PBFPosterSnapshotCoordinator_snapshotDestinationFutureForPath_clientAuditToken___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v14 = 0;
  v3 = [MEMORY[0x277D3EFA0] destinationForSQLiteCacheAtURL:v1 clientAuditToken:v2 error:&v14];
  v4 = v14;
  v5 = v4;
  v6 = MEMORY[0x277D3EC50];
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x277D3EC50] futureWithResult:v3];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if (v4)
  {
    v8 = [MEMORY[0x277D3EC50] futureWithError:v4];
    goto LABEL_8;
  }

  v11 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA470];
  v16[0] = @"snapshotDestinationFutureForPath:clientAuditToken:";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v11 pbf_generalErrorWithCode:0 userInfo:v12];
  v9 = [v6 futureWithError:v13];

LABEL_9:

  return v9;
}

- (void)cacheFuture
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __43__PBFPosterSnapshotCoordinator_cacheFuture__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)ingestSnapshotsFromCoordinator:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)ingestSnapshotsFromCoordinator:(NSObject *)a3 .cold.2(id *a1, const char *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 identity];
  v6 = NSStringFromSelector(a2);
  v8 = 138543618;
  v9 = v5;
  OUTLINED_FUNCTION_4_3();
  v10 = v7;
  _os_log_debug_impl(&dword_21B526000, a3, OS_LOG_TYPE_DEBUG, "<SnapshotCoordinator-%{public}@-%{public}@> End", &v8, 0x16u);
}

void __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) snapshotBundleUUID];
  v8 = 138543874;
  v9 = v3;
  OUTLINED_FUNCTION_4_3();
  v10 = v4;
  v11 = v6;
  v12 = v7;
  _os_log_debug_impl(&dword_21B526000, a2, OS_LOG_TYPE_DEBUG, "<SnapshotCoordinator-%{public}@-%{public}@> Duplicated %{public}@", &v8, 0x20u);
}

void __63__PBFPosterSnapshotCoordinator_ingestSnapshotsFromCoordinator___block_invoke_16_cold_1()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_5_2();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)snapshotReservationForContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotDefinitionClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotReservationForContext:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFDisplayContext)]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotReservationForContext:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotReservationForContext:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotBundleForContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotDefinitionClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotBundleForContext:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFDisplayContext)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotBundleForContext:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotBundleForContext:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotExistsForContext:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFPosterSnapshotDefinitionClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotExistsForContext:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFDisplayContext)]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotExistsForContext:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)snapshotExistsForContext:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end