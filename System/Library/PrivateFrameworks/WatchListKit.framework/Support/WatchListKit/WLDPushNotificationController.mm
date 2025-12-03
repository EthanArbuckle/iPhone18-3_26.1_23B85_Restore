@interface WLDPushNotificationController
- (BOOL)pushPaylod:(id)paylod shouldUpdateBadgeForBundleIdentifier:(id)identifier badgeIdentifier:(id)badgeIdentifier enabled:(BOOL)enabled;
- (WLDPushNotificationController)init;
- (id)_portNameForEnvironmentName:(id)name;
- (void)_augmentCustomEventInfo:(id)info;
- (void)_loadURLBagWithCompletionHandler:(id)handler;
- (void)_postNotificationToUser:(id)user title:(id)title body:(id)body options:(id)options;
- (void)_postNotificationWithPayload:(id)payload;
- (void)_registerOpportunisticTopics;
- (void)_reportBulletinMetrics:(id)metrics;
- (void)_reportMercuryMetrics:(id)metrics;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)handleAction:(id)action;
- (void)pushPayload:(id)payload withBadgeRequest:(id)request;
- (void)registerOpportunisticTopics;
@end

@implementation WLDPushNotificationController

- (WLDPushNotificationController)init
{
  v10.receiver = self;
  v10.super_class = WLDPushNotificationController;
  v2 = [(WLDPushNotificationController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    pendingOpportunisticTopics = v2->_pendingOpportunisticTopics;
    v2->_pendingOpportunisticTopics = v3;

    v5 = objc_alloc_init(WLKNotificationCenter);
    notifCenter = v2->_notifCenter;
    v2->_notifCenter = v5;

    [(WLKNotificationCenter *)v2->_notifCenter setDelegate:v2];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __37__WLDPushNotificationController_init__block_invoke;
    v8[3] = &unk_100044DB8;
    v9 = v2;
    [(WLDPushNotificationController *)v9 _loadURLBagWithCompletionHandler:v8];
  }

  return v2;
}

void __37__WLDPushNotificationController_init__block_invoke(uint64_t a1)
{
  v2 = WLDDispatchQueue();
  dispatch_assert_queue_V2(v2);

  v3 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(a1 + 32) + 16);
    *buf = 138412290;
    v48 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Push environment: %@", buf, 0xCu);
  }

  v5 = [APSConnection alloc];
  v6 = *(a1 + 32);
  v7 = v6[2];
  v8 = [v6 _portNameForEnvironmentName:v7];
  v9 = WLDDispatchQueue();
  v10 = [v5 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v9];
  v11 = *(a1 + 32);
  v12 = *(v11 + 8);
  *(v11 + 8) = v10;

  [*(*(a1 + 32) + 8) setDelegate:?];
  v13 = [*(*(a1 + 32) + 8) publicToken];
  v14 = [v13 base64EncodedStringWithOptions:0];

  if ([v14 length])
  {
    v15 = +[WLKSettingsStore sharedSettings];
    [v15 setPushToken:v14];
  }

  v16 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = +[TVAppAccountStoreObjC activeAccount];
    v18 = [v17 ams_DSID];
    v19 = *(*(a1 + 32) + 8);
    *buf = 138412802;
    v48 = v14;
    v49 = 2112;
    v50 = v18;
    v51 = 2112;
    v52 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Push token: %@, DSID: %@, connection: %@", buf, 0x20u);
  }

  v46[0] = @"com.apple.watchList";
  v46[1] = @"com.apple.tv.favoriteTeams";
  v20 = [NSArray arrayWithObjects:v46 count:2];
  [*(*(a1 + 32) + 8) _setEnabledTopics:v20];
  if ([*(*(a1 + 32) + 32) count])
  {
    [*(a1 + 32) _registerOpportunisticTopics];
  }

  v21 = [AMSMetrics alloc];
  v22 = WLKTVAppBundleID();
  v23 = +[AMSBag wlk_defaultBag];
  v24 = [v21 initWithContainerID:v22 bag:v23];
  v25 = *(a1 + 32);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  if (_os_feature_enabled_impl())
  {
    v45[0] = AMSPushActionTypeAlertNotification;
    v45[1] = AMSPushActionTypeBadging;
    v45[2] = AMSPushActionTypeFollowUp;
    v45[3] = AMSPushActionTypeGenericNotification;
    v45[4] = AMSPushActionTypeRichNotification;
    v45[5] = AMSPushActionTypeEngagement;
    v27 = [NSArray arrayWithObjects:v45 count:6];
    v28 = [NSSet setWithArray:v27];

    v29 = [[AMSPushConfiguration alloc] initWithEnabledActionTypes:v28];
    [v29 setEngagementPushTopic:@"com.apple.tv"];
  }

  else
  {
    v29 = [[AMSPushConfiguration alloc] initWithEnabledActionTypes:0];
  }

  [v29 setUserNotificationExtensionId:@"com.apple.tv-default"];
  v30 = [AMSPushHandler alloc];
  v31 = +[AMSBag wlk_defaultBag];
  v32 = [v30 initWithConfiguration:v29 bag:v31];
  v33 = *(a1 + 32);
  v34 = *(v33 + 64);
  *(v33 + 64) = v32;

  [*(*(a1 + 32) + 64) setDelegate:?];
  v35 = objc_alloc_init(WLDMercuryPushHandler);
  v36 = *(a1 + 32);
  v37 = *(v36 + 72);
  *(v36 + 72) = v35;

  v38 = objc_alloc_init(WLDUTSPushHandler);
  v39 = *(a1 + 32);
  v40 = *(v39 + 56);
  *(v39 + 56) = v38;

  [*(*(a1 + 32) + 56) setMetricsController:*(*(a1 + 32) + 40)];
  v41 = objc_alloc_init(WLDSportsLiveActivityPushHandler);
  v42 = *(a1 + 32);
  v43 = *(v42 + 80);
  *(v42 + 80) = v41;

  v44 = +[WLKBadgingUtilities sharedUtilities];
  [v44 migrateToNewBadgingSystemIfNeeded];
}

