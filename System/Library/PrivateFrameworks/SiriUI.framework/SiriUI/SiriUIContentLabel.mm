@interface SiriUIContentLabel
+ (id)label;
+ (id)labelWithBodyFont;
+ (id)labelWithHeaderFont;
+ (id)labelWithLightWeightFontSize:(double)size;
+ (id)labelWithLightWeightRegularFont;
+ (id)labelWithLightWeightSubtextFont;
+ (id)labelWithMediumWeightRegularFont;
+ (id)labelWithMediumWeightSubtextFont;
+ (id)labelWithSubtitleFont;
+ (id)labelWithThinWeightFontSize:(double)size;
+ (id)labelWithThinWeightRegularFont;
+ (id)labelWithThinWeightSubtextFont;
- (SiriUIContentLabel)initWithFrame:(CGRect)frame;
@end

@implementation SiriUIContentLabel

+ (id)label
{
  v2 = objc_opt_class();

  return [v2 labelWithLightWeightRegularFont];
}

+ (id)labelWithLightWeightFontSize:(double)size
{
  v4 = objc_alloc_init(self);
  v5 = [MEMORY[0x277D74300] siriui_lightWeightFontWithSize:size];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightFontSize:(double)size
{
  v4 = objc_alloc_init(self);
  v5 = [MEMORY[0x277D74300] siriui_thinWeightFontWithSize:size];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightRegularFont
{
  v2 = objc_alloc_init(self);
  siriui_thinWeightBodySizeFont = [MEMORY[0x277D74300] siriui_thinWeightBodySizeFont];
  [v2 setFont:siriui_thinWeightBodySizeFont];

  return v2;
}

+ (id)labelWithLightWeightRegularFont
{
  v2 = objc_alloc_init(self);
  siriui_lightWeightBodySizeFont = [MEMORY[0x277D74300] siriui_lightWeightBodySizeFont];
  [v2 setFont:siriui_lightWeightBodySizeFont];

  return v2;
}

+ (id)labelWithMediumWeightRegularFont
{
  v2 = objc_alloc_init(self);
  siriui_mediumWeightBodySizeFont = [MEMORY[0x277D74300] siriui_mediumWeightBodySizeFont];
  [v2 setFont:siriui_mediumWeightBodySizeFont];

  return v2;
}

+ (id)labelWithThinWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  siriui_thinWeightBodySubtextSizeFont = [MEMORY[0x277D74300] siriui_thinWeightBodySubtextSizeFont];
  [v2 setFont:siriui_thinWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithLightWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  siriui_lightWeightBodySubtextSizeFont = [MEMORY[0x277D74300] siriui_lightWeightBodySubtextSizeFont];
  [v2 setFont:siriui_lightWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithMediumWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  siriui_mediumWeightBodySubtextSizeFont = [MEMORY[0x277D74300] siriui_mediumWeightBodySubtextSizeFont];
  [v2 setFont:siriui_mediumWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithHeaderFont
{
  v2 = objc_alloc_init(self);
  siriui_headerFont = [MEMORY[0x277D74300] siriui_headerFont];
  [v2 setFont:siriui_headerFont];

  [v2 setTextAlignment:1];

  return v2;
}

+ (id)labelWithSubtitleFont
{
  v2 = objc_alloc_init(self);
  siriui_subtitleFont = [MEMORY[0x277D74300] siriui_subtitleFont];
  [v2 setFont:siriui_subtitleFont];

  [v2 setTextAlignment:1];

  return v2;
}

- (SiriUIContentLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriUIContentLabel;
  v3 = [(SiriUIContentLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    siriui_textColor = [MEMORY[0x277D75348] siriui_textColor];
    [(SiriUIContentLabel *)v3 setTextColor:siriui_textColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SiriUIContentLabel *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

+ (id)labelWithBodyFont
{
  v2 = objc_alloc_init(self);
  siriui_dynamicBodyFont = [MEMORY[0x277D74300] siriui_dynamicBodyFont];
  [v2 setFont:siriui_dynamicBodyFont];

  return v2;
}

@end