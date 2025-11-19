@interface UIPopoverButton
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIPopoverButton)initWithFrame:(CGRect)a3 buttonType:(int64_t)a4;
- (void)setEnabled:(BOOL)a3;
@end

@implementation UIPopoverButton

- (UIPopoverButton)initWithFrame:(CGRect)a3 buttonType:(int64_t)a4
{
  v14.receiver = self;
  v14.super_class = UIPopoverButton;
  v4 = [(UIButton *)&v14 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = +[UIColor whiteColor];
    [(UIButton *)v4 setTitleColor:v5 forStates:0];

    v6 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(UIButton *)v4 setTitleShadowColor:v6 forState:0];

    [(UIButton *)v4 setAdjustsImageWhenDisabled:0];
    [(UIButton *)v4 setAdjustsImageWhenHighlighted:0];
    v7 = [(UIButton *)v4 titleLabel];
    [v7 setShadowOffset:{0.0, -1.0}];

    v8 = [(UIView *)v4 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    v10 = 19.0;
    if (v9 == 5)
    {
      v10 = 15.0;
    }

    v11 = [off_1E70ECC18 boldSystemFontOfSize:v10];
    v12 = [(UIButton *)v4 titleLabel];
    [v12 setFont:v11];
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = UIPopoverButton;
  [(UIButton *)&v8 setEnabled:?];
  if (![(UIButton *)self _isModernButton])
  {
    v5 = [(UIButton *)self titleLabel];
    v6 = v5;
    v7 = 0.5;
    if (v3)
    {
      v7 = 1.0;
    }

    [v5 setAlpha:v7];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(UIView *)self traitCollection];
  v7 = [v6 userInterfaceIdiom];

  v12.receiver = self;
  v12.super_class = UIPopoverButton;
  [(UIButton *)&v12 _intrinsicSizeWithinSize:width, height];
  v9 = 22.0;
  if (v7 == 5)
  {
    v9 = 16.0;
  }

  v10 = v9 + v8;
  v11 = 44.0;
  if (v7 == 5)
  {
    v11 = 34.0;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end