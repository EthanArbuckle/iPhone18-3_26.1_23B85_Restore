@interface _UIAlertControllerGlassTVBackgroundView
+ (CGSize)backgroundInsetAmount;
- (_UIAlertControllerGlassTVBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation _UIAlertControllerGlassTVBackgroundView

+ (CGSize)backgroundInsetAmount
{
  v2 = 31.0;
  v3 = 31.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_UIAlertControllerGlassTVBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIAlertControllerGlassTVBackgroundView;
  v3 = [(_UIAlertControllerModernTVBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3 && [objc_opt_class() wantsGlassEffectView])
  {
    v4 = [[_UIViewGlass alloc] initWithVariant:0];
    [(UIView *)v3 _setBackground:v4];
  }

  return v3;
}

@end