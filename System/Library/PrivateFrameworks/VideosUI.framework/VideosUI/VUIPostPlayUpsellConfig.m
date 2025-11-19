@interface VUIPostPlayUpsellConfig
+ (id)sharedInstance;
- (BOOL)_canShowUpsellForChannelId:(id)a3 showId:(id)a4 duration:(double)a5 elapsedTime:(double)a6;
- (BOOL)_isHistoryArrayFull:(id)a3 forMaxCount:(unint64_t)a4 inDurationWindow:(double)a5;
- (id)_cleanupHistory:(id)a3 atCurrentDate:(id)a4 isShow:(BOOL)a5;
- (id)_trimHistoryArray:(id)a3 forMaxCount:(unint64_t)a4 inDurationWindow:(double)a5 atCurrentDate:(id)a6;
- (id)appContext;
- (void)_canShowUpsellForPolicy:(id)a3 duration:(double)a4 elapsedTime:(double)a5 completion:(id)a6;
- (void)_recordUpsellHistoryForShowId:(id)a3 onChannelId:(id)a4;
- (void)canShowUpsellForMediaItem:(id)a3 withElapsedTime:(double)a4 completion:(id)a5;
- (void)configureUsingDictionary:(id)a3;
- (void)disableUpsellOnPlaybackExit:(BOOL)a3;
- (void)enableUpsellOnPIPPlaybackExit:(BOOL)a3;
- (void)setChannelLevelUpsellRateOfMaxCount:(unint64_t)a3 inHours:(double)a4;
- (void)setHasShownPostPlay:(BOOL)a3;
- (void)setMinPlaybackProgressPercentageForUpsellOnExit:(double)a3;
- (void)setShowLevelUpsellRateOfMaxCount:(unint64_t)a3 inHours:(double)a4;
@end

@implementation VUIPostPlayUpsellConfig

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_27 != -1)
  {
    +[VUIPostPlayUpsellConfig sharedInstance];
  }

  v3 = sharedInstance_instance_3;

  return v3;
}

uint64_t __41__VUIPostPlayUpsellConfig_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPostPlayUpsellConfig);
  v1 = sharedInstance_instance_3;
  sharedInstance_instance_3 = v0;

  [sharedInstance_instance_3 setChannelLevelUpsellRateOfMaxCount:3 inHours:24.0];
  [sharedInstance_instance_3 setShowLevelUpsellRateOfMaxCount:2 inHours:24.0];
  v2 = sharedInstance_instance_3;

  return [v2 setMinPlaybackProgressPercentageForUpsellOnExit:0.85];
}

- (void)configureUsingDictionary:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - setting via JS %@", &v14, 0xCu);
    }

    -[VUIPostPlayUpsellConfig disableUpsellOnPlaybackExit:](self, "disableUpsellOnPlaybackExit:", [v4 vui_BOOLForKey:@"isDisabled" defaultValue:0]);
    -[VUIPostPlayUpsellConfig enableUpsellOnPIPPlaybackExit:](self, "enableUpsellOnPIPPlaybackExit:", [v4 vui_BOOLForKey:@"isPIPEnabled" defaultValue:0]);
    v6 = [v4 vui_numberForKey:@"minPlaybackProgressPercentage"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setMinPlaybackProgressPercentageForUpsellOnExit:?];
    }

    v8 = [v4 vui_numberForKey:@"maxCountPerChannel"];
    if (v8)
    {
      v9 = [v4 vui_numberForKey:@"countDurationHrsPerChannel"];
      v10 = [v8 unsignedIntegerValue];
      [v9 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setChannelLevelUpsellRateOfMaxCount:v10 inHours:?];
    }

    v11 = [v4 vui_numberForKey:@"maxCountPerShow"];
    if (v11)
    {
      v12 = [v4 vui_numberForKey:@"countDurationHrsPerShow"];
      v13 = [v11 unsignedIntegerValue];
      [v12 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setShowLevelUpsellRateOfMaxCount:v13 inHours:?];
    }
  }
}

