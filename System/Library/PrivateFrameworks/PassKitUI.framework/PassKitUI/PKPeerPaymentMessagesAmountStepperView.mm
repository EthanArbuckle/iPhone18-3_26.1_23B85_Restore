@interface PKPeerPaymentMessagesAmountStepperView
+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category;
+ (CGSize)sizeThatFits:(CGSize)fits forSizeCategory:(unint64_t)category;
+ (double)_amountLabelFontSizeForSizeCategory:(unint64_t)category;
+ (id)_amountLabelFontForSizeCategory:(unint64_t)category;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCurrencyAmount)amount;
- (PKPeerPaymentMessagesAmountStepperView)initWithSizeCategory:(unint64_t)category;
- (id)_decimalNumberFromPosixString:(id)string;
- (id)_posixFormatter;
- (id)_posixLocale;
- (id)_posixStringFromDecimalNumber:(id)number;
- (id)_stepperButtonWithSymbolName:(id)name;
- (id)_stringForAction:(unint64_t)action;
- (id)_updatePosixString:(id)string withAction:(unint64_t)action maxDigits:(unint64_t)digits maxDecimalPlaces:(unint64_t)places;
- (void)_cleanupPosixString;
- (void)_decrementAmount;
- (void)_handleLongPress:(id)press;
- (void)_handleTap:(id)tap;
- (void)_incrementAmount;
- (void)_shakeAmountLabel;
- (void)_updateContent;
- (void)dealloc;
- (void)handleNumberPadAction:(unint64_t)action;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesChanged:(id)changed withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setAmount:(id)amount;
- (void)setPlusMinusVisible:(BOOL)visible animated:(BOOL)animated;
- (void)setSizeCategory:(unint64_t)category;
- (void)setStyle:(unint64_t)style;
- (void)traitCollectionDidChange:(id)change;
- (void)validateNumberPadInput;
@end

@implementation PKPeerPaymentMessagesAmountStepperView

+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category
{
  [self sizeThatFits:category forSizeCategory:{300.0, 0.0}];
  result.height = v4;
  result.width = v3;
  return result;
}

