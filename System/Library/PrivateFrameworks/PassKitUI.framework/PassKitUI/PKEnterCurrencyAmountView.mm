@interface PKEnterCurrencyAmountView
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)defaultKeyboardSize;
- (CGSize)intrinsicContentSize;
- (CGSize)lastLayoutBoundsSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDecimalNumber)currentAmount;
- (PKEnterCurrencyAmountView)initWithCurrency:(id)currency amount:(id)amount bottomView:(id)view;
- (PKEnterCurrencyAmountViewDelegate)delegate;
- (UIColor)keyboardColor;
- (id)_decimalNumberFromString:(id)string;
- (id)_formatAmount:(id)amount minimumFractionDigits:(unint64_t)digits;
- (id)_formatAmountForDisplay:(id)display alwaysShowDecimalSeparator:(BOOL)separator minimumFractionDigits:(unint64_t)digits useGroupingSeparator:(BOOL)groupingSeparator;
- (id)_formattedStringForAmount:(id)amount;
- (id)pk_childrenForAppearance;
- (id)textSuggestionsForTextField:(id)field;
- (unint64_t)_numberOfDecimalPlacesInString:(id)string decimalSeperator:(id)seperator;
- (void)_addSuperscriptToAttributedString:(id)string formattedCurrencyAmount:(id)amount currencyAmountWithoutSymbols:(id)symbols;
- (void)_addSuperscriptToAttributedString:(id)string inRange:(_NSRange)range;
- (void)_configureLabelGestureRecognizerEnabled:(BOOL)enabled;
- (void)_createAmountFormatter;
- (void)_createNumberPad;
- (void)_createSubviews;
- (void)_tappedAmountLabel:(id)label;
- (void)_updateContent;
- (void)_updateSuggestionsIfNecessary;
- (void)didMoveToWindow;
- (void)dismissKeyboard;
- (void)layoutSubviews;
- (void)numberPadInputView:(id)view requestReplaceSelectedTextFieldRangeWithText:(id)text;
- (void)numberPadInputViewRequestDeleteText:(id)text;
- (void)pk_applyAppearance:(id)appearance;
- (void)setAmountFont:(id)font;
- (void)setAmountSuggestions:(id)suggestions;
- (void)setAmountTextAlignment:(int64_t)alignment;
- (void)setCurrency:(id)currency;
- (void)setCurrencySymbolFont:(id)font;
- (void)setCurrentAmount:(id)amount forceFormatForDisplay:(BOOL)display;
- (void)setEnableDoneButton:(BOOL)button;
- (void)setEnabled:(BOOL)enabled;
- (void)setInputAccessoryView:(id)view;
- (void)setKeyboardColor:(id)color;
- (void)setShowsDecimalPointButton:(BOOL)button;
- (void)setTextColor:(id)color;
- (void)showKeyboard;
- (void)textFieldDidSelectSuggestion:(id)suggestion;
@end

@implementation PKEnterCurrencyAmountView

- (void)pk_applyAppearance:(id)appearance
{
  v6.receiver = self;
  v6.super_class = PKEnterCurrencyAmountView;
  appearanceCopy = appearance;
  [(UIView *)&v6 pk_applyAppearance:appearanceCopy];
  buttonTextColor = [appearanceCopy buttonTextColor];

  [(PKEnterCurrencyAmountView *)self setTextColor:buttonTextColor];
}

