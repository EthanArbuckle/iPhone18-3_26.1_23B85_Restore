@interface VUIPlaybackUpNextConfig
- (VUIPlaybackUpNextConfig)init;
@end

@implementation VUIPlaybackUpNextConfig

- (VUIPlaybackUpNextConfig)init
{
  v29 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = VUIPlaybackUpNextConfig;
  v2 = [(VUIPlaybackUpNextConfig *)&v26 init];
  v3 = v2;
  if (v2)
  {
    v2->_documentUpdateOffsetInterval = 1.0;
    v2->_duration = 30.0;
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 objectForKey:@"maximumAutoPlayableItemsQAOverride"];

    if (v5)
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v5;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIFeaturesConfiguration:: overriding max auto playable items from user defaults %@", buf, 0xCu);
      }

      v3->_maximumAutoPlayableItems = [v5 unsignedIntegerValue];
    }

    else
    {
      v7 = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [v7 objectForKey:@"maximumAutoPlayableItems"];

      if (v8)
      {
        v9 = [v8 unsignedIntegerValue];
      }

      else
      {
        v9 = 3;
      }

      v3->_maximumAutoPlayableItems = v9;
    }

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [v10 objectForKey:@"autoPlayTimerDuration"];

    if (v11)
    {
      [v11 doubleValue];
    }

    else
    {
      v12 = 15.0;
    }

    v3->_autoPlayTimerDuration = v12;
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [v13 objectForKey:@"bootStrapInterval"];

    if (v14)
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 30.0;
    }

    v3->_bootstrapInterval = v15;
    v16 = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [v16 objectForKey:@"minAutoPlayStopTimeQAOverride"];

    if (v17)
    {
      [v17 doubleValue];
      v3->_minAutoPlayStopTime = v18;
    }

    else
    {
      v19 = [MEMORY[0x1E695E000] standardUserDefaults];
      v20 = [v19 objectForKey:@"minAutoPlayStopTime"];

      if (v20)
      {
        [v20 doubleValue];
      }

      else
      {
        v21 = 0x40BC200000000000;
      }

      *&v3->_minAutoPlayStopTime = v21;
    }

    v22 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [v22 objectForKey:@"minTimeIntervalFromEndToDisplay"];

    if (v23)
    {
      [v23 doubleValue];
    }

    else
    {
      v24 = 20.0;
    }

    v3->_minTimeIntervalFromEndToDisplay = v24;
  }

  return v3;
}

@end