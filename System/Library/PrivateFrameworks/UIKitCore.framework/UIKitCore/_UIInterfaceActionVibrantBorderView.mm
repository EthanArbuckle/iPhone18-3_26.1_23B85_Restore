@interface _UIInterfaceActionVibrantBorderView
+ (id)newWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius;
- (void)_setupEffectViewWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius;
@end

@implementation _UIInterfaceActionVibrantBorderView

+ (id)newWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6;
  if (position)
  {
    layer = [v6 layer];
    [layer setMaskedCorners:position];

    [v7 _setContinuousCornerRadius:radius];
  }

  [v7 _setupEffectViewWithRoundedCornerPosition:position continuousCornerRadius:radius];
  return v7;
}

- (void)_setupEffectViewWithRoundedCornerPosition:(unint64_t)position continuousCornerRadius:(double)radius
{
  v11 = [UIBlurEffect effectWithStyle:1200];
  v7 = [UIVibrancyEffect _effectForBlurEffect:v11 vibrancyStyle:120];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v7];
  v9 = +[UIColor whiteColor];
  contentView = [(UIVisualEffectView *)v8 contentView];
  [contentView setBackgroundColor:v9];

  [(UIVisualEffectView *)v8 _setCornerRadius:1 continuous:position maskedCorners:radius];
  [(UIView *)self bounds];
  [(UIView *)v8 setFrame:?];
  [(UIView *)v8 setAutoresizingMask:18];
  [(UIView *)self addSubview:v8];
}

@end