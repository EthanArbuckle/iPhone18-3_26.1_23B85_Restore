@interface _UINoBlurEffect
- (id)effectSettings;
@end

@implementation _UINoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = _UINoBlurEffect;
  effectSettings = [(UIBlurEffect *)&v4 effectSettings];
  [effectSettings setBlurRadius:0.0];
  [effectSettings setUsesBackdropEffectView:0];

  return effectSettings;
}

@end