- (void)dealloc
{
  [(APSConnection *)self->_connection setDelegate:0];
  v3.receiver = self;
  v3.super_class = WLDPushNotificationController;
  [(WLDPushNotificationController *)&v3 dealloc];
}

- (void)registerOpportunisticTopics
{
  v3 = WLDDispatchQueue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __60__WLDPushNotificationController_registerOpportunisticTopics__block_invoke;
  block[3] = &unk_100044DB8;
  block[4] = self;
  dispatch_async(v3, block);
}

id __60__WLDPushNotificationController_registerOpportunisticTopics__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = WLKPushNotificationsLogObject();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Handling request to register opportunistic topics", buf, 2u);
    }

    return [*(a1 + 32) _registerOpportunisticTopics];
  }

  else
  {
    if (v4)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Deferring request to register opportunistic topics", v6, 2u);
    }

    return [*(*(a1 + 32) + 32) addObject:@"com.apple.tv.upnext"];
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - didReceivePublicToken: %@", &v10, 0xCu);
  }

  publicToken = [(APSConnection *)self->_connection publicToken];
  v8 = [publicToken base64EncodedStringWithOptions:0];

  if ([v8 length])
  {
    v9 = +[WLKSettingsStore sharedSettings];
    [v9 setPushToken:v8];
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  connectionCopy = connection;
  topicCopy = topic;
  infoCopy = info;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController.didReceiveMessageForTopic"];
  v11 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v55 = infoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Received push notification: %@", buf, 0xCu);
  }

  if (![topicCopy isEqualToString:@"com.apple.watchList"])
  {
    if ([topicCopy isEqualToString:@"com.apple.tv.upnext"])
    {
      if (![(WLDUTSPushHandler *)self->_utsPushHandler shouldHandleNotification:infoCopy])
      {
        v27 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = topicCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Notification is unhandled: %@", buf, 0xCu);
        }

        goto LABEL_54;
      }
    }

    else
    {
      if (![topicCopy isEqualToString:@"com.apple.tv.favoriteTeams"])
      {
        v28 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = topicCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Ignoring unknown topic: %@", buf, 0xCu);
        }

        v29 = v49[5];
        v49[5] = 0;

        goto LABEL_61;
      }

      if (![(WLDUTSPushHandler *)self->_utsPushHandler shouldHandleNotification:infoCopy])
      {
        v27 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v55 = topicCopy;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Notification is unhandled: %@", buf, 0xCu);
        }

        goto LABEL_54;
      }
    }

    [(WLDUTSPushHandler *)self->_utsPushHandler handleNotification:infoCopy];