- (PKPeerPaymentMessagesAmountStepperView)initWithSizeCategory:(unint64_t)category
{
  v58[1] = *MEMORY[0x1E69E9840];
  [objc_opt_class() referenceSizeForSizeCategory:category];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v54.receiver = self;
  v54.super_class = PKPeerPaymentMessagesAmountStepperView;
  v10 = [(PKPeerPaymentMessagesAmountStepperView *)&v54 initWithFrame:v8, v9, v5, v7];
  if (v10)
  {
    zero = [MEMORY[0x1E696AB90] zero];
    minAmount = v10->_minAmount;
    v10->_minAmount = zero;

    amountCurrency = v10->_amountCurrency;
    v10->_amountCurrency = @"USD";

    traitCollection = [(PKPeerPaymentMessagesAmountStepperView *)v10 traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v10->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(PKPeerPaymentMessagesAmountStepperView *)v10 setBackgroundColor:clearColor];

    v17 = objc_alloc(MEMORY[0x1E69DD250]);
    [(PKPeerPaymentMessagesAmountStepperView *)v10 bounds];
    v18 = [v17 initWithFrame:?];
    centerView = v10->_centerView;
    v10->_centerView = v18;

    v20 = v10->_centerView;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v20 setBackgroundColor:clearColor2];

    [(PKPeerPaymentMessagesAmountStepperView *)v10 addSubview:v10->_centerView];
    v22 = objc_alloc(MEMORY[0x1E6979378]);
    v23 = [v22 initWithType:*MEMORY[0x1E6979928]];
    [v23 setName:@"gaussianBlur"];
    v24 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PKPeerPaymentMessagesAmountStepperView *)v10 bounds];
    v25 = [v24 initWithFrame:?];
    amountLabel = v10->_amountLabel;
    v10->_amountLabel = v25;

    v27 = v10->_amountLabel;
    _amountLabelFont = [(PKPeerPaymentMessagesAmountStepperView *)v10 _amountLabelFont];
    [(UILabel *)v27 setFont:_amountLabelFont];

    v29 = v10->_amountLabel;
    v30 = +[PKPeerPaymentTheme primaryTextColor];
    [(UILabel *)v29 setTextColor:v30];

    [(UILabel *)v10->_amountLabel setTextAlignment:1];
    [(UILabel *)v10->_amountLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v10->_amountLabel setAccessibilityIdentifier:@"AppleCash.Amount.Label"];
    layer = [(UILabel *)v10->_amountLabel layer];
    v58[0] = v23;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:1];
    [layer setFilters:v32];

    [(PKPeerPaymentMessagesAmountStepperView *)v10 addSubview:v10->_amountLabel];
    v33 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(PKPeerPaymentMessagesAmountStepperView *)v10 bounds];
    v34 = [v33 initWithFrame:?];
    compactAmountLabel = v10->_compactAmountLabel;
    v10->_compactAmountLabel = v34;

    v36 = v10->_compactAmountLabel;
    _amountLabelFont2 = [(PKPeerPaymentMessagesAmountStepperView *)v10 _amountLabelFont];
    [(UILabel *)v36 setFont:_amountLabelFont2];

    v38 = v10->_compactAmountLabel;
    v39 = +[PKPeerPaymentTheme primaryTextColor];
    [(UILabel *)v38 setTextColor:v39];

    [(UILabel *)v10->_compactAmountLabel setTextAlignment:1];
    [(UILabel *)v10->_compactAmountLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v10->_compactAmountLabel setAccessibilityIdentifier:@"AppleCash.Amount.Label"];
    layer2 = [(UILabel *)v10->_compactAmountLabel layer];
    v57 = v23;
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
    [layer2 setFilters:v41];

    [(UIView *)v10->_centerView addSubview:v10->_compactAmountLabel];
    v42 = [(PKPeerPaymentMessagesAmountStepperView *)v10 _stepperButtonWithSymbolName:@"plus"];
    plusButton = v10->_plusButton;
    v10->_plusButton = v42;

    [(UIButton *)v10->_plusButton addTarget:v10 action:sel__incrementAmount forControlEvents:64];
    [(UIButton *)v10->_plusButton setAccessibilityIdentifier:*MEMORY[0x1E69B93E8]];
    [(PKPeerPaymentMessagesAmountStepperView *)v10 addSubview:v10->_plusButton];
    v44 = [(PKPeerPaymentMessagesAmountStepperView *)v10 _stepperButtonWithSymbolName:@"minus"];
    minusButton = v10->_minusButton;
    v10->_minusButton = v44;

    [(UIButton *)v10->_minusButton addTarget:v10 action:sel__decrementAmount forControlEvents:64];
    [(UIButton *)v10->_minusButton setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
    [(PKPeerPaymentMessagesAmountStepperView *)v10 addSubview:v10->_minusButton];
    layer3 = [(UIButton *)v10->_plusButton layer];
    v56 = v23;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
    [layer3 setFilters:v47];

    layer4 = [(UIButton *)v10->_minusButton layer];
    v55 = v23;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
    [layer4 setFilters:v49];

    [(PKPeerPaymentMessagesAmountStepperView *)v10 setPlusMinusVisible:1 animated:0];
    v50 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v10 action:sel__handleTap_];
    tapGestureRecognizer = v10->_tapGestureRecognizer;
    v10->_tapGestureRecognizer = v50;

    [(UITapGestureRecognizer *)v10->_tapGestureRecognizer setDelegate:v10];
    [(PKPeerPaymentMessagesAmountStepperView *)v10 addGestureRecognizer:v10->_tapGestureRecognizer];
    v52 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v10 action:sel__handleLongPress_];
    [v52 setMinimumPressDuration:0.2];
    [(PKPeerPaymentMessagesAmountStepperView *)v10 addGestureRecognizer:v52];
  }

  return v10;
}

- (id)_stepperButtonWithSymbolName:(id)name
{
  nameCopy = name;
  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = 21.0;
  }

  else
  {
    v5 = 26.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  v7 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v6 weight:v5];
  v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:nameCopy withConfiguration:v7];

  if (_UISolariumFeatureFlagEnabled())
  {
    _clearGlassButtonConfiguration = [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
    [_clearGlassButtonConfiguration setImage:v8];
    v10 = +[PKPeerPaymentTheme primaryTextColor];
    [_clearGlassButtonConfiguration setBaseForegroundColor:v10];

    v11 = [MEMORY[0x1E69DC738] buttonWithConfiguration:_clearGlassButtonConfiguration primaryAction:0];
  }

  else
  {
    v12 = [PKPeerPaymentMessagesButton alloc];
    [(PKPeerPaymentMessagesAmountStepperView *)self bounds];
    v11 = [(PKPeerPaymentMessagesButton *)v12 initWithFrame:?];
    [(PKPeerPaymentMessagesButton *)v11 setImage:v8 forState:0];
    _clearGlassButtonConfiguration = +[PKPeerPaymentTheme primaryTextColor];
    [(PKPeerPaymentMessagesButton *)v11 setTintColor:_clearGlassButtonConfiguration];
  }

  return v11;
}

