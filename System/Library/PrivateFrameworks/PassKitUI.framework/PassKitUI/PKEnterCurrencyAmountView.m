@interface PKEnterCurrencyAmountView
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (CGSize)defaultKeyboardSize;
- (CGSize)intrinsicContentSize;
- (CGSize)lastLayoutBoundsSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDecimalNumber)currentAmount;
- (PKEnterCurrencyAmountView)initWithCurrency:(id)a3 amount:(id)a4 bottomView:(id)a5;
- (PKEnterCurrencyAmountViewDelegate)delegate;
- (UIColor)keyboardColor;
- (id)_decimalNumberFromString:(id)a3;
- (id)_formatAmount:(id)a3 minimumFractionDigits:(unint64_t)a4;
- (id)_formatAmountForDisplay:(id)a3 alwaysShowDecimalSeparator:(BOOL)a4 minimumFractionDigits:(unint64_t)a5 useGroupingSeparator:(BOOL)a6;
- (id)_formattedStringForAmount:(id)a3;
- (id)pk_childrenForAppearance;
- (id)textSuggestionsForTextField:(id)a3;
- (unint64_t)_numberOfDecimalPlacesInString:(id)a3 decimalSeperator:(id)a4;
- (void)_addSuperscriptToAttributedString:(id)a3 formattedCurrencyAmount:(id)a4 currencyAmountWithoutSymbols:(id)a5;
- (void)_addSuperscriptToAttributedString:(id)a3 inRange:(_NSRange)a4;
- (void)_configureLabelGestureRecognizerEnabled:(BOOL)a3;
- (void)_createAmountFormatter;
- (void)_createNumberPad;
- (void)_createSubviews;
- (void)_tappedAmountLabel:(id)a3;
- (void)_updateContent;
- (void)_updateSuggestionsIfNecessary;
- (void)didMoveToWindow;
- (void)dismissKeyboard;
- (void)layoutSubviews;
- (void)numberPadInputView:(id)a3 requestReplaceSelectedTextFieldRangeWithText:(id)a4;
- (void)numberPadInputViewRequestDeleteText:(id)a3;
- (void)pk_applyAppearance:(id)a3;
- (void)setAmountFont:(id)a3;
- (void)setAmountSuggestions:(id)a3;
- (void)setAmountTextAlignment:(int64_t)a3;
- (void)setCurrency:(id)a3;
- (void)setCurrencySymbolFont:(id)a3;
- (void)setCurrentAmount:(id)a3 forceFormatForDisplay:(BOOL)a4;
- (void)setEnableDoneButton:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setInputAccessoryView:(id)a3;
- (void)setKeyboardColor:(id)a3;
- (void)setShowsDecimalPointButton:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)showKeyboard;
- (void)textFieldDidSelectSuggestion:(id)a3;
@end

@implementation PKEnterCurrencyAmountView

- (void)pk_applyAppearance:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKEnterCurrencyAmountView;
  v4 = a3;
  [(UIView *)&v6 pk_applyAppearance:v4];
  v5 = [v4 buttonTextColor];

  [(PKEnterCurrencyAmountView *)self setTextColor:v5];
}

- (id)pk_childrenForAppearance
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PKEnterCurrencyAmountView *)self amountTextField];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (PKEnterCurrencyAmountView)initWithCurrency:(id)a3 amount:(id)a4 bottomView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21.receiver = self;
  v21.super_class = PKEnterCurrencyAmountView;
  v11 = [(PKEnterCurrencyAmountView *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_isFirstKeyboardInput = 1;
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = @"USD";
    }

    objc_storeStrong(&v11->_currency, v13);
    v12->_labelScaleFactor = 1.0;
    v14 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:70.0];
    currencySymbolFont = v12->_currencySymbolFont;
    v12->_currencySymbolFont = v14;

    v16 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:70.0];
    amountFont = v12->_amountFont;
    v12->_amountFont = v16;

    v12->_amountTextAlignment = 1;
    v18 = [objc_opt_class() _defaultTextColor];
    textColor = v12->_textColor;
    v12->_textColor = v18;

    objc_storeStrong(&v12->_bottomView, a5);
    [(PKEnterCurrencyAmountView *)v12 _createAmountFormatter];
    [(PKEnterCurrencyAmountView *)v12 _createSubviews];
    [(PKEnterCurrencyAmountView *)v12 setCurrentAmount:v9];
    [(PKEnterCurrencyAmountView *)v12 setShowsDecimalPointButton:0];
    [(PKEnterCurrencyAmountView *)v12 setEnabled:1];
    [(PKEnterCurrencyAmountView *)v12 setEnableDoneButton:0];
    [(PKEnterCurrencyAmountView *)v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
  }

  return v12;
}

