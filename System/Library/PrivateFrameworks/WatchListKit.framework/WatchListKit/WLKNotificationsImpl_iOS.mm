@interface WLKNotificationsImpl_iOS
+ (id)_JSONDictForResponse:(id)response;
+ (unint64_t)_interruptionLevelForNumber:(id)number;
- (BOOL)isCategoryBadgeSettingEnabledByUser:(int64_t)user;
- (BOOL)isCategoryEnabledByUser:(int64_t)user;
- (WLKNotificationCenterDelegate)delegate;
- (WLKNotificationsImpl_iOS)init;
- (id)_displayNameForSubsectionID:(id)d;
- (id)_notificationCenter;
- (id)_topicIdentifierForCategory:(int64_t)category;
- (void)_accountChangedNotification:(id)notification;
- (void)_fetchTopics:(id)topics;
- (void)_initializeTopics;
- (void)_networkReachabilityDidChangeNotification:(id)notification;
- (void)_storeFrontChangedNotification:(id)notification;
- (void)dealloc;
- (void)getNotificationSettings:(id)settings;
- (void)post:(id)post title:(id)title body:(id)body options:(id)options;
- (void)setBadgeNumber:(id)number withCompletionHandler:(id)handler;
- (void)setBadgeString:(id)string withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response;
- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler;
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
    _notificationCenter = [(WLKNotificationsImpl_iOS *)v2 _notificationCenter];
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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLKNotificationsImpl_iOS;
  [(WLKNotificationsImpl_iOS *)&v4 dealloc];
}

- (void)post:(id)post title:(id)title body:(id)body options:(id)options
{
  optionsCopy = options;
  v10 = MEMORY[0x277CE1F60];
  bodyCopy = body;
  titleCopy = title;
  postCopy = post;
  v13 = objc_alloc_init(v10);
  v14 = [optionsCopy objectForKeyedSubscript:@"interruptionLevel"];
  if (v14)
  {
    v15 = [objc_opt_class() _interruptionLevelForNumber:v14];
  }

  else
  {
    v15 = 1;
  }

  v16 = [optionsCopy objectForKeyedSubscript:{@"sound", postCopy}];
  if ([v16 isEqualToString:@"silent"])
  {
    defaultSound = 0;
  }

  else
  {
    defaultSound = [MEMORY[0x277CE1FE0] defaultSound];
  }

  [v13 setInterruptionLevel:v15];
  [v13 setTitle:titleCopy];

  [v13 setBody:bodyCopy];
  v18 = [optionsCopy objectForKeyedSubscript:@"threadID"];
  [v13 setThreadIdentifier:v18];

  [v13 setSound:defaultSound];
  v19 = [optionsCopy objectForKeyedSubscript:@"expirationDate"];
  [v13 setExpirationDate:v19];

  if ([optionsCopy wlk_BOOLForKey:@"isSession" defaultValue:0])
  {
    [v13 setCategoryIdentifier:@"SESSION"];
  }

  v20 = [optionsCopy objectForKeyedSubscript:@"actionURL"];
  if (v20)
  {
    [v13 setDefaultActionURL:v20];
  }

  v21 = [optionsCopy objectForKeyedSubscript:@"category"];
  integerValue = [v21 integerValue];

  v23 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:integerValue];
  if (v23)
  {
    v24 = [MEMORY[0x277CBEB98] setWithObject:v23];
    [v13 setTopicIdentifiers:v24];
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v26 = [optionsCopy objectForKeyedSubscript:@"actionMetrics"];

  if (v26)
  {
    v27 = [optionsCopy objectForKeyedSubscript:@"actionMetrics"];
    [v25 setObject:v27 forKey:@"actionMetrics"];
  }

  v28 = [optionsCopy objectForKeyedSubscript:@"bannerOnly"];

  if (v28)
  {
    v29 = [optionsCopy objectForKeyedSubscript:@"bannerOnly"];
    [v25 setObject:v29 forKey:@"bannerOnly"];
  }

  [v13 setUserInfo:v25];
  v30 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v33 content:v13 trigger:0];

  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  [_notificationCenter addNotificationRequest:v30 withCompletionHandler:&__block_literal_global_39];
}

