@interface PKPassPaymentPayStateView
- (BOOL)_canEmphasizeState:(int64_t)state;
- (BOOL)labelWillChangeForState:(int64_t)state withOverrideText:(id)text;
- (PKPassPaymentPayStateView)initWithStyle:(int64_t)style;
- (PKPassPaymentPayStateViewDelegate)delegate;
- (id)_attributedTextWithTitle:(id)title subtitle:(id)subtitle;
- (id)_textForState:(int64_t)state textOverride:(id)override;
- (id)_titleForUserIntent;
- (int64_t)_defaultGlyphStateForState:(int64_t)state;
- (void)_applyStatePreservingGlyphState:(BOOL)state overridingText:(id)text animated:(BOOL)animated completionHandler:(id)handler;
- (void)_configureLayoutMetrics;
- (void)_resolveLayout;
- (void)_showingFailureState;
- (void)dealloc;
- (void)emphasizeStateIfPossible:(int64_t)possible withOverrideText:(id)text;
- (void)glyphView:(id)view revealingCheckmark:(BOOL)checkmark;
- (void)layoutSubviews;
- (void)setBiometricsUnavailableHint:(BOOL)hint animated:(BOOL)animated;
- (void)setLabelStateBottomInset:(double)inset;
- (void)setState:(int64_t)state animated:(BOOL)animated withOverrideText:(id)text preserveGlyphState:(BOOL)glyphState completionHandler:(id)handler;
- (void)updateDebugLabel:(id)label isErrorState:(BOOL)state;
@end

@implementation PKPassPaymentPayStateView

- (PKPassPaymentPayStateView)initWithStyle:(int64_t)style
{
  v13.receiver = self;
  v13.super_class = PKPassPaymentPayStateView;
  v4 = [(PKPassPaymentPayStateView *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    v4->_style = style;
    v4->_layoutState = 0;
    [(PKPassPaymentPayStateView *)v4 _configureLayoutMetrics];
    v6 = [objc_alloc(MEMORY[0x1E69BC758]) initWithStyle:0];
    glyph = v5->_glyph;
    v5->_glyph = v6;

    [(PKGlyphView *)v5->_glyph setShowQRCode:style == 3];
    [(PKGlyphView *)v5->_glyph updateRasterizationScale:PKUIScreenScale()];
    [(PKGlyphView *)v5->_glyph setDelegate:v5];
    [(PKPassPaymentPayStateView *)v5 addSubview:v5->_glyph];
    if (PKPayStateDebugUI())
    {
      v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      debugLabel = v5->_debugLabel;
      v5->_debugLabel = v8;

      [(UILabel *)v5->_debugLabel setNumberOfLines:0];
      v10 = v5->_debugLabel;
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UILabel *)v10 setBackgroundColor:clearColor];

      [(PKPassPaymentPayStateView *)v5 addSubview:v5->_debugLabel];
    }

    [(PKPassPaymentPayStateView *)v5 _applyStatePreservingGlyphState:0 overridingText:0 animated:0 completionHandler:0];
    [(PKPassPaymentPayStateView *)v5 _resolveLayout];
    [(PKPassPaymentPayStateView *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9A20]];
  }

  return v5;
}

- (void)dealloc
{
  [(PKGlyphView *)self->_glyph setDelegate:0];
  [(PKGlyphView *)self->_glyph setState:6 animated:0 completionHandler:0];
  v3.receiver = self;
  v3.super_class = PKPassPaymentPayStateView;
  [(PKPassPaymentPayStateView *)&v3 dealloc];
}

