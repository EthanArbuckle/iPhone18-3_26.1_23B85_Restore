@interface SBHFeatherBlurNavigationBar
- (CGRect)_calculateCompactNavBarFrame;
- (CGRect)_calculateGradientMaskFrame;
- (CGRect)gradientMaskFrame;
- (SBHFeatherBlurNavigationBar)initWithFrame:(CGRect)a3;
- (double)_defaultHeightForMetrics;
- (double)_topMargin;
- (id)_capturedLargeTextLabelContainerView;
- (id)_capturedTinyTextLabelContainerView;
- (void)_updateAppearance;
- (void)_updateAppearanceAfterTraitChange;
- (void)_updateHeights;
- (void)_updateLabel;
- (void)_updateLabelAlphas;
- (void)layoutSubviews;
- (void)setHidesFeatherBlur:(BOOL)a3;
@end

@implementation SBHFeatherBlurNavigationBar

- (SBHFeatherBlurNavigationBar)initWithFrame:(CGRect)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SBHFeatherBlurNavigationBar;
  v3 = [(SBHFeatherBlurNavigationBar *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E69D3FC0]) initWithRecipe:2];
    featherBlurBackgroundView = v3->_featherBlurBackgroundView;
    v3->_featherBlurBackgroundView = v4;

    [(SBHFeatherBlurNavigationBar *)v3 _setBackgroundView:v3->_featherBlurBackgroundView];
    v6 = objc_opt_new();
    featherBlurTitleLabel = v3->_featherBlurTitleLabel;
    v3->_featherBlurTitleLabel = v6;

    [(UILabel *)v3->_featherBlurTitleLabel setAlpha:0.0];
    [(SBHFeatherBlurNavigationBar *)v3 addSubview:v3->_featherBlurTitleLabel];
    [(SBHFeatherBlurNavigationBar *)v3 setOverrideUserInterfaceStyle:2];
    [(SBHFeatherBlurNavigationBar *)v3 setPrefersLargeTitles:1];
    [(SBHFeatherBlurNavigationBar *)v3 _updateAppearance];
    [(SBHFeatherBlurNavigationBar *)v3 _updateLabel];
    [(SBHFeatherBlurNavigationBar *)v3 _updateHeights];
    v8 = objc_opt_self();
    v13[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    v10 = [(SBHFeatherBlurNavigationBar *)v3 registerForTraitChanges:v9 withAction:sel__updateAppearanceAfterTraitChange];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = SBHFeatherBlurNavigationBar;
  [(SBHFeatherBlurNavigationBar *)&v15 layoutSubviews];
  [(SBHFeatherBlurNavigationBar *)self _updateHeights];
  [(SBHFeatherBlurNavigationBar *)self _updateLabel];
  [(SBHFeatherBlurNavigationBar *)self _calculateCompactNavBarFrame];
  featherBlurBackgroundView = self->_featherBlurBackgroundView;
  [(SBHFeatherBlurNavigationBar *)self bounds];
  [(SBFFeatherBlurView *)featherBlurBackgroundView setFrame:?];
  v4 = [(SBFFeatherBlurView *)self->_featherBlurBackgroundView window];
  v5 = self->_featherBlurBackgroundView;
  if (v4)
  {
    [(SBFFeatherBlurView *)self->_featherBlurBackgroundView bounds];
    [(SBFFeatherBlurView *)v5 convertRect:v4 toCoordinateSpace:?];
    v6 = [MEMORY[0x1E69D3FC0] matchMoveAnimationForFrame:v4 relativeToView:?];
    v7 = [(SBFFeatherBlurView *)self->_featherBlurBackgroundView layer];
    [v7 addAnimation:v6 forKey:@"SBHFeatherBlurNavigationBarMatchMoveAnimation"];
  }

  else
  {
    v6 = [(SBFFeatherBlurView *)self->_featherBlurBackgroundView layer];
    [v6 removeAnimationForKey:@"SBHFeatherBlurNavigationBarMatchMoveAnimation"];
  }

  featherBlurTitleLabel = self->_featherBlurTitleLabel;
  [(UILabel *)featherBlurTitleLabel frame];
  UIRectCenteredRect();
  [(UILabel *)featherBlurTitleLabel setFrame:?];
  [(SBHFeatherBlurNavigationBar *)self bringSubviewToFront:self->_featherBlurBackgroundView];
  [(SBHFeatherBlurNavigationBar *)self bringSubviewToFront:self->_featherBlurTitleLabel];
  [(SBHFeatherBlurNavigationBar *)self _calculateGradientMaskFrame];
  self->_gradientMaskFrame.origin.x = v9;
  self->_gradientMaskFrame.origin.y = v10;
  self->_gradientMaskFrame.size.width = v11;
  self->_gradientMaskFrame.size.height = v12;
  WeakRetained = objc_loadWeakRetained(&self->_capturedTinyTextLabelContainerView);
  [WeakRetained setHidden:1];
  v14 = objc_loadWeakRetained(&self->_capturedLargeTextLabelContainerView);
  [v14 setClipsToBounds:0];
  [(SBHFeatherBlurNavigationBar *)self _updateLabelAlphas];
}

