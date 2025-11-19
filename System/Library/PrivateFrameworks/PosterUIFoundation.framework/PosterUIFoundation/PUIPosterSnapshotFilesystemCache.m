@interface PUIPosterSnapshotFilesystemCache
+ (id)_determineProviderFromSnapshotURL:(id)a3;
+ (id)_snapshotContainerURLForPosterUUID:(id)a3 provider:(id)a4 relativeTo:(id)a5;
+ (id)_snapshotURLForPosterPath:(id)a3 relativeTo:(id)a4;
+ (id)_snapshotURLForPosterPath:(id)a3 snapshotCacheIdentifier:(id)a4 interfaceOrientation:(int64_t)a5 hardwareIdentifier:(id)a6 userInterfaceStyle:(int64_t)a7 relativeTo:(id)a8;
+ (id)snapshotURLForSnapshotCacheEpoch:(int)a3 snapshotVersion:(int)a4 snapshotBundleVersion:(int)a5 posterUUID:(id)a6 posterVersion:(id)a7 provider:(id)a8 snapshotCacheIdentifier:(id)a9 interfaceOrientation:(int64_t)a10 hardwareIdentifier:(id)a11 userInterfaceStyle:(int64_t)a12 relativeTo:(id)a13;
- (BOOL)checkCacheIsReachableWithError:(id *)a3;
- (PUIPosterSnapshotFilesystemCache)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6;
- (id)_snapshotBundleURLs;
- (id)cacheSnapshotBundle:(id)a3 options:(id)a4;
- (id)checkCacheIsReachable;
- (id)cleanup;
- (id)discardSnapshotBundlesMatchingPredicate:(id)a3;
- (id)latestSnapshotBundleForPoster:(id)a3 snapshotCacheIdentifier:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6 hardwareIdentifier:(id)a7 error:(id *)a8;
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (id)latestSnapshotBundleMatchingPredicate:(id)a3;
- (id)reachableCacheFuture;
- (id)snapshotBundlesMatchingPredicate:(id)a3;
- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4;
- (void)_cacheLock_cleanupPostersWithOptions:(id)a3;
- (void)_prepareSnapshotCache;
- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 options:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)discardSnapshotsForPosters:(id)a3;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3;
- (void)invalidate;
@end

@implementation PUIPosterSnapshotFilesystemCache

- (PUIPosterSnapshotFilesystemCache)initWithURL:(id)a3 fileManager:(id)a4 options:(int64_t)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  if (([v11 checkResourceIsReachableAndReturnError:a6] & 1) == 0)
  {
    [PUIPosterSnapshotFilesystemCache initWithURL:a2 fileManager:? options:? error:?];
  }

  v41.receiver = self;
  v41.super_class = PUIPosterSnapshotFilesystemCache;
  v13 = [(PUIPosterSnapshotFilesystemCache *)&v41 init];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  v13->_options = a5;
  v15 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
  invalidationFlag = v14->_invalidationFlag;
  v14->_invalidationFlag = v15;

  v14->_cacheLock._os_unfair_lock_opaque = 0;
  v17 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  cacheLock_URLResourceIdentifierToSnapshotBundleCache = v14->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
  v14->_cacheLock_URLResourceIdentifierToSnapshotBundleCache = v17;

  v19 = [v11 URLByStandardizingPath];
  cacheURL = v14->_cacheURL;
  v14->_cacheURL = v19;

  if ([(NSURL *)v14->_cacheURL checkResourceIsReachableAndReturnError:a6])
  {
    v21 = [(NSURL *)v14->_cacheURL URLByAppendingPathComponent:@"PosterSnapshotCache.bundle" conformingToType:*MEMORY[0x1E6982D00]];
    rootCacheURL = v14->_rootCacheURL;
    v14->_rootCacheURL = v21;

    v23 = [(NSURL *)v14->_rootCacheURL URLByAppendingPathComponent:@"SnapshotBundles"];
    snapshotBundleContainerURL = v14->_snapshotBundleContainerURL;
    v14->_snapshotBundleContainerURL = v23;

    if (v12)
    {
      v25 = v12;
    }

    else
    {
      v25 = objc_opt_new();
    }

    fileManager = v14->_fileManager;
    v14->_fileManager = v25;

    v28 = [v11 path];
    v29 = [v28 stringByAppendingFormat:@"-%@", @"PostersFileSystemCacheCompletionQueue"];
    v30 = [MEMORY[0x1E698E698] serial];
    v31 = [v30 serviceClass:25];
    v32 = BSDispatchQueueCreate();
    completionQueue = v14->_completionQueue;
    v14->_completionQueue = v32;

    v34 = MEMORY[0x1E69C51F0];
    v35 = MEMORY[0x1E696AEC0];
    v36 = [(NSURL *)v14->_cacheURL path];
    v37 = [v35 stringWithFormat:@"PostersFileSystemCache-Workloop-%@", v36];
    v38 = [v34 serialQueueTargetingSharedWorkloop:v37];
    fileSystemQueue = v14->_fileSystemQueue;
    v14->_fileSystemQueue = v38;

    [(PUIPosterSnapshotFilesystemCache *)v14 _prepareSnapshotCache];
LABEL_9:
    v26 = v14;
    goto LABEL_10;
  }

  v26 = 0;
LABEL_10:

  return v26;
}

