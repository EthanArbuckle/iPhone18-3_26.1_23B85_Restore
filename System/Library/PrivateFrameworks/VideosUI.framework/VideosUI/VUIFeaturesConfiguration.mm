@interface VUIFeaturesConfiguration
+ (BOOL)BOOLValueForKey:(id)key fromDictionary:(id)dictionary defaultValue:(BOOL)value;
+ (id)defaultsNumberValueForKey:(id)key;
+ (id)defaultsStringValueForKey:(id)key;
+ (id)numberValueForKey:(id)key fromDictionary:(id)dictionary;
+ (id)sharedInstance;
+ (id)stringValueForKey:(id)key fromDictionary:(id)dictionary;
- (BOOL)_populateConfigWithDictionary:(id)dictionary isLaunching:(BOOL)launching;
- (BOOL)_updateFromCache;
- (VUIFeaturesConfiguration)init;
- (id)_cachePath;
- (void)_cacheFeatureConfiguration:(id)configuration;
- (void)_populateAccountConfig:(id)config;
- (void)_populateAccountMessageConfig:(id)config;
- (void)_populateCanonicalConfig:(id)config;
- (void)_populateGDPRConfig:(id)config;
- (void)_populateLaunchConfig:(id)config;
- (void)_populateLibConfig:(id)config;
- (void)_populateLivePostPlayConfig:(id)config;
- (void)_populateMediaShowcaseConfig:(id)config;
- (void)_populateMultiviewConfig:(id)config;
- (void)_populateRootControllerConfig:(id)config;
- (void)_populateTabItemsUpdateConfig:(id)config;
- (void)_populateTimedMetadataConfig:(id)config;
- (void)_populateTipKitConfig:(id)config;
- (void)_updateTVSettingsIfNeeded:(BOOL)needed;
- (void)parseUpNextConfig:(id)config;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation VUIFeaturesConfiguration

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_22 != -1)
  {
    +[VUIFeaturesConfiguration sharedInstance];
  }

  v3 = sharedInstance_defaultConfig;

  return v3;
}

void __42__VUIFeaturesConfiguration_sharedInstance__block_invoke()
{
  v0 = VUISignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.Init", "", buf, 2u);
  }

  v1 = objc_opt_new();
  v2 = sharedInstance_defaultConfig;
  sharedInstance_defaultConfig = v1;

  v3 = VUISignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.Init", "", v4, 2u);
  }
}

- (VUIFeaturesConfiguration)init
{
  v52.receiver = self;
  v52.super_class = VUIFeaturesConfiguration;
  v2 = [(VUIFeaturesConfiguration *)&v52 init];
  if (v2)
  {
    v3 = objc_opt_new();
    playbackUpNextConfig = v2->_playbackUpNextConfig;
    v2->_playbackUpNextConfig = v3;

    v5 = objc_opt_new();
    nowPlayingConfig = v2->_nowPlayingConfig;
    v2->_nowPlayingConfig = v5;

    v7 = objc_opt_new();
    playerTabsConfig = v2->_playerTabsConfig;
    v2->_playerTabsConfig = v7;

    v9 = objc_opt_new();
    autoPlayConfig = v2->_autoPlayConfig;
    v2->_autoPlayConfig = v9;

    v11 = objc_opt_new();
    liveLinkConfig = v2->_liveLinkConfig;
    v2->_liveLinkConfig = v11;

    v13 = objc_opt_new();
    downloadConfig = v2->_downloadConfig;
    v2->_downloadConfig = v13;

    v15 = objc_opt_new();
    syndicationConfig = v2->_syndicationConfig;
    v2->_syndicationConfig = v15;

    v17 = objc_opt_new();
    dropOnTabConfig = v2->_dropOnTabConfig;
    v2->_dropOnTabConfig = v17;

    v19 = objc_opt_new();
    mediaShowcaseConfig = v2->_mediaShowcaseConfig;
    v2->_mediaShowcaseConfig = v19;

    v21 = objc_opt_new();
    upNextConfig = v2->_upNextConfig;
    v2->_upNextConfig = v21;

    v23 = objc_opt_new();
    canonicalConfig = v2->_canonicalConfig;
    v2->_canonicalConfig = v23;

    v25 = objc_opt_new();
    accountConfig = v2->_accountConfig;
    v2->_accountConfig = v25;

    v27 = objc_opt_new();
    accountMessageConfig = v2->_accountMessageConfig;
    v2->_accountMessageConfig = v27;

    v29 = objc_opt_new();
    rootControllerConfig = v2->_rootControllerConfig;
    v2->_rootControllerConfig = v29;

    v31 = objc_opt_new();
    tabItemsUpdateConfig = v2->_tabItemsUpdateConfig;
    v2->_tabItemsUpdateConfig = v31;

    v33 = objc_opt_new();
    launchConfig = v2->_launchConfig;
    v2->_launchConfig = v33;

    v35 = objc_opt_new();
    multiviewConfig = v2->_multiviewConfig;
    v2->_multiviewConfig = v35;

    v37 = objc_opt_new();
    libConfig = v2->_libConfig;
    v2->_libConfig = v37;

    v39 = objc_opt_new();
    gdprConfig = v2->_gdprConfig;
    v2->_gdprConfig = v39;

    v41 = objc_opt_new();
    timedMetadataConfig = v2->_timedMetadataConfig;
    v2->_timedMetadataConfig = v41;

    v43 = objc_opt_new();
    livePostPlayConfig = v2->_livePostPlayConfig;
    v2->_livePostPlayConfig = v43;

    v45 = objc_opt_new();
    tipKitConfig = v2->_tipKitConfig;
    v2->_tipKitConfig = v45;

    v47 = VUISignpostLogObject();
    if (os_signpost_enabled(v47))
    {
      *v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v47, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.ReadCache", "", v51, 2u);
    }

    _updateFromCache = [(VUIFeaturesConfiguration *)v2 _updateFromCache];
    v49 = VUISignpostLogObject();
    if (os_signpost_enabled(v49))
    {
      *v51 = 0;
      _os_signpost_emit_with_name_impl(&dword_1E323F000, v49, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.ReadCache", "", v51, 2u);
    }

    if (!_updateFromCache)
    {
      [(VUIFeaturesConfiguration *)v2 _populateRootControllerConfig:0];
      [(VUIFeaturesConfiguration *)v2 _populateLaunchConfig:0];
    }
  }

  return v2;
}

- (BOOL)_updateFromCache
{
  v14 = *MEMORY[0x1E69E9840];
  _cachePath = [(VUIFeaturesConfiguration *)self _cachePath];
  if (_cachePath)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:_cachePath];
    if (v4)
    {
      v11 = 0;
      v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v11];
      v6 = v11;
      v7 = VUIDefaultLogObject();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 || !v5)
      {
        if (v8)
        {
          *buf = 138412290;
          v13 = v6;
          _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: Unable to load cache config: %@", buf, 0xCu);
        }

        v9 = 0;
      }

      else
      {
        if (v8)
        {
          *buf = 0;
          _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: populate features config from cache", buf, 2u);
        }

        v9 = [(VUIFeaturesConfiguration *)self _populateConfigWithDictionary:v5 isLaunching:1];
      }
    }

    else
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: There is no cached data, ignore", buf, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_cachePath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  firstObject = [v2 firstObject];

  if (firstObject)
  {
    v4 = [firstObject stringByAppendingPathComponent:@"features_config"];
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: Unable to find cache path", v7, 2u);
    }

    v4 = 0;
  }

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  v28[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  [(VUIFeaturesConfiguration *)self _populateConfigWithDictionary:dictionaryCopy isLaunching:0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dictionaryCopy count])
  {
    cachedConfigDictionary = [(VUIFeaturesConfiguration *)self cachedConfigDictionary];

    if (!cachedConfigDictionary)
    {
      v6 = objc_opt_new();
      [(VUIFeaturesConfiguration *)self setCachedConfigDictionary:v6];
    }

    v7 = MEMORY[0x1E695DFD8];
    v28[0] = @"launchConfig";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v9 = [v7 setWithArray:v8];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = dictionaryCopy;
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v9 containsObject:v15])
          {
            v16 = [v10 objectForKeyedSubscript:v15];
            [(NSMutableDictionary *)self->_cachedConfigDictionary setObject:v16 forKeyedSubscript:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }
  }

  cachedConfigDictionary2 = [(VUIFeaturesConfiguration *)self cachedConfigDictionary];
  v18 = [cachedConfigDictionary2 copy];

  v19 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__VUIFeaturesConfiguration_updateWithDictionary___block_invoke;
  block[3] = &unk_1E872D768;
  v22 = v18;
  v20 = v18;
  dispatch_async(v19, block);
}

void __49__VUIFeaturesConfiguration_updateWithDictionary___block_invoke(uint64_t a1)
{
  v2 = VUISignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.WriteCache", "", buf, 2u);
  }

  v3 = +[VUIFeaturesConfiguration sharedInstance];
  [v3 _cacheFeatureConfiguration:*(a1 + 32)];

  v4 = VUISignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E323F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "FeaturesConfiguration.WriteCache", "", v5, 2u);
  }
}

