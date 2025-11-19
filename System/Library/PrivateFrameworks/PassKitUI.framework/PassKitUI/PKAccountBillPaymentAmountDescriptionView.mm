@interface PKAccountBillPaymentAmountDescriptionView
- (BOOL)_isEnteredAmountValid;
- (BOOL)_shouldShakeWithNewAmount:(id)a3;
- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKAccountBillPaymentAmountDescriptionView)initWithSuggestedAmountList:(id)a3 account:(id)a4 configuration:(id)a5 delegate:(id)a6;
- (PKAccountBillPaymentAmountDescriptionViewDelegate)delegate;
- (id)_keypadSuggestions;
- (id)_suggestedAmountDescriptionAttributedString;
- (void)_enteredAmountDidChangeTo:(id)a3;
- (void)_updateDescriptionAlpha;
- (void)_updateEnteredAmount:(id)a3;
- (void)dismissKeyboard;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3;
- (void)layoutSubviews;
- (void)normalizeEnteredAmount;
- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4;
- (void)setDescriptionText:(id)a3;
- (void)setShowAmount:(BOOL)a3;
- (void)setShowDescriptionLabels:(BOOL)a3;
- (void)setShowDescriptionSubtitle:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)showKeyboard;
@end

@implementation PKAccountBillPaymentAmountDescriptionView

