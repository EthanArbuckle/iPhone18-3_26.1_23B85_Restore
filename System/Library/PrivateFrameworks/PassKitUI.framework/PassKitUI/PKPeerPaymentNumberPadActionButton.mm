@interface PKPeerPaymentNumberPadActionButton
+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category;
+ (double)adjustSize:(double)size forSizeCategory:(unint64_t)category;
- (PKPeerPaymentNumberPadActionButton)initWithSizeCategory:(unint64_t)category;
- (id)_axIDForAction:(unint64_t)action;
- (id)_titleForAction:(unint64_t)action;
- (void)_updateForFontSize;
- (void)layoutSubviews;
- (void)setAction:(unint64_t)action;
- (void)setSizeCategory:(unint64_t)category;
@end

@implementation PKPeerPaymentNumberPadActionButton

+ (CGSize)referenceSizeForSizeCategory:(unint64_t)category
{
  [self adjustSize:category forSizeCategory:70.0];
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

+ (double)adjustSize:(double)size forSizeCategory:(unint64_t)category
{
  if ((PKIsPad() & 1) != 0 || PKIsPhone())
  {
    if (category == 1)
    {
      v6 = 0.8;
      return size * v6;
    }

    if (!category)
    {
      v6 = 0.7;
      return size * v6;
    }
  }

  return size;
}

- (PKPeerPaymentNumberPadActionButton)initWithSizeCategory:(unint64_t)category
{
  [objc_opt_class() referenceSizeForSizeCategory:category];
  v6 = v5;
  v8 = v7;
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  v11 = _UISolariumFeatureFlagEnabled();
  v15.receiver = self;
  v15.super_class = PKPeerPaymentNumberPadActionButton;
  v12 = [(PKPeerPaymentMessagesButton *)&v15 initWithFrame:v11 ^ 1u usePlatterColor:v9, v10, v6, v8];
  v13 = v12;
  if (v12)
  {
    v12->_sizeCategory = category;
    [(PKPeerPaymentNumberPadActionButton *)v12 _updateForFontSize];
    [(PKPeerPaymentMessagesButton *)v13 setHighlighted:0];
  }

  return v13;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPeerPaymentNumberPadActionButton;
  [(PKPeerPaymentMessagesButton *)&v3 layoutSubviews];
  [(PKPeerPaymentNumberPadActionButton *)self bounds];
  CGRectGetWidth(v4);
  PKFloatRoundToPixel();
  [(PKPeerPaymentNumberPadActionButton *)self _setContinuousCornerRadius:?];
}

- (void)setSizeCategory:(unint64_t)category
{
  if (self->_sizeCategory != category)
  {
    self->_sizeCategory = category;
    [(PKPeerPaymentNumberPadActionButton *)self _updateForFontSize];
  }
}

- (void)setAction:(unint64_t)action
{
  self->_action = action;
  if (action == 12)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v5 = 24.0;
    }

    else
    {
      v5 = 30.0;
    }

    [objc_opt_class() adjustSize:self->_sizeCategory forSizeCategory:v5];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:?];
    v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"delete.backward" withConfiguration:v6];
    if (_UISolariumFeatureFlagEnabled())
    {
      _clearGlassButtonConfiguration = [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
      [_clearGlassButtonConfiguration setImage:v7];
      v9 = +[PKPeerPaymentTheme primaryTextColor];
      [_clearGlassButtonConfiguration setBaseForegroundColor:v9];

      [(PKPeerPaymentNumberPadActionButton *)self setConfiguration:_clearGlassButtonConfiguration];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __48__PKPeerPaymentNumberPadActionButton_setAction___block_invoke;
      v12[3] = &unk_1E8018188;
      v13 = v6;
      [(PKPeerPaymentNumberPadActionButton *)self setConfigurationUpdateHandler:v12];
    }

    else
    {
      [(PKPeerPaymentNumberPadActionButton *)self setImage:v7 forState:0];
      _clearGlassButtonConfiguration = +[PKPeerPaymentTheme primaryTextColor];
      [(PKPeerPaymentNumberPadActionButton *)self setTintColor:_clearGlassButtonConfiguration];
    }

    [(PKPeerPaymentNumberPadActionButton *)self setNeedsLayout];
  }

  else if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    if (PKIsVision())
    {
      [(PKPeerPaymentNumberPadActionButton *)self configuration];
    }

    else
    {
      [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
    }
    v6 = ;
    v10 = [(PKPeerPaymentNumberPadActionButton *)self _titleForAction:action];
    [v6 setTitle:v10];

    [(PKPeerPaymentNumberPadActionButton *)self setConfiguration:v6];
  }

  else
  {
    v6 = [(PKPeerPaymentNumberPadActionButton *)self _titleForAction:action];
    [(PKPeerPaymentNumberPadActionButton *)self setTitle:v6 forState:0];
  }

  v11 = [(PKPeerPaymentNumberPadActionButton *)self _axIDForAction:action];
  [(PKPeerPaymentNumberPadActionButton *)self setAccessibilityIdentifier:v11];
}

