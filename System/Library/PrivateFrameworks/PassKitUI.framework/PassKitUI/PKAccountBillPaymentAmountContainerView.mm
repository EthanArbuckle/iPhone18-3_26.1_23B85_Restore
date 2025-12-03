@interface PKAccountBillPaymentAmountContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountBillPaymentAmountContainerView)initWithCurrencyCode:(id)code minimumAmount:(id)amount;
- (double)_amountLabelFontSize;
- (void)layoutSubviews;
- (void)setShowAmount:(BOOL)amount;
@end

@implementation PKAccountBillPaymentAmountContainerView

- (PKAccountBillPaymentAmountContainerView)initWithCurrencyCode:(id)code minimumAmount:(id)amount
{
  codeCopy = code;
  amountCopy = amount;
  v22.receiver = self;
  v22.super_class = PKAccountBillPaymentAmountContainerView;
  v8 = [(PKAccountBillPaymentAmountContainerView *)&v22 init];
  v9 = v8;
  if (v8)
  {
    [(PKAccountBillPaymentAmountContainerView *)v8 _amountLabelFontSize];
    v11 = v10;
    v12 = *MEMORY[0x1E69DB970];
    v13 = PKRoundedSystemFontOfSizeAndWeight(v10, *MEMORY[0x1E69DB970]);
    pk_fixedWidthFont = [v13 pk_fixedWidthFont];

    v15 = PKRoundedSystemFontOfSizeAndWeight(v11 * 0.5, v12);
    pk_fixedWidthFont2 = [v15 pk_fixedWidthFont];

    v17 = [[PKEnterCurrencyAmountView alloc] initWithCurrency:codeCopy amount:amountCopy];
    enterCurrencyAmountView = v9->_enterCurrencyAmountView;
    v9->_enterCurrencyAmountView = v17;

    v19 = v9->_enterCurrencyAmountView;
    v20 = +[PKAccountBillPaymentViewController backgroundColor];
    [(PKEnterCurrencyAmountView *)v19 setKeyboardColor:v20];

    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setShowsDecimalPointButton:1];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setAmountFont:pk_fixedWidthFont];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setCurrencySymbolFont:pk_fixedWidthFont2];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setKerning:&unk_1F3CC6C08];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setIgnoreIntegralNumber:1];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView sizeToFit];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setShowsDecimalPointButton:1];
    [(PKEnterCurrencyAmountView *)v9->_enterCurrencyAmountView setClearAmountOnFirstKeyboardInput:1];
    [(PKAccountBillPaymentAmountContainerView *)v9 addSubview:v9->_enterCurrencyAmountView];
    [(PKAccountBillPaymentAmountContainerView *)v9 setHidden:!v9->_showAmount];
  }

  return v9;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKAccountBillPaymentAmountContainerView;
  [(PKAccountBillPaymentAmountContainerView *)&v29 layoutSubviews];
  [(PKAccountBillPaymentAmountContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v7, 1.79769313e308];
  PKRectCenteredXInRect();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  if (self->_showAmount)
  {
    PKRectCenteredYInRect();
    v12 = v17;
    v19 = v18;
    v14 = v20;
    v16 = v21;
    enterCurrencyAmountView = self->_enterCurrencyAmountView;
    v23 = 1.0;
    v24 = 1.0;
  }

  else
  {
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    v19 = v16 + CGRectGetMaxY(v30);
    enterCurrencyAmountView = self->_enterCurrencyAmountView;
    v23 = 0.05;
    v24 = 0.05;
  }

  CGAffineTransformMakeScale(&v28, v23, v24);
  [(PKEnterCurrencyAmountView *)enterCurrencyAmountView setTransform:&v28];
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v14, v16];
  v25 = self->_enterCurrencyAmountView;
  v31.origin.x = v12;
  v31.origin.y = v19;
  v31.size.width = v14;
  v31.size.height = v16;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v12;
  v32.origin.y = v19;
  v32.size.width = v14;
  v32.size.height = v16;
  [(PKEnterCurrencyAmountView *)v25 setCenter:MidX, CGRectGetMidY(v32)];
  v27 = 0.0;
  if (self->_showAmount)
  {
    v27 = 1.0;
  }

  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setAlpha:v27];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:fits.width, fits.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setShowAmount:(BOOL)amount
{
  if (self->_showAmount == !amount)
  {
    [(PKAccountBillPaymentAmountContainerView *)self layoutIfNeeded];
    self->_showAmount = amount;
    [(PKAccountBillPaymentAmountContainerView *)self setNeedsLayout];
    [(PKAccountBillPaymentAmountContainerView *)self setHidden:0];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__PKAccountBillPaymentAmountContainerView_setShowAmount___block_invoke;
    v7[3] = &unk_1E8010970;
    v7[4] = self;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__PKAccountBillPaymentAmountContainerView_setShowAmount___block_invoke_2;
    v5[3] = &unk_1E8013E98;
    v5[4] = self;
    amountCopy = amount;
    [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v7 completion:v5];
  }
}

- (double)_amountLabelFontSize
{
  v2 = PKUIGetMinScreenWidthType();
  result = 57.0;
  if (!v2)
  {
    return 42.0;
  }

  return result;
}

@end