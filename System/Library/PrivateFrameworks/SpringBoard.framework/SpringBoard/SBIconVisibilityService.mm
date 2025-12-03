@interface SBIconVisibilityService
- (SBIconVisibilityService)initWithIconModel:(id)model;
- (id)iconStateDisplayIdentifiers;
- (void)_visibleIdentifiersChanged:(id)changed;
- (void)dealloc;
@end

@implementation SBIconVisibilityService

- (id)iconStateDisplayIdentifiers
{
  [(NSLock *)self->_iconStateDisplayIdentifiersLock lock];
  v3 = self->_iconStateDisplayIdentifiers;
  [(NSLock *)self->_iconStateDisplayIdentifiersLock unlock];

  return v3;
}

- (SBIconVisibilityService)initWithIconModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = SBIconVisibilityService;
  v6 = [(SBIconVisibilityService *)&v11 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    iconStateDisplayIdentifiersLock = v6->_iconStateDisplayIdentifiersLock;
    v6->_iconStateDisplayIdentifiersLock = v7;

    objc_storeStrong(&v6->_iconModel, model);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__visibleIdentifiersChanged_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
    [defaultCenter addObserver:v6 selector:sel__visibleIdentifiersChanged_ name:*MEMORY[0x277D666F8] object:modelCopy];
    [defaultCenter addObserver:v6 selector:sel__visibleIdentifiersChanged_ name:*MEMORY[0x277D666E8] object:modelCopy];
    [defaultCenter addObserver:v6 selector:sel__visibleIdentifiersChanged_ name:*MEMORY[0x277D66708] object:modelCopy];
    [defaultCenter addObserver:v6 selector:sel__visibleIdentifiersChanged_ name:*MEMORY[0x277D666F0] object:modelCopy];
    [(SBIconVisibilityService *)v6 _visibleIdentifiersChanged:0];
  }

  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBIconVisibilityService;
  [(SBIconVisibilityService *)&v4 dealloc];
}

- (void)_visibleIdentifiersChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__SBIconVisibilityService__visibleIdentifiersChanged___block_invoke;
  v6[3] = &unk_2783A92D8;
  v7 = changedCopy;
  selfCopy = self;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__SBIconVisibilityService__visibleIdentifiersChanged___block_invoke(uint64_t a1)
{
  v74 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  v3 = [@"SBInstalledApplicationsDidChangeNotification" isEqualToString:v2];
  v4 = *(a1 + 32);
  if (v4)
  {
    if ((v3 & 1) == 0)
    {
      v5 = [v4 object];
      v6 = *(*(a1 + 40) + 8);

      if (v5 != v6)
      {
        goto LABEL_61;
      }
    }
  }

  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = [*(a1 + 40) iconStateDisplayIdentifiers];
  v9 = [v7 initWithSet:v8];

  v10 = [v9 mutableCopy];
  v11 = [*(a1 + 32) userInfo];
  if ([*MEMORY[0x277D666F8] isEqualToString:v2])
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = [v11 objectForKey:*MEMORY[0x277D66878]];
    v13 = [v12 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v67;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v67 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v66 + 1) + 8 * i);
          if ([v17 isApplicationIcon] && objc_msgSend(v17, "hasApplication"))
          {
            v18 = [v17 applicationBundleID];
            [v10 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v14);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v19 = [v11 objectForKey:*MEMORY[0x277D66870]];
    v20 = [v19 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v63;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v63 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v62 + 1) + 8 * j);
          if ([v24 isApplicationIcon])
          {
            v25 = [v24 applicationBundleID];
            [v10 removeObject:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v62 objects:v72 count:16];
      }

      while (v21);
    }

    goto LABEL_57;
  }

  if (v3)
  {
    v48 = v9;
    v26 = objc_alloc(MEMORY[0x277CBEB58]);
    v27 = [v11 objectForKey:@"SBInstalledApplicationsAddedBundleIDs"];
    v28 = [v26 initWithSet:v27];

    v49 = v11;
    v29 = [v11 objectForKey:@"SBInstalledApplicationsReplacedBundleIDs"];
    [v28 unionSet:v29];

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v28;
    v30 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v59;
      do
      {
        for (k = 0; k != v31; ++k)
        {
          if (*v59 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v34 = *(*(&v58 + 1) + 8 * k);
          v35 = *(a1 + 40);
          v36 = *(v35 + 8);
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __54__SBIconVisibilityService__visibleIdentifiersChanged___block_invoke_2;
          v55[3] = &unk_2783B6DD8;
          v55[4] = v35;
          v56 = v10;
          v57 = v34;
          [v36 enumerateApplicationIconsForBundleIdentifier:v34 usingBlock:v55];
        }

        v31 = [obj countByEnumeratingWithState:&v58 objects:v71 count:16];
      }

      while (v31);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v37 = [v49 objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];
    v38 = [v37 countByEnumeratingWithState:&v51 objects:v70 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v52;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v51 + 1) + 8 * m);
          v43 = [*(*(a1 + 40) + 8) applicationIconForBundleIdentifier:{v42, v48}];
          if (([*(*(a1 + 40) + 8) isIconVisible:v43] & 1) == 0)
          {
            [v10 removeObject:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v51 objects:v70 count:16];
      }

      while (v39);
    }

    v9 = v48;
    v11 = v49;
    goto LABEL_58;
  }

  if ([*MEMORY[0x277D666E8] isEqualToString:v2])
  {
    v19 = [v11 objectForKey:*MEMORY[0x277D66868]];
    if ((![v19 isApplicationIcon] || (objc_msgSend(v19, "hasApplication") & 1) == 0) && !objc_msgSend(v19, "isBookmarkIcon") || !objc_msgSend(*(*(a1 + 40) + 8), "isIconVisible:", v19))
    {
      goto LABEL_57;
    }

    v44 = [v19 leafIdentifier];
    [v10 addObject:v44];
LABEL_53:

    goto LABEL_57;
  }

  if ([*MEMORY[0x277D66708] isEqualToString:v2])
  {
    v19 = [v11 objectForKey:*MEMORY[0x277D66868]];
    if (([v19 isApplicationIcon] & 1) == 0 && !objc_msgSend(v19, "isBookmarkIcon"))
    {
      goto LABEL_57;
    }

    v44 = [v19 leafIdentifier];
    [v10 removeObject:v44];
    goto LABEL_53;
  }

  if (([*MEMORY[0x277D666F0] isEqualToString:v2] & 1) == 0 && *(a1 + 32))
  {
    goto LABEL_58;
  }

  [v10 removeAllObjects];
  v19 = [*(*(a1 + 40) + 8) visibleIconIdentifiers];
  [v10 unionSet:v19];
LABEL_57:

LABEL_58:
  if (([v10 isEqual:{v9, v48}] & 1) == 0)
  {
    [*(*(a1 + 40) + 16) lock];
    v45 = [v10 copy];
    v46 = *(a1 + 40);
    v47 = *(v46 + 24);
    *(v46 + 24) = v45;

    [*(*(a1 + 40) + 16) unlock];
    notify_post("com.apple.springboard.display-identifiers.changed");
    [SBApp noteHomeScreenApplicationsDidChange];
  }

LABEL_61:
}

uint64_t __54__SBIconVisibilityService__visibleIdentifiersChanged___block_invoke_2(void *a1, uint64_t a2)
{
  result = [*(a1[4] + 8) isIconVisible:a2];
  if (result)
  {
    v4 = a1[5];
    v5 = a1[6];

    return [v4 addObject:v5];
  }

  return result;
}

@end