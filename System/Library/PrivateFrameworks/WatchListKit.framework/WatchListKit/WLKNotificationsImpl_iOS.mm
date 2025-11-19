@interface WLKNotificationsImpl_iOS
+ (id)_JSONDictForResponse:(id)a3;
+ (unint64_t)_interruptionLevelForNumber:(id)a3;
- (BOOL)isCategoryBadgeSettingEnabledByUser:(int64_t)a3;
- (BOOL)isCategoryEnabledByUser:(int64_t)a3;
- (WLKNotificationCenterDelegate)delegate;
- (WLKNotificationsImpl_iOS)init;
- (id)_displayNameForSubsectionID:(id)a3;
- (id)_notificationCenter;
- (id)_topicIdentifierForCategory:(int64_t)a3;
- (void)_accountChangedNotification:(id)a3;
- (void)_fetchTopics:(id)a3;
- (void)_initializeTopics;
- (void)_networkReachabilityDidChangeNotification:(id)a3;
- (void)_storeFrontChangedNotification:(id)a3;
- (void)dealloc;
- (void)getNotificationSettings:(id)a3;
- (void)post:(id)a3 title:(id)a4 body:(id)a5 options:(id)a6;
- (void)setBadgeNumber:(id)a3 withCompletionHandler:(id)a4;
- (void)setBadgeString:(id)a3 withCompletionHandler:(id)a4;
- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4;
- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4;
- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5;
@end

@implementation WLKNotificationsImpl_iOS

- (WLKNotificationsImpl_iOS)init
{
  v6.receiver = self;
  v6.super_class = WLKNotificationsImpl_iOS;
  v2 = [(WLKNotificationsImpl_iOS *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(WLKNotificationsImpl_iOS *)v2 _notificationCenter];
    [(WLKNotificationsImpl_iOS *)v3 setTopicsAreInitialized:0];
    [(WLKNotificationsImpl_iOS *)v3 _initializeTopics];
  }

  return v3;
}

- (id)_notificationCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WLKNotificationsImpl_iOS__notificationCenter__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  if (_notificationCenter_onceToken_0 != -1)
  {
    dispatch_once(&_notificationCenter_onceToken_0, block);
  }

  return _notificationCenter__center_0;
}

- (void)_initializeTopics
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __45__WLKNotificationsImpl_iOS__initializeTopics__block_invoke;
  v2[3] = &unk_279E60168;
  v2[4] = self;
  [(WLKNotificationsImpl_iOS *)self _fetchTopics:v2];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLKNotificationsImpl_iOS;
  [(WLKNotificationsImpl_iOS *)&v4 dealloc];
}

- (void)post:(id)a3 title:(id)a4 body:(id)a5 options:(id)a6
{
  v34 = a6;
  v10 = MEMORY[0x277CE1F60];
  v11 = a5;
  v12 = a4;
  v32 = a3;
  v13 = objc_alloc_init(v10);
  v14 = [v34 objectForKeyedSubscript:@"interruptionLevel"];
  if (v14)
  {
    v15 = [objc_opt_class() _interruptionLevelForNumber:v14];
  }

  else
  {
    v15 = 1;
  }

  v16 = [v34 objectForKeyedSubscript:{@"sound", v32}];
  if ([v16 isEqualToString:@"silent"])
  {
    v17 = 0;
  }

  else
  {
    v17 = [MEMORY[0x277CE1FE0] defaultSound];
  }

  [v13 setInterruptionLevel:v15];
  [v13 setTitle:v12];

  [v13 setBody:v11];
  v18 = [v34 objectForKeyedSubscript:@"threadID"];
  [v13 setThreadIdentifier:v18];

  [v13 setSound:v17];
  v19 = [v34 objectForKeyedSubscript:@"expirationDate"];
  [v13 setExpirationDate:v19];

  if ([v34 wlk_BOOLForKey:@"isSession" defaultValue:0])
  {
    [v13 setCategoryIdentifier:@"SESSION"];
  }

  v20 = [v34 objectForKeyedSubscript:@"actionURL"];
  if (v20)
  {
    [v13 setDefaultActionURL:v20];
  }

  v21 = [v34 objectForKeyedSubscript:@"category"];
  v22 = [v21 integerValue];

  v23 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:v22];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEB98] setWithObject:v23];
    [v13 setTopicIdentifiers:v24];
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = [v34 objectForKeyedSubscript:@"actionMetrics"];

  if (v26)
  {
    v27 = [v34 objectForKeyedSubscript:@"actionMetrics"];
    [v25 setObject:v27 forKey:@"actionMetrics"];
  }

  v28 = [v34 objectForKeyedSubscript:@"bannerOnly"];

  if (v28)
  {
    v29 = [v34 objectForKeyedSubscript:@"bannerOnly"];
    [v25 setObject:v29 forKey:@"bannerOnly"];
  }

  [v13 setUserInfo:v25];
  v30 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v33 content:v13 trigger:0];

  v31 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  [v31 addNotificationRequest:v30 withCompletionHandler:&__block_literal_global_39];
}

- (void)setBadgeNumber:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v8 = [v7 longValue];

  [v9 setBadgeCount:v8 withCompletionHandler:v6];
}

- (void)setBadgeString:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  [v8 setBadgeString:v7 withCompletionHandler:v6];
}

- (BOOL)isCategoryEnabledByUser:(int64_t)a3
{
  v5 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v6 = [v5 notificationSettingsForTopics];

  v7 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v8 authorizationStatus] == 2;
  return v7;
}

- (BOOL)isCategoryBadgeSettingEnabledByUser:(int64_t)a3
{
  v5 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v6 = [v5 notificationSettingsForTopics];

  v7 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v8 badgeSetting] == 2;
  return v7;
}

