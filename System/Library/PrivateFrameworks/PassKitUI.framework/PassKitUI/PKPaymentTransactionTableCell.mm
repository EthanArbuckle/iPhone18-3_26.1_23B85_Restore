@interface PKPaymentTransactionTableCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)additionalInsets;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation PKPaymentTransactionTableCell

- (PKPaymentTransactionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = PKPaymentTransactionTableCell;
  v4 = [(PKPaymentTransactionTableCell *)&v9 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(PKPaymentTransactionView);
    transactionView = v4->_transactionView;
    v4->_transactionView = v5;

    contentView = [(PKPaymentTransactionTableCell *)v4 contentView];
    [contentView addSubview:v4->_transactionView];

    [(PKPaymentTransactionTableCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKPaymentTransactionView *)self->_transactionView sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = PKPaymentTransactionTableCell;
  [(PKPaymentTransactionTableCell *)&v12 layoutSubviews];
  contentView = [(PKPaymentTransactionTableCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(PKPaymentTransactionView *)self->_transactionView setFrame:v5 + self->_additionalInsets.left, v7 + self->_additionalInsets.top, v9 - (self->_additionalInsets.left + self->_additionalInsets.right), v11 - (self->_additionalInsets.top + self->_additionalInsets.bottom)];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionTableCell;
  [(PKTableViewCell *)&v4 prepareForReuse];
  [(PKPaymentTransactionTableCell *)self setAccessoryType:0];
  identifier = self->_identifier;
  self->_identifier = 0;

  [(PKPaymentTransactionView *)self->_transactionView setPrimaryColor:0];
  [(PKPaymentTransactionView *)self->_transactionView setSecondaryColor:0];
  [(PKPaymentTransactionView *)self->_transactionView setPrimaryString:0];
  [(PKPaymentTransactionView *)self->_transactionView setSecondaryString:0];
  [(PKPaymentTransactionView *)self->_transactionView setTertiaryString:0];
  [(PKPaymentTransactionView *)self->_transactionView setTransactionValueAttributedText:0];
  [(PKPaymentTransactionView *)self->_transactionView setBadgeString:0];
  [(PKPaymentTransactionView *)self->_transactionView setShowsAvatarView:0];
  [(PKPaymentTransactionView *)self->_transactionView setShowsDisclosureView:0];
  [(PKPaymentTransactionView *)self->_transactionView setPrimaryImage:0];
  [(PKPaymentTransactionView *)self->_transactionView setAlpha:1.0];
}

- (UIEdgeInsets)additionalInsets
{
  top = self->_additionalInsets.top;
  left = self->_additionalInsets.left;
  bottom = self->_additionalInsets.bottom;
  right = self->_additionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end