- (BOOL)_populateConfigWithDictionary:(id)dictionary isLaunching:(BOOL)launching
{
  launchingCopy = launching;
  v159 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [dictionaryCopy count])
  {
    v7 = [dictionaryCopy vui_dictionaryForKey:@"postPlayUpsellConfig"];
    v8 = +[VUIPostPlayUpsellConfig sharedInstance];
    v136 = v7;
    [v8 configureUsingDictionary:v7];

    v9 = [dictionaryCopy vui_dictionaryForKey:@"postPlayConfig"];
    v10 = 0x1E695E000uLL;
    v135 = v9;
    selfCopy = self;
    v137 = launchingCopy;
    if ([v9 count])
    {
      v11 = [v9 vui_numberForKey:@"bootStrapInterval"];
      v12 = v11;
      if (v11)
      {
        playbackUpNextConfig = self->_playbackUpNextConfig;
        [v11 doubleValue];
        [(VUIPlaybackUpNextConfig *)playbackUpNextConfig setBootstrapInterval:?];
        standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults setObject:v12 forKey:@"bootStrapInterval"];
      }

      v15 = [v9 vui_numberForKey:@"documentUpdateOffsetInterval"];
      v16 = v15;
      if (v15)
      {
        v17 = self->_playbackUpNextConfig;
        [v15 doubleValue];
        [(VUIPlaybackUpNextConfig *)v17 setDocumentUpdateOffsetInterval:?];
      }

      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v19 = [standardUserDefaults2 objectForKey:@"maximumAutoPlayableItemsQAOverride"];

      if (!v19)
      {
        v20 = [v9 vui_numberForKey:@"maximumAutoPlayableItems"];
        v21 = v20;
        if (v20)
        {
          -[VUIPlaybackUpNextConfig setMaximumAutoPlayableItems:](self->_playbackUpNextConfig, "setMaximumAutoPlayableItems:", [v20 unsignedIntegerValue]);
          standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
          [standardUserDefaults3 setObject:v21 forKey:@"maximumAutoPlayableItems"];
        }
      }

      v23 = [v9 vui_numberForKey:@"duration"];
      v24 = v23;
      if (v23)
      {
        v25 = self->_playbackUpNextConfig;
        [v23 doubleValue];
        [(VUIPlaybackUpNextConfig *)v25 setDuration:?];
      }

      v26 = [v9 vui_numberForKey:@"autoPlayTimerDuration"];
      v27 = v26;
      if (v26)
      {
        v28 = selfCopy->_playbackUpNextConfig;
        [v26 doubleValue];
        [(VUIPlaybackUpNextConfig *)v28 setAutoPlayTimerDuration:?];
        standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults4 setObject:v27 forKey:@"autoPlayTimerDuration"];
      }

      standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
      v31 = [standardUserDefaults5 objectForKey:@"minAutoPlayStopTimeQAOverride"];

      if (!v31)
      {
        v32 = [v9 vui_numberForKey:@"minAutoPlayStopTime"];
        v33 = v32;
        if (v32)
        {
          v34 = selfCopy->_playbackUpNextConfig;
          [v32 doubleValue];
          [(VUIPlaybackUpNextConfig *)v34 setMinAutoPlayStopTime:?];
          standardUserDefaults6 = [MEMORY[0x1E695E000] standardUserDefaults];
          [standardUserDefaults6 setObject:v33 forKey:@"minAutoPlayStopTime"];
        }
      }

      v36 = [v9 vui_numberForKey:@"minTimeIntervalFromEndToDisplay"];
      v37 = v36;
      if (v36)
      {
        v38 = selfCopy->_playbackUpNextConfig;
        [v36 doubleValue];
        [(VUIPlaybackUpNextConfig *)v38 setMinTimeIntervalFromEndToDisplay:?];
        standardUserDefaults7 = [MEMORY[0x1E695E000] standardUserDefaults];
        [standardUserDefaults7 setObject:v37 forKey:@"minTimeIntervalFromEndToDisplay"];
      }

      v40 = [v9 vui_numberForKey:@"disablePostPlayTypeHLSQueryParam"];
      v41 = v40;
      if (v40)
      {
        -[VUIPlaybackUpNextConfig setDisablePostPlayTypeHLSQueryParam:](selfCopy->_playbackUpNextConfig, "setDisablePostPlayTypeHLSQueryParam:", [v40 BOOLValue]);
      }

      self = selfCopy;
      launchingCopy = v137;
      v10 = 0x1E695E000;
    }

    v42 = [dictionaryCopy vui_dictionaryForKey:@"playerTabsConfig"];
    if ([v42 count])
    {
      -[VUIPlayerTabsConfig setInfoTabMustHaveImageToDisplay:](self->_playerTabsConfig, "setInfoTabMustHaveImageToDisplay:", [v42 vui_BOOLForKey:@"infoTabMustHaveImageToDisplay" defaultValue:0]);
    }

    v139 = [dictionaryCopy vui_dictionaryForKey:@"nowPlayingConfig"];
    v134 = v42;
    if ([v139 count])
    {
      v43 = v139;
      -[VUINowPlayingConfig setShowsLozengeForLivePlayback:](self->_nowPlayingConfig, "setShowsLozengeForLivePlayback:", [v139 vui_BOOLForKey:@"showsLozengeForLivePlayback" defaultValue:0]);
      -[VUINowPlayingConfig setShowsUpNextInHUDForVOD:](self->_nowPlayingConfig, "setShowsUpNextInHUDForVOD:", [v139 vui_BOOLForKey:@"showsUpNextInHUDForVOD" defaultValue:1]);
      -[VUINowPlayingConfig setShowsUpNextInHUDForLive:](self->_nowPlayingConfig, "setShowsUpNextInHUDForLive:", [v139 vui_BOOLForKey:@"showsUpNextInHUDForLive" defaultValue:1]);
      -[VUINowPlayingConfig setRefetchesUpNextDataForVOD:](self->_nowPlayingConfig, "setRefetchesUpNextDataForVOD:", [v139 vui_BOOLForKey:@"refetchesUpNextDataForVOD" defaultValue:1]);
      -[VUINowPlayingConfig setRefetchesUpNextDataForLive:](self->_nowPlayingConfig, "setRefetchesUpNextDataForLive:", [v139 vui_BOOLForKey:@"refetchesUpNextDataForLive" defaultValue:1]);
      -[VUINowPlayingConfig setShowsStillWatchingAlert:](self->_nowPlayingConfig, "setShowsStillWatchingAlert:", [v139 vui_BOOLForKey:@"showsStillWatchingAlertForLivePlayback" defaultValue:1]);
      v44 = [v139 vui_numberForKey:@"alertDurationForLivePlayback"];
      v45 = v44;
      if (v44)
      {
        nowPlayingConfig = self->_nowPlayingConfig;
        [v44 doubleValue];
        [(VUINowPlayingConfig *)nowPlayingConfig setStillWatchingAlertDuration:?];
      }

      v47 = [v139 vui_numberForKey:@"alertIdleTimeout"];
      v48 = v47;
      if (v47)
      {
        v49 = self->_nowPlayingConfig;
        [v47 doubleValue];
        [(VUINowPlayingConfig *)v49 setAlertIdleTimeout:?];
      }

      v132 = [v139 vui_arrayForKey:@"excludedMediaTypesFromReporting"];
      v128 = v48;
      v130 = v45;
      if ([v132 count])
      {
        v126 = dictionaryCopy;
        v50 = objc_opt_new();
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        obj = v132;
        v51 = [obj countByEnumeratingWithState:&v154 objects:v158 count:16];
        if (!v51)
        {
          goto LABEL_48;
        }

        v52 = v51;
        v53 = *v155;
        v144 = *MEMORY[0x1E69D5ED0];
        v146 = *MEMORY[0x1E69D5EB8];
        v54 = *MEMORY[0x1E69D5EC8];
        v55 = *MEMORY[0x1E69D5EC0];
        v56 = *MEMORY[0x1E69D5ED8];
        while (1)
        {
          v57 = 0;
          do
          {
            if (*v155 != v53)
            {
              objc_enumerationMutation(obj);
            }

            v58 = *(*(&v154 + 1) + 8 * v57);
            v59 = [v58 isEqualToString:{@"Trailer", v126, v128, v130}];
            v60 = v55;
            v61 = v56;
            if (v59 & 1) != 0 || (v62 = [v58 isEqualToString:@"Movie"], v60 = v146, v61 = v54, (v62))
            {
              [v50 addObject:v60];
LABEL_41:
              [v50 addObject:v61];
              goto LABEL_42;
            }

            v61 = v144;
            if ([v58 isEqualToString:@"Show"])
            {
              goto LABEL_41;
            }

            v61 = v144;
            if ([v58 isEqualToString:@"Episode"])
            {
              goto LABEL_41;
            }

LABEL_42:
            ++v57;
          }

          while (v52 != v57);
          v63 = [obj countByEnumeratingWithState:&v154 objects:v158 count:16];
          v52 = v63;
          if (!v63)
          {
LABEL_48:

            self = selfCopy;
            [(VUINowPlayingConfig *)selfCopy->_nowPlayingConfig setMediaTypesExcludedFromReporting:obj];

            dictionaryCopy = v126;
            v43 = v139;
            break;
          }
        }
      }

      -[VUINowPlayingConfig setAllowQOSReportingForiTunesLibraryPlayback:](self->_nowPlayingConfig, "setAllowQOSReportingForiTunesLibraryPlayback:", [v43 vui_BOOLForKey:@"allowQOSReportingForiTunesLibraryPlayback" defaultValue:{1, v126}]);
      -[VUINowPlayingConfig setConvertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero:](self->_nowPlayingConfig, "setConvertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero:", [v43 vui_BOOLForKey:@"convertMainContentRelativeStartTimeOfZeroToAbsoluteStartTimeOfZero" defaultValue:1]);
      v64 = [v43 vui_arrayForKey:@"mediaCharacteristicsToLocalize"];
      if ([v64 count])
      {
        [(VUINowPlayingConfig *)self->_nowPlayingConfig setMediaCharacteristicsToLocalize:v64];
      }

      v65 = [v43 vui_dictionaryForKey:@"mediaLocalizationKeyMapping"];
      if ([v65 count])
      {
        [(VUINowPlayingConfig *)self->_nowPlayingConfig setMediaLocalizationKeyMapping:v65];
      }

      obja = v64;
      v66 = [v43 vui_arrayForKey:@"audioIDPrefixes"];
      if ([v66 count])
      {
        [(VUINowPlayingConfig *)self->_nowPlayingConfig setAudioIDPrefixes:v66];
      }

      v147 = v66;
      v67 = [v43 vui_numberForKey:@"liveSportsStartFromBeginningOffset"];
      v68 = v67;
      if (v67)
      {
        v69 = self->_nowPlayingConfig;
        [v67 doubleValue];
        [(VUINowPlayingConfig *)v69 setLiveSportsStartFromBeginningOffset:?];
      }

      -[VUINowPlayingConfig setShouldSendLiveStreamStartAndEndTimesToAVKit:](self->_nowPlayingConfig, "setShouldSendLiveStreamStartAndEndTimesToAVKit:", [v43 vui_BOOLForKey:@"shouldSendLiveStreamStartAndEndTimesToAVKit" defaultValue:1]);
      -[VUINowPlayingConfig setShouldAdjustLiveStreamStartTimeToMatchSeekableRangeStartTime:](self->_nowPlayingConfig, "setShouldAdjustLiveStreamStartTimeToMatchSeekableRangeStartTime:", [v43 vui_BOOLForKey:@"shouldAdjustLiveStreamStartTimeToMatchSeekableRangeStartTime" defaultValue:1]);
      -[VUINowPlayingConfig setShouldAdjustLiveStreamEndTimeToMatchSeekableRangeEndTime:](self->_nowPlayingConfig, "setShouldAdjustLiveStreamEndTimeToMatchSeekableRangeEndTime:", [v43 vui_BOOLForKey:@"shouldAdjustLiveStreamEndTimeToMatchSeekableRangeEndTime" defaultValue:1]);
      v70 = [v43 vui_numberForKey:@"liveStreamStartTimeAdjustmentSlopFactor"];
      v71 = v70;
      if (v70)
      {
        v72 = self->_nowPlayingConfig;
        [v70 doubleValue];
        [(VUINowPlayingConfig *)v72 setLiveStreamStartTimeAdjustmentSlopFactor:?];
      }

      v73 = [v43 vui_numberForKey:@"liveStreamStartAndEndTimeBadMetadataCutoff"];
      v74 = v73;
      if (v73)
      {
        v75 = self->_nowPlayingConfig;
        [v73 doubleValue];
        [(VUINowPlayingConfig *)v75 setLiveStreamStartAndEndTimeBadMetadataCutoff:?];
      }

      v149 = v65;
      v76 = [v43 vui_numberForKey:@"liveStreamOverrunExtension"];
      v77 = v76;
      if (v76)
      {
        v78 = self->_nowPlayingConfig;
        [v76 doubleValue];
        [(VUINowPlayingConfig *)v78 setLiveStreamOverrunExtension:?];
      }

      v79 = [v43 vui_numberForKey:@"prerollFadeInEndOffset"];
      v80 = v79;
      if (v79)
      {
        v81 = self->_nowPlayingConfig;
        [v79 doubleValue];
        [(VUINowPlayingConfig *)v81 setPrerollFadeInEndOffset:?];
      }

      -[VUINowPlayingConfig setShowsLongLoadingAlert:](self->_nowPlayingConfig, "setShowsLongLoadingAlert:", [v43 vui_BOOLForKey:@"showsLongLoadingAlert" defaultValue:1]);
      v82 = [v43 vui_numberForKey:@"longLoadingTimeout"];
      selfCopy2 = self;
      v84 = v82;
      if (v82)
      {
        v85 = selfCopy2->_nowPlayingConfig;
        [v82 doubleValue];
        [(VUINowPlayingConfig *)v85 setLongLoadingTimeout:?];
      }

      v86 = [v43 vui_numberForKey:@"smartHapticSyncOffset"];
      v87 = v86;
      if (v86)
      {
        v88 = selfCopy->_nowPlayingConfig;
        [v86 doubleValue];
        [(VUINowPlayingConfig *)v88 setSmartHapticSyncOffset:?];
      }

      self = selfCopy;
      launchingCopy = v137;
      v10 = 0x1E695E000uLL;
    }

    v89 = [dictionaryCopy vui_dictionaryForKey:@"autoPlayConfig"];
    if ([v89 count])
    {
      v90 = [v89 vui_numberForKey:@"autoPlayDelayInterval"];
      v91 = v90;
      if (v90)
      {
        autoPlayConfig = self->_autoPlayConfig;
        [v90 doubleValue];
        [(VUIAutoPlayConfig *)autoPlayConfig setAutoPlayDelayInterval:?];
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      v94 = [currentDevice userInterfaceIdiom] == 2;

      [(VUIAutoPlayConfig *)self->_autoPlayConfig setAutoPlayVideoSound:[VUIFeaturesConfiguration BOOLValueForKey:@"autoPlayVideoSound" fromDictionary:v89 defaultValue:v94]];
    }

    v95 = [dictionaryCopy vui_dictionaryForKey:@"liveLinkConfig"];
    if ([v95 count])
    {
      -[VUILiveLinkConfig setIsEnabled:](self->_liveLinkConfig, "setIsEnabled:", [v95 vui_BOOLForKey:@"isEnabled" defaultValue:0]);
    }

    v148 = v95;
    v96 = [dictionaryCopy vui_dictionaryForKey:@"downloadConfig"];
    if ([v96 count])
    {
      v97 = [v96 vui_arrayForKey:@"blacklistedEarlyRenewalBrands"];
      if (v97)
      {
        [(VUIDownloadConfig *)self->_downloadConfig setBlacklistedEarlyRenewalBrands:v97];
      }

      standardUserDefaults8 = [*v10 standardUserDefaults];
      v99 = [standardUserDefaults8 objectForKey:@"allowEnhancedDownloads"];

      if (!v99)
      {
        v100 = [v96 vui_numberForKey:@"allowEnhancedDownloads"];
        v101 = v100;
        if (v100)
        {
          -[VUIDownloadConfig setAllowEnhancedDownloads:](self->_downloadConfig, "setAllowEnhancedDownloads:", [v100 BOOLValue]);
        }
      }

      v102 = [v96 vui_numberForKey:@"updateCoverArtForExistingDownloads"];
      v103 = v102;
      if (v102)
      {
        -[VUIDownloadConfig setUpdateCoverArtForExistingDownloads:](self->_downloadConfig, "setUpdateCoverArtForExistingDownloads:", [v102 BOOLValue]);
      }
    }

    v104 = [dictionaryCopy vui_dictionaryForKey:@"syndicationConfig"];
    if ([v104 count])
    {
      v105 = [v104 vui_numberForKey:@"highlightsFetchLimit"];
      v106 = v105;
      if (v105)
      {
        -[VUISyndicationConfig setHighlightsFetchLimit:](self->_syndicationConfig, "setHighlightsFetchLimit:", [v105 unsignedIntegerValue]);
      }
    }

    [(VUIFeaturesConfiguration *)self parseUpNextConfig:dictionaryCopy];
    v107 = [dictionaryCopy vui_dictionaryForKey:@"ageVerificationConfig"];
    if ([v107 count])
    {
      v108 = +[VUIAgeVerification sharedInstance];
      [v108 configureAgeVerification:v107];
    }

    v143 = v104;
    objb = [dictionaryCopy vui_dictionaryForKey:@"dropOnTabConfig"];
    if ([objb count])
    {
      v109 = [objb vui_numberForKey:@"daysWithoutOpeningThreshold"];
      if (v109)
      {
        [(VUIDropOnTabConfig *)self->_dropOnTabConfig setDaysWithoutOpeningThreshold:v109];
      }

      v110 = [objb vui_numberForKey:@"daysWithoutPlaybackThreshold"];
      if (v110)
      {
        [(VUIDropOnTabConfig *)self->_dropOnTabConfig setDaysWithoutPlaybackThreshold:v110];
      }

      v111 = [VUIFeaturesConfiguration defaultsStringValueForKey:@"dropOnTabIdentifier"];
      v112 = [objb objectForKey:@"dropOnTabIdentifier"];
      v113 = v112;
      v114 = v111;
      if (v111 || (v114 = v112) != 0)
      {
        [(VUIDropOnTabConfig *)self->_dropOnTabConfig setDropOnTabIdentifier:v114];
      }
    }

    v142 = v107;
    v150 = v89;
    v141 = [dictionaryCopy vui_dictionaryForKey:@"mediaShowcaseConfig"];
    [(VUIFeaturesConfiguration *)self _populateMediaShowcaseConfig:?];
    v138 = [dictionaryCopy vui_dictionaryForKey:@"canonicalConfig"];
    [(VUIFeaturesConfiguration *)self _populateCanonicalConfig:?];
    v133 = [dictionaryCopy vui_dictionaryForKey:@"accountConfig"];
    [(VUIFeaturesConfiguration *)self _populateAccountConfig:?];
    v131 = [dictionaryCopy vui_dictionaryForKey:@"accountMessageConfig"];
    [(VUIFeaturesConfiguration *)self _populateAccountMessageConfig:?];
    v129 = [dictionaryCopy vui_dictionaryForKey:@"rootControllerConfig"];
    [(VUIFeaturesConfiguration *)self _populateRootControllerConfig:?];
    v127 = [dictionaryCopy vui_dictionaryForKey:@"multiviewConfig"];
    [(VUIFeaturesConfiguration *)self _populateMultiviewConfig:?];
    v115 = [dictionaryCopy vui_dictionaryForKey:@"arQLConfig"];
    if ([v115 count])
    {
      v116 = +[VUIARQLPreviewManager sharedInstance];
      [v116 configureUsingDictionary:dictionaryCopy];
    }

    v145 = v96;
    v117 = [dictionaryCopy vui_dictionaryForKey:@"tabItemsUpdateConfig"];
    [(VUIFeaturesConfiguration *)self _populateTabItemsUpdateConfig:v117];
    v118 = [dictionaryCopy vui_dictionaryForKey:@"launchConfig"];
    if (launchingCopy)
    {
      [(VUIFeaturesConfiguration *)self _populateLaunchConfig:v118];
    }

    v119 = [dictionaryCopy vui_dictionaryForKey:@"libConfig"];
    [(VUIFeaturesConfiguration *)self _populateLibConfig:v119];
    v120 = [dictionaryCopy vui_dictionaryForKey:@"gdprConfig"];
    [(VUIFeaturesConfiguration *)self _populateGDPRConfig:v120];
    v121 = [dictionaryCopy vui_dictionaryForKey:@"timedMetadataConfig"];
    [(VUIFeaturesConfiguration *)self _populateTimedMetadataConfig:v121];
    v122 = [dictionaryCopy vui_dictionaryForKey:@"livePostPlayConfig"];
    [(VUIFeaturesConfiguration *)self _populateLivePostPlayConfig:v122];
    v123 = [dictionaryCopy vui_dictionaryForKey:@"tipKitConfig"];
    [(VUIFeaturesConfiguration *)self _populateTipKitConfig:v123];

    v124 = 1;
  }

  else
  {
    v124 = 0;
  }

  return v124;
}

