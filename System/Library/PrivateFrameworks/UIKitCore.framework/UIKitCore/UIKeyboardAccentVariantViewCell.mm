@interface UIKeyboardAccentVariantViewCell
- (CGSize)intrinsicContentSize;
- (UIKeyboardAccentVariantViewCell)initWithFrame:(CGRect)a3;
@end

@implementation UIKeyboardAccentVariantViewCell

- (UIKeyboardAccentVariantViewCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = UIKeyboardAccentVariantViewCell;
  v3 = [(UIView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UILabel alloc] initWithFrame:4.0, 4.0, 32.0, 32.0];
    labelView = v3->_labelView;
    v3->_labelView = v4;

    v6 = [off_1E70ECC18 systemFontOfSize:17.0];
    [(UILabel *)v3->_labelView setFont:v6];

    [(UILabel *)v3->_labelView setTextAlignment:1];
    v7 = [[UIView alloc] initWithFrame:0.0, 0.0, 40.0, 40.0];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v7;

    [(UILabel *)v3->_labelView setFrame:4.0, 4.0, 32.0, 32.0];
    [(UIView *)v3->_backgroundView setHidden:0];
    v9 = +[UIColor whiteColor];
    [(UIView *)v3->_backgroundView setBackgroundColor:v9];

    v10 = [(UIView *)v3->_backgroundView layer];
    [v10 setCornerRadius:20.0];

    v11 = [(UIView *)v3->_backgroundView layer];
    [v11 setOpacity:0.0];

    [(UIView *)v3 addSubview:v3->_backgroundView];
    [(UIView *)v3 addSubview:v3->_labelView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = 40.0;
  v3 = 40.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end