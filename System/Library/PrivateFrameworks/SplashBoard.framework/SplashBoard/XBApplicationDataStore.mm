@interface XBApplicationDataStore
+ (id)sharedInstance;
- (BOOL)_bundleIdentifierHasDeniedLaunchInterface:(id)a3;
- (XBApplicationDataStore)init;
- (id)_init;
- (id)_loadCompatibilityInfoForBundleIdentifier:(id)a3;
- (id)_storeForBundleIdentifier:(id)a3;
- (id)loadManifestDataForBundleIdentifier:(id)a3;
- (int64_t)_bundleIdentifierDeniedLaunchInterfaceCount:(id)a3;
- (void)_addBundleIdentifierToLaunchInterfaceDenyList:(id)a3;
- (void)_clearCompatibilityInfoForBundleIdentifier:(id)a3;
- (void)_persistCompatibilityInfo:(id)a3 forBundleIdentifier:(id)a4;
- (void)_removeBundleIdentifierFromLaunchInterfaceDenyList:(id)a3;
- (void)beginAccessBlockForBundleIdentifier:(id)a3;
- (void)clearManifestDataForBundleIdentifier:(id)a3;
- (void)endAccessBlockForBundleIdentifier:(id)a3;
- (void)persistManifestData:(id)a3 forBundleIdentifier:(id)a4;
@end

@implementation XBApplicationDataStore

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[XBApplicationDataStore sharedInstance];
  }

  v3 = sharedInstance___sharedInstance;

  return v3;
}

uint64_t __40__XBApplicationDataStore_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance = [[XBApplicationDataStore alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (XBApplicationDataStore)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"XBApplicationDataStore.m" lineNumber:39 description:@"init is not allowed"];

  return [(XBApplicationDataStore *)self _init];
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = XBApplicationDataStore;
  v2 = [(XBApplicationDataStore *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.splashboard.application-data-store", 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)_persistCompatibilityInfo:(id)a3 forBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v10 = v7;
  if (v10)
  {
    NSClassFromString(&cfstr_Xbapplicationl_0.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [XBApplicationDataStore _persistCompatibilityInfo:a2 forBundleIdentifier:?];
    }
  }

  v9 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:v8];
  [v9 setArchivedObject:v10 forKey:XBApplicationLaunchCompatibilityInfoPersistenceKey];
}

- (void)_clearCompatibilityInfoForBundleIdentifier:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:a3];
  [v3 setObject:0 forKey:XBApplicationLaunchCompatibilityInfoPersistenceKey];
}

- (id)_loadCompatibilityInfoForBundleIdentifier:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:a3];
  v4 = [v3 safeArchivedObjectForKey:XBApplicationLaunchCompatibilityInfoPersistenceKey ofType:objc_opt_class()];

  return v4;
}

- (BOOL)_bundleIdentifierHasDeniedLaunchInterface:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _loadCompatibilityInfoForBundleIdentifier:a3];
  v4 = [v3 hasKnownBadLaunchImage];

  return v4;
}

- (int64_t)_bundleIdentifierDeniedLaunchInterfaceCount:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _loadCompatibilityInfoForBundleIdentifier:a3];
  v4 = [v3 badLaunchImageCandidateCount];

  return v4;
}

- (void)_addBundleIdentifierToLaunchInterfaceDenyList:(id)a3
{
  v4 = a3;
  v5 = [(XBApplicationDataStore *)self _loadCompatibilityInfoForBundleIdentifier:v4];
  [v5 setHasKnownBadLaunchImage:1];
  [(XBApplicationDataStore *)self _persistCompatibilityInfo:v5 forBundleIdentifier:v4];
}

- (void)_removeBundleIdentifierFromLaunchInterfaceDenyList:(id)a3
{
  v5 = a3;
  v4 = [(XBApplicationDataStore *)self _loadCompatibilityInfoForBundleIdentifier:?];
  if ([v4 hasKnownBadLaunchImage])
  {
    [v4 setHasKnownBadLaunchImage:0];
    [v4 setBadLaunchImageCandidateCount:0];
    [(XBApplicationDataStore *)self _persistCompatibilityInfo:v4 forBundleIdentifier:v5];
  }
}