- (void)_cacheFeatureConfiguration:(id)configuration
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v4 = [MEMORY[0x1E696ACB0] dataWithJSONObject:configuration options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: cache feature configs error: %@", buf, 0xCu);
    }
  }

  else
  {
    _cachePath = [(VUIFeaturesConfiguration *)self _cachePath];
    v7 = _cachePath;
    if (_cachePath)
    {
      v9 = [v4 writeToFile:_cachePath atomically:1];
      v10 = VUIDefaultLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v13) = v9;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: cache features config, result: %d", buf, 8u);
      }
    }
  }
}

- (void)parseUpNextConfig:(id)config
{
  v12 = [config vui_dictionaryForKey:@"upNextConfig"];
  v4 = [v12 count];
  v5 = v12;
  if (v4)
  {
    v6 = [v12 vui_numberForKey:@"delayForUpnextCallAfterMarkAsWatched"];
    v7 = v6;
    if (v6)
    {
      -[VUIUpNextConfig setUpNextCallDelayAfterMarkAsWatched:](self->_upNextConfig, "setUpNextCallDelayAfterMarkAsWatched:", [v6 unsignedIntegerValue]);
    }

    v8 = [v12 vui_numberForKey:@"delayForRefreshUpnextCallAfterRemoveFromUpNext"];
    v9 = v8;
    if (v8)
    {
      -[VUIUpNextConfig setUpNextRefreshCallDelayAfterRemoveFromUpNext:](self->_upNextConfig, "setUpNextRefreshCallDelayAfterRemoveFromUpNext:", [v8 unsignedIntegerValue]);
    }

    v10 = [v12 vui_numberForKey:@"shouldUpdateOutboundAfterRemoveFromUpNext"];
    v11 = v10;
    if (v10)
    {
      -[VUIUpNextConfig setShouldUpdateOutboundAfterRemoveFromUpNext:](self->_upNextConfig, "setShouldUpdateOutboundAfterRemoveFromUpNext:", [v10 BOOLValue]);
    }

    v5 = v12;
  }
}