- (void)_resolveLayout
{
  self->_didLayout = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PKPassPaymentPayStateView__resolveLayout__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v4];
  if (self->_didLayout)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      if (objc_opt_respondsToSelector())
      {
        [WeakRetained payStateViewDidUpdateLayout:self];
      }
    }
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = PKPassPaymentPayStateView;
  [(PKPassPaymentPayStateView *)&v26 layoutSubviews];
  self->_didLayout = 1;
  [(PKPassPaymentPayStateView *)self bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v7 = CGRectGetWidth(v27) + -20.0;
  [(PKGlyphView *)self->_glyph frame];
  v28.origin.y = self->_glyphViewPadding;
  v8 = CGRectGetMaxY(v28) + self->_labelTopPadding;
  v23 = v7;
  [(UILabel *)self->_label pkui_sizeThatFits:1 forceWordWrap:v7];
  v10 = v9;
  v12 = v11;
  if (self->_label)
  {
    v29.origin.x = 0.0;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    MaxY = CGRectGetMaxY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v14 = CGRectGetMaxY(v30) - self->_labelStateBottomInset;
    self->_layoutState = MaxY >= v14;
    if (MaxY >= v14)
    {
      [(PKGlyphView *)self->_glyph setAlpha:0.0];
      memset(&slice, 0, sizeof(slice));
      memset(&remainder, 0, sizeof(remainder));
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      CGRectDivide(v31, &slice, &remainder, self->_labelStateBottomInset, CGRectMaxYEdge);
      label = self->_label;
      v22 = PKUIScreenScale();
      UIRectCenteredIntegralRectScale();
      goto LABEL_6;
    }
  }

  else
  {
    self->_layoutState = 0;
  }

  [(PKGlyphView *)self->_glyph setAlpha:1.0];
  label = self->_label;
  UIRectCenteredXInRect();
LABEL_6:
  [(UILabel *)label setFrame:*&v22];
  glyph = self->_glyph;
  UIRectCenteredXInRect();
  [(PKGlyphView *)glyph setFrame:?];
  debugLabel = self->_debugLabel;
  if (debugLabel)
  {
    [(UILabel *)debugLabel pkui_sizeThatFits:1 forceWordWrap:v23, 1.79769313e308];
    v19 = v18;
    v21 = v20;
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    [(UILabel *)self->_debugLabel setFrame:0.0, CGRectGetMaxY(v32) - v21, v19, v21];
  }
}

- (int64_t)_defaultGlyphStateForState:(int64_t)state
{
  result = 8;
  if (state > 7)
  {
    if (state <= 10)
    {
      v5 = 11;
      if (state != 8)
      {
        v5 = 8;
      }

      if ((state - 9) >= 2)
      {
        return v5;
      }

      else
      {
        return 10;
      }
    }

    if (state == 11)
    {
      return 6;
    }

    if (state != 12)
    {
      return result;
    }

    return 7;
  }

  if (state <= 3)
  {
    if (!state)
    {
      if (self->_biometricsUnavailableHint)
      {
        return 6;
      }

      else
      {
        return 0;
      }
    }

    if (state != 1)
    {
      if (state == 2)
      {
        if (self->_userIntentStyle == 1)
        {
          return 6;
        }

        else
        {
          return 0;
        }
      }

      return result;
    }

    IsAvailable = PKPearlIsAvailable();
    recognizingHint = self->_recognizingHint;
    v8 = 5;
    if (!self->_recognizingHint)
    {
      v8 = 0;
    }

    v9 = IsAvailable == 0;
LABEL_33:
    if (v9)
    {
      return recognizingHint;
    }

    else
    {
      return v8;
    }
  }

  switch(state)
  {
    case 4:
      style = self->_style;
      v8 = 8;
      if (style == 4)
      {
        v8 = 9;
      }

      v9 = style == 3;
      recognizingHint = 7;
      goto LABEL_33;
    case 5:
      return 9;
    case 7:
      return 7;
  }

  return result;
}

- (void)setState:(int64_t)state animated:(BOOL)animated withOverrideText:(id)text preserveGlyphState:(BOOL)glyphState completionHandler:(id)handler
{
  glyphStateCopy = glyphState;
  animatedCopy = animated;
  textCopy = text;
  handlerCopy = handler;
  if (textCopy || self->_state != state)
  {
    self->_state = state;
    [(PKPassPaymentPayStateView *)self _applyStatePreservingGlyphState:glyphStateCopy overridingText:textCopy animated:animatedCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = [(PKPassPaymentPayStateView *)self _defaultGlyphStateForState:state];
    if (glyphStateCopy && [(PKPassPaymentPayStateView *)self _canPreserveGlyphForState:self->_state]|| v13 == [(PKGlyphView *)self->_glyph state])
    {
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 0);
      }
    }

    else
    {
      if (self->_state == 9)
      {
        [(PKPassPaymentPayStateView *)self _showingFailureState];
      }

      [(PKGlyphView *)self->_glyph setState:v13 animated:animatedCopy completionHandler:handlerCopy];
    }
  }
}