- (void)setBadgeNumber:(id)number withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  numberCopy = number;
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  longValue = [numberCopy longValue];

  [_notificationCenter setBadgeCount:longValue withCompletionHandler:handlerCopy];
}

- (void)setBadgeString:(id)string withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  [_notificationCenter setBadgeString:stringCopy withCompletionHandler:handlerCopy];
}

- (BOOL)isCategoryEnabledByUser:(int64_t)user
{
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  notificationSettingsForTopics = [_notificationCenter notificationSettingsForTopics];

  v7 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:user];
  v8 = [notificationSettingsForTopics objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v8 authorizationStatus] == 2;
  return v7;
}

- (BOOL)isCategoryBadgeSettingEnabledByUser:(int64_t)user
{
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  notificationSettingsForTopics = [_notificationCenter notificationSettingsForTopics];

  v7 = [(WLKNotificationsImpl_iOS *)self _topicIdentifierForCategory:user];
  v8 = [notificationSettingsForTopics objectForKeyedSubscript:v7];

  LOBYTE(v7) = [v8 badgeSetting] == 2;
  return v7;
}

- (void)getNotificationSettings:(id)settings
{
  settingsCopy = settings;
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__WLKNotificationsImpl_iOS_getNotificationSettings___block_invoke;
  v7[3] = &unk_279E60140;
  v8 = settingsCopy;
  v6 = settingsCopy;
  [_notificationCenter getNotificationSettingsWithCompletionHandler:v7];
}

- (void)_fetchTopics:(id)topics
{
  topicsCopy = topics;
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
  _notificationCenter = [(WLKNotificationsImpl_iOS *)self _notificationCenter];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke;
  v11[3] = &unk_279E601E0;
  objc_copyWeak(&v17, &location);
  v15 = v21;
  v16 = v19;
  v8 = v6;
  v12 = v8;
  v9 = topicsCopy;
  v14 = v9;
  v10 = v5;
  v13 = v10;
  [_notificationCenter getNotificationSettingsForTopicsWithCompletionHandler:v11];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
  _Block_object_dispose(v19, 8);

  _Block_object_dispose(v21, 8);
}

