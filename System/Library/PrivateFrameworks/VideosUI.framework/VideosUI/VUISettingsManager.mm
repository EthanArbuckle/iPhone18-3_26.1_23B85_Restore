@interface VUISettingsManager
+ (BOOL)isPostPlayAutoPlayEnabledForType:(unint64_t)type;
+ (id)sharedInstance;
+ (unint64_t)_wlkTypeFromVUIPostPlayType:(unint64_t)type;
- (BOOL)_automaticDownloadsEnabled;
- (BOOL)_hasAppAppearanceSettingChanged;
- (BOOL)_hasAutomaticDownloadsSettingChanged;
- (BOOL)_hasPreferredVideoFormatChanged;
- (BOOL)_hasRTLChanged;
- (BOOL)_hasRestrictionsChanged;
- (BOOL)_hasUpNextLockupsUseCoverArtChanged;
- (BOOL)_upNextLockupsUseCoverArt;
- (VUISettingsManager)init;
- (id)_formatStringForVideoFormat:(unint64_t)format;
- (id)_init;
- (id)_isRTL;
- (id)_restrictionsMaximumEffectiveAppRanking;
- (id)_restrictionsMaximumEffectiveMovieRanking;
- (id)_restrictionsMaximumEffectiveTVShowRanking;
- (id)preferencesJSONData;
- (int64_t)_appAppearance;
- (unint64_t)_preferredVideoFormat;
- (void)_handlePreferencesChange:(id)change;
- (void)_sendSettingsValuesToJS:(id)s;
- (void)_setupNotificationObservers;
- (void)_teardownNotificationObservers;
- (void)checkAndUpdateSettings;
- (void)createSettingsStore;
- (void)dealloc;
- (void)isAppInstallationAllowedForRating:(id)rating completion:(id)completion;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
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
    _restrictionsMaximumEffectiveMovieRanking = [(VUISettingsManager *)v2 _restrictionsMaximumEffectiveMovieRanking];
    maxMovieRank = v3->_maxMovieRank;
    v3->_maxMovieRank = _restrictionsMaximumEffectiveMovieRanking;

    _restrictionsMaximumEffectiveTVShowRanking = [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveTVShowRanking];
    maxTVShowRank = v3->_maxTVShowRank;
    v3->_maxTVShowRank = _restrictionsMaximumEffectiveTVShowRanking;

    _restrictionsMaximumEffectiveAppRanking = [(VUISettingsManager *)v3 _restrictionsMaximumEffectiveAppRanking];
    maxAppRank = v3->_maxAppRank;
    v3->_maxAppRank = _restrictionsMaximumEffectiveAppRanking;

    v10 = [(VUISettingsManager *)v3 _formatStringForVideoFormat:[(VUISettingsManager *)v3 _preferredVideoFormat]];
    preferredVideoFormat = v3->_preferredVideoFormat;
    v3->_preferredVideoFormat = v10;

    _isRTL = [(VUISettingsManager *)v3 _isRTL];
    isRTL = v3->_isRTL;
    v3->_isRTL = _isRTL;

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
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  v4 = MEMORY[0x1E696AD98];

  return [v4 numberWithBool:userInterfaceLayoutDirection == 1];
}

- (void)createSettingsStore
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__VUISettingsManager_createSettingsStore__block_invoke;
  aBlock[3] = &unk_1E872F4E0;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  isSystemPreferencesStoreInitializing = [MEMORY[0x1E69E15F0] isSystemPreferencesStoreInitializing];
  v5 = VUIDefaultLogObject();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (isSystemPreferencesStoreInitializing)
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

    mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
    preferencesStore = self->_preferencesStore;
    self->_preferencesStore = mEMORY[0x1E69E15F0];

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
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  upNextLockupsUseCoverArt = [mEMORY[0x1E69E15F0] upNextLockupsUseCoverArt];

  return upNextLockupsUseCoverArt;
}

