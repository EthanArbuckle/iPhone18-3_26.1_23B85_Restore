@interface InProgressAssetQuery
+ (void)currentInProgressAssetIDs:(id *)a3 restoringAssetIDs:(id *)a4;
- (BOOL)_fetchResults;
- (InProgressAssetQuery)init;
- (id)_inProgressAssetIDs;
- (id)_restoringAssetIDs;
- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4;
- (void)dealloc;
@end

@implementation InProgressAssetQuery

+ (void)currentInProgressAssetIDs:(id *)a3 restoringAssetIDs:(id *)a4
{
  *a3 = 0;
  *a4 = 0;
  v7 = objc_alloc_init(InProgressAssetQuery);
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  [v6 addObserver:v7];
  if ([(InProgressAssetQuery *)v7 _fetchResults])
  {
    *a3 = [(InProgressAssetQuery *)v7 _inProgressAssetIDs];
    *a4 = [(InProgressAssetQuery *)v7 _restoringAssetIDs];
  }

  [v6 removeObserver:v7];
}

- (InProgressAssetQuery)init
{
  v4.receiver = self;
  v4.super_class = InProgressAssetQuery;
  v2 = [(InProgressAssetQuery *)&v4 init];
  if (v2)
  {
    v2->_waitForInitialObservationData = dispatch_semaphore_create(0);
  }

  return v2;
}

- (void)dealloc
{
  dispatch_release(self->_waitForInitialObservationData);
  v3.receiver = self;
  v3.super_class = InProgressAssetQuery;
  [(InProgressAssetQuery *)&v3 dealloc];
}

- (id)_inProgressAssetIDs
{
  v2 = self->_inProgressAssetIDs;

  return v2;
}

- (id)_restoringAssetIDs
{
  v2 = self->_restoringAssetIDs;

  return v2;
}

- (BOOL)_fetchResults
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Waiting for -applicationInstallsArePrioritized:arePaused: to complete...", buf, 2u);
  }

  v4 = dispatch_semaphore_wait(self->_waitForInitialObservationData, 0xFFFFFFFFFFFFFFFFLL);
  v5 = _ATLogCategorySyncBundle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v7 = "Query for in progress assets timed out";
      v8 = &v13;
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
LABEL_8:
      _os_log_impl(&dword_0, v9, v10, v7, v8, 2u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 0;
    v7 = "Wait completed";
    v8 = &v12;
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_8;
  }

  return v4 == 0;
}

- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4
{
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v42 = a3;
    v43 = 2114;
    v44 = a4;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "prioritized proxies %{public}@ paused proxies %{public}@", buf, 0x16u);
  }

  if (!self->_inProgressAssetIDs)
  {
    self->_inProgressAssetIDs = [[NSMutableArray alloc] initWithCapacity:0];
    self->_restoringAssetIDs = [[NSMutableArray alloc] initWithCapacity:0];
    if ([a3 count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = [a3 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (!v8)
      {
        goto LABEL_55;
      }

      v9 = v8;
      v10 = *v38;
      v35 = self;
      while (1)
      {
        v11 = 0;
        v36 = v9;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(a3);
          }

          v12 = *(*(&v37 + 1) + 8 * v11);
          v13 = [v12 applicationIdentifier];
          if (![v12 isPlaceholder])
          {
            v23 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            *buf = 138543362;
            v42 = v13;
            v24 = v23;
            v25 = "No placeholder for asset identifier %{public}@";
LABEL_20:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
            goto LABEL_50;
          }

          v14 = [v12 installProgressSync];
          if (!v14)
          {
            v26 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            *buf = 138543362;
            v42 = v13;
            v24 = v26;
            v25 = "No install progress found for asset identifier %{public}@";
            goto LABEL_20;
          }

          v15 = v14;
          v16 = v10;
          v17 = a3;
          v18 = [v12 installType];
          v19 = [v15 installState];
          v20 = [v15 installPhase];
          v21 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (v18 < 0xA && ((0x2FFu >> v18) & 1) != 0)
            {
              v22 = *(&off_18678 + v18);
            }

            else
            {
              v22 = [NSString stringWithFormat:@"Unknown Install Type: %lu", v18];
            }

            if (v19 >= 6)
            {
              v27 = [NSString stringWithFormat:@"Unknown Install State: %lu", v19];
            }

            else
            {
              v27 = *(&off_186C8 + v19);
            }

            if (v20 >= 4)
            {
              v28 = [NSString stringWithFormat:@"Unknown Install Phase: %lu", v20];
            }

            else
            {
              v28 = *(&off_186F8 + v20);
            }

            *buf = 138544130;
            v42 = v22;
            v43 = 2114;
            v44 = v27;
            v45 = 2114;
            v46 = v28;
            v47 = 2114;
            v48 = v13;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Got install type=%{public}@ state=%{public}@ phase=%{public}@ for %{public}@", buf, 0x2Au);
            self = v35;
          }

          v29 = v19 == &dword_0 + 1 && v20 == &dword_0 + 1;
          v30 = !v29 || v18 == 2;
          if (!v30 || (v19 == &dword_0 + 1 ? (v31 = v20 == 0) : (v31 = 0), v31 ? (v32 = v18 == 1) : (v32 = 0), v32))
          {
            [(NSMutableArray *)self->_inProgressAssetIDs addObject:v13];
            a3 = v17;
            v10 = v16;
            v9 = v36;
          }

          else
          {
            v29 = v18 == 2;
            a3 = v17;
            v10 = v16;
            v9 = v36;
            if (v29 && v19 == &dword_0 + 1 && v20 <= 1)
            {
              [(NSMutableArray *)self->_restoringAssetIDs addObject:v13];
            }
          }

LABEL_50:
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [a3 countByEnumeratingWithState:&v37 objects:v49 count:16];
        if (!v9)
        {
          goto LABEL_55;
        }
      }
    }

    v33 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "No assets currently in progress.", buf, 2u);
    }

LABEL_55:
    v34 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "signaling semaphore", buf, 2u);
    }

    dispatch_semaphore_signal(self->_waitForInitialObservationData);
  }
}

@end