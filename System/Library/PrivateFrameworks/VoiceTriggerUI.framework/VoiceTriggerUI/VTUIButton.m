@interface VTUIButton
+ (id)_vtuiButtonWithPrimaryStyle;
+ (id)_vtuiButtonWithPrimaryStyleForNormalAndDisabledState;
+ (id)_vtuiButtonWithSecondaryStyle;
+ (id)_vtuiProximityBackgroundButtonImageWithColor:(id)a3;
+ (id)_vtuiProximityButtonWithPrimaryStyle;
+ (id)_vtuiProximityButtonWithSecondaryStyle:(BOOL)a3;
+ (id)_vtuiProximityDismissButton;
+ (id)vtuiBackgroundButtonImageWithColor:(id)a3;
- (CGSize)intrinsicContentSize;
- (VTUIButton)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation VTUIButton

+ (id)_vtuiButtonWithPrimaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setTitleColor:v3 forState:0];

  v4 = [v2 titleLabel];
  [v4 setLineBreakMode:0];

  v5 = [v2 titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [v2 titleLabel];
  [v6 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  v7 = objc_opt_class();
  v8 = [MEMORY[0x277D75348] systemBlueColor];
  v9 = [v7 vtuiBackgroundButtonImageWithColor:v8];
  [v2 setBackgroundImage:v9 forState:0];

  v10 = [v2 titleLabel];
  v11 = +[VTUIStyle sharedStyle];
  v12 = [v11 primaryButtonFont];
  [v10 setFont:v12];

  return v2;
}

+ (id)_vtuiButtonWithPrimaryStyleForNormalAndDisabledState
{
  v2 = [a1 _vtuiButtonWithPrimaryStyle];
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  v5 = [v3 vtuiBackgroundButtonImageWithColor:v4];
  [v2 setBackgroundImage:v5 forState:2];

  return v2;
}

+ (id)_vtuiProximityButtonWithPrimaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  v3 = [v2 titleLabel];
  [v3 setLineBreakMode:0];

  v4 = [v2 titleLabel];
  [v4 setNumberOfLines:0];

  v5 = [v2 titleLabel];
  [v5 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  if (+[VTUIFeatureFlags isNaturalUIEnabled])
  {
    v6 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    [v2 setConfiguration:v6];
  }

  else
  {
    v7 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [v2 setBackgroundColor:v7];

    [v2 _setContinuousCornerRadius:12.0];
    v8 = [MEMORY[0x277D75348] labelColor];
    [v2 setTitleColor:v8 forState:0];

    v6 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v2 setTitleColor:v6 forState:2];
  }

  v9 = [v2 titleLabel];
  v10 = +[VTUIStyle sharedStyle];
  v11 = [v10 proxPrimaryButtonFont];
  [v9 setFont:v11];

  return v2;
}

+ (id)_vtuiProximityDismissButton
{
  v2 = [VTUIButton buttonWithType:7];
  v3 = [MEMORY[0x277D755B8] kitImageNamed:@"UICloseButtonBackgroundCompact"];
  v4 = [MEMORY[0x277D75348] tertiarySystemFillColor];
  v5 = [v3 imageWithTintColor:v4];
  [v2 setBackgroundImage:v5 forState:0];

  v6 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:1 scale:15.0];
  [v2 setPreferredSymbolConfiguration:v6 forImageInState:0];

  return v2;
}

+ (id)_vtuiButtonWithSecondaryStyle
{
  v2 = [VTUIButton buttonWithType:1];
  v3 = [MEMORY[0x277D75348] systemBlueColor];
  [v2 setTitleColor:v3 forState:0];

  v4 = [v2 titleLabel];
  [v4 setLineBreakMode:0];

  v5 = [v2 titleLabel];
  [v5 setNumberOfLines:0];

  v6 = [v2 titleLabel];
  [v6 setTextAlignment:1];

  [v2 setContentVerticalAlignment:0];
  v7 = [v2 titleLabel];
  v8 = +[VTUIStyle sharedStyle];
  v9 = [v8 secondaryButtonFont];
  [v7 setFont:v9];

  return v2;
}

+ (id)_vtuiProximityButtonWithSecondaryStyle:(BOOL)a3
{
  v4 = [VTUIButton buttonWithType:1];
  v5 = [v4 titleLabel];
  [v5 setLineBreakMode:0];

  v6 = [v4 titleLabel];
  [v6 setNumberOfLines:0];

  v7 = [v4 titleLabel];
  [v7 setTextAlignment:1];

  [v4 setContentVerticalAlignment:0];
  v8 = [v4 titleLabel];
  v9 = +[VTUIStyle sharedStyle];
  v10 = [v9 secondaryButtonFont];
  [v8 setFont:v10];

  if (!+[VTUIFeatureFlags isNaturalUIEnabled]|| a3)
  {
    v11 = [MEMORY[0x277D75348] systemBlueColor];
    [v4 setTitleColor:v11 forState:0];
  }

  else
  {
    v11 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    [v4 setConfiguration:v11];
  }

  return v4;
}

+ (id)vtuiBackgroundButtonImageWithColor:(id)a3
{
  v3 = a3;
  v9.width = 26.0;
  v9.height = 26.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [v3 set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 26.0, 26.0, 13.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{13.0, 13.0, 13.0, 13.0}];

  return v6;
}

+ (id)_vtuiProximityBackgroundButtonImageWithColor:(id)a3
{
  v3 = a3;
  v9.width = 16.0;
  v9.height = 16.0;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  [v3 set];

  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, 16.0, 16.0, 8.0}];
  [v4 fill];
  v5 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v6 = [v5 resizableImageWithCapInsets:{8.0, 8.0, 8.0, 8.0}];

  return v6;
}

- (VTUIButton)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = VTUIButton;
  v3 = [(VTUIButton *)&v8 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(VTUIButton *)v3 titleLabel];
    [v5 setNumberOfLines:0];

    v6 = [(VTUIButton *)v4 titleLabel];
    [v6 setLineBreakMode:0];
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(VTUIButton *)self titleLabel];
  [v2 intrinsicContentSize];
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
  v3 = [(VTUIButton *)self titleLabel];
  v4 = [(VTUIButton *)self titleLabel];
  [v4 frame];
  [v3 setPreferredMaxLayoutWidth:CGRectGetWidth(v6)];

  v5.receiver = self;
  v5.super_class = VTUIButton;
  [(VTUIButton *)&v5 layoutSubviews];
}

@end