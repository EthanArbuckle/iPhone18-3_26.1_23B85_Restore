@interface _UIPopoverBackgroundVisualEffect
+ (id)effectWithStyle:(int64_t)style tint:(id)tint;
- (id)copyWithZone:(_NSZone *)zone;
- (id)effectSettings;
@end

@implementation _UIPopoverBackgroundVisualEffect

+ (id)effectWithStyle:(int64_t)style tint:(id)tint
{
  tintCopy = tint;
  v7 = [self _effectWithStyle:style tintColor:tintCopy invertAutomaticStyle:0];
  v8 = v7;
  if (tintCopy)
  {
    v10 = 0.0;
    [tintCopy getRed:0 green:0 blue:0 alpha:&v10];
    v8[16] = v10 < 1.0;
  }

  else
  {
    *(v7 + 16) = 1;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIPopoverBackgroundVisualEffect;
  result = [(UIBlurEffect *)&v5 copyWithZone:zone];
  *(result + 16) = self->_tintColorIsTranslucent;
  return result;
}

- (id)effectSettings
{
  v7.receiver = self;
  v7.super_class = _UIPopoverBackgroundVisualEffect;
  effectSettings = [(UIBlurEffect *)&v7 effectSettings];
  _tintColor = [(UIBlurEffect *)self _tintColor];

  if (_tintColor)
  {
    [effectSettings setUsesColorTintView:1];
    _tintColor2 = [(UIBlurEffect *)self _tintColor];
    [effectSettings setColorTint:_tintColor2];

    [effectSettings setGrayscaleTintAlpha:0.0];
    [effectSettings setUsesBackdropEffectView:self->_tintColorIsTranslucent];
  }

  return effectSettings;
}

@end