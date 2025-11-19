@interface VUINoBlurEffect
- (id)effectSettings;
@end

@implementation VUINoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = VUINoBlurEffect;
  v2 = [(UIBlurEffect *)&v4 effectSettings];
  [v2 setBlurRadius:0.0];
  [v2 setUsesBackdropEffectView:0];

  return v2;
}

@end