- (void)setHidesFeatherBlur:(BOOL)a3
{
  if (self->_hidesFeatherBlur != a3)
  {
    self->_hidesFeatherBlur = a3;
    v4 = [(SBHFeatherBlurNavigationBar *)self superview];
    if (v4)
    {
      v5 = v4;
      v6 = [(SBHFeatherBlurNavigationBar *)self window];

      if (v6)
      {

        [(SBHFeatherBlurNavigationBar *)self _updateAppearanceAfterTraitChange];
      }
    }
  }
}

- (id)_capturedTinyTextLabelContainerView
{
  if (_capturedTinyTextLabelContainerView_onceToken != -1)
  {
    [SBHFeatherBlurNavigationBar _capturedTinyTextLabelContainerView];
  }

  v3 = [(SBHFeatherBlurNavigationBar *)self subviews];
  v4 = [v3 bs_firstObjectOfClass:_capturedTinyTextLabelContainerView_tinyTextClass];

  return v4;
}

Class __66__SBHFeatherBlurNavigationBar__capturedTinyTextLabelContainerView__block_invoke()
{
  result = NSClassFromString(&cfstr_Uinavigationba.isa);
  _capturedTinyTextLabelContainerView_tinyTextClass = result;
  return result;
}

- (id)_capturedLargeTextLabelContainerView
{
  if (_capturedLargeTextLabelContainerView_onceToken != -1)
  {
    [SBHFeatherBlurNavigationBar _capturedLargeTextLabelContainerView];
  }

  v3 = [(SBHFeatherBlurNavigationBar *)self subviews];
  v4 = [v3 bs_firstObjectOfClass:_capturedLargeTextLabelContainerView_largeTextClass];

  return v4;
}

Class __67__SBHFeatherBlurNavigationBar__capturedLargeTextLabelContainerView__block_invoke()
{
  result = NSClassFromString(&cfstr_Uinavigationba_0.isa);
  _capturedLargeTextLabelContainerView_largeTextClass = result;
  return result;
}

- (CGRect)_calculateGradientMaskFrame
{
  [(SBHFeatherBlurNavigationBar *)self _topMargin];
  v4 = v3;
  [(SBHFeatherBlurNavigationBar *)self bounds];
  v6 = -v4;
  v7 = v4 + self->_sb_minimumNavbarHeight + 10.0;
  v8 = 0.0;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v6;
  result.origin.x = v8;
  return result;
}

