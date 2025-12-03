@interface SCRCPhotoEvaluatorResultLuminance
- (SCRCPhotoEvaluatorResultLuminance)initWithDarknessLevel:(double)level brightnessLevel:(double)brightnessLevel averageLevel:(double)averageLevel;
- (id)humanReadableResult;
@end

@implementation SCRCPhotoEvaluatorResultLuminance

- (SCRCPhotoEvaluatorResultLuminance)initWithDarknessLevel:(double)level brightnessLevel:(double)brightnessLevel averageLevel:(double)averageLevel
{
  v12.receiver = self;
  v12.super_class = SCRCPhotoEvaluatorResultLuminance;
  v8 = [(SCRCPhotoEvaluatorResultLuminance *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_darknessLevel = level;
    v8->_brightnessLevel = brightnessLevel;
    v8->_averageLevel = averageLevel;
    v10 = v8;
  }

  return v9;
}

- (id)humanReadableResult
{
  darknessLevel = self->_darknessLevel;
  if (darknessLevel <= 0.85)
  {
    if (darknessLevel <= 0.6)
    {
      brightnessLevel = self->_brightnessLevel;
      if (brightnessLevel <= 0.85)
      {
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = v3;
        if (brightnessLevel <= 0.6)
        {
          v5 = @"well_lit";
        }

        else
        {
          v5 = @"bright";
        }
      }

      else
      {
        v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v4 = v3;
        v5 = @"very_bright";
      }
    }

    else
    {
      v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v4 = v3;
      v5 = @"dark";
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = v3;
    v5 = @"very_dark";
  }

  v7 = [v3 localizedStringForKey:v5 value:&stru_287632E30 table:@"PhotoEvaluationStrings"];

  return v7;
}

@end