- (void)getNotificationSettings:(id)a3
{
  v4 = a3;
  v5 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__WLKNotificationsImpl_iOS_getNotificationSettings___block_invoke;
  v7[3] = &unk_279E60140;
  v8 = v4;
  v6 = v4;
  [v5 getNotificationSettingsWithCompletionHandler:v7];
}

- (void)_fetchTopics:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__7;
  v19[4] = __Block_byref_object_dispose__7;
  v20 = 0;
  objc_initWeak(&location, self);
  v7 = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke;
  v11[3] = &unk_279E601E0;
  objc_copyWeak(&v17, &location);
  v15 = v21;
  v16 = v19;
  v8 = v6;
  v12 = v8;
  v9 = v4;
  v14 = v9;
  v10 = v5;
  v13 = v10;
  [v7 getNotificationSettingsForTopicsWithCompletionHandler:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
}

- (id)_displayNameForSubsectionID:(id)a3
{
  v3 = a3;
  if ([v3 isEqual:@"com.apple.tv.bulletins.explicit"])
  {
    v4 = @"CONTINUE_WATCHING";
LABEL_7:
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_288206BC0 table:@"WatchListKit"];

    goto LABEL_8;
  }

  if ([v3 isEqual:@"com.apple.tv.bulletins.implicit"])
  {
    v4 = @"FEATURED_SPORTS_AND_EVENTS";
    goto LABEL_7;
  }

  if ([v3 isEqual:@"com.apple.tv.bulletins.marketing"])
  {
    v4 = @"MARKETING_PUSH_NOTIFICATIONS";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_topicIdentifierForCategory:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_279E60200[a3 - 1];
  }
}

+ (unint64_t)_interruptionLevelForNumber:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
    if (v5 >= 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_networkReachabilityDidChangeNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(WLKNotificationsImpl_iOS *)v5 topicsAreInitialized];
  objc_sync_exit(v5);

  if (!v6)
  {
    v7 = +[WLKReachabilityMonitor sharedInstance];
    v8 = [v7 isNetworkReachable];

    if (v8)
    {
      v9 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - reachability changed, will refresh topics", v10, 2u);
      }

      [(WLKNotificationsImpl_iOS *)v5 _initializeTopics];
    }
  }
}

- (void)_accountChangedNotification:(id)a3
{
  v4 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Account changed, will refresh topics", buf, 2u);
  }

  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__WLKNotificationsImpl_iOS__accountChangedNotification___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)_storeFrontChangedNotification:(id)a3
{
  v4 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Storefront changed, will refresh topics", buf, 2u);
  }

  v5 = dispatch_time(0, 1000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__WLKNotificationsImpl_iOS__storeFrontChangedNotification___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)userNotificationCenter:(id)a3 willPresentNotification:(id)a4 withCompletionHandler:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - willPresentNotification. %@", &v15, 0xCu);
  }

  v9 = [v6 request];
  v10 = [v9 content];
  v11 = [v10 userInfo];

  v12 = [v11 objectForKey:@"bannerOnly"];
  LODWORD(v10) = [v12 BOOLValue];

  if (v10)
  {
    v13 = 16;
  }

  else
  {
    v13 = 27;
  }

  v7[2](v7, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v7;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didReceiveNotificationResponse. %@", buf, 0xCu);
  }

  if ([MEMORY[0x277CEE710] shouldHandleNotificationResponse:v7])
  {
    v10 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didReceiveNotificationResponse will be handled by AMS", buf, 2u);
    }

    v11 = MEMORY[0x277CEE710];
    v12 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
    v13 = [v11 handleNotificationResponse:v7 bag:v12];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__WLKNotificationsImpl_iOS_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
    v16[3] = &unk_279E5EA68;
    v17 = v8;
    [v13 addFinishBlock:v16];
  }

  else
  {
    v13 = [objc_opt_class() _JSONDictForResponse:v7];
    v14 = [(WLKNotificationsImpl_iOS *)self delegate];
    [v14 handleAction:v13];

    v8[2](v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didOpenApplicationForResponse:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didOpenApplicationForResponse. %@", &v10, 0xCu);
  }

  v7 = [objc_opt_class() _JSONDictForResponse:v5];
  v8 = [(WLKNotificationsImpl_iOS *)self delegate];
  [v8 handleAction:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)a3 didChangeSettings:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didChangeSettings. %@", &v12, 0xCu);
  }

  v8 = MEMORY[0x277CEE710];
  v9 = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v10 = [v8 notificationCenter:v5 didChangeSettings:v6 bag:v9];

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_JSONDictForResponse:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 actionIdentifier];
  if ([v5 isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v6 = WLKNotificationsOnActionKeyReasonActivation;
  }

  else
  {
    if (![v5 isEqualToString:*MEMORY[0x277CE20F0]])
    {
      goto LABEL_6;
    }

    v6 = WLKNotificationsOnActionKeyReasonDismissed;
  }

  [v4 setObject:*v6 forKey:@"reason"];
LABEL_6:
  v7 = [v3 notification];
  v8 = [v7 request];

  v9 = [v8 content];
  v10 = [v8 identifier];
  [v4 wlk_setObjectUnlessNil:v10 forKey:@"identifier"];

  v11 = [v9 title];
  [v4 wlk_setObjectUnlessNil:v11 forKey:@"title"];

  v12 = [v9 body];
  [v4 wlk_setObjectUnlessNil:v12 forKey:@"body"];

  v13 = [v9 userInfo];
  v14 = [v13 objectForKey:@"actionMetrics"];
  [v4 wlk_setObjectUnlessNil:v14 forKey:@"actionMetrics"];

  return v4;
}

- (WLKNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end