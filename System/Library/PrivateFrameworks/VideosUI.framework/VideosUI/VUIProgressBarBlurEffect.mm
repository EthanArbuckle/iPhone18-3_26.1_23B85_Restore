@interface VUIProgressBarBlurEffect
- (id)effectSettings;
@end

@implementation VUIProgressBarBlurEffect

- (id)effectSettings
{
  v5.receiver = self;
  v5.super_class = VUIProgressBarBlurEffect;
  v2 = [(UIBlurEffect *)&v5 effectSettings];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setColorTint:v3];

  [v2 setColorTintAlpha:0.25];
  [v2 setSaturationDeltaFactor:1.6];
  [v2 setBlurRadius:30.0];

  return v2;
}

@end