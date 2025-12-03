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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"maximumAutoPlayableItemsQAOverride"];

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
      standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [standardUserDefaults2 objectForKey:@"maximumAutoPlayableItems"];

      if (v8)
      {
        unsignedIntegerValue = [v8 unsignedIntegerValue];
      }

      else
      {
        unsignedIntegerValue = 3;
      }

      v3->_maximumAutoPlayableItems = unsignedIntegerValue;
    }

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v11 = [standardUserDefaults3 objectForKey:@"autoPlayTimerDuration"];

    if (v11)
    {
      [v11 doubleValue];
    }

    else
    {
      v12 = 15.0;
    }

    v3->_autoPlayTimerDuration = v12;
    standardUserDefaults4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v14 = [standardUserDefaults4 objectForKey:@"bootStrapInterval"];

    if (v14)
    {
      [v14 doubleValue];
    }

    else
    {
      v15 = 30.0;
    }

    v3->_bootstrapInterval = v15;
    standardUserDefaults5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [standardUserDefaults5 objectForKey:@"minAutoPlayStopTimeQAOverride"];

    if (v17)
    {
      [v17 doubleValue];
      v3->_minAutoPlayStopTime = v18;
    }

    else
    {
      standardUserDefaults6 = [MEMORY[0x1E695E000] standardUserDefaults];
      v20 = [standardUserDefaults6 objectForKey:@"minAutoPlayStopTime"];

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

    standardUserDefaults7 = [MEMORY[0x1E695E000] standardUserDefaults];
    v23 = [standardUserDefaults7 objectForKey:@"minTimeIntervalFromEndToDisplay"];

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