- (BOOL)_automaticDownloadsEnabled
{
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  useAutomaticDownloads = [mEMORY[0x1E69E15F0] useAutomaticDownloads];

  return useAutomaticDownloads;
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

    _hasRestrictionsChanged = [(VUISettingsManager *)self _hasRestrictionsChanged];
    _hasPreferredVideoFormatChanged = [(VUISettingsManager *)self _hasPreferredVideoFormatChanged];
    _hasUpNextLockupsUseCoverArtChanged = [(VUISettingsManager *)self _hasUpNextLockupsUseCoverArtChanged];
    _hasRTLChanged = [(VUISettingsManager *)self _hasRTLChanged];
    _hasAppAppearanceSettingChanged = [(VUISettingsManager *)self _hasAppAppearanceSettingChanged];
    v9 = _hasRestrictionsChanged || _hasPreferredVideoFormatChanged || _hasUpNextLockupsUseCoverArtChanged || _hasRTLChanged;
    if ([(VUISettingsManager *)self _hasAutomaticDownloadsSettingChanged])
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:@"VUIAutomaticDownloadsSwitchDidChangeNotification" object:0];
    }

    v11 = v9 || _hasAppAppearanceSettingChanged;
    if (_hasAppAppearanceSettingChanged)
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:@"VUIAppAppearanceSettingDidChangeNotification" object:0];
    }

    if (v11)
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__VUISettingsManager_checkAndUpdateSettings__block_invoke;
      v14[3] = &__block_descriptor_33_e8_v12__0B8l;
      v15 = _hasUpNextLockupsUseCoverArtChanged;
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
  _restrictionsMaximumEffectiveMovieRanking = [(VUISettingsManager *)self _restrictionsMaximumEffectiveMovieRanking];
  _restrictionsMaximumEffectiveTVShowRanking = [(VUISettingsManager *)self _restrictionsMaximumEffectiveTVShowRanking];
  _restrictionsMaximumEffectiveAppRanking = [(VUISettingsManager *)self _restrictionsMaximumEffectiveAppRanking];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@-%@", _restrictionsMaximumEffectiveMovieRanking, _restrictionsMaximumEffectiveTVShowRanking, _restrictionsMaximumEffectiveAppRanking];
  restrictions = [(VUISettingsManager *)self restrictions];
  v8 = v6;
  v9 = v8;
  if (restrictions == v8)
  {

LABEL_10:
    v12 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    v10 = restrictions == 0;
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
    v11 = [restrictions isEqual:v8];

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
  v14 = [_restrictionsMaximumEffectiveMovieRanking copy];
  maxMovieRank = self->_maxMovieRank;
  self->_maxMovieRank = v14;

  v16 = [_restrictionsMaximumEffectiveTVShowRanking copy];
  maxTVShowRank = self->_maxTVShowRank;
  self->_maxTVShowRank = v16;

  v18 = [_restrictionsMaximumEffectiveAppRanking copy];
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
  _upNextLockupsUseCoverArt = [(VUISettingsManager *)self _upNextLockupsUseCoverArt];
  self->_upNextLockupsUseCoverArt = _upNextLockupsUseCoverArt;
  return upNextLockupsUseCoverArt != _upNextLockupsUseCoverArt;
}

- (BOOL)_hasRTLChanged
{
  v3 = self->_isRTL;
  _isRTL = [(VUISettingsManager *)self _isRTL];
  isRTL = self->_isRTL;
  self->_isRTL = _isRTL;
  v6 = _isRTL;

  return v3 != v6;
}

- (BOOL)_hasAutomaticDownloadsSettingChanged
{
  automaticDownloadsEnabled = self->_automaticDownloadsEnabled;
  _automaticDownloadsEnabled = [(VUISettingsManager *)self _automaticDownloadsEnabled];
  self->_automaticDownloadsEnabled = _automaticDownloadsEnabled;
  return automaticDownloadsEnabled != _automaticDownloadsEnabled;
}

- (void)_setupNotificationObservers
{
  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] registerObserver:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handlePreferencesChange_ name:*MEMORY[0x1E69E1728] object:0];
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

