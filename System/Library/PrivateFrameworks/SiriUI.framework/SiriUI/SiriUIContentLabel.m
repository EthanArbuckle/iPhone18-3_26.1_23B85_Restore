@interface SiriUIContentLabel
+ (id)label;
+ (id)labelWithBodyFont;
+ (id)labelWithHeaderFont;
+ (id)labelWithLightWeightFontSize:(double)a3;
+ (id)labelWithLightWeightRegularFont;
+ (id)labelWithLightWeightSubtextFont;
+ (id)labelWithMediumWeightRegularFont;
+ (id)labelWithMediumWeightSubtextFont;
+ (id)labelWithSubtitleFont;
+ (id)labelWithThinWeightFontSize:(double)a3;
+ (id)labelWithThinWeightRegularFont;
+ (id)labelWithThinWeightSubtextFont;
- (SiriUIContentLabel)initWithFrame:(CGRect)a3;
@end

@implementation SiriUIContentLabel

+ (id)label
{
  v2 = objc_opt_class();

  return [v2 labelWithLightWeightRegularFont];
}

+ (id)labelWithLightWeightFontSize:(double)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [MEMORY[0x277D74300] siriui_lightWeightFontWithSize:a3];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightFontSize:(double)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [MEMORY[0x277D74300] siriui_thinWeightFontWithSize:a3];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_thinWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithLightWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_lightWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithMediumWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_mediumWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithThinWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_thinWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithLightWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_lightWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithMediumWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_mediumWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithHeaderFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_headerFont];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];

  return v2;
}

+ (id)labelWithSubtitleFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_subtitleFont];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];

  return v2;
}

- (SiriUIContentLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriUIContentLabel;
  v3 = [(SiriUIContentLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] siriui_textColor];
    [(SiriUIContentLabel *)v3 setTextColor:v4];

    v5 = [MEMORY[0x277D75348] clearColor];
    [(SiriUIContentLabel *)v3 setBackgroundColor:v5];
  }

  return v3;
}

+ (id)labelWithBodyFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] siriui_dynamicBodyFont];
  [v2 setFont:v3];

  return v2;
}

@end