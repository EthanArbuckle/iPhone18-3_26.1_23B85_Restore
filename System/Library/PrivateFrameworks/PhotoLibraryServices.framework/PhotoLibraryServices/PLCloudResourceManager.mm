@interface PLCloudResourceManager
- (PLCloudResourceManager)init;
- (PLCloudResourceManager)initWithCPLManager:(id)manager libraryServicesManager:(id)servicesManager;
- (double)_minimumIntervalBetweenOperations;
- (id)statusForDebug:(BOOL)debug;
- (void)_runOnWorkQueueWithTransaction:(id)transaction block:(id)block;
- (void)handleOptimizeModeChange;
- (void)startAutomaticPrefetchAndPruneWithTimeout:(BOOL)timeout;
- (void)stop;
@end

@implementation PLCloudResourceManager

- (id)statusForDebug:(BOOL)debug
{
  debugCopy = debug;
  pathManager = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
  v6 = [pathManager photoDirectoryWithType:1];

  v41 = [MEMORY[0x1E69BF208] fileSystemSizeForPath:v6];
  v46 = v6;
  v40 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:v6];
  v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v7 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v7 setTimeZone:localTimeZone];

  libraryURL = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryURL];
  v10 = [PLPhotoLibraryIdentifier photoLibraryIdentifierWithPhotoLibraryURL:libraryURL createIfMissing:1 error:0];

  cplSettings = [(PLLibraryServicesManager *)self->_libraryServicesManager cplSettings];
  v44 = v10;
  v47 = debugCopy;
  if ([(PLLibraryServicesManager *)self->_libraryServicesManager isSystemPhotoLibrary])
  {
    v12 = *MEMORY[0x1E69949B0];
  }

  else
  {
    if ([cplSettings isAppLibrary])
    {
      containerIdentifier = [v10 containerIdentifier];
      uuid = [v10 uuid];
      v49 = CPLLibraryIdentifierForApp();

      goto LABEL_7;
    }

    v12 = @"None";
  }

  v49 = v12;
LABEL_7:
  fingerprintContext = [(PLLibraryServicesManager *)self->_libraryServicesManager fingerprintContext];
  v37 = MEMORY[0x1E696AEC0];
  mainScopeIdentifier = [(PLLibraryServicesManager *)self->_libraryServicesManager mainScopeIdentifier];
  if ([(PLLibraryServicesManager *)self->_libraryServicesManager isCloudPhotoLibraryEnabled])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v34 = v16;
  v43 = cplSettings;
  v48 = +[PLCloudResourcePrefetchManager descriptionForPrefetchMode:](PLCloudResourcePrefetchManager, "descriptionForPrefetchMode:", [cplSettings prefetchMode]);
  fingerprintSchemeForNewMasterAsset = [fingerprintContext fingerprintSchemeForNewMasterAsset];
  fingerprintSchemeDescription = [fingerprintSchemeForNewMasterAsset fingerprintSchemeDescription];
  v39 = fingerprintContext;
  mmcsv2FingerprintScheme = [fingerprintContext mmcsv2FingerprintScheme];
  boundaryKeyDescription = [mmcsv2FingerprintScheme boundaryKeyDescription];
  date = [MEMORY[0x1E695DF00] date];
  v18 = [v7 stringFromDate:date];
  v19 = [v7 stringFromDate:self->_lastOperationDate];
  lastOperationDate = self->_lastOperationDate;
  [(PLCloudResourceManager *)self _minimumIntervalBetweenOperations];
  v21 = [(NSDate *)lastOperationDate dateByAddingTimeInterval:?];
  v45 = v7;
  v22 = [v7 stringFromDate:v21];
  if (self->_enqueuedOperation)
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = [MEMORY[0x1E696AAF0] stringFromByteCount:v41 countStyle:3];
  v25 = [MEMORY[0x1E696AAF0] stringFromByteCount:v40 countStyle:3];
  v26 = [(PLCloudResourcePrefetchManager *)self->_prefetchManager prefetchStatusForDebug:v47];
  v42 = [v37 stringWithFormat:@"Library Identifier: %@\nMain Scope Identifier: %@\niCPL enabled: %@\nPrefetch Mode: %@\nDefault fingerprint scheme: %@\nBoundary Key Hash: %@\nCurrent time: %@\nLast operation time: %@\nNext operation time: %@\nEnqueued: %@\nTotal storage: %@ Available storage: %@\n\n%@", v49, mainScopeIdentifier, v34, v48, fingerprintSchemeDescription, boundaryKeyDescription, v18, v19, v22, v23, v24, v25, v26];

  pruneManager = self->_pruneManager;
  if (pruneManager)
  {
    v28 = [(PLCloudResourcePruneManager *)pruneManager pruneStatusForDebug:v47];
    v29 = [v42 stringByAppendingFormat:@"\nPrune status (non-CCD):\n%@\n", v28];

    v30 = v44;
  }

  else
  {
    v30 = v44;
    v29 = v42;
  }

  return v29;
}

- (void)handleOptimizeModeChange
{
  [(PLCloudResourcePrefetchManager *)self->_prefetchManager handleOptimizeModeChange];
  pruneManager = self->_pruneManager;

  [(PLCloudResourcePruneManager *)pruneManager handleOptimizeModeChange];
}