+ (id)defaultsNumberValueForKey:(id)key
{
  keyCopy = key;
  has_internal_content = os_variant_has_internal_content();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = standardUserDefaults;
  if (!has_internal_content)
  {
    goto LABEL_9;
  }

  v7 = [standardUserDefaults objectForKey:keyCopy];
  if (!v7)
  {
LABEL_8:

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_opt_new();
      v9 = [v8 numberFromString:v7];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    goto LABEL_8;
  }

LABEL_6:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v7;
    v10 = v7;
    goto LABEL_11;
  }

LABEL_10:
  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)defaultsStringValueForKey:(id)key
{
  keyCopy = key;
  has_internal_content = os_variant_has_internal_content();
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = standardUserDefaults;
  if (!has_internal_content)
  {
    goto LABEL_7;
  }

  v7 = [standardUserDefaults objectForKey:keyCopy];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v7;
    v8 = v7;
    goto LABEL_9;
  }

LABEL_8:
  v8 = 0;
LABEL_9:

  return v8;
}

+ (id)stringValueForKey:(id)key fromDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  if ([keyCopy length])
  {
    v7 = [VUIFeaturesConfiguration defaultsStringValueForKey:keyCopy];
    if (!v7)
    {
      v7 = [dictionaryCopy vui_stringForKey:keyCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)numberValueForKey:(id)key fromDictionary:(id)dictionary
{
  keyCopy = key;
  dictionaryCopy = dictionary;
  if ([keyCopy length])
  {
    v7 = [VUIFeaturesConfiguration defaultsNumberValueForKey:keyCopy];
    if (!v7)
    {
      v7 = [dictionaryCopy vui_numberForKey:keyCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (BOOL)BOOLValueForKey:(id)key fromDictionary:(id)dictionary defaultValue:(BOOL)value
{
  valueCopy = value;
  keyCopy = key;
  dictionaryCopy = dictionary;
  if ([keyCopy length])
  {
    v9 = [VUIFeaturesConfiguration defaultsNumberValueForKey:keyCopy];
    if (v9)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      LOBYTE(valueCopy) = [standardUserDefaults BOOLForKey:keyCopy];
    }

    else
    {
      LOBYTE(valueCopy) = [dictionaryCopy vui_BOOLForKey:keyCopy defaultValue:valueCopy];
    }
  }

  return valueCopy;
}

- (void)_populateMediaShowcaseConfig:(id)config
{
  configCopy = config;
  if ([configCopy count])
  {
    v4 = [VUIFeaturesConfiguration numberValueForKey:@"playbackDelayInterval" fromDictionary:configCopy];
    v5 = v4;
    if (v4)
    {
      mediaShowcaseConfig = self->_mediaShowcaseConfig;
      [v4 doubleValue];
      [(VUIMediaShowcasingConfig *)mediaShowcaseConfig setPlaybackDelayInterval:?];
    }

    v7 = [VUIFeaturesConfiguration numberValueForKey:@"animationTransitionDuration" fromDictionary:configCopy];
    v8 = v7;
    if (v7)
    {
      v9 = self->_mediaShowcaseConfig;
      [v7 doubleValue];
      [(VUIMediaShowcasingConfig *)v9 setAnimationTransitionDuration:?];
    }

    v10 = [VUIFeaturesConfiguration numberValueForKey:@"backgroundVolume" fromDictionary:configCopy];
    v11 = v10;
    if (v10)
    {
      v12 = self->_mediaShowcaseConfig;
      [v10 floatValue];
      [(VUIMediaShowcasingConfig *)v12 setBackgroundVolume:?];
    }

    v13 = [VUIFeaturesConfiguration numberValueForKey:@"foregroundVolume" fromDictionary:configCopy];
    v14 = v13;
    if (v13)
    {
      v15 = self->_mediaShowcaseConfig;
      [v13 floatValue];
      [(VUIMediaShowcasingConfig *)v15 setForegroundVolume:?];
    }

    [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setBackgroundMediaTransferEnabled:[VUIFeaturesConfiguration BOOLValueForKey:@"backgroundMediaTransferEnabled" fromDictionary:configCopy defaultValue:1]];
    v16 = [VUIFeaturesConfiguration numberValueForKey:@"backgroundMediaTransferAnimationDuration" fromDictionary:configCopy];
    v17 = v16;
    if (v16)
    {
      v18 = self->_mediaShowcaseConfig;
      [v16 doubleValue];
      [(VUIMediaShowcasingConfig *)v18 setBackgroundMediaTransferAnimationDuration:?];
    }

    v19 = [VUIFeaturesConfiguration numberValueForKey:@"fullscreenPlaybackTransitionDuration" fromDictionary:configCopy];
    v20 = v19;
    if (v19)
    {
      v21 = self->_mediaShowcaseConfig;
      [v19 floatValue];
      [(VUIMediaShowcasingConfig *)v21 setBackgroundMediaFullscreenTransitionDuration:v22];
    }

    v23 = [VUIFeaturesConfiguration numberValueForKey:@"volumeTransitionAnimationDuration" fromDictionary:configCopy];
    v24 = v23;
    if (v23)
    {
      v25 = self->_mediaShowcaseConfig;
      [v23 floatValue];
      [(VUIMediaShowcasingConfig *)v25 setVolumeTransitionAnimationDuration:v26];
    }

    v121 = v5;
    v27 = [VUIFeaturesConfiguration numberValueForKey:@"numberOfVolumeIncrementsKey" fromDictionary:configCopy];
    v122 = v27;
    if (v27)
    {
      v28 = self->_mediaShowcaseConfig;
      [v122 floatValue];
      v29 = v28;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v29 setBackgroundVolume:?];
    }

    [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setRubberBandingEnabled:[VUIFeaturesConfiguration BOOLValueForKey:@"rubberBandingEnabled" fromDictionary:configCopy defaultValue:1]];
    v30 = [VUIFeaturesConfiguration numberValueForKey:@"swipingEndAnimationDuration" fromDictionary:configCopy];
    v31 = v30;
    if (v30)
    {
      v32 = self->_mediaShowcaseConfig;
      [v30 floatValue];
      v34 = v32;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v34 setSwipingEndAnimationDuration:v33];
    }

    v120 = v8;
    v114 = v31;
    v35 = [VUIFeaturesConfiguration numberValueForKey:@"autoSwipeAnimationDuration" fromDictionary:configCopy];
    v36 = v35;
    if (v35)
    {
      v37 = self->_mediaShowcaseConfig;
      [v35 floatValue];
      v39 = v37;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v39 setAutoSwipeAnimationDuration:v38];
    }

    v118 = v14;
    [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setCarouselBehaviorEnabled:[VUIFeaturesConfiguration BOOLValueForKey:@"carouselBehaviorEnabled" fromDictionary:configCopy defaultValue:1]];
    v40 = [VUIFeaturesConfiguration numberValueForKey:@"titleViewTransitionDistance" fromDictionary:configCopy];
    v41 = v40;
    if (v40)
    {
      v42 = self->_mediaShowcaseConfig;
      [v40 floatValue];
      v43 = v42;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v43 setTitleViewTransitionDistance:?];
    }

    v115 = v24;
    v44 = v11;
    v112 = v41;
    v45 = [VUIFeaturesConfiguration numberValueForKey:@"navigationBarTransitionDistance" fromDictionary:configCopy];
    v46 = v45;
    if (v45)
    {
      v47 = self->_mediaShowcaseConfig;
      [v45 floatValue];
      v48 = v47;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v48 setNavigationBarTransitionDistance:?];
    }

    v49 = v20;
    [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setAutoAdvanceToNextPageEnabled:[VUIFeaturesConfiguration BOOLValueForKey:@"autoAdvanceToNextPageEnabled" fromDictionary:configCopy defaultValue:1]];
    v50 = [VUIFeaturesConfiguration numberValueForKey:@"advanceToNextPageDelayDuration" fromDictionary:configCopy];
    v51 = v50;
    if (v50)
    {
      v52 = self->_mediaShowcaseConfig;
      [v50 floatValue];
      v54 = v52;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v54 setAdvanceToNextPageDelayDuration:v53];
    }

    v55 = v17;
    v110 = v51;
    v56 = [VUIFeaturesConfiguration numberValueForKey:@"advanceToNextPageDelayDurationImageOnly" fromDictionary:configCopy];
    v57 = v56;
    if (v56)
    {
      v58 = self->_mediaShowcaseConfig;
      [v56 floatValue];
      v60 = v58;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v60 setAdvanceToNextPageDelayDurationImageOnly:v59];
    }

    [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setParallaxEnabled:[VUIFeaturesConfiguration BOOLValueForKey:@"parallaxEnabled" fromDictionary:configCopy defaultValue:1]];
    v61 = [VUIFeaturesConfiguration numberValueForKey:@"parallaxRatio" fromDictionary:configCopy];
    v62 = v61;
    if (v61)
    {
      v63 = self->_mediaShowcaseConfig;
      [v61 floatValue];
      v64 = v63;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v64 setParallaxRatio:?];
    }

    v108 = v62;
    v65 = [VUIFeaturesConfiguration numberValueForKey:@"mirrorSlideParallaxRatio" fromDictionary:configCopy];
    v66 = v65;
    if (v65)
    {
      v67 = self->_mediaShowcaseConfig;
      [v65 floatValue];
      v68 = v67;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v68 setMirrorSlideParallaxRatio:?];
    }

    v107 = v66;
    v69 = [VUIFeaturesConfiguration numberValueForKey:@"visibleVideoHeightPercentage" fromDictionary:configCopy];
    v70 = v55;
    v71 = v69;
    if (v69)
    {
      v72 = self->_mediaShowcaseConfig;
      [v69 floatValue];
      v73 = v72;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v73 setVisibleVideoHeightPercentage:?];
    }

    v113 = v36;
    v74 = [VUIFeaturesConfiguration numberValueForKey:@"metadataFadeOutSpeed" fromDictionary:configCopy];
    v75 = v74;
    if (v74)
    {
      v76 = self->_mediaShowcaseConfig;
      [v74 floatValue];
      v77 = v76;
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v77 setMetadataFadeOutSpeed:?];
    }

    v105 = v75;
    v111 = v46;
    v78 = [VUIFeaturesConfiguration numberValueForKey:@"metadataFadeInSpeed" fromDictionary:configCopy];
    v79 = v78;
    if (v78)
    {
      v80 = self->_mediaShowcaseConfig;
      [v78 floatValue];
      [(VUIMediaShowcasingConfig *)v80 setMetadataFadeInSpeed:?];
    }

    v104 = v79;
    v109 = v57;
    v119 = v44;
    v81 = [VUIFeaturesConfiguration numberValueForKey:@"swipeCompletionSpeedFactor" fromDictionary:configCopy];
    v82 = v81;
    if (v81)
    {
      v83 = self->_mediaShowcaseConfig;
      [v81 floatValue];
      [(VUIMediaShowcasingConfig *)v83 setSwipeCompletionSpeedFactor:?];
    }

    v84 = [VUIFeaturesConfiguration numberValueForKey:@"itemHoverDelayDuration" fromDictionary:configCopy];
    v85 = v84;
    if (v84)
    {
      v86 = self->_mediaShowcaseConfig;
      [v84 doubleValue];
      [(VUIMediaShowcasingConfig *)v86 setItemHoverDelayDuration:?];
    }

    v117 = v70;
    v87 = [VUIFeaturesConfiguration numberValueForKey:@"gradientUsesImageColor" fromDictionary:configCopy];
    v88 = v87;
    if (v87)
    {
      -[VUIMediaShowcasingConfig setGradientUsesImageColor:](self->_mediaShowcaseConfig, "setGradientUsesImageColor:", [v87 BOOLValue]);
    }

    v106 = v71;
    v116 = v49;
    v89 = [VUIFeaturesConfiguration numberValueForKey:@"hideMuteButtonDelayDuration" fromDictionary:configCopy];
    v90 = v89;
    if (v89)
    {
      v91 = self->_mediaShowcaseConfig;
      [v89 doubleValue];
      [(VUIMediaShowcasingConfig *)v91 setHideMuteButtonDelayDuration:?];
    }

    v92 = [VUIFeaturesConfiguration numberValueForKey:@"hidePageIndicatorsDelayDuration" fromDictionary:configCopy];
    v93 = v92;
    if (v92)
    {
      v94 = self->_mediaShowcaseConfig;
      [v92 doubleValue];
      [(VUIMediaShowcasingConfig *)v94 setHidePageIndicatorsDelayDuration:?];
    }

    v95 = [VUIFeaturesConfiguration numberValueForKey:@"preloadImageBatchSize" fromDictionary:configCopy];
    v96 = v95;
    if (v95)
    {
      -[VUIMediaShowcasingConfig setPreloadImageBatchSize:](self->_mediaShowcaseConfig, "setPreloadImageBatchSize:", [v95 integerValue]);
    }

    if ([VUIFeaturesConfiguration BOOLValueForKey:@"mediaShowcasingAllowsFullscreenTransition" fromDictionary:configCopy defaultValue:0])
    {
      [(VUIMediaShowcasingConfig *)self->_mediaShowcaseConfig setAllowsFullscreenMediaTransition:1];
    }

    v97 = [VUIFeaturesConfiguration numberValueForKey:@"sidebarOpenDuringAnimationThreshold" fromDictionary:configCopy];
    v98 = v97;
    if (v97)
    {
      v99 = self->_mediaShowcaseConfig;
      [v97 floatValue];
      v27 = v122;
      [(VUIMediaShowcasingConfig *)v99 setSidebarOpenDuringAnimationThreshold:?];
    }

    v100 = [VUIFeaturesConfiguration numberValueForKey:@"mediaShowcaseHeightThresholdForBottomPadding" fromDictionary:configCopy];
    v101 = v100;
    if (v100)
    {
      v102 = self->_mediaShowcaseConfig;
      [v100 floatValue];
      [(VUIMediaShowcasingConfig *)v102 setHeightThresholdForBottomPadding:v103];
    }
  }

  MEMORY[0x1EEE66C30]();
}