- (void)disableUpsellOnPlaybackExit:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isUpsellOnPlaybackExitDisabled != a3)
  {
    v3 = a3;
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "enable";
      if (v3)
      {
        v6 = "disable";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - %s upsell on pb exit", &v7, 0xCu);
    }

    self->_isUpsellOnPlaybackExitDisabled = v3;
  }
}

- (void)enableUpsellOnPIPPlaybackExit:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isUpsellOnPIPPlaybackExitEnabled != a3)
  {
    v3 = a3;
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disable";
      if (v3)
      {
        v6 = "enable";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - %s upsell on pip pb exit", &v7, 0xCu);
    }

    self->_isUpsellOnPIPPlaybackExitEnabled = v3;
  }
}

- (void)setMinPlaybackProgressPercentageForUpsellOnExit:(double)a3
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_minPlaybackProgressPercentage != a3)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      v7 = a3;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set progress percentage for upsell on exit: %lf", &v6, 0xCu);
    }

    self->_minPlaybackProgressPercentage = a3;
  }
}

- (void)setShowLevelUpsellRateOfMaxCount:(unint64_t)a3 inHours:(double)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 && a4 >= 0.001 || self->_upsellMaxCountPerShow != a3 || self->_upsellCountDurationPerShow != a4)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = a3;
      v10 = 2048;
      v11 = a4;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set show level rate: %ld per %f hrs", &v8, 0x16u);
    }

    if (a3)
    {
      self->_isUpsellLimitedPerShow = 1;
      self->_upsellMaxCountPerShow = a3;
      self->_upsellCountDurationPerShow = a4;
    }

    else
    {
      self->_isUpsellLimitedPerShow = 0;
    }
  }
}

- (void)setChannelLevelUpsellRateOfMaxCount:(unint64_t)a3 inHours:(double)a4
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3 && a4 >= 0.001 || self->_upsellMaxCountPerChannel != a3 || self->_upsellCountDurationPerChannel != a4)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      v9 = a3;
      v10 = 2048;
      v11 = a4;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set channel level rate: %ld per %f hrs", &v8, 0x16u);
    }

    if (a3)
    {
      self->_isUpsellLimitedPerChannel = 1;
      self->_upsellMaxCountPerChannel = a3;
      self->_upsellCountDurationPerChannel = a4;
    }

    else
    {
      self->_isUpsellLimitedPerChannel = 0;
    }
  }
}

- (id)appContext
{
  v2 = +[VUITVAppLauncher sharedInstance];
  v3 = [v2 appController];
  v4 = [v3 appContext];

  return v4;
}

- (void)setHasShownPostPlay:(BOOL)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = VUIBoolLogString();
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - setHasShownPostPlay=%@", &v7, 0xCu);
  }

  self->_hasShownPostPlay = a3;
}

- (void)canShowUpsellForMediaItem:(id)a3 withElapsedTime:(double)a4 completion:(id)a5
{
  v13 = a3;
  v8 = a5;
  if ([(VUIPostPlayUpsellConfig *)self hasShownPostPlay])
  {
    v8[2](v8, 0);
  }

  else
  {
    v9 = [v13 mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
    v10 = [v13 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B70]];
    [v10 doubleValue];
    v12 = v11;

    [(VUIPostPlayUpsellConfig *)self _canShowUpsellForPolicy:v9 duration:v8 elapsedTime:v12 completion:a4];
  }
}

- (void)_canShowUpsellForPolicy:(id)a3 duration:(double)a4 elapsedTime:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  if ([v10 showUpsell])
  {
    v12 = [(VUIPostPlayUpsellConfig *)self appContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke;
    v13[3] = &unk_1E8734960;
    v16 = a5;
    v17 = a4;
    v14 = v10;
    v15 = v11;
    [v12 evaluate:v13];
  }

  else
  {
    (*(v11 + 2))(v11, 0);
  }
}

void __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke(uint64_t a1, void *a2)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:@"ExitUpsellInterface"];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  v18[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  v18[1] = v5;
  v6 = [*(a1 + 32) playbackThreshold];
  v18[2] = v6;
  v7 = [*(a1 + 32) thresholdValueType];
  v8 = &unk_1F5E5D920;
  if (!v7)
  {
    v8 = &unk_1F5E5D908;
  }

  v18[3] = v8;
  v9 = [*(a1 + 32) rateLimitPolicies];
  v18[4] = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke_36;
  v16 = &unk_1E872D790;
  v17 = *(a1 + 40);
  v10 = _Block_copy(&v13);
  v18[5] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:{6, v13, v14, v15, v16}];
  v12 = [v3 invokeMethod:@"showUpsell" withArguments:v11];
}