- (void)_applyStatePreservingGlyphState:(BOOL)state overridingText:(id)text animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  stateCopy = state;
  handlerCopy = handler;
  v10 = [(PKPassPaymentPayStateView *)self _textForState:self->_state textOverride:text];
  label = self->_label;
  if (label)
  {
    attributedText = [(UILabel *)label attributedText];
    v13 = PKEqualObjects();

    if (v13)
    {
      goto LABEL_7;
    }

    v14 = self->_label;
    if (v14)
    {
      [(UILabel *)v14 removeFromSuperview];
      v15 = self->_label;
      self->_label = 0;
    }
  }

  if (v10)
  {
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v17 = self->_label;
    self->_label = v16;

    v18 = self->_label;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v18 setBackgroundColor:clearColor];

    [(UILabel *)self->_label setAlpha:self->_labelAlpha];
    [(UILabel *)self->_label setNumberOfLines:2];
    [(UILabel *)self->_label setAttributedText:v10];
    [(UILabel *)self->_label setAccessibilityIdentifier:*MEMORY[0x1E69B9A20]];
    [(PKPassPaymentPayStateView *)self addSubview:self->_label];
    [(PKPassPaymentPayStateView *)self setNeedsLayout];
  }

LABEL_7:
  if (stateCopy && [(PKPassPaymentPayStateView *)self _canPreserveGlyphForState:self->_state])
  {
    state = [(PKGlyphView *)self->_glyph state];
  }

  else
  {
    state = [(PKPassPaymentPayStateView *)self _defaultGlyphStateForState:self->_state];
  }

  glyph = self->_glyph;
  if ((self->_state - 9) >= 2)
  {
    [(PKGlyphView *)glyph setState:state animated:animatedCopy completionHandler:handlerCopy];
  }

  else
  {
    [(PKGlyphView *)glyph setColorMode:3 animated:animatedCopy];
    v22 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:1 scale:45.0];
    v23 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark" withConfiguration:v22];

    if (self->_state == 9)
    {
      [(PKPassPaymentPayStateView *)self _showingFailureState];
    }

    [(PKGlyphView *)self->_glyph setState:state animated:animatedCopy completionHandler:handlerCopy];
    if (v23)
    {
      primaryColor = [(PKGlyphView *)self->_glyph primaryColor];
      v25 = [v23 _flatImageWithColor:primaryColor];

      goto LABEL_18;
    }
  }

  v25 = 0;
LABEL_18:
  v26 = self->_glyph;
  cGImage = [v25 CGImage];
  [v25 alignmentRectInsets];
  [(PKGlyphView *)v26 setCustomImage:cGImage withAlignmentEdgeInsets:?];
  [(PKPassPaymentPayStateView *)self _resolveLayout];
}

- (BOOL)labelWillChangeForState:(int64_t)state withOverrideText:(id)text
{
  v5 = [(PKPassPaymentPayStateView *)self _textForState:state textOverride:text];
  attributedText = [(UILabel *)self->_label attributedText];
  v7 = PKEqualObjects();

  return v7 ^ 1;
}

- (void)emphasizeStateIfPossible:(int64_t)possible withOverrideText:(id)text
{
  textCopy = text;
  if (self->_state == possible)
  {
    label = self->_label;
    if (label)
    {
      v14 = textCopy;
      layer = [(UILabel *)label layer];
      pkui_shakeAnimation = [MEMORY[0x1E6979300] pkui_shakeAnimation];
      v10 = [layer pkui_addAdditiveAnimation:pkui_shakeAnimation];

      v11 = [v14 length];
      textCopy = v14;
      if (v11)
      {
        v12 = self->_label;
        v13 = [(PKPassPaymentPayStateView *)self _attributedTextWithTitle:v14];
        [(UILabel *)v12 setAttributedText:v13];

        [(PKPassPaymentPayStateView *)self setNeedsLayout];
        [(PKPassPaymentPayStateView *)self _resolveLayout];
        textCopy = v14;
      }
    }
  }
}

- (void)updateDebugLabel:(id)label isErrorState:(BOOL)state
{
  debugLabel = self->_debugLabel;
  if (debugLabel)
  {
    [(UILabel *)debugLabel setText:label];
    v7 = self->_debugLabel;
    if (state)
    {
      [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] greenColor];
    }
    v8 = ;
    [(UILabel *)v7 setBackgroundColor:v8];

    [(PKPassPaymentPayStateView *)self setNeedsLayout];
  }
}