- (void)_populateCanonicalConfig:(id)config
{
  configCopy = config;
  if ([configCopy count])
  {
    v4 = [VUIFeaturesConfiguration numberValueForKey:@"videoViewOffscreenThresholdToStopPlayback" fromDictionary:configCopy];
    v5 = v4;
    if (v4)
    {
      canonicalConfig = self->_canonicalConfig;
      [v4 floatValue];
      [(VUICanonicalConfig *)canonicalConfig setVideoViewOffscreenThresholdToStopPlayback:?];
    }

    v7 = [VUIFeaturesConfiguration numberValueForKey:@"playbackDelayInterval" fromDictionary:configCopy];
    v8 = v7;
    if (v7)
    {
      v9 = self->_canonicalConfig;
      [v7 doubleValue];
      [(VUICanonicalConfig *)v9 setPlaybackDelayInterval:?];
    }

    v10 = [VUIFeaturesConfiguration stringValueForKey:@"storeTabIdentifer" fromDictionary:configCopy];
    if (v10)
    {
      [(VUICanonicalConfig *)self->_canonicalConfig setStoreTabIdentifier:v10];
    }

    v11 = [VUIFeaturesConfiguration stringValueForKey:@"tvShowsTabIdentifier" fromDictionary:configCopy];
    if (v11)
    {
      [(VUICanonicalConfig *)self->_canonicalConfig setTvShowsTabIdentifier:v11];
    }
  }

  MEMORY[0x1EEE66C30]();
}

