@interface VUISettingsManager
+ (BOOL)isPostPlayAutoPlayEnabledForType:(unint64_t)a3;
+ (id)sharedInstance;
+ (unint64_t)_wlkTypeFromVUIPostPlayType:(unint64_t)a3;
- (BOOL)_automaticDownloadsEnabled;
- (BOOL)_hasAppAppearanceSettingChanged;
- (BOOL)_hasAutomaticDownloadsSettingChanged;
- (BOOL)_hasPreferredVideoFormatChanged;
- (BOOL)_hasRTLChanged;
- (BOOL)_hasRestrictionsChanged;
- (BOOL)_hasUpNextLockupsUseCoverArtChanged;
- (BOOL)_upNextLockupsUseCoverArt;
- (VUISettingsManager)init;
- (id)_formatStringForVideoFormat:(unint64_t)a3;
- (id)_init;
- (id)_isRTL;
- (id)_restrictionsMaximumEffectiveAppRanking;
- (id)_restrictionsMaximumEffectiveMovieRanking;
- (id)_restrictionsMaximumEffectiveTVShowRanking;
- (id)preferencesJSONData;
- (int64_t)_appAppearance;
- (unint64_t)_preferredVideoFormat;
- (void)_handlePreferencesChange:(id)a3;
- (void)_sendSettingsValuesToJS:(id)a3;
- (void)_setupNotificationObservers;
- (void)_teardownNotificationObservers;
- (void)checkAndUpdateSettings;
- (void)createSettingsStore;
- (void)dealloc;
- (void)isAppInstallationAllowedForRating:(id)a3 completion:(id)a4;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4;
@end

@implementation VUISettingsManager

+ (id)sharedInstance
{
  if (sharedInstance___onceToken_3 != -1)
  {
    +[VUISettingsManager sharedInstance];
  }

  v3 = sharedInstance___instance_1;

  return v3;
}

void __36__VUISettingsManager_sharedInstance__block_invoke()
{
  v0 = [[VUISettingsManager alloc] _init];
  v1 = sharedInstance___instance_1;
  sharedInstance___instance_1 = v0;
}

- (id)_init
{
  v15.receiver = self;
  v15.super_class = VUISettingsManager;
  v2 = [(VUISettingsManager *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(VUISettingsManager *)v2 _restrictionsMaximumEffectiveMovieRanking];
    maxMovieRank = v3->_maxMovieRank;
    v3->_maxMovieRank = v4;

    v6 = [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveTVShowRanking];
    maxTVShowRank = v3->_maxTVShowRank;
    v3->_maxTVShowRank = v6;

    v8 = [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveAppRanking];
    maxAppRank = v3->_maxAppRank;
    v3->_maxAppRank = v8;

    v10 = [(VUISettingsManager *)v3 _formatStringForVideoFormat:[(VUISettingsManager *)v3 _preferredVideoFormat]];
    preferredVideoFormat = v3->_preferredVideoFormat;
    v3->_preferredVideoFormat = v10;

    v12 = [(VUISettingsManager *)v3 _isRTL];
    isRTL = v3->_isRTL;
    v3->_isRTL = v12;

    v3->_appAppearance = [(VUISettingsManager *)v3 _appAppearance];
    [(VUISettingsManager *)v3 createSettingsStore];
  }

  [(VUISettingsManager *)v3 _setupNotificationObservers];
  return v3;
}

- (id)_restrictionsMaximumEffectiveMovieRanking
{
  if (_os_feature_enabled_impl())
  {
    v12 = 0;
    v2 = [_TtC8VideosUI31VUIRestrictionsUtilityProxyObjC getMaximumEffectiveMoviesRankingAndReturnError:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveMovieRanking:v4];
      }
    }
  }

  else
  {
    v2 = WLKRestrictionsMaximumEffectiveMovieRanking();
  }

  return v2;
}

- (id)_restrictionsMaximumEffectiveTVShowRanking
{
  if (_os_feature_enabled_impl())
  {
    v12 = 0;
    v2 = [_TtC8VideosUI31VUIRestrictionsUtilityProxyObjC getMaximumEffectiveTVShowRankingAndReturnError:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveTVShowRanking:v4];
      }
    }
  }

  else
  {
    v2 = WLKRestrictionsMaximumEffectiveTVShowRanking();
  }

  return v2;
}

