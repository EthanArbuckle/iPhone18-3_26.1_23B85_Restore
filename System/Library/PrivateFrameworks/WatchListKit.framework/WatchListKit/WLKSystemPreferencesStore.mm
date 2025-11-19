@interface WLKSystemPreferencesStore
+ (BOOL)isSystemPreferencesStoreInitializing;
+ (id)sharedPreferences;
+ (void)_synchronizeSettingsDefaultsForKeys:(id)a3;
- (BOOL)downloadsCompatibleWithAVAdapter;
- (BOOL)hasAVAdapterEvenBeenConnected;
- (BOOL)hasPostPlayAutoPlayNextVideoPreferences;
- (BOOL)postPlayAutoPlayNextVideo;
- (BOOL)privateModeEnabled;
- (BOOL)sportsScoreSpoilersAllowed;
- (BOOL)subtitleDefaultLanguageEnabledDownload;
- (BOOL)upNextLockupsUseCoverArt;
- (BOOL)useAutomaticDownloads;
- (BOOL)useCellularDataDownload;
- (BOOL)useCellularDataPlayback;
- (NSArray)selectedAudioLanguagesDownload;
- (NSArray)subtitleAudioLanguagesDownload;
- (NSArray)supplementaryAvailableAudioLanguages;
- (NSNumber)preferredPlaybackDimensionality;
- (NSString)audioLanguageCodeIncludingSentinel;
- (WLKSystemPreferencesStore)init;
- (id)_getPreferencesValue:(id)a3 fallbackValue:(id)a4;
- (void)_publishCrossProcessPreferencesChangedNotification;
- (void)_setDefaultsValue:(id)a3 key:(id)a4 syncNPS:(BOOL)a5;
- (void)_setPreferencesValue:(id)a3 forKey:(id)a4;
- (void)dealloc;
- (void)migratePrivateModeFromDiskIfNeeded:(id)a3;
- (void)migrateSportsSpoilersFromDiskIfNeeded:(id)a3;
- (void)removePostPlayAutoPlayNextVideoPreferences;
- (void)setAudioLanguageCode:(id)a3;
@end

@implementation WLKSystemPreferencesStore

+ (id)sharedPreferences
{
  if (sharedPreferences___once != -1)
  {
    +[WLKSystemPreferencesStore sharedPreferences];
  }

  v3 = sharedPreferences___singleInstance;

  return v3;
}

void __46__WLKSystemPreferencesStore_sharedPreferences__block_invoke()
{
  os_unfair_lock_lock(&__initLock);
  __isInitializing = 1;
  v0 = objc_alloc_init(WLKSystemPreferencesStore);
  v1 = sharedPreferences___singleInstance;
  sharedPreferences___singleInstance = v0;

  __isInitializing = 0;

  os_unfair_lock_unlock(&__initLock);
}

- (WLKSystemPreferencesStore)init
{
  v15.receiver = self;
  v15.super_class = WLKSystemPreferencesStore;
  v2 = [(WLKSystemPreferencesStore *)&v15 init];
  if (v2)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - init", buf, 2u);
    }

    v4 = dispatch_queue_create("WLKPreferencesQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v4;

    if (WLKIsTVApp())
    {
      v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      defaultsAccessor = v2->_defaultsAccessor;
      v2->_defaultsAccessor = v6;
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CBEBD0]);
      defaultsAccessor = WLKTVAppBundleID();
      v9 = [v8 initWithSuiteName:defaultsAccessor];
      v10 = v2->_defaultsAccessor;
      v2->_defaultsAccessor = v9;
    }

    v2->_preferencesDidChangeNotificationToken = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __33__WLKSystemPreferencesStore_init__block_invoke;
    handler[3] = &unk_279E5F5B8;
    v13 = v2;
    notify_register_dispatch("com.apple.WatchListKit.WLKPreferencesDidChangeNotification", &v2->_preferencesDidChangeNotificationToken, MEMORY[0x277D85CD0], handler);
  }

  return v2;
}

- (BOOL)useCellularDataPlayback
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"CellularDataMode" fallbackValue:MEMORY[0x277CBEC28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)useCellularDataDownload
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"DownloadUseCellular" fallbackValue:MEMORY[0x277CBEC28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)downloadsCompatibleWithAVAdapter
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"DownloadsCompatibleWithAVAdapter" fallbackValue:MEMORY[0x277CBEC28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSArray)selectedAudioLanguagesDownload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"PreferredAudioLanguages" fallbackValue:v3];

  return v4;
}

