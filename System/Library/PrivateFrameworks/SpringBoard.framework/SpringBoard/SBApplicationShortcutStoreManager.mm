@interface SBApplicationShortcutStoreManager
+ (id)sharedManager;
- (SBApplicationShortcutStoreManager)init;
- (id)_stateLock_storeForBundleIdentifier:(id)identifier;
- (id)applicationShortcutItemsForBundleIdentifier:(id)identifier withVersion:(unint64_t)version;
- (void)_installedAppsDidChange:(id)change;
- (void)dealloc;
- (void)invalidateCache;
- (void)saveSynchronously;
- (void)setApplicationShortcutItems:(id)items forBundleIdentifier:(id)identifier withVersion:(unint64_t)version;
@end

@implementation SBApplicationShortcutStoreManager

+ (id)sharedManager
{
  if (sharedManager_onceToken_0 != -1)
  {
    +[SBApplicationShortcutStoreManager sharedManager];
  }

  v3 = sharedManager___sharedManager;

  return v3;
}

void __50__SBApplicationShortcutStoreManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(SBApplicationShortcutStoreManager);
  v1 = sharedManager___sharedManager;
  sharedManager___sharedManager = v0;
}

- (SBApplicationShortcutStoreManager)init
{
  v9.receiver = self;
  v9.super_class = SBApplicationShortcutStoreManager;
  v2 = [(SBApplicationShortcutStoreManager *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    stateLock = v2->_stateLock;
    v2->_stateLock = v3;

    [(NSLock *)v2->_stateLock setName:@"com.apple.springboard.sbapplicationshortcutstoremanager"];
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    storesKeyedByBundleIdentifier = v2->_storesKeyedByBundleIdentifier;
    v2->_storesKeyedByBundleIdentifier = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__installedAppsDidChange_ name:@"SBInstalledApplicationsDidChangeNotification" object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = SBApplicationShortcutStoreManager;
  [(SBApplicationShortcutStoreManager *)&v4 dealloc];
}

- (id)applicationShortcutItemsForBundleIdentifier:(id)identifier withVersion:(unint64_t)version
{
  if (!identifier)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v6 = MEMORY[0x277CBEAF8];
  identifierCopy = identifier;
  preferredLanguages = [v6 preferredLanguages];
  [(NSLock *)self->_stateLock lock];
  v9 = [(SBApplicationShortcutStoreManager *)self _stateLock_storeForBundleIdentifier:identifierCopy];

  languages = [v9 languages];
  if (![languages isEqualToArray:preferredLanguages])
  {

    goto LABEL_7;
  }

  version = [v9 version];

  if (version != version)
  {
LABEL_7:
    [v9 invalidateCache];
    v13 = 0;
    goto LABEL_8;
  }

  applicationShortcutItems = [v9 applicationShortcutItems];
  v13 = [applicationShortcutItems copy];

LABEL_8:
  [(NSLock *)self->_stateLock unlock];

LABEL_9:

  return v13;
}

- (void)setApplicationShortcutItems:(id)items forBundleIdentifier:(id)identifier withVersion:(unint64_t)version
{
  if (identifier)
  {
    v8 = MEMORY[0x277CBEAF8];
    identifierCopy = identifier;
    itemsCopy = items;
    preferredLanguages = [v8 preferredLanguages];
    [(NSLock *)self->_stateLock lock];
    v11 = [(SBApplicationShortcutStoreManager *)self _stateLock_storeForBundleIdentifier:identifierCopy];

    [v11 setApplicationShortcutItems:itemsCopy withLanguages:preferredLanguages version:version];
    [(NSLock *)self->_stateLock unlock];
  }
}

- (void)invalidateCache
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    storesKeyedByBundleIdentifier = self->_storesKeyedByBundleIdentifier;
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = storesKeyedByBundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%@: Request to invalidate all stores immediately: %@", buf, 0x16u);
  }

  [(NSLock *)self->_stateLock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_storesKeyedByBundleIdentifier allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) invalidateCache];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  +[SBApplicationShortcutStore clearStore];
  [(NSLock *)self->_stateLock unlock];
}

- (void)saveSynchronously
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = SBLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    storesKeyedByBundleIdentifier = self->_storesKeyedByBundleIdentifier;
    *buf = 138412546;
    selfCopy = self;
    v17 = 2112;
    v18 = storesKeyedByBundleIdentifier;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%@: Request to save all stores immediately: %@", buf, 0x16u);
  }

  [(NSLock *)self->_stateLock lock];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  allValues = [(NSMutableDictionary *)self->_storesKeyedByBundleIdentifier allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) saveSynchronously];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(NSLock *)self->_stateLock unlock];
}

- (void)_installedAppsDidChange:(id)change
{
  v22 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"SBInstalledApplicationsRemovedBundleIDs"];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = SBLogCommon();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          selfCopy = self;
          v19 = 2114;
          v20 = v11;
          _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_INFO, "%@: Removing shortcut items for %{public}@ because it was uninstalled", buf, 0x16u);
        }

        [(SBApplicationShortcutStoreManager *)self setApplicationShortcutItems:0 forBundleIdentifier:v11 withVersion:0];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v8);
  }
}

- (id)_stateLock_storeForBundleIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = [(NSMutableDictionary *)self->_storesKeyedByBundleIdentifier objectForKeyedSubscript:identifierCopy];
  if (!v5)
  {
    v6 = SBLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      selfCopy = self;
      v10 = 2114;
      v11 = identifierCopy;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_INFO, "%@: Creating store for bundle identifier: %{public}@", &v8, 0x16u);
    }

    v5 = [[SBApplicationShortcutStore alloc] initWithBundleIdentifier:identifierCopy];
    [(NSMutableDictionary *)self->_storesKeyedByBundleIdentifier setObject:v5 forKeyedSubscript:identifierCopy];
  }

  return v5;
}

@end