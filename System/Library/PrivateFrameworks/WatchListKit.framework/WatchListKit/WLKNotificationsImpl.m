@interface WLKNotificationsImpl
@end

@implementation WLKNotificationsImpl

void __47__WLKNotificationsImpl_iOS__notificationCenter__block_invoke(uint64_t a1)
{
  if (WLKIsDaemon())
  {
    v2 = objc_alloc(MEMORY[0x277CE2028]);
    v3 = WLKTVAppBundleID();
    v4 = [v2 initWithBundleIdentifier:v3];
    v5 = _notificationCenter__center_0;
    _notificationCenter__center_0 = v4;

    [_notificationCenter__center_0 setWantsNotificationResponsesDelivered];
    [_notificationCenter__center_0 setPrivateDelegate:*(a1 + 32)];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = *(a1 + 32);
    v8 = +[WLKReachabilityMonitor sharedInstance];
    [v6 addObserver:v7 selector:sel__networkReachabilityDidChangeNotification_ name:@"WLKReachabilityMonitorReachabilityDidChange" object:v8];

    v9 = *(a1 + 32);
    v10 = +[WLKAccountMonitor sharedInstance];
    [v6 addObserver:v9 selector:sel__accountChangedNotification_ name:@"WLKAccountMonitorAccountDidChange" object:v10];

    v11 = *(a1 + 32);
    v12 = +[WLKAccountMonitor sharedInstance];
    [v6 addObserver:v11 selector:sel__storeFrontChangedNotification_ name:@"WLKAccountMontiorStoreFrontDidChange" object:v12];
  }

  else
  {
    v13 = [MEMORY[0x277CE2028] currentNotificationCenter];
    v6 = _notificationCenter__center_0;
    _notificationCenter__center_0 = v13;
  }

  [_notificationCenter__center_0 setDelegate:*(a1 + 32)];
  v14 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"com.apple.tv-default" actions:MEMORY[0x277CBEBF8] intentIdentifiers:MEMORY[0x277CBEBF8] options:1];
  v15 = _notificationCenter__center_0;
  v16 = [MEMORY[0x277CBEB98] setWithObjects:{v14, 0}];
  [v15 setNotificationCategories:v16];

  v17 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Center setup", buf, 2u);
  }
}

void __45__WLKNotificationsImpl_iOS__initializeTopics__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &stru_288206BC0;
    if (v6)
    {
      v8 = v6;
    }

    v11 = 138412290;
    v12 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - fetch topics complete. %@", &v11, 0xCu);
  }

  if (!v6)
  {
    v9 = [*(a1 + 32) _notificationCenter];
    [v9 setNotificationTopics:v5 withCompletionHandler:&__block_literal_global_41];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __45__WLKNotificationsImpl_iOS__initializeTopics__block_invoke_39(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = &stru_288206BC0;
    if (v2)
    {
      v4 = v2;
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Set topics complete. %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __52__WLKNotificationsImpl_iOS_post_title_body_options___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = &stru_288206BC0;
    if (v2)
    {
      v4 = v2;
    }

    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Add notification request complete. %@", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  objc_initWeak(&location, WeakRetained);
  v5 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Fetch topics", buf, 2u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_45;
  v7[3] = &unk_279E601B8;
  objc_copyWeak(&v14, &location);
  v13 = *(a1 + 56);
  v8 = *(a1 + 32);
  v12 = *(a1 + 48);
  v9 = WeakRetained;
  v6 = v3;
  v10 = v6;
  v11 = *(a1 + 40);
  WLKFetchNotificationCategories(v7);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_loadWeakRetained((a1 + 88));
  objc_sync_enter(v7);
  if (([v7 topicsAreInitialized] & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEB58] set];
    [v7 setNotificationTopics:v8];
  }

  *(*(*(a1 + 72) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 80) + 8) + 40), a3);
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v10 = [v9 objectForKey:@"WLKBulletinDataProviderLastRegisteredSections"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v12 = [v11 allObjects];

    v10 = v12;
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v13 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(*(*(a1 + 80) + 8) + 40);
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Notification categories fetch from bag resulted in error %@:", &buf, 0xCu);
    }

    [v7 setTopicsAreInitialized:0];
    if (v10)
    {
      v15 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(*(a1 + 80) + 8) + 40);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Falling-back to last-known categories %@:", &buf, 0xCu);
      }

      [*(a1 + 32) addObjectsFromArray:v10];
    }

    [v9 setObject:*(a1 + 32) forKey:@"WLKBulletinDataProviderLastRegisteredSections"];
    v17 = *(a1 + 64);
    v18 = [*(a1 + 40) notificationTopics];
    (*(v17 + 16))(v17, v18, *(*(*(a1 + 80) + 8) + 40));
  }

  else
  {
    v19 = *(*(*(a1 + 72) + 8) + 24);
    if (v19)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.explicit"];
      v19 = *(*(*(a1 + 72) + 8) + 24);
    }

    if ((v19 & 2) != 0)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.implicit"];
      v19 = *(*(*(a1 + 72) + 8) + 24);
    }

    if ((v19 & 4) != 0)
    {
      [*(a1 + 32) addObject:@"com.apple.tv.bulletins.marketing"];
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v36 = 0x2020000000;
    v37 = 0;
    objc_initWeak(&location, v7);
    v20 = objc_opt_class();
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_49;
    v24[3] = &unk_279E60190;
    objc_copyWeak(&v33, &location);
    v21 = *(a1 + 32);
    v22 = *(a1 + 80);
    v25 = v21;
    v31 = v22;
    v26 = v10;
    v27 = *(a1 + 48);
    p_buf = &buf;
    v28 = *(a1 + 56);
    v29 = v9;
    v30 = *(a1 + 64);
    [v20 isFullTVAppEnabledwithCompletion:v24];

    objc_destroyWeak(&v33);
    objc_destroyWeak(&location);
    _Block_object_dispose(&buf, 8);
  }

  objc_sync_exit(v7);
  v23 = *MEMORY[0x277D85DE8];
}

