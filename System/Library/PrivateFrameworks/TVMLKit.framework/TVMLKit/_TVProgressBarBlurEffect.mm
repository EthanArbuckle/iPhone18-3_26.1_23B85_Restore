@interface _TVProgressBarBlurEffect
- (id)effectSettings;
@end

@implementation _TVProgressBarBlurEffect

- (id)effectSettings
{
  v5.receiver = self;
  v5.super_class = _TVProgressBarBlurEffect;
  effectSettings = [(UIBlurEffect *)&v5 effectSettings];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [effectSettings setColorTint:whiteColor];

  [effectSettings setColorTintAlpha:0.25];
  [effectSettings setSaturationDeltaFactor:1.6];
  [effectSettings setBlurRadius:30.0];

  return effectSettings;
}

@end