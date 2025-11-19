@interface _UIInterfaceActionVibrantBorderView
+ (id)newWithRoundedCornerPosition:(unint64_t)a3 continuousCornerRadius:(double)a4;
- (void)_setupEffectViewWithRoundedCornerPosition:(unint64_t)a3 continuousCornerRadius:(double)a4;
@end

@implementation _UIInterfaceActionVibrantBorderView

+ (id)newWithRoundedCornerPosition:(unint64_t)a3 continuousCornerRadius:(double)a4
{
  v6 = objc_alloc_init(objc_opt_class());
  v7 = v6;
  if (a3)
  {
    v8 = [v6 layer];
    [v8 setMaskedCorners:a3];

    [v7 _setContinuousCornerRadius:a4];
  }

  [v7 _setupEffectViewWithRoundedCornerPosition:a3 continuousCornerRadius:a4];
  return v7;
}

- (void)_setupEffectViewWithRoundedCornerPosition:(unint64_t)a3 continuousCornerRadius:(double)a4
{
  v11 = [UIBlurEffect effectWithStyle:1200];
  v7 = [UIVibrancyEffect _effectForBlurEffect:v11 vibrancyStyle:120];
  v8 = [[UIVisualEffectView alloc] initWithEffect:v7];
  v9 = +[UIColor whiteColor];
  v10 = [(UIVisualEffectView *)v8 contentView];
  [v10 setBackgroundColor:v9];

  [(UIVisualEffectView *)v8 _setCornerRadius:1 continuous:a3 maskedCorners:a4];
  [(UIView *)self bounds];
  [(UIView *)v8 setFrame:?];
  [(UIView *)v8 setAutoresizingMask:18];
  [(UIView *)self addSubview:v8];
}

@end