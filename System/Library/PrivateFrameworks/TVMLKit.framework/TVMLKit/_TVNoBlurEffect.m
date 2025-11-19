@interface _TVNoBlurEffect
- (id)effectSettings;
@end

@implementation _TVNoBlurEffect

- (id)effectSettings
{
  v4.receiver = self;
  v4.super_class = _TVNoBlurEffect;
  v2 = [(UIBlurEffect *)&v4 effectSettings];
  [v2 setBlurRadius:0.0];
  [v2 setUsesBackdropEffectView:0];

  return v2;
}

@end