LABEL_55:
    v37 = v49[5];
    v49[5] = 0;

    goto LABEL_61;
  }

  v12 = [WLDPushParsing actionTypeForNotification:infoCopy];
  v13 = v12;
  if (v12 == 31 || v12 == 21)
  {
    v14 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [NSNumber numberWithInteger:v13];
      *buf = 138412290;
      v55 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Received sync request of type: %@", buf, 0xCu);
    }

    v16 = [WLDPushParsing accountIdentifierForNotification:infoCopy];
    v17 = +[TVAppAccountStoreObjC activeAccount];
    ams_DSID = [v17 ams_DSID];
    v19 = [v16 isEqual:ams_DSID];

    if (v19)
    {
      if (v13 == 31)
      {
        v35 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Processing subscriptions sync request", buf, 2u);
        }

        v21 = +[WLDSubscriptionStore sharedInstance];
        v46[0] = _NSConcreteStackBlock;
        v46[1] = 3221225472;
        v46[2] = __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke_49;
        v46[3] = &unk_100044D48;
        v46[4] = &v48;
        [v21 fetchSubscriptionData:1 callerProcessID:getpid() completion:v46];
      }

      else
      {
        if (v13 != 21)
        {
LABEL_49:

          goto LABEL_61;
        }

        v20 = WLKPushNotificationsLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Processing settings sync request", buf, 2u);
        }

        v21 = +[WLKSettingsStore sharedSettings];
        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke;
        v47[3] = &unk_100044B10;
        v47[4] = &v48;
        [v21 synchronize:1 completion:v47];
      }
    }

    else
    {
      v26 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - accountIdentifer missing or mismatched", buf, 2u);
      }

      v21 = v49[5];
      v49[5] = 0;
    }

    goto LABEL_49;
  }

  if ([(AMSPushHandler *)self->_amsPushHandler shouldHandleNotification:infoCopy])
  {
    v22 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = topicCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - AMS wants to handle notification: %@", buf, 0xCu);
    }

    v23 = [infoCopy objectForKeyedSubscript:@"aps"];
    v24 = [v23 objectForKeyedSubscript:@"_ss"];
    v25 = v24 == 0;

    if (!v25)
    {
      [(AMSPushHandler *)self->_amsPushHandler handleNotification:infoCopy];
      goto LABEL_55;
    }

    v27 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [WLDPushNotificationController connection:v27 didReceiveMessageForTopic:? userInfo:?];
    }

LABEL_54:

    goto LABEL_55;
  }

  if ([(WLDMercuryPushHandler *)self->_mercuryPushHandler shouldHandleNotification:infoCopy])
  {
    v30 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v55 = topicCopy;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Handling mercury notification: %@", buf, 0xCu);
    }

    v31 = [infoCopy wlk_dictionaryForKey:@"aps"];
    v32 = [v31 wlk_dictionaryForKey:@"payload"];
    v33 = [v32 objectForKey:@"metrics"];
    if (v33)
    {
      [(WLDPushNotificationController *)self _reportMercuryMetrics:v33];
    }

    if ([(WLKNotificationCenter *)self->_notifCenter isCategoryEnabledByUser:4]&& ([(WLKNotificationCenter *)self->_notifCenter isCategoryBadgeSettingEnabledByUser:4]& 1) != 0)
    {
      v34 = 1;
    }

    else
    {
      v38 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - User has disabled Marketing notifs. Skip badging.", buf, 2u);
      }

      v34 = 0;
    }

    [(WLDMercuryPushHandler *)self->_mercuryPushHandler handleNotification:infoCopy shouldBadge:v34];
    v39 = v49[5];
    v49[5] = 0;
  }

  else if ([(WLDSportsLiveActivityPushHandler *)self->_sportsLiveActivityPushHandler shouldHandleNotification:infoCopy])
  {
    objc_initWeak(buf, self);
    sportsLiveActivityPushHandler = self->_sportsLiveActivityPushHandler;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke_54;
    v42[3] = &unk_100045870;
    objc_copyWeak(&v45, buf);
    v43 = infoCopy;
    v44 = &v48;
    [(WLDSportsLiveActivityPushHandler *)sportsLiveActivityPushHandler handleNotification:v43 completion:v42];

    objc_destroyWeak(&v45);
    objc_destroyWeak(buf);
  }

  else
  {
    v40 = [infoCopy wlk_dictionaryForKey:@"payload"];
    [(WLDPushNotificationController *)self _postNotificationWithPayload:v40];
    v41 = v49[5];
    v49[5] = 0;
  }

LABEL_61:
  _Block_object_dispose(&v48, 8);
}

void __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 description];
  }

  else
  {
    v7 = &stru_100047A18;
  }

  v8 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"NO";
    if (a2)
    {
      v9 = @"YES";
    }

    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Completed WLK settings sync with success:%@ %@", &v12, 0x16u);
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke_49(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 description];
  }

  else
  {
    v8 = &stru_100047A18;
  }

  v9 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"YES";
    if (!v5)
    {
      v10 = @"NO";
    }

    v13 = 138412546;
    v14 = v10;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Completed WLK subscription sync with success:%@ %@", &v13, 0x16u);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = 0;
}

void __79__WLDPushNotificationController_connection_didReceiveMessageForTopic_userInfo___block_invoke_54(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) wlk_dictionaryForKey:@"payload"];
    [WeakRetained _postNotificationWithPayload:v4];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

- (void)handleAction:(id)action
{
  actionCopy = action;
  v4 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController.handleAction"];
  v5 = [actionCopy objectForKey:WLKNotificationsOnActionKeyReason];
  v6 = [actionCopy objectForKey:WLKNotificationsKeyActionMetrics];
  if (v6 && [v5 isEqual:WLKNotificationsOnActionKeyReasonActivation])
  {
    [(WLDPushNotificationController *)self _reportBulletinMetrics:v6];
  }

  v7 = [actionCopy wlk_stringForKey:@"identifier"];
  if ([v5 isEqual:WLKNotificationsOnActionKeyReasonSession])
  {
    [(WLDSportsLiveActivityPushHandler *)self->_sportsLiveActivityPushHandler createLiveActivityForCanonicalId:v7 supplementaryData:0 completion:&__block_literal_global_10];
  }
}