- (void)dealloc
{
  longPressTimer = self->_longPressTimer;
  if (longPressTimer)
  {
    if (self->_longPressTimerSuspended)
    {
      dispatch_resume(longPressTimer);
      longPressTimer = self->_longPressTimer;
    }

    dispatch_source_cancel(longPressTimer);
    v4 = self->_longPressTimer;
    self->_longPressTimer = 0;
  }

  v5.receiver = self;
  v5.super_class = PKPeerPaymentMessagesAmountStepperView;
  [(PKPeerPaymentMessagesAmountStepperView *)&v5 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [PKPeerPaymentMessagesAmountStepperView sizeThatFits:self->_sizeCategory forSizeCategory:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

+ (CGSize)sizeThatFits:(CGSize)fits forSizeCategory:(unint64_t)category
{
  height = fits.height;
  width = fits.width;
  v6 = [self _amountLabelFontForSizeCategory:category];
  v7 = [MEMORY[0x1E696AAB0] pkui_attriutedStringWithString:@"$" font:v6 paragraphStyle:0];
  [v7 pkui_sizeThatFits:{width, height}];
  *&v8 = 50.0;
  if (v9 > 50.0)
  {
    [v7 pkui_sizeThatFits:{width, height}];
    v8 = v10;
  }

  v11 = width;
  v12 = *&v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = PKPeerPaymentMessagesAmountStepperView;
  [(PKPeerPaymentMessagesAmountStepperView *)&v25 layoutSubviews];
  [(PKPeerPaymentMessagesAmountStepperView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UILabel *)self->_amountLabel setFrame:?];
  v11 = PKIsPad();
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v12 = fmin(CGRectGetHeight(v26), 50.0);
  if (v11)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 44.0;
  }

  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  remainder = CGRectInset(v27, v13, 0.0);
  memset(&slice, 0, sizeof(slice));
  memset(&v22, 0, sizeof(v22));
  CGRectDivide(remainder, &slice, &remainder, v12, CGRectMinXEdge);
  CGRectDivide(remainder, &v22, &remainder, v12, CGRectMaxXEdge);
  [(UIView *)self->_centerView setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
  [(UIView *)self->_centerView bounds];
  v29 = CGRectInset(v28, 6.0, 0.0);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  [(UILabel *)self->_compactAmountLabel setFrame:?];
  MinX = CGRectGetMinX(slice);
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  [(UIButton *)self->_minusButton setFrame:MinX, CGRectGetMidY(v30) - v12 * 0.5, v12, v12];
  minusButton = self->_minusButton;
  PKFloatRoundToPixel();
  [(UIButton *)minusButton _setContinuousCornerRadius:?];
  v20 = CGRectGetMinX(v22);
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  [(UIButton *)self->_plusButton setFrame:v20, CGRectGetMidY(v31) - v12 * 0.5, v12, v12];
  plusButton = self->_plusButton;
  PKFloatRoundToPixel();
  [(UIButton *)plusButton _setContinuousCornerRadius:?];
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PKPeerPaymentMessagesAmountStepperView;
  changeCopy = change;
  [(PKPeerPaymentMessagesAmountStepperView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(PKPeerPaymentMessagesAmountStepperView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];

  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory2 isEqualToString:preferredContentSizeCategory];
  if ((changeCopy & 1) == 0)
  {
    self->_usesAccessibilityLayout = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC38]) == NSOrderedDescending;
    [(PKPeerPaymentMessagesAmountStepperView *)self setNeedsLayout];
  }
}

- (void)handleNumberPadAction:(unint64_t)action
{
  self->_usedKeypad = 1;
  if (self->_nextNumberPadActionCausesReset)
  {
    self->_nextNumberPadActionCausesReset = 0;
    pk_posixStringHasPeriod = [(NSString *)self->_amountString pk_posixStringHasPeriod];
    if (action - 10 >= 3 && (pk_posixStringHasPeriod & 1) == 0)
    {
      amountString = self->_amountString;
      self->_amountString = &stru_1F3BD7330;
    }
  }

  if (self->_maxAmount)
  {
    v7 = [(PKPeerPaymentMessagesAmountStepperView *)self _posixStringFromDecimalNumber:?];
    v8 = [v7 length];
  }

  else
  {
    v8 = 5;
  }

  v16 = [(PKPeerPaymentMessagesAmountStepperView *)self _updatePosixString:self->_amountString withAction:action maxDigits:v8 maxDecimalPlaces:[(NSNumberFormatter *)self->_currencyFormatter maximumFractionDigits]];
  objc_storeStrong(&self->_amountString, v16);
  [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
  amount = [(PKPeerPaymentMessagesAmountStepperView *)self amount];
  amountChangedHandler = self->_amountChangedHandler;
  if (amountChangedHandler)
  {
    amountChangedHandler[2](amountChangedHandler, amount);
  }

  v9Amount = [amount amount];
  if (v9Amount)
  {
    minAmount = self->_minAmount;
    if (minAmount)
    {
      v13 = [(NSDecimalNumber *)minAmount compare:v9Amount];
      if (!self->_maxAmount || v13 == 1)
      {
LABEL_17:
        if (v13 == 1)
        {
          zero = [MEMORY[0x1E696AB90] zero];
          v15 = [v9Amount isEqualToNumber:zero];

          if ((v15 & 1) == 0)
          {
            [(PKPeerPaymentMessagesAmountStepperView *)self _shakeAmountLabel];
          }
        }

        goto LABEL_20;
      }
    }

    else if (!self->_maxAmount)
    {
      goto LABEL_20;
    }

    v13 = [v9Amount compare:?];
    goto LABEL_17;
  }

LABEL_20:
}

- (void)validateNumberPadInput
{
  [(PKPeerPaymentMessagesAmountStepperView *)self _cleanupPosixString];

  [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesAmountStepperView;
  [(PKPeerPaymentMessagesAmountStepperView *)&v4 pressesBegan:began withEvent:event];
}

- (void)pressesChanged:(id)changed withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesAmountStepperView;
  [(PKPeerPaymentMessagesAmountStepperView *)&v4 pressesChanged:changed withEvent:event];
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v4.receiver = self;
  v4.super_class = PKPeerPaymentMessagesAmountStepperView;
  [(PKPeerPaymentMessagesAmountStepperView *)&v4 pressesCancelled:cancelled withEvent:event];
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v25 = *MEMORY[0x1E69E9840];
  endedCopy = ended;
  eventCopy = event;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [endedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v8)
  {
LABEL_41:
    v19.receiver = self;
    v19.super_class = PKPeerPaymentMessagesAmountStepperView;
    [(PKPeerPaymentMessagesAmountStepperView *)&v19 pressesEnded:endedCopy withEvent:eventCopy];
    goto LABEL_42;
  }

  v9 = v8;
  v18 = eventCopy;
  v10 = 0;
  v11 = *v21;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v21 != v11)
      {
        objc_enumerationMutation(endedCopy);
      }

      v13 = [*(*(&v20 + 1) + 8 * i) key];
      v14 = v13;
      if (v13)
      {
        characters = [v13 characters];
        if ([characters isEqualToString:@"1"])
        {
          v16 = 1;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"2"])
        {
          v16 = 2;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"3"])
        {
          v16 = 3;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"4"])
        {
          v16 = 4;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"5"])
        {
          v16 = 5;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"6"])
        {
          v16 = 6;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"7"])
        {
          v16 = 7;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"8"])
        {
          v16 = 8;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"9"])
        {
          v16 = 9;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"."])
        {
          v16 = 10;
          goto LABEL_31;
        }

        if ([characters isEqualToString:@"0"])
        {
          v16 = 11;
          goto LABEL_31;
        }

        if ([v14 keyCode] == 42)
        {
          v16 = 12;
LABEL_31:
          if (self->_nextNumberPadActionCausesReset)
          {
            v17 = 1;
          }

          else
          {
            v17 = !self->_usedKeypad && !self->_usedStepper;
          }

          self->_nextNumberPadActionCausesReset = v17;
          [(PKPeerPaymentMessagesAmountStepperView *)self handleNumberPadAction:v16];
          v10 = 1;
        }
      }
    }

    v9 = [endedCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v9);
  eventCopy = v18;
  if ((v10 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_42:
}

- (id)_stringForAction:(unint64_t)action
{
  if (action - 10 >= 3)
  {
    action = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", action];
  }

  else
  {
    action = off_1E8018238[action - 10];
  }

  return action;
}

- (id)_posixLocale
{
  _posixFormatter = [(PKPeerPaymentMessagesAmountStepperView *)self _posixFormatter];
  locale = [_posixFormatter locale];

  return locale;
}

- (id)_posixFormatter
{
  if (qword_1EBDAA898 != -1)
  {
    dispatch_once(&qword_1EBDAA898, &__block_literal_global_86);
  }

  v3 = _MergedGlobals_6;

  return v3;
}

uint64_t __57__PKPeerPaymentMessagesAmountStepperView__posixFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = _MergedGlobals_6;
  _MergedGlobals_6 = v0;

  [_MergedGlobals_6 setNumberStyle:1];
  v2 = _MergedGlobals_6;
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [_MergedGlobals_6 setAllowsFloats:1];
  [_MergedGlobals_6 setGroupingSeparator:&stru_1F3BD7330];
  v4 = _MergedGlobals_6;

  return [v4 setDecimalSeparator:@"."];
}

