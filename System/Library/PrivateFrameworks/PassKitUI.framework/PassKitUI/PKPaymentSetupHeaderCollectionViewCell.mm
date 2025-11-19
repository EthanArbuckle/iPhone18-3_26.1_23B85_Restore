@interface PKPaymentSetupHeaderCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setHeaderView:(id)a3;
@end

@implementation PKPaymentSetupHeaderCollectionViewCell

- (void)setHeaderView:(id)a3
{
  v4 = a3;
  [(PKCollapsibleHeaderView *)self->_headerView removeFromSuperview];
  headerView = self->_headerView;
  self->_headerView = v4;
  v6 = v4;

  v7 = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
  [v7 addSubview:self->_headerView];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  [(PKPaymentSetupHeaderCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(PKCollapsibleHeaderView *)self->_headerView superview];

  if (!v7)
  {
    v8 = [(PKPaymentSetupHeaderCollectionViewCell *)self contentView];
    [v8 addSubview:self->_headerView];
  }

  [(PKCollapsibleHeaderView *)self->_headerView sizeThatFits:v4, v6];
  headerView = self->_headerView;
  PKSizeAlignedInRect();

  [(PKCollapsibleHeaderView *)headerView setFrame:?];
}

@end