void __48__PKPeerPaymentNumberPadActionButton_setAction___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 configuration];
  v4 = @"delete.backward.fill";
  if ([v6 state] != 1 && objc_msgSend(v6, "state") != 4)
  {
    v4 = @"delete.backward";
  }

  v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:*(a1 + 32)];
  [v3 setImage:v5];
  [v6 setConfiguration:v3];
}

- (id)_titleForAction:(unint64_t)action
{
  if (qword_1EBDAA8A8 != -1)
  {
    dispatch_once(&qword_1EBDAA8A8, &__block_literal_global_377);
  }

  decimalSeparator = 0;
  if (action <= 5)
  {
    if (action <= 2)
    {
      if (action == 1)
      {
        v5 = qword_1EBDAA8A0;
        v6 = &unk_1F3CC7370;
      }

      else
      {
        if (action != 2)
        {
          goto LABEL_27;
        }

        v5 = qword_1EBDAA8A0;
        v6 = &unk_1F3CC7388;
      }
    }

    else if (action == 3)
    {
      v5 = qword_1EBDAA8A0;
      v6 = &unk_1F3CC73A0;
    }

    else
    {
      v5 = qword_1EBDAA8A0;
      if (action == 4)
      {
        v6 = &unk_1F3CC73B8;
      }

      else
      {
        v6 = &unk_1F3CC73D0;
      }
    }
  }

  else if (action > 8)
  {
    switch(action)
    {
      case 9uLL:
        v5 = qword_1EBDAA8A0;
        v6 = &unk_1F3CC7430;
        break;
      case 0xAuLL:
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        decimalSeparator = [currentLocale decimalSeparator];

        goto LABEL_27;
      case 0xBuLL:
        v5 = qword_1EBDAA8A0;
        v6 = &unk_1F3CC7448;
        break;
      default:
        goto LABEL_27;
    }
  }

  else if (action == 6)
  {
    v5 = qword_1EBDAA8A0;
    v6 = &unk_1F3CC73E8;
  }

  else
  {
    v5 = qword_1EBDAA8A0;
    if (action == 7)
    {
      v6 = &unk_1F3CC7400;
    }

    else
    {
      v6 = &unk_1F3CC7418;
    }
  }

  decimalSeparator = [v5 stringFromNumber:v6];
LABEL_27:

  return decimalSeparator;
}

uint64_t __54__PKPeerPaymentNumberPadActionButton__titleForAction___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v1 = qword_1EBDAA8A0;
  qword_1EBDAA8A0 = v0;

  v2 = qword_1EBDAA8A0;
  v3 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  v4 = qword_1EBDAA8A0;

  return [v4 setFormattingContext:2];
}

- (id)_axIDForAction:(unint64_t)action
{
  if (action == 12)
  {
    v3 = MEMORY[0x1E69B96C0];
    goto LABEL_5;
  }

  if (action == 10)
  {
    v3 = MEMORY[0x1E69B96B0];
LABEL_5:
    v4 = *v3;
    goto LABEL_7;
  }

  v4 = [(PKPeerPaymentNumberPadActionButton *)self _titleForAction:?];
LABEL_7:

  return v4;
}

- (void)_updateForFontSize
{
  v3 = _UISolariumFeatureFlagEnabled();
  v4 = 30.0;
  if (v3)
  {
    v4 = 24.0;
  }

  if (self->_action != 12)
  {
    v4 = 36.0;
  }

  [PKPeerPaymentNumberPadActionButton adjustSize:self->_sizeCategory forSizeCategory:v4];
  v6 = v5;
  if ((PKIsVision() & 1) != 0 || _UISolariumFeatureFlagEnabled())
  {
    configuration = [(PKPeerPaymentNumberPadActionButton *)self configuration];
    if (!configuration)
    {
      if (PKIsVision())
      {
        [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
      }

      else
      {
        [MEMORY[0x1E69DC740] _clearGlassButtonConfiguration];
      }
      configuration = ;
    }

    v10 = +[PKPeerPaymentTheme primaryTextColor];
    [configuration setBaseForegroundColor:v10];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__PKPeerPaymentNumberPadActionButton__updateForFontSize__block_invoke;
    v12[3] = &__block_descriptor_40_e36___NSDictionary_16__0__NSDictionary_8l;
    *&v12[4] = v6;
    [configuration setTitleTextAttributesTransformer:v12];
    [(PKPeerPaymentNumberPadActionButton *)self setConfiguration:configuration];
  }

  else
  {
    titleLabel = [(PKPeerPaymentNumberPadActionButton *)self titleLabel];
    v8 = [MEMORY[0x1E69DB878] pk_textCondensedSemiboldCashFontOfSize:v6];
    pk_fixedWidthFont = [v8 pk_fixedWidthFont];
    [titleLabel setFont:pk_fixedWidthFont];
  }
}

id __56__PKPeerPaymentNumberPadActionButton__updateForFontSize__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [MEMORY[0x1E69DB878] pk_textCondensedMediumCashFontOfSize:*(a1 + 32)];
  [v3 setObject:v4 forKey:*MEMORY[0x1E69DB648]];

  return v3;
}

@end