@interface WLDUTSPushHandler
- (BOOL)shouldHandleNotification:(id)notification;
- (id)_debugDescriptionForNotificationType:(int64_t)type;
- (void)_handlePayload:(id)payload forNotificationType:(int64_t)type;
- (void)_handlePayloadExpiredForNotificationType:(int64_t)type;
- (void)_handlePayloadInvalidatedForNotificationType:(int64_t)type;
- (void)_reportMetrics:(id)metrics;
- (void)handleNotification:(id)notification;
@end

@implementation WLDUTSPushHandler

- (BOOL)shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
  if ([WLDPushParsing actionTypeForNotification:notificationCopy]- 34 > 4)
  {
    v6 = 0;
  }

  else
  {
    v4 = [notificationCopy wlk_dictionaryForKey:@"payload"];
    v5 = [v4 wlk_stringForKey:@"type"];
    v6 = ([v5 isEqualToString:@"upNextChanges"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"favoriteTeamsChanges") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"favoritesSyncSettings") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"favoriteLeaguesChanges") & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"favoriteSportingEventsChanges");
  }

  return v6;
}

- (void)handleNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [WLDPushParsing actionTypeForNotification:notificationCopy];
  v6 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(WLDUTSPushHandler *)self _debugDescriptionForNotificationType:v5];
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Handling %@ notification", &v16, 0xCu);
  }

  v8 = [notificationCopy wlk_dictionaryForKey:@"payload"];

  if (v8)
  {
    v9 = [v8 wlk_dateFromMillisecondsSince1970ForKey:@"expiresAt"];
    v10 = [v8 wlk_BOOLForKey:@"invalidate" defaultValue:0];
    v11 = +[NSDate date];
    v12 = [v11 compare:v9];

    if (v12 == 1)
    {
      v13 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v9;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Payload is expired %@, ignoring and invalidating", &v16, 0xCu);
      }

      [(WLDUTSPushHandler *)self _handlePayloadExpiredForNotificationType:v5];
    }

    else if (v10)
    {
      v14 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Payload indicates invalidation", &v16, 2u);
      }

      [(WLDUTSPushHandler *)self _handlePayloadInvalidatedForNotificationType:v5];
    }

    else
    {
      [(WLDUTSPushHandler *)self _handlePayload:v8 forNotificationType:v5];
    }

    v15 = [v8 wlk_dictionaryForKey:@"metrics"];
    if (v15)
    {
      [(WLDUTSPushHandler *)self _reportMetrics:v15];
    }
  }

  else
  {
    v9 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - No payload.", &v16, 2u);
    }
  }
}

- (id)_debugDescriptionForNotificationType:(int64_t)type
{
  if ((type - 34) > 4)
  {
    return 0;
  }

  else
  {
    return off_100045228[type - 34];
  }
}

- (void)_handlePayloadExpiredForNotificationType:(int64_t)type
{
  if (type > 36)
  {
    if ((type - 37) >= 2)
    {
      return;
    }

    goto LABEL_12;
  }

  if (type != 34)
  {
    if (type != 35)
    {
      if (type != 36)
      {
        return;
      }

      v3 = +[WLKSportsFavoriteManager defaultManager];
      [v3 handleSyncSettingChangedNotification];

      v4 = 0;
      goto LABEL_13;
    }

    v5 = +[WLKSportsFavoriteManager defaultManager];
    [v5 handleRefreshCacheNotification];

LABEL_12:
    v4 = 1;
LABEL_13:

    [SportsFavoriteServiceObjC markCacheTopicDirty:v4];
    return;
  }

  v6 = +[WLKUpNextDeltaStore sharedInstance];
  [v6 delete:&__block_literal_global_3];
}

void __62__WLDUTSPushHandler__handlePayloadExpiredForNotificationType___block_invoke(id a1, BOOL a2, NSError *a3)
{
  +[WLKUpNextWidgetCacheManager requestInvalidation];

  +[WLKUpNextWidgetCacheManager requestReload];
}

- (void)_handlePayloadInvalidatedForNotificationType:(int64_t)type
{
  if (type > 36)
  {
    if ((type - 37) >= 2)
    {
      return;
    }

    goto LABEL_12;
  }

  if (type != 34)
  {
    if (type != 35)
    {
      if (type != 36)
      {
        return;
      }

      v3 = +[WLKSportsFavoriteManager defaultManager];
      [v3 handleSyncSettingChangedNotification];

      v4 = 0;
      goto LABEL_13;
    }

    v5 = +[WLKSportsFavoriteManager defaultManager];
    [v5 handleRefreshCacheNotification];

LABEL_12:
    v4 = 1;
LABEL_13:

    [SportsFavoriteServiceObjC markCacheTopicDirty:v4];
    return;
  }

  v6 = +[WLKUpNextDeltaStore sharedInstance];
  [v6 delete:&__block_literal_global_50];
}

void __66__WLDUTSPushHandler__handlePayloadInvalidatedForNotificationType___block_invoke(id a1, BOOL a2, NSError *a3)
{
  +[WLKUpNextWidgetCacheManager requestInvalidation];

  +[WLKUpNextWidgetCacheManager requestReload];
}

- (void)_handlePayload:(id)payload forNotificationType:(int64_t)type
{
  payloadCopy = payload;
  if (type > 36)
  {
    if ((type - 37) >= 2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  switch(type)
  {
    case '""':
      v8 = [[WLKUpNextDelta alloc] initWithDictionary:payloadCopy];
      if (v8)
      {
        v9 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          items = [v8 items];
          v13 = 134217984;
          v14 = [items count];
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Processed Up Next delta with %lu items", &v13, 0xCu);
        }

        v11 = +[WLKUpNextDeltaStore sharedInstance];
        [v11 merge:v8 completion:&__block_literal_global_53];
      }

      break;
    case '#':
      v12 = +[WLKSportsFavoriteManager defaultManager];
      [v12 handleRefreshCacheNotification];

LABEL_14:
      v7 = 1;
      goto LABEL_15;
    case '$':
      v6 = +[WLKSportsFavoriteManager defaultManager];
      [v6 handleSyncSettingChangedNotification];

      v7 = 0;
LABEL_15:
      [SportsFavoriteServiceObjC markCacheTopicDirty:v7];
      break;
  }

LABEL_16:
}

void __56__WLDUTSPushHandler__handlePayload_forNotificationType___block_invoke(id a1, BOOL a2, NSError *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = WLKPushNotificationsLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Successfully saved Up Next delta, requesting reload", &v7, 2u);
    }

    +[WLKUpNextWidgetCacheManager requestReload];
  }

  else
  {
    if (v6)
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Failed to save Up Next delta: %@", &v7, 0xCu);
    }
  }
}

- (void)_reportMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDUTSPushHandler - Reporting metrics", v10, 2u);
  }

  v6 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_notifications"];
  v7 = v6;
  if (v6)
  {
    [v6 addPropertiesWithDictionary:metricsCopy];
    v11 = v7;
    v8 = [NSArray arrayWithObjects:&v11 count:1];
    metricsController = [(WLDUTSPushHandler *)self metricsController];
    [WLDMetricsUtilities sendMetricsEvents:v8 metricsController:metricsController];
  }
}

@end