- (BOOL)pushPaylod:(id)paylod shouldUpdateBadgeForBundleIdentifier:(id)identifier badgeIdentifier:(id)badgeIdentifier enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  badgeIdentifierCopy = badgeIdentifier;
  if (([(WLKNotificationCenter *)self->_notifCenter isCategoryEnabledByUser:4]& 1) == 0)
  {
    v9 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - AMSPushHandler -- badging is disabled in settings", &v14, 2u);
    }

    goto LABEL_13;
  }

  if (enabledCopy)
  {
    if ([WLKBadgingUtilities addBadgeIdentifier:badgeIdentifierCopy])
    {
      v9 = +[WLKBadgingUtilities currentBadgeNumber];
      v10 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        v11 = "WLDPushNotificationController - AMSPushHandler badge -- new badging number:%@";
LABEL_11:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, &v14, 0xCu);
        goto LABEL_12;
      }

      goto LABEL_12;
    }
  }

  else if ([WLKBadgingUtilities removeBadgeIdentifier:badgeIdentifierCopy])
  {
    v9 = +[WLKBadgingUtilities currentBadgeNumber];
    v10 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v9;
      v11 = "WLDPushNotificationController - AMSPushHandler unbadge -- new badging number:%@";
      goto LABEL_11;
    }

LABEL_12:

    v12 = +[WLKNotificationCenter defaultCenter];
    [v12 setBadgeNumber:v9 withCompletionHandler:0];

LABEL_13:
  }

  return 0;
}

- (void)_registerOpportunisticTopics
{
  v3 = WLDDispatchQueue();
  dispatch_assert_queue_V2(v3);

  opportunisticTopics = [(APSConnection *)self->_connection opportunisticTopics];
  if (([opportunisticTopics containsObject:@"com.apple.tv.upnext"] & 1) == 0)
  {
    v5 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = @"com.apple.tv.upnext";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Registering opportunistic topic: %@", &v8, 0xCu);
    }

    connection = self->_connection;
    v7 = [NSArray arrayWithObject:@"com.apple.tv.upnext"];
    [(APSConnection *)connection _setOpportunisticTopics:v7];

    [(NSMutableArray *)self->_pendingOpportunisticTopics removeObject:@"com.apple.tv.upnext"];
  }
}

- (void)_augmentCustomEventInfo:(id)info
{
  infoCopy = info;
  v3 = +[WLKSettingsStore sharedSettings];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 optedIn]);
  [infoCopy setObject:v4 forKey:@"gac"];

  consentedBrands = [v3 consentedBrands];
  v6 = [consentedBrands componentsJoinedByString:{@", "}];
  [infoCopy setObject:v6 forKey:@"cbids"];

  deniedBrands = [v3 deniedBrands];
  v8 = [deniedBrands componentsJoinedByString:{@", "}];
  [infoCopy setObject:v8 forKey:@"dbids"];

  v9 = +[WLKAppLibrary defaultAppLibrary];
  installedAppBundleIdentifiers = [v9 installedAppBundleIdentifiers];
  v11 = [installedAppBundleIdentifiers componentsJoinedByString:{@", "}];
  [infoCopy setObject:v11 forKey:@"ibids"];

  subscribedAppBundleIdentifiers = [v9 subscribedAppBundleIdentifiers];
  v13 = [subscribedAppBundleIdentifiers componentsJoinedByString:{@", "}];
  [infoCopy setObject:v13 forKey:@"sbids"];

  v14 = +[WLKStoredConfigurationManager sharedInstance];
  storedConfiguration = [v14 storedConfiguration];

  vppaState = [storedConfiguration vppaState];
  if (vppaState)
  {
    [infoCopy setObject:vppaState forKey:@"vppaState"];
  }

  v17 = WLKTVAppBundleID();
  [infoCopy setObject:v17 forKey:@"app"];

  v18 = +[TVAppBag app];
  v19 = [v18 dictionaryForKey:kBagKeyMetrics];

  if (v19)
  {
    v20 = [v19 valueForKey:@"metricsBase"];
    if (v20)
    {
      [infoCopy addEntriesFromDictionary:v20];
    }
  }
}

- (void)_reportBulletinMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = metricsCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![metricsCopy count])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v16 = metricsCopy;
    v5 = [NSArray arrayWithObjects:&v16 count:1];
  }

  v6 = v5;