- (id)_decimalNumberFromPosixString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    v7 = 0;
LABEL_6:
    zero = [MEMORY[0x1E696AB90] zero];

    goto LABEL_7;
  }

  v5 = MEMORY[0x1E696AB90];
  _posixLocale = [(PKPeerPaymentMessagesAmountStepperView *)self _posixLocale];
  v7 = [v5 decimalNumberWithString:stringCopy locale:_posixLocale];

  if (!v7)
  {
    goto LABEL_6;
  }

  notANumber = [MEMORY[0x1E696AB90] notANumber];
  v9 = [v7 isEqualToNumber:notANumber];

  zero = v7;
  if (v9)
  {
    goto LABEL_6;
  }

LABEL_7:

  return zero;
}

- (id)_posixStringFromDecimalNumber:(id)number
{
  numberCopy = number;
  _posixFormatter = [(PKPeerPaymentMessagesAmountStepperView *)self _posixFormatter];
  v6 = [_posixFormatter stringFromNumber:numberCopy];

  return v6;
}

- (id)_updatePosixString:(id)string withAction:(unint64_t)action maxDigits:(unint64_t)digits maxDecimalPlaces:(unint64_t)places
{
  stringCopy = string;
  if (stringCopy)
  {
    v11 = stringCopy;
  }

  else
  {
    v11 = &stru_1F3BD7330;
  }

  v12 = [(__CFString *)v11 length];
  pk_posixStringHasPeriod = [(__CFString *)v11 pk_posixStringHasPeriod];
  pk_posixStringDecimalPlaces = [(__CFString *)v11 pk_posixStringDecimalPlaces];
  v15 = v11;
  v16 = v15;
  if (action == 10)
  {
    if (places)
    {
      v19 = pk_posixStringHasPeriod;
    }

    else
    {
      v19 = 1;
    }

    v17 = v15;
    if (v19)
    {
      goto LABEL_20;
    }

    v20 = v15;
    if (!v12)
    {
      v20 = v15;
      if (self->_allowOpenRequest)
      {
        v21 = [(PKPeerPaymentMessagesAmountStepperView *)self _stringForAction:11];
        v20 = [(__CFString *)v16 stringByAppendingString:v21];
      }
    }

    v18 = [(PKPeerPaymentMessagesAmountStepperView *)self _stringForAction:10];
    v17 = [v20 stringByAppendingString:v18];

    goto LABEL_19;
  }

  if (action == 12)
  {
    v17 = v15;
    if (![(__CFString *)v15 length])
    {
      goto LABEL_20;
    }

    v17 = [(__CFString *)v16 substringWithRange:0, v12 - 1];
    v18 = v16;
    goto LABEL_19;
  }

  if (pk_posixStringHasPeriod)
  {
    v17 = v15;
    if (pk_posixStringDecimalPlaces >= places)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v17 = v15;
  if (v12 < digits)
  {
    if (action != 11 || (v17 = v15, v12))
    {
LABEL_18:
      v18 = [(PKPeerPaymentMessagesAmountStepperView *)self _stringForAction:action];
      v17 = [(__CFString *)v16 stringByAppendingString:v18];

LABEL_19:
    }
  }

LABEL_20:

  return v17;
}

- (void)_handleTap:(id)tap
{
  tapCopy = tap;
  state = [tapCopy state];
  v5 = tapCopy;
  if (state == 3)
  {
    [tapCopy locationInView:self];
    v7 = v6;
    [(PKPeerPaymentMessagesAmountStepperView *)self bounds];
    v9 = v8 / 3.0;
    if (self->_plusMinusVisible && v7 < v9)
    {
      [(PKPeerPaymentMessagesAmountStepperView *)self _decrementAmount];
    }

    else if (self->_plusMinusVisible && v7 > v9 + v9)
    {
      [(PKPeerPaymentMessagesAmountStepperView *)self _incrementAmount];
    }

    else
    {
      amountTappedHandler = self->_amountTappedHandler;
      v5 = tapCopy;
      if (!amountTappedHandler)
      {
        goto LABEL_13;
      }

      amountTappedHandler[2](amountTappedHandler, tapCopy);
    }

    v5 = tapCopy;
  }

LABEL_13:
}

- (void)_handleLongPress:(id)press
{
  pressCopy = press;
  if (self->_plusMinusVisible)
  {
    if (!self->_longPressTimer)
    {
      v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      longPressTimer = self->_longPressTimer;
      self->_longPressTimer = v5;

      dispatch_source_set_timer(self->_longPressTimer, 0, 0x2FAF080uLL, 0x2FAF080uLL);
      objc_initWeak(&location, self);
      v7 = self->_longPressTimer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__PKPeerPaymentMessagesAmountStepperView__handleLongPress___block_invoke;
      handler[3] = &unk_1E80110E0;
      objc_copyWeak(&v10, &location);
      v9 = pressCopy;
      dispatch_source_set_event_handler(v7, handler);
      self->_longPressTimerSuspended = 1;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
    }

    if ([pressCopy state] == 1)
    {
      if (self->_longPressTimerSuspended)
      {
        dispatch_resume(self->_longPressTimer);
        self->_longPressTimerSuspended = 0;
      }
    }

    else if ([pressCopy state] != 2 && !self->_longPressTimerSuspended)
    {
      dispatch_suspend(self->_longPressTimer);
      self->_longPressTimerSuspended = 1;
    }
  }
}

void __59__PKPeerPaymentMessagesAmountStepperView__handleLongPress___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    [*(a1 + 32) locationInView:WeakRetained];
    v4 = v3;
    [v6 bounds];
    if (v4 >= v5 / 3.0)
    {
      WeakRetained = v6;
      if (v4 <= v5 / 3.0 + v5 / 3.0)
      {
        goto LABEL_7;
      }

      [v6 _incrementAmount];
    }

    else
    {
      [v6 _decrementAmount];
    }

    WeakRetained = v6;
  }

