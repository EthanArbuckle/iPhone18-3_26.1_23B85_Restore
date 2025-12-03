@interface TVRUIHintsStylePhone
- (BOOL)shouldShowSiriHint;
- (BOOL)shouldShowVolumeHint;
- (NSString)description;
- (double)activationAnimationDismissalDelay;
- (double)activationAnimationDuration;
- (double)animationDuration;
- (double)animationPresentationDelay;
- (double)maximumSymbolPointSize;
- (double)micVolumeHintContainerWidth;
- (double)preferredTipWidth;
- (double)siriHintContainerWidth;
- (double)volumeHintContainerWidth;
- (id)backgroundFilters;
- (id)micVolumeImage;
- (id)primaryTintColor;
- (id)siriHintTipContext;
- (int64_t)userInterfaceStyle;
@end

@implementation TVRUIHintsStylePhone

- (id)backgroundFilters
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
  [v2 setValue:&unk_287E84EC0 forKey:@"inputRadius"];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)primaryTintColor
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v2 = 0.388235294;
    v3 = 0.4;
  }

  else
  {
    v2 = 0.235294118;
    v3 = 0.262745098;
  }

  v4 = [MEMORY[0x277D75348] colorWithRed:v2 green:v2 blue:v3 alpha:1.0];

  return v4;
}

- (id)micVolumeImage
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769A8]];
  v3 = MEMORY[0x277D755D0];
  [v2 pointSize];
  v5 = [v3 configurationWithPointSize:7 weight:2 scale:{fmin(v4, 1.79769313e308)}];
  v6 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.sing.microphone" withConfiguration:v5];

  return v6;
}

- (double)maximumSymbolPointSize
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v3 maximumSymbolPointSize];
  return result;
}

- (BOOL)shouldShowSiriHint
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  return [(TVRUIHintsStyle *)&v3 shouldShowSiriHint];
}

- (BOOL)shouldShowVolumeHint
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  return [(TVRUIHintsStyle *)&v3 shouldShowVolumeHint];
}

- (double)animationPresentationDelay
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v3 animationPresentationDelay];
  return result;
}

- (double)animationDuration
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v3 animationDuration];
  return result;
}

- (double)activationAnimationDuration
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v3 activationAnimationDuration];
  return result;
}

- (double)activationAnimationDismissalDelay
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v3 activationAnimationDismissalDelay];
  return result;
}

- (double)siriHintContainerWidth
{
  siriImage = [(TVRUIHintsStylePhone *)self siriImage];
  [siriImage size];
  v5 = v4;
  [(TVRUIHintsStylePhone *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (double)volumeHintContainerWidth
{
  volumeImage = [(TVRUIHintsStylePhone *)self volumeImage];
  [volumeImage size];
  v5 = v4;
  [(TVRUIHintsStylePhone *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (double)micVolumeHintContainerWidth
{
  micVolumeImage = [(TVRUIHintsStylePhone *)self micVolumeImage];
  [micVolumeImage size];
  v5 = v4;
  [(TVRUIHintsStylePhone *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (id)siriHintTipContext
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsStylePhone;
  siriHintTipContext = [(TVRUIHintsStyle *)&v4 siriHintTipContext];

  return siriHintTipContext;
}

- (int64_t)userInterfaceStyle
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePhone;
  return [(TVRUIHintsStyle *)&v3 userInterfaceStyle];
}

- (double)preferredTipWidth
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v5 = v4;

  if (v5 <= 667.0)
  {
    return 304.0;
  }

  v7.receiver = self;
  v7.super_class = TVRUIHintsStylePhone;
  [(TVRUIHintsStyle *)&v7 preferredTipWidth];
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:@"Phone" withName:@"idiom"];
  v4 = [v3 appendBool:-[TVRUIHintsStyle hasHomeButton](self withName:{"hasHomeButton"), @"hasHomeButton"}];
  build = [v3 build];

  return build;
}

@end