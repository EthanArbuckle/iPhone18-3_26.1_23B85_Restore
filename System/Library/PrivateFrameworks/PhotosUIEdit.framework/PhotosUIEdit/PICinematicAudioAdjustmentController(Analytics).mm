@interface PICinematicAudioAdjustmentController(Analytics)
- (id)analyticsPayload;
@end

@implementation PICinematicAudioAdjustmentController(Analytics)

- (id)analyticsPayload
{
  adjustment = [self adjustment];
  if (adjustment && (v3 = adjustment, v4 = [self enabled], v3, v4))
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    renderingStyle = [self renderingStyle];
    v7 = [renderingStyle isEqualToString:*MEMORY[0x277D3A9F0]];

    if (v7)
    {
      v8 = @"Original";
    }

    else
    {
      renderingStyle2 = [self renderingStyle];
      v10 = [renderingStyle2 isEqualToString:*MEMORY[0x277D3AA00]];

      if (v10)
      {
        v8 = @"Voice";
      }

      else
      {
        renderingStyle3 = [self renderingStyle];
        v12 = [renderingStyle3 isEqualToString:*MEMORY[0x277D3A9F8]];

        if (v12)
        {
          v8 = @"Studio Voice";
        }

        else
        {
          renderingStyle4 = [self renderingStyle];
          v14 = [renderingStyle4 isEqualToString:*MEMORY[0x277D3A9E8]];

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
    [self dialogMixBias];
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