- (BOOL)_canEmphasizeState:(int64_t)state
{
  if (state == 3)
  {
    return 1;
  }

  if (state == 1)
  {
    return PKPearlIsAvailable() ^ 1;
  }

  return 0;
}

- (void)setLabelStateBottomInset:(double)inset
{
  if (self->_labelStateBottomInset != inset)
  {
    self->_labelStateBottomInset = inset;
    if (inset > 0.0 || self->_layoutState == 1)
    {
      [(PKPassPaymentPayStateView *)self setNeedsLayout];

      [(PKPassPaymentPayStateView *)self _resolveLayout];
    }
  }
}

- (void)setBiometricsUnavailableHint:(BOOL)hint animated:(BOOL)animated
{
  if (self->_biometricsUnavailableHint == !hint)
  {
    self->_biometricsUnavailableHint = hint;
    if (!self->_state)
    {
      animatedCopy = animated;
      glyph = self->_glyph;
      v7 = [(PKPassPaymentPayStateView *)self _defaultGlyphStateForState:0];

      [(PKGlyphView *)glyph setState:v7 animated:animatedCopy completionHandler:0];
    }
  }
}

- (void)_showingFailureState
{
  if (self->_state == 9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v7 = WeakRetained;
      v6 = objc_opt_respondsToSelector();
      v5 = v7;
      if (v6)
      {
        [v7 payStateViewRevealingFailure:self];
        v5 = v7;
      }
    }
  }
}

