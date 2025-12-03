@interface PKAccountBillPaymentAmountDescriptionView
- (BOOL)_isEnteredAmountValid;
- (BOOL)_shouldShakeWithNewAmount:(id)amount;
- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountBillPaymentAmountDescriptionView)initWithSuggestedAmountList:(id)list account:(id)account configuration:(id)configuration delegate:(id)delegate;
- (PKAccountBillPaymentAmountDescriptionViewDelegate)delegate;
- (id)_keypadSuggestions;
- (id)_suggestedAmountDescriptionAttributedString;
- (void)_enteredAmountDidChangeTo:(id)to;
- (void)_updateDescriptionAlpha;
- (void)_updateEnteredAmount:(id)amount;
- (void)dismissKeyboard;
- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount;
- (void)layoutSubviews;
- (void)normalizeEnteredAmount;
- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion;
- (void)setDescriptionText:(id)text;
- (void)setShowAmount:(BOOL)amount;
- (void)setShowDescriptionLabels:(BOOL)labels;
- (void)setShowDescriptionSubtitle:(BOOL)subtitle;
- (void)setTitleText:(id)text;
- (void)showKeyboard;
@end

@implementation PKAccountBillPaymentAmountDescriptionView

- (PKAccountBillPaymentAmountDescriptionView)initWithSuggestedAmountList:(id)list account:(id)account configuration:(id)configuration delegate:(id)delegate
{
  listCopy = list;
  accountCopy = account;
  configurationCopy = configuration;
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = PKAccountBillPaymentAmountDescriptionView;
  v15 = [(PKAccountBillPaymentAmountDescriptionView *)&v54 init];
  v16 = v15;
  if (v15)
  {
    v43 = configurationCopy;
    v45 = accountCopy;
    v47 = listCopy;
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v16->_suggestionList, list);
    objc_storeStrong(&v16->_account, account);
    objc_storeStrong(&v16->_configuration, configuration);
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

      [(UILabel *)v22 setTextAlignment:v23, configurationCopy, accountCopy, listCopy];
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
    currencyCode = [(PKBillPaymentSuggestedAmountList *)v16->_suggestionList currencyCode];
    v31 = [(PKAccountBillPaymentAmountContainerView *)v29 initWithCurrencyCode:currencyCode minimumAmount:v16->_minimumAmount];
    amountContainerView = v16->_amountContainerView;
    v16->_amountContainerView = v31;

    _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)v16 _enterCurrencyAmountView];
    [_enterCurrencyAmountView setDelegate:v16];
    _keypadSuggestions = [(PKAccountBillPaymentAmountDescriptionView *)v16 _keypadSuggestions];
    if (_UISolariumFeatureFlagEnabled())
    {
      [_enterCurrencyAmountView setAmountSuggestions:_keypadSuggestions];
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
      initWithDefaultFrame = [[PKNumberPadSuggestionsView alloc] initWithDefaultFrame];
      suggestionView = v16->_suggestionView;
      v16->_suggestionView = initWithDefaultFrame;

      [(PKNumberPadSuggestionsView *)v16->_suggestionView setDelegate:v16];
      v41 = v16->_suggestionView;
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __104__PKAccountBillPaymentAmountDescriptionView_initWithSuggestedAmountList_account_configuration_delegate___block_invoke_2;
      v49[3] = &unk_1E8013EC0;
      v50 = _keypadSuggestions;
      [(PKNumberPadSuggestionsView *)v41 performBatchUpdates:v49];
      [_enterCurrencyAmountView setInputAccessoryView:v16->_suggestionView];
    }

    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_suggestedAmountTitleLabel];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_suggestedAmountDescriptionView];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 addSubview:v16->_amountContainerView];
    [(PKAccountBillPaymentAmountDescriptionView *)v16 setAccessibilityIdentifier:*MEMORY[0x1E69B96F0]];

    accountCopy = v46;
    listCopy = v48;
    configurationCopy = v44;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = 0.0;
  if (self->_showDescriptionLabels)
  {
    [(UILabel *)self->_suggestedAmountTitleLabel sizeThatFits:fits.width, 1.79769313e308];
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

- (void)numberPadSuggestionsView:(id)view didSelectSuggestion:(id)suggestion
{
  value = [suggestion value];
  [(PKAccountBillPaymentAmountDescriptionView *)self _updateEnteredAmount:value];
  if ([(PKAccountBillPaymentAmountDescriptionView *)self _shouldShakeWithNewAmount:value])
  {
    _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
    [_enterCurrencyAmountView pkui_smallShakeWithCompletion:0];
  }
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained billPaymentAmountDescriptionViewHasTappedLearnMore:self];

  return 0;
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleText, text);
    [(UILabel *)self->_suggestedAmountTitleLabel setText:self->_titleText];
    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }
}

