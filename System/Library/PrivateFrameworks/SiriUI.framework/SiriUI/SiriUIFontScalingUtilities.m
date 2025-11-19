@interface SiriUIFontScalingUtilities
+ (double)labelLeadingForCurrentScale;
+ (id)_paragraphStyleWithLeading:(double)a3 textAlignemtn:(int64_t)a4;
+ (id)paragraphStyleForCurrentScaleWithTextAlignment:(int64_t)a3;
+ (id)tallParagraphStyleForCurrentScaleWithTextAlignment:(int64_t)a3;
@end

@implementation SiriUIFontScalingUtilities

+ (double)labelLeadingForCurrentScale
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  if ([v3 isEqualToString:*MEMORY[0x277D76830]])
  {
    v4 = 21.5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76858]])
  {
    v4 = 22.5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76840]])
  {
    v4 = 23.5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D76838]])
  {
    v4 = 24.5;
  }

  else
  {
    v4 = 26.0;
    if (([v3 isEqualToString:*MEMORY[0x277D76828]] & 1) == 0)
    {
      if ([v3 isEqualToString:*MEMORY[0x277D76820]])
      {
        v4 = 26.5;
      }

      else if ([v3 isEqualToString:*MEMORY[0x277D76818]])
      {
        v4 = 27.5;
      }

      else
      {
        v5 = [MEMORY[0x277D74300] siriui_serverUtteranceFont];
        [v5 _scaledValueForValue:49.0];
        v7 = round(v6);

        v4 = v7 * 0.5;
      }
    }
  }

  return v4;
}

+ (id)paragraphStyleForCurrentScaleWithTextAlignment:(int64_t)a3
{
  +[SiriUIFontScalingUtilities labelLeadingForCurrentScale];

  return [a1 _paragraphStyleWithLeading:a3 textAlignemtn:?];
}

+ (id)tallParagraphStyleForCurrentScaleWithTextAlignment:(int64_t)a3
{
  +[SiriUIFontScalingUtilities labelLeadingForCurrentScale];
  v6 = ceil(v5 * 1.2);

  return [a1 _paragraphStyleWithLeading:a3 textAlignemtn:v6];
}

+ (id)_paragraphStyleWithLeading:(double)a3 textAlignemtn:(int64_t)a4
{
  v6 = objc_alloc_init(MEMORY[0x277D74240]);
  [v6 setMinimumLineHeight:a3];
  [v6 setMaximumLineHeight:a3];
  [v6 setLineBreakMode:0];
  LODWORD(v7) = 1036831949;
  [v6 setHyphenationFactor:v7];
  [v6 setAlignment:a4];

  return v6;
}

@end