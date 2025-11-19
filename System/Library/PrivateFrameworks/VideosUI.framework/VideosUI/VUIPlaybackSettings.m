@interface VUIPlaybackSettings
+ (id)sharedSettings;
- (VUIPlaybackSettings)init;
- (id)_descriptionForExternalScreenType:(unsigned int)a3;
- (int64_t)_downloadQualityForString:(id)a3;
- (int64_t)_playbackQualityForString:(id)a3 forCellular:(BOOL)a4;
- (int64_t)preferredDownloadQualityForCurrentNetworkStatus;
- (int64_t)preferredPlaybackQualityForCurrentNetworkStatus;
- (void)_externalScreenTypeDidChange:(id)a3;
- (void)_handlePreferencesDidChangeNotification:(id)a3;
- (void)_registerObserverForUserPrefsChange;
- (void)_sceneWillConnect:(id)a3;
- (void)_updateNetworkStatus;
- (void)_updatePropertiesFromUserPrefs;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkType:(id)a3;
- (void)setCellularDataDownloadEnabled:(BOOL)a3;
- (void)setCellularDataPlaybackEnabled:(BOOL)a3;
- (void)setPreferAVAdapterCompatibility:(BOOL)a3;
- (void)setPreferredAudioLanguageCode:(id)a3;
- (void)setPreferredWifiDownloadQuality:(int64_t)a3;
- (void)updateSupplementaryAvailableAudioLanguageCodes:(id)a3;
@end

@implementation VUIPlaybackSettings

+ (id)sharedSettings
{
  if (sharedSettings_onceToken != -1)
  {
    +[VUIPlaybackSettings sharedSettings];
  }

  v3 = sharedSettings_sSharedSettings;

  return v3;
}

void __37__VUIPlaybackSettings_sharedSettings__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackSettings);
  v1 = sharedSettings_sSharedSettings;
  sharedSettings_sSharedSettings = v0;
}

- (VUIPlaybackSettings)init
{
  v20.receiver = self;
  v20.super_class = VUIPlaybackSettings;
  v2 = [(VUIPlaybackSettings *)&v20 init];
  if (v2)
  {
    MRMediaRemoteSetWantsExternalScreenTypeChangeNotifications();
    v3 = [MEMORY[0x1E69E4428] sharedMonitor];
    [v3 registerObserver:v2];

    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v2 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel__externalScreenTypeDidChange_ name:*MEMORY[0x1E69B0DB0] object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel__sceneWillConnect_ name:*MEMORY[0x1E69DE350] object:0];

    objc_initWeak(&location, v2);
    v7 = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __27__VUIPlaybackSettings_init__block_invoke;
    v17 = &unk_1E8730448;
    objc_copyWeak(&v18, &location);
    MRMediaRemoteGetExternalScreenType();

    v8 = [MEMORY[0x1E69DC668] sharedApplication];
    v9 = [v8 vuiIsNonLightningAVAdapterConnected];

    if (v9)
    {
      v10 = VUIDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "A non-Lightning AV adapter is connected", v13, 2u);
      }

      v11 = [MEMORY[0x1E69E15F0] sharedPreferences];
      [v11 setHasAVAdapterEvenBeenConnected:1];
    }

    [(VUIPlaybackSettings *)v2 _updateNetworkStatus];
    [(VUIPlaybackSettings *)v2 _updatePropertiesFromUserPrefs];
    [(VUIPlaybackSettings *)v2 _registerObserverForUserPrefsChange];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_updateNetworkStatus
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69E4428] sharedMonitor];
  v4 = [v3 networkType];

  v5 = VUIDefaultLogObject();
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v6 = @"Unknown";
  if (v4 > 99)
  {
    if (v4 > 1000)
    {
      switch(v4)
      {
        case 1001:
          v6 = @"Bridged WiFi";
          break;
        case 2000:
          v6 = @"Wired Ethernet";
          break;
        case 3000:
          v6 = @"Other";
          break;
      }

      goto LABEL_5;
    }

    if (v4 != 100)
    {
      if (v4 == 500)
      {
        v6 = @"Bluetooth";
      }

      else if (v4 == 1000)
      {
        v6 = @"WiFi";
      }

      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if ((v4 - 1) < 8)
  {
LABEL_4:
    v6 = @"Cellular";
  }

LABEL_5:
  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  v8 = [v7 isCurrentNetworkLinkExpensive];
  v9 = @"NO";
  *v11 = 134218498;
  *&v11[4] = v4;
  *&v11[12] = 2112;
  if (v8)
  {
    v9 = @"YES";
  }

  *&v11[14] = v6;
  v12 = 2112;
  v13 = v9;
  _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "Network type did change to %ld (%@) is expensive: %@", v11, 0x20u);

LABEL_8:
  if (ICEnvironmentNetworkTypeIsWiFi() & 1) != 0 || (ICEnvironmentNetworkTypeIsWired() & 1) != 0 || (ICEnvironmentNetworkTypeIsBluetooth())
  {
    v10 = 1;
  }

  else if (ICEnvironmentNetworkTypeIsCellular())
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  [(VUIPlaybackSettings *)self setNetworkStatus:v10, *v11];
}