- (id)_storeForBundleIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__XBApplicationDataStore__storeForBundleIdentifier___block_invoke;
  block[3] = &unk_279CF9530;
  block[4] = self;
  v10 = v4;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __52__XBApplicationDataStore__storeForBundleIdentifier___block_invoke(void *a1)
{
  v2 = a1 + 5;
  v3 = [*(a1[4] + 24) objectForKey:a1[5]];
  if (v3)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v3);
  }

  else
  {
    v4 = [MEMORY[0x277D0AC98] storeForApplication:*v2];
    v10 = v4;
    if (v4)
    {
      v5 = v4;
      if ([*(a1[4] + 16) containsObject:a1[5]])
      {
        v6 = *(a1[4] + 24);
        if (v6)
        {
          [v6 setObject:v5 forKey:*v2];
        }

        else
        {
          v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjects:&v10 forKeys:v2 count:1];
          v8 = a1[4];
          v9 = *(v8 + 24);
          *(v8 + 24) = v7;

          v5 = v10;
        }
      }

      objc_storeStrong((*(a1[6] + 8) + 40), v5);
    }
  }
}

- (void)persistManifestData:(id)a3 forBundleIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v10 = v7;
  if (v10)
  {
    NSClassFromString(&cfstr_Nsdata.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [XBApplicationDataStore persistManifestData:a2 forBundleIdentifier:?];
    }
  }

  v9 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:v8];
  [v9 setObject:v10 forKey:@"XBApplicationSnapshotManifest"];
}

- (void)clearManifestDataForBundleIdentifier:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:a3];
  [v3 removeObjectForKey:@"XBApplicationSnapshotManifest"];
}

- (id)loadManifestDataForBundleIdentifier:(id)a3
{
  v3 = [(XBApplicationDataStore *)self _storeForBundleIdentifier:a3];
  v4 = [v3 safeObjectForKey:@"XBApplicationSnapshotManifest" ofType:objc_opt_class()];

  return v4;
}

- (void)beginAccessBlockForBundleIdentifier:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__XBApplicationDataStore_beginAccessBlockForBundleIdentifier___block_invoke;
  v7[3] = &unk_279CF9508;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

uint64_t __62__XBApplicationDataStore_beginAccessBlockForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    v3 = *(a1 + 40);

    return [v2 addObject:v3];
  }

  else
  {
    *(*(a1 + 32) + 16) = [objc_alloc(MEMORY[0x277CCA940]) initWithObjects:a1 + 40 count:1];

    return MEMORY[0x2821F96F8]();
  }
}

- (void)endAccessBlockForBundleIdentifier:(id)a3
{
  v5 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__XBApplicationDataStore_endAccessBlockForBundleIdentifier___block_invoke;
  block[3] = &unk_279CF9558;
  block[4] = self;
  v9 = v5;
  v10 = a2;
  v7 = v5;
  dispatch_sync(queue, block);
}

void __60__XBApplicationDataStore_endAccessBlockForBundleIdentifier___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = (a1 + 40);
  if (([*(*(a1 + 32) + 16) containsObject:*(a1 + 40)] & 1) == 0)
  {
    __60__XBApplicationDataStore_endAccessBlockForBundleIdentifier___block_invoke_cold_1(a1, v2, v2 + 1);
  }

  [*(*v2 + 16) removeObject:*v3];
  if (([*(*v2 + 16) containsObject:*v3] & 1) == 0)
  {
    if (![*(*v2 + 16) count])
    {
      v4 = *(*v2 + 16);
      *(*v2 + 16) = 0;
    }

    v5 = *(*v2 + 24);
    if (v5)
    {
      [v5 removeObjectForKey:*v3];
      if (![*(*v2 + 24) count])
      {
        v6 = *(*v2 + 24);
        *(*v2 + 24) = 0;
      }
    }
  }
}

- (void)_persistCompatibilityInfo:(const char *)a1 forBundleIdentifier:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:XBApplicationLaunchCompatibilityInfoClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"XBApplicationDataStore.m";
    v9 = 1024;
    v10 = 54;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)persistManifestData:(const char *)a1 forBundleIdentifier:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSDataClass]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"XBApplicationDataStore.m";
    v9 = 1024;
    v10 = 124;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_26B5EF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __60__XBApplicationDataStore_endAccessBlockForBundleIdentifier___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:"-[XBApplicationDataStore endAccessBlockForBundleIdentifier:]_block_invoke" file:*a3 lineNumber:*(*a2 + 16) description:?];
}

@end