- (void)dealloc
{
  [(PUIPosterSnapshotFilesystemCache *)self invalidate];
  v3.receiver = self;
  v3.super_class = PUIPosterSnapshotFilesystemCache;
  [(PUIPosterSnapshotFilesystemCache *)&v3 dealloc];
}

- (id)cacheSnapshotBundle:(id)a3 options:(id)a4
{
  v6 = MEMORY[0x1E69C5260];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_options___block_invoke;
  v13[3] = &unk_1E7856438;
  v14 = v9;
  v10 = v9;
  [(PUIPosterSnapshotFilesystemCache *)self cacheSnapshotBundle:v8 forRequest:0 options:v7 completion:v13];

  v11 = [v10 future];

  return v11;
}

uint64_t __64__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2 error:0];
  }
}

- (id)checkCacheIsReachable
{
  v2 = self->_snapshotBundleContainerURL;
  v3 = MEMORY[0x1E69C5258];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PUIPosterSnapshotFilesystemCache_checkCacheIsReachable__block_invoke;
  v7[3] = &unk_1E7856118;
  v8 = v2;
  v4 = v2;
  v5 = [v3 futureWithBlock:v7];

  return v5;
}

uint64_t __57__PUIPosterSnapshotFilesystemCache_checkCacheIsReachable__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [*(a1 + 32) checkResourceIsReachableAndReturnError:a2];

  return [v2 numberWithBool:v3];
}

- (id)discardSnapshotBundlesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = self->_snapshotBundleContainerURL;
  v6 = self->_fileManager;
  v7 = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__PUIPosterSnapshotFilesystemCache_discardSnapshotBundlesMatchingPredicate___block_invoke;
  v13[3] = &unk_1E7856460;
  v13[4] = self;
  v14 = v5;
  v15 = v4;
  v16 = v6;
  v8 = v6;
  v9 = v4;
  v10 = v5;
  v11 = [v7 flatMap:v13];

  return v11;
}

id __76__PUIPosterSnapshotFilesystemCache_discardSnapshotBundlesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [PUIPosterSnapshotBundle alloc];
        v12 = [(PUIPosterSnapshotBundle *)v11 initWithURL:v10, v18];
        if (__doesBundleMatchPredicate(v12, *(a1 + 40), *(a1 + 48)))
        {
          v13 = [(PUIPosterSnapshotBundle *)v12 snapshotCollectionContext];
          [v4 bs_safeAddObject:v13];

          v14 = *(*(a1 + 32) + 32);
          v15 = [v10 pf_fileResourceIdentifierWithError:0];
          [v14 removeObjectForKey:v15];

          [*(a1 + 56) removeItemAtURL:v10 error:0];
          v12 = 0;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v16 = [MEMORY[0x1E69C5258] futureWithResult:v4];

  return v16;
}

- (id)latestSnapshotBundleMatchingPredicate:(id)a3
{
  v3 = [(PUIPosterSnapshotFilesystemCache *)self snapshotBundlesMatchingPredicate:a3];
  v4 = [v3 flatMap:&__block_literal_global_54];

  return v4;
}

id __74__PUIPosterSnapshotFilesystemCache_latestSnapshotBundleMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 count])
  {
    v3 = [v2 mutableCopy];
    [v3 sortUsingComparator:&__block_literal_global_57];
    v4 = MEMORY[0x1E69C5258];
    v5 = [v3 firstObject];
    v6 = [v4 futureWithResult:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69C5258] cancelledFuture];
  }

  return v6;
}

uint64_t __74__PUIPosterSnapshotFilesystemCache_latestSnapshotBundleMatchingPredicate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateCreated];
  v6 = [v4 dateCreated];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)snapshotBundlesMatchingPredicate:(id)a3
{
  v4 = a3;
  v5 = self->_snapshotBundleContainerURL;
  v6 = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PUIPosterSnapshotFilesystemCache_snapshotBundlesMatchingPredicate___block_invoke;
  v11[3] = &unk_1E78564A8;
  v12 = v5;
  v13 = v4;
  v7 = v4;
  v8 = v5;
  v9 = [v6 flatMap:v11];

  return v9;
}

id __69__PUIPosterSnapshotFilesystemCache_snapshotBundlesMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PUIPosterSnapshotBundle alloc];
        v12 = [(PUIPosterSnapshotBundle *)v11 initWithURL:v10, v15];
        if (__doesBundleMatchPredicate(v12, *(a1 + 32), *(a1 + 40)))
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [MEMORY[0x1E69C5258] futureWithResult:v4];

  return v13;
}

- (id)cleanup
{
  v3 = +[PUIPosterSnapshotBundlePredicate predicateMatchingCurrentSnapshotEpochAndVersion];
  v4 = [(PUIPosterSnapshotFilesystemCache *)self discardSnapshotBundlesMatchingPredicate:v3];

  return v4;
}

- (id)_snapshotBundleURLs
{
  v3 = self->_fileManager;
  v4 = self->_snapshotBundleContainerURL;
  v5 = MEMORY[0x1E69C5258];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PUIPosterSnapshotFilesystemCache__snapshotBundleURLs__block_invoke;
  v10[3] = &unk_1E7854878;
  v11 = v3;
  v12 = v4;
  v6 = v4;
  v7 = v3;
  v8 = [v5 futureWithBlock:v10];

  return v8;
}

