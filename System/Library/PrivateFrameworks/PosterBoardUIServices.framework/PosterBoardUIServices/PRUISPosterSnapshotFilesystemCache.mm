@interface PRUISPosterSnapshotFilesystemCache
+ (id)_defaultCacheLocationURL;
+ (id)incomingCallSnapshotCache;
- (BOOL)checkCacheIsReachable:(id *)reachable;
- (PRUISPosterSnapshotFilesystemCache)initWithURL:(id)l;
- (PUIPosterSnapshotFilesystemCache)underlyingCache;
- (id)_accessCacheWithError:(id *)error;
- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error;
- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion;
- (void)cleanup;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate;
- (void)invalidate;
@end

@implementation PRUISPosterSnapshotFilesystemCache

- (PRUISPosterSnapshotFilesystemCache)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PRUISPosterSnapshotFilesystemCache;
  v6 = [(PRUISPosterSnapshotFilesystemCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheURL, l);
  }

  return v7;
}

- (id)_accessCacheWithError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  underlyingCache = selfCopy->_underlyingCache;
  if (!underlyingCache)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C55E8]) initWithURL:selfCopy->_cacheURL fileManager:0 options:0 error:error];
    v7 = selfCopy->_underlyingCache;
    selfCopy->_underlyingCache = v6;

    underlyingCache = selfCopy->_underlyingCache;
  }

  v8 = underlyingCache;
  objc_sync_exit(selfCopy);

  return v8;
}

- (PUIPosterSnapshotFilesystemCache)underlyingCache
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  underlyingCache = selfCopy->_underlyingCache;
  if (underlyingCache)
  {
    v4 = underlyingCache;
  }

  else
  {
    v4 = [(PRUISPosterSnapshotFilesystemCache *)selfCopy _accessCacheWithError:0];
  }

  v5 = v4;
  objc_sync_exit(selfCopy);

  return v5;
}

- (BOOL)checkCacheIsReachable:(id *)reachable
{
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 checkCacheIsReachableWithError:reachable];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)latestSnapshotBundleForRequest:(id)request error:(id *)error
{
  v6 = [(PRUISPosterSnapshotFilesystemCache *)self puirequestForPRUISRequest:request error:?];
  if (v6)
  {
    v7 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:error];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 latestSnapshotBundleForRequest:v6 error:error];
      v10 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)cacheSnapshotBundle:(id)bundle forRequest:(id)request completion:(id)completion
{
  bundleCopy = bundle;
  requestCopy = request;
  completionCopy = completion;
  v23 = 0;
  v11 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:&v23];
  v12 = v23;
  if (completionCopy && !v11)
  {
    completionCopy[2](completionCopy, 0, v12);
  }

  v22 = 0;
  v13 = [(PRUISPosterSnapshotFilesystemCache *)self puirequestForPRUISRequest:requestCopy error:&v22];
  v14 = v22;
  v15 = v14;
  if (v13)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (completionCopy && v17)
  {
    completionCopy[2](completionCopy, 0, v14);
  }

  underlyingSnapshotBundle = [bundleCopy underlyingSnapshotBundle];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__PRUISPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_completion___block_invoke;
  v20[3] = &unk_1E83A7238;
  v21 = completionCopy;
  v19 = completionCopy;
  [v11 cacheSnapshotBundle:underlyingSnapshotBundle forRequest:v13 completion:v20];
}

void __80__PRUISPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v8)
  {
    v6 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v6, v5);
  }
}

- (void)discardSnapshotsForPostersMatchingPredicate:(id)predicate
{
  predicateCopy = predicate;
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:0];
  v5 = v4;
  if (v4)
  {
    [v4 discardSnapshotsForPostersMatchingPredicate:predicateCopy];
  }
}

- (void)cleanup
{
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:0];
  cleanup = [v4 cleanup];
  v3 = [cleanup resultWithTimeout:0 error:3.0];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(PUIPosterSnapshotFilesystemCache *)obj->_underlyingCache invalidate];
  underlyingCache = obj->_underlyingCache;
  obj->_underlyingCache = 0;

  objc_sync_exit(obj);
}

+ (id)_defaultCacheLocationURL
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [defaultManager URLsForDirectory:13 inDomains:1];
  firstObject = [v3 firstObject];
  v5 = [firstObject URLByAppendingPathComponent:@"com.apple.ShareNameAndPhoto" isDirectory:1];

  return v5;
}

+ (id)incomingCallSnapshotCache
{
  _defaultCacheLocationURL = [self _defaultCacheLocationURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = PFFileProtectionNoneAttributes();
  v10 = 0;
  v5 = [defaultManager createDirectoryAtURL:_defaultCacheLocationURL withIntermediateDirectories:1 attributes:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [[PRUISPosterSnapshotFilesystemCache alloc] initWithURL:_defaultCacheLocationURL];
  }

  else
  {
    v8 = PRUISLogSnapshotting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(PRUISPosterSnapshotFilesystemCache(IncomingCallAdditions) *)_defaultCacheLocationURL];
    }

    v7 = 0;
  }

  return v7;
}

@end