LABEL_8:
  v7 = objc_alloc_init(NSMutableArray);
  objc_initWeak(&location, self);
  v8 = dispatch_get_global_queue(0, 0);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __56__WLDPushNotificationController__reportBulletinMetrics___block_invoke;
  v11[3] = &unk_100045380;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __56__WLDPushNotificationController__reportBulletinMetrics___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v16 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController._reportBulletinMetrics"];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = a1;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v18 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * v4);
        v6 = [[AMSMetricsEvent alloc] initWithTopic:@"xp_amp_notifications"];
        v7 = [UNUserNotificationCenter alloc];
        v8 = WLKTVAppBundleID();
        v9 = [v7 initWithBundleIdentifier:v8];

        v10 = [v9 notificationSettingsForTopics];
        v11 = [v9 notificationSettings];
        v12 = [[WLKPushNotificationMetricsManager alloc] initWithNotificationSettings:v11 notificationSettingsForTopic:v10];
        v13 = [v12 displayCriteria];
        [WeakRetained _augmentCustomEventInfo:v13];
        [v13 addEntriesFromDictionary:v5];
        [v6 addPropertiesWithDictionary:v13];
        [*(v19 + 40) addObject:v6];

        v4 = v4 + 1;
      }

      while (v3 != v4);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }

  v14 = *(v19 + 40);
  v15 = [WeakRetained metricsController];
  [WLDMetricsUtilities sendMetricsEvents:v14 metricsController:v15];
}

- (void)_reportMercuryMetrics:(id)metrics
{
  metricsCopy = metrics;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = metricsCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![metricsCopy count])
    {
      v6 = 0;
      goto LABEL_8;
    }

    v15 = metricsCopy;
    v5 = [NSArray arrayWithObjects:&v15 count:1];
  }

  v6 = v5;
LABEL_8:
  v7 = objc_alloc_init(NSMutableArray);
  v8 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __55__WLDPushNotificationController__reportMercuryMetrics___block_invoke;
  block[3] = &unk_1000458B8;
  v12 = v6;
  v13 = v7;
  selfCopy = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __55__WLDPushNotificationController__reportMercuryMetrics___block_invoke(uint64_t a1)
{
  v13 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController._reportMercuryMetrics"];
  v14 = a1;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [[AMSMetricsEvent alloc] initWithTopic:{@"xp_amp_notifications", v13}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v7 objectForKey:@"eventVersion"];
          if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v10 = WLKPushNotificationsLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - eventVersion: value is invalid.", buf, 2u);
            }
          }

          else
          {
            [v8 addPropertiesWithDictionary:v7];
            [*(v14 + 40) addObject:v8];
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = *(v14 + 40);
  v12 = [*(v14 + 48) metricsController];
  [WLDMetricsUtilities sendMetricsEvents:v11 metricsController:v12];
}