- (void)_updatePropertiesFromUserPrefs
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v26 = [v3 useCellularDataPlayback];

  v4 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v5 = [v4 wifiQualityPlayback];

  v6 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v7 = [v6 cellularQualityPlayback];

  v8 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v25 = [v8 audioLanguageCode];

  v9 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v24 = [v9 useCellularDataDownload];

  v10 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v11 = [v10 downloadsCompatibleWithAVAdapter];

  v12 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v13 = [v12 wifiQualityDownload];

  v14 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v15 = [v14 cellularQualityDownload];

  v16 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v17 = [v16 selectedAudioLanguagesDownload];

  if (![v17 count])
  {
    v27[0] = @"ORIGINAL_AUDIO_LANGUAGE";
    v27[1] = @"DEVICE_AUDIO_LANGUAGE";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    goto LABEL_5;
  }

  if ([v17 containsObject:@"DEFAULT_LANGUAGE"])
  {
    v18 = [v17 mutableCopy];
    [v18 removeObject:@"DEFAULT_LANGUAGE"];
    [v18 insertObject:@"ORIGINAL_AUDIO_LANGUAGE" atIndex:0];
    [v18 insertObject:@"DEVICE_AUDIO_LANGUAGE" atIndex:1];
LABEL_5:

    v17 = v18;
  }

  v19 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v20 = [v19 subtitleDefaultLanguageEnabledDownload];

  v21 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v22 = [v21 subtitleAudioLanguagesDownload];

  [(VUIPlaybackSettings *)self setPreferredWifiPlaybackQuality:[(VUIPlaybackSettings *)self _playbackQualityForString:v5 forCellular:0]];
  [(VUIPlaybackSettings *)self setPreferredCellularPlaybackQuality:[(VUIPlaybackSettings *)self _playbackQualityForString:v7 forCellular:1]];
  [(VUIPlaybackSettings *)self setPreferredCellularDownloadQuality:[(VUIPlaybackSettings *)self _downloadQualityForString:v15]];
  [(VUIPlaybackSettings *)self setPreferredAudioDownloadLanguages:v17];
  [(VUIPlaybackSettings *)self setUseDefaultSubtitleDownloadLanguages:v20];
  [(VUIPlaybackSettings *)self setPreferredSubtitleDownloadLanguages:v22];
  self->_cellularDataPlaybackEnabled = v26;
  self->_cellularDataDownloadEnabled = v24;
  preferredAudioLanguageCode = self->_preferredAudioLanguageCode;
  self->_preferredAudioLanguageCode = v25;

  self->_preferAVAdapterCompatibility = v11;
  self->_preferredWifiDownloadQuality = [(VUIPlaybackSettings *)self _downloadQualityForString:v13];
}

- (void)_registerObserverForUserPrefsChange
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handlePreferencesDidChangeNotification_ name:*MEMORY[0x1E69E1728] object:0];
}

void __27__VUIPlaybackSettings_init__block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [WeakRetained _descriptionForExternalScreenType:a2];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Initial external screen type is %@", &v7, 0xCu);
  }

  if (a2 == 2)
  {
    v6 = [MEMORY[0x1E69E15F0] sharedPreferences];
    [v6 setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackSettings;
  [(VUIPlaybackSettings *)&v4 dealloc];
}

- (int64_t)preferredPlaybackQualityForCurrentNetworkStatus
{
  v3 = [(VUIPlaybackSettings *)self networkStatus];
  if (v3 == 2)
  {

    return [(VUIPlaybackSettings *)self preferredCellularPlaybackQuality];
  }

  else if (v3 == 1)
  {

    return [(VUIPlaybackSettings *)self preferredWifiPlaybackQuality];
  }

  else
  {
    return 0;
  }
}

- (int64_t)preferredDownloadQualityForCurrentNetworkStatus
{
  v3 = [(VUIPlaybackSettings *)self networkStatus];
  if (v3 == 2)
  {

    return [(VUIPlaybackSettings *)self preferredCellularDownloadQuality];
  }

  else if (v3 == 1)
  {

    return [(VUIPlaybackSettings *)self preferredWifiDownloadQuality];
  }

  else
  {
    return 1;
  }
}

- (void)setCellularDataPlaybackEnabled:(BOOL)a3
{
  v3 = a3;
  self->_cellularDataPlaybackEnabled = a3;
  v4 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v4 setUseCellularDataPlayback:v3];
}