- (PKAccountBillPaymentAmountDescriptionView)initWithSuggestedAmountList:(id)a3 account:(id)a4 configuration:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v54.receiver = self;
  v54.super_class = PKAccountBillPaymentAmountDescriptionView;
  v15 = [(PKAccountBillPaymentAmountDescriptionView *)&v54 init];
  v16 = v15;
  if (v15)
  {
    v43 = v13;
    v45 = v12;
    v47 = v11;
    objc_storeWeak(&v15->_delegate, v14);
    objc_storeStrong(&v16->_suggestionList, a3);
    objc_storeStrong(&v16->_account, a4);
    objc_storeStrong(&v16->_configuration, a5);
    v16->_showDescriptionLabels = 1;
    v16->_showDescriptionSubtitle = 1;
    v17 = PKLocalizedFeatureString();
    learnMoreString = v16->_learnMoreString;
    v16->_learnMoreString = v17;

    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    suggestedAmountTitleLabel = v16->_suggestedAmountTitleLabel;
    v16->_suggestedAmountTitleLabel = v19;

    v21 = _UISolariumFeatureFlagEnabled();
    v22 = v16->_suggestedAmountTitleLabel;
    if (v21)
    {
      if (v16->_showDescriptionSubtitle)
      {
        v23 = PKOBKTextAlignment();
      }

      else
      {
        v23 = 1;
      }

      [(UILabel *)v22 setTextAlignment:v23, v13, v12, v11];
      v26 = v16->_suggestedAmountTitleLabel;
      v24 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 0x8000, 0, *MEMORY[0x1E69DB980]);
      v25 = v26;
    }

    else
    {
      [(UILabel *)v16->_suggestedAmountTitleLabel setTextAlignment:1];
      v24 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD78], *MEMORY[0x1E69DDC38], 32770, 0);
      v25 = v16->_suggestedAmountTitleLabel;
    }

    [(UILabel *)v25 setFont:v24, v43, v45, v47];

    [(UILabel *)v16->_suggestedAmountTitleLabel setNumberOfLines:0];
    [(UILabel *)v16->_suggestedAmountTitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v27 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    suggestedAmountDescriptionView = v16->_suggestedAmountDescriptionView;
    v16->_suggestedAmountDescriptionView = v27;

    [(UITextView *)v16->_suggestedAmountDescriptionView setDelegate:v16];
    [(UITextView *)v16->_suggestedAmountDescriptionView setSelectable:1];
    [(UITextView *)v16->_suggestedAmountDescriptionView setUserInteractionEnabled:1];
    [(UITextView *)v16->_suggestedAmountDescriptionView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v16->_suggestedAmountDescriptionView setTextContainerInset:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
    [(UITextView *)v16->_suggestedAmountDescriptionView setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    v29 = [PKAccountBillPaymentAmountContainerView alloc];
    v30 = [(PKBillPaymentSuggestedAmountList *)v16->_suggestionList currencyCode];
    v31 = [(PKAccountBillPaymentAmountContainerView *)v29 initWithCurrencyCode:v30 minimumAmount:v16->_minimumAmount];
    amountContainerView = v16->_amountContainerView;
    v16->_amountContainerView = v31;

    v33 = [(PKAccountBillPaymentAmountDescriptionView *)v16 _enterCurrencyAmountView];
    [v33 setDelegate:v16];
    v34 = [(PKAccountBillPaymentAmountDescriptionView *)v16 _keypadSuggestions];
    if (_UISolariumFeatureFlagEnabled())
    {
      [v33 setAmountSuggestions:v34];
      objc_initWeak(&location, v16);
      v35 = MEMORY[0x1E69DC628];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __104__PKAccountBillPaymentAmountDescriptionView_initWithSuggestedAmountList_account_configuration_delegate___block_invoke;
      v51[3] = &unk_1E8010A60;
      objc_copyWeak(&v52, &location);
      v36 = [v35 actionWithHandler:v51];
      v37 = PKOBKLearnMoreButton(@"info.circle.fill", v16->_learnMoreString, v36);
      learnMoreButton = v16->_learnMoreButton;
      v16->_learnMoreButton = v37;

      [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_learnMoreButton];
      objc_destroyWeak(&v52);
      objc_destroyWeak(&location);
    }

    else
    {
      v39 = [[PKNumberPadSuggestionsView alloc] initWithDefaultFrame];
      suggestionView = v16->_suggestionView;
      v16->_suggestionView = v39;

      [(PKNumberPadSuggestionsView *)v16->_suggestionView setDelegate:v16];
      v41 = v16->_suggestionView;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __104__PKAccountBillPaymentAmountDescriptionView_initWithSuggestedAmountList_account_configuration_delegate___block_invoke_2;
      v49[3] = &unk_1E8013EC0;
      v50 = v34;
      [(PKNumberPadSuggestionsView *)v41 performBatchUpdates:v49];
      [v33 setInputAccessoryView:v16->_suggestionView];
    }

    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_suggestedAmountTitleLabel];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_suggestedAmountDescriptionView];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_amountContainerView];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 setAccessibilityIdentifier:*MEMORY[0x1E69B96F0]];

    v12 = v46;
    v11 = v48;
    v13 = v44;
  }

  return v16;
}

void __104__PKAccountBillPaymentAmountDescriptionView_initWithSuggestedAmountList_account_configuration_delegate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 61);
    [v2 billPaymentAmountDescriptionViewHasTappedLearnMore:v3];

    WeakRetained = v3;
  }
}

void __104__PKAccountBillPaymentAmountDescriptionView_initWithSuggestedAmountList_account_configuration_delegate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v6 = a2;
  v4 = [v3 labelColor];
  [v6 setButtonTextColor:v4];

  v5 = +[PKAccountBillPaymentViewController backgroundColor];
  [v6 setButtonBackgroundColor:v5];

  [v6 setSuggestions:*(a1 + 32)];
}