void __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke_36(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke_2;
  v3[3] = &unk_1E872FFC0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

- (BOOL)_canShowUpsellForChannelId:(id)a3 showId:(id)a4 duration:(double)a5 elapsedTime:(double)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [v12 dictionaryForKey:@"PostPlayUpsellConfig"];

  if (self->_isUpsellLimitedPerChannel)
  {
    v14 = [v13 vui_dictionaryForKey:@"PostPlayUpsellChannelHistory"];
    v15 = [v14 vui_arrayForKey:v10];
    if ([(VUIPostPlayUpsellConfig *)self _isHistoryArrayFull:v15 forMaxCount:self->_upsellMaxCountPerChannel inDurationWindow:self->_upsellCountDurationPerChannel])
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        upsellMaxCountPerChannel = self->_upsellMaxCountPerChannel;
        upsellCountDurationPerChannel = self->_upsellCountDurationPerChannel;
        v28 = 134218498;
        v29 = *&upsellMaxCountPerChannel;
        v30 = 2048;
        v31 = upsellCountDurationPerChannel;
        v32 = 2112;
        v33 = v10;
        v19 = "VUIPostPlayUpsellConfig - post play upsell reached its per channel rate(%lu/%fhrs) limit for channel %@";
LABEL_10:
        _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, v19, &v28, 0x20u);
        goto LABEL_11;
      }

      goto LABEL_11;
    }
  }

  if (self->_isUpsellLimitedPerShow)
  {
    v14 = [v13 vui_dictionaryForKey:@"PostPlayUpsellShowHistory"];
    v15 = [v14 vui_arrayForKey:v11];
    if ([(VUIPostPlayUpsellConfig *)self _isHistoryArrayFull:v15 forMaxCount:self->_upsellMaxCountPerShow inDurationWindow:self->_upsellCountDurationPerShow])
    {
      v16 = VUIDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        upsellMaxCountPerShow = self->_upsellMaxCountPerShow;
        upsellCountDurationPerShow = self->_upsellCountDurationPerShow;
        v28 = 134218498;
        v29 = *&upsellMaxCountPerShow;
        v30 = 2048;
        v31 = upsellCountDurationPerShow;
        v32 = 2112;
        v33 = v11;
        v19 = "VUIPostPlayUpsellConfig - post play upsell reached its per show rate(%lu/%fhrs) limit for show %@";
        goto LABEL_10;
      }

LABEL_11:

      goto LABEL_12;
    }
  }

  minPlaybackProgressPercentage = self->_minPlaybackProgressPercentage;
  if (minPlaybackProgressPercentage <= 0.0)
  {
    goto LABEL_21;
  }

  if (*MEMORY[0x1E69D5A80] == a5)
  {
    v23 = VUIDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - unknown content playback duration", &v28, 2u);
    }

    goto LABEL_19;
  }

  v25 = a6 / a5;
  if (v25 >= minPlaybackProgressPercentage)
  {
LABEL_21:
    [(VUIPostPlayUpsellConfig *)self _recordUpsellHistoryForShowId:v11 onChannelId:v10];
    v24 = 1;
    goto LABEL_22;
  }

  v14 = VUIDefaultLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->_minPlaybackProgressPercentage;
    v28 = 134218240;
    v29 = v25;
    v30 = 2048;
    v31 = v27;
    _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - not enough played, playbackProgressPercentage %f < _minPlaybackProgressPercentage %f", &v28, 0x16u);
  }

LABEL_12:

LABEL_19:
  v24 = 0;
LABEL_22:

  return v24;
}

