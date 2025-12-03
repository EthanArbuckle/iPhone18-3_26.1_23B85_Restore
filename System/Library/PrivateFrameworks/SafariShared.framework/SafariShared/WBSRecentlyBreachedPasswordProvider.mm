@interface WBSRecentlyBreachedPasswordProvider
+ (WBSRecentlyBreachedPasswordProvider)sharedProvider;
- (NSArray)recentlyBreachedSavedAccountsIfAvailable;
- (WBSRecentlyBreachedPasswordProvider)init;
- (void)_accountStoreDidChange:(id)change;
- (void)_getRecentlyBreachedSavedAccountsWithCompletionHandler:(id)handler;
- (void)clearRecentlyBreachedSavedAccounts;
- (void)dealloc;
@end

@implementation WBSRecentlyBreachedPasswordProvider

- (WBSRecentlyBreachedPasswordProvider)init
{
  v9.receiver = self;
  v9.super_class = WBSRecentlyBreachedPasswordProvider;
  v2 = [(WBSRecentlyBreachedPasswordProvider *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E69C8920]);
    helperProxy = v3->_helperProxy;
    v3->_helperProxy = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__accountStoreDidChange_ name:*MEMORY[0x1E69C8D50] object:0];

    v7 = v3;
  }

  return v3;
}

- (void)dealloc
{
  [(WBSPasswordBreachHelperProxy *)self->_helperProxy invalidate];
  v3.receiver = self;
  v3.super_class = WBSRecentlyBreachedPasswordProvider;
  [(WBSRecentlyBreachedPasswordProvider *)&v3 dealloc];
}

+ (WBSRecentlyBreachedPasswordProvider)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    +[WBSRecentlyBreachedPasswordProvider sharedProvider];
  }

  v3 = sharedProvider_sharedProvider;

  return v3;
}

void __53__WBSRecentlyBreachedPasswordProvider_sharedProvider__block_invoke()
{
  v0 = objc_alloc_init(WBSRecentlyBreachedPasswordProvider);
  v1 = sharedProvider_sharedProvider;
  sharedProvider_sharedProvider = v0;
}

- (void)clearRecentlyBreachedSavedAccounts
{
  os_unfair_lock_lock(&self->_lock);
  [(WBSPasswordBreachHelperProxy *)self->_helperProxy clearRecentlyBreachedResultRecordsWithCompletionHandler:&__block_literal_global_9_4];
  recentlyBreachedSavedAccounts = self->_recentlyBreachedSavedAccounts;
  self->_recentlyBreachedSavedAccounts = 0;

  os_unfair_lock_unlock(&self->_lock);
}

void __73__WBSRecentlyBreachedPasswordProvider_clearRecentlyBreachedSavedAccounts__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __73__WBSRecentlyBreachedPasswordProvider_clearRecentlyBreachedSavedAccounts__block_invoke_cold_1(v2);
    }
  }
}

- (NSArray)recentlyBreachedSavedAccountsIfAvailable
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__WBSRecentlyBreachedPasswordProvider_recentlyBreachedSavedAccountsIfAvailable__block_invoke;
  v7[3] = &unk_1E7FB6D90;
  v7[4] = self;
  [v3 setHandler:v7];
  if (self->_recentlyBreachedSavedAccountsLookupStarted)
  {
    v4 = self->_recentlyBreachedSavedAccounts;
  }

  else
  {
    self->_recentlyBreachedSavedAccountsLookupStarted = 1;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__WBSRecentlyBreachedPasswordProvider_recentlyBreachedSavedAccountsIfAvailable__block_invoke_2;
    v6[3] = &unk_1E7FC9CA8;
    v6[4] = self;
    [(WBSRecentlyBreachedPasswordProvider *)self _getRecentlyBreachedSavedAccountsWithCompletionHandler:v6];
    v4 = 0;
  }

  return v4;
}

void __79__WBSRecentlyBreachedPasswordProvider_recentlyBreachedSavedAccountsIfAvailable__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_get_global_queue(21, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__WBSRecentlyBreachedPasswordProvider_recentlyBreachedSavedAccountsIfAvailable__block_invoke_3;
  v6[3] = &unk_1E7FB6E30;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __79__WBSRecentlyBreachedPasswordProvider_recentlyBreachedSavedAccountsIfAvailable__block_invoke_3(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)_getRecentlyBreachedSavedAccountsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  helperProxy = self->_helperProxy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __94__WBSRecentlyBreachedPasswordProvider__getRecentlyBreachedSavedAccountsWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7FB71F8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(WBSPasswordBreachHelperProxy *)helperProxy recentlyBreachedResultRecordDictionariesWithCompletionHandler:v7];
}

void __94__WBSRecentlyBreachedPasswordProvider__getRecentlyBreachedSavedAccountsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 count])
  {
    v3 = [MEMORY[0x1E69C8938] resultRecordsFromDictionaryRepresentations:v7];
    v4 = [v3 safari_mapObjectsUsingBlock:&__block_literal_global_15];
    v5 = [MEMORY[0x1E69C8A38] sharedStore];
    v6 = [v5 savedAccountsForPersistentIdentifiers:v4];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_accountStoreDidChange:(id)change
{
  os_unfair_lock_lock(&self->_lock);
  self->_recentlyBreachedSavedAccountsLookupStarted = 0;
  recentlyBreachedSavedAccounts = self->_recentlyBreachedSavedAccounts;
  self->_recentlyBreachedSavedAccounts = 0;

  os_unfair_lock_unlock(&self->_lock);
}

@end