- (CGRect)_calculateCompactNavBarFrame
{
  [(SBHFeatherBlurNavigationBar *)self bounds];
  v4 = v3;
  [(SBHFeatherBlurNavigationBar *)self _defaultHeightForMetrics];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)_updateHeights
{
  [(SBHFeatherBlurNavigationBar *)self _defaultHeightForMetrics];
  self->_sb_minimumNavbarHeight = v3;
  if (!self->_configuredForItem)
  {
    v4 = [(SBHFeatherBlurNavigationBar *)self items];
    v5 = [v4 count];

    if (v5)
    {
      [(SBHFeatherBlurNavigationBar *)self _updateAppearance];
      [(SBHFeatherBlurNavigationBar *)self _updateLabel];
    }
  }

  self->_sb_maximumNavbarHeight = self->_sb_minimumNavbarHeight + self->_largeTextHeight;
  [(SBHFeatherBlurNavigationBar *)self _topMargin];
  self->_sb_maximumNavbarHeight = v6 + self->_sb_maximumNavbarHeight;
  self->_sb_minimumNavbarHeight = v6 + self->_sb_minimumNavbarHeight;
}

- (double)_topMargin
{
  v3 = 20.0;
  if (!SBHIsHomeButtonDevice())
  {
    v4 = [(SBHFeatherBlurNavigationBar *)self window];
    [v4 safeAreaInsets];
    v3 = v5;
  }

  return v3;
}

- (void)_updateAppearance
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
  barAppearance = self->_barAppearance;
  self->_barAppearance = v3;

  [(UINavigationBarAppearance *)self->_barAppearance configureWithTransparentBackground];
  v19 = [(UINavigationBarAppearance *)self->_barAppearance largeTitleTextAttributes];
  v5 = [(UINavigationBarAppearance *)self->_barAppearance titleTextAttributes];
  v6 = *MEMORY[0x1E69DB648];
  v7 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
  v8 = [v5 objectForKeyedSubscript:v6];
  v9 = [(SBHFeatherBlurNavigationBar *)self traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = [v10 isEqualToString:*MEMORY[0x1E69DDC20]];

  if (v11)
  {
    v12 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC28]];

    v13 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

    v14 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

    v15 = [v19 mutableCopy];
    [v15 setObject:v13 forKeyedSubscript:v6];
    v16 = [v19 mutableCopy];
    [v16 setObject:v14 forKeyedSubscript:v6];
    v17 = v15;

    v18 = v16;
    [(UINavigationBarAppearance *)self->_barAppearance setTitleTextAttributes:v18];

    [(UINavigationBarAppearance *)self->_barAppearance setLargeTitleTextAttributes:v17];
    v7 = v13;
    v8 = v14;
    v9 = v12;
    v5 = v18;
    v19 = v17;
  }

  [(SBHFeatherBlurNavigationBar *)self setScrollEdgeAppearance:self->_barAppearance];
  [(SBHFeatherBlurNavigationBar *)self setStandardAppearance:self->_barAppearance];
  [(SBHFeatherBlurNavigationBar *)self setCompactAppearance:self->_barAppearance];
  [(SBFFeatherBlurView *)self->_featherBlurBackgroundView setHidden:self->_hidesFeatherBlur];
}

