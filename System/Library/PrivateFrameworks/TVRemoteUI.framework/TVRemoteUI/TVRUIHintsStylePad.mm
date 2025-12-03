@interface TVRUIHintsStylePad
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
- (id)micVolumeImage;
- (id)primaryTintColor;
- (id)siriHintTipContext;
- (int64_t)userInterfaceStyle;
@end

@implementation TVRUIHintsStylePad

- (id)primaryTintColor
{
  blackColor = [MEMORY[0x277D75348] blackColor];
  v3 = [blackColor colorWithAlphaComponent:0.5];

  return v3;
}

- (id)micVolumeImage
{
  v2 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:3 scale:28.0];
  v3 = [MEMORY[0x277D755B8] _systemImageNamed:@"apple.sing.microphone" withConfiguration:v2];

  return v3;
}

- (double)maximumSymbolPointSize
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 maximumSymbolPointSize];
  return result;
}

- (BOOL)shouldShowSiriHint
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  return [(TVRUIHintsStyle *)&v3 shouldShowSiriHint];
}

- (BOOL)shouldShowVolumeHint
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  return [(TVRUIHintsStyle *)&v3 shouldShowVolumeHint];
}

- (double)animationPresentationDelay
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 animationPresentationDelay];
  return result;
}

- (double)animationDuration
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 animationDuration];
  return result;
}

- (double)activationAnimationDuration
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 activationAnimationDuration];
  return result;
}

- (double)activationAnimationDismissalDelay
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 activationAnimationDismissalDelay];
  return result;
}

- (double)siriHintContainerWidth
{
  siriImage = [(TVRUIHintsStylePad *)self siriImage];
  [siriImage size];
  v5 = v4;
  [(TVRUIHintsStylePad *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (double)volumeHintContainerWidth
{
  volumeImage = [(TVRUIHintsStylePad *)self volumeImage];
  [volumeImage size];
  v5 = v4;
  [(TVRUIHintsStylePad *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (double)micVolumeHintContainerWidth
{
  micVolumeImage = [(TVRUIHintsStylePad *)self micVolumeImage];
  [micVolumeImage size];
  v5 = v4;
  [(TVRUIHintsStylePad *)self buttonOutlineWidth];
  v7 = v5 + v6;

  return v7;
}

- (id)siriHintTipContext
{
  v4.receiver = self;
  v4.super_class = TVRUIHintsStylePad;
  siriHintTipContext = [(TVRUIHintsStyle *)&v4 siriHintTipContext];

  return siriHintTipContext;
}

- (int64_t)userInterfaceStyle
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  return [(TVRUIHintsStyle *)&v3 userInterfaceStyle];
}

- (double)preferredTipWidth
{
  v3.receiver = self;
  v3.super_class = TVRUIHintsStylePad;
  [(TVRUIHintsStyle *)&v3 preferredTipWidth];
  return result;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:@"Pad" withName:@"idiom"];
  v4 = [v3 appendBool:-[TVRUIHintsStyle hasHomeButton](self withName:{"hasHomeButton"), @"hasHomeButton"}];
  build = [v3 build];

  return build;
}

@end