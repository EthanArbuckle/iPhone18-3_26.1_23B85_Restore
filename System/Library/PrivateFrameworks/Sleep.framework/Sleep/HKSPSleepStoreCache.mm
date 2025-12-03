@interface HKSPSleepStoreCache
+ (id)strongCache;
+ (id)weakCache;
- (HKSPSleepStoreCache)initWithSleepStoreProvider:(id)provider useWeakReferences:(BOOL)references;
- (id)sleepStoreForIdentifier:(id)identifier healthStore:(id)store;
@end

@implementation HKSPSleepStoreCache

HKSPSleepStore *__32__HKSPSleepStoreCache_weakCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HKSPSleepStore alloc] initWithIdentifier:v5 healthStore:v4];

  return v6;
}

+ (id)weakCache
{
  v2 = [[self alloc] initWithSleepStoreProvider:&__block_literal_global useWeakReferences:1];

  return v2;
}

+ (id)strongCache
{
  v2 = objc_alloc_init(self);

  return v2;
}

HKSPSleepStore *__27__HKSPSleepStoreCache_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [[HKSPSleepStore alloc] initWithIdentifier:v5 healthStore:v4];

  return v6;
}

- (HKSPSleepStoreCache)initWithSleepStoreProvider:(id)provider useWeakReferences:(BOOL)references
{
  v18 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = HKSPSleepStoreCache;
  v7 = [(HKSPSleepStoreCache *)&v15 init];
  if (v7)
  {
    v8 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ initializing...", buf, 0xCu);
    }

    if (references)
    {
      [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    }

    else
    {
      [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    }
    v9 = ;
    sleepStoresByIdentifier = v7->_sleepStoresByIdentifier;
    v7->_sleepStoresByIdentifier = v9;

    v11 = [providerCopy copy];
    sleepStoreProvider = v7->_sleepStoreProvider;
    v7->_sleepStoreProvider = v11;

    v7->_lock._os_unfair_lock_opaque = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)sleepStoreForIdentifier:(id)identifier healthStore:(id)store
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeCopy = store;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HKSPSleepStoreCache.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  if (storeCopy)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %p", identifierCopy, storeCopy];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", identifierCopy, v15];
  }
  v9 = ;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMapTable *)self->_sleepStoresByIdentifier objectForKey:v9];
  if (!v10)
  {
    v11 = HKSPLogForCategory(1uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ caching a new sleep store with identifier %@", buf, 0x16u);
    }

    v10 = (*(self->_sleepStoreProvider + 2))();
    [(NSMapTable *)self->_sleepStoresByIdentifier setObject:v10 forKey:v9];
  }

  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

@end