- (void)_updateLabel
{
  [(SBHFeatherBlurNavigationBar *)self bounds];
  width = v26.size.width;
  if (!CGRectIsEmpty(v26))
  {
    v4 = [(SBHFeatherBlurNavigationBar *)self items];
    obj = [v4 lastObject];

    if (obj && self->_configuredForItem != obj)
    {
      featherBlurTitleLabel = self->_featherBlurTitleLabel;
      v6 = objc_alloc(MEMORY[0x1E696AAB0]);
      v7 = [(UINavigationItem *)obj title];
      v8 = [(UINavigationBarAppearance *)self->_barAppearance titleTextAttributes];
      v9 = [v6 initWithString:v7 attributes:v8];
      [(UILabel *)featherBlurTitleLabel setAttributedText:v9];

      [(UILabel *)self->_featherBlurTitleLabel sizeToFit];
      objc_storeStrong(&self->_configuredForItem, obj);
      v10 = [(UINavigationBarAppearance *)self->_barAppearance largeTitleTextAttributes];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
      [v11 descender];
      v13 = v12;
      [v11 lineHeight];
      v15 = v13 + v14;
      v16 = [(UINavigationItem *)obj title];
      [v16 boundingRectWithSize:1 options:v10 attributes:0 context:{width, 1.79769313e308}];
      v18 = v17;

      v19 = v18 / v15;
      self->_largeTextHeight = v15 * vcvtps_u32_f32(v19);
      objc_storeWeak(&self->_capturedTinyTextLabelContainerView, 0);
      objc_storeWeak(&self->_capturedLargeTextLabelContainerView, 0);
    }

    WeakRetained = objc_loadWeakRetained(&self->_capturedTinyTextLabelContainerView);
    if (!WeakRetained)
    {
      v21 = [(SBHFeatherBlurNavigationBar *)self _capturedTinyTextLabelContainerView];
      objc_storeWeak(&self->_capturedTinyTextLabelContainerView, v21);
    }

    v22 = objc_loadWeakRetained(&self->_capturedLargeTextLabelContainerView);
    if (!v22)
    {
      v23 = [(SBHFeatherBlurNavigationBar *)self _capturedLargeTextLabelContainerView];
      objc_storeWeak(&self->_capturedLargeTextLabelContainerView, v23);
    }
  }
}

- (void)_updateAppearanceAfterTraitChange
{
  [(SBHFeatherBlurNavigationBar *)self _updateAppearance];
  [(SBHFeatherBlurNavigationBar *)self _updateLabel];
  [(SBHFeatherBlurNavigationBar *)self _updateHeights];
  [(SBHFeatherBlurNavigationBar *)self setNeedsLayout];

  [(SBHFeatherBlurNavigationBar *)self layoutIfNeeded];
}

- (double)_defaultHeightForMetrics
{
  v3.receiver = self;
  v3.super_class = SBHFeatherBlurNavigationBar;
  [(SBHFeatherBlurNavigationBar *)&v3 defaultHeightForMetrics:0];
  return result;
}

- (void)_updateLabelAlphas
{
  WeakRetained = objc_loadWeakRetained(&self->_capturedLargeTextLabelContainerView);
  if (WeakRetained || ([(SBHFeatherBlurNavigationBar *)self _updateLabel], (WeakRetained = objc_loadWeakRetained(&self->_capturedLargeTextLabelContainerView)) != 0))
  {
    v4 = WeakRetained;
    [WeakRetained frame];
    v6 = v5;
    sb_minimumNavbarHeight = self->_sb_minimumNavbarHeight;
    [(SBHFeatherBlurNavigationBar *)self _topMargin];
    v9 = v8;
    v10 = [(SBHFeatherBlurNavigationBar *)self superview];
    if (v10)
    {
      v11 = [(SBHFeatherBlurNavigationBar *)self window];
      v13 = v6 <= sb_minimumNavbarHeight - v9 && v11 != 0;
    }

    else
    {
      v13 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __49__SBHFeatherBlurNavigationBar__updateLabelAlphas__block_invoke;
    aBlock[3] = &unk_1E808D108;
    aBlock[4] = self;
    v18 = v13;
    v14 = v4;
    v17 = v14;
    v15 = _Block_copy(aBlock);
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled] && self->_allowsAnimatedUpdating)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    }

    else
    {
      v15[2](v15);
    }
  }
}

uint64_t __49__SBHFeatherBlurNavigationBar__updateLabelAlphas__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 688);
  if (*(a1 + 48))
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [v2 setAlpha:v3];
  v4 = *(a1 + 40);
  if (*(a1 + 48))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  return [v4 setAlpha:v5];
}

- (CGRect)gradientMaskFrame
{
  x = self->_gradientMaskFrame.origin.x;
  y = self->_gradientMaskFrame.origin.y;
  width = self->_gradientMaskFrame.size.width;
  height = self->_gradientMaskFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end