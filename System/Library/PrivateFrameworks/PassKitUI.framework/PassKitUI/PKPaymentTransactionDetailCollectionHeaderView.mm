@interface PKPaymentTransactionDetailCollectionHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionDetailCollectionHeaderView)initWithFrame:(CGRect)frame;
- (PKPaymentTransactionDetailHeaderView)headerView;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKPaymentTransactionDetailCollectionHeaderView

- (PKPaymentTransactionDetailCollectionHeaderView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailCollectionHeaderView;
  return [(PKPaymentTransactionDetailCollectionHeaderView *)&v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
}

- (PKPaymentTransactionDetailHeaderView)headerView
{
  headerView = self->_headerView;
  if (!headerView)
  {
    v4 = objc_alloc_init(PKPaymentTransactionDetailHeaderView);
    v5 = self->_headerView;
    self->_headerView = v4;

    [(PKPaymentTransactionDetailHeaderView *)self->_headerView setInBridge:PKBridgeUsesDarkAppearance()];
    contentView = [(PKPaymentTransactionDetailCollectionHeaderView *)self contentView];
    [contentView addSubview:self->_headerView];

    headerView = self->_headerView;
  }

  return headerView;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailCollectionHeaderView;
  [(PKPaymentTransactionDetailCollectionHeaderView *)&v4 layoutSubviews];
  contentView = [(PKPaymentTransactionDetailCollectionHeaderView *)self contentView];
  [contentView bounds];
  [(PKPaymentTransactionDetailCollectionHeaderView *)self _layoutWithBounds:0 isTemplateLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPaymentTransactionDetailCollectionHeaderView *)self _layoutWithBounds:1 isTemplateLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKPaymentTransactionDetailHeaderView *)self->_headerView sizeThatFits:bounds.size.width, 1.79769313e308];
  v11 = v10;
  if (!layout)
  {
    [(PKPaymentTransactionDetailHeaderView *)self->_headerView setFrame:x, y, width, height];
  }

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailCollectionHeaderView;
  [(PKPaymentTransactionDetailCollectionHeaderView *)&v4 prepareForReuse];
  [(PKPaymentTransactionDetailHeaderView *)self->_headerView removeFromSuperview];
  headerView = self->_headerView;
  self->_headerView = 0;
}

@end