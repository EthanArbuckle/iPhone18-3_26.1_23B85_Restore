@interface VUITimedMetadataVisualSmoothingConfig
- (VUITimedMetadataVisualSmoothingConfig)init;
@end

@implementation VUITimedMetadataVisualSmoothingConfig

- (VUITimedMetadataVisualSmoothingConfig)init
{
  v15.receiver = self;
  v15.super_class = VUITimedMetadataVisualSmoothingConfig;
  v2 = [(VUITimedMetadataVisualSmoothingConfig *)&v15 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeRangeProximityThreshold = 0.5;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [standardUserDefaults objectForKey:@"CapInitialLookBack"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults2 objectForKey:@"CapInitialLookAhead"];

    standardUserDefaults3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [standardUserDefaults3 objectForKey:@"CapLookAhead"];

    if (v5)
    {
      [v5 doubleValue];
    }

    else
    {
      v10 = 5.0;
    }

    v3->_initialLookBack = v10;
    v11 = 8.0;
    v12 = 8.0;
    if (v7)
    {
      [v7 doubleValue];
    }

    v3->_initialLookAhead = v12;
    if (v9)
    {
      [v9 doubleValue];
      v11 = v13;
    }

    v3->_lookAhead = v11;
  }

  return v3;
}

@end