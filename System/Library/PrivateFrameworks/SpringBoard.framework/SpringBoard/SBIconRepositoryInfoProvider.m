@interface SBIconRepositoryInfoProvider
+ (SBIconRepositoryInfoProvider)sharedInstance;
- (NSArray)applicationPlaceholders;
- (NSArray)applications;
- (SBIconRepositoryInfoProvider)init;
- (SBIconRepositoryInfoProvider)initWithApplicationController:(id)a3 applicationPlaceholderController:(id)a4;
- (void)addApplicationInfoProviderObserver:(id)a3;
- (void)dealloc;
- (void)installedAppPlaceholdersDidChange:(id)a3;
- (void)installedAppsDidChange:(id)a3;
@end

@implementation SBIconRepositoryInfoProvider

+ (SBIconRepositoryInfoProvider)sharedInstance
{
  if (sharedInstance_onceToken_35 != -1)
  {
    +[SBIconRepositoryInfoProvider sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_6;

  return v3;
}

void __46__SBIconRepositoryInfoProvider_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBIconRepositoryInfoProvider);
  v1 = sharedInstance_sharedInstance_6;
  sharedInstance_sharedInstance_6 = v0;
}

- (SBIconRepositoryInfoProvider)initWithApplicationController:(id)a3 applicationPlaceholderController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = SBIconRepositoryInfoProvider;
  v9 = [(SBIconRepositoryInfoProvider *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_applicationController, a3);
    objc_storeStrong(&v10->_applicationPlaceholderController, a4);
    v11 = [v7 allApplications];
    v12 = [v11 copy];
    cachedApplications = v10->_cachedApplications;
    v10->_cachedApplications = v12;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v10 selector:sel_installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:v7];

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v10 selector:sel_installedAppPlaceholdersDidChange_ name:@"SBApplicationPlaceholdersDidChangeNotification" object:v8];
  }

  return v10;
}

- (SBIconRepositoryInfoProvider)init
{
  v3 = +[SBApplicationController sharedInstance];
  v4 = +[SBApplicationPlaceholderController sharedInstance];
  v5 = [(SBIconRepositoryInfoProvider *)self initWithApplicationController:v3 applicationPlaceholderController:v4];

  return v5;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBIconRepositoryInfoProvider;
  [(SBIconRepositoryInfoProvider *)&v4 dealloc];
}

- (NSArray)applications
{
  v2 = [(SBIconRepositoryInfoProvider *)self applicationController];
  v3 = [v2 allApplications];

  return v3;
}

- (NSArray)applicationPlaceholders
{
  v2 = [(SBIconRepositoryInfoProvider *)self applicationPlaceholderController];
  v3 = [v2 placeholdersByDisplayID];
  v4 = [v3 allValues];

  return v4;
}

- (void)addApplicationInfoProviderObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)installedAppsDidChange:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SBIconRepositoryInfoProvider *)self applicationController];
  v45 = v4;
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];
  v50 = [v6 objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];
  v49 = [v6 objectForKey:@"SBInstalledApplicationsUpdatedBundleIDs"];
  v44 = v6;
  v48 = [v6 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];
  v41 = [(SBIconRepositoryInfoProvider *)self cachedApplications];
  v43 = v7;
  v8 = [v7 allObjects];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke;
  v69[3] = &unk_2783BC368;
  v9 = v5;
  v70 = v9;
  v10 = [v8 bs_compactMap:v69];

  if ([v10 count])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v66;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v66 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v65 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v16 applicationInfoProvider:self didAddApplications:v10];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v13);
    }
  }

  v17 = [v49 allObjects];
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_2;
  v63[3] = &unk_2783BC368;
  v18 = v9;
  v64 = v18;
  v19 = [v17 bs_compactMap:v63];

  v20 = [v50 allObjects];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_3;
  v61[3] = &unk_2783BC368;
  v40 = v18;
  v62 = v40;
  v21 = [v20 bs_compactMap:v61];

  v46 = v21;
  v47 = v19;
  if ([v19 count] || objc_msgSend(v21, "count"))
  {
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v23 = v22;
    if (v19)
    {
      [v22 addObjectsFromArray:v19];
    }

    if (v21)
    {
      [v23 addObjectsFromArray:v21];
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v24 = [(NSHashTable *)self->_observers copy];
    v25 = [v24 countByEnumeratingWithState:&v57 objects:v72 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v58;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v58 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v57 + 1) + 8 * j);
          if (objc_opt_respondsToSelector())
          {
            [v29 applicationInfoProvider:self didUpdateApplications:v23];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v57 objects:v72 count:16];
      }

      while (v26);
    }

    v19 = v47;
  }

  v30 = [v48 allObjects];
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_4;
  v55[3] = &unk_2783BC368;
  v31 = v41;
  v56 = v31;
  v32 = [v30 bs_compactMap:v55];

  if ([v32 count])
  {
    v42 = v31;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v33 = [(NSHashTable *)self->_observers copy];
    v34 = [v33 countByEnumeratingWithState:&v51 objects:v71 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v52;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v52 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v51 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v38 applicationInfoProvider:self didRemoveApplications:v32];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v51 objects:v71 count:16];
      }

      while (v35);
    }

    v21 = v46;
    v19 = v47;
    v31 = v42;
  }

  v39 = [v40 allApplications];
  [(SBIconRepositoryInfoProvider *)self setCachedApplications:v39];
}

id __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_5;
  v8[3] = &unk_2783B7288;
  v9 = v3;
  v5 = v3;
  v6 = [v4 bs_firstObjectPassingTest:v8];

  return v6;
}

uint64_t __55__SBIconRepositoryInfoProvider_installedAppsDidChange___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)installedAppPlaceholdersDidChange:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"__placeholdersAdded"];
  v6 = [v4 objectForKey:@"__placeholdersModified"];
  v26 = v4;
  v7 = [v4 objectForKey:@"__placeholdersRemoved"];
  if ([v5 count])
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = [(NSHashTable *)self->_observers copy];
    v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v36;
      do
      {
        v12 = 0;
        do
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v35 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 applicationInfoProvider:self didAddApplicationPlaceholders:v5];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v10);
    }
  }

  if ([v6 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = [(NSHashTable *)self->_observers copy];
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        v18 = 0;
        do
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * v18);
          if (objc_opt_respondsToSelector())
          {
            [v19 applicationInfoProvider:self didUpdateApplicationPlaceholders:v6];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v16);
    }
  }

  if ([v7 count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = [(NSHashTable *)self->_observers copy];
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        v24 = 0;
        do
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v27 + 1) + 8 * v24);
          if (objc_opt_respondsToSelector())
          {
            [v25 applicationInfoProvider:self didRemoveApplicationPlaceholders:v7];
          }

          ++v24;
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v22);
    }
  }
}

@end