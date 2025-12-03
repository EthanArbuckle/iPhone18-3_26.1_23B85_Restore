@interface UIPopoverButton
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (UIPopoverButton)initWithFrame:(CGRect)frame buttonType:(int64_t)type;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation UIPopoverButton

- (UIPopoverButton)initWithFrame:(CGRect)frame buttonType:(int64_t)type
{
  v14.receiver = self;
  v14.super_class = UIPopoverButton;
  v4 = [(UIButton *)&v14 initWithFrame:type, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    v5 = +[UIColor whiteColor];
    [(UIButton *)v4 setTitleColor:v5 forStates:0];

    v6 = [UIColor colorWithWhite:0.0 alpha:0.5];
    [(UIButton *)v4 setTitleShadowColor:v6 forState:0];

    [(UIButton *)v4 setAdjustsImageWhenDisabled:0];
    [(UIButton *)v4 setAdjustsImageWhenHighlighted:0];
    titleLabel = [(UIButton *)v4 titleLabel];
    [titleLabel setShadowOffset:{0.0, -1.0}];

    traitCollection = [(UIView *)v4 traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    v10 = 19.0;
    if (userInterfaceIdiom == 5)
    {
      v10 = 15.0;
    }

    v11 = [off_1E70ECC18 boldSystemFontOfSize:v10];
    titleLabel2 = [(UIButton *)v4 titleLabel];
    [titleLabel2 setFont:v11];
  }

  return v4;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = UIPopoverButton;
  [(UIButton *)&v8 setEnabled:?];
  if (![(UIButton *)self _isModernButton])
  {
    titleLabel = [(UIButton *)self titleLabel];
    v6 = titleLabel;
    v7 = 0.5;
    if (enabledCopy)
    {
      v7 = 1.0;
    }

    [titleLabel setAlpha:v7];
  }
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v12.receiver = self;
  v12.super_class = UIPopoverButton;
  [(UIButton *)&v12 _intrinsicSizeWithinSize:width, height];
  v9 = 22.0;
  if (userInterfaceIdiom == 5)
  {
    v9 = 16.0;
  }

  v10 = v9 + v8;
  v11 = 44.0;
  if (userInterfaceIdiom == 5)
  {
    v11 = 34.0;
  }

  result.height = v11;
  result.width = v10;
  return result;
}

@end