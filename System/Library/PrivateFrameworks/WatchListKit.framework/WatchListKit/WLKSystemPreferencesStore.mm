@interface WLKSystemPreferencesStore
+ (BOOL)isSystemPreferencesStoreInitializing;
+ (id)sharedPreferences;
+ (void)_synchronizeSettingsDefaultsForKeys:(id)keys;
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
- (id)_getPreferencesValue:(id)value fallbackValue:(id)fallbackValue;
- (void)_publishCrossProcessPreferencesChangedNotification;
- (void)_setDefaultsValue:(id)value key:(id)key syncNPS:(BOOL)s;
- (void)_setPreferencesValue:(id)value forKey:(id)key;
- (void)dealloc;
- (void)migratePrivateModeFromDiskIfNeeded:(id)needed;
- (void)migrateSportsSpoilersFromDiskIfNeeded:(id)needed;
- (void)removePostPlayAutoPlayNextVideoPreferences;
- (void)setAudioLanguageCode:(id)code;
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
      standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
      defaultsAccessor = v2->_defaultsAccessor;
      v2->_defaultsAccessor = standardUserDefaults;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)useCellularDataDownload
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"DownloadUseCellular" fallbackValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)downloadsCompatibleWithAVAdapter
{
  v2 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"DownloadsCompatibleWithAVAdapter" fallbackValue:MEMORY[0x277CBEC28]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)setAudioLanguageCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"AUTO_SENTINEL_VALUE"])
  {

    v4 = 0;
  }

  else
  {
    v4 = codeCopy;
  }

  v6 = v4;
  [(WLKSystemPreferencesStore *)self _setPreferencesValue:v4 forKey:@"PreferredAudioLanguageCodeV2"];
}

- (NSString)audioLanguageCodeIncludingSentinel
{
  audioLanguageCode = [(WLKSystemPreferencesStore *)self audioLanguageCode];
  if (!audioLanguageCode)
  {
    audioLanguageCode = @"AUTO_SENTINEL_VALUE";
  }

  return audioLanguageCode;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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

- (void)_setDefaultsValue:(id)value key:(id)key syncNPS:(BOOL)s
{
  valueCopy = value;
  keyCopy = key;
  accessQueue = self->_accessQueue;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __59__WLKSystemPreferencesStore__setDefaultsValue_key_syncNPS___block_invoke;
  v16 = &unk_279E5F9F8;
  selfCopy = self;
  v18 = valueCopy;
  v19 = keyCopy;
  sCopy = s;
  v11 = keyCopy;
  v12 = valueCopy;
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

- (void)_setPreferencesValue:(id)value forKey:(id)key
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  CFPreferencesSetAppValue(keyCopy, valueCopy, @"com.apple.videos-preferences");
  CFPreferencesAppSynchronize(@"com.apple.videos-preferences");
  v8 = WLKSystemLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412802;
    v11 = valueCopy;
    v12 = 2112;
    v13 = keyCopy;
    v14 = 2112;
    v15 = @"com.apple.videos-preferences";
    _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSystemPreferencesStore - set CFPrefs value %@ for key %@ in domain %@", &v10, 0x20u);
  }

  [(WLKSystemPreferencesStore *)self _publishCrossProcessPreferencesChangedNotification];
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_getPreferencesValue:(id)value fallbackValue:(id)fallbackValue
{
  fallbackValueCopy = fallbackValue;
  v6 = CFPreferencesCopyAppValue(value, @"com.apple.videos-preferences");
  if (v6)
  {
    null = [MEMORY[0x277CBEB68] null];
    if ([v6 isEqual:null])
    {
      v8 = fallbackValueCopy;
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = fallbackValueCopy;
  }

  return v9;
}

- (void)migratePrivateModeFromDiskIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"PrivateModeEnabled" fallbackValue:0];
  if (!v4)
  {
    v5 = [neededCopy objectForKeyedSubscript:@"PrivateModeEnabled"];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x277CCABB0];
    v4 = [neededCopy objectForKeyedSubscript:@"PrivateModeEnabled"];
    v7 = [v6 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];
    [(WLKSystemPreferencesStore *)self _setPreferencesValue:v7 forKey:@"PrivateModeEnabled"];
  }

LABEL_5:
}

- (void)migrateSportsSpoilersFromDiskIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = [(WLKSystemPreferencesStore *)self _getPreferencesValue:@"SportsScoreSpoilersAllowed" fallbackValue:0];
  if (!v4)
  {
    v5 = [neededCopy objectForKeyedSubscript:@"SportsScoreSpoilersAllowed"];

    if (!v5)
    {
      goto LABEL_5;
    }

    v6 = MEMORY[0x277CCABB0];
    v4 = [neededCopy objectForKeyedSubscript:@"SportsScoreSpoilersAllowed"];
    v7 = [v6 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];
    [(WLKSystemPreferencesStore *)self _setPreferencesValue:v7 forKey:@"SportsScoreSpoilersAllowed"];
  }

LABEL_5:
}

+ (void)_synchronizeSettingsDefaultsForKeys:(id)keys
{
  keysCopy = keys;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__WLKSystemPreferencesStore__synchronizeSettingsDefaultsForKeys___block_invoke;
  block[3] = &unk_279E5EE08;
  v7 = keysCopy;
  v5 = keysCopy;
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