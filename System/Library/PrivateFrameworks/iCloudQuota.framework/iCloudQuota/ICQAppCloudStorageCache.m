@interface ICQAppCloudStorageCache
+ (id)sharedInstance;
- (ICQAppCloudStorageCache)init;
- (id)cloudStorageByApp:(id)a3 forAltDSID:(id)a4;
- (void)setCloudStorage:(id)a3 byApp:(id)a4 forAltDSID:(id)a5;
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

- (void)setCloudStorage:(id)a3 byApp:(id)a4 forAltDSID:(id)a5
{
  v13 = a5;
  v8 = a4;
  v9 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v10 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:v13];

  if (!v10)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)self->_hashMap setObject:v11 forKeyedSubscript:v13];
  }

  v12 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:v13];
  [v12 setObject:v9 forKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)cloudStorageByApp:(id)a3 forAltDSID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v8 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:v6];

  v9 = [v8 objectForKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v9;
}

@end