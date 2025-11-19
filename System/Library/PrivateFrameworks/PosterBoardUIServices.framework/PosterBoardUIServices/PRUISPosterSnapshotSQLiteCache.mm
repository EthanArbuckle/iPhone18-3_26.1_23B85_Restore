@interface PRUISPosterSnapshotSQLiteCache
- (BOOL)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 error:(id *)a5;
- (BOOL)checkCacheIsReachable:(id *)a3;
- (PRUISPosterSnapshotSQLiteCache)initWithURL:(id)a3;
- (PUIPosterSnapshotSQLiteCache)underlyingCache;
- (id)_accessCacheWithError:(id *)a3;
- (id)_buildOptionsForRequest:(id)a3;
- (id)latestSnapshotBundleForRequest:(id)a3 error:(id *)a4;
- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5;
- (void)cleanup;
- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3;
- (void)invalidate;
@end

@implementation PRUISPosterSnapshotSQLiteCache

- (PRUISPosterSnapshotSQLiteCache)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRUISPosterSnapshotSQLiteCache;
  v6 = [(PRUISPosterSnapshotSQLiteCache *)&v9 init];
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
    v6 = [objc_alloc(MEMORY[0x1E69C5608]) initWithURL:v4->_cacheURL fileManager:0 options:0 error:a3];
    v7 = v4->_underlyingCache;
    v4->_underlyingCache = v6;

    underlyingCache = v4->_underlyingCache;
  }

  v8 = underlyingCache;
  objc_sync_exit(v4);

  return v8;
}

- (PUIPosterSnapshotSQLiteCache)underlyingCache
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
    v4 = [(PRUISPosterSnapshotSQLiteCache *)v2 _accessCacheWithError:0];
  }

  v5 = v4;
  objc_sync_exit(v2);

  return v5;
}

- (BOOL)checkCacheIsReachable:(id *)a3
{
  v4 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:?];
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
  v6 = a3;
  v7 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:v6 error:a4];
  if (v7)
  {
    v8 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:a4];
    if (v8)
    {
      v9 = [MEMORY[0x1E69C55C8] predicateMatchingRequest:v7];
      v10 = [v6 snapshotDescriptor];
      v11 = [v10 predicateOptions];

      v12 = [v9 predicateApplyingOptions:v11];
      v13 = [v8 latestSnapshotBundleMatchingPredicate:v12 outError:a4];
      v14 = [PRUISPosterSnapshotBundle snapshotBundleWithPUIPosterSnapshotBundle:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v24 = 0;
  v10 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v23 = 0;
    v13 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:v9 error:&v23];
    v14 = v23;
    v15 = v14;
    if (v13)
    {
      v16 = [v8 underlyingSnapshotBundle];
      v17 = [(PRUISPosterSnapshotSQLiteCache *)self _buildOptionsForRequest:v13];
      v18 = [v10 cacheSnapshotBundle:v16 options:v17 outError:a5];
      v19 = v18 != 0;
    }

    else if (a5)
    {
      v21 = v14;
      v19 = 0;
      *a5 = v15;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (a5)
  {
    v20 = v11;
    v19 = 0;
    *a5 = v12;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)cacheSnapshotBundle:(id)a3 forRequest:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v11 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:&v21];
  v12 = v21;
  if (v11)
  {
    v20 = 0;
    v13 = [(PRUISPosterSnapshotSQLiteCache *)self puirequestForPRUISRequest:v9 error:&v20];
    v14 = v20;
    if (v13)
    {
      v15 = [v8 underlyingSnapshotBundle];
      v16 = [(PRUISPosterSnapshotSQLiteCache *)self _buildOptionsForRequest:v13];
      v17 = [v11 cacheSnapshotBundle:v15 options:v16];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __76__PRUISPosterSnapshotSQLiteCache_cacheSnapshotBundle_forRequest_completion___block_invoke;
      v18[3] = &unk_1E83A7238;
      v19 = v10;
      [v17 addCompletionBlock:v18];
    }

    else if (v10)
    {
      (*(v10 + 2))(v10, 0, v14);
    }
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0, v12);
  }
}