- (BOOL)subtitleDefaultLanguageEnabledDownload
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"UseDefaultSubtitleLanguages" fallbackValue:MEMORY[0x277CBEC38]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSArray)subtitleAudioLanguagesDownload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"PreferredSubtitleLanguages" fallbackValue:v3];

  return v4;
}

+ (BOOL)isSystemPreferencesStoreInitializing
{
  os_unfair_lock_lock(&__initLock);
  v2 = __isInitializing;
  os_unfair_lock_unlock(&__initLock);
  return v2;
}

- (BOOL)upNextLockupsUseCoverArt
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"UpNextLockupsUseCoverArt"];

  if (!v3)
  {
    return 0;
  }

  defaultsAccessor = self->_defaultsAccessor;

  return [(NSUserDefaults *)defaultsAccessor BOOLForKey:@"UpNextLockupsUseCoverArt"];
}

- (BOOL)useAutomaticDownloads
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"AutoDownloads" fallbackValue:MEMORY[0x277CBEC28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)hasPostPlayAutoPlayNextVideoPreferences
{
  v2 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PostPlayAutoPlayNextVideo"];
  v3 = v2 != 0;

  return v3;
}

void __33__WLKSystemPreferencesStore_init__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  state64 = 0;
  notify_get_state(*(*(a1 + 32) + 8), &state64);
  if (state64 != getpid())
  {
    v1 = WLKSystemLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = @"WLKSettingsDidChangeNotification";
      _os_log_impl(&dword_272A0F000, v1, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - Preferences did change - Firing local notification %@", buf, 0xCu);
    }

    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"WLKSettingsDidChangeNotification" object:0];
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  preferencesDidChangeNotificationToken = self->_preferencesDidChangeNotificationToken;
  if (preferencesDidChangeNotificationToken)
  {
    notify_cancel(preferencesDidChangeNotificationToken);
  }

  v4.receiver = self;
  v4.super_class = WLKSystemPreferencesStore;
  [(WLKSystemPreferencesStore *)&v4 dealloc];
}

- (void)setAudioLanguageCode:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:@"AUTO_SENTINEL_VALUE"])
  {

    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  [(WLKSystemPreferencesStore *)self _setPreferencesValue:v4 forKey:@"PreferredAudioLanguageCodeV2"];
}

- (NSString)audioLanguageCodeIncludingSentinel
{
  v2 = [(WLKSystemPreferencesStore *)self audioLanguageCode];
  if (!v2)
  {
    v2 = @"AUTO_SENTINEL_VALUE";
  }

  return v2;
}

- (NSArray)supplementaryAvailableAudioLanguages
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"SupplementaryAvailableAudioLanguages" fallbackValue:v3];

  return v4;
}

- (BOOL)hasAVAdapterEvenBeenConnected
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"HasAVAdapterEverBeenConnected" fallbackValue:MEMORY[0x277CBEC28]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSNumber)preferredPlaybackDimensionality
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = &unk_288222C80;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__WLKSystemPreferencesStore_preferredPlaybackDimensionality__block_invoke;
  v5[3] = &unk_279E5F9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __60__WLKSystemPreferencesStore_preferredPlaybackDimensionality__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) objectForKey:@"PreferredPlaybackDimensionality"];

  if (v2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 16), "integerForKey:", @"PreferredPlaybackDimensionality"}];
  }

  else
  {
    v3 = &unk_288222C80;
  }

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)privateModeEnabled
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PrivateModeEnabled"];

  if (!v3)
  {
    return 0;
  }

  defaultsAccessor = self->_defaultsAccessor;

  return [(NSUserDefaults *)defaultsAccessor BOOLForKey:@"PrivateModeEnabled"];
}

- (BOOL)sportsScoreSpoilersAllowed
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"SportsScoreSpoilersAllowed"];

  if (!v3)
  {
    return 1;
  }

  defaultsAccessor = self->_defaultsAccessor;

  return [(NSUserDefaults *)defaultsAccessor BOOLForKey:@"SportsScoreSpoilersAllowed"];
}

- (BOOL)postPlayAutoPlayNextVideo
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PostPlayAutoPlayNextVideo"];

  if (!v3)
  {
    return 1;
  }

  defaultsAccessor = self->_defaultsAccessor;

  return [(NSUserDefaults *)defaultsAccessor BOOLForKey:@"PostPlayAutoPlayNextVideo"];
}