- (void)_populateAccountConfig:(id)config
{
  configCopy = config;
  v6 = [VUIFeaturesConfiguration numberValueForKey:@"showAccountSettingButtonOnLibraryTab" fromDictionary:configCopy];
  v5 = [VUIFeaturesConfiguration numberValueForKey:@"showAccountSettingOnSidebar" fromDictionary:configCopy];

  if (v6)
  {
    -[VUIAccountConfig setShowAccountSettingButtonOnLibraryTab:](self->_accountConfig, "setShowAccountSettingButtonOnLibraryTab:", [v6 BOOLValue]);
  }

  if (v5)
  {
    -[VUIAccountConfig setShowAccountSettingOnSidebar:](self->_accountConfig, "setShowAccountSettingOnSidebar:", [v5 BOOLValue]);
  }
}

- (void)_populateAccountMessageConfig:(id)config
{
  configCopy = config;
  v10 = [configCopy objectForKey:@"visibilityBehaviours"];
  v5 = [VUIFeaturesConfiguration defaultsStringValueForKey:@"fallbackVisibilityType"];
  v6 = [configCopy objectForKey:@"fallbackVisibilityType"];
  v7 = [VUIFeaturesConfiguration numberValueForKey:@"alwaysForceOpenSidebarAnimated" fromDictionary:configCopy];
  v8 = [VUIFeaturesConfiguration numberValueForKey:@"alwaysForceOpenSidebarNonAnimated" fromDictionary:configCopy];

  if (v10)
  {
    [(VUIAccountMessageConfig *)self->_accountMessageConfig setVisibilityBehaviours:v10];
  }

  v9 = v5;
  if (v5 || (v9 = v6) != 0)
  {
    [(VUIAccountMessageConfig *)self->_accountMessageConfig setFallbackVisibilityType:VUIAccountMessageVisibilityTypeFromString(v9)];
  }

  if (v7)
  {
    -[VUIAccountMessageConfig setAlwaysForceOpenSidebarAnimated:](self->_accountMessageConfig, "setAlwaysForceOpenSidebarAnimated:", [v7 BOOLValue]);
  }

  if (v8)
  {
    -[VUIAccountMessageConfig setAlwaysForceOpenSidebarNonAnimated:](self->_accountMessageConfig, "setAlwaysForceOpenSidebarNonAnimated:", [v8 BOOLValue]);
  }
}

- (void)_populateRootControllerConfig:(id)config
{
  configCopy = config;
  v4 = [VUIFeaturesConfiguration numberValueForKey:@"normalControllerLimit" fromDictionary:?];
  if (v4)
  {
    [(VUIRootControllerConfig *)self->_rootControllerConfig setNormalControllerLimit:v4];
  }

  v5 = [VUIFeaturesConfiguration numberValueForKey:@"warningControllerLimit" fromDictionary:configCopy];
  if (v5)
  {
    [(VUIRootControllerConfig *)self->_rootControllerConfig setWarningControllerLimit:v5];
  }

  v6 = [VUIFeaturesConfiguration numberValueForKey:@"criticalControllerLimit" fromDictionary:configCopy];
  if (v6)
  {
    [(VUIRootControllerConfig *)self->_rootControllerConfig setCriticalControllerLimit:v6];
  }

  v34 = v4;
  v7 = [configCopy vui_arrayForKey:@"doNotPurgeList"];
  if (v7)
  {
    [(VUIRootControllerConfig *)self->_rootControllerConfig setDoNotPurgeList:v7];
  }

  v31 = v7;
  v8 = [VUIFeaturesConfiguration numberValueForKey:@"sidebarImagePrefetchBatchLimit" fromDictionary:configCopy];
  v9 = v8;
  if (v8)
  {
    -[VUIRootControllerConfig setSidebarImagePrefetchBatchLimit:](self->_rootControllerConfig, "setSidebarImagePrefetchBatchLimit:", [v8 integerValue]);
  }

  v10 = [VUIFeaturesConfiguration numberValueForKey:@"programmaticOpenSidebarTimeout" fromDictionary:configCopy];
  v11 = v10;
  if (v10)
  {
    rootControllerConfig = self->_rootControllerConfig;
    [v10 doubleValue];
    [(VUIRootControllerConfig *)rootControllerConfig setProgrammaticOpenSidebarTimeout:?];
  }

  v13 = [VUIFeaturesConfiguration numberValueForKey:@"userDrivenSidebarTimeout" fromDictionary:configCopy];
  v14 = v13;
  if (v13)
  {
    v15 = self->_rootControllerConfig;
    [v13 doubleValue];
    [(VUIRootControllerConfig *)v15 setUserDrivenSidebarTimeout:?];
  }

  v16 = [VUIFeaturesConfiguration numberValueForKey:@"stackActiveDuration" fromDictionary:configCopy];
  v17 = v16;
  if (v16)
  {
    v18 = self->_rootControllerConfig;
    [v16 doubleValue];
    [(VUIRootControllerConfig *)v18 setStackActiveDuration:?];
  }

  v33 = v5;
  v19 = [VUIFeaturesConfiguration numberValueForKey:@"numTeachableMomentsPerUser" fromDictionary:configCopy];
  v20 = v19;
  if (v19)
  {
    -[VUIRootControllerConfig setNumTeachableMomentsPerUser:](self->_rootControllerConfig, "setNumTeachableMomentsPerUser:", [v19 integerValue]);
  }

  v32 = v6;
  v21 = [VUIFeaturesConfiguration numberValueForKey:@"teachableMomentSidebarTimeout" fromDictionary:configCopy];
  v22 = v21;
  if (v21)
  {
    v23 = self->_rootControllerConfig;
    [v21 doubleValue];
    [(VUIRootControllerConfig *)v23 setTeachableMomentSidebarTimeout:?];
  }

  v24 = [VUIFeaturesConfiguration numberValueForKey:@"teachableMomentPillUITimeout" fromDictionary:configCopy];
  v25 = v24;
  if (v24)
  {
    v26 = self->_rootControllerConfig;
    [v24 doubleValue];
    [(VUIRootControllerConfig *)v26 setTeachableMomentPillUITimeout:?];
  }

  v27 = [VUIFeaturesConfiguration numberValueForKey:@"teachableBackgroundReshowTime" fromDictionary:configCopy];
  v28 = v27;
  if (v27)
  {
    v29 = self->_rootControllerConfig;
    [v27 doubleValue];
    [(VUIRootControllerConfig *)v29 setTeachableBackgroundReshowTime:?];
  }

  v30 = [configCopy vui_numberForKey:@"teachableMomentImpressionsDictionaryHash"];
  if (v30)
  {
    [(VUIRootControllerConfig *)self->_rootControllerConfig setTeachableMomentImpressionsDictionaryHash:v30];
  }
}