- (void)setShowsDecimalPointButton:(BOOL)a3
{
  v3 = a3;
  self->_showsDecimalPointButton = a3;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    if (v3)
    {
      v5 = 8;
    }

    else
    {
      v5 = 4;
    }

    [(UITextField *)self->_amountTextField setKeyboardType:v5];
    amountTextField = self->_amountTextField;

    [(UITextField *)amountTextField setAllowsNumberPadPopover:0];
  }

  else
  {
    numberPad = self->_numberPad;

    [(PKNumberPadInputView *)numberPad setShowsDecimalPointButton:v3];
  }
}

- (void)setCurrentAmount:(id)a3 forceFormatForDisplay:(BOOL)a4
{
  v6 = a3;
  v11 = v6;
  if (a4)
  {
    v7 = v6;
    v8 = 0;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = [(PKEnterCurrencyAmountView *)self currentAmount];
    v8 = PKEqualObjects();

    v7 = v11;
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  if ((v8 & 1) == 0)
  {
    v10 = [(PKEnterCurrencyAmountView *)self _formattedStringForAmount:v7];
    if (v10)
    {
      objc_storeStrong(&self->_amountString, v10);
      [(PKEnterCurrencyAmountView *)self _updateContent];
    }

    v7 = v11;
  }

LABEL_9:
}

- (NSDecimalNumber)currentAmount
{
  v2 = [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:self->_amountString];
  v3 = [MEMORY[0x1E696AB90] notANumber];
  if ([v2 isEqualToNumber:v3])
  {
    v4 = [MEMORY[0x1E696AB90] zero];
  }

  else
  {
    v4 = v2;
  }

  v5 = v4;

  return v5;
}

- (void)setCurrency:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_currency isEqualToString:?])
  {
    objc_storeStrong(&self->_currency, a3);
    [(PKEnterCurrencyAmountView *)self _createAmountFormatter];
    [(PKEnterCurrencyAmountView *)self setNeedsLayout];
  }
}

- (void)setEnableDoneButton:(BOOL)a3
{
  if (self->_enableDoneButton != a3)
  {
    if (a3)
    {
      objc_initWeak(&location, self);
      v5 = MEMORY[0x1E69DC628];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __49__PKEnterCurrencyAmountView_setEnableDoneButton___block_invoke;
      v12 = &unk_1E8010A60;
      objc_copyWeak(&v13, &location);
      v6 = [v5 actionWithHandler:&v9];
      [(UITextField *)self->_amountTextField pkui_attachDoneToolbarWithAdditionalItems:0 doneAction:v6, v9, v10, v11, v12];
      v7 = [(UITextField *)self->_amountTextField inputAccessoryView];
      internalInputAccessoryView = self->_internalInputAccessoryView;
      self->_internalInputAccessoryView = v7;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else if (self->_internalInputAccessoryView)
    {
      [(PKEnterCurrencyAmountView *)self setInputAccessoryView:0];
    }

    self->_enableDoneButton = a3;
  }
}

void __49__PKEnterCurrencyAmountView_setEnableDoneButton___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained dismissKeyboard];
    [v2 _configureLabelGestureRecognizerEnabled:1];
    WeakRetained = v2;
  }
}

- (void)setInputAccessoryView:(id)a3
{
  v5 = a3;
  if (self->_internalInputAccessoryView != v5)
  {
    objc_storeStrong(&self->_internalInputAccessoryView, a3);
    if (self->_numberPad || self->_enableDoneButton)
    {
      [(UITextField *)self->_amountTextField setInputAccessoryView:self->_internalInputAccessoryView];
    }
  }
}

