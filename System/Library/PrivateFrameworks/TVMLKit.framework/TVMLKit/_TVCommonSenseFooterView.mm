@interface _TVCommonSenseFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TVCommonSenseFooterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLogoView:(id)a3;
@end

@implementation _TVCommonSenseFooterView

- (_TVCommonSenseFooterView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = _TVCommonSenseFooterView;
  v3 = [(_TVCommonSenseFooterView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_TVCommonSenseFooterView *)v3 setBackgroundColor:0];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v5;

    v7 = v4->_separatorView;
    v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.1];
    [(UIView *)v7 setBackgroundColor:v8];

    [(_TVCommonSenseFooterView *)v4 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)setLogoView:(id)a3
{
  v5 = a3;
  logoView = self->_logoView;
  if (logoView != v5)
  {
    v8 = v5;
    if (logoView)
    {
      [(UIView *)logoView removeFromSuperview];
      v7 = self->_logoView;
      self->_logoView = 0;

      v5 = v8;
    }

    if (v5)
    {
      objc_storeStrong(&self->_logoView, a3);
      [(_TVCommonSenseFooterView *)self addSubview:self->_logoView];
    }

    logoView = [(_TVCommonSenseFooterView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](logoView, v5);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _TVCommonSenseFooterView;
  [(_TVCommonSenseFooterView *)&v5 layoutSubviews];
  [(_TVCommonSenseFooterView *)self bounds];
  v4 = v3;
  [(UIView *)self->_separatorView setFrame:0.0, 0.0];
  [(UIView *)self->_logoView tv_margin];
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v6.size.height = 1.0;
  v6.size.width = v4;
  CGRectGetHeight(v6);
  [(UIView *)self->_logoView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  UIRectCenteredXInRect();
  [(UIView *)self->_logoView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIView *)self->_logoView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v5 = v4 + 1.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end