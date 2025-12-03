@interface SiriSharedUIContentLabel
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
- (SiriSharedUIContentLabel)initWithFrame:(CGRect)frame;
@end

@implementation SiriSharedUIContentLabel

+ (id)label
{
  v2 = objc_opt_class();

  return [v2 labelWithLightWeightRegularFont];
}

+ (id)labelWithLightWeightFontSize:(double)size
{
  v4 = objc_alloc_init(self);
  v5 = [MEMORY[0x277D74300] sirisharedui_lightWeightFontWithSize:size];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightFontSize:(double)size
{
  v4 = objc_alloc_init(self);
  v5 = [MEMORY[0x277D74300] sirisharedui_thinWeightFontWithSize:size];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightRegularFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_thinWeightBodySizeFont = [MEMORY[0x277D74300] sirisharedui_thinWeightBodySizeFont];
  [v2 setFont:sirisharedui_thinWeightBodySizeFont];

  return v2;
}

+ (id)labelWithLightWeightRegularFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_lightWeightBodySizeFont = [MEMORY[0x277D74300] sirisharedui_lightWeightBodySizeFont];
  [v2 setFont:sirisharedui_lightWeightBodySizeFont];

  return v2;
}

+ (id)labelWithMediumWeightRegularFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_mediumWeightBodySizeFont = [MEMORY[0x277D74300] sirisharedui_mediumWeightBodySizeFont];
  [v2 setFont:sirisharedui_mediumWeightBodySizeFont];

  return v2;
}

+ (id)labelWithThinWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_thinWeightBodySubtextSizeFont = [MEMORY[0x277D74300] sirisharedui_thinWeightBodySubtextSizeFont];
  [v2 setFont:sirisharedui_thinWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithLightWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_lightWeightBodySubtextSizeFont = [MEMORY[0x277D74300] sirisharedui_lightWeightBodySubtextSizeFont];
  [v2 setFont:sirisharedui_lightWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithMediumWeightSubtextFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_mediumWeightBodySubtextSizeFont = [MEMORY[0x277D74300] sirisharedui_mediumWeightBodySubtextSizeFont];
  [v2 setFont:sirisharedui_mediumWeightBodySubtextSizeFont];

  return v2;
}

+ (id)labelWithHeaderFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_headerFont = [MEMORY[0x277D74300] sirisharedui_headerFont];
  [v2 setFont:sirisharedui_headerFont];

  [v2 setTextAlignment:1];

  return v2;
}

+ (id)labelWithSubtitleFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_subtitleFont = [MEMORY[0x277D74300] sirisharedui_subtitleFont];
  [v2 setFont:sirisharedui_subtitleFont];

  [v2 setTextAlignment:1];

  return v2;
}

- (SiriSharedUIContentLabel)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = SiriSharedUIContentLabel;
  v3 = [(SiriSharedUIContentLabel *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(SiriSharedUIContentLabel *)v3 setTextColor:labelColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SiriSharedUIContentLabel *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

+ (id)labelWithBodyFont
{
  v2 = objc_alloc_init(self);
  sirisharedui_dynamicBodyFont = [MEMORY[0x277D74300] sirisharedui_dynamicBodyFont];
  [v2 setFont:sirisharedui_dynamicBodyFont];

  return v2;
}

@end