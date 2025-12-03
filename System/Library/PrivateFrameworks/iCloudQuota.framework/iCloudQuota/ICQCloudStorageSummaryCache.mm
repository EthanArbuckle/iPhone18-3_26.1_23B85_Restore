@interface ICQCloudStorageSummaryCache
+ (id)sharedInstance;
- (BOOL)hasDisplayedDetailsPage;
- (ICQCloudStorageSummaryCache)init;
- (id)storageSummaryForAltDSID:(id)d;
- (void)_cleanupCacheForPrimaryAccount;
- (void)_startObservingCloudSubscriptionFeaturesNotifications;
- (void)_startObservingQuotaChangeNotifications;
- (void)_stopObservingCloudSubscriptionFeaturesNotifications;
- (void)_stopObservingQuotaChangeNotifications;
- (void)dealloc;
- (void)setHasDisplayedDetailsPage:(BOOL)page;
- (void)setStorageSummary:(id)summary forAltDSID:(id)d;
@end

@implementation ICQCloudStorageSummaryCache

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[ICQCloudStorageSummaryCache sharedInstance];
  }

  v3 = sharedInstance_cache_1;

  return v3;
}

uint64_t __45__ICQCloudStorageSummaryCache_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ICQCloudStorageSummaryCache);
  v1 = sharedInstance_cache_1;
  sharedInstance_cache_1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ICQCloudStorageSummaryCache)init
{
  v6.receiver = self;
  v6.super_class = ICQCloudStorageSummaryCache;
  v2 = [(ICQCloudStorageSummaryCache *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    summaryCache = v2->_summaryCache;
    v2->_summaryCache = v3;

    v2->_cacheLock._os_unfair_lock_opaque = 0;
    [(ICQCloudStorageSummaryCache *)v2 _startObservingQuotaChangeNotifications];
    [(ICQCloudStorageSummaryCache *)v2 _startObservingCloudSubscriptionFeaturesNotifications];
  }

  return v2;
}

- (void)dealloc
{
  [(ICQCloudStorageSummaryCache *)self _stopObservingQuotaChangeNotifications];
  [(ICQCloudStorageSummaryCache *)self _stopObservingCloudSubscriptionFeaturesNotifications];
  v3.receiver = self;
  v3.super_class = ICQCloudStorageSummaryCache;
  [(ICQCloudStorageSummaryCache *)&v3 dealloc];
}

- (BOOL)hasDisplayedDetailsPage
{
  os_unfair_lock_lock(&self->_cacheLock);
  hasDisplayedDetailsPage = self->_hasDisplayedDetailsPage;
  os_unfair_lock_unlock(&self->_cacheLock);
  return hasDisplayedDetailsPage;
}

- (void)setHasDisplayedDetailsPage:(BOOL)page
{
  os_unfair_lock_lock(&self->_cacheLock);
  self->_hasDisplayedDetailsPage = page;

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)setStorageSummary:(id)summary forAltDSID:(id)d
{
  dCopy = d;
  summaryCopy = summary;
  os_unfair_lock_lock(&self->_cacheLock);
  [(NSMutableDictionary *)self->_summaryCache setObject:summaryCopy forKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (id)storageSummaryForAltDSID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_cacheLock);
  v5 = [(NSMutableDictionary *)self->_summaryCache objectForKeyedSubscript:dCopy];

  os_unfair_lock_unlock(&self->_cacheLock);

  return v5;
}

- (void)_startObservingQuotaChangeNotifications
{
  if (!self->_quotaChangeNotificationObserver)
  {
    objc_initWeak(&location, self);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__ICQCloudStorageSummaryCache__startObservingQuotaChangeNotifications__block_invoke;
    v13[3] = &unk_27A652D88;
    objc_copyWeak(&v14, &location);
    v5 = [defaultCenter addObserverForName:@"QuotaDidChange" object:0 queue:mainQueue usingBlock:v13];
    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = v5;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    mainQueue2 = [MEMORY[0x277CCABD8] mainQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __70__ICQCloudStorageSummaryCache__startObservingQuotaChangeNotifications__block_invoke_8;
    v11[3] = &unk_27A652D88;
    objc_copyWeak(&v12, &location);
    v9 = [defaultCenter2 addObserverForName:@"QuotaInformationChanged" object:0 queue:mainQueue2 usingBlock:v11];
    quotaInfoChangeNotificationObserver = self->_quotaInfoChangeNotificationObserver;
    self->_quotaInfoChangeNotificationObserver = v9;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __70__ICQCloudStorageSummaryCache__startObservingQuotaChangeNotifications__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"QuotaDidChange";
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupCacheForPrimaryAccount];

  v4 = *MEMORY[0x277D85DE8];
}

void __70__ICQCloudStorageSummaryCache__startObservingQuotaChangeNotifications__block_invoke_8(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = @"QuotaInformationChanged";
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "Received notification: %@", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupCacheForPrimaryAccount];

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_startObservingCloudSubscriptionFeaturesNotifications
{
  if (!self->_cloudSubscriptionFeaturesObserver)
  {
    v4 = [MEMORY[0x277CFB450] registerForFeatureChangeNotificationsUsingBlock:&__block_literal_global_11_0];
    cloudSubscriptionFeaturesObserver = self->_cloudSubscriptionFeaturesObserver;
    self->_cloudSubscriptionFeaturesObserver = v4;

    MEMORY[0x2821F96F8](v4, cloudSubscriptionFeaturesObserver);
  }
}

void __84__ICQCloudStorageSummaryCache__startObservingCloudSubscriptionFeaturesNotifications__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = _ICQGetLogSystem();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = @"QuotaDidChange";
    _os_log_impl(&dword_275572000, v0, OS_LOG_TYPE_DEFAULT, "Received CSF notification, posting QuotaDidChange notification named: %@", &v3, 0xCu);
  }

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:@"QuotaDidChange" object:0];

  v2 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingQuotaChangeNotifications
{
  if (self->_quotaChangeNotificationObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->_quotaChangeNotificationObserver];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self->_quotaInfoChangeNotificationObserver];

    quotaChangeNotificationObserver = self->_quotaChangeNotificationObserver;
    self->_quotaChangeNotificationObserver = 0;

    quotaInfoChangeNotificationObserver = self->_quotaInfoChangeNotificationObserver;
    self->_quotaInfoChangeNotificationObserver = 0;
  }
}

- (void)_stopObservingCloudSubscriptionFeaturesNotifications
{
  if (self->_cloudSubscriptionFeaturesObserver)
  {
    [MEMORY[0x277CFB450] unregisterForFeatureChangeNotificationsUsingObserver:?];
    cloudSubscriptionFeaturesObserver = self->_cloudSubscriptionFeaturesObserver;
    self->_cloudSubscriptionFeaturesObserver = 0;
  }
}

- (void)_cleanupCacheForPrimaryAccount
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  if (aa_altDSID)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    [(NSMutableDictionary *)self->_summaryCache setObject:0 forKeyedSubscript:aa_altDSID];
    os_unfair_lock_unlock(&self->_cacheLock);
  }
}

@end