- (void)dismissKeyboard
{
  if ((_UISolariumFeatureFlagEnabled() & 1) != 0 || PKIsVision())
  {
    [(PKEnterCurrencyAmountView *)self _configureLabelGestureRecognizerEnabled:0];
  }

  amountTextField = self->_amountTextField;

  [(UITextField *)amountTextField resignFirstResponder];
}

- (void)showKeyboard
{
  [(PKEnterCurrencyAmountView *)self _configureLabelGestureRecognizerEnabled:1];
  [(UITextField *)self->_amountTextField becomeFirstResponder];
  self->_isFirstKeyboardInput = 1;
}

- (void)setTextColor:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [objc_opt_class() _defaultTextColor];
  }

  v10 = v4;
  v5 = PKEqualObjects();
  v6 = v10;
  if ((v5 & 1) == 0)
  {
    v7 = [v10 copy];
    textColor = self->_textColor;
    self->_textColor = v7;

    if ([(PKEnterCurrencyAmountView *)self isUserInteractionEnabled])
    {
      [(UILabel *)self->_amountLabel setTextColor:v10];
    }

    v9 = _UISolariumFeatureFlagEnabled();
    v6 = v10;
    if ((v9 & 1) == 0)
    {
      [(PKNumberPadInputView *)self->_numberPad setTextColor:self->_textColor];
      v6 = v10;
    }
  }
}

- (void)setKeyboardColor:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_keyboardColor, a3);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(PKNumberPadInputView *)self->_numberPad setNumberPadColor:v5];
  }
}

- (UIColor)keyboardColor
{
  keyboardColor = self->_keyboardColor;
  if (keyboardColor)
  {
    v3 = keyboardColor;
  }

  else
  {
    v3 = [(PKNumberPadInputView *)self->_numberPad numberPadColor];
  }

  return v3;
}

- (void)setCurrencySymbolFont:(id)a3
{
  v5 = a3;
  if (self->_currencySymbolFont != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_currencySymbolFont, a3);
    if (!self->_currencySymbolFont)
    {
      v6 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:70.0];
      currencySymbolFont = self->_currencySymbolFont;
      self->_currencySymbolFont = v6;
    }

    [(PKEnterCurrencyAmountView *)self _updateContent];
    v5 = v8;
  }
}

- (void)setAmountFont:(id)a3
{
  v5 = a3;
  if (self->_amountFont != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_amountFont, a3);
    amountFont = self->_amountFont;
    if (!amountFont)
    {
      v7 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:70.0];
      v8 = self->_amountFont;
      self->_amountFont = v7;

      amountFont = self->_amountFont;
    }

    [(UILabel *)self->_amountLabel setFont:amountFont];
    [(UILabel *)self->_amountLabel sizeToFit];
    [(PKEnterCurrencyAmountView *)self _updateContent];
    v5 = v9;
  }
}

- (void)setAmountTextAlignment:(int64_t)a3
{
  if (self->_amountTextAlignment != a3)
  {
    self->_amountTextAlignment = a3;
    [(UILabel *)self->_amountLabel setTextAlignment:?];

    [(PKEnterCurrencyAmountView *)self _updateContent];
  }
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    self->_enabled = a3;
    amountLabel = self->_amountLabel;
    if (a3)
    {
      textColor = self->_textColor;
      v5 = self->_amountLabel;

      [(UILabel *)v5 setTextColor:textColor];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [(UILabel *)amountLabel setTextColor:v6];
    }
  }
}

- (void)setAmountSuggestions:(id)a3
{
  v6 = a3;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v4 = [v6 pk_arrayByApplyingBlock:&__block_literal_global_192];
    textSuggestions = self->_textSuggestions;
    self->_textSuggestions = v4;

    [(PKEnterCurrencyAmountView *)self _updateSuggestionsIfNecessary];
  }
}

