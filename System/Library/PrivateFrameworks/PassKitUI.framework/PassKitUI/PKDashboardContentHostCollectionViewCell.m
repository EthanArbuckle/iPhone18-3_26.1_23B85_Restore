@interface PKDashboardContentHostCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKDashboardContentHostCollectionViewCell)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)hostedContentInset;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHostedContentInset:(UIEdgeInsets)a3;
- (void)setHostedContentView:(id)a3;
@end

@implementation PKDashboardContentHostCollectionViewCell

- (PKDashboardContentHostCollectionViewCell)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKDashboardContentHostCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
  }

  return v4;
}

- (void)setHostedContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hostedContentInset.top, v3), vceqq_f64(*&self->_hostedContentInset.bottom, v4)))) & 1) == 0)
  {
    self->_hostedContentInset = a3;
    [(PKDashboardContentHostCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setHostedContentView:(id)a3
{
  v4 = a3;
  hostedContentView = self->_hostedContentView;
  if (hostedContentView)
  {
    [(UIView *)hostedContentView removeFromSuperview];
    v6 = self->_hostedContentView;
  }

  else
  {
    v6 = 0;
  }

  self->_hostedContentView = v4;
  v7 = v4;

  v8 = [(PKDashboardContentHostCollectionViewCell *)self contentView];
  [v8 addSubview:v7];

  [(PKDashboardContentHostCollectionViewCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKDashboardContentHostCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v7 layoutSubviews];
  if (self->_hostedContentView)
  {
    [(PKDashboardContentHostCollectionViewCell *)self bounds];
    [(UIView *)self->_hostedContentView setFrame:v3 + self->_hostedContentInset.left, v4 + self->_hostedContentInset.top, v5 - (self->_hostedContentInset.left + self->_hostedContentInset.right), v6 - (self->_hostedContentInset.top + self->_hostedContentInset.bottom)];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIView *)self->_hostedContentView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKDashboardContentHostCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  if (objc_opt_respondsToSelector())
  {
    [(UIView *)self->_hostedContentView performSelector:sel_prepareForReuse];
  }
}

- (UIEdgeInsets)hostedContentInset
{
  top = self->_hostedContentInset.top;
  left = self->_hostedContentInset.left;
  bottom = self->_hostedContentInset.bottom;
  right = self->_hostedContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end