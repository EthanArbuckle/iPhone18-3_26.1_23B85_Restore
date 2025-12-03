@interface SiriUIFontScalingUtilities
+ (double)labelLeadingForCurrentScale;
+ (id)_paragraphStyleWithLeading:(double)leading textAlignemtn:(int64_t)alignemtn;
+ (id)paragraphStyleForCurrentScaleWithTextAlignment:(int64_t)alignment;
+ (id)tallParagraphStyleForCurrentScaleWithTextAlignment:(int64_t)alignment;
@end

@implementation SiriUIFontScalingUtilities

+ (double)labelLeadingForCurrentScale
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76830]])
  {
    v4 = 21.5;
  }

  else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76858]])
  {
    v4 = 22.5;
  }

  else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76840]])
  {
    v4 = 23.5;
  }

  else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76838]])
  {
    v4 = 24.5;
  }

  else
  {
    v4 = 26.0;
    if (([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
    {
      if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76820]])
      {
        v4 = 26.5;
      }

      else if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x277D76818]])
      {
        v4 = 27.5;
      }

      else
      {
        siriui_serverUtteranceFont = [MEMORY[0x277D74300] siriui_serverUtteranceFont];
        [siriui_serverUtteranceFont _scaledValueForValue:49.0];
        v7 = round(v6);

        v4 = v7 * 0.5;
      }
    }
  }

  return v4;
}

+ (id)paragraphStyleForCurrentScaleWithTextAlignment:(int64_t)alignment
{
  +[SiriUIFontScalingUtilities labelLeadingForCurrentScale];

  return [self _paragraphStyleWithLeading:alignment textAlignemtn:?];
}

+ (id)tallParagraphStyleForCurrentScaleWithTextAlignment:(int64_t)alignment
{
  +[SiriUIFontScalingUtilities labelLeadingForCurrentScale];
  v6 = ceil(v5 * 1.2);

  return [self _paragraphStyleWithLeading:alignment textAlignemtn:v6];
}

+ (id)_paragraphStyleWithLeading:(double)leading textAlignemtn:(int64_t)alignemtn
{
  v6 = objc_alloc_init(MEMORY[0x277D74240]);
  [v6 setMinimumLineHeight:leading];
  [v6 setMaximumLineHeight:leading];
  [v6 setLineBreakMode:0];
  LODWORD(v7) = 1036831949;
  [v6 setHyphenationFactor:v7];
  [v6 setAlignment:alignemtn];

  return v6;
}

@end