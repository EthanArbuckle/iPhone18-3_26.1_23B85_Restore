@interface WFHomeManager
+ (id)cachedHomeSceneNames;
+ (id)sharedManager;
+ (void)updateHomeToHH2;
- (BOOL)requiresHomeUpdate;
- (NSArray)homesToWhichWeCanAddHomeAutomations;
- (NSArray)homesToWhichWeHaveAdminAccess;
- (WFHomeManager)init;
- (id)homeNamed:(id)a3;
- (id)homeWithIdentifier:(id)a3;
- (id)primaryHome;
- (id)sceneNamed:(id)a3 inHome:(id)a4;
- (id)serviceWithIdentifier:(id)a3 inHome:(id)a4;
- (unint64_t)status;
- (void)_setHomes:(id)a3;
- (void)addEventObserver:(id)a3;
- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4;
- (void)cacheHomeSceneNames;
- (void)dealloc;
- (void)ensureHomesAreLoadedWithCompletionHandler:(id)a3;
- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)reloadData;
- (void)removeEventObserver:(id)a3;
@end

@implementation WFHomeManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_1644 != -1)
  {
    dispatch_once(&sharedManager_onceToken_1644, &__block_literal_global_1645);
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

void __30__WFHomeManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(WFHomeManager);
  v1 = sharedManager_sharedManager;
  sharedManager_sharedManager = v0;
}

- (WFHomeManager)init
{
  v12.receiver = self;
  v12.super_class = WFHomeManager;
  v2 = [(WFHomeManager *)&v12 init];
  v3 = v2;
  if (v2)
  {
    homes = v2->_homes;
    v2->_homes = MEMORY[0x1E695E0F0];

    v5 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    eventObservers = v3->_eventObservers;
    v3->_eventObservers = v5;

    v7 = dispatch_group_create();
    loadHomesGroup = v3->_loadHomesGroup;
    v3->_loadHomesGroup = v7;

    v9 = [MEMORY[0x1E6996CA8] sharedContext];
    [v9 addApplicationStateObserver:v3 forEvent:3];

    v10 = v3;
  }

  return v3;
}

- (void)reloadData
{
  if (!self->_loading)
  {
    v3 = objc_opt_new();
    v4 = [v3 status];

    if (v4 == 4)
    {
      if (!self->_homeManager)
      {
        v5 = [objc_alloc(getHMHomeManagerClass()) initWithOptions:1025];
        homeManager = self->_homeManager;
        self->_homeManager = v5;
      }

      self->_loading = 1;
      dispatch_group_enter(self->_loadHomesGroup);
      [(HMHomeManager *)self->_homeManager setDelegate:0];
      v7 = self->_homeManager;

      [(HMHomeManager *)v7 setDelegate:self];
    }
  }
}

- (void)applicationContext:(id)a3 applicationStateDidChange:(int64_t)a4
{
  if (a4 == 3)
  {
    [(WFHomeManager *)self reloadData];
  }
}

- (void)homeManager:(id)a3 didUpdateHH2State:(BOOL)a4
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(WFHomeManager *)self eventObservers:a3];
    v6 = [v5 allObjects];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 homeManagerDidMigrateToHH2:self];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  *&self->_hasLoadedHomes = 1;
  v4 = [a3 homes];
  [(WFHomeManager *)self _setHomes:v4];

  loadHomesGroup = self->_loadHomesGroup;

  dispatch_group_leave(loadHomesGroup);
}

- (void)cacheHomeSceneNames
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = [(WFHomeManager *)self homes];
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = [v9 actionSets];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            v14 = 0;
            do
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v18 + 1) + 8 * v14) name];
              [v3 addObject:v15];

              ++v14;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  v16 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  [v16 setObject:v3 forKey:@"WFKnownHomeSceneNames"];

  v17 = *MEMORY[0x1E69E9840];
}

- (id)serviceWithIdentifier:(id)a3 inHome:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = [(WFHomeManager *)self homes];
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = *v43;
    v32 = v6;
    v29 = *v43;
    do
    {
      v9 = 0;
      v28 = v7;
      do
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v42 + 1) + 8 * v9);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v11 = [v10 serviceGroups];
        v31 = [v11 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v31)
        {
          v12 = *v39;
          v27 = v9;
          v33 = v11;
          v30 = *v39;
          do
          {
            v13 = 0;
            do
            {
              if (*v39 != v12)
              {
                objc_enumerationMutation(v11);
              }

              v14 = *(*(&v38 + 1) + 8 * v13);
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v37 = 0u;
              v15 = [v14 services];
              v16 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v35;
                while (2)
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v35 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v34 + 1) + 8 * i);
                    v21 = [v20 uniqueIdentifier];
                    v22 = [v21 UUIDString];
                    v23 = [v22 isEqualToString:v5];

                    if (v23)
                    {
                      v24 = v20;

                      v6 = v32;
                      goto LABEL_26;
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v34 objects:v46 count:16];
                  if (v17)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v13;
              v6 = v32;
              v11 = v33;
              v12 = v30;
            }

            while (v13 != v31);
            v9 = v27;
            v31 = [v33 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v31);
        }

        ++v9;
        v8 = v29;
      }

      while (v9 != v28);
      v7 = [v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
      v8 = v29;
      v24 = 0;
    }

    while (v7);
  }

  else
  {
    v24 = 0;
  }