- (void)_populateMultiviewConfig:(id)config
{
  v15 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = [configCopy vui_numberForKey:@"isEnabled"];
  v6 = [configCopy vui_numberForKey:@"useExperienceController"];
  v7 = [configCopy vui_numberForKey:@"maximumPlayerCount"];

  v8 = VUIDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = 138412802;
    v10 = v5;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "FeaturesConfiguration:: _populateMultiviewConfig isEnabled = %@, maximumPlayerCount = %@, useExperienceController: %@", &v9, 0x20u);
  }

  if (v5)
  {
    -[VUIMultiviewConfig setIsEnabled:](self->_multiviewConfig, "setIsEnabled:", [v5 BOOLValue]);
  }

  if (v7)
  {
    -[VUIMultiviewConfig setMaximumPlayerCount:](self->_multiviewConfig, "setMaximumPlayerCount:", [v7 integerValue]);
  }
}

- (void)_updateTVSettingsIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v14 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v12 = 67109120;
    v13 = neededCopy;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_INFO, "FeaturesConfiguration:: _updateTVSettingsIfNeeded autoPlayVideoSound = %d", &v12, 8u);
  }

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [standardUserDefaults valueForKey:@"AutoPlayBgVideoSoundUserHasChanged"];
  v7 = v6;
  if (v6 && [v6 BOOLValue])
  {
    v8 = VUIDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_INFO, "FeaturesConfiguration:: Ignore updating AutoPlayBgVideoSound because user has changed the value", &v12, 2u);
    }
  }

  else
  {
    v9 = [standardUserDefaults valueForKey:@"AutoPlayBgVideoSound"];
    v8 = v9;
    if (v9)
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    if (bOOLValue != neededCopy)
    {
      v11 = VUIDefaultLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 67109120;
        v13 = neededCopy;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_INFO, "FeaturesConfiguration:: Update AutoPlayBgVideoSound to %d", &v12, 8u);
      }

      [standardUserDefaults setBool:neededCopy forKey:@"AutoPlayBgVideoSound"];
    }
  }
}

- (void)_populateTabItemsUpdateConfig:(id)config
{
  v4 = [config vui_dictionaryForKey:@"eventDescriptors"];
  if (v4)
  {
    v5 = v4;
    [(VUITabItemsUpdateConfig *)self->_tabItemsUpdateConfig setEventDescriptors:v4];
    v4 = v5;
  }
}

- (void)_populateLaunchConfig:(id)config
{
  v74 = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v73 = [configCopy count];
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig itemCount: %lu", buf, 0xCu);
  }

  v6 = [VUIFeaturesConfiguration numberValueForKey:@"useConfigCacheIgnoreExpiry" fromDictionary:configCopy];
  v7 = v6;
  if (v6)
  {
    -[VUILaunchConfig setUseConfigCacheIgnoreExpiry:](self->_launchConfig, "setUseConfigCacheIgnoreExpiry:", [v6 BOOLValue]);
  }

  v8 = [VUIFeaturesConfiguration numberValueForKey:@"extendedCacheExpireDuration" fromDictionary:configCopy];
  v9 = v8;
  if (v8)
  {
    launchConfig = self->_launchConfig;
    [v8 doubleValue];
    [(VUILaunchConfig *)launchConfig setExtendedCacheExpireDuration:?];
  }

  v11 = [VUIFeaturesConfiguration numberValueForKey:@"useSharedURLSession" fromDictionary:configCopy];
  v12 = v11;
  if (v11)
  {
    -[VUILaunchConfig setUseSharedURLSession:](self->_launchConfig, "setUseSharedURLSession:", [v11 BOOLValue]);
  }

  v69 = v12;
  v13 = [VUIFeaturesConfiguration numberValueForKey:@"usePrepareImageForDisplay" fromDictionary:configCopy];
  v14 = v13;
  if (v13)
  {
    -[VUILaunchConfig setUsePrepareImageForDisplay:](self->_launchConfig, "setUsePrepareImageForDisplay:", [v13 BOOLValue]);
  }

  v15 = [VUIFeaturesConfiguration numberValueForKey:@"prewarmUTSConnection" fromDictionary:configCopy];
  v16 = v15;
  if (v15)
  {
    -[VUILaunchConfig setPrewarmUTSConnection:](self->_launchConfig, "setPrewarmUTSConnection:", [v15 BOOLValue]);
  }

  v64 = v14;
  v17 = [VUIFeaturesConfiguration numberValueForKey:@"alwaysPrefetchAppConfiguration" fromDictionary:configCopy];
  v18 = v17;
  if (v17)
  {
    -[VUILaunchConfig setAlwaysPrefetchAppConfiguration:](self->_launchConfig, "setAlwaysPrefetchAppConfiguration:", [v17 BOOLValue]);
  }

  v19 = [VUIFeaturesConfiguration numberValueForKey:@"prefetchLastSelectedTab" fromDictionary:configCopy];
  v20 = v19;
  if (v19)
  {
    -[VUILaunchConfig setPrefetchLastSelectedTab:](self->_launchConfig, "setPrefetchLastSelectedTab:", [v19 BOOLValue]);
  }

  v66 = v20;
  v21 = [VUIFeaturesConfiguration numberValueForKey:@"prefetchedTabExpirationDuration" fromDictionary:configCopy];
  v22 = v21;
  if (v21)
  {
    v23 = self->_launchConfig;
    [v21 doubleValue];
    [(VUILaunchConfig *)v23 setPrefetchedTabExpirationDuration:?];
  }

  v59 = v22;
  v24 = [VUIFeaturesConfiguration numberValueForKey:@"prewarmImageConnection" fromDictionary:configCopy];
  v25 = v24;
  if (v24)
  {
    -[VUILaunchConfig setPrewarmImageConnection:](self->_launchConfig, "setPrewarmImageConnection:", [v24 BOOLValue]);
  }

  v65 = v25;
  v26 = [VUIFeaturesConfiguration numberValueForKey:@"minimalSessionImageLoading" fromDictionary:configCopy];
  v27 = v26;
  if (v26)
  {
    -[VUILaunchConfig setMinimalSessionImageLoading:](self->_launchConfig, "setMinimalSessionImageLoading:", [v26 BOOLValue]);
  }

  v28 = v9;
  v29 = [VUIFeaturesConfiguration stringValueForKey:@"prewarmImageUrl" fromDictionary:configCopy];
  if (v29)
  {
    [(VUILaunchConfig *)self->_launchConfig setPrewarmImageUrl:v29];
  }

  v30 = [VUIFeaturesConfiguration numberValueForKey:@"prewarmJetpackLoading" fromDictionary:configCopy];
  v31 = v30;
  v62 = v29;
  if (v30)
  {
    -[VUILaunchConfig setPrewarmJetpackLoading:](self->_launchConfig, "setPrewarmJetpackLoading:", [v30 BOOLValue]);
  }

  v61 = v31;
  v68 = v16;
  v32 = [VUIFeaturesConfiguration numberValueForKey:@"layoutReuseIdleTimeToLive" fromDictionary:configCopy];
  v33 = v32;
  if (v32)
  {
    -[VUILaunchConfig setLayoutReuseIdleTimeToLive:](self->_launchConfig, "setLayoutReuseIdleTimeToLive:", [v32 integerValue]);
  }

  v60 = v33;
  v34 = [VUIFeaturesConfiguration numberValueForKey:@"collectionUseIdForReuseIdEnabled" fromDictionary:configCopy];
  v35 = v34;
  v36 = v28;
  if (v34)
  {
    -[VUILaunchConfig setCollectionUseIdForReuseIdEnabled:](self->_launchConfig, "setCollectionUseIdForReuseIdEnabled:", [v34 BOOLValue]);
    v37 = VUIDefaultLogObject();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v35;
      _os_log_impl(&dword_1E323F000, v37, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig collectionUseIdForReuseIdEnabled: %@", buf, 0xCu);
    }
  }

  v38 = [VUIFeaturesConfiguration numberValueForKey:@"gridViewUseItemIdAsReuseId" fromDictionary:configCopy];
  v39 = v38;
  if (v38)
  {
    -[VUILaunchConfig setGridViewUseItemIdAsReuseId:](self->_launchConfig, "setGridViewUseItemIdAsReuseId:", [v38 BOOLValue]);
    v40 = VUIDefaultLogObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v39;
      _os_log_impl(&dword_1E323F000, v40, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig gridViewUseItemIdAsReuseId: %@", buf, 0xCu);
    }
  }

  v67 = v18;
  v41 = [VUIFeaturesConfiguration numberValueForKey:@"memoryImageCacheEnabled" fromDictionary:configCopy];
  v42 = v41;
  if (v41)
  {
    -[VUILaunchConfig setMemoryImageCacheEnabled:](self->_launchConfig, "setMemoryImageCacheEnabled:", [v41 BOOLValue]);
    v43 = VUIDefaultLogObject();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v42;
      _os_log_impl(&dword_1E323F000, v43, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig memoryImageCacheEnabled: %@", buf, 0xCu);
    }
  }

  v71 = v7;
  v44 = [VUIFeaturesConfiguration numberValueForKey:@"imageInMemoryCacheSizeLimitInBytes" fromDictionary:configCopy];
  if (v35)
  {
    -[VUILaunchConfig setImageInMemoryCacheSizeLimitInBytes:](self->_launchConfig, "setImageInMemoryCacheSizeLimitInBytes:", [v35 integerValue]);
    v45 = VUIDefaultLogObject();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v44;
      _os_log_impl(&dword_1E323F000, v45, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig imageInMemoryCacheSizeLimitInBytes: %@", buf, 0xCu);
    }
  }

  v70 = v36;
  v46 = [VUIFeaturesConfiguration numberValueForKey:@"deferRichTextViewUpdate" fromDictionary:configCopy];
  v47 = v46;
  if (v46)
  {
    -[VUILaunchConfig setDeferRichTextViewUpdate:](self->_launchConfig, "setDeferRichTextViewUpdate:", [v46 BOOLValue]);
    v48 = VUIDefaultLogObject();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v47;
      _os_log_impl(&dword_1E323F000, v48, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig deferRichTextViewUpdate: %@", buf, 0xCu);
    }
  }

  v63 = v27;
  v49 = [VUIFeaturesConfiguration numberValueForKey:@"checkRemoteServerReachability" fromDictionary:configCopy];
  v50 = v49;
  if (v49)
  {
    -[VUILaunchConfig setCheckRemoteServerReachability:](self->_launchConfig, "setCheckRemoteServerReachability:", [v49 BOOLValue]);
    v51 = VUIDefaultLogObject();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v50;
      _os_log_impl(&dword_1E323F000, v51, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig checkRemoteServerReachability: %@", buf, 0xCu);
    }
  }

  v52 = v35;
  v53 = v39;
  v54 = [VUIFeaturesConfiguration numberValueForKey:@"remoteServerReachabilityTimeoutDuration" fromDictionary:configCopy];
  v55 = v54;
  if (v54)
  {
    v56 = self->_launchConfig;
    [v54 doubleValue];
    [(VUILaunchConfig *)v56 setRemoteServerReachabilityTimeoutDuration:?];
    v57 = VUIDefaultLogObject();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v55;
      _os_log_impl(&dword_1E323F000, v57, OS_LOG_TYPE_DEFAULT, "FeaturesConfiguration:: populateLaunchConfig remoteServerReachabilityTimeoutDuration: %@", buf, 0xCu);
    }
  }

  v58 = [VUIFeaturesConfiguration stringValueForKey:@"prewarmUTSUrl" fromDictionary:configCopy];
  if (v58)
  {
    [(VUILaunchConfig *)self->_launchConfig setPrewarmUTSUrl:v58];
  }
}