- (unint64_t)_preferredVideoFormat
{
  v2 = CFPreferencesCopyAppValue(@"PreferredPurchaseResolution", @"com.apple.videos-preferences");
  v3 = v2 && (objc_opt_respondsToSelector() & 1) != 0 && [v2 integerValue] == 1;

  return v3;
}

- (id)_isRTL
{
  v2 = [MEMORY[0x1E69DC668] sharedApplication];
  v3 = [v2 userInterfaceLayoutDirection];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithBool:v3 == 1];
}

- (void)createSettingsStore
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__VUISettingsManager_createSettingsStore__block_invoke;
  aBlock[3] = &unk_1E872F4E0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = [MEMORY[0x1E69E15F0] isSystemPreferencesStoreInitializing];
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v6)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUISettingsManager - checkAndUpdateSettings - WLKSystemPreferencesStore is initializing", &buf, 2u);
    }

    objc_initWeak(&buf, self);
    v7 = dispatch_get_global_queue(0, 0);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__VUISettingsManager_createSettingsStore__block_invoke_41;
    v10[3] = &unk_1E872E828;
    objc_copyWeak(&v12, &buf);
    v11 = v3;
    dispatch_async(v7, v10);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&buf);
  }

  else
  {
    if (v6)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUISettingsManager - checkAndUpdateSettings - WLKSystemPreferencesStore already initialized", &buf, 2u);
    }

    v8 = [MEMORY[0x1E69E15F0] sharedPreferences];
    preferencesStore = self->_preferencesStore;
    self->_preferencesStore = v8;

    (*(v3 + 2))(v3, self);
  }
}

void __41__VUISettingsManager_createSettingsStore__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v4[8] = [v3 _upNextLockupsUseCoverArt];
  v4[9] = [*(a1 + 32) _automaticDownloadsEnabled];
  [v4 checkAndUpdateSettings];
}

- (BOOL)_upNextLockupsUseCoverArt
{
  v2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v3 = [v2 upNextLockupsUseCoverArt];

  return v3;
}

- (BOOL)_automaticDownloadsEnabled
{
  v2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v3 = [v2 useAutomaticDownloads];

  return v3;
}

- (void)checkAndUpdateSettings
{
  if (self->_preferencesStore)
  {
    v3 = VUIDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_INFO, "VUISettingsManager - checkAndUpdateSettings", buf, 2u);
    }

    v4 = [(VUISettingsManager *)self _hasRestrictionsChanged];
    v5 = [(VUISettingsManager *)self _hasPreferredVideoFormatChanged];
    v6 = [(VUISettingsManager *)self _hasUpNextLockupsUseCoverArtChanged];
    v7 = [(VUISettingsManager *)self _hasRTLChanged];
    v8 = [(VUISettingsManager *)self _hasAppAppearanceSettingChanged];
    v9 = v4 || v5 || v6 || v7;
    if ([(VUISettingsManager *)self _hasAutomaticDownloadsSettingChanged])
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 postNotificationName:@"VUIAutomaticDownloadsSwitchDidChangeNotification" object:0];
    }

    v11 = v9 || v8;
    if (v8)
    {
      v12 = [MEMORY[0x1E696AD88] defaultCenter];
      [v12 postNotificationName:@"VUIAppAppearanceSettingDidChangeNotification" object:0];
    }

    if (v11)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__VUISettingsManager_checkAndUpdateSettings__block_invoke;
      v14[3] = &__block_descriptor_33_e8_v12__0B8l;
      v15 = v6;
      [(VUISettingsManager *)self _sendSettingsValuesToJS:v14];
    }

    else
    {
      v13 = VUIDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUISettingsManager - checkAndUpdateSettings - nothing has changed", buf, 2u);
      }
    }
  }
}

- (BOOL)_hasRestrictionsChanged
{
  v3 = [(VUISettingsManager *)self _restrictionsMaximumEffectiveMovieRanking];
  v4 = [(VUISettingsManager *)self _restrictionsMaximumEffectiveTVShowRanking];
  v5 = [(VUISettingsManager *)self _restrictionsMaximumEffectiveAppRanking];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", v3, v4, v5];
  v7 = [(VUISettingsManager *)self restrictions];
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_10:
    v12 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
  }

  else
  {
    v11 = [v7 isEqual:v8];

    if (v11)
    {
      goto LABEL_10;
    }
  }

  v13 = VUIDefaultLogObject();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_INFO, "VUISettingsManager - Content restrictions did change", buf, 2u);
  }

  v12 = 1;