- (void)stop
{
  [(PLCloudResourcePruneManager *)self->_pruneManager stop];
  [(PLCloudResourcePrefetchManager *)self->_prefetchManager stop];
  lastOperationDate = self->_lastOperationDate;
  self->_lastOperationDate = 0;

  self->_enqueuedOperation = 0;
}

- (void)startAutomaticPrefetchAndPruneWithTimeout:(BOOL)timeout
{
  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourceManager startAutomaticPrefetchAndPruneWithTimeout:]"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __68__PLCloudResourceManager_startAutomaticPrefetchAndPruneWithTimeout___block_invoke;
  v6[3] = &unk_1E7576F80;
  timeoutCopy = timeout;
  v6[4] = self;
  [(PLCloudResourceManager *)self _runOnWorkQueueWithTransaction:v5 block:v6];
}

void __68__PLCloudResourceManager_startAutomaticPrefetchAndPruneWithTimeout___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v3 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 40))
      {
        *&v4 = COERCE_DOUBLE(@"YES");
      }

      else
      {
        *&v4 = COERCE_DOUBLE(@"NO");
      }

      *buf = 138412290;
      v20 = *&v4;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch/prune with timeOut %@", buf, 0xCu);
    }
  }

  if (*(a1 + 40) == 1 && *(*(a1 + 32) + 40))
  {
    v5 = [MEMORY[0x1E695DF00] date];
    v6 = *(a1 + 32);
    v7 = v6[5];
    [v6 _minimumIntervalBetweenOperations];
    v8 = [v7 dateByAddingTimeInterval:?];
    [v8 timeIntervalSinceDate:v5];
    if (v9 > 0.0)
    {
      v10 = v9;
      if ((*v2 & 1) == 0)
      {
        v11 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(a1 + 32) + 40);
          *buf = 138412546;
          v20 = v12;
          v21 = 2048;
          v22 = v10;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Last operation date is %@, next operation is allowed in %f seconds, skip automatic prefetch/prune now", buf, 0x16u);
        }
      }

      v13 = *(a1 + 32);
      if ((*(v13 + 48) & 1) == 0)
      {
        if ((*v2 & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v20 = v10;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Enqueuing automatic prefetch/prune in %f seconds", buf, 0xCu);
          }

          v13 = *(a1 + 32);
        }

        *(v13 + 48) = 1;
        dispatch_time(0, (v10 * 1000000000.0));
        pl_dispatch_after();
      }

      return;
    }

    if ((*v2 & 1) == 0)
    {
      v15 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Allowed to start prefetch/prune now", buf, 2u);
      }
    }
  }

  v16 = [MEMORY[0x1E695DF00] date];
  v17 = *(a1 + 32);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if ([*(*(a1 + 32) + 32) diskSpaceToPrune] <= 0)
  {
    [*(*(a1 + 32) + 24) startAutomaticPrefetch];
  }
}

- (double)_minimumIntervalBetweenOperations
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults integerForKey:@"PLPrefetchMinimumIntervalBetweenOperations"];

  result = 600.0;
  if (v3 >= 1)
  {
    return v3;
  }

  return result;
}

- (void)_runOnWorkQueueWithTransaction:(id)transaction block:(id)block
{
  transactionCopy = transaction;
  blockCopy = block;
  v5 = transactionCopy;
  v6 = blockCopy;
  pl_dispatch_async();
}

uint64_t __63__PLCloudResourceManager__runOnWorkQueueWithTransaction_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (PLCloudResourceManager)initWithCPLManager:(id)manager libraryServicesManager:(id)servicesManager
{
  managerCopy = manager;
  servicesManagerCopy = servicesManager;
  v20.receiver = self;
  v20.super_class = PLCloudResourceManager;
  v8 = [(PLCloudResourceManager *)&v20 init];
  if (v8)
  {
    v9 = PLCloudCopyDefaultSerialQueueAttributes();
    v10 = dispatch_queue_create("PLCloudResourceManager work queue", v9);
    workQueue = v8->_workQueue;
    v8->_workQueue = v10;

    objc_storeStrong(&v8->_libraryServicesManager, servicesManager);
    pathManager = [servicesManagerCopy pathManager];
    capabilities = [pathManager capabilities];
    isCentralizedCacheDeleteCapable = [capabilities isCentralizedCacheDeleteCapable];

    if ((isCentralizedCacheDeleteCapable & 1) == 0)
    {
      v15 = [[PLCloudResourcePruneManager alloc] initWithCPLManager:managerCopy libraryServicesManager:servicesManagerCopy];
      pruneManager = v8->_pruneManager;
      v8->_pruneManager = v15;
    }

    v17 = [[PLCloudResourcePrefetchManager alloc] initWithCPLManager:managerCopy pruneManager:v8->_pruneManager libraryServicesManager:servicesManagerCopy];
    prefetchManager = v8->_prefetchManager;
    v8->_prefetchManager = v17;

    v8->_enqueuedOperation = 0;
  }

  return v8;
}

- (PLCloudResourceManager)init
{
  [(PLCloudResourceManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end