- (void)_populateLibConfig:(id)config
{
  v17 = *MEMORY[0x1E69E9840];
  configCopy = config;
  if (configCopy)
  {
    v5 = [VUIFeaturesConfiguration numberValueForKey:@"collectionItemLimit" fromDictionary:configCopy];
    v6 = v5;
    if (v5)
    {
      -[VUILibConfig setCollectionItemLimit:](self->_libConfig, "setCollectionItemLimit:", [v5 integerValue]);
      if ([v6 intValue] <= 1000)
      {
        v7 = VUIDefaultLogObject();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v16[0] = 67109120;
          v16[1] = [v6 intValue];
          _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_INFO, "FeaturesConfiguration:: collectionItemLimit is not allowed to set to %d", v16, 8u);
        }
      }
    }

    v8 = [VUIFeaturesConfiguration numberValueForKey:@"focusDebounceInterval" fromDictionary:configCopy];
    v9 = v8;
    if (v8)
    {
      libConfig = self->_libConfig;
      [v8 floatValue];
      [(VUILibConfig *)libConfig setFocusDebounceInterval:v11];
    }

    v12 = [VUIFeaturesConfiguration numberValueForKey:@"focusVelocityThreshold" fromDictionary:configCopy];
    v13 = v12;
    if (v12)
    {
      v14 = self->_libConfig;
      [v12 floatValue];
      [(VUILibConfig *)v14 setFocusVelocityThreshold:v15];
    }
  }
}

- (void)_populateGDPRConfig:(id)config
{
  if (config)
  {
    v4 = [VUIFeaturesConfiguration numberValueForKey:@"popoverHeight" fromDictionary:config];
    if (v4)
    {
      gdprConfig = self->_gdprConfig;
      v7 = v4;
      [v4 floatValue];
      [(VUIGDPRConfig *)gdprConfig setPopoverHeight:v6];
      v4 = v7;
    }
  }
}

- (void)_populateTimedMetadataConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    v24 = configCopy;
    v5 = objc_opt_new();
    v6 = [v24 vui_dictionaryForKey:@"visualSmoothingConfig"];
    v7 = [VUIFeaturesConfiguration numberValueForKey:@"timeRangeProximityThreshold" fromDictionary:v6];
    v8 = v7;
    if (v7)
    {
      [v7 floatValue];
      [v5 setTimeRangeProximityThreshold:v9];
    }

    v10 = [VUIFeaturesConfiguration numberValueForKey:@"initialLookAhead" fromDictionary:v6];
    v11 = v10;
    if (v10)
    {
      [v10 floatValue];
      [v5 setInitialLookAhead:v12];
    }

    v13 = [VUIFeaturesConfiguration numberValueForKey:@"initialLookBack" fromDictionary:v6];
    v14 = v13;
    if (v13)
    {
      [v13 floatValue];
      [v5 setInitialLookBack:v15];
    }

    v16 = [VUIFeaturesConfiguration numberValueForKey:@"lookAhead" fromDictionary:v6];
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      [v5 setLookAhead:v18];
    }

    v19 = [v24 vui_dictionaryForKey:@"audioSmoothingConfig"];
    v20 = objc_opt_new();
    v21 = [VUIFeaturesConfiguration numberValueForKey:@"durationToRetainAudioEntity" fromDictionary:v19];
    v22 = v21;
    if (v21)
    {
      [v21 floatValue];
      [v20 setDurationToRetainAudioEntity:v23];
    }

    [(VUITimedMetadataConfig *)self->_timedMetadataConfig setVisualSmoothingConfig:v5];
    [(VUITimedMetadataConfig *)self->_timedMetadataConfig setAudioSmoothingConfig:v20];

    configCopy = v24;
  }
}

- (void)_populateLivePostPlayConfig:(id)config
{
  configCopy = config;
  if (configCopy)
  {
    v11 = configCopy;
    v5 = [configCopy vui_numberForKey:@"clockScorePollingInterval"];
    v6 = v5;
    if (v5)
    {
      livePostPlayConfig = self->_livePostPlayConfig;
      [v5 doubleValue];
      [(VUILivePostPlayConfig *)livePostPlayConfig setClockScorePollingInterval:?];
    }

    v8 = [v11 vui_numberForKey:@"dismissPlaybackDelay"];
    v9 = v8;
    if (v8)
    {
      v10 = self->_livePostPlayConfig;
      [v8 doubleValue];
      [(VUILivePostPlayConfig *)v10 setDismissPlaybackDelay:?];
    }

    configCopy = v11;
  }
}

- (void)_populateTipKitConfig:(id)config
{
  v27[2] = *MEMORY[0x1E69E9840];
  configCopy = config;
  v5 = configCopy;
  if (configCopy)
  {
    v6 = [configCopy vui_numberForKey:@"isEnabled"];
    v7 = v6;
    if (v6)
    {
      -[VUITipKitConfig setIsEnabled:](self->_tipKitConfig, "setIsEnabled:", [v6 BOOLValue]);
    }

    selfCopy = self;
    v25 = v7;
    v8 = [v5 objectForKey:@"tipConfig"];
    v9 = [v8 objectForKey:@"radioTip"];
    v10 = objc_alloc_init(VUITipKitConfigEntry);
    v11 = [v9 vui_numberForKey:@"isEnabled"];
    v12 = v11;
    if (v11)
    {
      -[VUITipKitConfigEntry setIsEnabled:](v10, "setIsEnabled:", [v11 BOOLValue]);
    }

    v13 = [v9 vui_numberForKey:@"maxDisplayCount"];
    v14 = v13;
    if (v13)
    {
      -[VUITipKitConfigEntry setMaxDisplayCount:](v10, "setMaxDisplayCount:", [v13 intValue]);
    }

    v15 = [v8 objectForKey:@"multiviewTip"];
    v16 = objc_alloc_init(VUITipKitConfigEntry);
    v17 = [v15 vui_numberForKey:@"isEnabled"];

    if (v17)
    {
      -[VUITipKitConfigEntry setIsEnabled:](v16, "setIsEnabled:", [v17 BOOLValue]);
    }

    v18 = [v15 vui_numberForKey:{@"maxDisplayCount", v8}];

    if (v18)
    {
      -[VUITipKitConfigEntry setMaxDisplayCount:](v16, "setMaxDisplayCount:", [v18 intValue]);
    }

    tipKitConfig = self->_tipKitConfig;
    v26[0] = @"radioTip";
    v26[1] = @"multiviewTip";
    v27[0] = v10;
    v27[1] = v16;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    [(VUITipKitConfig *)tipKitConfig setTipConfiguration:v20];

    v21 = [v5 vui_numberForKey:@"displayFrequency"];
    v22 = v21;
    if (v21)
    {
      -[VUITipKitConfig setDisplayFrequency:](selfCopy->_tipKitConfig, "setDisplayFrequency:", [v21 integerValue]);
    }
  }
}

@end