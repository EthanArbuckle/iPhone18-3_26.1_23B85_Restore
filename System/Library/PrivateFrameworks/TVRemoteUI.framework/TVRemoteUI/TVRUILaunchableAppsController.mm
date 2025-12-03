@interface TVRUILaunchableAppsController
- (BOOL)hasHiddenApps;
- (NSArray)orderedAppInfos;
- (NSDictionary)mruCountDict;
- (NSSet)hiddenBundleIDs;
- (TVRUILaunchableAppsController)init;
- (id)_adjustedAppInfosForAppInfos:(id)infos;
- (id)_loadHiddenBundleIDs;
- (id)_loadMRUCountDict;
- (id)_updatedMRUCountDictForCountDict:(id)dict forBundleID:(id)d;
- (unint64_t)_baseMRUCountAdjustmentForAppInfo:(id)info;
- (unint64_t)_mruCountForBundleID:(id)d;
- (void)_fetchAppInfos;
- (void)_notifyOrderedAppInfosChanged;
- (void)_persistHiddenBundleIDs:(id)ds;
- (void)_persistMRUCountDict:(id)dict;
- (void)_updateMRUCountForLaunchedAppWithBundleID:(id)d;
- (void)hideAppWithBundleID:(id)d;
- (void)launchAppWithBundleID:(id)d;
- (void)setAppInfos:(id)infos;
- (void)setDevice:(id)device;
- (void)setHiddenBundleIDs:(id)ds;
- (void)unhideApps;
@end

@implementation TVRUILaunchableAppsController

- (TVRUILaunchableAppsController)init
{
  v6.receiver = self;
  v6.super_class = TVRUILaunchableAppsController;
  v2 = [(TVRUILaunchableAppsController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    appInfos = v2->_appInfos;
    v2->_appInfos = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_activeDevice, device);
  if (deviceCopy)
  {
    [(TVRUILaunchableAppsController *)self _fetchAppInfos];
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVRUILaunchableAppsControllerAppInfosWillChangeNotification" object:self];

    [(TVRUILaunchableAppsController *)self setAppInfos:MEMORY[0x277CBEBF8]];
  }
}

- (void)setAppInfos:(id)infos
{
  if (infos)
  {
    infosCopy = infos;
  }

  else
  {
    infosCopy = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong(&self->_appInfos, infosCopy);
  infosCopy2 = infos;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];

  [defaultCenter postNotificationName:@"TVRUILaunchableAppsControllerAppInfosDidChangeNotification" object:self];
}

- (void)launchAppWithBundleID:(id)d
{
  dCopy = d;
  [(TVRUILaunchableAppsController *)self _updateMRUCountForLaunchedAppWithBundleID:dCopy];
  activeDevice = [(TVRUILaunchableAppsController *)self activeDevice];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TVRUILaunchableAppsController_launchAppWithBundleID___block_invoke;
  v7[3] = &unk_279D88208;
  v8 = dCopy;
  v6 = dCopy;
  [activeDevice launchAppWithBundleID:v6 completion:v7];
}

void __55__TVRUILaunchableAppsController_launchAppWithBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _TVRUIDockLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__TVRUILaunchableAppsController_launchAppWithBundleID___block_invoke_cold_1(a1, v3, v4);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"TVRUILaunchableAppsControllerAppInfosDidLaunchAppNotification" object:0];
  }
}

- (NSArray)orderedAppInfos
{
  appInfos = [(TVRUILaunchableAppsController *)self appInfos];
  v4 = [(TVRUILaunchableAppsController *)self _adjustedAppInfosForAppInfos:appInfos];

  return v4;
}