- (void)_postNotificationWithPayload:(id)payload
{
  payloadCopy = payload;
  v111 = 0;
  v112 = &v111;
  v113 = 0x3032000000;
  v114 = __Block_byref_object_copy__2;
  v115 = __Block_byref_object_dispose__2;
  v116 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController._postNotificationWithPayload"];
  v79 = [payloadCopy wlk_numberForKey:@"interruptionLevel"];
  v77 = [payloadCopy wlk_stringForKey:@"entityId"];
  v84 = [payloadCopy wlk_stringForKey:@"coalescingId"];
  v80 = [payloadCopy wlk_stringForKey:WLKNotificationsKeyType];
  v76 = MGCopyAnswer();
  v78 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v80 isEqualToString:@"gameStartWithFollow"] & (objc_msgSend(v76, "isEqualToString:", @"iPad") ^ 1));
  v3 = [payloadCopy wlk_dictionaryForKey:@"localizedTitle"];
  v82 = WLKPlatformStringFromDictionary(v3);

  has_internal_content = os_variant_has_internal_content();
  v5 = payloadCopy;
  if (has_internal_content)
  {
    v6 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v120 = v77;
      v121 = 2112;
      v122 = v84;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Canonical ID: %@ Coalescing ID: %@", buf, 0x16u);
    }

    v5 = payloadCopy;
  }

  v7 = [v5 wlk_dictionaryForKey:{@"localizedText", self}];
  v81 = WLKPlatformStringFromDictionary(v7);

  v8 = objc_alloc_init(NSMutableDictionary);
  [v8 setObject:&off_100049CC8 forKey:WLKNotificationsKeySource];
  [v8 wlk_setObjectUnlessNil:v79 forKey:WLKNotificationsKeyInterruptionLevel];
  v85 = v8;
  v9 = [payloadCopy wlk_stringForKey:@"threadId"];
  [v8 wlk_setObjectUnlessNil:v9 forKey:WLKNotificationsKeyThreadID];
  v75 = v9;
  v10 = [payloadCopy wlk_dateFromMillisecondsSince1970ForKey:@"displayEndTime"];
  [v8 wlk_setObjectUnlessNil:v10 forKey:WLKNotificationsKeyExpirationDate];
  v74 = v10;
  v83 = [payloadCopy objectForKey:@"metrics"];
  [v8 wlk_setObjectUnlessNil:v83 forKey:WLKNotificationsKeyMetrics];
  [v8 wlk_setObjectUnlessNil:v78 forKey:WLKNotificationsKeyIsSession];
  v11 = +[WLKAppLibrary defaultAppLibrary];
  allAppBundleIdentifiers = [v11 allAppBundleIdentifiers];

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v12 = [payloadCopy wlk_arrayForKey:@"actions"];
  v13 = [v12 countByEnumeratingWithState:&v107 objects:v118 count:16];
  obj = v12;
  if (v13)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v14 = *v108;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v108 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v107 + 1) + 8 * v15);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [v16 wlk_numberForKey:@"isTvAppAction"];
          bOOLValue = [v17 BOOLValue];

          v19 = [v16 wlk_stringForKey:@"type"];
          if (([v19 isEqualToString:@"LiveActivityAutostart"] & 1) == 0)
          {
            if (v90)
            {
              v20 = 0;
            }

            else
            {
              v20 = bOOLValue;
            }

            if (v20)
            {
LABEL_16:
              v21 = [v16 wlk_dictionaryForKey:@"clientActionDeepLinks"];
              v22 = WLKPlatformStringFromDictionary(v21);
              v23 = [v21 wlk_stringForKey:@"Universal"];
              v24 = v23;
              if (v20)
              {
                v25 = v23;
                if (v23 || (v25 = v22) != 0)
                {
                  v90 = [NSURL URLWithString:v25];
                }

                else
                {
                  v90 = 0;
                }

                v26 = [v16 wlk_dictionaryForKey:@"metrics"];
                v27 = v88;
                v88 = v26;
LABEL_42:
              }

              else if (!v89 && v22)
              {
                v89 = [NSURL URLWithString:v22];
                v41 = [v16 wlk_dictionaryForKey:@"metrics"];
                v27 = v87;
                v87 = v41;
                goto LABEL_42;
              }

              if (v89)
              {
                v42 = v90 == 0;
              }

              else
              {
                v42 = 1;
              }

              v43 = v42;

              if (!v43)
              {

                v45 = obj;
                goto LABEL_61;
              }
            }

            else if (!v89)
            {
              v28 = [v16 wlk_arrayForKey:@"bundleIds"];
              if (![v28 count])
              {
                v29 = [v16 wlk_stringForKey:@"brandId"];
                v30 = +[WLKChannelUtilities sharedInstance];
                v31 = [v30 channelForID:v29];

                appBundleIDs = [v31 appBundleIDs];

                v28 = appBundleIDs;
              }

              v105 = 0u;
              v106 = 0u;
              v103 = 0u;
              v104 = 0u;
              v33 = v28;
              v34 = [v33 countByEnumeratingWithState:&v103 objects:v117 count:16];
              if (v34)
              {
                v35 = *v104;
                while (2)
                {
                  for (i = 0; i != v34; i = i + 1)
                  {
                    if (*v104 != v35)
                    {
                      objc_enumerationMutation(v33);
                    }

                    if ([allAppBundleIdentifiers containsObject:*(*(&v103 + 1) + 8 * i)])
                    {

                      goto LABEL_16;
                    }
                  }

                  v34 = [v33 countByEnumeratingWithState:&v103 objects:v117 count:16];
                  if (v34)
                  {
                    continue;
                  }

                  break;
                }
              }

              v37 = WLKPushNotificationsLogObject();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v120 = v33;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Not inspecting action for bundleIDs: %@ because none are installed.", buf, 0xCu);
              }

              if (os_variant_has_internal_content())
              {
                v38 = WLKPushNotificationsLogObject();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = +[WLKAppLibrary defaultAppLibrary];
                  dictionaryRepresentation = [v39 dictionaryRepresentation];
                  *buf = 138412290;
                  v120 = dictionaryRepresentation;
                  _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - App library: %@", buf, 0xCu);
                }
              }

              v89 = 0;
            }
          }
        }

        v15 = v15 + 1;
      }

      while (v15 != v13);
      v44 = [obj countByEnumeratingWithState:&v107 objects:v118 count:16];
      v13 = v44;
      if (!v44)
      {

        if (v89)
        {
          goto LABEL_62;
        }

        goto LABEL_60;
      }
    }
  }

  v87 = 0;
  v88 = 0;
  v90 = 0;
LABEL_60:
  v46 = v90;
  v47 = v88;
  v45 = v87;
  v87 = v47;
  v88 = v47;
  v89 = v46;
  v90 = v46;
LABEL_61:

