@interface VUINoBlurEffect
- (id)effectSettings;
@end

@implementation VUINoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = VUINoBlurEffect;
  effectSettings = [(UIBlurEffect *)&v4 effectSettings];
  [effectSettings setBlurRadius:0.0];
  [effectSettings setUsesBackdropEffectView:0];

  return effectSettings;
}

@end