id __55__PUIPosterSnapshotFilesystemCache__snapshotBundleURLs__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) enumeratorAtURL:*(a1 + 40) includingPropertiesForKeys:0 options:2 errorHandler:0];
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 pathExtension];
        v10 = [v9 localizedCompare:@"pks"];

        if (!v10)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSCache *)self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache removeAllObjects];
    cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
    self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache = 0;

    os_unfair_lock_unlock(&self->_cacheLock);
  }
}

- (id)snapshotDestinationFutureForPath:(id)a3 clientAuditToken:(id)a4
{
  v5 = a4;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
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

+ (id)_snapshotURLForPosterPath:(id)a3 relativeTo:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 serverIdentity];
  v8 = [v7 provider];

  v9 = [v5 serverIdentity];
  v10 = [v9 posterUUID];
  v11 = [v10 UUIDString];

  v12 = MEMORY[0x1E696AEC0];
  v13 = [v5 serverIdentity];
  v14 = [v12 stringWithFormat:@"%llu", objc_msgSend(v13, "version")];

  v15 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier();
  v25 = v6;
  v16 = [v6 copy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30[0] = v15;
  v30[1] = v8;
  v24 = v8;
  v30[2] = v11;
  v30[3] = v14;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      v22 = v16;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v16 = [v22 URLByAppendingPathComponent:*(*(&v26 + 1) + 8 * v21) isDirectory:1];

        ++v21;
        v22 = v16;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v19);
  }

  return v16;
}

+ (id)_snapshotURLForPosterPath:(id)a3 snapshotCacheIdentifier:(id)a4 interfaceOrientation:(int64_t)a5 hardwareIdentifier:(id)a6 userInterfaceStyle:(int64_t)a7 relativeTo:(id)a8
{
  v12 = a8;
  v13 = a6;
  v14 = a4;
  v15 = a3;
  v16 = [v15 serverIdentity];
  v17 = [v16 posterUUID];
  v18 = MEMORY[0x1E696AD98];
  v19 = [v15 serverIdentity];
  v20 = [v18 numberWithUnsignedLongLong:{objc_msgSend(v19, "version")}];
  v21 = [v15 serverIdentity];

  v22 = [v21 provider];
  v23 = [a1 _snapshotURLForPosterUUID:v17 posterVersion:v20 provider:v22 snapshotCacheIdentifier:v14 interfaceOrientation:a5 hardwareIdentifier:v13 userInterfaceStyle:a7 relativeTo:v12];

  return v23;
}

+ (id)snapshotURLForSnapshotCacheEpoch:(int)a3 snapshotVersion:(int)a4 snapshotBundleVersion:(int)a5 posterUUID:(id)a6 posterVersion:(id)a7 provider:(id)a8 snapshotCacheIdentifier:(id)a9 interfaceOrientation:(int64_t)a10 hardwareIdentifier:(id)a11 userInterfaceStyle:(int64_t)a12 relativeTo:(id)a13
{
  v15 = *&a3;
  v49 = *MEMORY[0x1E69E9840];
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v35 = a11;
  v19 = a13;
  v20 = [a6 UUIDString];
  v42 = v16;
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(v16, "unsignedIntegerValue")];
  v22 = PUIPosterSnapshotBundleEpochAndVersionIdentifier(v15, a4, a5);
  v23 = BSInterfaceOrientationDescription();
  v24 = @"Unknown";
  if (a12 == 1)
  {
    v24 = @"LightMode";
  }

  if (a12 == 2)
  {
    v24 = @"DarkMode";
  }

  v25 = v24;
  v38 = v19;
  v26 = [v19 copy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47[0] = v22;
  v47[1] = v17;
  v41 = v17;
  v36 = v21;
  v37 = v20;
  v47[2] = v20;
  v47[3] = v21;
  v47[4] = v23;
  v47[5] = v18;
  v47[6] = v25;
  v47[7] = v35;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:8];
  v28 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v44;
    do
    {
      v31 = 0;
      v32 = v26;
      do
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v26 = [v32 URLByAppendingPathComponent:*(*(&v43 + 1) + 8 * v31) isDirectory:1];

        ++v31;
        v32 = v26;
      }

      while (v29 != v31);
      v29 = [v27 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v29);
  }

  v33 = [v26 URLByAppendingPathComponent:@"Snapshot.pks" isDirectory:0];

  return v33;
}

+ (id)_snapshotContainerURLForPosterUUID:(id)a3 provider:(id)a4 relativeTo:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier();
  v11 = [v7 URLByAppendingPathComponent:v10 isDirectory:1];

  v12 = [v11 URLByAppendingPathComponent:v8 isDirectory:1];

  v13 = [v9 UUIDString];

  v14 = [v12 URLByAppendingPathComponent:v13 isDirectory:1];

  return v14;
}

+ (id)_determineProviderFromSnapshotURL:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [a3 path];
  v4 = [v3 componentsSeparatedByString:@"/"];
  v5 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [v11 isEqualToString:{v5, v14}];
        if ((v12 & 1) == 0 && ((v8 ^ 1) & 1) == 0)
        {
          v7 = v11;
          goto LABEL_12;
        }

        v8 |= v12;
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v7;
}

