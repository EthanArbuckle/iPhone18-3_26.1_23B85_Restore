@interface STSRootView
- (STSRootView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInsets;
- (void)_setupView;
- (void)awakeFromNib;
- (void)setContentInsets:(UIEdgeInsets)insets;
- (void)setContentView:(id)view;
@end

@implementation STSRootView

- (STSRootView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = STSRootView;
  v3 = [(STSRootView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(STSRootView *)v3 _setupView];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = STSRootView;
  [(STSRootView *)&v3 awakeFromNib];
  [(STSRootView *)self _setupView];
}

- (void)_setupView
{
  [(STSRootView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  sts_defaultBackgroundColor = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
  [(STSRootView *)self setBackgroundColor:sts_defaultBackgroundColor];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    superview = [(UIView *)self->_contentView superview];
    v8 = [superview isEqual:self];

    if ((v8 & 1) == 0)
    {
      [(STSRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSRootView *)self setNeedsLayout];
    viewCopy = v9;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(STSRootView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end