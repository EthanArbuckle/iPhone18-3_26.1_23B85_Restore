@interface PKPaymentSetupHeaderCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
@end

@implementation PKPaymentSetupHeaderCollectionViewCell

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  [(PKCollapsibleHeaderView *)self->_headerView removeFromSuperview];
  headerView = self->_headerView;
  self->_headerView = viewCopy;
  v6 = viewCopy;

  contentView = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
  [contentView addSubview:self->_headerView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PKPaymentSetupHeaderCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  superview = [(PKCollapsibleHeaderView *)self->_headerView superview];

  if (!superview)
  {
    contentView = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
    [contentView addSubview:self->_headerView];
  }

  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:v4, v6];
  headerView = self->_headerView;
  PKSizeAlignedInRect();

  [(PKCollapsibleHeaderView *)headerView setFrame:?];
}

@end