- (void)setDescriptionText:(id)text
{
  textCopy = text;
  v4 = textCopy;
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    if ([(NSString *)textCopy length])
    {
      v5 = [(NSString *)textCopy stringByAppendingFormat:@" %@", self->_learnMoreString];
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
    _suggestedAmountDescriptionAttributedString = [(PKAccountBillPaymentAmountDescriptionView *)self _suggestedAmountDescriptionAttributedString];
    [(UITextView *)suggestedAmountDescriptionView setAttributedText:_suggestedAmountDescriptionAttributedString];

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
      linkColor = [MEMORY[0x1E69DC888] linkColor];
      [v8 pk_addLinkURL:v4 toRange:v9 withColor:v11 isUnderlined:{linkColor, 0}];
    }

    defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
    v14 = [defaultParagraphStyle mutableCopy];

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
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v8 addAttribute:v17 value:secondaryLabelColor range:{0, v3}];

    [v8 addAttribute:*MEMORY[0x1E69DB648] value:v7 range:{0, v3}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setShowAmount:(BOOL)amount
{
  [(PKAccountBillPaymentAmountContainerView *)self->_amountContainerView setShowAmount:amount];

  [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
}

- (void)setShowDescriptionLabels:(BOOL)labels
{
  if (self->_showDescriptionLabels == !labels)
  {
    self->_showDescriptionLabels = labels;
    [(PKAccountBillPaymentAmountDescriptionView *)self _updateDescriptionAlpha];

    [(PKAccountBillPaymentAmountDescriptionView *)self setNeedsLayout];
  }
}

- (void)setShowDescriptionSubtitle:(BOOL)subtitle
{
  if (self->_showDescriptionSubtitle == !subtitle)
  {
    self->_showDescriptionSubtitle = subtitle;
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
  _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [_enterCurrencyAmountView showKeyboard];
}

- (void)dismissKeyboard
{
  _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [_enterCurrencyAmountView dismissKeyboard];
}

- (void)normalizeEnteredAmount
{
  _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  v3 = self->_enteredAmount;
  p_maximumAmount = &self->_maximumAmount;
  maximumAmount = self->_maximumAmount;
  if (maximumAmount && [(NSDecimalNumber *)maximumAmount compare:self->_enteredAmount]== NSOrderedAscending || (p_maximumAmount = &self->_minimumAmount, (minimumAmount = self->_minimumAmount) != 0) && [(NSDecimalNumber *)minimumAmount compare:self->_enteredAmount]== NSOrderedDescending)
  {
    v7 = *p_maximumAmount;

    v3 = v7;
  }

  [(PKAccountBillPaymentAmountDescriptionView *)self _updateEnteredAmount:v3];
  [_enterCurrencyAmountView setCurrentAmount:v3 forceFormatForDisplay:1];
}

- (BOOL)enterCurrencyAmountView:(id)view shouldChangeAmountFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([(PKAccountBillPaymentAmountDescriptionView *)self _shouldShakeWithNewAmount:toCopy])
  {
    _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
    [_enterCurrencyAmountView pkui_smallShakeWithCompletion:0];
  }

  if (self->_minimumAmount && [fromCopy compare:?] == -1 && objc_msgSend(toCopy, "compare:", self->_minimumAmount) == -1)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    if ([fromCopy compare:zero])
    {
      zero2 = [MEMORY[0x1E696AB90] zero];
      v15 = [toCopy compare:zero2];

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
  v11 = !maximumAmount || [(NSDecimalNumber *)maximumAmount compare:fromCopy]!= NSOrderedAscending || [(NSDecimalNumber *)self->_maximumAmount compare:toCopy]!= NSOrderedAscending;
LABEL_10:

  return v11;
}

- (void)enterCurrencyAmountViewDidChangeAmount:(id)amount
{
  currentAmount = [amount currentAmount];
  enteredAmount = self->_enteredAmount;
  self->_enteredAmount = currentAmount;
  v6 = currentAmount;

  [(PKAccountBillPaymentAmountDescriptionView *)self _enteredAmountDidChangeTo:v6];
}

- (void)_updateEnteredAmount:(id)amount
{
  objc_storeStrong(&self->_enteredAmount, amount);
  amountCopy = amount;
  _enterCurrencyAmountView = [(PKAccountBillPaymentAmountDescriptionView *)self _enterCurrencyAmountView];
  [_enterCurrencyAmountView setCurrentAmount:amountCopy forceFormatForDisplay:PKIsVision() ^ 1];

  [(PKAccountBillPaymentAmountDescriptionView *)self _enteredAmountDidChangeTo:amountCopy];
}

- (void)_enteredAmountDidChangeTo:(id)to
{
  toCopy = to;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained billPaymentAmountDescriptionView:self hasChangedAmount:toCopy isValidAmount:{-[PKAccountBillPaymentAmountDescriptionView _isEnteredAmountValid](self, "_isEnteredAmountValid")}];
}

- (BOOL)_isEnteredAmountValid
{
  enteredAmount = self->_enteredAmount;
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  LOBYTE(enteredAmount) = [(NSDecimalNumber *)enteredAmount isEqualToNumber:notANumber];

  if (enteredAmount)
  {
    return 0;
  }

  v5 = self->_enteredAmount;
  zero = [MEMORY[0x1E696AB90] zero];
  LOBYTE(v5) = [(NSDecimalNumber *)v5 isEqualToNumber:zero];

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

- (BOOL)_shouldShakeWithNewAmount:(id)amount
{
  amountCopy = amount;
  if (amountCopy)
  {
    notANumber = [MEMORY[0x1E696AB90] notANumber];
    v6 = [amountCopy compare:notANumber];

    if (v6)
    {
      v7 = [(NSDecimalNumber *)self->_maximumAmount decimalNumberBySubtracting:amountCopy];
      zero = [MEMORY[0x1E696AB90] zero];
      v9 = [v7 compare:zero];

      if (v9 != -1)
      {
        zero2 = [MEMORY[0x1E696AB90] zero];
        if (([amountCopy isEqualToNumber:zero2] & 1) != 0 || (minimumAmount = self->_minimumAmount) == 0)
        {
        }

        else
        {
          v12 = [(NSDecimalNumber *)minimumAmount compare:amountCopy];

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
  currencyCode = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList currencyCode];
  [(PKAccount *)self->_account feature];
  creditDetails = [(PKAccount *)self->_account creditDetails];
  accountSummary = [creditDetails accountSummary];
  currentStatement = [accountSummary currentStatement];
  balanceSummary = [accountSummary balanceSummary];
  pastDueAmount = [accountSummary pastDueAmount];
  v44 = currentStatement;
  if (IsLastMonthsStatement)
  {
    closingDate = [currentStatement closingDate];
  }

  else
  {
    closingDate = 0;
  }

  v10 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v45 = creditDetails;
  productTimeZone = [creditDetails productTimeZone];
  [v10 setTimeZone:productTimeZone];

  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v10 setLocale:autoupdatingCurrentLocale];

  [v10 setLocalizedDateFormatFromTemplate:@"MMM"];
  v46 = pastDueAmount;
  if (pastDueAmount)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v14 = [pastDueAmount compare:zero];

    if (v14 == 1)
    {
      v15 = MEMORY[0x1E69B89E0];
      v16 = PKLocalizedFeatureString();
      if (currencyCode)
      {
        v17 = [v15 suggestionWithTitle:v16 value:v46 currencyCode:currencyCode];
      }

      else
      {
        currencyCode2 = [creditDetails currencyCode];
        v17 = [v15 suggestionWithTitle:v16 value:v46 currencyCode:currencyCode2];
      }

      [v3 addObject:v17];
    }
  }

  v19 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:1];
  if (v19)
  {
    v20 = MEMORY[0x1E69B89E0];
    v21 = PKLocalizedFeatureString();
    amount = [v19 amount];
    v23 = [v20 suggestionWithTitle:v21 value:amount currencyCode:currencyCode];

    [v3 addObject:v23];
  }

  v24 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:18];

  if (v24)
  {
    if (closingDate && ([v10 stringFromDate:?], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
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
    amount2 = [v24 amount];
    v30 = [v28 suggestionWithTitle:v27 value:amount2 currencyCode:currencyCode];

    [v3 addObject:v30];
  }

  v31 = [(PKBillPaymentSuggestedAmountList *)self->_suggestionList suggestedAmountWithCategory:19];

  if (v31)
  {
    pendingPurchases = [balanceSummary pendingPurchases];
    if (!pendingPurchases || ([MEMORY[0x1E696AB90] zero], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(pendingPurchases, "compare:", v33), v33, v34 != 1))
    {
      [(PKAccountServiceAccountResolutionConfiguration *)self->_configuration earlyInstallmentPlan];
    }

    v35 = PKLocalizedFeatureString();
    v36 = MEMORY[0x1E69B89E0];
    amount3 = [v31 amount];
    v38 = [v36 suggestionWithTitle:v35 value:amount3 currencyCode:currencyCode];

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