- (id)latestSnapshotBundleForPoster:(id)a3 snapshotCacheIdentifier:(id)a4 interfaceOrientation:(int64_t)a5 userInterfaceStyle:(int64_t)a6 hardwareIdentifier:(id)a7 error:(id *)a8
{
  *&v56[5] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a7;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v19 = PUILogSnapshotCache();
    v20 = os_signpost_id_generate(v19);

    v21 = PUILogSnapshotCache();
    v22 = v21;
    spid = v20;
    v23 = v20 - 1;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v22, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval", &unk_1A8D256D3, buf, 2u);
    }

    if (([v15 isServerPosterPath] & 1) == 0)
    {
      [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:a2 snapshotCacheIdentifier:? interfaceOrientation:? userInterfaceStyle:? hardwareIdentifier:? error:?];
    }

    if (![v16 length])
    {
      [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:a2 snapshotCacheIdentifier:? interfaceOrientation:? userInterfaceStyle:? hardwareIdentifier:? error:?];
    }

    v24 = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
    v25 = [objc_opt_class() _snapshotURLForPosterPath:v15 snapshotCacheIdentifier:v16 interfaceOrientation:a5 hardwareIdentifier:v17 userInterfaceStyle:a6 relativeTo:self->_snapshotBundleContainerURL];
    v26 = PUILogSnapshotCache();
    v27 = v26;
    if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v27, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-unlocked", &unk_1A8D256D3, buf, 2u);
    }

    v28 = [v25 pf_fileResourceIdentifierWithError:0];
    v29 = [(NSCache *)v24 objectForKey:v28];

    v30 = PUILogSnapshotCache();
    v31 = v30;
    if (v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v56 = v25;
        _os_log_impl(&dword_1A8C85000, v31, OS_LOG_TYPE_DEFAULT, "pre _cacheLock; snapshotBundle found @ %@", buf, 0xCu);
      }

      v32 = PUILogSnapshotCache();
      v33 = v32;
      if (v23 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v32))
      {
        goto LABEL_32;
      }

      *buf = 67109378;
      v56[0] = 1;
      LOWORD(v56[1]) = 2114;
      *(&v56[1] + 2) = v25;
      v34 = "SnapshotCacheRetrieval-unlocked";
    }

    else
    {
      if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
      {
        *buf = 138543362;
        *v56 = v25;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v31, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-unlocked", "Failed / %{public}@", buf, 0xCu);
      }

      v35 = PUILogSnapshotCache();
      v36 = v35;
      if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A8C85000, v36, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-locked", &unk_1A8D256D3, buf, 2u);
      }

      os_unfair_lock_lock(&self->_cacheLock);
      v37 = [(NSCache *)v24 objectForKey:v25];
      if (!v37)
      {
        v41 = PUILogSnapshotCache();
        v42 = v41;
        if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v42, OS_SIGNPOST_INTERVAL_BEGIN, spid, "SnapshotCacheRetrieval-loadFromDisk-locked", &unk_1A8D256D3, buf, 2u);
        }

        v54 = 0;
        v43 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v25 error:&v54];
        v52 = v54;
        v44 = PUILogSnapshotCache();
        v45 = v44;
        if (v43)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v56 = v25;
            _os_log_impl(&dword_1A8C85000, v45, OS_LOG_TYPE_DEFAULT, "loaded snapshotBundle %@", buf, 0xCu);
          }

          [(NSCache *)v24 setObject:v43 forKey:v25];
          v46 = v52;
        }

        else
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [PUIPosterSnapshotFilesystemCache latestSnapshotBundleForPoster:v25 snapshotCacheIdentifier:v52 interfaceOrientation:v45 userInterfaceStyle:? hardwareIdentifier:? error:?];
          }

          v46 = v52;
          if (a8)
          {
            v47 = v52;
            *a8 = v52;
          }
        }

        v48 = PUILogSnapshotCache();
        v49 = v48;
        if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
        {
          *buf = 67109378;
          v56[0] = v43 != 0;
          LOWORD(v56[1]) = 2114;
          *(&v56[1] + 2) = v25;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v49, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-loadFromDisk-locked", "Success? %{BOOL}u  %{public}@", buf, 0x12u);
        }

        os_unfair_lock_unlock(&self->_cacheLock);
        v50 = PUILogSnapshotCache();
        v51 = v50;
        if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
        {
          *buf = 67109378;
          v56[0] = v43 != 0;
          LOWORD(v56[1]) = 2114;
          *(&v56[1] + 2) = v25;
          _os_signpost_emit_with_name_impl(&dword_1A8C85000, v51, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheRetrieval-locked", "Success? %{BOOL}u  %{public}@", buf, 0x12u);
        }

        v18 = v43;
        goto LABEL_33;
      }

      v29 = v37;
      os_unfair_lock_unlock(&self->_cacheLock);
      v38 = PUILogSnapshotCache();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v56 = v25;
        _os_log_impl(&dword_1A8C85000, v38, OS_LOG_TYPE_DEFAULT, "post _cacheLock; snapshotBundle found @ %@", buf, 0xCu);
      }

      v39 = PUILogSnapshotCache();
      v33 = v39;
      if (v23 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v39))
      {
LABEL_32:

        v18 = v29;
LABEL_33:

        goto LABEL_34;
      }

      *buf = 67109378;
      v56[0] = 1;
      LOWORD(v56[1]) = 2114;
      *(&v56[1] + 2) = v25;
      v34 = "SnapshotCacheRetrieval-locked";
    }

    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v33, OS_SIGNPOST_INTERVAL_END, spid, v34, "Success? %{BOOL}u  %{public}@", buf, 0x12u);
    goto LABEL_32;
  }

  if (a8)
  {
    [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    *a8 = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_34:

  return v18;
}

- (void)discardSnapshotsForPosters:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self->_fileManager;
  os_unfair_lock_lock(&self->_cacheLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [objc_opt_class() _snapshotURLForPosterPath:*(*(&v14 + 1) + 8 * v10) relativeTo:{self->_snapshotBundleContainerURL, v14}];
        cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
        v13 = [v11 pf_fileResourceIdentifierWithError:0];
        [(NSCache *)cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v13];

        [(NSFileManager *)v5 removeItemAtURL:v11 error:0];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (BOOL)checkCacheIsReachableWithError:(id *)a3
{
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (a3)
    {
      *a3 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
    }

    return 0;
  }

  else
  {
    fileManager = self->_fileManager;
    snapshotBundleContainerURL = self->_snapshotBundleContainerURL;
    v8 = PFPosterPathFileAttributes();
    v9 = [(NSFileManager *)fileManager createDirectoryAtURL:snapshotBundleContainerURL withIntermediateDirectories:1 attributes:v8 error:a3];

    return v9;
  }
}

- (id)reachableCacheFuture
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69C5258];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PUIPosterSnapshotFilesystemCache_reachableCacheFuture__block_invoke;
  v5[3] = &unk_1E78564D0;
  objc_copyWeak(&v6, &location);
  v3 = [v2 futureWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __56__PUIPosterSnapshotFilesystemCache_reachableCacheFuture__block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained checkCacheIsReachableWithError:a2])
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    [MEMORY[0x1E696ABC0] pui_errorWithCode:10];
    *a2 = v5 = 0;
  }

  return v5;
}

- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (a4)
    {
      [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v8 = [v6 snapshotDescriptor];
    v18 = [v8 output];

    v9 = [v6 snapshotDescriptor];
    v10 = [v9 sceneDescriptor];

    v11 = [v6 path];
    v12 = [v18 snapshotDefinitionIdentifier];
    v13 = [v10 deviceOrientation];
    v14 = [v10 userInterfaceStyle];
    v15 = [v10 displayConfiguration];
    v16 = [v15 pui_displayConfigurationIdentifier];
    v7 = [(PUIPosterSnapshotFilesystemCache *)self latestSnapshotBundleForPoster:v11 snapshotCacheIdentifier:v12 interfaceOrientation:v13 userInterfaceStyle:v14 hardwareIdentifier:v16 error:a4];
  }

  return v7;
}

- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v28 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = PUILogSnapshotCache();
    v5 = os_signpost_id_generate(v4);

    v6 = PUILogSnapshotCache();
    v7 = v6;
    v27 = v5 - 1;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 138543362;
      v38 = v28;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SnapshotCacheCleanupMatchingPredicate", "Predicate %{public}@", buf, 0xCu);
    }

    spid = v5;

    v8 = objc_opt_new();
    os_unfair_lock_lock(&self->_cacheLock);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [(NSFileManager *)self->_fileManager enumeratorAtURL:self->_snapshotBundleContainerURL includingPropertiesForKeys:0 options:4 errorHandler:0];
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v15 = [v14 pathExtension];
          v16 = [v15 localizedCompare:@"pks"];

          if (!v16 && [v28 evaluateWithObject:v14])
          {
            [v8 addObject:v14];
            cacheLock_URLResourceIdentifierToSnapshotBundleCache = self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache;
            v18 = [v14 pf_fileResourceIdentifierWithError:0];
            [(NSCache *)cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v18];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v11);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v19 = v8;
    v20 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v30;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSFileManager *)self->_fileManager removeItemAtURL:*(*(&v29 + 1) + 8 * j) error:0];
        }

        v21 = [v19 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v21);
    }

    os_unfair_lock_unlock(&self->_cacheLock);
    v24 = PUILogSnapshotCache();
    v25 = v24;
    if (v27 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *buf = 138543618;
      v38 = v28;
      v39 = 2114;
      v40 = v19;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v25, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCacheCleanupMatchingPredicate", "Predicate %{public}@; cleanedup urls: %{public}@", buf, 0x16u);
    }
  }
}

- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 path];
  v12 = [v11 isServerPosterPath];

  if (v12)
  {
    v13 = [v9 path];
    v14 = [v13 serverIdentity];

    v15 = [v14 version];
    v16 = [v14 posterUUID];
    v17 = [PUIPosterSnapshotBundlePredicate predicateMatchingBundleWithPosterVersionLessThan:v15 posterUUID:v16];

    v20[0] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v19 = [PUIPosterSnapshotCachingOptions removeBundlesMatchingPredicates:v18];
  }

  else
  {
    v19 = 0;
  }

  [(PUIPosterSnapshotFilesystemCache *)self cacheSnapshotBundle:v8 forRequest:v9 options:v19 completion:v10];
}

- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 options:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_completionQueue;
  if (v10)
  {
    if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
    {
      v36 = [v10 posterUUID];
      v16 = [v10 snapshotDefinitionIdentifier];
      v17 = v16;
      v18 = @"UNKNOWN_SNAPSHOT_DEFINITION";
      if (v16)
      {
        v18 = v16;
      }

      v32 = v18;

      v31 = [v10 deviceOrientation];
      v35 = [v10 hardwareIdentifier];
      v30 = [v10 userInterfaceStyle];
      v34 = self->_fileManager;
      v19 = PUILogSnapshotCache();
      v33 = os_signpost_id_generate(v19);

      v20 = objc_opt_class();
      v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "posterVersion")}];
      [v10 posterProvider];
      v22 = v14;
      v23 = v12;
      v25 = v24 = v11;
      v26 = [v20 _snapshotURLForPosterUUID:v36 posterVersion:v21 provider:v25 snapshotCacheIdentifier:v32 interfaceOrientation:v31 hardwareIdentifier:v35 userInterfaceStyle:v30 relativeTo:self->_snapshotBundleContainerURL];

      v11 = v24;
      v12 = v23;
      v14 = v22;

      fileSystemQueue = self->_fileSystemQueue;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_3;
      v37[3] = &unk_1E7856570;
      v44 = v13;
      v45 = v33;
      v38 = v10;
      v39 = v26;
      v40 = self;
      v41 = v34;
      v42 = v14;
      v43 = v12;
      v28 = v34;
      v29 = v26;
      dispatch_async(fileSystemQueue, v37);

      v15 = v36;
      goto LABEL_10;
    }

    if (v13)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2;
      block[3] = &unk_1E7854B48;
      v47 = v13;
      dispatch_async(v14, block);
      v15 = v47;
LABEL_10:
    }
  }

  else if (v13)
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke;
    v48[3] = &unk_1E7854B48;
    v49 = v13;
    dispatch_async(v14, v48);
    v15 = v49;
    goto LABEL_10;
  }
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v5 = *MEMORY[0x1E696A588];
  v6[0] = @"Cannot cache nil snapshot bundle";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [v2 pui_errorWithCode:7 userInfo:v3];
  (*(v1 + 16))(v1, 0, v4);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] pui_errorWithCode:5];
  (*(v1 + 16))(v1, 0, v2);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_3(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698E610]) initWithFlag:0];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_4;
  v60[3] = &unk_1E78564F8;
  v3 = v2;
  v61 = v3;
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  v64 = v4;
  v65 = v5;
  v62 = *(a1 + 32);
  v63 = *(a1 + 40);
  v6 = MEMORY[0x1AC5769F0](v60);
  os_unfair_lock_lock((*(a1 + 48) + 8));
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_99;
  v59[3] = &unk_1E7854320;
  v59[4] = *(a1 + 48);
  v7 = MEMORY[0x1AC5769F0](v59);
  v8 = PUILogSnapshotCache();
  v9 = v8;
  v10 = *(a1 + 88);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v11 = [*(a1 + 32) bundleURL];
    v12 = *(a1 + 40);
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "cacheSnapshotBundle", "snapshotBundle URL %{public}@ -> %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 40) checkResourceIsReachableAndReturnError:0])
  {
    [*(a1 + 56) removeItemAtURL:*(a1 + 40) error:0];
  }

  v13 = *(a1 + 56);
  v14 = [*(a1 + 40) URLByDeletingLastPathComponent];
  v15 = PFPosterPathFileAttributes();
  v58 = 0;
  v16 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:v15 error:&v58];
  v17 = v58;

  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v67 = __Block_byref_object_copy__7;
    v68 = __Block_byref_object_dispose__7;
    v69 = 0;
    v56[0] = 0;
    v56[1] = v56;
    v56[2] = 0x3032000000;
    v56[3] = __Block_byref_object_copy__7;
    v56[4] = __Block_byref_object_dispose__7;
    v57 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_103;
    v46[3] = &unk_1E7856520;
    v49 = v56;
    v18 = *(a1 + 40);
    v50 = &v52;
    v39 = *(a1 + 48);
    v19 = v39.i64[1];
    v51 = buf;
    v20.i64[0] = *(a1 + 32);
    v20.i64[1] = v18;
    v47 = vextq_s8(v20, v39, 8uLL);
    v48 = vextq_s8(v39, v20, 8uLL);
    v21 = MEMORY[0x1AC5769F0](v46);
    v22 = [*(a1 + 32) bundleURL];
    v23 = [v22 checkResourceIsReachableAndReturnError:0];

    if (v23)
    {
      v24 = *(a1 + 56);
      v25 = [*(a1 + 32) bundleURL];
      v26 = *(a1 + 40);
      v27 = *&buf[8];
      obj = *(*&buf[8] + 40);
      LOBYTE(v24) = [v24 copyItemAtURL:v25 toURL:v26 error:&obj];
      objc_storeStrong((v27 + 40), obj);
      *(v53 + 24) = v24;

      if (*(v53 + 24) == 1)
      {
        v21[2](v21);
      }
    }

    else
    {
      v30 = [[PUIPosterSnapshotBundleBuilder alloc] initWithSnapshotBundle:*(a1 + 32)];
      v31 = [*(a1 + 32) ondiskFormat];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = +[PUIImageOnDiskFormat defaultFormat];
      }

      v34 = v33;

      v35 = *(a1 + 40);
      v36 = *&buf[8];
      v44 = 0;
      v37 = [(PUIPosterSnapshotBundleBuilder *)v30 buildWithOutputURL:v35 diskFormat:v34 error:&v44];
      objc_storeStrong((v36 + 40), v44);

      if (v37)
      {
        v21[2](v21);
      }
    }

    v38 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_2_109;
    block[3] = &unk_1E7856548;
    v41 = v6;
    v42 = v56;
    v43 = buf;
    dispatch_async(v38, block);
    if (*(v53 + 24) == 1 && *(a1 + 72) && !*(*&buf[8] + 40))
    {
      [*(a1 + 48) _cacheLock_cleanupPostersWithOptions:?];
    }

    _Block_object_dispose(&v52, 8);
    _Block_object_dispose(v56, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v28 = PFFunctionNameForAddress();
    v29 = PFGeneralErrorFromObjectWithLocalizedFailureReason();
    (v6)[2](v6, 0, v29);
  }

  v7[2](v7);
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) setFlag:1])
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, v5, v6);
    }

    v8 = PUILogSnapshotCache();
    v9 = v8;
    v10 = *(a1 + 64);
    if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v11 = [*(a1 + 40) bundleURL];
      v12 = *(a1 + 48);
      v13 = 138543618;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_END, v10, "cacheSnapshotBundle", "snapshotBundle URL %{public}@ -> %{public}@", &v13, 0x16u);
    }
  }
}

