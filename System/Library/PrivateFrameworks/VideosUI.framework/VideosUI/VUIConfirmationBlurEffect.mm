@interface VUIConfirmationBlurEffect
+ (id)effectWithStyle:(int64_t)style;
- (id)effectSettings;
@end

@implementation VUIConfirmationBlurEffect

+ (id)effectWithStyle:(int64_t)style
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___VUIConfirmationBlurEffect;
  v3 = objc_msgSendSuper2(&v5, sel_effectWithStyle_, style);

  return v3;
}

- (id)effectSettings
{
  v7.receiver = self;
  v7.super_class = VUIConfirmationBlurEffect;
  effectSettings = [(UIBlurEffect *)&v7 effectSettings];
  [effectSettings setScale:0.5];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = 0.0;
    [effectSettings setBlurRadius:0.0];
    v4 = 0.4;
  }

  else
  {
    [effectSettings setBlurRadius:8.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [effectSettings setColorTint:blackColor];

    [effectSettings setColorTintAlpha:0.2];
    v3 = 0.025;
    v4 = 0.1;
  }

  [effectSettings setGrayscaleTintLevel:0.0];
  [effectSettings setGrayscaleTintAlpha:v4];
  [effectSettings setZoom:v3];

  return effectSettings;
}

@end