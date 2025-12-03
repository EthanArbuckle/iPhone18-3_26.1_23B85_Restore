@interface PKTransactionHistoryPeerPaymentHeaderCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTransactionHistoryPeerPaymentHeaderCell)initWithFrame:(CGRect)frame;
- (void)configureWithPeerPaymentCounterpartHandle:(id)handle contact:(id)contact;
- (void)layoutSubviews;
@end

@implementation PKTransactionHistoryPeerPaymentHeaderCell

- (PKTransactionHistoryPeerPaymentHeaderCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryPeerPaymentHeaderCell;
  v3 = [(PKDashboardCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
    headerView = v3->_headerView;
    v3->_headerView = v4;

    contentView = [(PKTransactionHistoryPeerPaymentHeaderCell *)v3 contentView];
    [contentView addSubview:v3->_headerView];

    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
  }

  return v3;
}

- (void)configureWithPeerPaymentCounterpartHandle:(id)handle contact:(id)contact
{
  headerView = self->_headerView;
  handleCopy = handle;
  [(PKAvatarHeaderView *)headerView setContact:contact];
  [(PKAvatarHeaderView *)self->_headerView setCounterpartHandle:handleCopy];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryPeerPaymentHeaderCell;
  [(PKDashboardCollectionViewCell *)&v5 layoutSubviews];
  headerView = self->_headerView;
  contentView = [(PKTransactionHistoryPeerPaymentHeaderCell *)self contentView];
  [contentView bounds];
  [(PKAvatarHeaderView *)headerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAvatarHeaderView *)self->_headerView sizeThatFits:fits.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

@end