void __86__PUIPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_options_completion___block_invoke_103(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = [[PUIPosterSnapshotBundle alloc] initWithURL:*(a1 + 32)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if ([*(*(*(a1 + 64) + 8) + 40) isValidBundle])
  {
    v5 = *(*(a1 + 40) + 32);
    v6 = *(*(*(a1 + 64) + 8) + 40);
    v7 = [*(a1 + 32) pf_fileResourceIdentifierWithError:0];
    [v5 setObject:v6 forKey:v7];

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else
  {
    [*(a1 + 48) removeItemAtURL:*(a1 + 32) error:0];
    v8 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A588];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [*(a1 + 56) description];
    v11 = [v9 stringWithFormat:@"Bundle failed to be cached: %@", v10];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v13 = [v8 pui_errorWithCode:7 userInfo:v12];
    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }
}

- (void)_prepareSnapshotCache
{
  v3 = self->_fileManager;
  objc_initWeak(&location, self);
  v4 = [MEMORY[0x1E69C51F0] sharedWorkloop];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__PUIPosterSnapshotFilesystemCache__prepareSnapshotCache__block_invoke;
  block[3] = &unk_1E7854C68;
  objc_copyWeak(&v8, &location);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__PUIPosterSnapshotFilesystemCache__prepareSnapshotCache__block_invoke(uint64_t a1)
{
  v71 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = PUILogSnapshotCache();
    v3 = os_signpost_id_generate(v2);

    v4 = PUILogSnapshotCache();
    v5 = v4;
    v6 = v3 - 1;
    if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }

    v51 = PUIPosterCurrentSnapshotBundleEpochAndVersionIdentifier();
    os_unfair_lock_lock(WeakRetained + 2);
    v7 = [*(WeakRetained + 3) checkResourceIsReachableAndReturnError:0];
    v8 = *(a1 + 32);
    v9 = *(WeakRetained + 3);
    if (v7)
    {
      v47 = v3 - 1;
      v48 = v3;
      [v8 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:0 options:1 error:0];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v63 = 0u;
      v10 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v61;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v61 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v60 + 1) + 8 * i);
            v15 = [v14 lastPathComponent];
            v16 = [v15 containsString:v51];

            if ((v16 & 1) == 0)
            {
              v17 = [v14 pf_fileResourceIdentifierWithError:0];
              if ([*(a1 + 32) removeItemAtURL:v14 error:0])
              {
                v18 = PUILogSnapshotCache();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  v65 = v14;
                  _os_log_impl(&dword_1A8C85000, v18, OS_LOG_TYPE_DEFAULT, "Pruning old epoch: %{public}@", buf, 0xCu);
                }

                [*(WeakRetained + 4) removeObjectForKey:v17];
              }
            }
          }

          v11 = [obj countByEnumeratingWithState:&v60 objects:v70 count:16];
        }

        while (v11);
      }

      v19 = PUILogSnapshotCache();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A8C85000, v19, OS_LOG_TYPE_INFO, "Scanning for pre-cachable snapshot bundles", buf, 2u);
      }

      v20 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v21 = [*(a1 + 32) enumeratorAtURL:*(WeakRetained + 3) includingPropertiesForKeys:0 options:2 errorHandler:0];
      v22 = [v21 countByEnumeratingWithState:&v56 objects:v69 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v57;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v57 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v56 + 1) + 8 * j);
            v27 = [v26 pathExtension];
            v28 = [v27 localizedCompare:@"pks"];

            if (!v28)
            {
              [v20 addObject:v26];
              v29 = PUILogSnapshotCache();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v65 = v26;
                _os_log_impl(&dword_1A8C85000, v29, OS_LOG_TYPE_DEFAULT, "Found precachable url %{public}@", buf, 0xCu);
              }
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v56 objects:v69 count:16];
        }

        while (v23);
      }

      v30 = PUILogSnapshotCache();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = [v20 count];
        *buf = 134217984;
        v65 = v31;
        _os_log_impl(&dword_1A8C85000, v30, OS_LOG_TYPE_INFO, "Found %lu pre-cachable snapshot bundles", buf, 0xCu);
      }

      os_unfair_lock_unlock(WeakRetained + 2);
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v32 = v20;
      v33 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v53;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v53 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v52 + 1) + 8 * k);
            os_unfair_lock_lock(WeakRetained + 2);
            v38 = [v37 pf_fileResourceIdentifierWithError:0];
            v39 = [*(WeakRetained + 4) objectForKey:v38];

            if (v39)
            {
              v40 = PUILogSnapshotCache();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v65 = v37;
                _os_log_error_impl(&dword_1A8C85000, v40, OS_LOG_TYPE_ERROR, "Already cached %{public}@; moving on...", buf, 0xCu);
              }
            }

            else
            {
              v40 = [PUIPosterSnapshotBundle snapshotBundleAtURL:v37 error:0];
              v41 = PUILogSnapshotCache();
              v42 = v41;
              if (v40)
              {
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v65 = v40;
                  v66 = 2114;
                  v67 = v37;
                  _os_log_impl(&dword_1A8C85000, v42, OS_LOG_TYPE_DEFAULT, "PRECACHING %{public}@ @ %{public}@", buf, 0x16u);
                }

                [*(WeakRetained + 4) setObject:v40 forKey:v38];
                v43 = PUILogSnapshotCache();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v65 = v40;
                  v66 = 2114;
                  v67 = v37;
                  _os_log_impl(&dword_1A8C85000, v43, OS_LOG_TYPE_DEFAULT, "PRECACHED %{public}@ @ %{public}@", buf, 0x16u);
                }
              }

              else
              {
                if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v65 = v37;
                  _os_log_error_impl(&dword_1A8C85000, v42, OS_LOG_TYPE_ERROR, "Failed to precache %{public}@; removing", buf, 0xCu);
                }

                [*(a1 + 32) removeItemAtURL:v37 error:0];
              }
            }

            os_unfair_lock_unlock(WeakRetained + 2);
          }

          v34 = [v32 countByEnumeratingWithState:&v52 objects:v68 count:16];
        }

        while (v34);
      }

      v6 = v47;
      v3 = v48;
    }

    else
    {
      v44 = PFPosterPathFileAttributes();
      [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:v44 error:0];

      os_unfair_lock_unlock(WeakRetained + 2);
    }

    v45 = PUILogSnapshotCache();
    v46 = v45;
    if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v46, OS_SIGNPOST_INTERVAL_END, v3, "SnapshotCachePrepare", &unk_1A8D256D3, buf, 2u);
    }
  }
}

