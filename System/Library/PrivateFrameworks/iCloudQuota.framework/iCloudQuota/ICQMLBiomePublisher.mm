@interface ICQMLBiomePublisher
+ (id)_createEventWithMlServerScore:(id)a3 totalQuota:(id)a4 totalUsed:(id)a5 totalAvailable:(id)a6 bundleQuotaInBytes:(id)a7 commerceQuotaInBytes:(id)a8 iCloudSubscriptionEventType:(int)a9 displayEntry:(int)a10;
+ (id)_createEventWithQuotaInfoFrom:(id)a3 withType:(int)a4;
+ (void)_publishEvent:(id)a3;
+ (void)publishEventWithFetchOffersResponse:(id)a3;
+ (void)publishEventWithPushNotification:(id)a3;
+ (void)publishEventWithRefreshOfferDetailsResponse:(id)a3;
+ (void)publishOfferBuyActionEvent;
+ (void)publishOfferDisplayActionEvent;
+ (void)publishOfferDisplayActionEventWithBundleId:(id)a3;
@end

@implementation ICQMLBiomePublisher

+ (id)_createEventWithMlServerScore:(id)a3 totalQuota:(id)a4 totalUsed:(id)a5 totalAvailable:(id)a6 bundleQuotaInBytes:(id)a7 commerceQuotaInBytes:(id)a8 iCloudSubscriptionEventType:(int)a9 displayEntry:(int)a10
{
  v15 = MEMORY[0x277CF1730];
  v16 = a8;
  v17 = a7;
  v18 = a6;
  v19 = a5;
  v20 = a4;
  v21 = a3;
  v22 = [v15 alloc];
  v23 = objc_opt_respondsToSelector();

  v24 = _ICQGetLogSystem();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v25)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v24, OS_LOG_TYPE_DEFAULT, "[SUBD] New BiomeLibrary detected. Adding displayEntry parameter.", buf, 2u);
    }

    v26 = [objc_alloc(MEMORY[0x277CF1730]) initWithMlServerScore:v21 totalQuota:v20 totalUsed:v19 totalAvailable:v18 bundleQuotaInBytes:v17 commerceQuotaInBytes:v16 iCloudSubscriptionEventType:__PAIR64__(a10 displayEntry:a9)];
  }

  else
  {
    if (v25)
    {
      *v30 = 0;
      _os_log_impl(&dword_275572000, v24, OS_LOG_TYPE_DEFAULT, "[SUBD] Old BiomeLibrary detected. Using the deprecated init function.", v30, 2u);
    }

    LODWORD(v29) = a9;
    v26 = [objc_alloc(MEMORY[0x277CF1730]) initWithMlServerScore:v21 totalQuota:v20 totalUsed:v19 totalAvailable:v18 bundleQuotaInBytes:v17 commerceQuotaInBytes:v16 iCloudSubscriptionEventType:v29];
  }

  v27 = v26;

  return v27;
}

+ (id)_createEventWithQuotaInfoFrom:(id)a3 withType:(int)a4
{
  v6 = [_ICQHelperFunctions dictionaryForKey:@"quotaInfo" from:a3];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  v8 = [_ICQHelperFunctions numberForKey:@"totalQuota" from:v7];
  v9 = [_ICQHelperFunctions numberForKey:@"totalUsed" from:v7];
  v10 = [_ICQHelperFunctions numberForKey:@"totalAvailable" from:v7];
  v11 = [_ICQHelperFunctions numberForKey:@"bundleQuotaInBytes" from:v7];
  v12 = [_ICQHelperFunctions numberForKey:@"commerceQuotaInBytes" from:v7];
  v13 = [a1 _createEventWithMlServerScore:0 totalQuota:v8 totalUsed:v9 totalAvailable:v10 bundleQuotaInBytes:v11 commerceQuotaInBytes:v12 iCloudSubscriptionEventType:a4 displayEntry:?];

  return v13;
}

+ (void)_publishEvent:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] About to publish Biome event=[%@].", &v11, 0xCu);
  }

  v5 = BiomeLibrary();
  v6 = [v5 iCloud];
  v7 = [v6 Subscription];

  v8 = [v7 source];
  [v8 sendEvent:v3];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully published Biome event=[%@].", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)publishEventWithFetchOffersResponse:(id)a3
{
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Fetch Offers response event.", v6, 2u);
  }

  v5 = [ICQMLBiomePublisher _createEventWithQuotaInfoFrom:v3 withType:1];

  [ICQMLBiomePublisher _publishEvent:v5];
}

+ (void)publishEventWithRefreshOfferDetailsResponse:(id)a3
{
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Refresh Offer Details response event.", v6, 2u);
  }

  v5 = [ICQMLBiomePublisher _createEventWithQuotaInfoFrom:v3 withType:2];

  [ICQMLBiomePublisher _publishEvent:v5];
}

+ (void)publishEventWithPushNotification:(id)a3
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Push Notification event.", buf, 2u);
  }

  v6 = [_ICQHelperFunctions numberForKey:@"mlServerScore" from:v4];

  v7 = [a1 _createEventWithMlServerScore:v6 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:5 displayEntry:?];

  [ICQMLBiomePublisher _publishEvent:v7];
}

+ (void)publishOfferDisplayActionEvent
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing offer displayed to user.", buf, 2u);
  }

  v4 = [a1 _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:3 displayEntry:?];
  [ICQMLBiomePublisher _publishEvent:v4];
}

+ (void)publishOfferDisplayActionEventWithBundleId:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.iCloudQuota.ICQFollowup"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"com.apple.mobileslideshow"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"com.apple.mobilemail"])
  {
    v5 = 3;
  }

  else if ([v4 isEqualToString:@"com.apple.DocumentsApp"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v9) = 3;
  HIDWORD(v9) = v5;
  v6 = [a1 _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:v9 displayEntry:?];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing offer displayed to user. BundleID=[%@] event=[%@]", buf, 0x16u);
  }

  [ICQMLBiomePublisher _publishEvent:v6];
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)publishOfferBuyActionEvent
{
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing user clicked 'buy offer'.", buf, 2u);
  }

  v4 = [a1 _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:4 displayEntry:?];
  [ICQMLBiomePublisher _publishEvent:v4];
}

@end