LABEL_62:
  [v85 wlk_setObjectUnlessNil:v89 forKey:WLKNotificationsKeyActionURL];
  [v85 wlk_setObjectUnlessNil:v87 forKey:WLKNotificationsKeyActionMetrics];
  v48 = [payloadCopy wlk_stringForKey:@"settingType"];
  if ([v48 isEqual:@"Explicit"])
  {
    v49 = 1;
    v50 = 1;
  }

  else if ([v48 isEqual:@"Implicit"])
  {
    v49 = 1;
    v50 = 2;
  }

  else
  {
    v49 = [v48 isEqual:@"Marketing"];
    if (v49)
    {
      v50 = 4;
    }

    else
    {
      v50 = 0;
    }
  }

  v51 = [NSNumber numberWithInteger:v50];
  [v85 setObject:v51 forKey:WLKNotificationsKeyCategory];

  v52 = [payloadCopy wlk_numberForKey:@"hasScore"];
  bOOLValue2 = [v52 BOOLValue];

  v54 = [v84 length];
  v55 = v54 != 0;
  if (!v54)
  {
    v56 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload lacks an identifier.", buf, 2u);
    }
  }

  if (![v82 length])
  {
    v57 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload lacks a title.", buf, 2u);
    }

    v55 = 0;
  }

  if (![v81 length])
  {
    v58 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload lacks a message.", buf, 2u);
    }

    v55 = 0;
  }

  if (v89)
  {
    if (!bOOLValue2)
    {
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  v59 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload lacks an action.", buf, 2u);
  }

  v55 = 0;
  if (bOOLValue2)
  {
LABEL_87:
    v60 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload has a score.", buf, 2u);
    }

    v61 = +[WLKSystemPreferencesStore sharedPreferences];
    sportsScoreSpoilersAllowed = [v61 sportsScoreSpoilersAllowed];

    if ((sportsScoreSpoilersAllowed & 1) == 0)
    {
      v63 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - User has sports scores disabled", buf, 2u);
      }

      v55 = 0;
    }
  }

LABEL_93:
  if ([WLDSportsLiveActivityPushHandler shouldSuppressNotification:payloadCopy])
  {
    v64 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Sports notification suppression is currently active for the event", buf, 2u);
    }

    v55 = 0;
  }

  if (_os_feature_enabled_impl() && ([payloadCopy wlk_BOOLForKey:@"isOnTv" defaultValue:1] & 1) == 0)
  {
    v65 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Sports notification suppresed - Not available on TV", buf, 2u);
    }

    v55 = 0;
  }

  if (((v49 | os_variant_has_internal_content()) & 1) == 0)
  {
    v66 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Payload lacks a known category type.", buf, 2u);
    }

    v55 = 0;
  }

  if (BYSetupAssistantNeedsToRun())
  {
    v67 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Buddy/OOB has not completed. Will drop notification", buf, 2u);
    }

    goto LABEL_113;
  }

  if (!v55)
  {
LABEL_113:
    v70 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Discarding notification with inappropriate payload.", buf, 2u);
    }

    v69 = v112[5];
    v112[5] = 0;
    goto LABEL_116;
  }

  if ([payloadCopy wlk_BOOLForKey:@"suppressIfTunedIn" defaultValue:0])
  {
    v68 = +[WLDPlaybackManager sharedManager];
    v93[0] = _NSConcreteStackBlock;
    v93[1] = 3221225472;
    v93[2] = __62__WLDPushNotificationController__postNotificationWithPayload___block_invoke;
    v93[3] = &unk_100045908;
    v94 = v77;
    v95 = v83;
    v96 = v73;
    v97 = v89;
    v98 = v84;
    v99 = v82;
    v100 = v81;
    v101 = v85;
    v102 = &v111;
    [v68 fetchDecoratedNowPlayingSummaries:v93];

    v69 = v94;
LABEL_116:

    goto LABEL_117;
  }

  v71 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v120 = v89;
    _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Will enqueue notification with action URL: %@", buf, 0xCu);
  }

  if (v83)
  {
    [v73 _reportBulletinMetrics:v83];
  }

  [v73 _postNotificationToUser:v84 title:v82 body:v81 options:v85];
LABEL_117:

  _Block_object_dispose(&v111, 8);
}

void __62__WLDPushNotificationController__postNotificationWithPayload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  +[NSMutableArray array];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __62__WLDPushNotificationController__postNotificationWithPayload___block_invoke_2;
  v4 = v12[3] = &unk_1000458E0;
  v13 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v12];

  v5 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Now Playing Canonicals: %@", buf, 0xCu);
  }

  if ([v4 containsObject:*(a1 + 32)])
  {
    v6 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Discarding notification for current game %@", buf, 0xCu);
    }
  }

  else
  {
    if (*(a1 + 40))
    {
      [*(a1 + 48) _reportBulletinMetrics:?];
    }

    v8 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Will enqueue notification with action URL: %@", buf, 0xCu);
    }

    [*(a1 + 48) _postNotificationToUser:*(a1 + 64) title:*(a1 + 72) body:*(a1 + 80) options:*(a1 + 88)];
  }

  v10 = *(*(a1 + 96) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;
}

void __62__WLDPushNotificationController__postNotificationWithPayload___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 canonicalID];
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

