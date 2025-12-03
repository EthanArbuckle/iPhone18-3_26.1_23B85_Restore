@interface PKPaymentTransactionCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation PKPaymentTransactionCollectionViewCell

- (PKPaymentTransactionCollectionViewCell)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = PKPaymentTransactionCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
    v6 = [v4 initWithImage:v5];
    multiselectImageView = v3->_multiselectImageView;
    v3->_multiselectImageView = v6;

    [(UIImageView *)v3->_multiselectImageView setFrame:0.0, 0.0, 25.6667, 25.6667];
    v8 = v3->_multiselectImageView;
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v8 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v3->_multiselectImageView setHidden:!v3->_isEditing];
    v10 = v3->_multiselectImageView;
    v11 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:3];
    [(UIImageView *)v10 setPreferredSymbolConfiguration:v11];

    v12 = objc_alloc_init(PKPaymentTransactionView);
    transactionView = v3->_transactionView;
    v3->_transactionView = v12;

    contentView = [(PKPaymentTransactionCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_multiselectImageView];

    contentView2 = [(PKPaymentTransactionCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_transactionView];

    contentView3 = [(PKPaymentTransactionCollectionViewCell *)v3 contentView];
    [contentView3 setClipsToBounds:1];

    [(PKPaymentTransactionCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }

  return v3;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 prepareForReuse];
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
  [(PKPaymentTransactionView *)self->_transactionView setSecondaryBadgeSymbol:0];
  [(PKPaymentTransactionView *)self->_transactionView setSecondaryBadgeSymbolConfiguration:0];
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
  v21.receiver = self;
  v21.super_class = PKPaymentTransactionCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v21 layoutSubviews];
  contentView = [(PKPaymentTransactionCollectionViewCell *)self contentView];
  [contentView bounds];
  x = v4;
  y = v6;
  width = v8;
  height = v10;

  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  memset(&v19, 0, sizeof(v19));
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  CGRectDivide(v22, &v19, &remainder, 14.0, CGRectMinXEdge);
  [(UIImageView *)self->_multiselectImageView frame];
  CGRectDivide(remainder, &v19, &remainder, v12, CGRectMinXEdge);
  __asm { FMOV            V2.2D, #0.5 }

  [(UIImageView *)self->_multiselectImageView setCenter:vaddq_f64(v19.origin, vmulq_f64(v19.size, _Q2))];
  v18 = !self->_deletable || !self->_isEditing;
  [(UIImageView *)self->_multiselectImageView setHidden:v18];
  if (self->_isEditing)
  {
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  [(PKPaymentTransactionView *)self->_transactionView setFrame:x, y, width, height];
}

- (void)updateConfigurationUsingState:(id)state
{
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = PKPaymentTransactionCollectionViewCell;
  [(PKPaymentTransactionCollectionViewCell *)&v14 updateConfigurationUsingState:stateCopy];
  if ([stateCopy isEditing] && !self->_isEditing)
  {
    self->_originalShowsDisclosureView = [(PKPaymentTransactionView *)self->_transactionView showsDisclosureView];
    [(PKPaymentTransactionView *)self->_transactionView setShowsDisclosureView:0];
    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    systemGray4Color = [MEMORY[0x1E69DC888] systemGray4Color];
    [v6 setBackgroundColor:systemGray4Color];

    [(PKPaymentTransactionCollectionViewCell *)self setSelectedBackgroundView:v6];
  }

  else if (([stateCopy isEditing] & 1) == 0 && self->_isEditing)
  {
    [(PKPaymentTransactionView *)self->_transactionView setShowsDisclosureView:self->_originalShowsDisclosureView];
    [(PKPaymentTransactionCollectionViewCell *)self setSelectedBackgroundView:0];
  }

  if ([stateCopy isEditing])
  {
    isSelected = [stateCopy isSelected];
    multiselectImageView = self->_multiselectImageView;
    if (isSelected)
    {
      v10 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      [(UIImageView *)multiselectImageView setImage:v10];

      v11 = self->_multiselectImageView;
      [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"circle"];
      [(UIImageView *)multiselectImageView setImage:v12];

      v11 = self->_multiselectImageView;
      [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }
    v13 = ;
    [(UIImageView *)v11 setTintColor:v13];
  }

  self->_isEditing = [stateCopy isEditing];
  [(PKPaymentTransactionCollectionViewCell *)self setNeedsLayout];
  [(PKPaymentTransactionCollectionViewCell *)self layoutIfNeeded];
}

@end