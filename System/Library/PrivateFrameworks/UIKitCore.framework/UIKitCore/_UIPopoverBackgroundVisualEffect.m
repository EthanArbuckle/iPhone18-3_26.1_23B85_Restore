@interface _UIPopoverBackgroundVisualEffect
+ (id)effectWithStyle:(int64_t)a3 tint:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)effectSettings;
@end

@implementation _UIPopoverBackgroundVisualEffect

+ (id)effectWithStyle:(int64_t)a3 tint:(id)a4
{
  v6 = a4;
  v7 = [a1 _effectWithStyle:a3 tintColor:v6 invertAutomaticStyle:0];
  v8 = v7;
  if (v6)
  {
    v10 = 0.0;
    [v6 getRed:0 green:0 blue:0 alpha:&v10];
    v8[16] = v10 < 1.0;
  }

  else
  {
    *(v7 + 16) = 1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIPopoverBackgroundVisualEffect;
  result = [(UIBlurEffect *)&v5 copyWithZone:a3];
  *(result + 16) = self->_tintColorIsTranslucent;
  return result;
}

- (id)effectSettings
{
  v7.receiver = self;
  v7.super_class = _UIPopoverBackgroundVisualEffect;
  v3 = [(UIBlurEffect *)&v7 effectSettings];
  v4 = [(UIBlurEffect *)self _tintColor];

  if (v4)
  {
    [v3 setUsesColorTintView:1];
    v5 = [(UIBlurEffect *)self _tintColor];
    [v3 setColorTint:v5];

    [v3 setGrayscaleTintAlpha:0.0];
    [v3 setUsesBackdropEffectView:self->_tintColorIsTranslucent];
  }

  return v3;
}

@end