@interface MTPreferences
+ (BOOL)_copyUserDefaultToSharedContainer:(id)a3 synchronize:(BOOL)a4;
+ (BOOL)copySettingsToSharedContainer;
+ (id)defaultSettings:(id)a3;
+ (void)moveUserDefaultToSharedContainer:(id)a3;
+ (void)registerDefaults;
@end

@implementation MTPreferences

+ (void)registerDefaults
{
  if (+[PFClientUtil isPodcastsApp])
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v4 = [a1 defaultSettings:v3];
    [v5 registerDefaults:v4];
  }
}

+ (BOOL)copySettingsToSharedContainer
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[PFClientUtil isPodcastsApp](PFClientUtil, "isPodcastsApp") && ([MEMORY[0x1E695E000] settingsAppWritesDirectlyToSharedUserDefaults] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v5 = [a1 defaultSettings:v4];
    v6 = [v5 allKeys];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [a1 _copyUserDefaultToSharedContainer:*(*(&v16 + 1) + 8 * i) synchronize:{0, v16}];
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);

      if ((v10 & 1) == 0)
      {
        v3 = 0;
        goto LABEL_16;
      }

      v13 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
      v3 = [v13 synchronize];
    }

    else
    {
      v3 = 0;
      v13 = v7;
    }

LABEL_16:
    goto LABEL_17;
  }

  v3 = 0;
LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)moveUserDefaultToSharedContainer:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v7 = [v6 objectForKey:v3];

    if (v7)
    {
      v8 = _MTLogCategoryDefault();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412802;
        v17 = v3;
        v18 = 2112;
        v19 = v5;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "WARNING: Overwriting shared user default %@ with %@ from %@", &v16, 0x20u);
      }
    }

    v9 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [v9 setObject:v5 forKey:v3];

    v10 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [v10 synchronize];

    v11 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    v12 = [v11 objectForKey:v3];

    if ([v12 isEqual:v5])
    {
      v13 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v13 removeObjectForKey:v3];

      v14 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v14 synchronize];
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

+ (id)defaultSettings:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__MTPreferences_defaultSettings___block_invoke;
  v10[3] = &unk_1E856B590;
  v11 = v4;
  v12 = a1;
  v5 = defaultSettings__onceToken;
  v6 = v4;
  if (v5 != -1)
  {
    dispatch_once(&defaultSettings__onceToken, v10);
  }

  v7 = defaultSettings__defaults;
  v8 = defaultSettings__defaults;

  return v7;
}

void __33__MTPreferences_defaultSettings___block_invoke(uint64_t a1)
{
  v12[15] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:@"MTContinuousPlaybackAllowed"];
  if (v2)
  {
    v3 = [*(a1 + 32) BOOLForKey:@"MTContinuousPlaybackAllowed"];
  }

  else
  {
    v3 = 1;
  }

  v4 = MEMORY[0x1E695E118];
  v11[0] = @"MTUseCustomColorsKey";
  v11[1] = @"MTWiFiDownloadOnly";
  v12[0] = MEMORY[0x1E695E118];
  v12[1] = MEMORY[0x1E695E118];
  v11[2] = @"MTSyncSubscriptions";
  v11[3] = @"MTShowSiriSuggestions";
  v12[2] = MEMORY[0x1E695E118];
  v12[3] = MEMORY[0x1E695E118];
  v11[4] = @"MTPodcastAutoDownloadStateDefaultKey";
  v11[5] = @"MTCellularDownloadLimitKey";
  v12[4] = MEMORY[0x1E695E118];
  v12[5] = &unk_1F54BE030;
  v11[6] = @"MTPodcastDeletePlayedEpisodesDefaultKey";
  v11[7] = @"MTHidePlayedEpisodes";
  v12[6] = &unk_1F54BE048;
  v12[7] = MEMORY[0x1E695E110];
  v11[8] = @"MTContinuousPlaybackEnabled";
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  v12[8] = v5;
  v12[9] = &unk_1F54BE060;
  v11[9] = @"MTSkipForwardIntervalDefault";
  v11[10] = @"MTSkipBackwardsIntervalDefault";
  v12[10] = &unk_1F54BE078;
  v12[11] = v4;
  v11[11] = @"MTRemoteSkipInsteadOfNextTrackDefault";
  v11[12] = @"MTDownloadEpisodesWhenSaving";
  v12[12] = v4;
  v11[13] = @"MTPodcastEpisodeLimitDefaultKey";
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 40), "defaultEpisodeLimit")}];
  v12[13] = v6;
  v11[14] = @"kMTAdvancedPlaybackSettingsEnhanceDialogueEnabledKey";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{+[MTAdvancedPlaybackSettings defaultEnhanceDialogueEnabled](MTAdvancedPlaybackSettings, "defaultEnhanceDialogueEnabled")}];
  v12[14] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:15];
  v9 = defaultSettings__defaults;
  defaultSettings__defaults = v8;

  v10 = *MEMORY[0x1E69E9840];
}

+ (BOOL)_copyUserDefaultToSharedContainer:(id)a3 synchronize:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:v5];

  v8 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v9 = [v8 objectForKey:v5];

  if (v7 == v9 || ([v7 isEqual:v9] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
    [v11 setObject:v7 forKey:v5];

    if (v4)
    {
      v12 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
      [v12 synchronize];
    }

    v10 = 1;
  }

  return v10;
}

@end