@interface PKAccountScheduledPaymentCell
- (BOOL)_useStackedLayoutForUsableWidth:(double)width;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountPayment)payment;
- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)_effectiveLayoutMargins;
- (id)_amountAttributedString;
- (id)_amountString;
- (id)_dateString;
- (id)_frequencyAttributedString;
- (id)_frequencyString;
- (id)_statusAttributedString;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPayment:(id)payment forAccount:(id)account;
@end

@implementation PKAccountScheduledPaymentCell

- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = PKAccountScheduledPaymentCell;
  v5 = [(PKAccountScheduledPaymentCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:style];
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v6;

    v5->_featureIdentifier = 2;
    contentView = [(PKAccountScheduledPaymentCell *)v5 contentView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    frequencyLabel = v5->_frequencyLabel;
    v5->_frequencyLabel = v9;

    [(UILabel *)v5->_frequencyLabel setNumberOfLines:0];
    LODWORD(v11) = 1036831949;
    [(UILabel *)v5->_frequencyLabel _setHyphenationFactor:v11];
    [contentView addSubview:v5->_frequencyLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v12;

    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    LODWORD(v14) = 1036831949;
    [(UILabel *)v5->_statusLabel _setHyphenationFactor:v14];
    [contentView addSubview:v5->_statusLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    amountLabel = v5->_amountLabel;
    v5->_amountLabel = v15;

    [(UILabel *)v5->_amountLabel setNumberOfLines:0];
    LODWORD(v17) = 1036831949;
    [(UILabel *)v5->_amountLabel _setHyphenationFactor:v17];
    [contentView addSubview:v5->_amountLabel];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_sizing = 1;
  [(PKAccountScheduledPaymentCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  self->_sizing = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountScheduledPaymentCell;
  [(PKAccountScheduledPaymentCell *)&v3 layoutSubviews];
  [(PKAccountScheduledPaymentCell *)self bounds];
  [(PKAccountScheduledPaymentCell *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UITableViewCellLayoutManager *)self->_layoutManager contentRectForCell:self forState:0 rowWidth:bounds.size.width];
  v9 = v8;
  memset(&slice, 0, sizeof(slice));
  [(PKAccountScheduledPaymentCell *)self _effectiveLayoutMargins];
  v11 = x + v10;
  v12 = y + 14.0;
  v14 = v9 - (v10 + v13);
  remainder.origin.x = v11;
  remainder.origin.y = v12;
  remainder.size.width = v14;
  remainder.size.height = height + -28.0;
  [(PKAccountScheduledPaymentCell *)self _shouldReverseLayoutDirection];
  PKContentAlignmentMake();
  if ([(PKAccountScheduledPaymentCell *)self _useStackedLayoutForUsableWidth:v14])
  {
    [(UILabel *)self->_frequencyLabel pkui_sizeThatFits:1 forceWordWrap:v14, height + -28.0];
    v16 = v15;
    if (!self->_sizing)
    {
      frequencyLabel = self->_frequencyLabel;
      PKSizeAlignedInRect();
      [(UILabel *)frequencyLabel setFrame:?];
    }

    v44.origin.x = v11;
    v44.origin.y = v12;
    v44.size.width = v14;
    v44.size.height = height + -28.0;
    CGRectDivide(v44, &slice, &remainder, v16, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v19 = v18;
    if (!self->_sizing)
    {
      amountLabel = self->_amountLabel;
      PKSizeAlignedInRect();
      [(UILabel *)amountLabel setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v19, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
    v21 = v16 + 4.0 + 28.0 + v19 + 4.0;
    [(UILabel *)self->_statusLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v23 = v22;
    if (!self->_sizing)
    {
      statusLabel = self->_statusLabel;
      PKSizeAlignedInRect();
      [(UILabel *)statusLabel setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v23, CGRectMinYEdge);
    v25 = v21 + v23;
  }

  else
  {
    v40 = width;
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:(v14 + -16.0) * 0.5, height + -28.0];
    v27 = v26;
    v29 = v14 - (v28 + 16.0);
    [(UILabel *)self->_frequencyLabel pkui_sizeThatFits:1 forceWordWrap:v29, height + -28.0];
    v31 = v30 + 2.0;
    [(UILabel *)self->_statusLabel pkui_sizeThatFits:1 forceWordWrap:v29, height + -28.0 - (v30 + 2.0)];
    v33 = fmax(v27, v31 + v32);
    v45.origin.x = v11;
    v45.origin.y = v12;
    v45.size.width = v14;
    v45.size.height = height + -28.0;
    CGRectDivide(v45, &slice, &remainder, v33, CGRectMinYEdge);
    v25 = v33 + 28.0;
    if (!self->_sizing)
    {
      v34 = self->_frequencyLabel;
      PKSizeAlignedInRect();
      [(UILabel *)v34 setFrame:?];
      v35 = self->_amountLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)v35 setFrame:?];
      v36 = self->_statusLabel;
      PKContentAlignmentMake();
      PKSizeAlignedInRect();
      [(UILabel *)v36 setFrame:?];
    }

    width = v40;
  }

  v37 = v25;
  v38 = ceilf(v37);
  v39 = width;
  result.height = v38;
  result.width = v39;
  return result;
}

- (BOOL)_useStackedLayoutForUsableWidth:(double)width
{
  v4 = (width + -16.0) * 0.5;
  [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:1.79769313e308, 1.79769313e308];
  result = v5 > v4;
  self->_useStackedLayout = v5 > v4;
  return result;
}

- (UIEdgeInsets)_effectiveLayoutMargins
{
  _shouldReverseLayoutDirection = [(PKAccountScheduledPaymentCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKAccountScheduledPaymentCell *)self contentView];
  [(PKAccountScheduledPaymentCell *)self separatorInset];
  v6 = v5;
  v8 = v7;
  [contentView layoutMargins];
  if (_shouldReverseLayoutDirection)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = fmax(v11, v9);
  if (_shouldReverseLayoutDirection)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  v14 = fmax(v13, v10);

  v15 = 0.0;
  v16 = 0.0;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v16;
  result.left = v17;
  result.top = v15;
  return result;
}

- (void)setPayment:(id)payment forAccount:(id)account
{
  obj = payment;
  accountCopy = account;
  objc_storeWeak(&self->_payment, obj);
  v7 = [obj isOnHoldForAccount:accountCopy];
  if (v7)
  {
    LOBYTE(v7) = [obj isBeforeNextCycleForAccount:accountCopy];
  }

  self->_onHold = v7;
  creditDetails = [accountCopy creditDetails];
  productTimeZone = [creditDetails productTimeZone];
  timeZone = self->_timeZone;
  self->_timeZone = productTimeZone;

  creditDetails2 = [accountCopy creditDetails];
  accountSummary = [creditDetails2 accountSummary];
  paymentDueDate = [accountSummary paymentDueDate];
  self->_hasPaymentDueDate = paymentDueDate != 0;

  frequencyLabel = self->_frequencyLabel;
  _frequencyAttributedString = [(PKAccountScheduledPaymentCell *)self _frequencyAttributedString];
  [(UILabel *)frequencyLabel setAttributedText:_frequencyAttributedString];

  amountLabel = self->_amountLabel;
  _amountAttributedString = [(PKAccountScheduledPaymentCell *)self _amountAttributedString];
  [(UILabel *)amountLabel setAttributedText:_amountAttributedString];

  statusLabel = self->_statusLabel;
  _statusAttributedString = [(PKAccountScheduledPaymentCell *)self _statusAttributedString];
  [(UILabel *)statusLabel setAttributedText:_statusAttributedString];

  [(PKAccountScheduledPaymentCell *)self setAccessoryType:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKAccountScheduledPaymentCell;
  [(PKAccountScheduledPaymentCell *)&v3 prepareForReuse];
  objc_storeWeak(&self->_payment, 0);
}

- (id)_frequencyAttributedString
{
  v11[2] = *MEMORY[0x1E69E9840];
  _frequencyString = [(PKAccountScheduledPaymentCell *)self _frequencyString];
  v10[0] = *MEMORY[0x1E69DB648];
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E69DB650];
  titleColor = [(PKAccountScheduledPaymentCell *)self titleColor];
  labelColor = titleColor;
  if (!titleColor)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v11[1] = labelColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!titleColor)
  {
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_frequencyString attributes:v7];

  return v8;
}

- (id)_statusAttributedString
{
  v14[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  if ([WeakRetained isRecurring])
  {
    v4 = objc_loadWeakRetained(&self->_payment);
    state = [v4 state];

    if (state == 4)
    {
      _dateString = PKLocalizedFeatureString();
      v7 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  _dateString = [(PKAccountScheduledPaymentCell *)self _dateString];
  v7 = 0;
LABEL_6:
  if ([_dateString length])
  {
    v13[0] = *MEMORY[0x1E69DB648];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC30], 0x8000, 0);
    v14[0] = v8;
    v13[1] = *MEMORY[0x1E69DB650];
    if (v7)
    {
      [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v10 = ;
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_dateString attributes:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_frequencyString
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  scheduleDetails = [WeakRetained scheduleDetails];
  frequency = [scheduleDetails frequency];

  if ((frequency - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedFeatureString();
  }

  return v5;
}

- (id)_amountString
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  scheduleDetails = [WeakRetained scheduleDetails];
  preset = [scheduleDetails preset];

  if (preset == 3 || preset == 2)
  {
    v12 = PKLocalizedFeatureString();
  }

  else if (preset == 1)
  {
    v6 = objc_loadWeakRetained(&self->_payment);
    currencyAmount = [v6 currencyAmount];
    amount = [currencyAmount amount];
    v9 = objc_loadWeakRetained(&self->_payment);
    currencyAmount2 = [v9 currencyAmount];
    currency = [currencyAmount2 currency];
    v12 = PKFormattedCurrencyStringFromNumber();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_amountAttributedString
{
  v9[2] = *MEMORY[0x1E69E9840];
  _amountString = [(PKAccountScheduledPaymentCell *)self _amountString];
  if ([_amountString length])
  {
    v8[0] = *MEMORY[0x1E69DB648];
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
    v9[0] = v3;
    v8[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9[1] = secondaryLabelColor;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_amountString attributes:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dateString
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setLocalizedDateFormatFromTemplate:@"MMM d"];
  [v3 setTimeZone:self->_timeZone];
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  paymentDate = [WeakRetained paymentDate];

  if (self->_onHold)
  {
    v6 = PKLocalizedFeatureString();
LABEL_10:
    v10 = v6;
    goto LABEL_11;
  }

  if (paymentDate)
  {
    v7 = objc_loadWeakRetained(&self->_payment);
    isRecurring = [v7 isRecurring];

    if (isRecurring)
    {
      v9 = PKLocalizedFeatureString();
      v14 = [v3 stringFromDate:paymentDate];
      v10 = PKStringWithValidatedFormat();

      goto LABEL_11;
    }

    v6 = [v3 stringFromDate:paymentDate];
    goto LABEL_10;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_loadWeakRetained(&self->_payment);
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Payment is missing payment date: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (PKAccountPayment)payment
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);

  return WeakRetained;
}

@end