- (void)_recordUpsellHistoryForShowId:(id)a3 onChannelId:(id)a4
{
  v31 = a3;
  v6 = a4;
  if (v31 && v6)
  {
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 dictionaryForKey:@"PostPlayUpsellConfig"];

    v30 = v9;
    if (v9)
    {
      v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v9];
    }

    else
    {
      v10 = objc_opt_new();
    }

    v11 = v10;
    v12 = [v10 vui_dictionaryForKey:@"PostPlayUpsellChannelHistory"];
    v29 = v12;
    if (v12)
    {
      v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v12];
    }

    else
    {
      v13 = objc_opt_new();
    }

    v14 = v13;
    v15 = [v11 vui_dictionaryForKey:@"PostPlayUpsellShowHistory"];
    v28 = v15;
    if (v15)
    {
      v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];
    }

    else
    {
      v16 = objc_opt_new();
    }

    v17 = v16;
    v18 = [v14 vui_arrayForKey:v6];
    v27 = v18;
    if (v18)
    {
      v19 = [MEMORY[0x1E695DF70] arrayWithArray:v18];
    }

    else
    {
      v19 = objc_opt_new();
    }

    v20 = v19;
    [v19 addObject:v7];
    [v14 setValue:v20 forKey:v6];
    v21 = [v17 vui_arrayForKey:v31];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithArray:v21];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = v22;
    [v22 addObject:v7];
    [v17 setValue:v23 forKey:v31];
    v24 = [(VUIPostPlayUpsellConfig *)self _cleanupHistory:v17 atCurrentDate:v7 isShow:1];

    v25 = [(VUIPostPlayUpsellConfig *)self _cleanupHistory:v14 atCurrentDate:v7 isShow:0];

    [v11 setValue:v25 forKey:@"PostPlayUpsellChannelHistory"];
    [v11 setValue:v24 forKey:@"PostPlayUpsellShowHistory"];
    v26 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v26 setValue:v11 forKey:@"PostPlayUpsellConfig"];
  }
}

- (id)_cleanupHistory:(id)a3 atCurrentDate:(id)a4 isShow:(BOOL)a5
{
  v5 = a5;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v22 = a4;
  [v8 allKeys];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = 40;
    if (v5)
    {
      v12 = 24;
    }

    v21 = v12;
    if (v5)
    {
      v13 = 32;
    }

    else
    {
      v13 = 48;
    }

    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v8 vui_arrayForKey:v15];
        if (v16)
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithArray:v16];
          v18 = [(VUIPostPlayUpsellConfig *)self _trimHistoryArray:v17 forMaxCount:*(&self->super.isa + v21) inDurationWindow:v22 atCurrentDate:*(&self->super.isa + v13)];

          if ([v18 count])
          {
            [v8 setValue:v18 forKey:v15];
          }

          else
          {
            [v8 removeObjectForKey:v15];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return v8;
}

- (BOOL)_isHistoryArrayFull:(id)a3 forMaxCount:(unint64_t)a4 inDurationWindow:(double)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E695DF00] date];
  v9 = [v7 count];
  if (v9)
  {
    v10 = 0;
    v11 = a5 * 60.0 * 60.0;
    v12 = v9 - 1;
    do
    {
      v13 = v10;
      if (v12 < 0)
      {
        break;
      }

      v14 = [v7 objectAtIndexedSubscript:v12];
      [v8 timeIntervalSinceDate:v14];
      v16 = v15;
      ++v10;

      --v12;
    }

    while (v16 <= v11);
    v17 = v13 >= a4;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_trimHistoryArray:(id)a3 forMaxCount:(unint64_t)a4 inDurationWindow:(double)a5 atCurrentDate:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [v9 count];
  if (v11)
  {
    v12 = v11;
    v13 = a5 * 60.0 * 60.0;
    v14 = v11;
    while ((--v14 & 0x8000000000000000) == 0)
    {
      v15 = [v9 objectAtIndexedSubscript:v14];
      [v10 timeIntervalSinceDate:v15];
      v17 = v16;

      if (v17 > v13)
      {
        if (v14 < v12)
        {
          [v9 removeObjectsInRange:{0, v14 + 1}];
        }

        break;
      }
    }

    if (([v9 count] - a4) >= 1)
    {
      [v9 removeObjectsInRange:0];
    }
  }

  return v9;
}

@end