- (void)_postNotificationToUser:(id)user title:(id)title body:(id)body options:(id)options
{
  userCopy = user;
  titleCopy = title;
  bodyCopy = body;
  optionsCopy = options;
  v14 = [UNUserNotificationCenter alloc];
  v15 = WLKTVAppBundleID();
  v16 = [v14 initWithBundleIdentifier:v15];

  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = __76__WLDPushNotificationController__postNotificationToUser_title_body_options___block_invoke;
  v21[3] = &unk_100045930;
  objc_copyWeak(&v26, &location);
  v17 = userCopy;
  v22 = v17;
  v18 = titleCopy;
  v23 = v18;
  v19 = bodyCopy;
  v24 = v19;
  v20 = optionsCopy;
  v25 = v20;
  [v16 getNotificationSettingsWithCompletionHandler:v21];

  objc_destroyWeak(&v26);
  objc_destroyWeak(&location);
}

void __76__WLDPushNotificationController__postNotificationToUser_title_body_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  NSLog(@"notification authorization status:%ld.", [v3 authorizationStatus]);
  v5 = [v3 authorizationStatus];

  if (v5 == 2)
  {
    if (WeakRetained)
    {
      [WeakRetained[6] post:*(a1 + 32) title:*(a1 + 40) body:*(a1 + 48) options:*(a1 + 56)];
    }

    else
    {
      v6 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Push notification controller is nil. Notification not posted.", buf, 2u);
      }
    }
  }
}

- (void)_loadURLBagWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__2;
  v16[4] = __Block_byref_object_dispose__2;
  v17 = [[WLKTransactionScope alloc] initWithIdentifier:@"WLDPushNotificationController._loadURLBagWithCompletionHandler"];
  v5 = +[TVAppBag app];
  v6 = [v5 stringForKey:kBagKeyPushNotificationsEnvironment];

  v7 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - Configuration: %@", buf, 0xCu);
  }

  v8 = WLDDispatchQueue();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __66__WLDPushNotificationController__loadURLBagWithCompletionHandler___block_invoke;
  v11[3] = &unk_100045958;
  v12 = v6;
  selfCopy = self;
  v14 = handlerCopy;
  v15 = v16;
  v9 = handlerCopy;
  v10 = v6;
  dispatch_async(v8, v11);

  _Block_object_dispose(v16, 8);
}

void __66__WLDPushNotificationController__loadURLBagWithCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = [v2 copy];
    v4 = a1[5];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;
  }

  else
  {
    v6 = a1[5];
    v7 = APSEnvironmentProduction;
    v5 = *(v6 + 16);
    *(v6 + 16) = v7;
  }

  obj = CFPreferencesCopyAppValue(@"APSEnvironment", @"com.apple.WatchListKit");
  if ([obj length])
  {
    objc_storeStrong((a1[5] + 16), obj);
  }

  v8 = a1[6];
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *(a1[7] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

- (id)_portNameForEnvironmentName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:APSEnvironmentProduction])
  {
    v4 = @"com.apple.aps.watchlistd";
  }

  else if ([nameCopy isEqualToString:APSEnvironmentDevelopment])
  {
    v4 = @"com.apple.aps.watchlistd.dev";
  }

  else if ([nameCopy isEqualToString:APSEnvironmentDemo])
  {
    v4 = @"com.apple.aps.watchlistd.demo";
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pushPayload:(id)payload withBadgeRequest:(id)request
{
  requestCopy = request;
  if (_os_feature_enabled_impl())
  {
    metrics = [requestCopy metrics];
    enabled = [requestCopy enabled];
    v7 = +[WLKNotificationCenter defaultCenter];
    if (enabled)
    {
      v8 = [NSNumber numberWithInt:1];
      [v7 setBadgeNumber:v8 withCompletionHandler:0];

      [WLKBadgingUtilities storeBadgeRequest:requestCopy];
      if (!metrics)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = [NSNumber numberWithInt:0];
      [v7 setBadgeNumber:v9 withCompletionHandler:0];

      [WLKBadgingUtilities removeBadgeRequest:requestCopy];
      if (!metrics)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v10 = [AMSMetrics alloc];
    v11 = WLKTVAppBundleID();
    v12 = +[AMSBag wlk_defaultBag];
    v13 = [v10 initWithContainerID:v11 bag:v12];

    v14 = [[AMSMetricsEvent alloc] initWithUnderlyingDictionary:metrics];
    v15 = WLKPushNotificationsLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        badgeIdentifier = [requestCopy badgeIdentifier];
        v19 = 138412290;
        v20 = badgeIdentifier;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - WLDPushNotificationController: pushed display metrics for id %@", &v19, 0xCu);
      }

      [v13 enqueueEvent:v14];
    }

    else
    {
      if (v16)
      {
        badgeIdentifier2 = [requestCopy badgeIdentifier];
        v19 = 138412290;
        v20 = badgeIdentifier2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "WLDPushNotificationController - WLDPushNotificationController: found empty badge display metrics id %@", &v19, 0xCu);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
}

@end