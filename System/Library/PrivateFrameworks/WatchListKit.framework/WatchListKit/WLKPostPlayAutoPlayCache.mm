@interface WLKPostPlayAutoPlayCache
- (BOOL)_cacheResultForType:(unint64_t)a3;
- (BOOL)currentSettingForType:(unint64_t)a3;
- (BOOL)hasCacheForType:(unint64_t)a3;
- (WLKPostPlayAutoPlayCache)initWithUserDefaults:(id)a3;
- (id)_cacheKeyForType:(unint64_t)a3;
- (id)currentSettings;
- (void)dealloc;
- (void)invalidate;
- (void)setIsWaitingForConnection:(BOOL)a3;
- (void)updateWithSettings:(id)a3;
@end

@implementation WLKPostPlayAutoPlayCache

- (WLKPostPlayAutoPlayCache)initWithUserDefaults:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = WLKPostPlayAutoPlayCache;
  v6 = [(WLKPostPlayAutoPlayCache *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userDefaults, a3);
    objc_initWeak(&location, v7);
    v8 = MEMORY[0x277D85CD0];
    v9 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke;
    handler[3] = &unk_279E5F220;
    v10 = v7;
    v16 = v10;
    objc_copyWeak(&v17, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKPostPlayAutoPlayNextEpisodeStatusChangedNotification", &v7->_postPlayAutoPlayNextEpisodeSettingChangedNotificationToken, v8, handler);

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke_19;
    v12[3] = &unk_279E5F220;
    v13 = v10;
    objc_copyWeak(&v14, &location);
    notify_register_dispatch("com.apple.WatchListKit.WLKPostPlayAutoPlayRecommendedItemsStatusChangedNotification", v10 + 5, v8, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  return v7;
}

void __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 16), &state64);
  if (state64 != getpid())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v3 = WLKSystemLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Received post play auto-play next episode status changed notification, fetching cache", v4, 2u);
      }

      [objc_opt_class() _postLocalNotificationForType:1 status:objc_msgSend(WeakRetained error:{"_cacheResultForType:", 1), 0}];
    }
  }
}

void __49__WLKPostPlayAutoPlayCache_initWithUserDefaults___block_invoke_19(uint64_t a1)
{
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 20), &state64);
  if (state64 != getpid())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v3 = WLKSystemLogObject();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - Received post play auto-play recommended items status changed notification, fetching cache", v4, 2u);
      }

      [objc_opt_class() _postLocalNotificationForType:2 status:objc_msgSend(WeakRetained error:{"_cacheResultForType:", 2), 0}];
    }
  }
}

- (void)dealloc
{
  postPlayAutoPlayNextEpisodeSettingChangedNotificationToken = self->_postPlayAutoPlayNextEpisodeSettingChangedNotificationToken;
  if (postPlayAutoPlayNextEpisodeSettingChangedNotificationToken)
  {
    notify_cancel(postPlayAutoPlayNextEpisodeSettingChangedNotificationToken);
  }

  postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken = self->_postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken;
  if (postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken)
  {
    notify_cancel(postPlayAutoPlayRecommendedItemsSettingChangedNotificationToken);
  }

  v5.receiver = self;
  v5.super_class = WLKPostPlayAutoPlayCache;
  [(WLKPostPlayAutoPlayCache *)&v5 dealloc];
}

- (void)invalidate
{
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"auto-play-next-episode-status"];
  [(NSUserDefaults *)self->_userDefaults removeObjectForKey:@"auto-play-recommended-items-status"];
  userDefaults = self->_userDefaults;

  [(NSUserDefaults *)userDefaults removeObjectForKey:@"auto-play-is-waiting-for-connection-status"];
}

- (BOOL)hasCacheForType:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [(WLKPostPlayAutoPlayCache *)self _cacheKeyForType:?];
  v6 = [(NSUserDefaults *)self->_userDefaults objectForKey:v5];

  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - hasCacheForType: %@, hasCache: %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (void)updateWithSettings:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - update cache for post play auto-play settings: %@", &v13, 0xCu);
  }

  v6 = [v4 nextEpisodeSettingValue];

  if (v6)
  {
    v7 = [v4 nextEpisodeSettingValue];
    v8 = [v7 BOOLValue];

    [(WLKPostPlayAutoPlayCache *)self _setEnabled:v8 type:1];
  }

  v9 = [v4 recommendedItemsSettingValue];

  if (v9)
  {
    v10 = [v4 recommendedItemsSettingValue];
    v11 = [v10 BOOLValue];

    [(WLKPostPlayAutoPlayCache *)self _setEnabled:v11 type:2];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)currentSettings
{
  v3 = objc_alloc_init(WLKPostPlayAutoPlaySettings);
  v4 = [(WLKPostPlayAutoPlayCache *)self _cacheResultForType:1];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:v4];
  [(WLKPostPlayAutoPlaySettings *)v3 setNextEpisodeSettingValue:v5];

  v6 = [(WLKPostPlayAutoPlayCache *)self _cacheResultForType:2];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  [(WLKPostPlayAutoPlaySettings *)v3 setRecommendedItemsSettingValue:v7];

  return v3;
}

- (BOOL)currentSettingForType:(unint64_t)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [(WLKPostPlayAutoPlayCache *)self currentSettings];
  v5 = v4;
  if (a3 == 2)
  {
    v6 = [v4 recommendedItemsSettingValue];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v6 = [v4 nextEpisodeSettingValue];
LABEL_5:
    v7 = v6;
    v8 = [v6 BOOLValue];

    goto LABEL_7;
  }

  v8 = 1;
LABEL_7:
  v9 = WLKSystemLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v14 = 138412546;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - currentSettingForType: %@, enabled: %@", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)setIsWaitingForConnection:(BOOL)a3
{
  userDefaults = self->_userDefaults;
  if (a3)
  {
    [(NSUserDefaults *)userDefaults setBool:1 forKey:@"auto-play-is-waiting-for-connection-status"];
  }

  else
  {
    [(NSUserDefaults *)userDefaults removeObjectForKey:@"auto-play-is-waiting-for-connection-status"];
  }
}

void __71__WLKPostPlayAutoPlayCache__postLocalNotificationForType_status_error___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:*(a1 + 32) object:0 userInfo:*(a1 + 40)];
}

- (BOOL)_cacheResultForType:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(WLKPostPlayAutoPlayCache *)self hasCacheForType:?])
  {
    v5 = [(WLKPostPlayAutoPlayCache *)self _cacheKeyForType:a3];
    v6 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:v5];
    v7 = WLKSystemLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v12 = 138412546;
      v13 = v8;
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - cached post play auto-play type: %@, state: %d", &v12, 0x12u);
    }
  }

  else
  {
    v5 = WLKSystemLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
      v12 = 138412290;
      v13 = v9;
      _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - No cache result for type: %@, default to YES", &v12, 0xCu);
    }

    LOBYTE(v6) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)_cacheKeyForType:(unint64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = @"auto-play-recommended-items-status";
  if (a3 != 2)
  {
    v4 = 0;
  }

  if (a3 == 1)
  {
    v5 = @"auto-play-next-episode-status";
  }

  else
  {
    v5 = v4;
  }

  v6 = WLKSystemLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v5;
    _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKPostPlayAutoPlay - _cacheKeyForType: %@, key: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

@end