- (void)hideAppWithBundleID:(id)d
{
  dCopy = d;
  hiddenBundleIDs = [(TVRUILaunchableAppsController *)self hiddenBundleIDs];
  v5 = [hiddenBundleIDs containsObject:dCopy];

  if ((v5 & 1) == 0)
  {
    hiddenBundleIDs2 = [(TVRUILaunchableAppsController *)self hiddenBundleIDs];
    v7 = [hiddenBundleIDs2 setByAddingObject:dCopy];

    [(TVRUILaunchableAppsController *)self setHiddenBundleIDs:v7];
    [(TVRUILaunchableAppsController *)self _notifyOrderedAppInfosChanged];
  }
}

- (void)unhideApps
{
  hiddenBundleIDs = [(TVRUILaunchableAppsController *)self hiddenBundleIDs];
  v4 = [hiddenBundleIDs count];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] set];
    [(TVRUILaunchableAppsController *)self setHiddenBundleIDs:v5];

    [(TVRUILaunchableAppsController *)self _notifyOrderedAppInfosChanged];
  }
}

- (BOOL)hasHiddenApps
{
  hiddenBundleIDs = [(TVRUILaunchableAppsController *)self hiddenBundleIDs];
  v3 = [hiddenBundleIDs count] != 0;

  return v3;
}

- (void)_fetchAppInfos
{
  activeDevice = [(TVRUILaunchableAppsController *)self activeDevice];

  if (activeDevice)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVRUILaunchableAppsControllerAppInfosWillChangeNotification" object:self];

    objc_initWeak(&location, self);
    activeDevice2 = [(TVRUILaunchableAppsController *)self activeDevice];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__TVRUILaunchableAppsController__fetchAppInfos__block_invoke;
    v6[3] = &unk_279D88258;
    objc_copyWeak(&v7, &location);
    [activeDevice2 fetchLaunchableAppsWithCompletion:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __47__TVRUILaunchableAppsController__fetchAppInfos__block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v16 = WeakRetained;
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [v3 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v3 objectForKeyedSubscript:v12];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [MEMORY[0x277D6C4C0] appInfoWithBundleID:v12 dictionary:v13];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__TVRUILaunchableAppsController__fetchAppInfos__block_invoke_2;
    block[3] = &unk_279D88230;
    v5 = v16;
    block[4] = v16;
    v18 = v6;
    v15 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)_updateMRUCountForLaunchedAppWithBundleID:(id)d
{
  dCopy = d;
  mruCountDict = [(TVRUILaunchableAppsController *)self mruCountDict];
  v6 = [(TVRUILaunchableAppsController *)self _updatedMRUCountDictForCountDict:mruCountDict forBundleID:dCopy];

  [(TVRUILaunchableAppsController *)self setMruCountDict:v6];
  mruCountDict2 = [(TVRUILaunchableAppsController *)self mruCountDict];
  [(TVRUILaunchableAppsController *)self _persistMRUCountDict:mruCountDict2];
}

- (NSDictionary)mruCountDict
{
  mruCountDict = self->_mruCountDict;
  if (!mruCountDict)
  {
    _loadMRUCountDict = [(TVRUILaunchableAppsController *)self _loadMRUCountDict];
    v5 = self->_mruCountDict;
    self->_mruCountDict = _loadMRUCountDict;

    mruCountDict = self->_mruCountDict;
  }

  return mruCountDict;
}

- (id)_updatedMRUCountDictForCountDict:(id)dict forBundleID:(id)d
{
  dictCopy = dict;
  dCopy = d;
  v7 = [dictCopy objectForKeyedSubscript:dCopy];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "unsignedIntegerValue") + 1}];
  }

  else
  {
    v9 = &unk_287E84D40;
  }

  v10 = [dictCopy mutableCopy];
  [v10 setObject:v9 forKeyedSubscript:dCopy];

  return v10;
}

