@interface NCNotificationListCountIndicatorButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListCountIndicatorButton)initWithTitle:(id)title symbolName:(id)name withFont:(id)font legibilitySettings:(id)settings;
- (NCNotificationListCountIndicatorButtonDelegate)delegate;
- (id)_attributedStringWithText:(id)text symbolName:(id)name withFont:(id)font;
- (void)_buttonTapped:(id)tapped;
- (void)_buttonTouchDown:(id)down;
- (void)_buttonTouchEnded:(id)ended;
- (void)_configureButtonIfNecessary;
- (void)_configureLabelIfNecessary;
- (void)_layout;
- (void)_setLabelScaled:(BOOL)scaled;
- (void)_updateHighlighting:(BOOL)highlighting;
- (void)_updateLongPressStateIsActiveTouch:(BOOL)touch;
- (void)hideContentAnimated:(BOOL)animated completion:(id)completion;
- (void)layoutSubviews;
@end

@implementation NCNotificationListCountIndicatorButton

- (NCNotificationListCountIndicatorButton)initWithTitle:(id)title symbolName:(id)name withFont:(id)font legibilitySettings:(id)settings
{
  titleCopy = title;
  nameCopy = name;
  fontCopy = font;
  settingsCopy = settings;
  v21.receiver = self;
  v21.super_class = NCNotificationListCountIndicatorButton;
  v14 = [(NCNotificationListCountIndicatorButton *)&v21 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v14)
  {
    v15 = objc_alloc_init(MEMORY[0x277D67CF8]);
    label = v14->_label;
    v14->_label = v15;

    v17 = [(NCNotificationListCountIndicatorButton *)v14 _attributedStringWithText:titleCopy symbolName:nameCopy withFont:fontCopy];
    [(SBUILegibilityLabel *)v14->_label setAttributedText:v17];
    [(SBUILegibilityLabel *)v14->_label setFont:fontCopy];
    [(SBUILegibilityLabel *)v14->_label setNumberOfLines:1];
    [(SBUILegibilityLabel *)v14->_label setLineBreakMode:4];
    [(SBUILegibilityLabel *)v14->_label setTextAlignment:1];
    LODWORD(v18) = 1036831949;
    [(SBUILegibilityLabel *)v14->_label setHyphenationFactor:v18];
    [(SBUILegibilityLabel *)v14->_label setOptions:2];
    [(SBUILegibilityLabel *)v14->_label setUserInteractionEnabled:0];
    [(SBUILegibilityLabel *)v14->_label setAlpha:0.0];
    titleCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"focus-text-%@", titleCopy];
    [(SBUILegibilityLabel *)v14->_label setAccessibilityIdentifier:titleCopy];
    [(SBUILegibilityLabel *)v14->_label setLegibilitySettings:settingsCopy];
  }

  return v14;
}

- (void)hideContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = completionCopy;
  if (animatedCopy)
  {
    v8 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __73__NCNotificationListCountIndicatorButton_hideContentAnimated_completion___block_invoke;
    v14[3] = &unk_27836F6A8;
    v14[4] = self;
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __73__NCNotificationListCountIndicatorButton_hideContentAnimated_completion___block_invoke_2;
    v12 = &unk_27836F8E8;
    v13 = completionCopy;
    [v8 _animateUsingSpringWithTension:1 friction:v14 interactive:&v9 animations:240.0 completion:20.0];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

  [(NCNotificationListCountIndicatorButton *)self setNeedsLayout:v9];
}

uint64_t __73__NCNotificationListCountIndicatorButton_hideContentAnimated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SBUILegibilityLabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListCountIndicatorButton;
  [(NCNotificationListCountIndicatorButton *)&v3 layoutSubviews];
  [(NCNotificationListCountIndicatorButton *)self _configureButtonIfNecessary];
  [(NCNotificationListCountIndicatorButton *)self _configureLabelIfNecessary];
  [(NCNotificationListCountIndicatorButton *)self _layout];
}

- (void)_configureLabelIfNecessary
{
  superview = [(SBUILegibilityLabel *)self->_label superview];

  if (!superview)
  {
    [(NCNotificationListCountIndicatorButton *)self addSubview:self->_label];
    label = self->_label;

    [(NCNotificationListCountIndicatorButton *)self sendSubviewToBack:label];
  }
}

- (void)_configureButtonIfNecessary
{
  if (!self->_button)
  {
    v3 = [MEMORY[0x277D75220] buttonWithType:1];
    button = self->_button;
    self->_button = v3;

    [(UIButton *)self->_button _setTouchInsets:-10.0, -10.0, -10.0, -10.0];
    [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
    [(UIButton *)self->_button addTarget:self action:sel__buttonTapped_ forControlEvents:64];
    [(NCNotificationListCountIndicatorButton *)self addSubview:self->_button];
    [(NCNotificationListCountIndicatorButton *)self bringSubviewToFront:self->_button];
    [(UIButton *)self->_button addTarget:self action:sel__buttonTouchDown_ forControlEvents:1];
    v5 = self->_button;

    [(UIButton *)v5 addTarget:self action:sel__buttonTouchEnded_ forControlEvents:352];
  }
}

- (void)_layout
{
  button = self->_button;
  [(NCNotificationListCountIndicatorButton *)self bounds];
  [(UIButton *)button setFrame:?];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  label = self->_label;
  if (label)
  {
    [(SBUILegibilityLabel *)label transform];
    label = self->_label;
  }

  v5 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v9 = v5;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  [(SBUILegibilityLabel *)label setTransform:&v8];
  v6 = self->_label;
  [(NCNotificationListCountIndicatorButton *)self bounds];
  [(SBUILegibilityLabel *)v6 setFrame:?];
  [(SBUILegibilityLabel *)self->_label setAlpha:1.0];
  v7 = self->_label;
  v8 = v11;
  v9 = v12;
  v10 = v13;
  [(SBUILegibilityLabel *)v7 setTransform:&v8];
}

- (void)_buttonTapped:(id)tapped
{
  delegate = [(NCNotificationListCountIndicatorButton *)self delegate];
  v9 = delegate;
  if (self->_longPressStartTime && (v5 = -[NCNotificationListCountIndicatorButton shouldAllowLongPressInteraction](self, "shouldAllowLongPressInteraction"), delegate = v9, v5) && ([MEMORY[0x277CBEAA8] date], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "timeIntervalSinceDate:", self->_longPressStartTime), v8 = v7, v6, delegate = v9, v8 > 0.1))
  {
    [v9 buttonWasLongPressed:self];
  }

  else
  {
    [delegate buttonWasTapped:self];
  }
}

