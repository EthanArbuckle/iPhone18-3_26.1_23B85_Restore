@interface STUIStatusBarStringView
- (BOOL)isEncapsulated;
- (STUIStatusBarStringView)initWithFrame:(CGRect)frame;
- (UIAccessibilityHUDItem)accessibilityHUDRepresentation;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_updateAlternateTextTimer;
- (void)applyStyleAttributes:(id)attributes;
- (void)setAlternateText:(id)text;
- (void)setEncapsulated:(BOOL)encapsulated;
- (void)setShowsAlternateText:(BOOL)text;
- (void)setText:(id)text;
@end

@implementation STUIStatusBarStringView

- (void)_updateAlternateTextTimer
{
  if ([(NSString *)self->_alternateText length])
  {
    window = [(STUIStatusBarStringView *)self window];
    v4 = window != 0;

    p_alternateTextTimer = &self->_alternateTextTimer;
    alternateTextTimer = self->_alternateTextTimer;
    v7 = alternateTextTimer == 0;
    if (window && !alternateTextTimer)
    {
      objc_initWeak(&location, self);
      v8 = MEMORY[0x277CBEBB8];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __52__STUIStatusBarStringView__updateAlternateTextTimer__block_invoke;
      v12[3] = &unk_279D38178;
      objc_copyWeak(&v13, &location);
      v9 = [v8 scheduledTimerWithTimeInterval:1 repeats:v12 block:8.0];
      v10 = *p_alternateTextTimer;
      *p_alternateTextTimer = v9;

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
      return;
    }
  }

  else
  {
    v4 = 0;
    p_alternateTextTimer = &self->_alternateTextTimer;
    alternateTextTimer = self->_alternateTextTimer;
    v7 = alternateTextTimer == 0;
  }

  if (!v4 && !v7)
  {
    [(NSTimer *)alternateTextTimer invalidate];
    v11 = *p_alternateTextTimer;
    *p_alternateTextTimer = 0;

    [(STUIStatusBarStringView *)self setShowsAlternateText:0];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (STUIStatusBarStringView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarStringView;
  v3 = [(STUIStatusBarStringView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(STUIStatusBarStringView *)v3 setAllowsDefaultTighteningForTruncation:1];
  return v3;
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy fontForStyle:self->_fontStyle];
  [(STUIStatusBarStringView *)self setFont:v4];

  if (_os_feature_enabled_impl())
  {
    traitCollection = [(STUIStatusBarStringView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    if (userInterfaceIdiom == 3)
    {
      font = [(STUIStatusBarStringView *)self font];
      fontName = [font fontName];
      v9 = [fontName isEqualToString:@".SFSoftNumeric-Semibold"];

      if (v9)
      {
        v10 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D769D0]];
        font2 = [(STUIStatusBarStringView *)self font];
        v12 = [v10 scaledFontForFont:font2];
        [(STUIStatusBarStringView *)self setFont:v12];
      }

      [(STUIStatusBarStringView *)self setAdjustsFontForContentSizeCategory:1];
      [(STUIStatusBarStringView *)self setMaximumContentSizeCategory:*MEMORY[0x277D76820]];
    }
  }

  textColor = [attributesCopy textColor];
  [(STUIStatusBarStringView *)self setTextColor:textColor];
}

- (void)setShowsAlternateText:(BOOL)text
{
  if (self->_showsAlternateText != text)
  {
    v7 = v3;
    v8 = v4;
    self->_showsAlternateText = text;
    if (text)
    {
      [(STUIStatusBarStringView *)&v6 setText:self->_alternateText, v5.receiver, v5.super_class, self, STUIStatusBarStringView, v7, v8];
    }

    else
    {
      [(STUIStatusBarStringView *)&v5 setText:self->_originalText, self, STUIStatusBarStringView, v6.receiver, v6.super_class, v7, v8];
    }
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  [(STUIStatusBarStringView *)self setOriginalText:textCopy];
  v5.receiver = self;
  v5.super_class = STUIStatusBarStringView;
  [(STUIStatusBarStringView *)&v5 setText:textCopy];
}

- (void)setAlternateText:(id)text
{
  textCopy = text;
  if (self->_alternateText != textCopy)
  {
    v6 = textCopy;
    objc_storeStrong(&self->_alternateText, text);
    [(STUIStatusBarStringView *)self _updateAlternateTextTimer];
    textCopy = v6;
  }
}

void __52__STUIStatusBarStringView__updateAlternateTextTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained showsAlternateText];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setShowsAlternateText:v2 ^ 1u];
}

- (void)setEncapsulated:(BOOL)encapsulated
{
  if (encapsulated)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75078]);
    [(STUIStatusBarStringView *)self _setTextEncapsulation:v4];
  }

  else
  {

    [(STUIStatusBarStringView *)self _setTextEncapsulation:0];
  }
}

- (BOOL)isEncapsulated
{
  _textEncapsulation = [(STUIStatusBarStringView *)self _textEncapsulation];
  v3 = _textEncapsulation != 0;

  return v3;
}

- (UIAccessibilityHUDItem)accessibilityHUDRepresentation
{
  v3 = objc_alloc(MEMORY[0x277D750B0]);
  originalText = [(STUIStatusBarStringView *)self originalText];
  v5 = [v3 initWithTitle:originalText image:0 imageInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v5;
}

@end