- (void)_cacheLock_cleanupPostersWithOptions:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v4 = [v38 cleanupPredicates];
  v5 = [v4 count];

  if (v5)
  {
    os_unfair_lock_assert_owner(&self->_cacheLock);
    v6 = PUILogSnapshotCache();
    v7 = os_signpost_id_generate(v6);

    v8 = PUILogSnapshotCache();
    v9 = v8;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 138543362;
      v55 = v38;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SnapshotCache-cleanupPostersWithOptions", "options: %{public}@", buf, 0xCu);
    }

    spid = v7;

    v11 = objc_opt_new();
    v12 = [(PUIPosterSnapshotFilesystemCache *)self _snapshotBundleURLs];
    v13 = [v12 result:0];

    if ([v13 count])
    {
      v34 = v13;
      v35 = v7 - 1;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v19 = [v38 cleanupPredicates];
            v20 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
            if (v20)
            {
              v21 = v20;
              v22 = *v44;
              do
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v44 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  if (__doesURLMatchPredicate(v18, self->_snapshotBundleContainerURL, *(*(&v43 + 1) + 8 * j)))
                  {
                    [v11 addObject:v18];
                  }
                }

                v21 = [v19 countByEnumeratingWithState:&v43 objects:v52 count:16];
              }

              while (v21);
            }
          }

          v15 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v15);
      }

      v13 = v34;
      v10 = v35;
    }

    v24 = self->_fileManager;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v25 = v11;
    v26 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v40;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v40 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v39 + 1) + 8 * k);
          v31 = [v30 pf_fileResourceIdentifierWithError:0];
          if ([(NSFileManager *)v24 removeItemAtURL:v30 error:0])
          {
            [(NSCache *)self->_cacheLock_URLResourceIdentifierToSnapshotBundleCache removeObjectForKey:v31];
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v39 objects:v51 count:16];
      }

      while (v27);
    }

    v32 = PUILogSnapshotCache();
    v33 = v32;
    if (v10 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
    {
      *buf = 138543362;
      v55 = v25;
      _os_signpost_emit_with_name_impl(&dword_1A8C85000, v33, OS_SIGNPOST_INTERVAL_END, spid, "SnapshotCache-cleanupPostersBefore", "cleanedupPathURLs %{public}@", buf, 0xCu);
    }
  }
}

- (void)initWithURL:(const char *)a1 fileManager:options:error:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[cacheURL checkResourceIsReachableAndReturnError:outError]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)latestSnapshotBundleForPoster:(const char *)a1 snapshotCacheIdentifier:interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[path isServerPosterPath]", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)latestSnapshotBundleForPoster:(os_log_t)log snapshotCacheIdentifier:interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1A8C85000, log, OS_LOG_TYPE_ERROR, "failed to load snapshotBundle %@: %{public}@", &v3, 0x16u);
}

- (void)latestSnapshotBundleForPoster:(const char *)a1 snapshotCacheIdentifier:interfaceOrientation:userInterfaceStyle:hardwareIdentifier:error:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1A8C85000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"[snapshotCacheIdentifier length] > 0", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end