LABEL_7:
}

- (void)_decrementAmount
{
  v23 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
  zero = [MEMORY[0x1E696AB90] zero];
  if (v23 && ([v23 pk_isEqualToDecimalNumber:zero] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696AB90] one];
    v5 = [v23 decimalNumberBySubtracting:v4];

    if ([(NSDecimalNumber *)v5 pk_isLessThan:zero])
    {
      v6 = zero;

      v5 = v6;
    }

    if ([(NSDecimalNumber *)v5 pk_isEqualToDecimalNumber:zero])
    {
      allowOpenRequest = self->_allowOpenRequest;
    }

    else
    {
      allowOpenRequest = 0;
    }

    if (self->_minAmount && !allowOpenRequest)
    {
      v8 = [(NSDecimalNumber *)v5 compare:?];
      minAmount = v5;
      if (v8 != 1)
      {
        minAmount = self->_minAmount;
      }

      v10 = minAmount;

      v5 = v10;
    }

    if (!self->_style)
    {
      v11 = [MEMORY[0x1E696AB90] one];
      v12 = [(NSDecimalNumber *)v5 compare:v11]!= NSOrderedAscending || allowOpenRequest;

      if (!v12)
      {
        v13 = [MEMORY[0x1E696AB90] one];
        if ([v23 compare:v13] == 1)
        {
          v14 = [MEMORY[0x1E696AB90] one];
        }

        else
        {
          v14 = v23;
        }

        v15 = v14;

        v5 = v15;
      }
    }

    pk_posixStringDecimalPlaces = [(NSString *)self->_amountString pk_posixStringDecimalPlaces];
    v17 = [(PKPeerPaymentMessagesAmountStepperView *)self _posixStringFromDecimalNumber:v5];
    amountString = self->_amountString;
    self->_amountString = v17;

    v19 = [(NSString *)self->_amountString pk_posixStringWithMinimumDecimalPlaces:pk_posixStringDecimalPlaces];
    v20 = self->_amountString;
    self->_amountString = v19;

    [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
    amountChangedHandler = self->_amountChangedHandler;
    if (amountChangedHandler)
    {
      amount = [(PKPeerPaymentMessagesAmountStepperView *)self amount];
      amountChangedHandler[2](amountChangedHandler, amount);
    }

    self->_nextNumberPadActionCausesReset = 0;
    self->_usedStepper = 1;
  }
}