- (CGSize)defaultKeyboardSize
{
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v3 = *MEMORY[0x1E695F060];
    v4 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    numberPad = self->_numberPad;
    if (numberPad)
    {
      [(PKNumberPadInputView *)numberPad frame];
      v3 = v6;
      v4 = v7;
    }

    else
    {
      [PKNumberPadInputView defaultSizeForInterfaceOrientation:1];
    }
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = PKEnterCurrencyAmountView;
  [(PKEnterCurrencyAmountView *)&v9 layoutSubviews];
  [(PKEnterCurrencyAmountView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UILabel *)self->_amountLabel setFrame:?];
  if (v4 != self->_lastLayoutBoundsSize.width || v6 != self->_lastLayoutBoundsSize.height)
  {
    self->_lastLayoutBoundsSize.width = v4;
    self->_lastLayoutBoundsSize.height = v6;
    [(UILabel *)self->_amountLabel _actualScaleFactor];
    self->_labelScaleFactor = v8;
    [(PKEnterCurrencyAmountView *)self _updateContent];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_amountLabel intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UILabel *)self->_amountLabel sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PKEnterCurrencyAmountView;
  [(PKEnterCurrencyAmountView *)&v3 didMoveToWindow];
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(PKEnterCurrencyAmountView *)self _createNumberPad];
  }
}

- (void)_createNumberPad
{
  if (!self->_numberPad && (_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    v3 = [(PKEnterCurrencyAmountView *)self window];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 windowScene];
      v6 = v5;
      if (v5)
      {
        +[PKNumberPadInputView defaultSizeForInterfaceOrientation:](PKNumberPadInputView, "defaultSizeForInterfaceOrientation:", [v5 interfaceOrientation]);
        v8 = v7;
        v10 = v9;
        if ((PKHomeButtonIsAvailable() & 1) == 0)
        {
          [v4 safeAreaInsets];
          v10 = v10 + v11;
        }

        [(UIView *)self->_bottomView sizeThatFits:v8, v10];
        v13 = v12;
        v14 = [PKNumberPadInputView alloc];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __45__PKEnterCurrencyAmountView__createNumberPad__block_invoke;
        v18[3] = &unk_1E801FC38;
        v18[4] = self;
        v15 = [(PKNumberPadInputView *)v14 initWithFrame:self delegate:v18 configurator:0.0, 0.0, v8, v10 + v13];
        numberPad = self->_numberPad;
        self->_numberPad = v15;

        if (self->_internalInputAccessoryView)
        {
          [(UITextField *)self->_amountTextField setInputAccessoryView:?];
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          [WeakRetained enterCurrencyAmountViewDidLayoutKeyboard:self];
        }
      }
    }
  }
}

void __45__PKEnterCurrencyAmountView__createNumberPad__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 440);
  v4 = a2;
  [v4 setShowsDecimalPointButton:v3];
  [v4 setNumberPadColor:*(*(a1 + 32) + 416)];
  [v4 setTextColor:*(*(a1 + 32) + 472)];
  [v4 setBottomView:*(*(a1 + 32) + 424)];
}

- (void)numberPadInputView:(id)a3 requestReplaceSelectedTextFieldRangeWithText:(id)a4
{
  v9 = a4;
  v5 = [(UITextField *)self->_amountTextField selectedTextRange];
  if (v5)
  {
    amountTextField = self->_amountTextField;
    v7 = [(UITextField *)amountTextField selectionRange];
    if ([(PKEnterCurrencyAmountView *)self textField:amountTextField shouldChangeCharactersInRange:v7 replacementString:v8, v9])
    {
      [(UITextField *)self->_amountTextField replaceRange:v5 withText:v9];
    }
  }
}

