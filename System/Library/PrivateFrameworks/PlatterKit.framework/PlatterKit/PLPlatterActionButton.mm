@interface PLPlatterActionButton
- (BOOL)adjustForContentSizeCategoryChange;
- (BSUIFontProvider)_fontProvider;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTMaterialView)_materialBackgroundView;
- (NSString)preferredContentSizeCategory;
- (PLPlatterActionButton)initWithFrame:(CGRect)frame;
- (int64_t)_wordCountForText:(id)text;
- (void)_configureBackgroundColoringViewIfNecessary;
- (void)_configureBackgroundViewIfNecessary;
- (void)_configureTitleLabelEffects;
- (void)_configureTitleLabelIfNecessary;
- (void)_handleHoverGestureRecognizerEvent:(id)event;
- (void)_layoutBackgroundView;
- (void)_layoutTitleLabel;
- (void)_updateTitleLabelFont;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setBackgroundMaterialRecipe:(int64_t)recipe;
- (void)setBackgroundTintColor:(id)color;
- (void)setCornerRadius:(double)cornerRadius;
- (void)setCustomBackgroundColor:(id)color;
- (void)setFont:(id)font;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setTextColor:(id)color;
- (void)setTitle:(id)title;
- (void)setTitleAlpha:(double)alpha;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PLPlatterActionButton