- (id)pk_childrenForAppearance
{
  v5[1] = *MEMORY[0x1E69E9840];
  amountTextField = [(PKEnterCurrencyAmountView *)self amountTextField];
  v5[0] = amountTextField;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (PKEnterCurrencyAmountView)initWithCurrency:(id)currency amount:(id)amount bottomView:(id)view
{
  currencyCopy = currency;
  amountCopy = amount;
  viewCopy = view;
  v21.receiver = self;
  v21.super_class = PKEnterCurrencyAmountView;
  v11 = [(PKEnterCurrencyAmountView *)&v21 init];
  v12 = v11;
  if (v11)
  {
    v11->_isFirstKeyboardInput = 1;
    if (currencyCopy)
    {
      v13 = currencyCopy;
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
    _defaultTextColor = [objc_opt_class() _defaultTextColor];
    textColor = v12->_textColor;
    v12->_textColor = _defaultTextColor;

    objc_storeStrong(&v12->_bottomView, view);
    [(PKEnterCurrencyAmountView *)v12 _createAmountFormatter];
    [(PKEnterCurrencyAmountView *)v12 _createSubviews];
    [(PKEnterCurrencyAmountView *)v12 setCurrentAmount:amountCopy];
    [(PKEnterCurrencyAmountView *)v12 setShowsDecimalPointButton:0];
    [(PKEnterCurrencyAmountView *)v12 setEnabled:1];
    [(PKEnterCurrencyAmountView *)v12 setEnableDoneButton:0];
    [(PKEnterCurrencyAmountView *)v12 setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
  }

  return v12;
}

- (void)setShowsDecimalPointButton:(BOOL)button
{
  buttonCopy = button;
  self->_showsDecimalPointButton = button;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    if (buttonCopy)
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

    [(PKNumberPadInputView *)numberPad setShowsDecimalPointButton:buttonCopy];
  }
}

- (void)setCurrentAmount:(id)amount forceFormatForDisplay:(BOOL)display
{
  amountCopy = amount;
  v11 = amountCopy;
  if (display)
  {
    v7 = amountCopy;
    v8 = 0;
    if (!amountCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentAmount = [(PKEnterCurrencyAmountView *)self currentAmount];
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
  notANumber = [MEMORY[0x1E696AB90] notANumber];
  if ([v2 isEqualToNumber:notANumber])
  {
    zero = [MEMORY[0x1E696AB90] zero];
  }

  else
  {
    zero = v2;
  }

  v5 = zero;

  return v5;
}

- (void)setCurrency:(id)currency
{
  currencyCopy = currency;
  if (![(NSString *)self->_currency isEqualToString:?])
  {
    objc_storeStrong(&self->_currency, currency);
    [(PKEnterCurrencyAmountView *)self _createAmountFormatter];
    [(PKEnterCurrencyAmountView *)self setNeedsLayout];
  }
}

- (void)setEnableDoneButton:(BOOL)button
{
  if (self->_enableDoneButton != button)
  {
    if (button)
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
      inputAccessoryView = [(UITextField *)self->_amountTextField inputAccessoryView];
      internalInputAccessoryView = self->_internalInputAccessoryView;
      self->_internalInputAccessoryView = inputAccessoryView;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    else if (self->_internalInputAccessoryView)
    {
      [(PKEnterCurrencyAmountView *)self setInputAccessoryView:0];
    }

    self->_enableDoneButton = button;
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

- (void)setInputAccessoryView:(id)view
{
  viewCopy = view;
  if (self->_internalInputAccessoryView != viewCopy)
  {
    objc_storeStrong(&self->_internalInputAccessoryView, view);
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

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (!colorCopy)
  {
    colorCopy = [objc_opt_class() _defaultTextColor];
  }

  v10 = colorCopy;
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

- (void)setKeyboardColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_keyboardColor, color);
  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
    [(PKNumberPadInputView *)self->_numberPad setNumberPadColor:colorCopy];
  }
}

- (UIColor)keyboardColor
{
  keyboardColor = self->_keyboardColor;
  if (keyboardColor)
  {
    numberPadColor = keyboardColor;
  }

  else
  {
    numberPadColor = [(PKNumberPadInputView *)self->_numberPad numberPadColor];
  }

  return numberPadColor;
}

- (void)setCurrencySymbolFont:(id)font
{
  fontCopy = font;
  if (self->_currencySymbolFont != fontCopy)
  {
    v8 = fontCopy;
    objc_storeStrong(&self->_currencySymbolFont, font);
    if (!self->_currencySymbolFont)
    {
      v6 = [MEMORY[0x1E69DB878] _lightSystemFontOfSize:70.0];
      currencySymbolFont = self->_currencySymbolFont;
      self->_currencySymbolFont = v6;
    }

    [(PKEnterCurrencyAmountView *)self _updateContent];
    fontCopy = v8;
  }
}

- (void)setAmountFont:(id)font
{
  fontCopy = font;
  if (self->_amountFont != fontCopy)
  {
    v9 = fontCopy;
    objc_storeStrong(&self->_amountFont, font);
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
    fontCopy = v9;
  }
}

- (void)setAmountTextAlignment:(int64_t)alignment
{
  if (self->_amountTextAlignment != alignment)
  {
    self->_amountTextAlignment = alignment;
    [(UILabel *)self->_amountLabel setTextAlignment:?];

    [(PKEnterCurrencyAmountView *)self _updateContent];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    amountLabel = self->_amountLabel;
    if (enabled)
    {
      textColor = self->_textColor;
      v5 = self->_amountLabel;

      [(UILabel *)v5 setTextColor:textColor];
    }

    else
    {
      tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      [(UILabel *)amountLabel setTextColor:tertiaryLabelColor];
    }
  }
}

- (void)setAmountSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    v4 = [suggestionsCopy pk_arrayByApplyingBlock:&__block_literal_global_192];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_amountLabel sizeThatFits:fits.width, fits.height];
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
    window = [(PKEnterCurrencyAmountView *)self window];
    v4 = window;
    if (window)
    {
      windowScene = [window windowScene];
      v6 = windowScene;
      if (windowScene)
      {
        +[PKNumberPadInputView defaultSizeForInterfaceOrientation:](PKNumberPadInputView, "defaultSizeForInterfaceOrientation:", [windowScene interfaceOrientation]);
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

- (void)numberPadInputView:(id)view requestReplaceSelectedTextFieldRangeWithText:(id)text
{
  textCopy = text;
  selectedTextRange = [(UITextField *)self->_amountTextField selectedTextRange];
  if (selectedTextRange)
  {
    amountTextField = self->_amountTextField;
    selectionRange = [(UITextField *)amountTextField selectionRange];
    if ([(PKEnterCurrencyAmountView *)self textField:amountTextField shouldChangeCharactersInRange:selectionRange replacementString:v8, textCopy])
    {
      [(UITextField *)self->_amountTextField replaceRange:selectedTextRange withText:textCopy];
    }
  }
}

- (void)numberPadInputViewRequestDeleteText:(id)text
{
  selectedTextRange = [(UITextField *)self->_amountTextField selectedTextRange];
  if (!selectedTextRange)
  {
    return;
  }

  v19 = selectedTextRange;
  if (![selectedTextRange isEmpty])
  {
    v11 = v19;
LABEL_7:
    v19 = v11;
    beginningOfDocument = [(UITextField *)self->_amountTextField beginningOfDocument];
    amountTextField = self->_amountTextField;
    start = [v19 start];
    v15 = [(UITextField *)amountTextField offsetFromPosition:beginningOfDocument toPosition:start];

    v16 = self->_amountTextField;
    v17 = [v19 end];
    v18 = [(UITextField *)v16 offsetFromPosition:beginningOfDocument toPosition:v17];

    if ([(PKEnterCurrencyAmountView *)self textField:self->_amountTextField shouldChangeCharactersInRange:v15 replacementString:v18 - v15, &stru_1F3BD7330])
    {
      [(UITextField *)self->_amountTextField replaceRange:v19 withText:&stru_1F3BD7330];
    }

    goto LABEL_10;
  }

  v5 = self->_amountTextField;
  start2 = [v19 start];
  v7 = [(UITextField *)v5 positionFromPosition:start2 offset:-1];

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

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  v60 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  stringCopy = string;
  v10 = stringCopy;
  if (self->_enabled)
  {
    text = [fieldCopy text];
    v12 = [text length];

    if (!v12)
    {
      zero = [MEMORY[0x1E696AB90] zero];
      v14 = [(PKEnterCurrencyAmountView *)self _formatAmount:zero minimumFractionDigits:0];
      amountString = self->_amountString;
      self->_amountString = v14;
    }

    if (self->_isFirstKeyboardInput && self->_clearAmountOnFirstKeyboardInput)
    {
      zero2 = [MEMORY[0x1E696AB90] zero];
      v17 = [(PKEnterCurrencyAmountView *)self _formatAmount:zero2 minimumFractionDigits:0];
      v18 = self->_amountString;
      self->_amountString = v17;
    }

    self->_isFirstKeyboardInput = 0;
    maximumFractionDigits = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    decimalSeparator = [currentLocale decimalSeparator];
    v21 = self->_amountString;
    v22 = [(NSString *)v21 rangeOfString:decimalSeparator];
    v57 = v22 != 0x7FFFFFFFFFFFFFFFLL;
    groupingSeparator = [(NSNumberFormatter *)self->_amountFormatter groupingSeparator];
    v24 = [v10 stringByReplacingOccurrencesOfString:groupingSeparator withString:&stru_1F3BD7330];

    v25 = decimalSeparator;
    v56 = [(PKEnterCurrencyAmountView *)self _decimalNumberFromString:v24];
    v55 = fieldCopy;
    if ((([v24 isEqualToString:decimalSeparator] & 1) != 0 || v56 && (objc_msgSend(MEMORY[0x1E696AB90], "notANumber"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v56, "isEqualToNumber:", v26), v26, (v27 & 1) == 0)) && objc_msgSend(v24, "length"))
    {
      if ([v24 length])
      {
        v28 = 0;
        v52 = maximumFractionDigits;
        while (1)
        {
          v29 = [v24 substringWithRange:{v28, 1}];
          if ([v29 isEqualToString:v25])
          {
            if (v57 || maximumFractionDigits == 0)
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
          notANumber = [MEMORY[0x1E696AB90] notANumber];
          v32 = [v30 isEqualToNumber:notANumber];

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
          zero3 = [MEMORY[0x1E696AB90] zero];
          v39 = [v33 isEqualToNumber:zero3];

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
          maximumFractionDigits = v52;
          goto LABEL_31;
        }

        if ([(PKEnterCurrencyAmountView *)self _numberOfDecimalPlacesInString:v21 decimalSeperator:v25]< maximumFractionDigits)
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
    currentAmount = [(PKEnterCurrencyAmountView *)self currentAmount];
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
    fieldCopy = v55;
    if (v45)
    {
      notANumber2 = [MEMORY[0x1E696AB90] notANumber];
      v47 = [v45 isEqualToNumber:notANumber2];

      if ((v47 & 1) == 0)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v49 = [WeakRetained enterCurrencyAmountView:self shouldChangeAmountFrom:currentAmount to:v45];

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
    v24 = stringCopy;
  }

  return 0;
}

- (id)textSuggestionsForTextField:(id)field
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

- (void)textFieldDidSelectSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 enterCurrencyAmountView:self didSelectSuggestion:suggestionCopy];
    }
  }
}

- (unint64_t)_numberOfDecimalPlacesInString:(id)string decimalSeperator:(id)seperator
{
  stringCopy = string;
  v6 = [stringCopy rangeOfString:seperator options:4];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [stringCopy length] - (v6 + v7);
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
  maximumFractionDigits = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
  v8 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:0 scale:maximumFractionDigits raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  roundingBehavior = self->_roundingBehavior;
  self->_roundingBehavior = v8;
}

- (id)_formatAmountForDisplay:(id)display alwaysShowDecimalSeparator:(BOOL)separator minimumFractionDigits:(unint64_t)digits useGroupingSeparator:(BOOL)groupingSeparator
{
  groupingSeparatorCopy = groupingSeparator;
  separatorCopy = separator;
  currencySymbolAmountFormatter = self->_currencySymbolAmountFormatter;
  displayCopy = display;
  [(NSNumberFormatter *)currencySymbolAmountFormatter setAlwaysShowsDecimalSeparator:separatorCopy];
  [(NSNumberFormatter *)self->_currencySymbolAmountFormatter setMinimumFractionDigits:digits];
  [(NSNumberFormatter *)self->_currencySymbolAmountFormatter setUsesGroupingSeparator:groupingSeparatorCopy];
  v12 = [(NSNumberFormatter *)self->_currencySymbolAmountFormatter stringFromNumber:displayCopy];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v14 = [v12 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v14;
}

- (void)_addSuperscriptToAttributedString:(id)string formattedCurrencyAmount:(id)amount currencyAmountWithoutSymbols:(id)symbols
{
  stringCopy = string;
  if (stringCopy && amount && symbols)
  {
    v18 = stringCopy;
    symbolsCopy = symbols;
    amountCopy = amount;
    string = [v18 string];
    v12 = [string rangeOfString:amountCopy options:0];
    v14 = v13;

    v15 = [string rangeOfString:symbolsCopy options:0];
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

    stringCopy = v18;
  }
}

- (void)_addSuperscriptToAttributedString:(id)string inRange:(_NSRange)range
{
  if (range.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    length = range.length;
    location = range.location;
    amountFont = self->_amountFont;
    stringCopy = string;
    [(UIFont *)amountFont capHeight];
    v10 = v9;
    [(UIFont *)self->_currencySymbolFont capHeight];
    v12 = ((v10 - v11) * self->_labelScaleFactor);
    [stringCopy beginEditing];
    [stringCopy addAttribute:*MEMORY[0x1E69DB648] value:self->_currencySymbolFont range:{location, length}];
    v13 = *MEMORY[0x1E69DB610];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v12];
    [stringCopy addAttribute:v13 value:v14 range:{location, length}];

    [stringCopy endEditing];
  }
}

- (id)_formatAmount:(id)amount minimumFractionDigits:(unint64_t)digits
{
  amountFormatter = self->_amountFormatter;
  amountCopy = amount;
  [(NSNumberFormatter *)amountFormatter setMinimumFractionDigits:digits];
  v8 = [(NSNumberFormatter *)self->_amountFormatter stringFromNumber:amountCopy];

  return v8;
}

- (id)_decimalNumberFromString:(id)string
{
  v4 = [(NSNumberFormatter *)self->_amountFormatter numberFromString:string];
  v5 = [v4 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];

  return v5;
}

- (void)_updateContent
{
  v19[1] = *MEMORY[0x1E69E9840];
  if (![(NSString *)self->_amountString length])
  {
    zero = [MEMORY[0x1E696AB90] zero];
    v4 = [(PKEnterCurrencyAmountView *)self _formatAmount:zero minimumFractionDigits:0];
    amountString = self->_amountString;
    self->_amountString = v4;
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  decimalSeparator = [currentLocale decimalSeparator];
  v8 = [(NSString *)self->_amountString rangeOfString:decimalSeparator]!= 0x7FFFFFFFFFFFFFFFLL;
  v9 = [(PKEnterCurrencyAmountView *)self _numberOfDecimalPlacesInString:self->_amountString decimalSeperator:decimalSeparator];
  currentAmount = [(PKEnterCurrencyAmountView *)self currentAmount];
  v11 = [(PKEnterCurrencyAmountView *)self _formatAmountForDisplay:currentAmount alwaysShowDecimalSeparator:v8 minimumFractionDigits:v9 useGroupingSeparator:1];
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

  currencySymbol = [(NSNumberFormatter *)self->_currencySymbolAmountFormatter currencySymbol];
  v17 = [v11 stringByReplacingOccurrencesOfString:currencySymbol withString:&stru_1F3BD7330];
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
  amountFont = [(PKEnterCurrencyAmountView *)self amountFont];
  [(UILabel *)v5 setFont:amountFont];

  [(UILabel *)self->_amountLabel setTextAlignment:[(PKEnterCurrencyAmountView *)self amountTextAlignment]];
  [(UILabel *)self->_amountLabel sizeToFit];
  [(UILabel *)self->_amountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9AE0]];
  [(PKEnterCurrencyAmountView *)self addSubview:self->_amountLabel];
  v7 = objc_alloc_init(_PKEnterCurrencyWithSuggestionsTextField);
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setHidden:1];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setDelegate:self];
  inputAssistantItem = [(_PKEnterCurrencyWithSuggestionsTextField *)v7 inputAssistantItem];
  v8 = MEMORY[0x1E695E0F0];
  [inputAssistantItem setLeadingBarButtonGroups:MEMORY[0x1E695E0F0]];
  [inputAssistantItem setTrailingBarButtonGroups:v8];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setSuggestionsDelegate:self];
  [(_PKEnterCurrencyWithSuggestionsTextField *)v7 setSuggestionsDataSource:self];
  textInputTraits = [(_PKEnterCurrencyWithSuggestionsTextField *)v7 textInputTraits];
  [textInputTraits setDisablePrediction:1];

  amountTextField = self->_amountTextField;
  self->_amountTextField = &v7->super;
  v11 = v7;

  [(PKEnterCurrencyAmountView *)self addSubview:self->_amountTextField];
}

- (id)_formattedStringForAmount:(id)amount
{
  amountCopy = amount;
  if ([amountCopy pk_isIntegralNumber] && !self->_ignoreIntegralNumber)
  {
    maximumFractionDigits = 0;
  }

  else
  {
    maximumFractionDigits = [(NSNumberFormatter *)self->_amountFormatter maximumFractionDigits];
  }

  v6 = [(PKEnterCurrencyAmountView *)self _formatAmount:amountCopy minimumFractionDigits:maximumFractionDigits];

  return v6;
}

- (void)_updateSuggestionsIfNecessary
{
  inputDelegate = [(UITextField *)self->_amountTextField inputDelegate];
  [inputDelegate setSuggestions:self->_textSuggestions];
}

- (void)_configureLabelGestureRecognizerEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(UILabel *)self->_amountLabel isUserInteractionEnabled]!= enabled)
  {
    [(UILabel *)self->_amountLabel setUserInteractionEnabled:enabledCopy];
    [(UILabel *)self->_amountLabel removeAllGestureRecognizers];
    if (enabledCopy)
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

- (void)_tappedAmountLabel:(id)label
{
  if ([label state] == 3)
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