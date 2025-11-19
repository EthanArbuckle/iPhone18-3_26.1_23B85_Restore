@interface WLDMercuryPushHandler
+ (id)_addMercurySilentNotifOfferSource:(id)a3 badgeId:(id)a4;
+ (id)_getBadgeID:(id)a3;
- (BOOL)shouldHandleNotification:(id)a3;
- (int64_t)_getBadgeAlertType:(id)a3;
- (void)handleNotification:(id)a3 shouldBadge:(BOOL)a4;
@end

@implementation WLDMercuryPushHandler

- (BOOL)shouldHandleNotification:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    v5 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDMercuryPushHandler - Ignore Mercury silent push since Badged UM is enabled.", v8, 2u);
    }

    v6 = 0;
  }

  else
  {
    v6 = [(WLDMercuryPushHandler *)self _getBadgeAlertType:v4]!= 0;
  }

  return v6;
}

- (void)handleNotification:(id)a3 shouldBadge:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  v6 = [(WLDMercuryPushHandler *)self _getBadgeAlertType:v18];
  v7 = [objc_opt_class() _getBadgeID:v18];
  v8 = v7;
  v9 = WLKNotificationsBadgingIdentifierDefaultValue;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (v6 == 3)
  {
LABEL_9:
    v13 = [v18 wlk_dictionaryForKey:@"aps"];
    v14 = [v13 wlk_dictionaryForKey:@"payload"];
    v15 = [objc_opt_class() _addMercurySilentNotifOfferSource:v14 badgeId:v10];
    v16 = +[WLKOfferManager defaultOfferManager];
    [v16 saveOffer:v15 completionHandler:0];

LABEL_10:
    goto LABEL_11;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_11;
    }

    if (v4 && [WLKBadgingUtilities addBadgeIdentifier:v10])
    {
      v11 = +[WLKBadgingUtilities currentBadgeNumber];
      v12 = +[WLKNotificationCenter defaultCenter];
      [v12 setBadgeNumber:v11 withCompletionHandler:0];
    }

    goto LABEL_9;
  }

  if ([WLKBadgingUtilities removeBadgeIdentifier:v10])
  {
    v13 = +[WLKBadgingUtilities currentBadgeNumber];
    v17 = +[WLKNotificationCenter defaultCenter];
    [v17 setBadgeNumber:v13 withCompletionHandler:0];

    v14 = +[WLKOfferManager defaultOfferManager];
    [v14 removeOfferByBadgeId:v10 completionHandler:0];
    goto LABEL_10;
  }

LABEL_11:
}

- (int64_t)_getBadgeAlertType:(id)a3
{
  v3 = [a3 wlk_dictionaryForKey:@"aps"];
  v4 = [v3 wlk_stringForKey:@"payloadType"];
  if ([v4 isEqualToString:@"mercury:tvapp:BadgeAlertAdd"])
  {
    v5 = 1;
  }

  else if ([v4 isEqualToString:@"mercury:tvapp:BadgeAlertRemove"])
  {
    v5 = 2;
  }

  else if ([v4 isEqualToString:@"mercury:tvapp:BadgeAlertNoBadge"])
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_getBadgeID:(id)a3
{
  v3 = [a3 wlk_dictionaryForKey:@"aps"];
  v4 = [v3 wlk_stringForKey:WLKOfferManagerKeyBadgeId];

  return v4;
}

+ (id)_addMercurySilentNotifOfferSource:(id)a3 badgeId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  if (v5 && [v5 count])
  {
    [v7 addEntriesFromDictionary:v5];
  }

  [v7 setObject:@"MercurySilentNotification" forKey:@"offerSource"];
  [v7 setObject:v6 forKey:WLKOfferManagerKeyBadgeId];

  v8 = [v7 copy];

  return v8;
}

@end