- (id)_displayNameForSubsectionID:(id)d
{
  dCopy = d;
  if ([dCopy isEqual:@"com.apple.tv.bulletins.explicit"])
  {
    v4 = @"CONTINUE_WATCHING";
LABEL_7:
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchListKit"];
    v6 = [v5 localizedStringForKey:v4 value:&stru_288206BC0 table:@"WatchListKit"];

    goto LABEL_8;
  }

  if ([dCopy isEqual:@"com.apple.tv.bulletins.implicit"])
  {
    v4 = @"FEATURED_SPORTS_AND_EVENTS";
    goto LABEL_7;
  }

  if ([dCopy isEqual:@"com.apple.tv.bulletins.marketing"])
  {
    v4 = @"MARKETING_PUSH_NOTIFICATIONS";
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (id)_topicIdentifierForCategory:(int64_t)category
{
  if ((category - 1) > 3)
  {
    return 0;
  }

  else
  {
    return off_279E60200[category - 1];
  }
}

+ (unint64_t)_interruptionLevelForNumber:(id)number
{
  numberCopy = number;
  v4 = numberCopy;
  if (numberCopy)
  {
    intValue = [numberCopy intValue];
    if (intValue >= 4)
    {
      v6 = 1;
    }

    else
    {
      v6 = intValue;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_networkReachabilityDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  topicsAreInitialized = [(WLKNotificationsImpl_iOS *)selfCopy topicsAreInitialized];
  objc_sync_exit(selfCopy);

  if (!topicsAreInitialized)
  {
    v7 = +[WLKReachabilityMonitor sharedInstance];
    isNetworkReachable = [v7 isNetworkReachable];

    if (isNetworkReachable)
    {
      v9 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - reachability changed, will refresh topics", v10, 2u);
      }

      [(WLKNotificationsImpl_iOS *)selfCopy _initializeTopics];
    }
  }
}

- (void)_accountChangedNotification:(id)notification
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

- (void)_storeFrontChangedNotification:(id)notification
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

- (void)userNotificationCenter:(id)center willPresentNotification:(id)notification withCompletionHandler:(id)handler
{
  v17 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  handlerCopy = handler;
  v8 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = notificationCopy;
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - willPresentNotification. %@", &v15, 0xCu);
  }

  request = [notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  v12 = [userInfo objectForKey:@"bannerOnly"];
  LODWORD(content) = [v12 BOOLValue];

  if (content)
  {
    v13 = 16;
  }

  else
  {
    v13 = 27;
  }

  handlerCopy[2](handlerCopy, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v9 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = responseCopy;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didReceiveNotificationResponse. %@", buf, 0xCu);
  }

  if ([MEMORY[0x277CEE710] shouldHandleNotificationResponse:responseCopy])
  {
    v10 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didReceiveNotificationResponse will be handled by AMS", buf, 2u);
    }

    v11 = MEMORY[0x277CEE710];
    wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
    v13 = [v11 handleNotificationResponse:responseCopy bag:wlk_defaultBag];

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __104__WLKNotificationsImpl_iOS_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
    v16[3] = &unk_279E5EA68;
    v17 = handlerCopy;
    [v13 addFinishBlock:v16];
  }

  else
  {
    v13 = [objc_opt_class() _JSONDictForResponse:responseCopy];
    delegate = [(WLKNotificationsImpl_iOS *)self delegate];
    [delegate handleAction:v13];

    handlerCopy[2](handlerCopy);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response
{
  v12 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v6 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = responseCopy;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didOpenApplicationForResponse. %@", &v10, 0xCu);
  }

  v7 = [objc_opt_class() _JSONDictForResponse:responseCopy];
  delegate = [(WLKNotificationsImpl_iOS *)self delegate];
  [delegate handleAction:v7];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  v14 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  settingsCopy = settings;
  v7 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = settingsCopy;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - didChangeSettings. %@", &v12, 0xCu);
  }

  v8 = MEMORY[0x277CEE710];
  wlk_defaultBag = [MEMORY[0x277CEE3F8] wlk_defaultBag];
  v10 = [v8 notificationCenter:centerCopy didChangeSettings:settingsCopy bag:wlk_defaultBag];

  v11 = *MEMORY[0x277D85DE8];
}

+ (id)_JSONDictForResponse:(id)response
{
  responseCopy = response;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  actionIdentifier = [responseCopy actionIdentifier];
  if ([actionIdentifier isEqualToString:*MEMORY[0x277CE20E8]])
  {
    v6 = WLKNotificationsOnActionKeyReasonActivation;
  }

  else
  {
    if (![actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]])
    {
      goto LABEL_6;
    }

    v6 = WLKNotificationsOnActionKeyReasonDismissed;
  }

  [dictionary setObject:*v6 forKey:@"reason"];
LABEL_6:
  notification = [responseCopy notification];
  request = [notification request];

  content = [request content];
  identifier = [request identifier];
  [dictionary wlk_setObjectUnlessNil:identifier forKey:@"identifier"];

  title = [content title];
  [dictionary wlk_setObjectUnlessNil:title forKey:@"title"];

  body = [content body];
  [dictionary wlk_setObjectUnlessNil:body forKey:@"body"];

  userInfo = [content userInfo];
  v14 = [userInfo objectForKey:@"actionMetrics"];
  [dictionary wlk_setObjectUnlessNil:v14 forKey:@"actionMetrics"];

  return dictionary;
}

- (WLKNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end