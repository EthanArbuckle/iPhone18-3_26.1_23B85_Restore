@interface PLGlyphControl
+ (id)dismissControlWithMaterialRecipe:(int64_t)recipe;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PLGlyphControl)initWithMaterialRecipe:(int64_t)recipe;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureGlyphViewIfNecessaryWithImage:(id)image;
- (void)_configureMaterialViewIfNecessary:(id *)necessary positioningAtIndex:(unint64_t)index;
- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event;
- (void)_updateVisualStylingOfView:(id)view;
- (void)layoutSubviews;
- (void)setBlurEnabled:(BOOL)enabled;
- (void)setGlyph:(id)glyph;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setVisualStyle:(int64_t)style;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
@end

@implementation PLGlyphControl

+ (id)dismissControlWithMaterialRecipe:(int64_t)recipe
{
  v3 = [[self alloc] initWithMaterialRecipe:recipe];
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"x" inBundle:v5 compatibleWithTraitCollection:0];
  v7 = [v6 imageWithRenderingMode:2];
  [v3 setGlyph:v7];

  [v3 setAccessibilityIdentifier:@"dismiss-expanded-button"];

  return v3;
}

- (PLGlyphControl)initWithMaterialRecipe:(int64_t)recipe
{
  v8.receiver = self;
  v8.super_class = PLGlyphControl;
  v4 = [(PLGlyphControl *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_materialRecipe = recipe;
    v4->_visualStyle = -1;
    v4->_blurEnabled = 1;
    layer = [(PLGlyphControl *)v4 layer];
    [layer setAllowsGroupBlending:0];
  }

  return v5;
}

- (void)setGlyph:(id)glyph
{
  glyphCopy = glyph;
  glyph = [(PLGlyphControl *)self glyph];
  v5 = [glyph isEqual:glyphCopy];

  if ((v5 & 1) == 0)
  {
    [(PLGlyphControl *)self _configureGlyphViewIfNecessaryWithImage:glyphCopy];
  }
}

- (void)setVisualStyle:(int64_t)style
{
  if (self->_visualStyle != style)
  {
    [(PLGlyphControl *)self _removeAllVisualStyling];
    self->_visualStyle = style;

    [(PLGlyphControl *)self _updateAllVisualStyling];
  }
}

- (void)setBlurEnabled:(BOOL)enabled
{
  if (self->_blurEnabled != enabled)
  {
    self->_blurEnabled = enabled;
    [(MTMaterialView *)self->_backgroundMaterialView setBlurEnabled:?];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v17.receiver = self;
  v17.super_class = PLGlyphControl;
  isHighlighted = [(PLGlyphControl *)&v17 isHighlighted];
  v16.receiver = self;
  v16.super_class = PLGlyphControl;
  [(PLGlyphControl *)&v16 setHighlighted:highlightedCopy];
  v15.receiver = self;
  v15.super_class = PLGlyphControl;
  isHighlighted2 = [(PLGlyphControl *)&v15 isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    v7 = isHighlighted2;
    [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
    backgroundMaterialView = self->_backgroundMaterialView;
    v9 = objc_initWeak(&location, backgroundMaterialView);
    newDefaultHighlightAnimator = [objc_opt_class() newDefaultHighlightAnimator];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__PLGlyphControl_setHighlighted___block_invoke;
    v11[3] = &unk_278425050;
    objc_copyWeak(&v12, &location);
    v13 = v7;
    [newDefaultHighlightAnimator addAnimations:v11];
    [newDefaultHighlightAnimator startAnimation];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __33__PLGlyphControl_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:*(a1 + 40)];
}

- (void)_sendActionsForEvents:(unint64_t)events withEvent:(id)event
{
  eventCopy = event;
  v7.receiver = self;
  v7.super_class = PLGlyphControl;
  [(PLGlyphControl *)&v7 _sendActionsForEvents:events withEvent:eventCopy];
  if ((events & 0x40) != 0)
  {
    [(PLGlyphControl *)self _handleTouchUpInsideWithEvent:eventCopy];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 34.0;
  v4 = 34.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = PLGlyphControl;
  [(PLGlyphControl *)&v13 layoutSubviews];
  [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
  [(PLGlyphControl *)self _cornerRadius];
  [(MTMaterialView *)self->_backgroundMaterialView _setContinuousCornerRadius:?];
  [(PLGlyphControl *)self bounds];
  [(MTMaterialView *)self->_backgroundMaterialView setFrame:?];
  image = [(UIImageView *)self->_glyphView image];
  [image size];
  BSRectWithSize();
  v12 = PLMainScreenScale();
  UIRectCenteredIntegralRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIImageView *)self->_glyphView setFrame:v5, v7, v9, v11, *&v12];
}

- (void)setMaterialGroupNameBase:(id)base
{
  baseCopy = base;
  materialGroupNameBase = [(PLGlyphControl *)self materialGroupNameBase];
  v5 = [materialGroupNameBase isEqualToString:baseCopy];

  if ((v5 & 1) == 0)
  {
    [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
    [(MTMaterialView *)self->_backgroundMaterialView setGroupNameBase:baseCopy];
  }
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  if (self->_visualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(PLGlyphControl *)self _removeAllVisualStyling];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(PLGlyphControl *)self _updateAllVisualStyling];
    providerCopy = v7;
  }
}

- (void)_configureGlyphViewIfNecessaryWithImage:(id)image
{
  if (image && !self->_glyphView)
  {
    v4 = MEMORY[0x277D755E8];
    imageCopy = image;
    v6 = [[v4 alloc] initWithImage:imageCopy];

    glyphView = self->_glyphView;
    self->_glyphView = v6;

    [(UIImageView *)self->_glyphView setContentMode:1];
    [(PLGlyphControl *)self _updateGlyphViewVisualStyling];
    [(PLGlyphControl *)self addSubview:self->_glyphView];

    [(PLGlyphControl *)self setNeedsLayout];
  }
}

- (void)_configureMaterialViewIfNecessary:(id *)necessary positioningAtIndex:(unint64_t)index
{
  if (necessary && !*necessary && self->_materialRecipe)
  {
    v7 = [MEMORY[0x277D26718] materialViewWithRecipe:?];
    *necessary = v7;
    [(PLGlyphControl *)self insertSubview:v7 atIndex:index];

    [(PLGlyphControl *)self setNeedsLayout];
  }
}

- (void)_configureBackgroundMaterialViewIfNecessary
{
  backgroundMaterialView = self->_backgroundMaterialView;
  v3 = backgroundMaterialView;
  [(PLGlyphControl *)self _configureMaterialViewIfNecessary:&backgroundMaterialView positioningAtIndex:0];
  v4 = backgroundMaterialView;

  [(MTMaterialView *)v4 setBlurEnabled:self->_blurEnabled];
  v5 = self->_backgroundMaterialView;
  self->_backgroundMaterialView = v4;
}

- (void)_updateVisualStylingOfView:(id)view
{
  viewCopy = view;
  if (viewCopy && self->_materialRecipe)
  {
    v9 = viewCopy;
    [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
    visualStylingProvider = self->_visualStylingProvider;
    if (visualStylingProvider)
    {
      v6 = visualStylingProvider;
    }

    else
    {
      v6 = [(MTMaterialView *)self->_backgroundMaterialView visualStylingProviderForCategory:1];
    }

    v7 = v6;
    if (self->_visualStyle == -1)
    {
      visualStyle = 1;
    }

    else
    {
      visualStyle = self->_visualStyle;
    }

    [(MTVisualStylingProvider *)v6 automaticallyUpdateView:v9 withStyle:visualStyle andObserverBlock:&__block_literal_global];

    viewCopy = v9;
  }
}

id __64__PLGlyphControl_SubclassUtilities___updateVisualStylingOfView___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__PLGlyphControl_SubclassUtilities___updateVisualStylingOfView___block_invoke_2;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D70F60](v6);

  return v4;
}

@end