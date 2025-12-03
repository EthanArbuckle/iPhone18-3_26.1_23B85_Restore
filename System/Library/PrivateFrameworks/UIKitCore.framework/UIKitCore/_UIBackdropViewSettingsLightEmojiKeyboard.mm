@interface _UIBackdropViewSettingsLightEmojiKeyboard
- (id)_defaultColorTintColorWithOpacity:(double)opacity;
@end

@implementation _UIBackdropViewSettingsLightEmojiKeyboard

- (id)_defaultColorTintColorWithOpacity:(double)opacity
{
  if ([(_UIBackdropViewSettings *)self graphicsQuality]== 40 || [(_UIBackdropViewSettings *)self graphicsQuality]== 10)
  {
    v5 = 0.901960784;
    v6 = 0.917647059;
    v7 = 0.937254902;
  }

  else
  {
    v5 = 0.949019608;
    v6 = 0.956862745;
    v7 = 0.968627451;
  }

  v8 = [UIColor colorWithRed:v5 green:v6 blue:v7 alpha:opacity];

  return v8;
}

@end