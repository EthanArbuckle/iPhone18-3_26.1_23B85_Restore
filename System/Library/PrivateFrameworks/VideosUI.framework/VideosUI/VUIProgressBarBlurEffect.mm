@interface VUIProgressBarBlurEffect
- (id)effectSettings;
@end

@implementation VUIProgressBarBlurEffect

- (id)effectSettings
{
  v5.receiver = self;
  v5.super_class = VUIProgressBarBlurEffect;
  effectSettings = [(UIBlurEffect *)&v5 effectSettings];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [effectSettings setColorTint:whiteColor];

  [effectSettings setColorTintAlpha:0.25];
  [effectSettings setSaturationDeltaFactor:1.6];
  [effectSettings setBlurRadius:30.0];

  return effectSettings;
}

@end