- (void)removePostPlayAutoPlayNextVideoPreferences
{
  v3 = [(NSUserDefaults *)self->_defaultsAccessor objectForKey:@"PostPlayAutoPlayNextVideo"];

  if (v3)
  {
    defaultsAccessor = self->_defaultsAccessor;

    [(NSUserDefaults *)defaultsAccessor removeObjectForKey:@"PostPlayAutoPlayNextVideo"];
  }
}

- (void)_publishCrossProcessPreferencesChangedNotification
{
  objc_initWeak(&location, self);
  v2 = dispatch_get_global_queue(0, 0);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__WLKSystemPreferencesStore__publishCrossProcessPreferencesChangedNotification__block_invoke;
  v3[3] = &unk_279E5EC50;
  objc_copyWeak(&v4, &location);
  dispatch_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __79__WLKSystemPreferencesStore__publishCrossProcessPreferencesChangedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[2];
    v4 = WeakRetained;
    v3 = getpid();
    notify_set_state(v2, v3);
    notify_post("com.apple.WatchListKit.WLKPreferencesDidChangeNotification");
    WeakRetained = v4;
  }
}

- (void)_setDefaultsValue:(id)a3 key:(id)a4 syncNPS:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__WLKSystemPreferencesStore__setDefaultsValue_key_syncNPS___block_invoke;
  v16 = &unk_279E5F9F8;
  v17 = self;
  v18 = v8;
  v19 = v9;
  v20 = a5;
  v11 = v9;
  v12 = v8;
  dispatch_sync(accessQueue, &v13);
  [(WLKSystemPreferencesStore *)self _publishCrossProcessPreferencesChangedNotification:v13];
}

void __59__WLKSystemPreferencesStore__setDefaultsValue_key_syncNPS___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  [*(*(a1 + 32) + 16) setObject:*(a1 + 40) forKey:*(a1 + 48)];
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    *buf = 138412546;
    v13 = v3;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - set UserDefaults value %@ for key %@", buf, 0x16u);
  }

  if (*(a1 + 56) == 1)
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = MEMORY[0x277CBEB98];
    v11 = *(a1 + 48);
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v9 = [v7 setWithArray:v8];
    [v6 _synchronizeSettingsDefaultsForKeys:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setPreferencesValue:(id)a3 forKey:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  CFPreferencesSetAppValue(v7, v6, @"com.apple.videos-preferences");
  CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = v6;
    v12 = 2112;
    v13 = v7;
    v14 = 2112;
    v15 = @"com.apple.videos-preferences";
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - set CFPrefs value %@ for key %@ in domain %@", &v10, 0x20u);
  }

  [(WLKSystemPreferencesStore *)self _publishCrossProcessPreferencesChangedNotification];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_getPreferencesValue:(id)a3 fallbackValue:(id)a4
{
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(a3, @"com.apple.videos-preferences");
  if (v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
    if ([v6 isEqual:v7])
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)migratePrivateModeFromDiskIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"PrivateModeEnabled" fallbackValue:0];
  if (!v4)
  {
    v5 = [v8 objectForKeyedSubscript:@"PrivateModeEnabled"];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x277CCABB0];
    v4 = [v8 objectForKeyedSubscript:@"PrivateModeEnabled"];
    v7 = [v6 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];
    [(WLKSystemPreferencesStore *)self _setPreferencesValue:v7 forKey:@"PrivateModeEnabled"];
  }

LABEL_5:
}

- (void)migrateSportsSpoilersFromDiskIfNeeded:(id)a3
{
  v8 = a3;
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"SportsScoreSpoilersAllowed" fallbackValue:0];
  if (!v4)
  {
    v5 = [v8 objectForKeyedSubscript:@"SportsScoreSpoilersAllowed"];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x277CCABB0];
    v4 = [v8 objectForKeyedSubscript:@"SportsScoreSpoilersAllowed"];
    v7 = [v6 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];
    [(WLKSystemPreferencesStore *)self _setPreferencesValue:v7 forKey:@"SportsScoreSpoilersAllowed"];
  }

LABEL_5:
}

+ (void)_synchronizeSettingsDefaultsForKeys:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WLKSystemPreferencesStore__synchronizeSettingsDefaultsForKeys___block_invoke;
  block[3] = &unk_279E5EE08;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __65__WLKSystemPreferencesStore__synchronizeSettingsDefaultsForKeys___block_invoke(uint64_t a1)
{
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - NPSManager sync begin", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x277D2BA60]);
  v4 = WLKTVAppBundleID();
  [v3 synchronizeUserDefaultsDomain:v4 keys:*(a1 + 32)];

  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - NPSManager sync end", v6, 2u);
  }
}

@end