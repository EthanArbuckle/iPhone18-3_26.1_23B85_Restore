@interface _TVCommonSenseFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TVCommonSenseFooterView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setLogoView:(id)view;
@end

@implementation _TVCommonSenseFooterView

- (_TVCommonSenseFooterView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = _TVCommonSenseFooterView;
  v3 = [(_TVCommonSenseFooterView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setLogoView:(id)view
{
  viewCopy = view;
  logoView = self->_logoView;
  if (logoView != viewCopy)
  {
    v8 = viewCopy;
    if (logoView)
    {
      [(UIView *)logoView removeFromSuperview];
      v7 = self->_logoView;
      self->_logoView = 0;

      viewCopy = v8;
    }

    if (viewCopy)
    {
      objc_storeStrong(&self->_logoView, view);
      [(_TVCommonSenseFooterView *)self addSubview:self->_logoView];
    }

    logoView = [(_TVCommonSenseFooterView *)self setNeedsLayout];
    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](logoView, viewCopy);
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UIView *)self->_logoView sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  v5 = v4 + 1.0;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

@end