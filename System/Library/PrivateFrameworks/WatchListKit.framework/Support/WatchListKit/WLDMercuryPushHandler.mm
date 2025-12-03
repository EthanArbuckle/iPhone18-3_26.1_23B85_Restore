@interface WLDMercuryPushHandler
+ (id)_addMercurySilentNotifOfferSource:(id)source badgeId:(id)id;
+ (id)_getBadgeID:(id)d;
- (BOOL)shouldHandleNotification:(id)notification;
- (int64_t)_getBadgeAlertType:(id)type;
- (void)handleNotification:(id)notification shouldBadge:(BOOL)badge;
@end

@implementation WLDMercuryPushHandler

- (BOOL)shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
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
    v6 = [(WLDMercuryPushHandler *)self _getBadgeAlertType:notificationCopy]!= 0;
  }

  return v6;
}

- (void)handleNotification:(id)notification shouldBadge:(BOOL)badge
{
  badgeCopy = badge;
  notificationCopy = notification;
  v6 = [(WLDMercuryPushHandler *)self _getBadgeAlertType:notificationCopy];
  v7 = [objc_opt_class() _getBadgeID:notificationCopy];
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
    v13 = [notificationCopy wlk_dictionaryForKey:@"aps"];
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

    if (badgeCopy && [WLKBadgingUtilities addBadgeIdentifier:v10])
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

- (int64_t)_getBadgeAlertType:(id)type
{
  v3 = [type wlk_dictionaryForKey:@"aps"];
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

+ (id)_getBadgeID:(id)d
{
  v3 = [d wlk_dictionaryForKey:@"aps"];
  v4 = [v3 wlk_stringForKey:WLKOfferManagerKeyBadgeId];

  return v4;
}

+ (id)_addMercurySilentNotifOfferSource:(id)source badgeId:(id)id
{
  sourceCopy = source;
  idCopy = id;
  v7 = objc_alloc_init(NSMutableDictionary);
  if (sourceCopy && [sourceCopy count])
  {
    [v7 addEntriesFromDictionary:sourceCopy];
  }

  [v7 setObject:@"MercurySilentNotification" forKey:@"offerSource"];
  [v7 setObject:idCopy forKey:WLKOfferManagerKeyBadgeId];

  v8 = [v7 copy];

  return v8;
}

@end