- (void)setCellularDataDownloadEnabled:(BOOL)a3
{
  v3 = a3;
  self->_cellularDataDownloadEnabled = a3;
  v4 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v4 setUseCellularDataDownload:v3];
}

- (void)setPreferredAudioLanguageCode:(id)a3
{
  objc_storeStrong(&self->_preferredAudioLanguageCode, a3);
  v4 = a3;
  v5 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v5 setAudioLanguageCode:v4];
}

- (void)setPreferAVAdapterCompatibility:(BOOL)a3
{
  v3 = a3;
  self->_preferAVAdapterCompatibility = a3;
  v4 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v4 setHasAVAdapterEvenBeenConnected:1];

  v5 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v5 setDownloadsCompatibleWithAVAdapter:v3];
}

- (void)setPreferredWifiDownloadQuality:(int64_t)a3
{
  self->_preferredWifiDownloadQuality = a3;
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    v3 = MEMORY[0x1E69E1648];
  }

  else
  {
    v3 = MEMORY[0x1E69E1640];
  }

  v4 = *v3;
  if (v4)
  {
    v6 = v4;
    v5 = [MEMORY[0x1E69E15F0] sharedPreferences];
    [v5 setWifiQualityDownload:v6];
  }
}

- (void)updateSupplementaryAvailableAudioLanguageCodes:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v3;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "Updating supplementary available audio language codes with %@", buf, 0xCu);
  }

  v5 = objc_alloc(MEMORY[0x1E695DF70]);
  v6 = [MEMORY[0x1E69E15F0] sharedPreferences];
  v7 = [v6 supplementaryAvailableAudioLanguages];
  v8 = [v5 initWithArray:v7];

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v3;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if (([v8 containsObject:{v14, v17}] & 1) == 0)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = VUIDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v8;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "Updated supplementary available audio language codes: %@", buf, 0xCu);
  }

  v16 = [MEMORY[0x1E69E15F0] sharedPreferences];
  [v16 setSupplementaryAvailableAudioLanguages:v8];
}

- (void)_externalScreenTypeDidChange:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 vui_numberForKey:*MEMORY[0x1E69B0DB8]];
  v6 = [v5 unsignedIntValue];

  v7 = VUIDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(VUIPlaybackSettings *)self _descriptionForExternalScreenType:v6];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "External screen type did change to %@", &v10, 0xCu);
  }

  if (v6 == 2)
  {
    v9 = [MEMORY[0x1E69E15F0] sharedPreferences];
    [v9 setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)_sceneWillConnect:(id)a3
{
  v3 = [a3 object];
  if ([v3 vui_isNonLightningSecondScreenScene])
  {
    v4 = VUIDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "A non-Lightning AV adapter was connected", v6, 2u);
    }

    v5 = [MEMORY[0x1E69E15F0] sharedPreferences];
    [v5 setHasAVAdapterEvenBeenConnected:1];
  }
}

- (void)_handlePreferencesDidChangeNotification:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v4 = __63__VUIPlaybackSettings__handlePreferencesDidChangeNotification___block_invoke;
  v5 = &unk_1E872D768;
  v6 = self;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4(block);
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __63__VUIPlaybackSettings__handlePreferencesDidChangeNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updatePropertiesFromUserPrefs];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIPlaybackSettingsUserPreferencesDidChange" object:*(a1 + 32)];
}

- (int64_t)_playbackQualityForString:(id)a3 forCellular:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 isEqualToString:*MEMORY[0x1E69E1650]])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 isEqualToString:*MEMORY[0x1E69E1658]] | v4;
  }

  return v6;
}

- (int64_t)_downloadQualityForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x1E69E1640]])
  {
    v4 = 0;
  }

  else
  {
    [v3 isEqualToString:*MEMORY[0x1E69E1648]];
    v4 = 1;
  }

  return v4;
}

- (id)_descriptionForExternalScreenType:(unsigned int)a3
{
  if (a3 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E8730468[a3];
  }
}

- (void)environmentMonitorDidChangeNetworkType:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__VUIPlaybackSettings_environmentMonitorDidChangeNetworkType___block_invoke;
  block[3] = &unk_1E872D768;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__VUIPlaybackSettings_environmentMonitorDidChangeNetworkType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateNetworkStatus];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"VUIPlaybackSettingsNetworkStatusDidChange" object:*(a1 + 32)];
}

@end