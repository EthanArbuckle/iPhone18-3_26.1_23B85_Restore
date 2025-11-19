@interface SBApplicationShortcutStore
+ (void)clearStore;
- (BOOL)_stateLock_truncateIfNeeded:(id)a3;
- (NSArray)applicationShortcutItems;
- (NSArray)languages;
- (SBApplicationShortcutStore)initWithBundleIdentifier:(id)a3;
- (id)_applicationShortcutItemsFromPlistArray:(id)a3;
- (id)_plistArrayFromApplicationShortcutItems:(id)a3;
- (id)description;
- (unint64_t)version;
- (void)_saveQueue_save;
- (void)_stateLock_loadFromStoreIfNeeded;
- (void)_stateLock_markDirty;
- (void)invalidateCache;
- (void)saveSynchronously;
- (void)setApplicationShortcutItems:(id)a3 withLanguages:(id)a4 version:(unint64_t)a5;
- (void)truncateIfNecessary;
@end

@implementation SBApplicationShortcutStore

- (void)_stateLock_loadFromStoreIfNeeded
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (NSArray)languages
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  v3 = [(NSArray *)self->_cachedLanguages copy];
  [(NSLock *)self->_stateLock unlock];

  return v3;
}

- (unint64_t)version
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  cachedVersion = self->_cachedVersion;
  [(NSLock *)self->_stateLock unlock];
  return cachedVersion;
}

- (NSArray)applicationShortcutItems
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  v3 = [(NSArray *)self->_cachedApplicationShortcutItems copy];
  [(NSLock *)self->_stateLock unlock];

  return v3;
}

- (void)_stateLock_markDirty
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_isDirty)
  {
    self->_isDirty = 1;
    v3 = SBLogAppShortcuts();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      *buf = 138543362;
      v8 = v4;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_INFO, "%{public}@: Marking as dirty...", buf, 0xCu);
    }

    saveQueue = self->_saveQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__SBApplicationShortcutStore__stateLock_markDirty__block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(saveQueue, block);
  }
}

- (void)_saveQueue_save
{
  v24[2] = *MEMORY[0x277D85DE8];
  [(NSLock *)self->_stateLock lock];
  v4 = SBLogAppShortcuts();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(SBApplicationShortcutStore *)self bundleIdentifier];
    v17 = 138543362;
    v18 = v5;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Saving...", &v17, 0xCu);
  }

  if (self->_isDirty && self->_isLoaded)
  {
    v6 = NSStringFromSelector(a2);
    [(SBApplicationShortcutStore *)self _stateLock_truncateIfNeeded:v6];

    v7 = [(SBApplicationShortcutStore *)self _plistArrayFromApplicationShortcutItems:self->_cachedApplicationShortcutItems];
    if ([v7 count])
    {
      v23[1] = @"version";
      v24[0] = v7;
      v23[0] = @"applicationShortcutItems";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_cachedVersion];
      v24[1] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];

      cachedLanguages = self->_cachedLanguages;
      if (cachedLanguages)
      {
        v21 = @"languages";
        v22 = cachedLanguages;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        v12 = [v9 bs_dictionaryByAddingEntriesFromDictionary:v11];

        v9 = v12;
      }

      v13 = SBLogAppShortcuts();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [(SBApplicationShortcutStore *)self bundleIdentifier];
        v15 = [(NSArray *)self->_cachedApplicationShortcutItems count];
        v17 = 138543618;
        v18 = v14;
        v19 = 2048;
        v20 = v15;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_INFO, "%{public}@: Committing app shortcut store w/ %lu shortcuts", &v17, 0x16u);
      }

      [(FBSApplicationDataStore *)self->_dataStore setArchivedObject:v9 forKey:@"SBApplicationShortcutItems"];
      [MEMORY[0x277D0AC98] synchronize];
    }

    self->_isDirty = 0;
  }

  else
  {
    v7 = SBLogAppShortcuts();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Ignoring save request because not dirty", &v17, 0xCu);
    }
  }

  [(NSLock *)self->_stateLock unlock];
}

- (void)invalidateCache
{
  [(NSLock *)self->_stateLock lock];
  self->_isLoaded = 0;
  cachedApplicationShortcutItems = self->_cachedApplicationShortcutItems;
  self->_cachedApplicationShortcutItems = 0;

  cachedLanguages = self->_cachedLanguages;
  self->_cachedLanguages = 0;

  self->_cachedVersion = 0;
  stateLock = self->_stateLock;

  [(NSLock *)stateLock unlock];
}

+ (void)clearStore
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [MEMORY[0x277D0AC98] applicationsWithAvailableStores];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x277D0AC98] storeForApplication:*(*(&v8 + 1) + 8 * v6)];
        [v7 removeObjectForKey:@"SBApplicationShortcutItems"];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (SBApplicationShortcutStore)initWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SBApplicationShortcutStore;
  v5 = [(SBApplicationShortcutStore *)&v15 init];
  if (v5)
  {
    v6 = [v4 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [MEMORY[0x277D0AC98] storeForApplication:v5->_bundleIdentifier];
    dataStore = v5->_dataStore;
    v5->_dataStore = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    stateLock = v5->_stateLock;
    v5->_stateLock = v10;

    [(NSLock *)v5->_stateLock setName:@"com.apple.springboard.sbapplicationshortcutstore"];
    Serial = BSDispatchQueueCreateSerial();
    saveQueue = v5->_saveQueue;
    v5->_saveQueue = Serial;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(SBApplicationShortcutStore *)self bundleIdentifier];
  v5 = [v3 appendObject:v4 withName:@"bundleIdentifier"];

  if (self->_isLoaded)
  {
    v6 = [v3 appendObject:self->_cachedLanguages withName:@"languages"];
    v7 = [v3 appendObject:self->_cachedApplicationShortcutItems withName:@"applicationShortcutItems"];
    v8 = [v3 appendInteger:self->_cachedVersion withName:@"version"];
    v9 = [v3 appendBool:self->_isDirty withName:@"isDirty"];
  }

  v10 = [v3 build];

  return v10;
}

