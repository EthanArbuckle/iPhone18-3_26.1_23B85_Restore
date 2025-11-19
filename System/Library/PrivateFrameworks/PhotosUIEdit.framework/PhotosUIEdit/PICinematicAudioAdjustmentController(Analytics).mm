@interface PICinematicAudioAdjustmentController(Analytics)
- (id)analyticsPayload;
@end

@implementation PICinematicAudioAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v2 = [a1 adjustment];
  if (v2 && (v3 = v2, v4 = [a1 enabled], v3, v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v6 = [a1 renderingStyle];
    v7 = [v6 isEqualToString:*MEMORY[0x277D3A9F0]];

    if (v7)
    {
      v8 = @"Original";
    }

    else
    {
      v9 = [a1 renderingStyle];
      v10 = [v9 isEqualToString:*MEMORY[0x277D3AA00]];

      if (v10)
      {
        v8 = @"Voice";
      }

      else
      {
        v11 = [a1 renderingStyle];
        v12 = [v11 isEqualToString:*MEMORY[0x277D3A9F8]];

        if (v12)
        {
          v8 = @"Studio Voice";
        }

        else
        {
          v13 = [a1 renderingStyle];
          v14 = [v13 isEqualToString:*MEMORY[0x277D3A9E8]];

          if (v14)
          {
            v8 = @"Camera Voice";
          }

          else
          {
            v8 = @"Unknown";
          }
        }
      }
    }

    [v5 setObject:v8 forKeyedSubscript:@"audio_mix"];
    v15 = +[PEAnalyticsUtility adjustmentValueBucketizerFormatter];
    v16 = MEMORY[0x277CCABB0];
    [a1 dialogMixBias];
    v17 = [v16 numberWithDouble:?];
    v18 = [v15 stringFromNumber:v17];
    [v5 setObject:v18 forKeyedSubscript:@"audio_mix_intensity"];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

@end