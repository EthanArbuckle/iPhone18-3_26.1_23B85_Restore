@interface VUIPostPlayUpsellConfig
+ (id)sharedInstance;
- (BOOL)_canShowUpsellForChannelId:(id)id showId:(id)showId duration:(double)duration elapsedTime:(double)time;
- (BOOL)_isHistoryArrayFull:(id)full forMaxCount:(unint64_t)count inDurationWindow:(double)window;
- (id)_cleanupHistory:(id)history atCurrentDate:(id)date isShow:(BOOL)show;
- (id)_trimHistoryArray:(id)array forMaxCount:(unint64_t)count inDurationWindow:(double)window atCurrentDate:(id)date;
- (id)appContext;
- (void)_canShowUpsellForPolicy:(id)policy duration:(double)duration elapsedTime:(double)time completion:(id)completion;
- (void)_recordUpsellHistoryForShowId:(id)id onChannelId:(id)channelId;
- (void)canShowUpsellForMediaItem:(id)item withElapsedTime:(double)time completion:(id)completion;
- (void)configureUsingDictionary:(id)dictionary;
- (void)disableUpsellOnPlaybackExit:(BOOL)exit;
- (void)enableUpsellOnPIPPlaybackExit:(BOOL)exit;
- (void)setChannelLevelUpsellRateOfMaxCount:(unint64_t)count inHours:(double)hours;
- (void)setHasShownPostPlay:(BOOL)play;
- (void)setMinPlaybackProgressPercentageForUpsellOnExit:(double)exit;
- (void)setShowLevelUpsellRateOfMaxCount:(unint64_t)count inHours:(double)hours;
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

- (void)configureUsingDictionary:(id)dictionary
{
  v16 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = dictionaryCopy;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - setting via JS %@", &v14, 0xCu);
    }

    -[VUIPostPlayUpsellConfig disableUpsellOnPlaybackExit:](self, "disableUpsellOnPlaybackExit:", [dictionaryCopy vui_BOOLForKey:@"isDisabled" defaultValue:0]);
    -[VUIPostPlayUpsellConfig enableUpsellOnPIPPlaybackExit:](self, "enableUpsellOnPIPPlaybackExit:", [dictionaryCopy vui_BOOLForKey:@"isPIPEnabled" defaultValue:0]);
    v6 = [dictionaryCopy vui_numberForKey:@"minPlaybackProgressPercentage"];
    v7 = v6;
    if (v6)
    {
      [v6 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setMinPlaybackProgressPercentageForUpsellOnExit:?];
    }

    v8 = [dictionaryCopy vui_numberForKey:@"maxCountPerChannel"];
    if (v8)
    {
      v9 = [dictionaryCopy vui_numberForKey:@"countDurationHrsPerChannel"];
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      [v9 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setChannelLevelUpsellRateOfMaxCount:unsignedIntegerValue inHours:?];
    }

    v11 = [dictionaryCopy vui_numberForKey:@"maxCountPerShow"];
    if (v11)
    {
      v12 = [dictionaryCopy vui_numberForKey:@"countDurationHrsPerShow"];
      unsignedIntegerValue2 = [v11 unsignedIntegerValue];
      [v12 doubleValue];
      [(VUIPostPlayUpsellConfig *)self setShowLevelUpsellRateOfMaxCount:unsignedIntegerValue2 inHours:?];
    }
  }
}

- (void)disableUpsellOnPlaybackExit:(BOOL)exit
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isUpsellOnPlaybackExitDisabled != exit)
  {
    exitCopy = exit;
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "enable";
      if (exitCopy)
      {
        v6 = "disable";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - %s upsell on pb exit", &v7, 0xCu);
    }

    self->_isUpsellOnPlaybackExitDisabled = exitCopy;
  }
}

- (void)enableUpsellOnPIPPlaybackExit:(BOOL)exit
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_isUpsellOnPIPPlaybackExitEnabled != exit)
  {
    exitCopy = exit;
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = "disable";
      if (exitCopy)
      {
        v6 = "enable";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - %s upsell on pip pb exit", &v7, 0xCu);
    }

    self->_isUpsellOnPIPPlaybackExitEnabled = exitCopy;
  }
}