- (void)_incrementAmount
{
  v3 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
  if (v3)
  {
    v16 = v3;
    v4 = [MEMORY[0x1E696AB90] one];
    v5 = [v16 decimalNumberByAdding:v4];

    if (self->_maxAmount)
    {
      v6 = [(NSDecimalNumber *)v5 compare:?];
      maxAmount = v5;
      if (v6 != -1)
      {
        maxAmount = self->_maxAmount;
      }

      v8 = maxAmount;

      v5 = v8;
    }

    pk_posixStringDecimalPlaces = [(NSString *)self->_amountString pk_posixStringDecimalPlaces];
    v10 = [(PKPeerPaymentMessagesAmountStepperView *)self _posixStringFromDecimalNumber:v5];
    amountString = self->_amountString;
    self->_amountString = v10;

    v12 = [(NSString *)self->_amountString pk_posixStringWithMinimumDecimalPlaces:pk_posixStringDecimalPlaces];
    v13 = self->_amountString;
    self->_amountString = v12;

    [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
    amountChangedHandler = self->_amountChangedHandler;
    if (amountChangedHandler)
    {
      amount = [(PKPeerPaymentMessagesAmountStepperView *)self amount];
      amountChangedHandler[2](amountChangedHandler, amount);
    }

    self->_nextNumberPadActionCausesReset = 0;
    self->_usedStepper = 1;

    v3 = v16;
  }
}

- (PKCurrencyAmount)amount
{
  v3 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
  v4 = PKCurrencyAmountCreate(v3, self->_amountCurrency);

  return v4;
}

- (void)setAmount:(id)amount
{
  amountCopy = amount;
  if (amountCopy)
  {
    v19 = amountCopy;
    if (!self->_currencyFormatter || (amountCurrency = self->_amountCurrency, [amountCopy currency], v6 = objc_claimAutoreleasedReturnValue(), LOBYTE(amountCurrency) = -[NSString isEqualToString:](amountCurrency, "isEqualToString:", v6), v6, (amountCurrency & 1) == 0))
    {
      currency = [v19 currency];
      v8 = PKMutableNumberFormatterForCurrencyCode();
      currencyFormatter = self->_currencyFormatter;
      self->_currencyFormatter = v8;
    }

    v10 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
    amount = [v19 amount];
    if ([v10 isEqualToNumber:amount])
    {
      v12 = self->_amountCurrency;
      currency2 = [v19 currency];
      LOBYTE(v12) = [(NSString *)v12 isEqualToString:currency2];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    amount2 = [v19 amount];
    v15 = [(PKPeerPaymentMessagesAmountStepperView *)self _posixStringFromDecimalNumber:amount2];
    amountString = self->_amountString;
    self->_amountString = v15;

    currency3 = [v19 currency];
    v18 = self->_amountCurrency;
    self->_amountCurrency = currency3;

    [(PKPeerPaymentMessagesAmountStepperView *)self _cleanupPosixString];
    [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
LABEL_10:

    amountCopy = v19;
  }
}

- (void)_updateContent
{
  v3 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
  v11 = v3;
  if (self->_style)
  {
    [(NSNumberFormatter *)self->_currencyFormatter setAlwaysShowsDecimalSeparator:[(NSString *)self->_amountString pk_posixStringHasPeriod]];
    [(NSNumberFormatter *)self->_currencyFormatter setMinimumFractionDigits:[(NSString *)self->_amountString pk_posixStringDecimalPlaces]];
  }

  else
  {
    if ([v3 pk_isIntegralNumber])
    {
      maximumFractionDigits = 0;
    }

    else
    {
      maximumFractionDigits = [(NSNumberFormatter *)self->_currencyFormatter maximumFractionDigits];
    }

    [(NSNumberFormatter *)self->_currencyFormatter setMinimumFractionDigits:maximumFractionDigits];
    [(NSNumberFormatter *)self->_currencyFormatter setAlwaysShowsDecimalSeparator:0];
  }

  zero = [MEMORY[0x1E696AB90] zero];
  if (![v11 pk_isEqualToDecimalNumber:zero] || !self->_allowOpenRequest)
  {
    goto LABEL_14;
  }

  if ([(NSString *)self->_amountString length])
  {
    v6 = self->_amountString;
    if (v6 != @"0")
    {
      v7 = v6;
      if (v6)
      {
        v8 = [(__CFString *)v6 isEqualToString:@"0"];

        if (v8)
        {
          goto LABEL_20;
        }

LABEL_15:
        currencySymbol = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v11];
        goto LABEL_16;
      }

LABEL_14:

      goto LABEL_15;
    }
  }

LABEL_20:
  currencySymbol = [(NSNumberFormatter *)self->_currencyFormatter currencySymbol];
LABEL_16:
  v10 = currencySymbol;
  [(UILabel *)self->_compactAmountLabel setText:currencySymbol];
  [(UILabel *)self->_amountLabel setText:v10];
  [(PKPeerPaymentMessagesAmountStepperView *)self setNeedsLayout];
}

- (void)_cleanupPosixString
{
  v8 = [(PKPeerPaymentMessagesAmountStepperView *)self _decimalNumberFromPosixString:self->_amountString];
  v3 = [(NSString *)self->_amountString rangeOfString:@"." options:4];
  v5 = v4;
  if ([v8 pk_isIntegralNumber])
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [(NSString *)self->_amountString substringToIndex:v3];
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = [(NSString *)self->_amountString pk_posixStringWithMinimumDecimalPlaces:[(NSNumberFormatter *)self->_currencyFormatter maximumFractionDigits]];
  }

  amountString = self->_amountString;
  self->_amountString = v6;

LABEL_7:
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    self->_nextNumberPadActionCausesReset |= style != 0;
    if (!style)
    {
      [(PKPeerPaymentMessagesAmountStepperView *)self _cleanupPosixString];
    }

    [(PKPeerPaymentMessagesAmountStepperView *)self _updateContent];
  }
}