- (void)layoutSubviews
{
  v38.receiver = self;
  v38.super_class = PKAccountBillPaymentAmountDescriptionView;
  [(PKAccountBillPaymentAmountDescriptionView *)&v38 layoutSubviews];
  [(PKAccountBillPaymentAmountDescriptionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView frame];
  [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView sizeThatFits:v6];
  PKRectCenteredXInRect();
  v8 = v7;
  v9 = v4;
  rect = v11;
  v36 = v10;
  [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView setFrame:?];
  if ((PKIsVision() & 1) == 0)
  {
    [(PKAccountBillPaymentAmountDescriptionView *)self _shouldReverseLayoutDirection];
  }

  [(UILabel *)self->_suggestedAmountTitleLabel frame];
  [(UILabel *)self->_suggestedAmountTitleLabel sizeThatFits:v6, 1.79769313e308];
  PKContentAlignmentMake();
  v12 = v6;
  PKSizeAlignedInRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = v9;
  if ([(PKAccountBillPaymentAmountDescriptionView *)self showAmount])
  {
    v39.origin.x = v8;
    v39.origin.y = v9;
    v39.size.height = rect;
    v39.size.width = v36;
    v19 = CGRectGetMaxY(v39) + 17.0;
  }

  [(UILabel *)self->_suggestedAmountTitleLabel setFrame:v14, v19, v16, v18];
  [(UITextView *)self->_suggestedAmountDescriptionView frame];
  recta = v18;
  v20 = v16;
  [(UITextView *)self->_suggestedAmountDescriptionView sizeThatFits:v12, 1.79769313e308];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v37 = v25;
  v40.origin.x = v14;
  v40.origin.y = v19;
  v40.size.width = v20;
  v40.size.height = recta;
  v27 = CGRectGetMaxY(v40) + 6.0;
  [(UITextView *)self->_suggestedAmountDescriptionView setFrame:v22, v27, v24, v26];
  [(UIButton *)self->_learnMoreButton sizeThatFits:v12, 1.79769313e308];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v41.origin.x = v22;
  v41.origin.y = v27;
  v41.size.width = v24;
  v41.size.height = v37;
  [(UIButton *)self->_learnMoreButton setFrame:v29, CGRectGetMaxY(v41) + 10.0, v31, v33];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = 0.0;
  if (self->_showDescriptionLabels)
  {
    [(UILabel *)self->_suggestedAmountTitleLabel sizeThatFits:a3.width, 1.79769313e308];
    v5 = v6 + 0.0;
    if (self->_showDescriptionSubtitle)
    {
      [(UITextView *)self->_suggestedAmountDescriptionView sizeThatFits:width, 1.79769313e308];
      v5 = v5 + 6.0 + v7;
      if (_UISolariumFeatureFlagEnabled())
      {
        [(UIButton *)self->_learnMoreButton sizeThatFits:width, 1.79769313e308];
        v5 = v5 + 10.0 + v8;
      }
    }
  }

  if ([(PKAccountBillPaymentAmountDescriptionView *)self showAmount])
  {
    [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView sizeThatFits:width, 1.79769313e308];
    v10 = v5 + v9;
    v11 = v5 + v9 + 17.0;
    if (self->_showDescriptionLabels)
    {
      v5 = v11;
    }

    else
    {
      v5 = v10;
    }
  }

  v12 = width;
  v13 = v5;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)numberPadSuggestionsView:(id)a3 didSelectSuggestion:(id)a4
{
  v6 = [a4 value];
  [(PKAccountBillPaymentAmountDescriptionView *)self _updateEnteredAmount:v6];
  if ([(PKAccountBillPaymentAmountDescriptionView *)self _shouldShakeWithNewAmount:v6])
  {
    v5 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
    [v5 pkui_smallShakeWithCompletion:0];
  }
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained billPaymentAmountDescriptionViewHasTappedLearnMore:self];

  return 0;
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleText, a3);
    [(UILabel *)self->_suggestedAmountTitleLabel setText:self->_titleText];
    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }
}