- (void)setMinPlaybackProgressPercentageForUpsellOnExit:(double)exit
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_minPlaybackProgressPercentage != exit)
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134217984;
      exitCopy = exit;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set progress percentage for upsell on exit: %lf", &v6, 0xCu);
    }

    self->_minPlaybackProgressPercentage = exit;
  }
}

- (void)setShowLevelUpsellRateOfMaxCount:(unint64_t)count inHours:(double)hours
{
  v12 = *MEMORY[0x1E69E9840];
  if (count && hours >= 0.001 || self->_upsellMaxCountPerShow != count || self->_upsellCountDurationPerShow != hours)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      countCopy = count;
      v10 = 2048;
      hoursCopy = hours;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set show level rate: %ld per %f hrs", &v8, 0x16u);
    }

    if (count)
    {
      self->_isUpsellLimitedPerShow = 1;
      self->_upsellMaxCountPerShow = count;
      self->_upsellCountDurationPerShow = hours;
    }

    else
    {
      self->_isUpsellLimitedPerShow = 0;
    }
  }
}

- (void)setChannelLevelUpsellRateOfMaxCount:(unint64_t)count inHours:(double)hours
{
  v12 = *MEMORY[0x1E69E9840];
  if (count && hours >= 0.001 || self->_upsellMaxCountPerChannel != count || self->_upsellCountDurationPerChannel != hours)
  {
    v7 = VUIDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134218240;
      countCopy = count;
      v10 = 2048;
      hoursCopy = hours;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - set channel level rate: %ld per %f hrs", &v8, 0x16u);
    }

    if (count)
    {
      self->_isUpsellLimitedPerChannel = 1;
      self->_upsellMaxCountPerChannel = count;
      self->_upsellCountDurationPerChannel = hours;
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
  appController = [v2 appController];
  appContext = [appController appContext];

  return appContext;
}

- (void)setHasShownPostPlay:(BOOL)play
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

  self->_hasShownPostPlay = play;
}

- (void)canShowUpsellForMediaItem:(id)item withElapsedTime:(double)time completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  if ([(VUIPostPlayUpsellConfig *)self hasShownPostPlay])
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v9 = [itemCopy mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyPlaybackExitUpsellPolicy"];
    v10 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5B70]];
    [v10 doubleValue];
    v12 = v11;

    [(VUIPostPlayUpsellConfig *)self _canShowUpsellForPolicy:v9 duration:completionCopy elapsedTime:v12 completion:time];
  }
}

