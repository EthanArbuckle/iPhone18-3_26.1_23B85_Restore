@interface PKTransactionHistoryPeerPaymentHeaderCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKTransactionHistoryPeerPaymentHeaderCell)initWithFrame:(CGRect)a3;
- (void)configureWithPeerPaymentCounterpartHandle:(id)a3 contact:(id)a4;
- (void)layoutSubviews;
@end

@implementation PKTransactionHistoryPeerPaymentHeaderCell

- (PKTransactionHistoryPeerPaymentHeaderCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PKTransactionHistoryPeerPaymentHeaderCell;
  v3 = [(PKDashboardCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
    headerView = v3->_headerView;
    v3->_headerView = v4;

    v6 = [(PKTransactionHistoryPeerPaymentHeaderCell *)v3 contentView];
    [v6 addSubview:v3->_headerView];

    [(PKDashboardCollectionViewCell *)v3 setWantsCustomAppearance:1];
  }

  return v3;
}

- (void)configureWithPeerPaymentCounterpartHandle:(id)a3 contact:(id)a4
{
  headerView = self->_headerView;
  v7 = a3;
  [(PKAvatarHeaderView *)headerView setContact:a4];
  [(PKAvatarHeaderView *)self->_headerView setCounterpartHandle:v7];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PKTransactionHistoryPeerPaymentHeaderCell;
  [(PKDashboardCollectionViewCell *)&v5 layoutSubviews];
  headerView = self->_headerView;
  v4 = [(PKTransactionHistoryPeerPaymentHeaderCell *)self contentView];
  [v4 bounds];
  [(PKAvatarHeaderView *)headerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(PKAvatarHeaderView *)self->_headerView sizeThatFits:a3.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

@end