LABEL_26:

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)sceneNamed:(id)a3 inHome:(id)a4
{
  v5 = a3;
  v6 = [a4 actionSets];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __35__WFHomeManager_sceneNamed_inHome___block_invoke;
  v11[3] = &unk_1E8373690;
  v12 = v5;
  v7 = v5;
  v8 = [v6 if_objectsPassingTest:v11];
  v9 = [v8 firstObject];

  return v9;
}

BOOL __35__WFHomeManager_sceneNamed_inHome___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 localizedStandardCompare:*(a1 + 32)] == 0;

  return v4;
}

- (id)primaryHome
{
  v2 = [(WFHomeManager *)self homes];
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_205];
  v4 = [v3 firstObject];

  return v4;
}

- (id)homeWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(WFHomeManager *)self homes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__WFHomeManager_homeWithIdentifier___block_invoke;
  v10[3] = &unk_1E8373668;
  v11 = v4;
  v6 = v4;
  v7 = [v5 if_objectsPassingTest:v10];
  v8 = [v7 firstObject];

  return v8;
}

uint64_t __36__WFHomeManager_homeWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = WFSerializableHomeIdentifier(a2);
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)homeNamed:(id)a3
{
  v4 = a3;
  v5 = [(WFHomeManager *)self homes];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __27__WFHomeManager_homeNamed___block_invoke;
  v10[3] = &unk_1E8373668;
  v11 = v4;
  v6 = v4;
  v7 = [v5 if_objectsPassingTest:v10];
  v8 = [v7 firstObject];

  return v8;
}

BOOL __27__WFHomeManager_homeNamed___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 localizedStandardCompare:*(a1 + 32)] == 0;

  return v4;
}

- (NSArray)homesToWhichWeCanAddHomeAutomations
{
  v2 = [(WFHomeManager *)self homesToWhichWeHaveAdminAccess];
  v3 = [v2 if_objectsPassingTest:&__block_literal_global_203];

  return v3;
}

BOOL __52__WFHomeManager_homesToWhichWeCanAddHomeAutomations__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 residentDevices];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)homesToWhichWeHaveAdminAccess
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(WFHomeManager *)self homes];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 currentUser];
        v11 = [v9 homeAccessControlForUser:v10];

        if ([v11 isAdministrator])
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)status
{
  v2 = [(WFHomeManager *)self homeManager];
  v3 = [v2 status];

  return (v3 & 0x31) != 0;
}

- (void)removeEventObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFHomeManager *)self eventObservers];
  [v5 removeObject:v4];
}

- (void)addEventObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFHomeManager *)self eventObservers];
  [v5 addObject:v4];
}

- (void)ensureHomesAreLoadedWithCompletionHandler:(id)a3
{
  block = a3;
  if ([(WFHomeManager *)self hasLoadedHomes])
  {
    block[2]();
  }

  else
  {
    [(WFHomeManager *)self reloadData];
    dispatch_group_notify(self->_loadHomesGroup, MEMORY[0x1E69E96A0], block);
  }
}

- (BOOL)requiresHomeUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [(WFHomeManager *)self homesToWhichWeHaveAdminAccess];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = [v6 currentUser];
        v8 = [v6 homeAccessControlForUser:v7];

        if (([v8 isAccessAllowed] & 1) == 0 && objc_msgSend(v8, "accessNotAllowedReasonCode") == 8)
        {

          LOBYTE(v3) = 1;
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

- (void)_setHomes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isEqualToArray:self->_homes] & 1) == 0)
  {
    v5 = [v4 copy];
    homes = self->_homes;
    self->_homes = v5;

    [(WFHomeManager *)self cacheHomeSceneNames];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(WFHomeManager *)self eventObservers];
    v8 = [v7 allObjects];

    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * v12);
          if (objc_opt_respondsToSelector())
          {
            [v13 homeManagerDidUpdateHomes:self];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  [v3 removeApplicationStateObserver:self forEvent:3];

  v4.receiver = self;
  v4.super_class = WFHomeManager;
  [(WFHomeManager *)&v4 dealloc];
}

+ (id)cachedHomeSceneNames
{
  v2 = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  v3 = [v2 arrayForKey:@"WFKnownHomeSceneNames"];

  return v3;
}

+ (void)updateHomeToHH2
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFF8] URLWithString:@"com.apple.Home-private://homeHubUpdate"];
  v3 = [MEMORY[0x1E6963608] defaultWorkspace];
  v7 = 0;
  [v3 openSensitiveURL:v2 withOptions:0 error:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = getWFEditorLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "+[WFHomeManager updateHomeToHH2]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_ERROR, "%s Caught error attempting to open home app to migrate to HH2: %@", buf, 0x16u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

@end