- (void)_canShowUpsellForPolicy:(id)policy duration:(double)duration elapsedTime:(double)time completion:(id)completion
{
  policyCopy = policy;
  completionCopy = completion;
  if ([policyCopy showUpsell])
  {
    appContext = [(VUIPostPlayUpsellConfig *)self appContext];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __83__VUIPostPlayUpsellConfig__canShowUpsellForPolicy_duration_elapsedTime_completion___block_invoke;
    v13[3] = &unk_1E8734960;
    timeCopy = time;
    durationCopy = duration;
    v14 = policyCopy;
    v15 = completionCopy;
    [appContext evaluate:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (BOOL)_canShowUpsellForChannelId:(id)id showId:(id)showId duration:(double)duration elapsedTime:(double)time
{
  v34 = *MEMORY[0x1E69E9840];
  idCopy = id;
  showIdCopy = showId;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v13 = [standardUserDefaults dictionaryForKey:@"PostPlayUpsellConfig"];

  if (self->_isUpsellLimitedPerChannel)
  {
    v14 = [v13 vui_dictionaryForKey:@"PostPlayUpsellChannelHistory"];
    v15 = [v14 vui_arrayForKey:idCopy];
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
        v33 = idCopy;
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
    v15 = [v14 vui_arrayForKey:showIdCopy];
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
        v33 = showIdCopy;
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

  if (*MEMORY[0x1E69D5A80] == duration)
  {
    v23 = VUIDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPostPlayUpsellConfig - unknown content playback duration", &v28, 2u);
    }

    goto LABEL_19;
  }

  v25 = time / duration;
  if (v25 >= minPlaybackProgressPercentage)
  {
LABEL_21:
    [(VUIPostPlayUpsellConfig *)self _recordUpsellHistoryForShowId:showIdCopy onChannelId:idCopy];
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

- (void)_recordUpsellHistoryForShowId:(id)id onChannelId:(id)channelId
{
  idCopy = id;
  channelIdCopy = channelId;
  if (idCopy && channelIdCopy)
  {
    date = [MEMORY[0x1E695DF00] date];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults dictionaryForKey:@"PostPlayUpsellConfig"];

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
    v18 = [v14 vui_arrayForKey:channelIdCopy];
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
    [v19 addObject:date];
    [v14 setValue:v20 forKey:channelIdCopy];
    v21 = [v17 vui_arrayForKey:idCopy];
    if (v21)
    {
      v22 = [MEMORY[0x1E695DF70] arrayWithArray:v21];
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = v22;
    [v22 addObject:date];
    [v17 setValue:v23 forKey:idCopy];
    v24 = [(VUIPostPlayUpsellConfig *)self _cleanupHistory:v17 atCurrentDate:date isShow:1];

    v25 = [(VUIPostPlayUpsellConfig *)self _cleanupHistory:v14 atCurrentDate:date isShow:0];

    [v11 setValue:v25 forKey:@"PostPlayUpsellChannelHistory"];
    [v11 setValue:v24 forKey:@"PostPlayUpsellShowHistory"];
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setValue:v11 forKey:@"PostPlayUpsellConfig"];
  }
}

- (id)_cleanupHistory:(id)history atCurrentDate:(id)date isShow:(BOOL)show
{
  showCopy = show;
  v28 = *MEMORY[0x1E69E9840];
  historyCopy = history;
  dateCopy = date;
  [historyCopy allKeys];
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
    if (showCopy)
    {
      v12 = 24;
    }

    v21 = v12;
    if (showCopy)
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
        v16 = [historyCopy vui_arrayForKey:v15];
        if (v16)
        {
          v17 = [MEMORY[0x1E695DF70] arrayWithArray:v16];
          v18 = [(VUIPostPlayUpsellConfig *)self _trimHistoryArray:v17 forMaxCount:*(&self->super.isa + v21) inDurationWindow:dateCopy atCurrentDate:*(&self->super.isa + v13)];

          if ([v18 count])
          {
            [historyCopy setValue:v18 forKey:v15];
          }

          else
          {
            [historyCopy removeObjectForKey:v15];
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }

  return historyCopy;
}

- (BOOL)_isHistoryArrayFull:(id)full forMaxCount:(unint64_t)count inDurationWindow:(double)window
{
  fullCopy = full;
  date = [MEMORY[0x1E695DF00] date];
  v9 = [fullCopy count];
  if (v9)
  {
    v10 = 0;
    v11 = window * 60.0 * 60.0;
    v12 = v9 - 1;
    do
    {
      v13 = v10;
      if (v12 < 0)
      {
        break;
      }

      v14 = [fullCopy objectAtIndexedSubscript:v12];
      [date timeIntervalSinceDate:v14];
      v16 = v15;
      ++v10;

      --v12;
    }

    while (v16 <= v11);
    v17 = v13 >= count;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_trimHistoryArray:(id)array forMaxCount:(unint64_t)count inDurationWindow:(double)window atCurrentDate:(id)date
{
  arrayCopy = array;
  dateCopy = date;
  v11 = [arrayCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = window * 60.0 * 60.0;
    v14 = v11;
    while ((--v14 & 0x8000000000000000) == 0)
    {
      v15 = [arrayCopy objectAtIndexedSubscript:v14];
      [dateCopy timeIntervalSinceDate:v15];
      v17 = v16;

      if (v17 > v13)
      {
        if (v14 < v12)
        {
          [arrayCopy removeObjectsInRange:{0, v14 + 1}];
        }

        break;
      }
    }

    if (([arrayCopy count] - count) >= 1)
    {
      [arrayCopy removeObjectsInRange:0];
    }
  }

  return arrayCopy;
}

@end