@interface PKAccountScheduledPaymentCell
- (BOOL)_useStackedLayoutForUsableWidth:(double)a3;
- (CGSize)_layoutWithBounds:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAccountPayment)payment;
- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIEdgeInsets)_effectiveLayoutMargins;
- (id)_amountAttributedString;
- (id)_amountString;
- (id)_dateString;
- (id)_frequencyAttributedString;
- (id)_frequencyString;
- (id)_statusAttributedString;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPayment:(id)a3 forAccount:(id)a4;
@end

@implementation PKAccountScheduledPaymentCell

- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v19.receiver = self;
  v19.super_class = PKAccountScheduledPaymentCell;
  v5 = [(PKAccountScheduledPaymentCell *)&v19 initWithStyle:a3 reuseIdentifier:a4];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:a3];
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v6;

    v5->_featureIdentifier = 2;
    v8 = [(PKAccountScheduledPaymentCell *)v5 contentView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    frequencyLabel = v5->_frequencyLabel;
    v5->_frequencyLabel = v9;

    [(UILabel *)v5->_frequencyLabel setNumberOfLines:0];
    LODWORD(v11) = 1036831949;
    [(UILabel *)v5->_frequencyLabel _setHyphenationFactor:v11];
    [v8 addSubview:v5->_frequencyLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v12;

    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    LODWORD(v14) = 1036831949;
    [(UILabel *)v5->_statusLabel _setHyphenationFactor:v14];
    [v8 addSubview:v5->_statusLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    amountLabel = v5->_amountLabel;
    v5->_amountLabel = v15;

    [(UILabel *)v5->_amountLabel setNumberOfLines:0];
    LODWORD(v17) = 1036831949;
    [(UILabel *)v5->_amountLabel _setHyphenationFactor:v17];
    [v8 addSubview:v5->_amountLabel];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  self->_sizing = 1;
  [(PKAccountScheduledPaymentCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), a3.width, 1.79769313e308];
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

- (CGSize)_layoutWithBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UITableViewCellLayoutManager *)self->_layoutManager contentRectForCell:self forState:0 rowWidth:a3.size.width];
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

- (BOOL)_useStackedLayoutForUsableWidth:(double)a3
{
  v4 = (a3 + -16.0) * 0.5;
  [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:1.79769313e308, 1.79769313e308];
  result = v5 > v4;
  self->_useStackedLayout = v5 > v4;
  return result;
}

- (UIEdgeInsets)_effectiveLayoutMargins
{
  v3 = [(PKAccountScheduledPaymentCell *)self _shouldReverseLayoutDirection];
  v4 = [(PKAccountScheduledPaymentCell *)self contentView];
  [(PKAccountScheduledPaymentCell *)self separatorInset];
  v6 = v5;
  v8 = v7;
  [v4 layoutMargins];
  if (v3)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = fmax(v11, v9);
  if (v3)
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

- (void)setPayment:(id)a3 forAccount:(id)a4
{
  obj = a3;
  v6 = a4;
  objc_storeWeak(&self->_payment, obj);
  v7 = [obj isOnHoldForAccount:v6];
  if (v7)
  {
    LOBYTE(v7) = [obj isBeforeNextCycleForAccount:v6];
  }

  self->_onHold = v7;
  v8 = [v6 creditDetails];
  v9 = [v8 productTimeZone];
  timeZone = self->_timeZone;
  self->_timeZone = v9;

  v11 = [v6 creditDetails];
  v12 = [v11 accountSummary];
  v13 = [v12 paymentDueDate];
  self->_hasPaymentDueDate = v13 != 0;

  frequencyLabel = self->_frequencyLabel;
  v15 = [(PKAccountScheduledPaymentCell *)self _frequencyAttributedString];
  [(UILabel *)frequencyLabel setAttributedText:v15];

  amountLabel = self->_amountLabel;
  v17 = [(PKAccountScheduledPaymentCell *)self _amountAttributedString];
  [(UILabel *)amountLabel setAttributedText:v17];

  statusLabel = self->_statusLabel;
  v19 = [(PKAccountScheduledPaymentCell *)self _statusAttributedString];
  [(UILabel *)statusLabel setAttributedText:v19];

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
  v3 = [(PKAccountScheduledPaymentCell *)self _frequencyString];
  v10[0] = *MEMORY[0x1E69DB648];
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E69DB650];
  v5 = [(PKAccountScheduledPaymentCell *)self titleColor];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E69DC888] labelColor];
  }

  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!v5)
  {
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v3 attributes:v7];

  return v8;
}

- (id)_statusAttributedString
{
  v14[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  if ([WeakRetained isRecurring])
  {
    v4 = objc_loadWeakRetained(&self->_payment);
    v5 = [v4 state];

    if (v5 == 4)
    {
      v6 = PKLocalizedFeatureString();
      v7 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = [(PKAccountScheduledPaymentCell *)self _dateString];
  v7 = 0;
LABEL_6:
  if ([v6 length])
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

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6 attributes:v11];
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
  v3 = [WeakRetained scheduleDetails];
  v4 = [v3 frequency];

  if ((v4 - 1) > 6)
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
  v4 = [WeakRetained scheduleDetails];
  v5 = [v4 preset];

  if (v5 == 3 || v5 == 2)
  {
    v12 = PKLocalizedFeatureString();
  }

  else if (v5 == 1)
  {
    v6 = objc_loadWeakRetained(&self->_payment);
    v7 = [v6 currencyAmount];
    v8 = [v7 amount];
    v9 = objc_loadWeakRetained(&self->_payment);
    v10 = [v9 currencyAmount];
    v11 = [v10 currency];
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
  v2 = [(PKAccountScheduledPaymentCell *)self _amountString];
  if ([v2 length])
  {
    v8[0] = *MEMORY[0x1E69DB648];
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
    v9[0] = v3;
    v8[1] = *MEMORY[0x1E69DB650];
    v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9[1] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v2 attributes:v5];
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
  v5 = [WeakRetained paymentDate];

  if (self->_onHold)
  {
    v6 = PKLocalizedFeatureString();
LABEL_10:
    v10 = v6;
    goto LABEL_11;
  }

  if (v5)
  {
    v7 = objc_loadWeakRetained(&self->_payment);
    v8 = [v7 isRecurring];

    if (v8)
    {
      v9 = PKLocalizedFeatureString();
      v14 = [v3 stringFromDate:v5];
      v10 = PKStringWithValidatedFormat();

      goto LABEL_11;
    }

    v6 = [v3 stringFromDate:v5];
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