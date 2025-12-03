@interface InProgressAssetQuery
+ (void)currentInProgressAssetIDs:(id *)ds restoringAssetIDs:(id *)iDs;
- (BOOL)_fetchResults;
- (InProgressAssetQuery)init;
- (id)_inProgressAssetIDs;
- (id)_restoringAssetIDs;
- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused;
- (void)dealloc;
@end

@implementation InProgressAssetQuery

+ (void)currentInProgressAssetIDs:(id *)ds restoringAssetIDs:(id *)iDs
{
  *ds = 0;
  *iDs = 0;
  v7 = objc_alloc_init(InProgressAssetQuery);
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  [v6 addObserver:v7];
  if ([(InProgressAssetQuery *)v7 _fetchResults])
  {
    *ds = [(InProgressAssetQuery *)v7 _inProgressAssetIDs];
    *iDs = [(InProgressAssetQuery *)v7 _restoringAssetIDs];
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

- (void)applicationInstallsArePrioritized:(id)prioritized arePaused:(id)paused
{
  v7 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    prioritizedCopy = prioritized;
    v43 = 2114;
    pausedCopy = paused;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "prioritized proxies %{public}@ paused proxies %{public}@", buf, 0x16u);
  }

  if (!self->_inProgressAssetIDs)
  {
    self->_inProgressAssetIDs = [[NSMutableArray alloc] initWithCapacity:0];
    self->_restoringAssetIDs = [[NSMutableArray alloc] initWithCapacity:0];
    if ([prioritized count])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v8 = [prioritized countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (!v8)
      {
        goto LABEL_55;
      }

      v9 = v8;
      v10 = *v38;
      selfCopy = self;
      while (1)
      {
        v11 = 0;
        v36 = v9;
        do
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(prioritized);
          }

          v12 = *(*(&v37 + 1) + 8 * v11);
          applicationIdentifier = [v12 applicationIdentifier];
          if (![v12 isPlaceholder])
          {
            v23 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            *buf = 138543362;
            prioritizedCopy = applicationIdentifier;
            v24 = v23;
            v25 = "No placeholder for asset identifier %{public}@";
LABEL_20:
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
            goto LABEL_50;
          }

          installProgressSync = [v12 installProgressSync];
          if (!installProgressSync)
          {
            v26 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_50;
            }

            *buf = 138543362;
            prioritizedCopy = applicationIdentifier;
            v24 = v26;
            v25 = "No install progress found for asset identifier %{public}@";
            goto LABEL_20;
          }

          v15 = installProgressSync;
          v16 = v10;
          prioritizedCopy2 = prioritized;
          installType = [v12 installType];
          installState = [v15 installState];
          installPhase = [v15 installPhase];
          v21 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (installType < 0xA && ((0x2FFu >> installType) & 1) != 0)
            {
              v22 = *(&off_18678 + installType);
            }

            else
            {
              v22 = [NSString stringWithFormat:@"Unknown Install Type: %lu", installType];
            }

            if (installState >= 6)
            {
              v27 = [NSString stringWithFormat:@"Unknown Install State: %lu", installState];
            }

            else
            {
              v27 = *(&off_186C8 + installState);
            }

            if (installPhase >= 4)
            {
              v28 = [NSString stringWithFormat:@"Unknown Install Phase: %lu", installPhase];
            }

            else
            {
              v28 = *(&off_186F8 + installPhase);
            }

            *buf = 138544130;
            prioritizedCopy = v22;
            v43 = 2114;
            pausedCopy = v27;
            v45 = 2114;
            v46 = v28;
            v47 = 2114;
            v48 = applicationIdentifier;
            _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "Got install type=%{public}@ state=%{public}@ phase=%{public}@ for %{public}@", buf, 0x2Au);
            self = selfCopy;
          }

          v29 = installState == &dword_0 + 1 && installPhase == &dword_0 + 1;
          v30 = !v29 || installType == 2;
          if (!v30 || (installState == &dword_0 + 1 ? (v31 = installPhase == 0) : (v31 = 0), v31 ? (v32 = installType == 1) : (v32 = 0), v32))
          {
            [(NSMutableArray *)self->_inProgressAssetIDs addObject:applicationIdentifier];
            prioritized = prioritizedCopy2;
            v10 = v16;
            v9 = v36;
          }

          else
          {
            v29 = installType == 2;
            prioritized = prioritizedCopy2;
            v10 = v16;
            v9 = v36;
            if (v29 && installState == &dword_0 + 1 && installPhase <= 1)
            {
              [(NSMutableArray *)self->_restoringAssetIDs addObject:applicationIdentifier];
            }
          }

LABEL_50:
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [prioritized countByEnumeratingWithState:&v37 objects:v49 count:16];
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