@interface _UIAlertControllerModernTVBackgroundView
+ (CGSize)backgroundInsetAmount;
+ (id)newBackgroundVisualEffectInAlertGroup;
- (_UIAlertControllerModernTVBackgroundView)initWithFrame:(CGRect)a3;
- (void)_configurePlatterHairline;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)a3;
@end

@implementation _UIAlertControllerModernTVBackgroundView

+ (CGSize)backgroundInsetAmount
{
  v2 = 32.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)newBackgroundVisualEffectInAlertGroup
{
  v2 = objc_alloc_init(UIVisualEffectView);
  if (_UISolariumEnabled())
  {
    v3 = 8;
  }

  else
  {
    v3 = 5002;
  }

  v4 = [UIBlurEffect effectWithStyle:v3];
  [(UIVisualEffectView *)v2 setEffect:v4];
  [(UIVisualEffectView *)v2 _setGroupName:@"_UIAlertControllerModernBackgroundEffectView"];

  return v2;
}

- (_UIAlertControllerModernTVBackgroundView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = _UIAlertControllerModernTVBackgroundView;
  v3 = [(UIView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3 && [objc_opt_class() wantsVisualEffectView])
  {
    v4 = objc_alloc_init(UIVisualEffectView);
    if (_UISolariumEnabled())
    {
      v5 = 8;
    }

    else
    {
      v5 = 5002;
    }

    v6 = [UIBlurEffect effectWithStyle:v5];
    [(UIVisualEffectView *)v4 setEffect:v6];
    [(UIVisualEffectView *)v4 _setGroupName:@"_UIAlertControllerModernBackgroundEffectView"];

    [(UIView *)v4 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(UIView *)v3 bounds];
    [(UIView *)v4 setFrame:?];
    [(UIView *)v4 setAutoresizingMask:18];
    [(UIView *)v3 addSubview:v4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIAlertControllerModernTVBackgroundView;
  [(UIView *)&v3 layoutSubviews];
  [(_UIAlertControllerModernTVBackgroundView *)self _configurePlatterHairline];
}

- (void)_configurePlatterHairline
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (_UIInternalPreferenceUsesDefault_1(&unk_1ED48B638, @"TVAlert_DarkModeBackgroundHairlineAlpha"))
  {
    v5 = 0.1;
  }

  else
  {
    v5 = *&qword_1ED48B640;
  }

  v6 = v4 == 1000 || v4 == 2;
  if (v6 && v5 > 0.0)
  {
    v7 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_956, @"TVAlert_DarkModeBackgroundHairlineWhite");
    v8 = *&qword_1ED48B630;
    if (v7)
    {
      v8 = 1.0;
    }

    v9 = [UIColor colorWithWhite:v8 alpha:v5];
    v10 = [v9 CGColor];
    v11 = [(UIView *)self layer];
    [v11 setBorderColor:v10];

    [objc_opt_class() platterHairlineWidth];
    v13 = v12;
  }

  else
  {
    v14 = [(UIView *)self layer];
    [v14 setBorderColor:0];

    v13 = 0.0;
  }

  v15 = [(UIView *)self layer];
  [v15 setBorderWidth:v13];
}

- (void)setCornerRadius:(double)a3
{
  [(UIView *)self setClipsToBounds:1];
  v5 = [(UIView *)self layer];
  [v5 setCornerRadius:a3];

  v6 = [(UIView *)self layer];
  [v6 setCornerCurve:*MEMORY[0x1E69796E8]];
}

@end