@interface PKDashboardContentHostCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardContentHostCollectionViewCell)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)hostedContentInset;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setHostedContentInset:(UIEdgeInsets)inset;
- (void)setHostedContentView:(id)view;
@end

@implementation PKDashboardContentHostCollectionViewCell

- (PKDashboardContentHostCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKDashboardContentHostCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
  }

  return v4;
}

- (void)setHostedContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_hostedContentInset.top, v3), vceqq_f64(*&self->_hostedContentInset.bottom, v4)))) & 1) == 0)
  {
    self->_hostedContentInset = inset;
    [(PKDashboardContentHostCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setHostedContentView:(id)view
{
  viewCopy = view;
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

  self->_hostedContentView = viewCopy;
  v7 = viewCopy;

  contentView = [(PKDashboardContentHostCollectionViewCell *)self contentView];
  [contentView addSubview:v7];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIView *)self->_hostedContentView sizeThatFits:fits.width, fits.height];
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