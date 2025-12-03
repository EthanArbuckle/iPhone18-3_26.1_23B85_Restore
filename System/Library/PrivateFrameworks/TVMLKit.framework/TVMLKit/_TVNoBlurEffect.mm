@interface _TVNoBlurEffect
- (id)effectSettings;
@end

@implementation _TVNoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = _TVNoBlurEffect;
  effectSettings = [(UIBlurEffect *)&v4 effectSettings];
  [effectSettings setBlurRadius:0.0];
  [effectSettings setUsesBackdropEffectView:0];

  return effectSettings;
}

@end