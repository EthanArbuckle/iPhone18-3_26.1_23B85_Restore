@interface PRUISPosterSnapshotFilesystemCache
+ (id)_defaultCacheLocationURL;
+ (id)incomingCallSnapshotCache;
- (BOOL)checkCacheIsReachable:(id *)a3;
- (PRUISPosterSnapshotFilesystemCache)initWithURL:(id)a3;
- (PUIPosterSnapshotFilesystemCache)underlyingCache;
- (id)_accessCacheWithError:(id *)a3;
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)cleanup;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3;
- (void)invalidate;
@end

@implementation PRUISPosterSnapshotFilesystemCache

- (PRUISPosterSnapshotFilesystemCache)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRUISPosterSnapshotFilesystemCache;
  v6 = [(PRUISPosterSnapshotFilesystemCache *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cacheURL, a3);
  }

  return v7;
}

- (id)_accessCacheWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  underlyingCache = v4->_underlyingCache;
  if (!underlyingCache)
  {
    v6 = [objc_alloc(MEMORY[0x1E69C55E8]) initWithURL:v4->_cacheURL fileManager:0 options:0 error:a3];
    v7 = v4->_underlyingCache;
    v4->_underlyingCache = v6;

    underlyingCache = v4->_underlyingCache;
  }

  v8 = underlyingCache;
  objc_sync_exit(v4);

  return v8;
}

- (PUIPosterSnapshotFilesystemCache)underlyingCache
{
  v2 = self;
  objc_sync_enter(v2);
  underlyingCache = v2->_underlyingCache;
  if (underlyingCache)
  {
    v4 = underlyingCache;
  }

  else
  {
    v4 = [(PRUISPosterSnapshotFilesystemCache *)v2 _accessCacheWithError:0];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (BOOL)checkCacheIsReachable:(id *)a3
{
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 checkCacheIsReachableWithError:a3];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4
{
  v6 = [(PRUISPosterSnapshotFilesystemCache *)self puirequestForPRUISRequest:a3 error:?];
  if (v6)
  {
    v7 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:a4];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 latestSnapshotBundleForRequest:v6 error:a4];
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

- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v11 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:&v23];
  v12 = v23;
  if (v10 && !v11)
  {
    v10[2](v10, 0, v12);
  }

  v22 = 0;
  v13 = [(PRUISPosterSnapshotFilesystemCache *)self puirequestForPRUISRequest:v9 error:&v22];
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
  if (v10 && v17)
  {
    v10[2](v10, 0, v14);
  }

  v18 = [v8 underlyingSnapshotBundle];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __80__PRUISPosterSnapshotFilesystemCache_cacheSnapshotBundle_forRequest_completion___block_invoke;
  v20[3] = &unk_1E83A7238;
  v21 = v10;
  v19 = v10;
  [v11 cacheSnapshotBundle:v18 forRequest:v13 completion:v20];
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

- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3
{
  v6 = a3;
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:0];
  v5 = v4;
  if (v4)
  {
    [v4 discardSnapshotsForPostersMatchingPredicate:v6];
  }
}

- (void)cleanup
{
  v4 = [(PRUISPosterSnapshotFilesystemCache *)self _accessCacheWithError:0];
  v2 = [v4 cleanup];
  v3 = [v2 resultWithTimeout:0 error:3.0];
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
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [v2 URLsForDirectory:13 inDomains:1];
  v4 = [v3 firstObject];
  v5 = [v4 URLByAppendingPathComponent:@"com.apple.ShareNameAndPhoto" isDirectory:1];

  return v5;
}

+ (id)incomingCallSnapshotCache
{
  v2 = [a1 _defaultCacheLocationURL];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = PFFileProtectionNoneAttributes();
  v10 = 0;
  v5 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:v4 error:&v10];
  v6 = v10;

  if (v5)
  {
    v7 = [[PRUISPosterSnapshotFilesystemCache alloc] initWithURL:v2];
  }

  else
  {
    v8 = PRUISLogSnapshotting();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[(PRUISPosterSnapshotFilesystemCache(IncomingCallAdditions) *)v2];
    }

    v7 = 0;
  }

  return v7;
}

@end