- (void)_updateHighlighting:(BOOL)highlighting
{
  highlightingCopy = highlighting;
  shouldAllowLongPressInteraction = [(NCNotificationListCountIndicatorButton *)self shouldAllowLongPressInteraction];
  if (!highlightingCopy || shouldAllowLongPressInteraction)
  {
    if (!highlightingCopy)
    {
      [(SBUILegibilityLabel *)self->_label alpha];
      if (v7 < 1.0)
      {
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __62__NCNotificationListCountIndicatorButton__updateHighlighting___block_invoke;
        v8[3] = &unk_27836F6A8;
        v8[4] = self;
        [MEMORY[0x277D75D18] _animateUsingSpringWithTension:1 friction:v8 interactive:0 animations:240.0 completion:20.0];
      }
    }
  }

  else
  {
    label = self->_label;

    [(SBUILegibilityLabel *)label setAlpha:0.2];
  }
}

- (void)_buttonTouchDown:(id)down
{
  [(NCNotificationListCountIndicatorButton *)self _updateLongPressStateIsActiveTouch:1];

  [(NCNotificationListCountIndicatorButton *)self _updateHighlighting:1];
}

- (void)_buttonTouchEnded:(id)ended
{
  [(NCNotificationListCountIndicatorButton *)self _updateLongPressStateIsActiveTouch:0];

  [(NCNotificationListCountIndicatorButton *)self _updateHighlighting:0];
}

- (void)_updateLongPressStateIsActiveTouch:(BOOL)touch
{
  longPressStartTime = self->_longPressStartTime;
  if (touch)
  {
    if (longPressStartTime || ![(NCNotificationListCountIndicatorButton *)self shouldAllowLongPressInteraction])
    {
      return;
    }

    date = [MEMORY[0x277CBEAA8] date];
    v6 = self->_longPressStartTime;
    self->_longPressStartTime = date;

    selfCopy2 = self;
    v8 = 1;
  }

  else
  {
    self->_longPressStartTime = 0;

    selfCopy2 = self;
    v8 = 0;
  }

  [(NCNotificationListCountIndicatorButton *)selfCopy2 _setLabelScaled:v8];
}

- (void)_setLabelScaled:(BOOL)scaled
{
  memset(&v10, 0, sizeof(v10));
  if (scaled)
  {
    CGAffineTransformMakeScale(&v10, 1.15, 1.15);
  }

  else
  {
    v4 = *(MEMORY[0x277CBF2C0] + 16);
    *&v10.a = *MEMORY[0x277CBF2C0];
    *&v10.c = v4;
    *&v10.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  label = self->_label;
  if (label)
  {
    [(SBUILegibilityLabel *)label transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  t1 = v10;
  if (!CGAffineTransformEqualToTransform(&t1, &t2))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v7 = v10;
    v6[2] = __58__NCNotificationListCountIndicatorButton__setLabelScaled___block_invoke;
    v6[3] = &unk_278370CA8;
    v6[4] = self;
    [MEMORY[0x277D75D18] _animateUsingSpringWithTension:1 friction:v6 interactive:0 animations:240.0 completion:20.0];
  }
}

uint64_t __58__NCNotificationListCountIndicatorButton__setLabelScaled___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 408);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (id)_attributedStringWithText:(id)text symbolName:(id)name withFont:(id)font
{
  textCopy = text;
  nameCopy = name;
  fontCopy = font;
  if (!nameCopy)
  {
    if (textCopy)
    {
      v15 = 0;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

  v11 = [MEMORY[0x277D755D0] configurationWithFont:fontCopy];
  v12 = [MEMORY[0x277D755B8] _systemImageNamed:nameCopy withConfiguration:v11];
  v13 = [v12 imageWithRenderingMode:2];

  v14 = objc_alloc_init(MEMORY[0x277D74270]);
  [v14 setImage:v13];
  v15 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v14];

  if (textCopy && v15)
  {
    _shouldReverseLayoutDirection = [(NCNotificationListCountIndicatorButton *)self _shouldReverseLayoutDirection];
    v17 = objc_alloc(MEMORY[0x277CCAB48]);
    v18 = v17;
    if (_shouldReverseLayoutDirection)
    {
      textCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ ", textCopy];
      v20 = [v18 initWithString:textCopy];

      [v20 appendAttributedString:v15];
    }

    else
    {
      v20 = [v17 initWithAttributedString:v15];
      v21 = objc_alloc(MEMORY[0x277CCA898]);
      textCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", textCopy];
      v23 = [v21 initWithString:textCopy2];
      [v20 appendAttributedString:v23];
    }

    goto LABEL_11;
  }

  if (textCopy)
  {
LABEL_9:
    v20 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy];
LABEL_11:

    v15 = v20;
    goto LABEL_12;
  }

  if (!v15)
  {
LABEL_16:
    v15 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

LABEL_12:

  return v15;
}

- (NCNotificationListCountIndicatorButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end