LABEL_14:
  v14 = [v3 copy];
  maxMovieRank = self->_maxMovieRank;
  self->_maxMovieRank = v14;

  v16 = [v4 copy];
  maxTVShowRank = self->_maxTVShowRank;
  self->_maxTVShowRank = v16;

  v18 = [v5 copy];
  maxAppRank = self->_maxAppRank;
  self->_maxAppRank = v18;

  if (v12)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_58);
  }

  return v12;
}

- (BOOL)_hasPreferredVideoFormatChanged
{
  v3 = [(VUISettingsManager *)self _formatStringForVideoFormat:[(VUISettingsManager *)self _preferredVideoFormat]];
  v4 = self->_preferredVideoFormat;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {

    goto LABEL_7;
  }

  if (v5 && v4)
  {
    v7 = [(NSString *)v4 isEqual:v5];

    if (!v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_10;
  }

LABEL_9:
  v8 = 1;
LABEL_10:
  v9 = [(NSString *)v6 copy];
  preferredVideoFormat = self->_preferredVideoFormat;
  self->_preferredVideoFormat = v9;

  if (v8)
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_60);
  }

  return v8;
}

- (BOOL)_hasUpNextLockupsUseCoverArtChanged
{
  upNextLockupsUseCoverArt = self->_upNextLockupsUseCoverArt;
  v4 = [(VUISettingsManager *)self _upNextLockupsUseCoverArt];
  self->_upNextLockupsUseCoverArt = v4;
  return upNextLockupsUseCoverArt != v4;
}

- (BOOL)_hasRTLChanged
{
  v3 = self->_isRTL;
  v4 = [(VUISettingsManager *)self _isRTL];
  isRTL = self->_isRTL;
  self->_isRTL = v4;
  v6 = v4;

  return v3 != v6;
}

- (BOOL)_hasAutomaticDownloadsSettingChanged
{
  automaticDownloadsEnabled = self->_automaticDownloadsEnabled;
  v4 = [(VUISettingsManager *)self _automaticDownloadsEnabled];
  self->_automaticDownloadsEnabled = v4;
  return automaticDownloadsEnabled != v4;
}

- (void)_setupNotificationObservers
{
  v3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  [v3 registerObserver:self];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__handlePreferencesChange_ name:*MEMORY[0x1E69E1728] object:0];
}

- (VUISettingsManager)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"Unimplemented" reason:@"-[VUISettingsManager init] not supported userInfo:{use +sharedInstance instead", 0}];
  objc_exception_throw(v2);
}

void __44__VUISettingsManager_checkAndUpdateSettings__block_invoke(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v2 = [MEMORY[0x1E696AD88] defaultCenter];
    [v2 postNotificationName:@"VUIUpNextLockupArtSettingDidChangeNotification" object:0];
  }
}

void __41__VUISettingsManager_createSettingsStore__block_invoke_41(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_initWeak(&location, WeakRetained);
  v3 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__VUISettingsManager_createSettingsStore__block_invoke_2;
  v5[3] = &unk_1E872DE00;
  objc_copyWeak(&v8, &location);
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __41__VUISettingsManager_createSettingsStore__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_storeStrong(WeakRetained + 8, *(a1 + 32));
  (*(*(a1 + 40) + 16))();
}

+ (BOOL)isPostPlayAutoPlayEnabledForType:(unint64_t)a3
{
  if (_os_feature_enabled_impl())
  {
    v5 = [a1 _wlkTypeFromVUIPostPlayType:a3];
    v6 = [MEMORY[0x1E69E1598] defaultManager];
    v7 = [v6 isEnabledForType:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E69E15F0] sharedPreferences];
    v7 = [v6 postPlayAutoPlayNextVideo];
  }

  v8 = v7;

  return v8;
}

