@interface ICQStoragePlanRecommendationCache
+ (id)sharedInstance;
- (ICQStoragePlanRecommendationCache)init;
- (id)extraQuotaNeeded;
- (void)setExtraQuotaNeeded:(id)a3 expiry:(id)a4;
@end

@implementation ICQStoragePlanRecommendationCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[ICQStoragePlanRecommendationCache sharedInstance];
  }

  v3 = sharedInstance_recommendationCache;

  return v3;
}

uint64_t __51__ICQStoragePlanRecommendationCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICQStoragePlanRecommendationCache);
  v1 = sharedInstance_recommendationCache;
  sharedInstance_recommendationCache = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ICQStoragePlanRecommendationCache)init
{
  v3.receiver = self;
  v3.super_class = ICQStoragePlanRecommendationCache;
  result = [(ICQStoragePlanRecommendationCache *)&v3 init];
  if (result)
  {
    result->_cacheLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setExtraQuotaNeeded:(id)a3 expiry:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_cacheLock);
  extraQuotaNeeded = self->_extraQuotaNeeded;
  self->_extraQuotaNeeded = v6;
  v9 = v6;

  expiry = self->_expiry;
  self->_expiry = v7;

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)extraQuotaNeeded
{
  os_unfair_lock_lock(&self->_cacheLock);
  expiry = self->_expiry;
  v4 = [MEMORY[0x277CBEAA8] date];
  [(NSDate *)expiry timeIntervalSinceDate:v4];
  v6 = v5;

  if (v6 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = self->_extraQuotaNeeded;
  }

  os_unfair_lock_unlock(&self->_cacheLock);

  return v7;
}

@end