- (id)_textForState:(int64_t)state textOverride:(id)override
{
  overrideCopy = override;
  v7 = overrideCopy;
  style = self->_style;
  if (style == 2)
  {
    v9 = 0;
    if (state <= 6)
    {
      if ((state - 4) < 3)
      {
        v10 = @"NFC_PASS_INSTRUCTION";
LABEL_11:
        _titleForUserIntent = PKLocalizedString(&v10->isa);
        goto LABEL_25;
      }

      if (state != 1)
      {
        goto LABEL_22;
      }

      if (!PKPearlIsAvailable())
      {
        v10 = @"NFC_PASS_TOUCH_ID";
        goto LABEL_11;
      }

LABEL_39:
      if (!v7)
      {
        _titleForUserIntent = PKLocalizedPearlString(&cfstr_GenericPearl.isa);
        goto LABEL_25;
      }

LABEL_42:
      v13 = v7;
      goto LABEL_26;
    }

    if ((state - 7) < 2)
    {
      v10 = @"NFC_PASS_SUCCESS";
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v9 = 0;
  if (state > 7)
  {
    if (state != 8)
    {
LABEL_13:
      if (state == 9)
      {
        _titleForUserIntent = overrideCopy;
        goto LABEL_25;
      }

      if (state != 10)
      {
        goto LABEL_31;
      }

      v11 = @"PAYMENT_ERROR_NO_TOUCH_ID_OR_PASSCODE";
      goto LABEL_16;
    }

    if (overrideCopy)
    {
      goto LABEL_42;
    }

    v11 = @"PAYMENT_SUCCESS";
LABEL_16:
    _titleForUserIntent = PKLocalizedPaymentString(&v11->isa);
    goto LABEL_25;
  }

  if ((state - 4) >= 4)
  {
    if (state != 1)
    {
LABEL_22:
      if (state != 2)
      {
        goto LABEL_31;
      }

      _titleForUserIntent = [(PKPassPaymentPayStateView *)self _titleForUserIntent];
      goto LABEL_25;
    }

    if (PKPearlIsAvailable())
    {
      goto LABEL_39;
    }

    if (self->_persistentEmulationHint)
    {
      v11 = @"PAYMENT_SERVICE_MODE_TOUCH_ID";
    }

    else if (self->_accessPass)
    {
      v11 = @"GENERIC_TOUCH_ID";
    }

    else if (self->_identityPass)
    {
      v11 = @"PRESENT_TOUCH_ID";
    }

    else
    {
      v11 = @"PAYMENT_TOUCH_ID";
    }

    goto LABEL_16;
  }

  if (self->_persistentEmulationHint)
  {
    v11 = @"PAYMENT_INSTRUCTION_SERVICE_MODE";
    goto LABEL_16;
  }

  if (style != 3)
  {
    if (self->_homeKeyPass)
    {
      _titleForUserIntent = PKLocalizedHomeKeyString(&cfstr_NfcPassInstruc.isa);
      goto LABEL_25;
    }

    if (overrideCopy)
    {
      goto LABEL_42;
    }

    v11 = @"GENERIC_INSTRUCTION";
    goto LABEL_16;
  }

  if (state != 5)
  {
    goto LABEL_30;
  }

  _titleForUserIntent = PKLocalizedAquamanString(&cfstr_BarcodePayment_9.isa);
LABEL_25:
  v13 = _titleForUserIntent;
  if (_titleForUserIntent)
  {
LABEL_26:
    v9 = [(PKPassPaymentPayStateView *)self _attributedTextWithTitle:v13];

    goto LABEL_31;
  }

LABEL_30:
  v9 = 0;
LABEL_31:

  return v9;
}

- (id)_titleForUserIntent
{
  userIntentStyle = self->_userIntentStyle;
  if (userIntentStyle == 2)
  {
    v4 = @"ACCESSIBILITY_PUSH_BUTTON_ASSISTIVE_TOUCH";
LABEL_5:
    v5 = PKLocalizedPearlString(&v4->isa);

    return v5;
  }

  if (userIntentStyle == 3)
  {
    v4 = @"ACCESSIBILITY_PUSH_BUTTON_SWITCH_CONTROL";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_attributedTextWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = *MEMORY[0x1E69DDC30];
  v9 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC30], 20.0)}];
  v10 = *MEMORY[0x1E69DB648];
  [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB648]];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v7 setObject:secondaryLabelColor forKeyedSubscript:*MEMORY[0x1E69DB650]];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [v7 setObject:clearColor forKeyedSubscript:*MEMORY[0x1E69DB600]];

  v13 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v13 setLineBreakMode:4];
  [v13 setAlignment:1];
  v14 = [v13 copy];
  [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DB688]];

  v15 = objc_alloc_init(MEMORY[0x1E696AD40]);
  if (titleCopy)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:titleCopy attributes:v7];
    [v15 appendAttributedString:v16];
  }

  if (subtitleCopy)
  {
    v17 = [MEMORY[0x1E69DB878] systemFontOfSize:{PKScaledValueForValueWithMaximumContentSizeCategory(v8, 16.0)}];
    [v7 setObject:v17 forKeyedSubscript:v10];

    if (titleCopy)
    {
      v18 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n" attributes:v7];
      [v15 appendAttributedString:v18];
    }

    v19 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:subtitleCopy attributes:v7];
    [v15 appendAttributedString:v19];
  }

  v20 = [v15 copy];

  return v20;
}

- (void)_configureLayoutMetrics
{
  style = self->_style;
  if (style <= 1)
  {
    if (!style)
    {
      goto LABEL_10;
    }

    if (style != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  switch(style)
  {
    case 2:
      v4 = PKUIGetMinScreenType();
      if (v4 >= 0xD)
      {
        return;
      }

      v5 = &unk_1BE116020;
      goto LABEL_15;
    case 3:
LABEL_8:
      v4 = PKUIGetMinScreenType();
      if (v4 >= 0xD)
      {
        return;
      }

      v5 = &unk_1BE115FB8;
LABEL_15:
      v7 = v5[v4];
      v8 = dbl_1BE116088[v4];
LABEL_16:
      self->_glyphViewPadding = v7;
      self->_labelTopPadding = v8;
      return;
    case 4:
LABEL_10:
      v6 = PKUIGetMinScreenWidthType();
      v7 = 34.0;
      if (!v6)
      {
        v7 = 22.0;
      }

      v8 = 15.0;
      goto LABEL_16;
  }
}

- (void)glyphView:(id)view revealingCheckmark:(BOOL)checkmark
{
  checkmarkCopy = checkmark;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v8 = objc_opt_respondsToSelector();
    v7 = v9;
    if (v8)
    {
      [v9 payStateView:self revealingCheckmark:checkmarkCopy];
      v7 = v9;
    }
  }
}

- (PKPassPaymentPayStateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end