- (void)setSizeCategory:(unint64_t)category
{
  if (self->_sizeCategory != category)
  {
    self->_sizeCategory = category;
    _amountLabelFont = [(PKPeerPaymentMessagesAmountStepperView *)self _amountLabelFont];
    [(UILabel *)self->_compactAmountLabel setFont:_amountLabelFont];
    [(UILabel *)self->_amountLabel setFont:_amountLabelFont];
  }
}

- (void)_shakeAmountLabel
{
  v2 = 9;
  if (self->_plusMinusVisible)
  {
    v2 = 10;
  }

  layer = [*(&self->super.super.super.isa + OBJC_IVAR___PKPeerPaymentMessagesButton__highlightedBackgroundColor[v2]) layer];
  [layer removeAllAnimations];
  pkui_smallShakeAnimation = [MEMORY[0x1E6979300] pkui_smallShakeAnimation];
  v4 = [layer pkui_addAdditiveAnimation:pkui_smallShakeAnimation];
}

+ (double)_amountLabelFontSizeForSizeCategory:(unint64_t)category
{
  if (PKIsVision())
  {
    result = 52.0;
    if (category - 1 < 3)
    {
      return 100.0;
    }
  }

  else if (PKIsPad())
  {
    if (category - 1 >= 3)
    {
      return 70.0;
    }

    else
    {
      return dbl_1BE115170[category - 1];
    }
  }

  else if (category >= 4)
  {
    return 100.0;
  }

  else
  {
    return dbl_1BE115188[category];
  }

  return result;
}

