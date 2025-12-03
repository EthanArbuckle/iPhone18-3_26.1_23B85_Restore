@interface SBHAddWidgetButton
- (CGSize)intrinsicContentSize;
- (SBHAddWidgetButton)initWithFrame:(CGRect)frame;
- (double)_buttonCornerRadius;
- (id)_addSymbolImage;
- (id)_addSymbolImageWithTintColor:(id)color;
- (id)_titleLabelFont;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_contentSizeCategoryDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)mt_applyVisualStyling:(id)styling;
- (void)mt_removeAllVisualStyling;
- (void)setBackgroundColor:(id)color;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SBHAddWidgetButton

- (SBHAddWidgetButton)initWithFrame:(CGRect)frame
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = SBHAddWidgetButton;
  v3 = [(SBHAddWidgetButton *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = SBHBundle();
    v5 = [v4 localizedStringForKey:@"WIDGET_ADD_SHEET_ADD_WIDGET_THIS_STRING_NEEDS_TO_HAVE_A_LEADING_SPACE_FOR_LAYOUT_PURPOSES" value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    [(SBHAddWidgetButton *)v3 setTitle:v5 forState:0];

    imageView = [(SBHAddWidgetButton *)v3 imageView];
    [imageView setContentMode:1];

    titleLabel = [(SBHAddWidgetButton *)v3 titleLabel];
    [titleLabel setAdjustsFontSizeToFitWidth:1];
    _titleLabelFont = [(SBHAddWidgetButton *)v3 _titleLabelFont];
    [titleLabel setFont:_titleLabelFont];

    _addSymbolImage = [(SBHAddWidgetButton *)v3 _addSymbolImage];
    [(SBHAddWidgetButton *)v3 setImage:_addSymbolImage forState:0];

    [(SBHAddWidgetButton *)v3 setAdjustsImageWhenHighlighted:0];
    v10 = objc_alloc_init(MEMORY[0x1E69AE168]);
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v10;

    [(MTStylingProvidingSolidColorView *)v3->_backgroundView setUserInteractionEnabled:0];
    [(MTStylingProvidingSolidColorView *)v3->_backgroundView setHidden:1];
    [(SBHAddWidgetButton *)v3 addSubview:v3->_backgroundView];
    v12 = [(MTStylingProvidingSolidColorView *)v3->_backgroundView visualStylingProviderForCategory:1];
    [v12 automaticallyUpdateView:v3 withStyle:0];

    prominentGlassButtonConfiguration = [MEMORY[0x1E69DC740] prominentGlassButtonConfiguration];
    [(SBHAddWidgetButton *)v3 setConfiguration:prominentGlassButtonConfiguration];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v3->_highlightView;
    v3->_highlightView = v14;

    [(UIView *)v3->_highlightView setUserInteractionEnabled:0];
    [(UIView *)v3->_highlightView setAlpha:0.0];
    [(SBHAddWidgetButton *)v3 insertSubview:v3->_highlightView atIndex:0];
    [(SBHAddWidgetButton *)v3 layoutIfNeeded];
    v16 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v3];
    [(SBHAddWidgetButton *)v3 addInteraction:v16];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];

    v18 = objc_opt_self();
    v23[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = [(SBHAddWidgetButton *)v3 registerForTraitChanges:v19 withAction:sel__contentSizeCategoryDidChange];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDC48] object:0];

  v4.receiver = self;
  v4.super_class = SBHAddWidgetButton;
  [(SBHAddWidgetButton *)&v4 dealloc];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SBHAddWidgetButton *)self isHighlighted];
  v9.receiver = self;
  v9.super_class = SBHAddWidgetButton;
  [(SBHAddWidgetButton *)&v9 setHighlighted:highlightedCopy];
  if (isHighlighted != [(SBHAddWidgetButton *)self isHighlighted])
  {
    v6 = 0.3;
    v7[1] = 3221225472;
    v7[0] = MEMORY[0x1E69E9820];
    v7[2] = __37__SBHAddWidgetButton_setHighlighted___block_invoke;
    v7[3] = &unk_1E80897D8;
    if (highlightedCopy)
    {
      v6 = 0.0;
    }

    v7[4] = self;
    v8 = highlightedCopy;
    [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v7 options:0 animations:v6 completion:?];
  }
}

uint64_t __37__SBHAddWidgetButton_setHighlighted___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 752) setAlpha:v1];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SBHAddWidgetButton;
  [(SBHAddWidgetButton *)&v6 layoutSubviews];
  highlightView = self->_highlightView;
  [(SBHAddWidgetButton *)self bounds];
  [(UIView *)highlightView setFrame:?];
  [(SBHAddWidgetButton *)self sendSubviewToBack:self->_highlightView];
  [(SBHAddWidgetButton *)self _buttonCornerRadius];
  v5 = v4;
  [(UIView *)self->_highlightView _setContinuousCornerRadius:?];
  [(SBHAddWidgetButton *)self _setContinuousCornerRadius:v5];
}