- (void)setApplicationShortcutItems:(id)a3 withLanguages:(id)a4 version:(unint64_t)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  if (self->_isLoaded)
  {
    goto LABEL_7;
  }

  v11 = SBLogAppShortcuts();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [SBApplicationShortcutStore setApplicationShortcutItems:? withLanguages:? version:?];
  }

  if (self->_isLoaded)
  {
LABEL_7:
    if (![v9 isEqualToArray:self->_cachedApplicationShortcutItems] || !objc_msgSend(v10, "isEqualToArray:", self->_cachedLanguages) || self->_cachedVersion != a5)
    {
      objc_storeStrong(&self->_cachedApplicationShortcutItems, a3);
      objc_storeStrong(&self->_cachedLanguages, a4);
      self->_cachedVersion = a5;
      v12 = SBLogAppShortcuts();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [(SBApplicationShortcutStore *)self bundleIdentifier];
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Updating app shortcut store...", &v14, 0xCu);
      }

      [(SBApplicationShortcutStore *)self _stateLock_markDirty];
    }
  }

  [(NSLock *)self->_stateLock unlock];
}

- (void)saveSynchronously
{
  saveQueue = self->_saveQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBApplicationShortcutStore_saveSynchronously__block_invoke;
  block[3] = &unk_2783A8C18;
  block[4] = self;
  dispatch_sync(saveQueue, block);
}

- (void)truncateIfNecessary
{
  [(NSLock *)self->_stateLock lock];
  [(SBApplicationShortcutStore *)self _stateLock_loadFromStoreIfNeeded];
  if ([(SBApplicationShortcutStore *)self _stateLock_truncateIfNeeded:@"truncateIfNeeded"])
  {
    [(SBApplicationShortcutStore *)self _stateLock_markDirty];
  }

  stateLock = self->_stateLock;

  [(NSLock *)stateLock unlock];
}

- (id)_applicationShortcutItemsFromPlistArray:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  BSSerializeCFValueToXPCDictionaryWithKey();

  v5 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)_plistArrayFromApplicationShortcutItems:(id)a3
{
  v3 = a3;
  v4 = xpc_dictionary_create(0, 0, 0);
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();

  v5 = BSDeserializeCFValueFromXPCDictionaryWithKey();

  return v5;
}

- (BOOL)_stateLock_truncateIfNeeded:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_isLoaded)
  {
    p_super = SBLogAppShortcuts();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v19 = 138543362;
      v20 = v10;
      _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore cannot truncate; data isn't loaded.", &v19, 0xCu);
    }

    goto LABEL_7;
  }

  v5 = [(NSArray *)self->_cachedApplicationShortcutItems count];
  p_super = SBLogAppShortcuts();
  v7 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v5 <= 0xA)
  {
    if (v7)
    {
      v8 = [(SBApplicationShortcutStore *)self bundleIdentifier];
      v9 = [(NSArray *)self->_cachedApplicationShortcutItems count];
      v19 = 138543874;
      v20 = v8;
      v21 = 2112;
      v22 = v4;
      v23 = 2048;
      v24 = v9;
      _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore doesn't need truncation (truncation reason: %@); there are %ld application shortcut items.", &v19, 0x20u);
    }

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  if (v7)
  {
    v13 = [(SBApplicationShortcutStore *)self bundleIdentifier];
    v14 = [(NSArray *)self->_cachedApplicationShortcutItems count];
    v19 = 138543874;
    v20 = v13;
    v21 = 2112;
    v22 = v4;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&dword_21ED4E000, p_super, OS_LOG_TYPE_DEFAULT, "%{public}@: SBApplicationShortcutStore needs truncation (truncation reason: %@); there are %ld application shortcut items.", &v19, 0x20u);
  }

  if (_stateLock_truncateIfNeeded__onceToken != -1)
  {
    [SBApplicationShortcutStore _stateLock_truncateIfNeeded:];
  }

  if (_stateLock_truncateIfNeeded__isInternalInstall == 1)
  {
    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [v15 BOOLForKey:@"SBSuppressAppShortcutTruncation"];

    if (v16)
    {
      p_super = SBLogAppShortcuts();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
      {
        [(SBApplicationShortcutStore *)self _stateLock_truncateIfNeeded:?];
      }

      goto LABEL_7;
    }
  }

  v17 = SBLogAppShortcuts();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBApplicationShortcutStore _stateLock_truncateIfNeeded:?];
  }

  v18 = [(NSArray *)self->_cachedApplicationShortcutItems subarrayWithRange:0, 10];
  p_super = &self->_cachedApplicationShortcutItems->super;
  self->_cachedApplicationShortcutItems = v18;
  v11 = 1;
LABEL_8:

  return v11;
}

uint64_t __58__SBApplicationShortcutStore__stateLock_truncateIfNeeded___block_invoke()
{
  result = MGGetBoolAnswer();
  _stateLock_truncateIfNeeded__isInternalInstall = result;
  return result;
}

- (void)setApplicationShortcutItems:(void *)a1 withLanguages:version:.cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_stateLock_truncateIfNeeded:(void *)a1 .cold.2(void *a1)
{
  v6 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_stateLock_truncateIfNeeded:(void *)a1 .cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "%@: SBApplicationShortcutStore suppressing truncation for some reason.", &v4, 0xCu);
}

@end