+ (id)_amountLabelFontForSizeCategory:(unint64_t)category
{
  v3 = MEMORY[0x1E69DB878];
  [self _amountLabelFontSizeForSizeCategory:category];
  v4 = [v3 pk_peerPaymentChiseledCashFontOfSize:?];
  pk_fixedWidthFont = [v4 pk_fixedWidthFont];

  return pk_fixedWidthFont;
}

- (void)setPlusMinusVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (self->_plusMinusVisible != visible || !animated)
  {
    self->_plusMinusVisible = visible;
    layer = [(UIButton *)self->_plusButton layer];
    layer2 = [(UIButton *)self->_minusButton layer];
    layer3 = [(UILabel *)self->_compactAmountLabel layer];
    layer4 = [(UILabel *)self->_amountLabel layer];
    if (animatedCopy)
    {
      v38 = 0;
      v39 = 0;
      v36 = 0;
      v37 = 0;
      ContentViewVisibilityAnimations(&v39, &v38, &v37, &v36);
      v12 = v39;
      v13 = layer2;
      v14 = layer;
      v15 = v38;
      v16 = v37;
      v17 = v36;
      v18 = v17;
      if (visibleCopy)
      {
        v19 = v15;
      }

      else
      {
        v19 = v17;
      }

      v20 = v12;
      v35 = v12;
      if (visibleCopy)
      {
        v12 = v16;
        v21 = v17;
      }

      else
      {
        v21 = v15;
      }

      if (!visibleCopy)
      {
        v20 = v16;
      }

      v33 = v21;
      v34 = v20;
      v22 = [v14 pkui_addAdditiveAnimation:v19];
      v23 = [v14 pkui_addAdditiveAnimation:v12];
      v24 = [v13 pkui_addAdditiveAnimation:v19];
      v25 = [v13 pkui_addAdditiveAnimation:v12];
      v26 = [layer3 pkui_addAdditiveAnimation:v19];
      v27 = [layer3 pkui_addAdditiveAnimation:v12];
      v28 = [layer4 pkui_addAdditiveAnimation:v33];
      v29 = [layer4 pkui_addAdditiveAnimation:v34];

      layer = v14;
      layer2 = v13;
    }

    if (visibleCopy)
    {
      LODWORD(v11) = 1.0;
      [layer setOpacity:v11];
      [layer setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      LODWORD(v30) = 1.0;
      [layer2 setOpacity:v30];
      [layer2 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      LODWORD(v31) = 1.0;
      [layer3 setOpacity:v31];
      [layer3 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      [layer4 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      [layer4 setOpacity:0.0];
    }

    else
    {
      [layer setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      [layer setOpacity:0.0];
      [layer2 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      [layer2 setOpacity:0.0];
      [layer3 setValue:&unk_1F3CC6C38 forKeyPath:@"filters.gaussianBlur.inputRadius"];
      [layer3 setOpacity:0.0];
      LODWORD(v32) = 1.0;
      [layer4 setOpacity:v32];
      [layer4 setValue:&unk_1F3CC6C28 forKeyPath:@"filters.gaussianBlur.inputRadius"];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  if (self->_tapGestureRecognizer == recognizer)
  {
    [touch locationInView:self->_centerView];
    [(UIView *)self->_centerView bounds];
  }

  return 1;
}

@end