- (void)numberPadInputViewRequestDeleteText:(id)a3
{
  v4 = [(UITextField *)self->_amountTextField selectedTextRange];
  if (!v4)
  {
    return;
  }

  v19 = v4;
  if (![v4 isEmpty])
  {
    v11 = v19;
LABEL_7:
    v19 = v11;
    v12 = [(UITextField *)self->_amountTextField beginningOfDocument];
    amountTextField = self->_amountTextField;
    v14 = [v19 start];
    v15 = [(UITextField *)amountTextField offsetFromPosition:v12 toPosition:v14];

    v16 = self->_amountTextField;
    v17 = [v19 end];
    v18 = [(UITextField *)v16 offsetFromPosition:v12 toPosition:v17];

    if ([(PKEnterCurrencyAmountView *)self textField:self->_amountTextField shouldChangeCharactersInRange:v15 replacementString:v18 - v15, &stru_1F3BD7330])
    {
      [(UITextField *)self->_amountTextField replaceRange:v19 withText:&stru_1F3BD7330];
    }

    goto LABEL_10;
  }

  v5 = self->_amountTextField;
  v6 = [v19 start];
  v7 = [(UITextField *)v5 positionFromPosition:v6 offset:-1];

  if (v7)
  {
    v8 = self->_amountTextField;
    v9 = [v19 end];
    v10 = [(UITextField *)v8 textRangeFromPosition:v7 toPosition:v9];

    v11 = v10;
    if (!v10)
    {
      return;
    }

    goto LABEL_7;
  }

LABEL_10:
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  v60 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (self->_enabled)
  {
    v11 = [v8 text];
    v12 = [v11 length];

    if (!v12)
    {
      v13 = [MEMORY[0x1E696AB90] zero];
      v14 = [(PKEnterCurrencyAmountView *)self _formatAmount:v13 minimumFractionDigits:0];
      amountString = self->_amountString;
      self->_amountString = v14;
    }

    if (self->_isFirstKeyboardInput && self->_clearAmountOnFirstKeyboardInput)
    {
      v16 = [MEMORY[0x1E696AB90] zero];
      v17 = [(PKEnterCurrencyAmountView *)self _formatAmount:v16 minimumFractionDigits:0];
      v18 = self->_amountString;
      self->_amountString = v17;
    }

    self->_isFirstKeyboardInput = 0;
    v19 = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
    v54 = [MEMORY[0x1E695DF58] currentLocale];
    v20 = [v54 decimalSeparator];
    v21 = self->_amountString;
    v22 = [(NSString *)v21 rangeOfString:v20];
    v57 = v22 != 0x7FFFFFFFFFFFFFFFLL;
    v23 = [(NSNumberFormatter *)self->_amountFormatter groupingSeparator];
    v24 = [v10 stringByReplacingOccurrencesOfString:v23 withString:&stru_1F3BD7330];

    v25 = v20;
    v56 = [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:v24];
    v55 = v8;
    if ((([v24 isEqualToString:v20] & 1) != 0 || v56 && (objc_msgSend(MEMORY[0x1E696AB90], "notANumber"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v56, "isEqualToNumber:", v26), v26, (v27 & 1) == 0)) && objc_msgSend(v24, "length"))
    {
      if ([v24 length])
      {
        v28 = 0;
        v52 = v19;
        while (1)
        {
          v29 = [v24 substringWithRange:{v28, 1}];
          if ([v29 isEqualToString:v25])
          {
            if (v57 || v19 == 0)
            {
              v30 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1BD026000, v30, OS_LOG_TYPE_DEFAULT, "Ignoring decimal character input, input already has a decimal character", buf, 2u);
              }
            }

            else
            {
              [(NSString *)v21 stringByAppendingString:v29];
              v30 = v21;
              v21 = v57 = 1;
            }

            goto LABEL_32;
          }

          v30 = [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:v29];
          v31 = [MEMORY[0x1E696AB90] notANumber];
          v32 = [v30 isEqualToNumber:v31];

          if ((v32 & 1) == 0)
          {
            break;
          }

          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v59 = v29;
            v34 = v33;
            v35 = "Ignoring non-numeric input: %@";
            v36 = 12;
LABEL_20:
            _os_log_impl(&dword_1BD026000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, v36);
          }

LABEL_31:

LABEL_32:
          if (++v28 >= [v24 length])
          {
            goto LABEL_42;
          }
        }

        if (!v57)
        {
          v37 = v25;
          v33 = [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:v21];
          v38 = [MEMORY[0x1E696AB90] zero];
          v39 = [v33 isEqualToNumber:v38];

          if (v39)
          {
            v40 = v29;
          }

          else
          {
            v40 = [(NSString *)v21 stringByAppendingString:v29];
          }

          v41 = v40;

          v21 = v41;
          v25 = v37;
          v19 = v52;
          goto LABEL_31;
        }

        if ([(PKEnterCurrencyAmountView *)self _numberOfDecimalPlacesInString:v21 decimalSeperator:v25]< v19)
        {
          [(NSString *)v21 stringByAppendingString:v29];
          v21 = v33 = v21;
          goto LABEL_31;
        }

        v33 = PKLogFacilityTypeGetObject();
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_31;
        }

        *buf = 0;
        v34 = v33;
        v35 = "Ignoring input beyond maximum number of decimal places";
        v36 = 2;
        goto LABEL_20;
      }
    }

    else if (length && [(NSString *)v21 length])
    {
      if (v22 == 0x7FFFFFFFFFFFFFFFLL || self->_showsDecimalPointButton)
      {
        v42 = [(NSString *)v21 length]- 1;
      }

      else
      {
        v42 = [(NSString *)v21 rangeOfString:v25];
      }

      v43 = [(NSString *)v21 substringWithRange:0, v42];

      v21 = v43;
    }