+ (BOOL)isPostPlayAutoPlayEnabledForType:(unint64_t)type
{
  if (_os_feature_enabled_impl())
  {
    v5 = [self _wlkTypeFromVUIPostPlayType:type];
    defaultManager = [MEMORY[0x1E69E1598] defaultManager];
    postPlayAutoPlayNextVideo = [defaultManager isEnabledForType:v5];
  }

  else
  {
    defaultManager = [MEMORY[0x1E69E15F0] sharedPreferences];
    postPlayAutoPlayNextVideo = [defaultManager postPlayAutoPlayNextVideo];
  }

  v8 = postPlayAutoPlayNextVideo;

  return v8;
}

- (id)preferencesJSONData
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  maxMovieRank = [(VUISettingsManager *)self maxMovieRank];
  if (maxMovieRank)
  {
    [v3 setObject:maxMovieRank forKey:@"maxMovieRank"];
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null forKey:@"maxMovieRank"];
  }

  maxTVShowRank = [(VUISettingsManager *)self maxTVShowRank];
  if (maxTVShowRank)
  {
    [v3 setObject:maxTVShowRank forKey:@"maxTVShowRank"];
  }

  else
  {
    null2 = [MEMORY[0x1E695DFB0] null];
    [v3 setObject:null2 forKey:@"maxTVShowRank"];
  }

  preferredVideoFormat = [(VUISettingsManager *)self preferredVideoFormat];
  [v3 vui_setObjectIfNotNil:preferredVideoFormat forKey:@"preferredVideoFormat"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[VUISettingsManager upNextLockupsUseCoverArt](self, "upNextLockupsUseCoverArt")}];
  [v3 setObject:v9 forKey:@"upNextLockupsUseCoverArt"];

  isRTL = [(VUISettingsManager *)self isRTL];
  [v3 setObject:isRTL forKey:@"isRTL"];

  return v3;
}

- (void)isAppInstallationAllowedForRating:(id)rating completion:(id)completion
{
  v4 = MEMORY[0x1E69ADFB8];
  completionCopy = completion;
  sharedConnection = [v4 sharedConnection];
  isUIAppInstallationAllowed = [sharedConnection isUIAppInstallationAllowed];

  completionCopy[2](completionCopy, isUIAppInstallationAllowed);
}

- (void)dealloc
{
  [(VUISettingsManager *)self _teardownNotificationObservers];
  v3.receiver = self;
  v3.super_class = VUISettingsManager;
  [(VUISettingsManager *)&v3 dealloc];
}

+ (unint64_t)_wlkTypeFromVUIPostPlayType:(unint64_t)type
{
  if (type)
  {
    return 2 * (type == 1);
  }

  else
  {
    return 1;
  }
}

- (void)_teardownNotificationObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  [mEMORY[0x1E69ADFB8] unregisterObserver:self];
}

- (void)_sendSettingsValuesToJS:(id)s
{
  sCopy = s;
  v5 = +[VUITVAppLauncher sharedInstance];
  appController = [v5 appController];

  appContext = [appController appContext];
  preferencesJSONData = [(VUISettingsManager *)self preferencesJSONData];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__VUISettingsManager__sendSettingsValuesToJS___block_invoke;
  v13[3] = &unk_1E872F508;
  v14 = preferencesJSONData;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__VUISettingsManager__sendSettingsValuesToJS___block_invoke_56;
  v11[3] = &unk_1E872D790;
  v12 = sCopy;
  v9 = sCopy;
  v10 = preferencesJSONData;
  [appContext evaluate:v13 completionBlock:v11 completionQueue:MEMORY[0x1E69E96A0]];
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

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
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

- (id)_formatStringForVideoFormat:(unint64_t)format
{
  v3 = @"SD";
  if (format != 1)
  {
    v3 = 0;
  }

  if (format)
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
  _appAppearance = [(VUISettingsManager *)self _appAppearance];
  self->_appAppearance = _appAppearance;
  return appAppearance != _appAppearance;
}

- (int64_t)_appAppearance
{
  mEMORY[0x1E69E15F0] = [MEMORY[0x1E69E15F0] sharedPreferences];
  appAppearance = [mEMORY[0x1E69E15F0] appAppearance];

  if ([appAppearance isEqualToString:*MEMORY[0x1E69E1630]])
  {
    v4 = 0;
  }

  else if ([appAppearance isEqualToString:*MEMORY[0x1E69E1638]])
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

- (void)_handlePreferencesChange:(id)change
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