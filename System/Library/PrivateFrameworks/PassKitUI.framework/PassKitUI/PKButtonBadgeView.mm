@interface PKButtonBadgeView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation PKButtonBadgeView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKButtonBadgeView;
  [(PKButtonBadgeView *)&v12 layoutSubviews];
  [(PKButtonBadgeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKButtonBadgeView *)self layer];
  [v11 setCornerRadius:{fmin(v8, v10) * 0.5}];

  [(UILabel *)self->_label setFrame:v4 + 4.0, v6 + 4.0, v8 + -8.0, v10 + -8.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_label pkui_sizeThatFits:1.79769313e308, 1.79769313e308];
  if (v3 < v4)
  {
    v3 = v4;
  }

  v5 = v3 + 4.0 + 4.0;
  v6 = v4 + 4.0 + 4.0;
  result.height = v6;
  result.width = v5;
  return result;
}

@end