LABEL_42:
    v44 = [(PKEnterCurrencyAmountView *)self currentAmount];
    v53 = v25;
    if ([(NSString *)v21 length])
    {
      [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:v21];
    }

    else
    {
      [MEMORY[0x1E696AB90] zero];
    }
    v45 = ;
    v8 = v55;
    if (v45)
    {
      v46 = [MEMORY[0x1E696AB90] notANumber];
      v47 = [v45 isEqualToNumber:v46];

      if ((v47 & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v49 = [WeakRetained enterCurrencyAmountView:self shouldChangeAmountFrom:v44 to:v45];

        if (v49)
        {
          objc_storeStrong(&self->_amountString, v21);
          [(PKEnterCurrencyAmountView *)self _updateContent];
          v50 = objc_loadWeakRetained(&self->_delegate);
          [v50 enterCurrencyAmountViewDidChangeAmount:self];
        }
      }
    }

    if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
    {
      [(PKEnterCurrencyAmountView *)self _updateSuggestionsIfNecessary];
    }
  }

  else
  {
    v24 = v9;
  }

  return 0;
}

- (id)textSuggestionsForTextField:(id)a3
{
  if (PKUIKeyboardIsHardwareKeyboardActive() && (PKIsPhone() & 1) != 0)
  {
    textSuggestions = 0;
  }

  else
  {
    textSuggestions = self->_textSuggestions;
  }

  return textSuggestions;
}

- (void)textFieldDidSelectSuggestion:(id)a3
{
  v9 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 enterCurrencyAmountView:self didSelectSuggestion:v9];
    }
  }
}

- (unint64_t)_numberOfDecimalPlacesInString:(id)a3 decimalSeperator:(id)a4
{
  v5 = a3;
  v6 = [v5 rangeOfString:a4 options:4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v5 length] - (v6 + v7);
  }

  return v8;
}

- (void)_createAmountFormatter
{
  v3 = PKMutableNumberFormatterForCurrencyCodeExcludingCurrencySymbols();
  amountFormatter = self->_amountFormatter;
  self->_amountFormatter = v3;

  [(NSNumberFormatter *)self->_amountFormatter setUsesGroupingSeparator:0];
  [(NSNumberFormatter *)self->_amountFormatter setAlwaysShowsDecimalSeparator:0];
  [(NSNumberFormatter *)self->_amountFormatter setMinimumFractionDigits:0];
  [(NSNumberFormatter *)self->_amountFormatter setGeneratesDecimalNumbers:1];
  [(NSNumberFormatter *)self->_amountFormatter setPositivePrefix:&stru_1F3BD7330];
  [(NSNumberFormatter *)self->_amountFormatter setPositiveSuffix:&stru_1F3BD7330];
  [(NSNumberFormatter *)self->_amountFormatter setNegativeSuffix:&stru_1F3BD7330];
  v5 = PKMutableNumberFormatterForCurrencyCode();
  currencySymbolAmountFormatter = self->_currencySymbolAmountFormatter;
  self->_currencySymbolAmountFormatter = v5;

  [(NSNumberFormatter *)self->_currencySymbolAmountFormatter setGeneratesDecimalNumbers:1];
  v7 = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
  v8 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:v7 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  roundingBehavior = self->_roundingBehavior;
  self->_roundingBehavior = v8;
}

