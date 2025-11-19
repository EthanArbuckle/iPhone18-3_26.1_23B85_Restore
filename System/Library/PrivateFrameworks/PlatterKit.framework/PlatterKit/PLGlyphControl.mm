@interface PLGlyphControl
+ (id)dismissControlWithMaterialRecipe:(int64_t)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (PLGlyphControl)initWithMaterialRecipe:(int64_t)a3;
- (void)_configureBackgroundMaterialViewIfNecessary;
- (void)_configureGlyphViewIfNecessaryWithImage:(id)a3;
- (void)_configureMaterialViewIfNecessary:(id *)a3 positioningAtIndex:(unint64_t)a4;
- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4;
- (void)_updateVisualStylingOfView:(id)a3;
- (void)layoutSubviews;
- (void)setBlurEnabled:(BOOL)a3;
- (void)setGlyph:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaterialGroupNameBase:(id)a3;
- (void)setVisualStyle:(int64_t)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
@end

@implementation PLGlyphControl

+ (id)dismissControlWithMaterialRecipe:(int64_t)a3
{
  v3 = [[a1 alloc] initWithMaterialRecipe:a3];
  v4 = MEMORY[0x277D755B8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v4 imageNamed:@"x" inBundle:v5 compatibleWithTraitCollection:0];
  v7 = [v6 imageWithRenderingMode:2];
  [v3 setGlyph:v7];

  [v3 setAccessibilityIdentifier:@"dismiss-expanded-button"];

  return v3;
}

- (PLGlyphControl)initWithMaterialRecipe:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = PLGlyphControl;
  v4 = [(PLGlyphControl *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_materialRecipe = a3;
    v4->_visualStyle = -1;
    v4->_blurEnabled = 1;
    v6 = [(PLGlyphControl *)v4 layer];
    [v6 setAllowsGroupBlending:0];
  }

  return v5;
}

- (void)setGlyph:(id)a3
{
  v6 = a3;
  v4 = [(PLGlyphControl *)self glyph];
  v5 = [v4 isEqual:v6];

  if ((v5 & 1) == 0)
  {
    [(PLGlyphControl *)self _configureGlyphViewIfNecessaryWithImage:v6];
  }
}

- (void)setVisualStyle:(int64_t)a3
{
  if (self->_visualStyle != a3)
  {
    [(PLGlyphControl *)self _removeAllVisualStyling];
    self->_visualStyle = a3;

    [(PLGlyphControl *)self _updateAllVisualStyling];
  }
}

- (void)setBlurEnabled:(BOOL)a3
{
  if (self->_blurEnabled != a3)
  {
    self->_blurEnabled = a3;
    [(MTMaterialView *)self->_backgroundMaterialView setBlurEnabled:?];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = PLGlyphControl;
  v5 = [(PLGlyphControl *)&v17 isHighlighted];
  v16.receiver = self;
  v16.super_class = PLGlyphControl;
  [(PLGlyphControl *)&v16 setHighlighted:v3];
  v15.receiver = self;
  v15.super_class = PLGlyphControl;
  v6 = [(PLGlyphControl *)&v15 isHighlighted];
  if (v5 != v6)
  {
    v7 = v6;
    [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
    backgroundMaterialView = self->_backgroundMaterialView;
    v9 = objc_initWeak(&location, backgroundMaterialView);
    v10 = [objc_opt_class() newDefaultHighlightAnimator];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__PLGlyphControl_setHighlighted___block_invoke;
    v11[3] = &unk_278425050;
    objc_copyWeak(&v12, &location);
    v13 = v7;
    [v10 addAnimations:v11];
    [v10 startAnimation];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __33__PLGlyphControl_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:*(a1 + 40)];
}

- (void)_sendActionsForEvents:(unint64_t)a3 withEvent:(id)a4
{
  v6 = a4;
  v7.receiver = self;
  v7.super_class = PLGlyphControl;
  [(PLGlyphControl *)&v7 _sendActionsForEvents:a3 withEvent:v6];
  if ((a3 & 0x40) != 0)
  {
    [(PLGlyphControl *)self _handleTouchUpInsideWithEvent:v6];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [v4 view];
  v6 = v5 == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 numberOfTouchesRequired] != 1 || objc_msgSend(v4, "numberOfTapsRequired") != 1;

  return v6;
}

- (CGSize)sizeThatFits:(CGSize)a3
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
  v3 = [(UIImageView *)self->_glyphView image];
  [v3 size];
  BSRectWithSize();
  v12 = PLMainScreenScale();
  UIRectCenteredIntegralRectScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UIImageView *)self->_glyphView setFrame:v5, v7, v9, v11, *&v12];
}

- (void)setMaterialGroupNameBase:(id)a3
{
  v6 = a3;
  v4 = [(PLGlyphControl *)self materialGroupNameBase];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(PLGlyphControl *)self _configureBackgroundMaterialViewIfNecessary];
    [(MTMaterialView *)self->_backgroundMaterialView setGroupNameBase:v6];
  }
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  if (self->_visualStylingProvider != v6)
  {
    v7 = v6;
    [(PLGlyphControl *)self _removeAllVisualStyling];
    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(PLGlyphControl *)self _updateAllVisualStyling];
    v6 = v7;
  }
}

- (void)_configureGlyphViewIfNecessaryWithImage:(id)a3
{
  if (a3 && !self->_glyphView)
  {
    v4 = MEMORY[0x277D755E8];
    v5 = a3;
    v6 = [[v4 alloc] initWithImage:v5];

    glyphView = self->_glyphView;
    self->_glyphView = v6;

    [(UIImageView *)self->_glyphView setContentMode:1];
    [(PLGlyphControl *)self _updateGlyphViewVisualStyling];
    [(PLGlyphControl *)self addSubview:self->_glyphView];

    [(PLGlyphControl *)self setNeedsLayout];
  }
}

- (void)_configureMaterialViewIfNecessary:(id *)a3 positioningAtIndex:(unint64_t)a4
{
  if (a3 && !*a3 && self->_materialRecipe)
  {
    v7 = [MEMORY[0x277D26718] materialViewWithRecipe:?];
    *a3 = v7;
    [(PLGlyphControl *)self insertSubview:v7 atIndex:a4];

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

- (void)_updateVisualStylingOfView:(id)a3
{
  v4 = a3;
  if (v4 && self->_materialRecipe)
  {
    v9 = v4;
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

    v4 = v9;
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