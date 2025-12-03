@interface PKEnterCurrencyAmountPassView
- ($F81081627EB66BDA95705C9210F32B91)_amountPassViewSizeInfoForSize:(SEL)size;
- (CGSize)_passViewSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKEnterCurrencyAmountPassView)initWithCurrenyAmount:(id)amount pass:(id)pass withdrawal:(BOOL)withdrawal keypadBottomView:(id)view;
- (PKEnterCurrencyAmountPassViewDelegate)delegate;
- (double)_newBalanceHorizontalPadding;
- (void)layoutSubviews;
@end

@implementation PKEnterCurrencyAmountPassView

- (PKEnterCurrencyAmountPassView)initWithCurrenyAmount:(id)amount pass:(id)pass withdrawal:(BOOL)withdrawal keypadBottomView:(id)view
{
  withdrawalCopy = withdrawal;
  amountCopy = amount;
  passCopy = pass;
  viewCopy = view;
  v48.receiver = self;
  v48.super_class = PKEnterCurrencyAmountPassView;
  v13 = [(PKEnterCurrencyAmountPassView *)&v48 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_pass, pass);
    v15 = *MEMORY[0x1E69DB980];
    PKRoundedSystemFontOfSizeAndWeight(60.0, *MEMORY[0x1E69DB980]);
    v44 = withdrawalCopy;
    v17 = v16 = passCopy;
    PKRoundedSystemFontOfSizeAndWeight(36.0, v15);
    v19 = v18 = viewCopy;
    v20 = [PKEnterCurrencyAmountView alloc];
    currency = [amountCopy currency];
    amount = [amountCopy amount];
    v23 = [(PKEnterCurrencyAmountView *)v20 initWithCurrency:currency amount:amount bottomView:v18];
    enterCurrencyAmountView = v14->_enterCurrencyAmountView;
    v14->_enterCurrencyAmountView = v23;

    [(PKEnterCurrencyAmountView *)v14->_enterCurrencyAmountView setShowsDecimalPointButton:1];
    v45 = v17;
    v25 = v17;
    passCopy = v16;
    [(PKEnterCurrencyAmountView *)v14->_enterCurrencyAmountView setAmountFont:v25];
    [(PKEnterCurrencyAmountView *)v14->_enterCurrencyAmountView setCurrencySymbolFont:v19];
    [(PKEnterCurrencyAmountView *)v14->_enterCurrencyAmountView setKerning:&unk_1F3CC6BA8];
    [(PKEnterCurrencyAmountView *)v14->_enterCurrencyAmountView sizeToFit];
    v26 = [PKEnterValueNewBalanceView alloc];
    currency2 = [amountCopy currency];
    v28 = [(PKEnterValueNewBalanceView *)v26 initWithCurrencyCode:currency2];
    balanceView = v14->_balanceView;
    v14->_balanceView = v28;

    v30 = v14->_balanceView;
    v31 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan.isa);
    [(PKEnterValueNewBalanceView *)v30 setPromptText:v31];

    v32 = v14->_balanceView;
    v33 = PKLocalizedPeerPaymentString(&cfstr_PeerPaymentBan_0.isa);
    [(PKEnterValueNewBalanceView *)v32 setUpdatedBalancePromptText:v33];

    v34 = v14->_balanceView;
    v35 = PKLocalizedPaymentString(&cfstr_PerformActionE.isa);
    [(PKEnterValueNewBalanceView *)v34 setMaxLoadAmountText:v35];

    [(PKEnterValueNewBalanceView *)v14->_balanceView sizeToFit];
    [(PKEnterValueNewBalanceView *)v14->_balanceView setAmountIsWithdrawal:v44];
    v36 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    passView = v14->_passView;
    v14->_passView = v36;

    [(UIImageView *)v14->_passView setContentMode:1];
    [(UIImageView *)v14->_passView setAccessibilityIgnoresInvertColors:1];
    [(PKEnterCurrencyAmountPassView *)v14 addSubview:v14->_enterCurrencyAmountView];
    [(PKEnterCurrencyAmountPassView *)v14 addSubview:v14->_balanceView];
    [(PKEnterCurrencyAmountPassView *)v14 addSubview:v14->_passView];
    if (v14->_pass)
    {
      v14->_loadingSnapshot = 1;
      v38 = +[PKPassSnapshotter sharedInstance];
      [(PKEnterCurrencyAmountPassView *)v14 _passViewSize];
      v40 = v39;
      v42 = v41;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __88__PKEnterCurrencyAmountPassView_initWithCurrenyAmount_pass_withdrawal_keypadBottomView___block_invoke;
      v46[3] = &unk_1E8010A38;
      v47 = v14;
      [v38 snapshotWithPass:v16 size:v46 completion:{v40, v42}];
    }

    viewCopy = v18;
  }

  return v14;
}