- (double)_buttonCornerRadius
{
  result = self->_buttonCornerRadius;
  if (result <= 0.0)
  {
    addWidgetSheetStyle = [(SBHAddWidgetButton *)self addWidgetSheetStyle];
    _screen = [(SBHAddWidgetButton *)self _screen];
    traitCollection = [_screen traitCollection];
    [traitCollection displayCornerRadius];
    v8 = v7;

    [(SBHAddWidgetButton *)self bounds];
    result = v9 * 0.5;
    if (addWidgetSheetStyle != 1)
    {
      if (v8 + -24.0 <= result)
      {
        result = v8 + -24.0;
      }

      if (addWidgetSheetStyle)
      {
        result = 14.0;
      }

      if (v8 <= 0.0)
      {
        return 14.0;
      }
    }
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  titleLabel = [(SBHAddWidgetButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
  v5 = v4 + 20.0;

  imageView = [(SBHAddWidgetButton *)self imageView];
  [imageView intrinsicContentSize];
  v8 = v7 + 20.0;

  v11.receiver = self;
  v11.super_class = SBHAddWidgetButton;
  [(SBHAddWidgetButton *)&v11 intrinsicContentSize];
  if (v5 >= v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v8;
  }

  if (v10 < 50.0)
  {
    v10 = 50.0;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  backgroundView = [(SBHAddWidgetButton *)self backgroundView];
  [backgroundView setBackgroundColor:colorCopy];

  [(SBHAddWidgetButton *)self setTintColor:colorCopy];
}

- (id)_titleLabelFont
{
  preferredFontProvider = [MEMORY[0x1E698E7E8] preferredFontProvider];
  v4 = *MEMORY[0x1E69DDCF8];
  traitCollection = [(SBHAddWidgetButton *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v7 = [preferredFontProvider preferredFontForTextStyle:v4 hiFontStyle:4 contentSizeCategory:preferredContentSizeCategory];

  return v7;
}

- (id)_addSymbolImage
{
  _titleLabelFont = [(SBHAddWidgetButton *)self _titleLabelFont];
  v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:_titleLabelFont scale:2];
  v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v3];

  return v4;
}

- (id)_addSymbolImageWithTintColor:(id)color
{
  colorCopy = color;
  _titleLabelFont = [(SBHAddWidgetButton *)self _titleLabelFont];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithFont:_titleLabelFont scale:2];
  v7 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"plus.circle.fill" withConfiguration:v6];
  v8 = [v7 imageWithTintColor:colorCopy renderingMode:1];

  return v8;
}

- (void)_contentSizeCategoryDidChange
{
  titleLabel = [(SBHAddWidgetButton *)self titleLabel];
  _titleLabelFont = [(SBHAddWidgetButton *)self _titleLabelFont];
  [titleLabel setFont:_titleLabelFont];

  _addSymbolImage = [(SBHAddWidgetButton *)self _addSymbolImage];
  [(SBHAddWidgetButton *)self setImage:_addSymbolImage forState:0];

  [(SBHAddWidgetButton *)self setNeedsLayout];
  [(SBHAddWidgetButton *)self layoutBelowIfNeeded];

  [(SBHAddWidgetButton *)self invalidateIntrinsicContentSize];
}

- (void)mt_applyVisualStyling:(id)styling
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__SBHAddWidgetButton_mt_applyVisualStyling___block_invoke;
  v3[3] = &unk_1E808F560;
  v3[4] = self;
  [styling applyToView:self withColorBlock:v3];
}

void __44__SBHAddWidgetButton_mt_applyVisualStyling___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setTitleColor:v4 forState:0];
  v5 = *(a1 + 32);
  v6 = [v5 _addSymbolImageWithTintColor:v4];

  [v5 setImage:v6 forState:0];
}

- (void)mt_removeAllVisualStyling
{
  v4.receiver = self;
  v4.super_class = SBHAddWidgetButton;
  [(SBHAddWidgetButton *)&v4 mt_removeAllVisualStyling];
  [(SBHAddWidgetButton *)self setTitleColor:0 forState:0];
  imageView = [(SBHAddWidgetButton *)self imageView];
  [imageView setTintColor:0];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v6 = MEMORY[0x1E69DCDC0];
  regionCopy = region;
  [(SBHAddWidgetButton *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  identifier = [regionCopy identifier];

  v17 = [v6 regionWithRect:identifier identifier:{v9, v11, v13, v15}];

  return v17;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = objc_alloc_init(MEMORY[0x1E69DCE28]);
  v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self parameters:v5];
  v7 = [MEMORY[0x1E69DCDB8] effectWithPreview:v6];
  v8 = MEMORY[0x1E69DCDC8];
  [(SBHAddWidgetButton *)self frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(SBHAddWidgetButton *)self _buttonCornerRadius];
  v18 = [v8 shapeWithRoundedRect:v10 cornerRadius:{v12, v14, v16, v17}];
  v19 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v18];

  return v19;
}

@end