- (void)setDescriptionText:(id)a3
{
  v13 = a3;
  v4 = v13;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    if ([(NSString *)v13 length])
    {
      v5 = [(NSString *)v13 stringByAppendingFormat:@" %@", self->_learnMoreString];
    }

    else
    {
      v5 = self->_learnMoreString;
    }

    v4 = v5;
  }

  descriptionText = self->_descriptionText;
  v7 = v4;
  v8 = descriptionText;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_14;
  }

  if (!v7 || !v8)
  {

    goto LABEL_13;
  }

  v10 = [(NSString *)v7 isEqualToString:v8];

  if (!v10)
  {
LABEL_13:
    objc_storeStrong(&self->_descriptionText, v4);
    suggestedAmountDescriptionView = self->_suggestedAmountDescriptionView;
    v12 = [(PKAccountBillPaymentAmountDescriptionView *)self _suggestedAmountDescriptionAttributedString];
    [(UITextView *)suggestedAmountDescriptionView setAttributedText:v12];

    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }

LABEL_14:
}

- (id)_suggestedAmountDescriptionAttributedString
{
  if ([(NSString *)self->_descriptionText length])
  {
    v3 = [(NSString *)self->_descriptionText length];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F3BD7330];
    v5 = _UISolariumFeatureFlagEnabled();
    v6 = MEMORY[0x1E69DDCF8];
    if (!v5)
    {
      v6 = MEMORY[0x1E69DDD78];
    }

    v7 = PKFontForDefaultDesign(*v6, *MEMORY[0x1E69DDC38], 0x8000, 0);
    v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_descriptionText];
    if (!_UISolariumFeatureFlagEnabled() || PKIsVision())
    {
      v9 = [(NSString *)self->_descriptionText rangeOfString:self->_learnMoreString];
      v11 = v10;
      v12 = [MEMORY[0x1E69DC888] linkColor];
      [v8 pk_addLinkURL:v4 toRange:v9 withColor:v11 isUnderlined:{v12, 0}];
    }

    v13 = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v14 = [v13 mutableCopy];

    [v14 setLineBreakMode:0];
    [v14 setAlignment:PKOBKTextAlignment()];
    if (_UISolariumFeatureFlagEnabled())
    {
      [v7 pointSize];
      [v14 setMinimumLineHeight:v15 + 6.0];
      [v7 pointSize];
      [v14 setMaximumLineHeight:v16 + 6.0];
    }

    [v8 addAttribute:*MEMORY[0x1E69DB688] value:v14 range:{0, v3}];
    v17 = *MEMORY[0x1E69DB650];
    v18 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v8 addAttribute:v17 value:v18 range:{0, v3}];

    [v8 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, v3}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setShowAmount:(BOOL)a3
{
  [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView setShowAmount:a3];

  [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
}

- (void)setShowDescriptionLabels:(BOOL)a3
{
  if (self->_showDescriptionLabels == !a3)
  {
    self->_showDescriptionLabels = a3;
    [(PKAccountBillPaymentAmountDescriptionView *)self _updateDescriptionAlpha];

    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }
}

- (void)setShowDescriptionSubtitle:(BOOL)a3
{
  if (self->_showDescriptionSubtitle == !a3)
  {
    self->_showDescriptionSubtitle = a3;
    [(PKAccountBillPaymentAmountDescriptionView *)self _updateDescriptionAlpha];

    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }
}

- (void)_updateDescriptionAlpha
{
  LOBYTE(v2) = self->_showDescriptionLabels;
  [(UILabel *)self->_suggestedAmountTitleLabel setAlpha:v2];
  v5 = 0.0;
  if (self->_showDescriptionLabels)
  {
    LOBYTE(v4) = self->_showDescriptionSubtitle;
    v5 = v4;
  }

  [(UITextView *)self->_suggestedAmountDescriptionView setAlpha:v5];
  if (_UISolariumFeatureFlagEnabled())
  {
    learnMoreButton = self->_learnMoreButton;

    [(UIButton *)learnMoreButton setAlpha:v5];
  }
}

- (void)showKeyboard
{
  v2 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [v2 showKeyboard];
}

- (void)dismissKeyboard
{
  v2 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [v2 dismissKeyboard];
}

- (void)normalizeEnteredAmount
{
  v8 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  v3 = self->_enteredAmount;
  p_maximumAmount = &self->_maximumAmount;
  maximumAmount = self->_maximumAmount;
  if (maximumAmount && [(NSDecimalNumber *)maximumAmount compare:self->_enteredAmount]== NSOrderedAscending || (p_maximumAmount = &self->_minimumAmount, (minimumAmount = self->_minimumAmount) != 0) && [(NSDecimalNumber *)minimumAmount compare:self->_enteredAmount]== NSOrderedDescending)
  {
    v7 = *p_maximumAmount;

    v3 = v7;
  }

  [(PKAccountBillPaymentAmountDescriptionView *)self _updateEnteredAmount:v3];
  [v8 setCurrentAmount:v3 forceFormatForDisplay:1];
}

- (BOOL)enterCurrencyAmountView:(id)a3 shouldChangeAmountFrom:(id)a4 to:(id)a5
{
  v7 = a4;
  v8 = a5;
  if ([(PKAccountBillPaymentAmountDescriptionView *)self _shouldShakeWithNewAmount:v8])
  {
    v9 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
    [v9 pkui_smallShakeWithCompletion:0];
  }

  if (self->_minimumAmount && [v7 compare:?] == -1 && objc_msgSend(v8, "compare:", self->_minimumAmount) == -1)
  {
    v13 = [MEMORY[0x1E696AB90] zero];
    if ([v7 compare:v13])
    {
      v14 = [MEMORY[0x1E696AB90] zero];
      v15 = [v8 compare:v14];

      if (v15)
      {
        v11 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  maximumAmount = self->_maximumAmount;
  v11 = !maximumAmount || [(NSDecimalNumber *)maximumAmount compare:v7]!= NSOrderedAscending || [(NSDecimalNumber *)self->_maximumAmount compare:v8]!= NSOrderedAscending;
LABEL_10:

  return v11;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)a3
{
  v4 = [a3 currentAmount];
  enteredAmount = self->_enteredAmount;
  self->_enteredAmount = v4;
  v6 = v4;

  [(PKAccountBillPaymentAmountDescriptionView *)self _enteredAmountDidChangeTo:v6];
}

- (void)_updateEnteredAmount:(id)a3
{
  objc_storeStrong(&self->_enteredAmount, a3);
  v6 = a3;
  v5 = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [v5 setCurrentAmount:v6 forceFormatForDisplay:PKIsVision() ^ 1];

  [(PKAccountBillPaymentAmountDescriptionView *)self _enteredAmountDidChangeTo:v6];
}

- (void)_enteredAmountDidChangeTo:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained billPaymentAmountDescriptionView:self hasChangedAmount:v4 isValidAmount:{-[PKAccountBillPaymentAmountDescriptionView _isEnteredAmountValid](self, "_isEnteredAmountValid")}];
}

- (BOOL)_isEnteredAmountValid
{
  enteredAmount = self->_enteredAmount;
  v4 = [MEMORY[0x1E696AB90] notANumber];
  LOBYTE(enteredAmount) = [(NSDecimalNumber *)enteredAmount isEqualToNumber:v4];

  if (enteredAmount)
  {
    return 0;
  }

  v5 = self->_enteredAmount;
  v6 = [MEMORY[0x1E696AB90] zero];
  LOBYTE(v5) = [(NSDecimalNumber *)v5 isEqualToNumber:v6];

  if (v5)
  {
    return 0;
  }

  maximumAmount = self->_maximumAmount;
  if (maximumAmount)
  {
    if ([(NSDecimalNumber *)maximumAmount compare:self->_enteredAmount]== NSOrderedAscending)
    {
      return 0;
    }
  }

  minimumAmount = self->_minimumAmount;
  return !minimumAmount || [(NSDecimalNumber *)minimumAmount compare:self->_enteredAmount]!= NSOrderedDescending;
}

- (BOOL)_shouldShakeWithNewAmount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AB90] notANumber];
    v6 = [v4 compare:v5];

    if (v6)
    {
      v7 = [(NSDecimalNumber *)self->_maximumAmount decimalNumberBySubtracting:v4];
      v8 = [MEMORY[0x1E696AB90] zero];
      v9 = [v7 compare:v8];

      if (v9 != -1)
      {
        v10 = [MEMORY[0x1E696AB90] zero];
        if (([v4 isEqualToNumber:v10] & 1) != 0 || (minimumAmount = self->_minimumAmount) == 0)
        {
        }

        else
        {
          v12 = [(NSDecimalNumber *)minimumAmount compare:v4];

          if (v12 == 1)
          {
            goto LABEL_7;
          }
        }

        v13 = 0;
        goto LABEL_11;
      }

LABEL_7:
      v13 = 1;
LABEL_11:

      goto LABEL_12;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (id)_keypadSuggestions
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  IsLastMonthsStatement = accountCurrentStatementIsLastMonthsStatement(self->_account);
  v5 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList currencyCode];
  [(PKAccount *)self->_account feature];
  v6 = [(PKAccount *)self->_account creditDetails];
  v7 = [v6 accountSummary];
  v8 = [v7 currentStatement];
  v43 = [v7 balanceSummary];
  v9 = [v7 pastDueAmount];
  v44 = v8;
  if (IsLastMonthsStatement)
  {
    v47 = [v8 closingDate];
  }

  else
  {
    v47 = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v45 = v6;
  v11 = [v6 productTimeZone];
  [v10 setTimeZone:v11];

  v12 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v10 setLocale:v12];

  [v10 setLocalizedDateFormatFromTemplate:@"MMM"];
  v46 = v9;
  if (v9)
  {
    v13 = [MEMORY[0x1E696AB90] zero];
    v14 = [v9 compare:v13];

    if (v14 == 1)
    {
      v15 = MEMORY[0x1E69B89E0];
      v16 = PKLocalizedFeatureString();
      if (v5)
      {
        v17 = [v15 suggestionWithTitle:v16 value:v46 currencyCode:v5];
      }

      else
      {
        v18 = [v6 currencyCode];
        v17 = [v15 suggestionWithTitle:v16 value:v46 currencyCode:v18];
      }

      [v3 addObject:v17];
    }
  }

  v19 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:1];
  if (v19)
  {
    v20 = MEMORY[0x1E69B89E0];
    v21 = PKLocalizedFeatureString();
    v22 = [v19 amount];
    v23 = [v20 suggestionWithTitle:v21 value:v22 currencyCode:v5];

    [v3 addObject:v23];
  }

  v24 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:18];

  if (v24)
  {
    if (v47 && ([v10 stringFromDate:?], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      v42 = v25;
      v27 = PKLocalizedFeatureString();
    }

    else
    {
      v27 = PKLocalizedFeatureString();
    }

    v28 = MEMORY[0x1E69B89E0];
    v29 = [v24 amount];
    v30 = [v28 suggestionWithTitle:v27 value:v29 currencyCode:v5];

    [v3 addObject:v30];
  }

  v31 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:19];

  if (v31)
  {
    v32 = [v43 pendingPurchases];
    if (!v32 || ([MEMORY[0x1E696AB90] zero], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v32, "compare:", v33), v33, v34 != 1))
    {
      [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
    }

    v35 = PKLocalizedFeatureString();
    v36 = MEMORY[0x1E69B89E0];
    v37 = [v31 amount];
    v38 = [v36 suggestionWithTitle:v35 value:v37 currencyCode:v5];

    [v3 addObject:v38];
  }

  if ([v3 count] > 3)
  {
    v39 = [v3 subarrayWithRange:{0, 3}];
  }

  else
  {
    v39 = [v3 copy];
  }

  v40 = v39;

  return v40;
}

- (PKAccountBillPaymentAmountDescriptionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end