void __88__PKEnterCurrencyAmountPassView_initWithCurrenyAmount_pass_withdrawal_keypadBottomView___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PKEnterCurrencyAmountPassView_initWithCurrenyAmount_pass_withdrawal_keypadBottomView___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __88__PKEnterCurrencyAmountPassView_initWithCurrenyAmount_pass_withdrawal_keypadBottomView___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 416) = 0;
  [*(*(a1 + 32) + 408) setImage:*(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 424));
  [WeakRetained enterCurrencyAmountPassViewDidLoadPassSnapshot:*(a1 + 32)];

  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(PKEnterCurrencyAmountPassView *)self _newBalanceHorizontalPadding];
  [(PKEnterValueNewBalanceView *)self->_balanceView sizeThatFits:width + v6 * -2.0, 1.79769313e308];
  v8 = v7 + 0.0;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:width, 1.79769313e308];
  v10 = v8 + v9;
  [(PKEnterCurrencyAmountPassView *)self _amountPassViewSizeInfoForSize:width, height - (v8 + v9)];
  v11 = *(MEMORY[0x1E695F060] + 8) == 0.0 && *MEMORY[0x1E695F060] == 0.0;
  v12 = v10 + 0.0;
  if (v11)
  {
    v12 = v10;
  }

  v13 = v12 + 0.0 + 0.0 + 0.0;
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = PKEnterCurrencyAmountPassView;
  [(PKEnterCurrencyAmountPassView *)&v32 layoutSubviews];
  [(PKEnterCurrencyAmountPassView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView sizeThatFits:v7, 1.79769313e308];
  v12 = v11;
  [(PKEnterCurrencyAmountPassView *)self _newBalanceHorizontalPadding];
  [(PKEnterValueNewBalanceView *)self->_balanceView sizeThatFits:v8 + v13 * -2.0, 1.79769313e308];
  [(PKEnterCurrencyAmountPassView *)self _amountPassViewSizeInfoForSize:v8, v10 - v12 - v14];
  if (*MEMORY[0x1E695F060] == 0.0 && *(MEMORY[0x1E695F060] + 8) == 0.0)
  {
    v21 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    v17 = *MEMORY[0x1E695F058];
    v19 = *(MEMORY[0x1E695F058] + 8);
    [(UIImageView *)self->_passView setAlpha:0.0, 0.0];
  }

  else
  {
    [(UIImageView *)self->_passView setAlpha:1.0, 0.0];
    PKSizeAlignedInRect();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(UIImageView *)self->_passView setFrame:?];
  }

  v33.origin.x = v17;
  v33.origin.y = v19;
  v33.size.width = v21;
  v33.size.height = v23;
  CGRectGetMaxY(v33);
  v34.origin.x = v4;
  v34.origin.y = v6;
  v34.size.width = v8;
  v34.size.height = v10;
  CGRectGetMinX(v34);
  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  CGRectGetWidth(v35);
  PKRectCenteredXInRect();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [(PKEnterCurrencyAmountView *)self->_enterCurrencyAmountView setFrame:?];
  v36.origin.x = v25;
  v36.origin.y = v27;
  v36.size.width = v29;
  v36.size.height = v31;
  CGRectGetMaxY(v36);
  PKRectCenteredXInRect();
  [(PKEnterValueNewBalanceView *)self->_balanceView setFrame:?];
}

- (CGSize)_passViewSize
{
  v2 = 156.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)_newBalanceHorizontalPadding
{
  v2 = PKUIGetMinScreenWidthType();
  result = 20.0;
  if (!v2)
  {
    return 10.0;
  }

  return result;
}

- ($F81081627EB66BDA95705C9210F32B91)_amountPassViewSizeInfoForSize:(SEL)size
{
  retstr->var3.height = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  retstr->var1 = 8.0;
  if (a4.height <= 8.0)
  {
    if (a4.height > 0.0)
    {
      retstr->var0 = a4.height;
      a4.height = 0.0;
    }
  }

  else
  {
    retstr->var0 = 8.0;
    a4.height = a4.height + -8.0;
  }

  if (!*&self[11].var1)
  {
    height = 32.0;
    if (a4.height <= 32.0)
    {
      height = a4.height;
    }

    retstr->var1 = height;
    retstr->var2 = 0.0;
LABEL_12:
    retstr->var3 = *MEMORY[0x1E695F060];
    return self;
  }

  v5 = a4.height + -8.0;
  self = [($F81081627EB66BDA95705C9210F32B91 *)self _passViewSize];
  if (v7 > v5)
  {
    v8 = v5 / v7;
    if (v8 >= 0.8)
    {
      retstr->var3.width = v6 * v8;
      retstr->var3.height = v5;
      return self;
    }

    goto LABEL_12;
  }

  retstr->var3.width = v6;
  retstr->var3.height = v7;
  v10 = v5 - v7;
  if (v5 - v7 >= 24.0)
  {
    retstr->var1 = 32.0;
    v11 = v10 + -24.0;
    if (v11 >= 32.0)
    {
      retstr->var2 = 32.0;
    }

    else
    {
      retstr->var2 = v11;
    }
  }

  else
  {
    retstr->var1 = v10 + 8.0;
  }

  return self;
}

- (PKEnterCurrencyAmountPassViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end