@interface NCClickInteractionPresentedControl
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)result;
- (NCClickInteractionPresentedControl)initWithTitle:(id)a3 materialRecipe:(int64_t)a4;
- (NSString)preferredContentSizeCategory;
- (id)_newMaterialViewWithRecipe:(int64_t)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)_configureContentViewIfNecessaryWithTitle:(id)a3;
- (void)_configureMaterialViewsIfNecessary;
- (void)_setContinuousCornerRadius:(double)a3;
- (void)_setCornerRadius:(double)a3;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation NCClickInteractionPresentedControl

- (NCClickInteractionPresentedControl)initWithTitle:(id)a3 materialRecipe:(int64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = NCClickInteractionPresentedControl;
  v7 = [(NCClickInteractionPresentedControl *)&v14 init];
  v8 = v7;
  if (v7)
  {
    v9 = [(NCClickInteractionPresentedControl *)v7 layer];
    [v9 setHitTestsAsOpaque:1];

    v8->_materialRecipe = a4;
    [(NCClickInteractionPresentedControl *)v8 setAutoresizesSubviews:1];
    [(NCClickInteractionPresentedControl *)v8 setAccessibilityIdentifier:@"clear-all-button"];
    [(NCClickInteractionPresentedControl *)v8 _configureContentViewIfNecessaryWithTitle:v6];
    v10 = [MEMORY[0x277D75418] currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      v12 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v8];
      [(NCClickInteractionPresentedControl *)v8 addInteraction:v12];
    }
  }

  return v8;
}

- (void)_setCornerRadius:(double)a3
{
  [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
  backgroundMaterialView = self->_backgroundMaterialView;

  [(MTMaterialView *)backgroundMaterialView _setCornerRadius:a3];
}

- (void)_setContinuousCornerRadius:(double)a3
{
  [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
  backgroundMaterialView = self->_backgroundMaterialView;

  [(MTMaterialView *)backgroundMaterialView _setContinuousCornerRadius:a3];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  presentedView = self->_presentedView;
  if (presentedView)
  {
    [(NCClickInteractionPresentedView *)presentedView sizeThatFits:result.width, result.height];
  }

  return result;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v17.receiver = self;
  v17.super_class = NCClickInteractionPresentedControl;
  v5 = [(NCClickInteractionPresentedControl *)&v17 isHighlighted];
  v16.receiver = self;
  v16.super_class = NCClickInteractionPresentedControl;
  [(NCClickInteractionPresentedControl *)&v16 setHighlighted:v3];
  v15.receiver = self;
  v15.super_class = NCClickInteractionPresentedControl;
  v6 = [(NCClickInteractionPresentedControl *)&v15 isHighlighted];
  if (v5 != v6)
  {
    v7 = v6;
    [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
    backgroundMaterialView = self->_backgroundMaterialView;
    v9 = objc_initWeak(&location, backgroundMaterialView);
    v10 = [objc_opt_class() newDefaultHighlightAnimator];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__NCClickInteractionPresentedControl_setHighlighted___block_invoke;
    v11[3] = &unk_2783729F8;
    objc_copyWeak(&v12, &location);
    v13 = v7;
    [v10 addAnimations:v11];
    [v10 startAnimation];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __53__NCClickInteractionPresentedControl_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:*(a1 + 40)];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  if (self->_adjustsFontForContentSizeCategory != a3)
  {
    self->_adjustsFontForContentSizeCategory = a3;
    [(NCClickInteractionPresentedControl *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  v2 = [(NCClickInteractionPresentedView *)self->_presentedView preferredContentSizeCategory];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = *MEMORY[0x277D76860];
  }

  v5 = v4;

  return v4;
}

- (BOOL)adjustForContentSizeCategoryChange
{
  v3 = [(NCClickInteractionPresentedView *)self->_presentedView adjustForContentSizeCategoryChange];
  if (v3)
  {
    [(NCClickInteractionPresentedControl *)self setNeedsLayout];
  }

  return v3;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = MEMORY[0x277D758D8];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = MEMORY[0x277D75208];
  [v6 rect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v8 bezierPathWithRoundedRect:v10 cornerRadius:{v12, v14, v16, 13.0}];
  [v7 setVisiblePath:v17];
  v18 = [objc_alloc(MEMORY[0x277D75B90]) initWithView:self parameters:v7];
  v19 = [MEMORY[0x277D75858] effectWithPreview:v18];
  v20 = [MEMORY[0x277D75890] styleWithEffect:v19 shape:0];

  return v20;
}

- (id)_newMaterialViewWithRecipe:(int64_t)a3
{
  v4 = [MEMORY[0x277D26718] materialViewWithRecipe:a3];
  [(NCClickInteractionPresentedControl *)self bounds];
  [v4 setFrame:?];
  [v4 setAutoresizingMask:18];
  return v4;
}

- (void)_configureMaterialViewsIfNecessary
{
  if (!self->_backgroundMaterialView)
  {
    v3 = [(NCClickInteractionPresentedControl *)self _newMaterialViewWithRecipe:self->_materialRecipe];
    backgroundMaterialView = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v3;

    [(MTMaterialView *)self->_backgroundMaterialView setBlurEnabled:0];
    v5 = self->_backgroundMaterialView;

    [(NCClickInteractionPresentedControl *)self insertSubview:v5 atIndex:0];
  }
}

- (void)_configureContentViewIfNecessaryWithTitle:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_presentedView)
  {
    v16 = v4;
    v5 = [[NCClickInteractionPresentedView alloc] initWithTitle:v4];
    presentedView = self->_presentedView;
    self->_presentedView = v5;

    [(NCClickInteractionPresentedView *)self->_presentedView setAdjustsFontForContentSizeCategory:[(NCClickInteractionPresentedControl *)self adjustsFontForContentSizeCategory]];
    v7 = self->_presentedView;
    [(NCClickInteractionPresentedControl *)self bounds];
    [(NCClickInteractionPresentedView *)v7 setFrame:?];
    [(NCClickInteractionPresentedView *)self->_presentedView setAutoresizingMask:18];
    [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [(NCClickInteractionPresentedView *)self->_presentedView requiredVisualStyleCategories];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * v12) integerValue];
          v14 = self->_presentedView;
          v15 = [(MTMaterialView *)self->_backgroundMaterialView visualStylingProviderForCategory:v13];
          [(NCClickInteractionPresentedView *)v14 setVisualStylingProvider:v15 forCategory:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(NCClickInteractionPresentedControl *)self addSubview:self->_presentedView];
    v4 = v16;
  }
}

@end