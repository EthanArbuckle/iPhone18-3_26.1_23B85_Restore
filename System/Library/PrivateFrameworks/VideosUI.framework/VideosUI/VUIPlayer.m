@interface VUIPlayer
+ (id)savedPreferredAudioLanguageCode;
+ (void)initialize;
+ (void)updateSupplementaryAvailableAudioLanguageCodes:(id)a3;
- (VUIPlayer)initWithName:(id)a3;
- (void)_configurePlayerForCurrentNetworkSettingsAndMediaItem;
- (void)_videoPlaybackSettingsDidChange:(id)a3;
- (void)dealloc;
@end

@implementation VUIPlayer

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[VUIPlayer initialize];
  }
}

void __23__VUIPlayer_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "VUIPlayer");
  v1 = sLogObject_1;
  sLogObject_1 = v0;
}

- (VUIPlayer)initWithName:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = VUIPlayer;
  v3 = [(VUIPlayer *)&v12 initWithName:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__currentMediaItemDidChange_ name:*MEMORY[0x1E69D5F10] object:v3];

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v6 = +[VUIPlaybackSettings sharedSettings];
    [v5 addObserver:v3 selector:sel__videoPlaybackSettingsDidChange_ name:@"VUIPlaybackSettingsUserPreferencesDidChange" object:v6];

    v7 = +[VUIPlaybackSettings sharedSettings];
    v8 = [v7 cellularDataPlaybackEnabled];

    v9 = sLogObject_1;
    if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"not ";
      if (v8)
      {
        v10 = &stru_1F5DB25C0;
      }

      *buf = 138412290;
      v14 = v10;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "Use Cellular Data for Playback setting is %@enabled", buf, 0xCu);
    }

    [(VUIPlayer *)v3 setAllowsCellularUsage:v8];
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlayer;
  [(VUIPlayer *)&v4 dealloc];
}

+ (id)savedPreferredAudioLanguageCode
{
  v2 = +[VUIPlaybackSettings sharedSettings];
  v3 = [v2 preferredAudioLanguageCode];

  return v3;
}

+ (void)updateSupplementaryAvailableAudioLanguageCodes:(id)a3
{
  v3 = a3;
  v4 = +[VUIPlaybackSettings sharedSettings];
  [v4 updateSupplementaryAvailableAudioLanguageCodes:v3];
}

- (void)_videoPlaybackSettingsDidChange:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackSettings sharedSettings];
  v5 = [v4 cellularDataPlaybackEnabled];

  v6 = sLogObject_1;
  if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"not ";
    if (v5)
    {
      v7 = &stru_1F5DB25C0;
    }

    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "After settings change, Use Cellular Data for Playback setting is %@enabled", &v8, 0xCu);
  }

  [(VUIPlayer *)self setAllowsCellularUsage:v5];
  [(VUIPlayer *)self _configurePlayerForCurrentNetworkSettingsAndMediaItem];
}

- (void)_configurePlayerForCurrentNetworkSettingsAndMediaItem
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = [(VUIPlayer *)self currentMediaItem];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_43;
  }

  v5 = [v3 mediaItemMetadataForProperty:*MEMORY[0x1E69D5C80]];
  v6 = [v5 BOOLValue];
  if (v6)
  {
    v7 = 1;
    v8 = 1;
  }

  else
  {
    v9 = +[VUIPlaybackSettings sharedSettings];
    v8 = [v9 preferredWifiPlaybackQuality] == 0;

    v10 = +[VUIPlaybackSettings sharedSettings];
    v7 = [v10 preferredCellularPlaybackQuality] == 0;
  }

  v11 = [MEMORY[0x1E69E4428] sharedMonitor];
  v12 = [v11 networkType];

  v13 = sLogObject_1;
  if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"Good";
    v15 = @"Best";
    if (v8)
    {
      v14 = @"Best";
    }

    if (!v7)
    {
      v15 = @"Auto";
    }

    *v40 = 138412802;
    *&v40[4] = v14;
    *&v40[12] = 2112;
    *&v40[14] = v15;
    v16 = @"NO";
    if (v6)
    {
      v16 = @"YES";
    }

    *&v40[22] = 2112;
    v41 = v16;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "Wifi playback quality setting: %@, cellular playback quality setting: %@, force high quality: %@", v40, 0x20u);
  }

  v17 = sLogObject_1;
  if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"Unknown";
    if (v12 > 99)
    {
      if (v12 > 1000)
      {
        switch(v12)
        {
          case 1001:
            v18 = @"Bridged WiFi";
            break;
          case 2000:
            v18 = @"Wired Ethernet";
            break;
          case 3000:
            v18 = @"Other";
            break;
        }

        goto LABEL_17;
      }

      if (v12 != 100)
      {
        if (v12 == 500)
        {
          v18 = @"Bluetooth";
        }

        else if (v12 == 1000)
        {
          v18 = @"WiFi";
        }

        goto LABEL_17;
      }
    }

    else if ((v12 - 1) >= 8)
    {
LABEL_17:
      v19 = MEMORY[0x1E69E4428];
      v20 = v17;
      v21 = [v19 sharedMonitor];
      v22 = [v21 isCurrentNetworkLinkExpensive];
      *v40 = 134218498;
      v23 = @"NO";
      if (v22)
      {
        v23 = @"YES";
      }

      *&v40[4] = v12;
      *&v40[12] = 2112;
      *&v40[14] = v18;
      *&v40[22] = 2112;
      v41 = v23;
      _os_log_impl(&dword_1E323F000, v20, OS_LOG_TYPE_DEFAULT, "Network type is %ld (%@) is expensive: %@", v40, 0x20u);

      goto LABEL_20;
    }

    v18 = @"Cellular";
    goto LABEL_17;
  }

LABEL_20:
  v25 = *MEMORY[0x1E695F060];
  v24 = *(MEMORY[0x1E695F060] + 8);
  if (v7)
  {
    v26 = *MEMORY[0x1E695F060];
  }

  else
  {
    v26 = 768.0;
  }

  if (v7)
  {
    v27 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    v27 = 432.0;
  }

  if (((ICEnvironmentNetworkTypeIsCellular() | v8) & 1) == 0)
  {
    v24 = 576.0;
    v25 = 1024.0;
  }

  [(VUIPlayer *)self preferredMaximumResolution:1024.0];
  if (v25 != v29 || v24 != v28)
  {
    v31 = sLogObject_1;
    if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v43.width = v25;
      v43.height = v24;
      v33 = NSStringFromCGSize(v43);
      *v40 = 138412290;
      *&v40[4] = v33;
      _os_log_impl(&dword_1E323F000, v32, OS_LOG_TYPE_DEFAULT, "Setting preferredMaximumResolution to %@", v40, 0xCu);
    }

    [(VUIPlayer *)self setPreferredMaximumResolution:v25, v24];
  }

  [(VUIPlayer *)self preferredMaximumResolutionForExpensiveNetworks];
  if (v26 != v35 || v27 != v34)
  {
    v37 = sLogObject_1;
    if (os_log_type_enabled(sLogObject_1, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v44.width = v26;
      v44.height = v27;
      v39 = NSStringFromCGSize(v44);
      *v40 = 138412290;
      *&v40[4] = v39;
      _os_log_impl(&dword_1E323F000, v38, OS_LOG_TYPE_DEFAULT, "Setting preferredMaximumResolutionForExpensiveNetworks to %@", v40, 0xCu);
    }

    [(VUIPlayer *)self setPreferredMaximumResolutionForExpensiveNetworks:v26, v27];
  }

LABEL_43:
}

@end