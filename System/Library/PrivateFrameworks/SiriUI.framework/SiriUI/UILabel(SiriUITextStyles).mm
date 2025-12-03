@interface UILabel(SiriUITextStyles)
+ (id)siriui_configuredBodyLabel;
+ (id)siriui_configuredCaptionLabel;
+ (id)siriui_configuredFootnoteLabel;
+ (id)siriui_configuredHeadlineLabel;
+ (id)siriui_configuredLabel;
+ (id)siriui_configuredPriceLabel;
+ (id)siriui_configuredSubheadLabel;
+ (id)siriui_configuredTitle3Label;
+ (id)siriui_configuredTitleLabel;
- (void)setUseSecondaryTextColor;
@end

@implementation UILabel(SiriUITextStyles)

+ (id)siriui_configuredLabel
{
  v0 = objc_alloc(MEMORY[0x277D756B8]);
  v1 = [v0 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  siriui_platterTextColor = [MEMORY[0x277D75348] siriui_platterTextColor];
  [v1 setTextColor:siriui_platterTextColor];

  return v1;
}

+ (id)siriui_configuredBodyLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredHeadlineLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredSubheadLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredCaptionLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
  [siriui_configuredLabel setFont:v1];

  [siriui_configuredLabel setNumberOfLines:0];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredPriceLabel
{
  v7[1] = *MEMORY[0x277D85DE8];
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = objc_alloc(MEMORY[0x277D74310]);
  v6 = *MEMORY[0x277D74378];
  v7[0] = *MEMORY[0x277D76918];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v3 = [v1 initWithFontAttributes:v2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:70.0];
  [siriui_configuredLabel setFont:v4];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredTitleLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A08]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredTitle3Label
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A28]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

+ (id)siriui_configuredFootnoteLabel
{
  siriui_configuredLabel = [MEMORY[0x277D756B8] siriui_configuredLabel];
  v1 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [siriui_configuredLabel setFont:v1];

  return siriui_configuredLabel;
}

- (void)setUseSecondaryTextColor
{
  siriui_platterSemiTransparentTextColor = [MEMORY[0x277D75348] siriui_platterSemiTransparentTextColor];
  [self setTextColor:siriui_platterSemiTransparentTextColor];
}

@end