- (id)_formatAmountForDisplay:(id)a3 alwaysShowDecimalSeparator:(BOOL)a4 minimumFractionDigits:(unint64_t)a5 useGroupingSeparator:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  currencySymbolAmountFormatter = self->_currencySymbolAmountFormatter;
  v11 = a3;
  [(NSNumberFormatter *)currencySymbolAmountFormatter setAlwaysShowsDecimalSeparator:v8];
  [(NSNumberFormatter *)self->_currencySymbolAmountFormatter setMinimumFractionDigits:a5];
  [(NSNumberFormatter *)self->_currencySymbolAmountFormatter setUsesGroupingSeparator:v6];
  v12 = [(NSNumberFormatter *)self->_currencySymbolAmountFormatter stringFromNumber:v11];

  v13 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:v13];

  return v14;
}

- (void)_addSuperscriptToAttributedString:(id)a3 formattedCurrencyAmount:(id)a4 currencyAmountWithoutSymbols:(id)a5
{
  v8 = a3;
  if (v8 && a4 && a5)
  {
    v18 = v8;
    v9 = a5;
    v10 = a4;
    v11 = [v18 string];
    v12 = [v11 rangeOfString:v10 options:0];
    v14 = v13;

    v15 = [v11 rangeOfString:v9 options:0];
    v17 = v16;

    if (v12 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v15 > v12)
      {
        [(PKEnterCurrencyAmountView *)self _addSuperscriptToAttributedString:v18 inRange:v12, v15 - v12];
      }

      if (v12 + v14 > v15 + v17)
      {
        [(PKEnterCurrencyAmountView *)self _addSuperscriptToAttributedString:v18 inRange:v15 + v17, v12 + v14 - (v15 + v17)];
      }
    }

    v8 = v18;
  }
}

- (void)_addSuperscriptToAttributedString:(id)a3 inRange:(_NSRange)a4
{
  if (a4.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = a4.length;
    location = a4.location;
    amountFont = self->_amountFont;
    v15 = a3;
    [(UIFont *)amountFont capHeight];
    v10 = v9;
    [(UIFont *)self->_currencySymbolFont capHeight];
    v12 = ((v10 - v11) * self->_labelScaleFactor);
    [v15 beginEditing];
    [v15 addAttribute:*MEMORY[0x1E69DB648] value:self->_currencySymbolFont range:{location, length}];
    v13 = *MEMORY[0x1E69DB610];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [v15 addAttribute:v13 value:v14 range:{location, length}];

    [v15 endEditing];
  }
}

- (id)_formatAmount:(id)a3 minimumFractionDigits:(unint64_t)a4
{
  amountFormatter = self->_amountFormatter;
  v7 = a3;
  [(NSNumberFormatter *)amountFormatter setMinimumFractionDigits:a4];
  v8 = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:v7];

  return v8;
}

- (id)_decimalNumberFromString:(id)a3
{
  v4 = [(NSNumberFormatter *)self->_amountFormatter numberFromString:a3];
  v5 = [v4 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];

  return v5;
}