void __41__WLKNotificationsImpl_iOS__fetchTopics___block_invoke_49(uint64_t a1, int a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v34 = objc_loadWeakRetained((a1 + 96));
  objc_sync_enter(v34);
  if ([*(a1 + 32) count])
  {
    v4 = 1;
  }

  else
  {
    v4 = a2 == 0;
  }

  if (!v4)
  {
    v5 = WLKPushNotificationsLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(*(a1 + 80) + 8) + 40);
      *buf = 138412546;
      v40 = v6;
      v41 = 1024;
      LODWORD(v42) = 1;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Falling-back to last-known categories as we might have gotten a 304%@, and is tvappenabled%d", buf, 0x12u);
    }

    [*(a1 + 32) addObjectsFromArray:*(a1 + 40)];
  }

  v7 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v40 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - SubsectionInfos: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = *(a1 + 32);
  v9 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    v11 = *v36;
    *&v10 = 134218242;
    v32 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [*(a1 + 48) objectForKey:{v13, v32}];
        v15 = [v34 _authOptions];
        if (v14)
        {
          *(*(*(a1 + 88) + 8) + 24) = 1;
          v16 = [v14 soundSetting];
          v17 = [v14 alertSetting];
          v18 = [v14 badgeSetting];
          v19 = WLKPushNotificationsLogObject();
          v20 = v17 | v16 | v18;
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v40 = v20;
            v41 = 2112;
            v42 = v13;
            _os_log_impl(&dword_272A0F000, v19, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Overriding auth options from user's settings to:%lu for %@", buf, 0x16u);
          }
        }

        else
        {
          v20 = v15;
        }

        v21 = MEMORY[0x277CE1FF0];
        v22 = [v34 _displayNameForSubsectionID:v13];
        v23 = [v21 topicRequestWithIdentifier:v13 displayName:v22 options:v20];

        [*(a1 + 56) addObject:v23];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v9);
  }

  v24 = [v34 notificationTopics];
  v25 = [v24 count];
  if (v25 == [*(a1 + 56) count])
  {
    v26 = *(*(*(a1 + 88) + 8) + 24);

    if ((v26 & 1) == 0)
    {
      v27 = WLKPushNotificationsLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_272A0F000, v27, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Previous topics being returned", buf, 2u);
      }

      goto LABEL_30;
    }
  }

  else
  {
  }

  v28 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v28, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - Topics successfully initialized", buf, 2u);
  }

  v27 = [*(a1 + 56) mutableCopy];
  [v34 setNotificationTopics:v27];
LABEL_30:

  [v34 setTopicsAreInitialized:1];
  [*(a1 + 64) setObject:*(a1 + 32) forKey:@"WLKBulletinDataProviderLastRegisteredSections"];
  v29 = *(a1 + 72);
  v30 = [v34 notificationTopics];
  (*(v29 + 16))(v29, v30, *(*(*(a1 + 80) + 8) + 40));

  objc_sync_exit(v34);
  v31 = *MEMORY[0x277D85DE8];
}

void __104__WLKNotificationsImpl_iOS_userNotificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = WLKPushNotificationsLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"Failure";
    if (a2)
    {
      v7 = @"Success";
    }

    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKNotificationsImpl - AMS did handle %@ Error:%@", &v9, 0x16u);
  }

  (*(*(a1 + 32) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

@end