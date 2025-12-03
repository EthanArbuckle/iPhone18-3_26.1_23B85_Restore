@interface VTUIButton
+ (id)_vtuiButtonWithPrimaryStyle;
+ (id)_vtuiButtonWithPrimaryStyleForNormalAndDisabledState;
+ (id)_vtuiButtonWithSecondaryStyle;
+ (id)_vtuiProximityBackgroundButtonImageWithColor:(id)color;
+ (id)_vtuiProximityButtonWithPrimaryStyle;
+ (id)_vtuiProximityButtonWithSecondaryStyle:(BOOL)style;
+ (id)_vtuiProximityDismissButton;
+ (id)vtuiBackgroundButtonImageWithColor:(id)color;
- (CGSize)intrinsicContentSize;
- (VTUIButton)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation VTUIButton

+ (id)_vtuiButtonWithPrimaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTitleColor:whiteColor forState:0];

  titleLabel = [v2 titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [v2 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v2 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  v7 = objc_opt_class();
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [v7 vtuiBackgroundButtonImageWithColor:systemBlueColor];
  [v2 setBackgroundImage:v9 forState:0];

  titleLabel4 = [v2 titleLabel];
  v11 = +[VTUIStyle sharedStyle];
  primaryButtonFont = [v11 primaryButtonFont];
  [titleLabel4 setFont:primaryButtonFont];

  return v2;
}

+ (id)_vtuiButtonWithPrimaryStyleForNormalAndDisabledState
{
  _vtuiButtonWithPrimaryStyle = [self _vtuiButtonWithPrimaryStyle];
  v3 = objc_opt_class();
  secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v5 = [v3 vtuiBackgroundButtonImageWithColor:secondarySystemBackgroundColor];
  [_vtuiButtonWithPrimaryStyle setBackgroundImage:v5 forState:2];

  return _vtuiButtonWithPrimaryStyle;
}

+ (id)_vtuiProximityButtonWithPrimaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  titleLabel = [v2 titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [v2 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v2 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    [v2 setConfiguration:_tintedGlassButtonConfiguration];
  }

  else
  {
    secondarySystemBackgroundColor = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v2 setBackgroundColor:secondarySystemBackgroundColor];

    [v2 _setContinuousCornerRadius:12.0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v2 setTitleColor:labelColor forState:0];

    _tintedGlassButtonConfiguration = [MEMORY[0x277D75348] secondaryLabelColor];
    [v2 setTitleColor:_tintedGlassButtonConfiguration forState:2];
  }

  titleLabel4 = [v2 titleLabel];
  v10 = +[VTUIStyle sharedStyle];
  proxPrimaryButtonFont = [v10 proxPrimaryButtonFont];
  [titleLabel4 setFont:proxPrimaryButtonFont];

  return v2;
}

+ (id)_vtuiProximityDismissButton
{
  v2 = [VTUIButton buttonWithType:7];
  v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
  tertiarySystemFillColor = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v5 = [v3 imageWithTintColor:tertiarySystemFillColor];
  [v2 setBackgroundImage:v5 forState:0];

  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
  [v2 setPreferredSymbolConfiguration:v6 forImageInState:0];

  return v2;
}

+ (id)_vtuiButtonWithSecondaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  [v2 setTitleColor:systemBlueColor forState:0];

  titleLabel = [v2 titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [v2 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v2 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  titleLabel4 = [v2 titleLabel];
  v8 = +[VTUIStyle sharedStyle];
  secondaryButtonFont = [v8 secondaryButtonFont];
  [titleLabel4 setFont:secondaryButtonFont];

  return v2;
}

+ (id)_vtuiProximityButtonWithSecondaryStyle:(BOOL)style
{
  v4 = [VTUIButton buttonWithType:1];
  titleLabel = [v4 titleLabel];
  [titleLabel setLineBreakMode:0];

  titleLabel2 = [v4 titleLabel];
  [titleLabel2 setNumberOfLines:0];

  titleLabel3 = [v4 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v4 setContentVerticalAlignment:0];
  titleLabel4 = [v4 titleLabel];
  v9 = +[VTUIStyle sharedStyle];
  secondaryButtonFont = [v9 secondaryButtonFont];
  [titleLabel4 setFont:secondaryButtonFont];

  if (!+[VTUIFeatureFlags isNaturalUIEnabled]|| style)
  {
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [v4 setTitleColor:systemBlueColor forState:0];
  }

  else
  {
    systemBlueColor = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [v4 setConfiguration:systemBlueColor];
  }

  return v4;
}

+ (id)vtuiBackgroundButtonImageWithColor:(id)color
{
  colorCopy = color;
  v9.width = 26.0;
  v9.height = 26.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [colorCopy set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 26.0, 26.0, 13.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{13.0, 13.0, 13.0, 13.0}];

  return v6;
}

+ (id)_vtuiProximityBackgroundButtonImageWithColor:(id)color
{
  colorCopy = color;
  v9.width = 16.0;
  v9.height = 16.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [colorCopy set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 16.0, 16.0, 8.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{8.0, 8.0, 8.0, 8.0}];

  return v6;
}

- (VTUIButton)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = VTUIButton;
  v3 = [(VTUIButton *)&v8 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(VTUIButton *)v3 titleLabel];
    [titleLabel setNumberOfLines:0];

    titleLabel2 = [(VTUIButton *)v4 titleLabel];
    [titleLabel2 setLineBreakMode:0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(VTUIButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  titleLabel = [(VTUIButton *)self titleLabel];
  titleLabel2 = [(VTUIButton *)self titleLabel];
  [titleLabel2 frame];
  [titleLabel setPreferredMaxLayoutWidth:CGRectGetWidth(v6)];

  v5.receiver = self;
  v5.super_class = VTUIButton;
  [(VTUIButton *)&v5 layoutSubviews];
}

@end