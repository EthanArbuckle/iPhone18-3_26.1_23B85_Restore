@interface STSRootView
- (STSRootView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (void)_setupView;
- (void)awakeFromNib;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setContentView:(id)a3;
@end

@implementation STSRootView

- (STSRootView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = STSRootView;
  v3 = [(STSRootView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [MEMORY[0x277D75348] sts_defaultBackgroundColor];
  [(STSRootView *)self setBackgroundColor:v3];
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = [(UIView *)self->_contentView superview];
    v8 = [v7 isEqual:self];

    if ((v8 & 1) == 0)
    {
      [(STSRootView *)self addSubview:self->_contentView];
    }

    contentView = [(STSRootView *)self setNeedsLayout];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](contentView, v5);
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInsets.top), vceqq_f64(v4, *&self->_contentInsets.bottom)))) & 1) == 0)
  {
    self->_contentInsets = a3;
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