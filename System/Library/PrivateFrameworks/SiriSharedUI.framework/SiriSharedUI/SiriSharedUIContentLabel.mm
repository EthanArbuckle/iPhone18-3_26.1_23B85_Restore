@interface SiriSharedUIContentLabel
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
- (SiriSharedUIContentLabel)initWithFrame:(CGRect)a3;
@end

@implementation SiriSharedUIContentLabel

+ (id)label
{
  v2 = objc_opt_class();

  return [v2 labelWithLightWeightRegularFont];
}

+ (id)labelWithLightWeightFontSize:(double)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [MEMORY[0x277D74300] sirisharedui_lightWeightFontWithSize:a3];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightFontSize:(double)a3
{
  v4 = objc_alloc_init(a1);
  v5 = [MEMORY[0x277D74300] sirisharedui_thinWeightFontWithSize:a3];
  [v4 setFont:v5];

  return v4;
}

+ (id)labelWithThinWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_thinWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithLightWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_lightWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithMediumWeightRegularFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_mediumWeightBodySizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithThinWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_thinWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithLightWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_lightWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithMediumWeightSubtextFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_mediumWeightBodySubtextSizeFont];
  [v2 setFont:v3];

  return v2;
}

+ (id)labelWithHeaderFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_headerFont];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];

  return v2;
}

+ (id)labelWithSubtitleFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_subtitleFont];
  [v2 setFont:v3];

  [v2 setTextAlignment:1];

  return v2;
}

- (SiriSharedUIContentLabel)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = SiriSharedUIContentLabel;
  v3 = [(SiriSharedUIContentLabel *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] labelColor];
    [(SiriSharedUIContentLabel *)v3 setTextColor:v4];

    v5 = [MEMORY[0x277D75348] clearColor];
    [(SiriSharedUIContentLabel *)v3 setBackgroundColor:v5];
  }

  return v3;
}

+ (id)labelWithBodyFont
{
  v2 = objc_alloc_init(a1);
  v3 = [MEMORY[0x277D74300] sirisharedui_dynamicBodyFont];
  [v2 setFont:v3];

  return v2;
}

@end