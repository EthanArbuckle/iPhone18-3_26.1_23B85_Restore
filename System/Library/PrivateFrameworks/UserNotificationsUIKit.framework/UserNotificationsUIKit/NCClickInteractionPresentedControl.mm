@interface NCClickInteractionPresentedControl
- (BOOL)adjustForContentSizeCategoryChange;
- (CGSize)sizeThatFits:(CGSize)result;
- (NCClickInteractionPresentedControl)initWithTitle:(id)title materialRecipe:(int64_t)recipe;
- (NSString)preferredContentSizeCategory;
- (id)_newMaterialViewWithRecipe:(int64_t)recipe;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)_configureContentViewIfNecessaryWithTitle:(id)title;
- (void)_configureMaterialViewsIfNecessary;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_setCornerRadius:(double)radius;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation NCClickInteractionPresentedControl

- (NCClickInteractionPresentedControl)initWithTitle:(id)title materialRecipe:(int64_t)recipe
{
  titleCopy = title;
  v14.receiver = self;
  v14.super_class = NCClickInteractionPresentedControl;
  v7 = [(NCClickInteractionPresentedControl *)&v14 init];
  v8 = v7;
  if (v7)
  {
    layer = [(NCClickInteractionPresentedControl *)v7 layer];
    [layer setHitTestsAsOpaque:1];

    v8->_materialRecipe = recipe;
    [(NCClickInteractionPresentedControl *)v8 setAutoresizesSubviews:1];
    [(NCClickInteractionPresentedControl *)v8 setAccessibilityIdentifier:@"clear-all-button"];
    [(NCClickInteractionPresentedControl *)v8 _configureContentViewIfNecessaryWithTitle:titleCopy];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v12 = [objc_alloc(MEMORY[0x277D75870]) initWithDelegate:v8];
      [(NCClickInteractionPresentedControl *)v8 addInteraction:v12];
    }
  }

  return v8;
}

- (void)_setCornerRadius:(double)radius
{
  [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
  backgroundMaterialView = self->_backgroundMaterialView;

  [(MTMaterialView *)backgroundMaterialView _setCornerRadius:radius];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
  backgroundMaterialView = self->_backgroundMaterialView;

  [(MTMaterialView *)backgroundMaterialView _setContinuousCornerRadius:radius];
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

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v17.receiver = self;
  v17.super_class = NCClickInteractionPresentedControl;
  isHighlighted = [(NCClickInteractionPresentedControl *)&v17 isHighlighted];
  v16.receiver = self;
  v16.super_class = NCClickInteractionPresentedControl;
  [(NCClickInteractionPresentedControl *)&v16 setHighlighted:highlightedCopy];
  v15.receiver = self;
  v15.super_class = NCClickInteractionPresentedControl;
  isHighlighted2 = [(NCClickInteractionPresentedControl *)&v15 isHighlighted];
  if (isHighlighted != isHighlighted2)
  {
    v7 = isHighlighted2;
    [(NCClickInteractionPresentedControl *)self _configureMaterialViewsIfNecessary];
    backgroundMaterialView = self->_backgroundMaterialView;
    v9 = objc_initWeak(&location, backgroundMaterialView);
    newDefaultHighlightAnimator = [objc_opt_class() newDefaultHighlightAnimator];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__NCClickInteractionPresentedControl_setHighlighted___block_invoke;
    v11[3] = &unk_2783729F8;
    objc_copyWeak(&v12, &location);
    v13 = v7;
    [newDefaultHighlightAnimator addAnimations:v11];
    [newDefaultHighlightAnimator startAnimation];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __53__NCClickInteractionPresentedControl_setHighlighted___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlighted:*(a1 + 40)];
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(NCClickInteractionPresentedControl *)self adjustForContentSizeCategoryChange];
  }
}

- (NSString)preferredContentSizeCategory
{
  preferredContentSizeCategory = [(NCClickInteractionPresentedView *)self->_presentedView preferredContentSizeCategory];
  v3 = preferredContentSizeCategory;
  if (preferredContentSizeCategory)
  {
    v4 = preferredContentSizeCategory;
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
  adjustForContentSizeCategoryChange = [(NCClickInteractionPresentedView *)self->_presentedView adjustForContentSizeCategoryChange];
  if (adjustForContentSizeCategoryChange)
  {
    [(NCClickInteractionPresentedControl *)self setNeedsLayout];
  }

  return adjustForContentSizeCategoryChange;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v5 = MEMORY[0x277D758D8];
  regionCopy = region;
  v7 = objc_alloc_init(v5);
  v8 = MEMORY[0x277D75208];
  [regionCopy rect];
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

- (id)_newMaterialViewWithRecipe:(int64_t)recipe
{
  v4 = [MEMORY[0x277D26718] materialViewWithRecipe:recipe];
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

- (void)_configureContentViewIfNecessaryWithTitle:(id)title
{
  v22 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (!self->_presentedView)
  {
    v16 = titleCopy;
    v5 = [[NCClickInteractionPresentedView alloc] initWithTitle:titleCopy];
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
    requiredVisualStyleCategories = [(NCClickInteractionPresentedView *)self->_presentedView requiredVisualStyleCategories];
    v9 = [requiredVisualStyleCategories countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(requiredVisualStyleCategories);
          }

          integerValue = [*(*(&v17 + 1) + 8 * v12) integerValue];
          v14 = self->_presentedView;
          v15 = [(MTMaterialView *)self->_backgroundMaterialView visualStylingProviderForCategory:integerValue];
          [(NCClickInteractionPresentedView *)v14 setVisualStylingProvider:v15 forCategory:integerValue];

          ++v12;
        }

        while (v10 != v12);
        v10 = [requiredVisualStyleCategories countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    [(NCClickInteractionPresentedControl *)self addSubview:self->_presentedView];
    titleCopy = v16;
  }
}

@end