- (PLPlatterActionButton)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PLPlatterActionButton;
  v3 = [(PLPlatterActionButton *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PLPlatterActionButton *)v3 setAccessibilityIdentifier:@"swipe-action-button-identifier"];
    [(PLPlatterActionButton *)v4 setClipsToBounds:1];
    v4->_cornerRadius = 13.0;
    v4->_titleAlpha = 1.0;
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v7 = [objc_alloc(MEMORY[0x277D755A0]) initWithTarget:v4 action:sel__handleHoverGestureRecognizerEvent_];
      [(PLPlatterActionButton *)v4 addGestureRecognizer:v7];
    }
  }

  return v4;
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = PLPlatterActionButton;
  superviewCopy = superview;
  [(PLPlatterActionButton *)&v5 willMoveToSuperview:superviewCopy];
  layer = [superviewCopy layer];

  [layer setAllowsGroupBlending:0];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if ((BSEqualStrings() & 1) == 0)
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    [(UILabel *)self->_titleLabel removeFromSuperview];
    titleLabel = self->_titleLabel;
    self->_titleLabel = 0;

    [(PLPlatterActionButton *)self _configureTitleLabelIfNecessary];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)alpha
{
  self->_titleAlpha = alpha;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel setAlpha:?];

    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)setFont:(id)font
{
  fontCopy = font;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [fontCopy copy];
    font = self->_font;
    self->_font = v4;

    [(UILabel *)self->_titleLabel setFont:self->_font];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)setBackgroundTintColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    backgroundTintColor = self->_backgroundTintColor;
    self->_backgroundTintColor = v4;

    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    textColor = self->_textColor;
    self->_textColor = v4;

    [(PLPlatterActionButton *)self _configureTitleLabelIfNecessary];
    [(PLPlatterActionButton *)self _configureTitleLabelEffects];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PLPlatterActionButton;
  [(PLPlatterActionButton *)&v3 layoutSubviews];
  [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
  [(PLPlatterActionButton *)self _configureBackgroundColoringViewIfNecessary];
  [(PLPlatterActionButton *)self _configureTitleLabelIfNecessary];
  [(PLPlatterActionButton *)self sendSubviewToBack:self->_backgroundView];
  [(PLPlatterActionButton *)self _layoutTitleLabel];
  [(PLPlatterActionButton *)self _layoutBackgroundView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->_titleLabel sizeThatFits:fits.width, fits.height];
  v5 = v4 + 16.0;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v18.receiver = self;
  v18.super_class = PLPlatterActionButton;
  isHighlighted = [(PLPlatterActionButton *)&v18 isHighlighted];
  v17.receiver = self;
  v17.super_class = PLPlatterActionButton;
  [(PLPlatterActionButton *)&v17 setHighlighted:highlightedCopy];
  v16.receiver = self;
  v16.super_class = PLPlatterActionButton;
  isHighlighted2 = [(PLPlatterActionButton *)&v16 isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    v7 = isHighlighted2;
    [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
    _materialBackgroundView = [(PLPlatterActionButton *)self _materialBackgroundView];
    v9 = objc_opt_class();

    if (objc_opt_respondsToSelector())
    {
      newDefaultHighlightAnimator = [v9 newDefaultHighlightAnimator];
      _materialBackgroundView2 = [(PLPlatterActionButton *)self _materialBackgroundView];
      objc_initWeak(&location, _materialBackgroundView2);

      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __40__PLPlatterActionButton_setHighlighted___block_invoke;
      v12[3] = &unk_278425050;
      objc_copyWeak(&v13, &location);
      v14 = v7;
      [newDefaultHighlightAnimator addAnimations:v12];
      [newDefaultHighlightAnimator startAnimation];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __40__PLPlatterActionButton_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:*(a1 + 40)];
}

- (void)setBackgroundMaterialRecipe:(int64_t)recipe
{
  if (self->_backgroundMaterialRecipe != recipe)
  {
    self->_backgroundMaterialRecipe = recipe;
    [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];

    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (BSUIFontProvider)_fontProvider
{
  if (!self->_fontProvider)
  {
    if ([(PLPlatterActionButton *)self adjustsFontForContentSizeCategory])
    {
      [MEMORY[0x277CF0D60] preferredFontProvider];
    }

    else
    {
      [MEMORY[0x277CF0D60] defaultFontProvider];
    }
    v3 = ;
    fontProvider = self->_fontProvider;
    self->_fontProvider = v3;
  }

  v5 = self->_fontProvider;

  return v5;
}

- (void)_updateTitleLabelFont
{
  if (self->_titleLabel)
  {
    v3 = self->_font;
    if (!v3)
    {
      if ([(UILabel *)self->_titleLabel numberOfLines]<= 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 8;
      }

      _fontProvider = [(PLPlatterActionButton *)self _fontProvider];
      v6 = [_fontProvider preferredFontForTextStyle:*MEMORY[0x277D769D0] hiFontStyle:v4];

      v3 = v6;
    }

    v7 = v3;
    [(UILabel *)self->_titleLabel setFont:v3];
  }
}

- (void)_configureTitleLabelEffects
{
  [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
  textColor = self->_textColor;
  if (textColor)
  {
    titleLabelVisualStylingProvider = self->_titleLabelVisualStylingProvider;
    if (titleLabelVisualStylingProvider)
    {
      [(MTVisualStylingProvider *)titleLabelVisualStylingProvider stopAutomaticallyUpdatingView:self->_titleLabel];
      [(UILabel *)self->_titleLabel mt_removeAllVisualStyling];
      v5 = self->_titleLabelVisualStylingProvider;
      self->_titleLabelVisualStylingProvider = 0;

      textColor = self->_textColor;
    }

    titleLabel = self->_titleLabel;

    [(UILabel *)titleLabel setTextColor:textColor];
  }

  else
  {
    _materialBackgroundView = [(PLPlatterActionButton *)self _materialBackgroundView];
    v8 = [_materialBackgroundView visualStylingProviderForCategory:1];
    v9 = self->_titleLabelVisualStylingProvider;
    self->_titleLabelVisualStylingProvider = v8;

    v10 = self->_titleLabelVisualStylingProvider;
    v11 = self->_titleLabel;

    [(MTVisualStylingProvider *)v10 automaticallyUpdateView:v11 withStyle:1];
  }
}

- (void)_configureTitleLabelIfNecessary
{
  if (!self->_titleLabel)
  {
    [(PLPlatterActionButton *)self bounds];
    v17 = CGRectInset(v16, 8.0, 0.0);
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    v6 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v6;

    v8 = 1;
    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setMinimumScaleFactor:0.5];
    LODWORD(v9) = 1036831949;
    [(UILabel *)self->_titleLabel _setHyphenationFactor:v9];
    [(UILabel *)self->_titleLabel setLineBreakMode:4];
    [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_titleLabel setText:self->_title];
    [(UILabel *)self->_titleLabel setAlpha:self->_titleAlpha];
    if ([(PLPlatterActionButton *)self _wordCountForText:self->_title]> 1)
    {
      v8 = 2;
    }

    [(UILabel *)self->_titleLabel setNumberOfLines:v8];
    [(PLPlatterActionButton *)self _updateTitleLabelFont];
    traitCollection = [(PLPlatterActionButton *)self traitCollection];
    [traitCollection displayScale];

    font = [(UILabel *)self->_titleLabel font];
    [font lineHeight];
    UIRoundToScale();
    v13 = v12;

    [(UILabel *)self->_titleLabel setFrame:x, y, width, v13];
    [(PLPlatterActionButton *)self _configureTitleLabelEffects];
    v14 = self->_titleLabel;

    [(PLPlatterActionButton *)self addSubview:v14];
  }
}

- (void)_configureBackgroundColoringViewIfNecessary
{
  backgroundTintColor = self->_backgroundTintColor;
  backgroundTintColoringView = self->_backgroundTintColoringView;
  if (backgroundTintColor)
  {
    if (!backgroundTintColoringView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_backgroundTintColoringView;
      self->_backgroundTintColoringView = v5;

      [(UIView *)self->_backgroundView addSubview:self->_backgroundTintColoringView];
      [(UIView *)self->_backgroundTintColoringView _setContinuousCornerRadius:self->_cornerRadius];
      backgroundTintColoringView = self->_backgroundTintColoringView;
      backgroundTintColor = self->_backgroundTintColor;
    }

    [(UIView *)backgroundTintColoringView setBackgroundColor:backgroundTintColor];
  }

  else
  {
    [(UIView *)backgroundTintColoringView removeFromSuperview];
    v7 = self->_backgroundTintColoringView;
    self->_backgroundTintColoringView = 0;
  }

  [(PLPlatterActionButton *)self _configureTitleLabelEffects];
}

- (void)setCornerRadius:(double)cornerRadius
{
  if (self->_cornerRadius != cornerRadius)
  {
    selfCopy = self;
    self->_cornerRadius = cornerRadius;
    if (!self->_isBackgroundGlass)
    {
      [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
      [(UIView *)selfCopy->_backgroundView _setContinuousCornerRadius:selfCopy->_cornerRadius];
      [(PLPlatterActionButton *)selfCopy _configureBackgroundColoringViewIfNecessary];
      self = selfCopy->_backgroundTintColoringView;
      cornerRadius = selfCopy->_cornerRadius;
    }

    [(PLPlatterActionButton *)self _setContinuousCornerRadius:cornerRadius];

    [(PLPlatterActionButton *)selfCopy setNeedsLayout];
  }
}

- (void)_configureBackgroundViewIfNecessary
{
  customBackgroundColor = self->_customBackgroundColor;
  backgroundColor = [(UIView *)self->_backgroundView backgroundColor];
  v5 = BSEqualObjects();

  if (self->_backgroundMaterialRecipe)
  {
    v6 = self->_materialGroupNameBase == 0;
  }

  else
  {
    v6 = 1;
  }

  _materialBackgroundView = [(PLPlatterActionButton *)self _materialBackgroundView];
  if (_materialBackgroundView)
  {
    _materialBackgroundView2 = [(PLPlatterActionButton *)self _materialBackgroundView];
    if ([_materialBackgroundView2 recipe] == self->_backgroundMaterialRecipe)
    {
      [(PLPlatterActionButton *)self _materialBackgroundView];
      v9 = v17 = v6;
      groupNameBase = [v9 groupNameBase];
      v11 = groupNameBase == self->_materialGroupNameBase;

      v6 = v17;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if ((customBackgroundColor == 0) | v5 & 1)
  {
    if (!v6 && !v11)
    {
      [(UIView *)self->_backgroundView removeFromSuperview];
      v15 = [MEMORY[0x277D26718] materialViewWithRecipe:self->_backgroundMaterialRecipe];
      [(UIView *)v15 setGroupNameBase:self->_materialGroupNameBase];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v15;
      v18 = v15;

      [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_cornerRadius];
      [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
      [(PLPlatterActionButton *)self addSubview:self->_backgroundView];
      [(PLPlatterActionButton *)self sendSubviewToBack:self->_backgroundView];
    }
  }

  else
  {
    [(UIView *)self->_backgroundView removeFromSuperview];
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    v13 = self->_backgroundView;
    self->_backgroundView = v12;

    [(UIView *)self->_backgroundView setBackgroundColor:self->_customBackgroundColor];
    [(UIView *)self->_backgroundView _setContinuousCornerRadius:self->_cornerRadius];
    [(UIView *)self->_backgroundView setUserInteractionEnabled:0];
    [(PLPlatterActionButton *)self addSubview:self->_backgroundView];
    v14 = self->_backgroundView;

    [(PLPlatterActionButton *)self sendSubviewToBack:v14];
  }
}

- (void)_layoutBackgroundView
{
  backgroundView = self->_backgroundView;
  [(PLPlatterActionButton *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  backgroundTintColoringView = self->_backgroundTintColoringView;
  [(PLPlatterActionButton *)self bounds];

  [(UIView *)backgroundTintColoringView setFrame:?];
}

- (void)_layoutTitleLabel
{
  [(PLPlatterActionButton *)self bounds];
  CGRectGetWidth(v6);
  [(UILabel *)self->_titleLabel frame];
  CGRectGetHeight(v7);
  BSRectWithSize();
  traitCollection = [(PLPlatterActionButton *)self traitCollection];
  [traitCollection displayScale];

  [(PLPlatterActionButton *)self bounds];
  UIRectCenteredIntegralRectScale();
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setFrame:?];
}

- (int64_t)_wordCountForText:(id)text
{
  textCopy = text;
  if ([(__CFString *)textCopy length])
  {
    Length = CFStringGetLength(textCopy);
    v5 = CFLocaleCopyCurrent();
    v9.location = 0;
    v9.length = Length;
    v6 = CFStringTokenizerCreate(*MEMORY[0x277CBECE8], textCopy, v9, 3uLL, v5);
    v7 = -1;
    do
    {
      ++v7;
    }

    while (CFStringTokenizerAdvanceToNextToken(v6));
    CFRelease(v6);
    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MTMaterialView)_materialBackgroundView
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  return backgroundView;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    if (category)
    {
      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
      [(PLPlatterActionButton *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    }

    [(PLPlatterActionButton *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  if (!preferredContentSizeCategory)
  {
    objc_storeStrong(&self->_preferredContentSizeCategory, *MEMORY[0x277D76860]);
    preferredContentSizeCategory = self->_preferredContentSizeCategory;
  }

  return preferredContentSizeCategory;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];

  preferredContentSizeCategory2 = [(PLPlatterActionButton *)self preferredContentSizeCategory];
  v6 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v6 & 1) == 0)
  {
    fontProvider = self->_fontProvider;
    self->_fontProvider = 0;

    [(PLPlatterActionButton *)self setPreferredContentSizeCategory:preferredContentSizeCategory];
    [(PLPlatterActionButton *)self _updateTitleLabelFont];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }

  return v6 ^ 1;
}

- (void)setCustomBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_customBackgroundColor, color);
    [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_materialGroupNameBase, base);
    [(PLPlatterActionButton *)self _configureBackgroundViewIfNecessary];
    [(PLPlatterActionButton *)self setNeedsLayout];
  }
}

- (void)_handleHoverGestureRecognizerEvent:(id)event
{
  state = [event state];
  if (state == 3)
  {
    v5 = MEMORY[0x277D75D18];
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __60__PLPlatterActionButton__handleHoverGestureRecognizerEvent___block_invoke_2;
    v10 = &unk_2784250D8;
    selfCopy = self;
    v6 = &v7;
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    v5 = MEMORY[0x277D75D18];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __60__PLPlatterActionButton__handleHoverGestureRecognizerEvent___block_invoke;
    v15 = &unk_2784250D8;
    selfCopy2 = self;
    v6 = &v12;
  }

  [v5 animateWithDuration:v6 animations:{0.2, v7, v8, v9, v10, selfCopy, v12, v13, v14, v15, selfCopy2}];
}

@end