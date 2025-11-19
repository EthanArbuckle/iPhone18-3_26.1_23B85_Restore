@interface SMUNoBlurEffect
- (id)effectSettings;
@end

@implementation SMUNoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = SMUNoBlurEffect;
  v2 = [(UIBlurEffect *)&v4 effectSettings];
  [v2 setBlurRadius:0.0];
  [v2 setUsesBackdropEffectView:0];

  return v2;
}

@end