void __76__PRUISPosterSnapshotSQLiteCache_cacheSnapshotBundle_forRequest_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (id)_buildOptionsForRequest:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 path];
  v5 = [v4 isServerPosterPath];

  if (v5)
  {
    v6 = [v3 path];
    v7 = [v6 serverIdentity];

    v8 = [v7 posterUUID];
    if (v8)
    {
      v9 = [v7 version];

      if (v9)
      {
        v10 = MEMORY[0x1E69C55C8];
        v11 = [v7 version];
        v12 = [v7 posterUUID];
        v13 = [v10 predicateMatchingBundleWithPosterVersionLessThan:v11 posterUUID:v12];

        v14 = MEMORY[0x1E69C55D0];
        v17[0] = v13;
        v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
        v8 = [v14 removeBundlesMatchingPredicates:v15];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cleanup
{
  v3 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:0];
  v2 = [v3 cleanupWithError:0];
}

- (void)discardSnapshotsForPostersMatchingPredicate:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PRUISPosterSnapshotSQLiteCache *)self _accessCacheWithError:0];
  if (v5)
  {
    v6 = [MEMORY[0x1E69C55C8] truePredicate];
    v49 = 0;
    v7 = [v5 snapshotBundlesMatchingPredicate:v6 outError:&v49];
    v8 = v49;

    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v36 = self;
      v37 = v8;
      v39 = v5;
      v10 = objc_opt_new();
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v38 = v7;
      v11 = v7;
      v12 = [v11 countByEnumeratingWithState:&v45 objects:v59 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v46;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            v17 = [v16 bundleURL];
            v18 = [v4 evaluateWithObject:v17];

            if (v18)
            {
              [v10 addObject:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v45 objects:v59 count:16];
        }

        while (v13);
      }

      if ([v10 count])
      {
        v19 = MEMORY[0x1E69C55C8];
        v20 = [v10 firstObject];
        v21 = [v19 predicateMatchingContext:v20];
        v22 = [v21 SQLitePredicate];

        [v10 removeObjectAtIndex:0];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v10 = v10;
        v23 = [v10 countByEnumeratingWithState:&v41 objects:v58 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v42;
          do
          {
            v26 = 0;
            v27 = v22;
            do
            {
              if (*v42 != v25)
              {
                objc_enumerationMutation(v10);
              }

              v28 = [MEMORY[0x1E69C55C8] predicateMatchingContext:*(*(&v41 + 1) + 8 * v26)];
              v29 = [v28 SQLitePredicate];
              v22 = [v27 orPredicate:v29];

              ++v26;
              v27 = v22;
            }

            while (v24 != v26);
            v24 = [v10 countByEnumeratingWithState:&v41 objects:v58 count:16];
          }

          while (v24);
        }

        v40 = 0;
        v5 = v39;
        v30 = [v39 discardSnapshotBundlesMatchingSQLPredicate:v22 outError:&v40];
        v31 = v40;
        if (v31)
        {
          v32 = PRUISLogSnapshotting();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            v35 = [v31 pf_description];
            *buf = 138544130;
            v51 = v34;
            v52 = 2050;
            v53 = v36;
            v54 = 2114;
            v55 = v22;
            v56 = 2114;
            v57 = v35;
            _os_log_error_impl(&dword_1CAE63000, v32, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p> error discarding snapshot bundles using predicate: %{public}@, error: %{public}@", buf, 0x2Au);
          }
        }
      }

      else
      {
        v5 = v39;
      }

      v8 = v37;
      v7 = v38;
    }

    else
    {
      v10 = PRUISLogSnapshotting();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(PRUISPosterSnapshotSQLiteCache *)self discardSnapshotsForPostersMatchingPredicate:v8, v10];
      }
    }
  }
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(PUIPosterSnapshotSQLiteCache *)obj->_underlyingCache invalidate];
  underlyingCache = obj->_underlyingCache;
  obj->_underlyingCache = 0;

  objc_sync_exit(obj);
}

- (void)discardSnapshotsForPostersMatchingPredicate:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [a2 pf_description];
  v9 = 138543874;
  v10 = v7;
  v11 = 2050;
  v12 = a1;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_1CAE63000, a3, OS_LOG_TYPE_ERROR, "<%{public}@:%{public}p>error fetching snapshotBundles matching predicate, cannot discard: %{public}@", &v9, 0x20u);
}

@end