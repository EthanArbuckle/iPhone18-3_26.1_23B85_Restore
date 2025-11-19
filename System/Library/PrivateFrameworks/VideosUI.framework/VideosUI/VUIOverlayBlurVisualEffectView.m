@interface VUIOverlayBlurVisualEffectView
+ (id)blurViewWithEffect:(int64_t)a3;
+ (id)overlayVisualEffect;
@end

@implementation VUIOverlayBlurVisualEffectView

+ (id)overlayVisualEffect
{
  v2 = objc_alloc(MEMORY[0x1E69DD298]);
  v3 = [_VUIBlurEffect effectWithStyle:4007];
  v4 = [v2 initWithEffect:v3];

  return v4;
}

+ (id)blurViewWithEffect:(int64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E69DD298]);
  v5 = [_VUIBlurEffect effectWithStyle:a3];
  v6 = [v4 initWithEffect:v5];

  return v6;
}

@end