- (id)preferencesJSONData
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v4 = [(VUISettingsManager *)self maxMovieRank];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"maxMovieRank"];
  }

  else
  {
    v5 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v5 forKey:@"maxMovieRank"];
  }

  v6 = [(VUISettingsManager *)self maxTVShowRank];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"maxTVShowRank"];
  }

  else
  {
    v7 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:v7 forKey:@"maxTVShowRank"];
  }

  v8 = [(VUISettingsManager *)self preferredVideoFormat];
  [v3 vui_setObjectIfNotNil:v8 forKey:@"preferredVideoFormat"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUISettingsManager upNextLockupsUseCoverArt](self, "upNextLockupsUseCoverArt")}];
  [v3 setObject:v9 forKey:@"upNextLockupsUseCoverArt"];

  v10 = [(VUISettingsManager *)self isRTL];
  [v3 setObject:v10 forKey:@"isRTL"];

  return v3;
}

- (void)isAppInstallationAllowedForRating:(id)a3 completion:(id)a4
{
  v4 = MEMORY[0x1E69ADFB8];
  v7 = a4;
  v5 = [v4 sharedConnection];
  v6 = [v5 isUIAppInstallationAllowed];

  v7[2](v7, v6);
}

- (void)dealloc
{
  [(VUISettingsManager *)self _teardownNotificationObservers];
  v3.receiver = self;
  v3.super_class = VUISettingsManager;
  [(VUISettingsManager *)&v3 dealloc];
}

+ (unint64_t)_wlkTypeFromVUIPostPlayType:(unint64_t)a3
{
  if (a3)
  {
    return 2 * (a3 == 1);
  }

  else
  {
    return 1;
  }
}

- (void)_teardownNotificationObservers
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
  [v4 unregisterObserver:self];
}

- (void)_sendSettingsValuesToJS:(id)a3
{
  v4 = a3;
  v5 = +[VUITVAppLauncher sharedInstance];
  v6 = [v5 appController];

  v7 = [v6 appContext];
  v8 = [(VUISettingsManager *)self preferencesJSONData];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__VUISettingsManager__sendSettingsValuesToJS___block_invoke;
  v13[3] = &unk_1E872F508;
  v14 = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__VUISettingsManager__sendSettingsValuesToJS___block_invoke_56;
  v11[3] = &unk_1E872D790;
  v12 = v4;
  v9 = v4;
  v10 = v8;
  [v7 evaluate:v13 completionBlock:v11 completionQueue:MEMORY[0x1E69E96A0]];
}

void __46__VUISettingsManager__sendSettingsValuesToJS___block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"wlSettings"];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 hasProperty:@"onPreferencesChange"])
  {
    v6 = VUIDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_INFO, "VUISettingsManager - updating user preferences - calling JS", v9, 2u);
    }

    v10[0] = *(a1 + 32);
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v5 invokeMethod:@"onPreferencesChange" withArguments:v7];
  }
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_INFO, "VUISettingsManager - received notice from MCProfileConnection that content restrictions did change", v6, 2u);
  }

  [(VUISettingsManager *)self checkAndUpdateSettings];
}

void __45__VUISettingsManager__hasRestrictionsChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"VUIRestrictionsDidChangeNotification" object:0];
}

void __53__VUISettingsManager__hasPreferredVideoFormatChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"VUIPreferredVideoFormatDidChangeNotification" object:0];
}

- (id)_formatStringForVideoFormat:(unint64_t)a3
{
  v3 = @"SD";
  if (a3 != 1)
  {
    v3 = 0;
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"HD";
  }
}

- (BOOL)_hasAppAppearanceSettingChanged
{
  appAppearance = self->_appAppearance;
  v4 = [(VUISettingsManager *)self _appAppearance];
  self->_appAppearance = v4;
  return appAppearance != v4;
}

- (int64_t)_appAppearance
{
  v2 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v3 = [v2 appAppearance];

  if ([v3 isEqualToString:*MEMORY[0x1E69E1630]])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E69E1638]])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  return v4;
}

- (id)_restrictionsMaximumEffectiveAppRanking
{
  if (_os_feature_enabled_impl())
  {
    v12 = 0;
    v2 = [_TtC8VideosUI31VUIRestrictionsUtilityProxyObjC getMaximumEffectiveAppRankingAndReturnError:&v12];
    v3 = v12;
    if (v3)
    {
      v4 = VUIDefaultLogObject();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveAppRanking:v4];
      }
    }
  }

  else
  {
    v2 = WLKRestrictionsMaximumEffectiveAppRanking();
  }

  return v2;
}

- (void)_handlePreferencesChange:(id)a3
{
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "VUISettingsManager - received preferences did change notification", v5, 2u);
  }

  [(VUISettingsManager *)self checkAndUpdateSettings];
}

@end