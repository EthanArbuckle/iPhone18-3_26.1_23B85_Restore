@interface ICQAppsSyncingToDriveCache
+ (id)sharedInstance;
- (ICQAppsSyncingToDriveCache)init;
- (id)appsSyncingToDriveforAltDSID:(id)a3;
- (void)setAppsSyncingToDrive:(id)a3 forAltDSID:(id)a4;
@end

@implementation ICQAppsSyncingToDriveCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ICQAppsSyncingToDriveCache sharedInstance];
  }

  v3 = sharedInstance_cache_0;

  return v3;
}

uint64_t __44__ICQAppsSyncingToDriveCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICQAppsSyncingToDriveCache);
  v1 = sharedInstance_cache_0;
  sharedInstance_cache_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ICQAppsSyncingToDriveCache)init
{
  v6.receiver = self;
  v6.super_class = ICQAppsSyncingToDriveCache;
  v2 = [(ICQAppsSyncingToDriveCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    hashMap = v2->_hashMap;
    v2->_hashMap = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)setAppsSyncingToDrive:(id)a3 forAltDSID:(id)a4
{
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  [(NSMutableDictionary *)self->_hashMap setObject:v7 forKeyedSubscript:v6];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)appsSyncingToDriveforAltDSID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(NSMutableDictionary *)self->_hashMap objectForKeyedSubscript:v4];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v5;
}

@end