- (void)_updateContent
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_amountString length])
  {
    v3 = [MEMORY[0x1E696AB90] zero];
    v4 = [(PKEnterCurrencyAmountView *)self _formatAmount:v3 minimumFractionDigits:0];
    amountString = self->_amountString;
    self->_amountString = v4;
  }

  v6 = [MEMORY[0x1E695DF58] currentLocale];
  v7 = [v6 decimalSeparator];
  v8 = [(NSString *)self->_amountString rangeOfString:v7]!= 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(PKEnterCurrencyAmountView *)self _numberOfDecimalPlacesInString:self->_amountString decimalSeperator:v7];
  v10 = [(PKEnterCurrencyAmountView *)self currentAmount];
  v11 = [(PKEnterCurrencyAmountView *)self _formatAmountForDisplay:v10 alwaysShowDecimalSeparator:v8 minimumFractionDigits:v9 useGroupingSeparator:1];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E696AD40]);
    if (self->_kerning)
    {
      kerning = self->_kerning;
    }

    else
    {
      kerning = &unk_1F3CC7D78;
    }

    v18 = *MEMORY[0x1E69DB660];
    v19[0] = kerning;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v15 = [v12 initWithString:v11 attributes:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(NSNumberFormatter *)self->_currencySymbolAmountFormatter currencySymbol];
  v17 = [v11 stringByReplacingOccurrencesOfString:v16 withString:&stru_1F3BD7330];
  [(PKEnterCurrencyAmountView *)self _addSuperscriptToAttributedString:v15 formattedCurrencyAmount:v11 currencyAmountWithoutSymbols:v17];
  [(UILabel *)self->_amountLabel setAttributedText:v15];
  [(UITextField *)self->_amountTextField setText:v11];
  [(UILabel *)self->_amountLabel sizeToFit];
  [(PKEnterCurrencyAmountView *)self setNeedsLayout];
}

- (void)_createSubviews
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  amountLabel = self->_amountLabel;
  self->_amountLabel = v3;

  v5 = self->_amountLabel;
  v6 = [(PKEnterCurrencyAmountView *)self amountFont];
  [(UILabel *)v5 setFont:v6];

  [(UILabel *)self->_amountLabel setTextAlignment:[(PKEnterCurrencyAmountView *)self amountTextAlignment]];
  [(UILabel *)self->_amountLabel sizeToFit];
  [(UILabel *)self->_amountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  [(PKEnterCurrencyAmountView *)self addSubview:self->_amountLabel];
  v7 = objc_alloc_init(_PKEnterCurrencyWithSuggestionsTextField);
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setHidden:1];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setDelegate:self];
  v12 = [(_PKEnterCurrencyWithSuggestionsTextField *)v7 inputAssistantItem];
  v8 = MEMORY[0x1E695E0F0];
  [v12 setLeadingBarButtonGroups:MEMORY[0x1E695E0F0]];
  [v12 setTrailingBarButtonGroups:v8];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setSuggestionsDelegate:self];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setSuggestionsDataSource:self];
  v9 = [(_PKEnterCurrencyWithSuggestionsTextField *)v7 textInputTraits];
  [v9 setDisablePrediction:1];

  amountTextField = self->_amountTextField;
  self->_amountTextField = &v7->super;
  v11 = v7;

  [(PKEnterCurrencyAmountView *)self addSubview:self->_amountTextField];
}

- (id)_formattedStringForAmount:(id)a3
{
  v4 = a3;
  if ([v4 pk_isIntegralNumber] && !self->_ignoreIntegralNumber)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
  }

  v6 = [(PKEnterCurrencyAmountView *)self _formatAmount:v4 minimumFractionDigits:v5];

  return v6;
}

- (void)_updateSuggestionsIfNecessary
{
  v3 = [(UITextField *)self->_amountTextField inputDelegate];
  [v3 setSuggestions:self->_textSuggestions];
}

- (void)_configureLabelGestureRecognizerEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(UILabel *)self->_amountLabel isUserInteractionEnabled]!= a3)
  {
    [(UILabel *)self->_amountLabel setUserInteractionEnabled:v3];
    [(UILabel *)self->_amountLabel removeAllGestureRecognizers];
    if (v3)
    {
      v5 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel__tappedAmountLabel_];
      amountLabelTapRecognizer = self->_amountLabelTapRecognizer;
      self->_amountLabelTapRecognizer = v5;

      amountLabel = self->_amountLabel;
      v8 = self->_amountLabelTapRecognizer;

      [(UILabel *)amountLabel addGestureRecognizer:v8];
    }

    else
    {
      v9 = self->_amountLabelTapRecognizer;
      self->_amountLabelTapRecognizer = 0;
    }
  }
}

- (void)_tappedAmountLabel:(id)a3
{
  if ([a3 state] == 3)
  {

    [(PKEnterCurrencyAmountView *)self showKeyboard];
  }
}

- (PKEnterCurrencyAmountViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)lastLayoutBoundsSize
{
  width = self->_lastLayoutBoundsSize.width;
  height = self->_lastLayoutBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end