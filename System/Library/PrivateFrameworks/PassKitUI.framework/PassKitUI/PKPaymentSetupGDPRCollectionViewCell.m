@interface PKPaymentSetupGDPRCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)setprivacyView:(id)a3;
@end

@implementation PKPaymentSetupGDPRCollectionViewCell

- (void)setprivacyView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_privacyView removeFromSuperview];
  privacyView = self->_privacyView;
  self->_privacyView = v4;
  v6 = v4;

  v7 = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
  [v7 addSubview:self->_privacyView];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIView *)self->_privacyView setNeedsLayout];
  [(UIView *)self->_privacyView layoutIfNeeded];
  privacyView = self->_privacyView;
  LODWORD(v7) = 1148846080;
  LODWORD(v8) = 1112014848;

  [(UIView *)privacyView systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v7, v8];
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  [(PKPaymentSetupGDPRCollectionViewCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(UIView *)self->_privacyView superview];

  if (!v7)
  {
    v10 = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
    [v10 addSubview:self->_privacyView];
  }

  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [(UIView *)self->_privacyView systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v6 verticalFittingPriority:v8, v9];
  privacyView = self->_privacyView;
  PKSizeAlignedInRect();

  [(UIView *)privacyView setFrame:?];
}

@end