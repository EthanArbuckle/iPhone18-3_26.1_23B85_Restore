@interface ICQAppCloudStorageCache
+ (id)sharedInstance;
- (ICQAppCloudStorageCache)init;
- (id)cloudStorageByApp:(id)app forAltDSID:(id)d;
- (void)setCloudStorage:(id)storage byApp:(id)app forAltDSID:(id)d;
@end

@implementation ICQAppCloudStorageCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ICQAppCloudStorageCache sharedInstance];
  }

  v3 = sharedInstance_cache;

  return v3;
}

uint64_t __41__ICQAppCloudStorageCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICQAppCloudStorageCache);
  v1 = sharedInstance_cache;
  sharedInstance_cache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ICQAppCloudStorageCache)init
{
  v6.receiver = self;
  v6.super_class = ICQAppCloudStorageCache;
  v2 = [(ICQAppCloudStorageCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hashMap = v2->_hashMap;
    v2->_hashMap = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)setCloudStorage:(id)storage byApp:(id)app forAltDSID:(id)d
{
  dCopy = d;
  appCopy = app;
  storageCopy = storage;
  os_unfair_lock_lock(&self->_cacheLock);
  v10 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:dCopy];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_hashMap setObject:v11 forKeyedSubscript:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:dCopy];
  [v12 setObject:storageCopy forKeyedSubscript:appCopy];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)cloudStorageByApp:(id)app forAltDSID:(id)d
{
  dCopy = d;
  appCopy = app;
  os_unfair_lock_lock(&self->_cacheLock);
  v8 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:dCopy];

  v9 = [v8 objectForKeyedSubscript:appCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v9;
}

@end