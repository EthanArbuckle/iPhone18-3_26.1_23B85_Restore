@interface ICQMLBiomePublisher
+ (id)_createEventWithMlServerScore:(id)score totalQuota:(id)quota totalUsed:(id)used totalAvailable:(id)available bundleQuotaInBytes:(id)bytes commerceQuotaInBytes:(id)inBytes iCloudSubscriptionEventType:(int)type displayEntry:(int)self0;
+ (id)_createEventWithQuotaInfoFrom:(id)from withType:(int)type;
+ (void)_publishEvent:(id)event;
+ (void)publishEventWithFetchOffersResponse:(id)response;
+ (void)publishEventWithPushNotification:(id)notification;
+ (void)publishEventWithRefreshOfferDetailsResponse:(id)response;
+ (void)publishOfferBuyActionEvent;
+ (void)publishOfferDisplayActionEvent;
+ (void)publishOfferDisplayActionEventWithBundleId:(id)id;
@end

@implementation ICQMLBiomePublisher

+ (id)_createEventWithMlServerScore:(id)score totalQuota:(id)quota totalUsed:(id)used totalAvailable:(id)available bundleQuotaInBytes:(id)bytes commerceQuotaInBytes:(id)inBytes iCloudSubscriptionEventType:(int)type displayEntry:(int)self0
{
  v15 = MEMORY[0x277CF1730];
  inBytesCopy = inBytes;
  bytesCopy = bytes;
  availableCopy = available;
  usedCopy = used;
  quotaCopy = quota;
  scoreCopy = score;
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

    v26 = [objc_alloc(MEMORY[0x277CF1730]) initWithMlServerScore:scoreCopy totalQuota:quotaCopy totalUsed:usedCopy totalAvailable:availableCopy bundleQuotaInBytes:bytesCopy commerceQuotaInBytes:inBytesCopy iCloudSubscriptionEventType:__PAIR64__(entry displayEntry:type)];
  }

  else
  {
    if (v25)
    {
      *v30 = 0;
      _os_log_impl(&dword_275572000, v24, OS_LOG_TYPE_DEFAULT, "[SUBD] Old BiomeLibrary detected. Using the deprecated init function.", v30, 2u);
    }

    LODWORD(v29) = type;
    v26 = [objc_alloc(MEMORY[0x277CF1730]) initWithMlServerScore:scoreCopy totalQuota:quotaCopy totalUsed:usedCopy totalAvailable:availableCopy bundleQuotaInBytes:bytesCopy commerceQuotaInBytes:inBytesCopy iCloudSubscriptionEventType:v29];
  }

  v27 = v26;

  return v27;
}

+ (id)_createEventWithQuotaInfoFrom:(id)from withType:(int)type
{
  v6 = [_ICQHelperFunctions dictionaryForKey:@"quotaInfo" from:from];
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
  v13 = [self _createEventWithMlServerScore:0 totalQuota:v8 totalUsed:v9 totalAvailable:v10 bundleQuotaInBytes:v11 commerceQuotaInBytes:v12 iCloudSubscriptionEventType:type displayEntry:?];

  return v13;
}

+ (void)_publishEvent:(id)event
{
  v13 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = eventCopy;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] About to publish Biome event=[%@].", &v11, 0xCu);
  }

  v5 = BiomeLibrary();
  iCloud = [v5 iCloud];
  subscription = [iCloud Subscription];

  source = [subscription source];
  [source sendEvent:eventCopy];
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = eventCopy;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully published Biome event=[%@].", &v11, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)publishEventWithFetchOffersResponse:(id)response
{
  responseCopy = response;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Fetch Offers response event.", v6, 2u);
  }

  v5 = [ICQMLBiomePublisher _createEventWithQuotaInfoFrom:responseCopy withType:1];

  [ICQMLBiomePublisher _publishEvent:v5];
}

+ (void)publishEventWithRefreshOfferDetailsResponse:(id)response
{
  responseCopy = response;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Refresh Offer Details response event.", v6, 2u);
  }

  v5 = [ICQMLBiomePublisher _createEventWithQuotaInfoFrom:responseCopy withType:2];

  [ICQMLBiomePublisher _publishEvent:v5];
}

+ (void)publishEventWithPushNotification:(id)notification
{
  notificationCopy = notification;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "[SUBD] Biome publishing Push Notification event.", buf, 2u);
  }

  v6 = [_ICQHelperFunctions numberForKey:@"mlServerScore" from:notificationCopy];

  v7 = [self _createEventWithMlServerScore:v6 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:5 displayEntry:?];

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

  v4 = [self _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:3 displayEntry:?];
  [ICQMLBiomePublisher _publishEvent:v4];
}

+ (void)publishOfferDisplayActionEventWithBundleId:(id)id
{
  v14 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([idCopy isEqualToString:@"com.apple.iCloudQuota.ICQFollowup"])
  {
    v5 = 1;
  }

  else if ([idCopy isEqualToString:@"com.apple.mobileslideshow"])
  {
    v5 = 2;
  }

  else if ([idCopy isEqualToString:@"com.apple.mobilemail"])
  {
    v5 = 3;
  }

  else if ([idCopy isEqualToString:@"com.apple.DocumentsApp"])
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v9) = 3;
  HIDWORD(v9) = v5;
  v6 = [self _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:v9 displayEntry:?];
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = idCopy;
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

  v4 = [self _createEventWithMlServerScore:0 totalQuota:0 totalUsed:0 totalAvailable:0 bundleQuotaInBytes:0 commerceQuotaInBytes:0 iCloudSubscriptionEventType:4 displayEntry:?];
  [ICQMLBiomePublisher _publishEvent:v4];
}

@end