- (id)_adjustedAppInfosForAppInfos:(id)infos
{
  v30 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v5 = [MEMORY[0x277CBEB98] setWithArray:&unk_287E84AC8];
  hiddenBundleIDs = [(TVRUILaunchableAppsController *)self hiddenBundleIDs];
  v23 = v5;
  v7 = [hiddenBundleIDs setByAddingObjectsFromSet:v5];

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = infosCopy;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        bundleID = [v13 bundleID];
        v15 = [v7 containsObject:bundleID];

        if ((v15 & 1) == 0)
        {
          v16 = [(TVRUILaunchableAppsController *)self _baseMRUCountAdjustmentForAppInfo:v13];
          bundleID2 = [v13 bundleID];
          v18 = v8;
          v19 = [(TVRUILaunchableAppsController *)self _mruCountForBundleID:bundleID2];

          v20 = v19 + v16;
          v8 = v18;
          v21 = [v13 appInfoWithMRUCount:v20];
          [v18 addObject:v21];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v10);
  }

  [v8 sortUsingComparator:&__block_literal_global_7];

  return v8;
}

uint64_t __62__TVRUILaunchableAppsController__adjustedAppInfosForAppInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithUnsignedInteger:{objc_msgSend(a3, "MRUCount")}];
  v7 = MEMORY[0x277CCABB0];
  v8 = [v5 MRUCount];

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

- (void)_persistMRUCountDict:(id)dict
{
  v3 = MEMORY[0x277CBEBD0];
  dictCopy = dict;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:dictCopy forKey:@"MRUCountDict"];
}

- (id)_loadMRUCountDict
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"MRUCountDict"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  v6 = v5;

  return v5;
}

- (unint64_t)_mruCountForBundleID:(id)d
{
  dCopy = d;
  mruCountDict = [(TVRUILaunchableAppsController *)self mruCountDict];
  v6 = [mruCountDict objectForKeyedSubscript:dCopy];

  v7 = &unk_287E84D58;
  if (v6)
  {
    v7 = v6;
  }

  v8 = v7;

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (unint64_t)_baseMRUCountAdjustmentForAppInfo:(id)info
{
  infoCopy = info;
  if ([infoCopy isTVApp])
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = [infoCopy appGenre] == 17;
  }

  return v4;
}

- (NSSet)hiddenBundleIDs
{
  hiddenBundleIDs = self->_hiddenBundleIDs;
  if (!hiddenBundleIDs)
  {
    _loadHiddenBundleIDs = [(TVRUILaunchableAppsController *)self _loadHiddenBundleIDs];
    v5 = self->_hiddenBundleIDs;
    self->_hiddenBundleIDs = _loadHiddenBundleIDs;

    hiddenBundleIDs = self->_hiddenBundleIDs;
  }

  return hiddenBundleIDs;
}

- (void)setHiddenBundleIDs:(id)ds
{
  dsCopy = ds;
  v7 = dsCopy;
  if (dsCopy)
  {
    v5 = dsCopy;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  hiddenBundleIDs = self->_hiddenBundleIDs;
  self->_hiddenBundleIDs = v5;

  [(TVRUILaunchableAppsController *)self _persistHiddenBundleIDs:self->_hiddenBundleIDs];
}

- (void)_persistHiddenBundleIDs:(id)ds
{
  allObjects = [ds allObjects];
  v4 = allObjects;
  v5 = MEMORY[0x277CBEBF8];
  if (allObjects)
  {
    v5 = allObjects;
  }

  v6 = v5;

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:v6 forKey:@"HiddenBundleIDs"];
}

- (id)_loadHiddenBundleIDs
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HiddenBundleIDs"];
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [MEMORY[0x277CBEB98] setWithArray:v6];

  return v7;
}

- (void)_notifyOrderedAppInfosChanged
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVRUILaunchableAppsControllerAppInfosWillChangeNotification" object:self];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 postNotificationName:@"TVRUILaunchableAppsControllerAppInfosDidChangeNotification" object:self];
}

void __55__TVRUILaunchableAppsController_launchAppWithBundleID___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 localizedDescription];
  v6 = 138412546;
  v7 = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_26CFEB000, a3, OS_LOG_TYPE_ERROR, "launchAppWithBundleID %@ failed: %@", &v6, 0x16u);
}

@end