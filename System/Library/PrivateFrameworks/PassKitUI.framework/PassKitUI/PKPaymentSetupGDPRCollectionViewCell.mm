@interface PKPaymentSetupGDPRCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)setprivacyView:(id)view;
@end

@implementation PKPaymentSetupGDPRCollectionViewCell

- (void)setprivacyView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_privacyView removeFromSuperview];
  privacyView = self->_privacyView;
  self->_privacyView = viewCopy;
  v6 = viewCopy;

  contentView = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
  [contentView addSubview:self->_privacyView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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
  superview = [(UIView *)self->_privacyView superview];

  if (!superview)
  {
    contentView = [(PKPaymentSetupGDPRCollectionViewCell *)self contentView];
    [contentView addSubview:self->_privacyView];
  }

  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [(UIView *)self->_privacyView systemLayoutSizeFittingSize:v4 withHorizontalFittingPriority:v6 verticalFittingPriority:v8, v9];
  privacyView = self->_privacyView;
  PKSizeAlignedInRect();

  [(UIView *)privacyView setFrame:?];
}

@end