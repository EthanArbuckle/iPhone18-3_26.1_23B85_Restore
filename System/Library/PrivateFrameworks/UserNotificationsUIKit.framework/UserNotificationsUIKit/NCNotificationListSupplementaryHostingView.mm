@interface NCNotificationListSupplementaryHostingView
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationListSupplementaryHostingView)init;
- (NCNotificationListSupplementaryHostingViewDelegate)delegate;
- (double)glassSmoothness;
- (int64_t)backgroundGlassId;
- (unint64_t)backgroundGlassState;
- (void)_configureAuxiliaryOptionsViewIfNecessary;
- (void)_configureBackgroundTintViewIfNecessary;
- (void)_configurePlatterViewIfNecessary;
- (void)_configureViewToBlockOutOfProcessUIInteractionsIfNecessary;
- (void)_layoutAuxiliaryOptionsView;
- (void)_layoutHostedView;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)_tapGestureRecognized:(id)recognized;
- (void)layoutSubviews;
- (void)removeAuxiliaryOptionsView;
- (void)removeLightEffectsIfNeeded;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setAuxiliaryOptionActions:(id)actions;
- (void)setAuxiliaryOptionsBackgroundColor:(id)color;
- (void)setAuxiliaryOptionsBackgroundCompositingFilter:(id)filter;
- (void)setAuxiliaryOptionsSummaryText:(id)text;
- (void)setAuxiliaryOptionsTextColor:(id)color;
- (void)setAuxiliaryOptionsVisible:(BOOL)visible;
- (void)setGlassMode:(unint64_t)mode;
- (void)setHostedView:(id)view;
- (void)setMaterialGroupNameBase:(id)base;
- (void)setMaterialRecipe:(int64_t)recipe;
- (void)setMaterialTintColor:(id)color;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation NCNotificationListSupplementaryHostingView

- (NCNotificationListSupplementaryHostingView)init
{
  v7.receiver = self;
  v7.super_class = NCNotificationListSupplementaryHostingView;
  v2 = [(NCDimmableView *)&v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v3 = v2;
  if (v2)
  {
    [(NCNotificationListSupplementaryHostingView *)v2 _setContinuousCornerRadius:23.5];
    v4 = objc_alloc_init(MEMORY[0x277D75B80]);
    tapGestureRecognizer = v3->_tapGestureRecognizer;
    v3->_tapGestureRecognizer = v4;

    [(NCNotificationListSupplementaryHostingView *)v3 addGestureRecognizer:v3->_tapGestureRecognizer];
    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer addTarget:v3 action:sel__tapGestureRecognized_];
    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)v3->_tapGestureRecognizer setDelegate:v3];
    v3->_adjustsFontForContentSizeCategory = 1;
    v3->_apparentZDistanceToUser = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

- (void)setHostedView:(id)view
{
  viewCopy = view;
  hostedView = self->_hostedView;
  if (hostedView != viewCopy)
  {
    v10 = viewCopy;
    [(UIView *)hostedView removeFromSuperview];
    v7 = self->_hostedView;
    self->_hostedView = 0;

    objc_storeStrong(&self->_hostedView, view);
    [(NCDimmableView *)self setViewToFadeWhenDimming:self->_hostedView];
    if (v10)
    {
      [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
      customContentView = [(PLPlatterView *)self->_platterView customContentView];
      [customContentView addSubview:v10];

      if (self->_viewToBlockOutOfProcessUIInteractions)
      {
        customContentView2 = [(PLPlatterView *)self->_platterView customContentView];
        [customContentView2 bringSubviewToFront:self->_viewToBlockOutOfProcessUIInteractions];
      }
    }

    hostedView = [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }

  MEMORY[0x2821F96F8](hostedView);
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6.receiver = self;
  v6.super_class = NCNotificationListSupplementaryHostingView;
  [(NCNotificationListSupplementaryHostingView *)&v6 setUserInteractionEnabled:?];
  [(UITapGestureRecognizer *)self->_tapGestureRecognizer setEnabled:enabledCopy];
  v5 = enabledCopy && self->_hostedViewUserInteractionEnabled;
  [(NCNotificationListSupplementaryHostingView *)self _blockOutOfProcessUIInteractions:v5];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v5.receiver = self;
  v5.super_class = NCNotificationListSupplementaryHostingView;
  [(NCNotificationListSupplementaryHostingView *)&v5 _setContinuousCornerRadius:?];
  [(NCPlatterView *)self->_platterView _setContinuousCornerRadius:radius];
  [(UIView *)self->_hostedView _setContinuousCornerRadius:radius];
}

- (void)setAuxiliaryOptionsVisible:(BOOL)visible
{
  visibleCopy = visible;
  if ([(NCNotificationListSupplementaryHostingView *)self auxiliaryOptionsVisible]!= visible)
  {
    [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __73__NCNotificationListSupplementaryHostingView_setAuxiliaryOptionsVisible___block_invoke;
    v5[3] = &unk_27836F6A8;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsVisible:visibleCopy];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsSummaryText:(id)text
{
  textCopy = text;
  if ((BSEqualStrings() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsSummaryText, text);
    [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsSummaryText:textCopy];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionActions:(id)actions
{
  objc_storeStrong(&self->_auxiliaryOptionActions, actions);
  actionsCopy = actions;
  [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionActions:actionsCopy];

  [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
}

- (void)setAuxiliaryOptionsTextColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsTextColor, color);
    [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsTextColor:self->_auxiliaryOptionsTextColor];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsBackgroundColor:(id)color
{
  colorCopy = color;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsBackgroundColor, color);
    [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setAuxiliaryOptionsBackgroundCompositingFilter:(id)filter
{
  filterCopy = filter;
  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_auxiliaryOptionsBackgroundCompositingFilter, filter);
    [(NCNotificationListSupplementaryHostingView *)self _configureAuxiliaryOptionsViewIfNecessary];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsBackgroundCompositingFilter:self->_auxiliaryOptionsBackgroundCompositingFilter];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)removeAuxiliaryOptionsView
{
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView removeFromSuperview];
  auxiliaryOptionsView = self->_auxiliaryOptionsView;
  self->_auxiliaryOptionsView = 0;

  [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
}

- (BOOL)adjustForContentSizeCategoryChange
{
  if (objc_opt_respondsToSelector())
  {
    adjustForContentSizeCategoryChange = [(NCPlatterView *)self->_platterView adjustForContentSizeCategoryChange];
  }

  else
  {
    adjustForContentSizeCategoryChange = 0;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIView *)self->_hostedView adjustForContentSizeCategoryChange]& 1) != 0)
  {
    adjustForContentSizeCategoryChange = 1;
  }

  v4 = [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView adjustForContentSizeCategoryChange]| adjustForContentSizeCategoryChange;
  if (v4)
  {
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }

  return v4 & 1;
}

- (void)setMaterialRecipe:(int64_t)recipe
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_materialRecipe != recipe)
  {
    self->_materialRecipe = recipe;
    [(NCPlatterView *)self->_platterView setMaterialRecipe:?];
    if (objc_opt_respondsToSelector())
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      requiredVisualStyleCategories = [(UIView *)self->_hostedView requiredVisualStyleCategories];
      v5 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v13;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v13 != v7)
            {
              objc_enumerationMutation(requiredVisualStyleCategories);
            }

            integerValue = [*(*(&v12 + 1) + 8 * i) integerValue];
            hostedView = self->_hostedView;
            v11 = [(PLPlatterView *)self->_platterView visualStylingProviderForCategory:integerValue];
            [(UIView *)hostedView setVisualStylingProvider:v11 forCategory:integerValue];
          }

          v6 = [requiredVisualStyleCategories countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v6);
      }
    }

    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialRecipe:self->_materialRecipe];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setMaterialTintColor:(id)color
{
  colorCopy = color;
  if ((NCIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_materialTintColor, color);
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialTintColor:colorCopy];
    [(NCPlatterView *)self->_platterView setGlassTintColor:self->_materialTintColor];
    [(NCNotificationListSupplementaryHostingView *)self setNeedsLayout];
  }
}

- (void)setMaterialGroupNameBase:(id)base
{
  objc_storeStrong(&self->_materialGroupNameBase, base);
  baseCopy = base;
  [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:baseCopy];
  [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialGroupNameBase:baseCopy];
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  if (self->_apparentZDistanceToUser != user)
  {
    self->_apparentZDistanceToUser = user;
    [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithApparentZDistanceToUser:user];
  }
}

- (void)setRootScrollVelocity:(double)velocity
{
  if (self->_rootScrollVelocity != velocity)
  {
    self->_rootScrollVelocity = velocity;
    [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithRootListScrollVelocity:velocity];
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  if (self->_glassMode != mode)
  {
    self->_glassMode = mode;
    [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView updateWithGlassMode:mode];
  }
}

- (unint64_t)backgroundGlassState
{
  result = self->_platterView;
  if (result)
  {
    return [result backgroundGlassState];
  }

  return result;
}

- (int64_t)backgroundGlassId
{
  result = self->_platterView;
  if (result)
  {
    return [result backgroundGlassId];
  }

  return result;
}

- (double)glassSmoothness
{
  platterView = self->_platterView;
  if (!platterView)
  {
    return 0.0;
  }

  [(NCPlatterView *)platterView glassSmoothness];
  return result;
}

- (void)removeLightEffectsIfNeeded
{
  platterView = self->_platterView;
  if (platterView)
  {
    [(NCPlatterView *)platterView removeLightEffectsIfNeeded];
  }
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  if (self->_unmanagedBackdropContrast != contrast)
  {
    contrastCopy = contrast;
    self->_unmanagedBackdropContrast = contrast;
    [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
    platterView = self->_platterView;

    [(NCPlatterView *)platterView setUnmanagedBackdropContrast:contrastCopy];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  hostedView = [(NCNotificationListSupplementaryHostingView *)self hostedView];
  [hostedView sizeThatFits:{width, height}];
  v8 = v7;

  if ([(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView auxiliaryOptionsVisible])
  {
    auxiliaryOptionsView = self->_auxiliaryOptionsView;
    if (auxiliaryOptionsView)
    {
      [(NCAuxiliaryOptionsView *)auxiliaryOptionsView sizeThatFits:width, height];
    }

    else
    {
      v10 = 0.0;
    }

    v8 = v8 + v10;
  }

  v11 = width;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListSupplementaryHostingView;
  [(NCNotificationListSupplementaryHostingView *)&v3 layoutSubviews];
  [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
  [(NCNotificationListSupplementaryHostingView *)self _configureBackgroundTintViewIfNecessary];
  [(NCNotificationListSupplementaryHostingView *)self _layoutHostedView];
  [(NCNotificationListSupplementaryHostingView *)self _layoutAuxiliaryOptionsView];
}

- (void)_configurePlatterViewIfNecessary
{
  if (!self->_platterView)
  {
    v3 = [[NCPlatterView alloc] initWithRecipe:self->_materialRecipe];
    platterView = self->_platterView;
    self->_platterView = v3;

    [(PLPlatterView *)self->_platterView setMaterialGroupNameBase:self->_materialGroupNameBase];
    [(NCNotificationListSupplementaryHostingView *)self addSubview:self->_platterView];
    [(NCNotificationListSupplementaryHostingView *)self sendSubviewToBack:self->_platterView];
    v5 = self->_platterView;
    [(NCNotificationListSupplementaryHostingView *)self _continuousCornerRadius];
    [(NCPlatterView *)v5 _setContinuousCornerRadius:?];
    v6 = self->_platterView;
    [(NCNotificationListSupplementaryHostingView *)self bounds];
    [(NCPlatterView *)v6 setFrame:?];
    v7 = self->_platterView;

    [(NCPlatterView *)v7 setAutoresizingMask:18];
  }
}

- (void)_configureBackgroundTintViewIfNecessary
{
  if (self->_materialTintColor)
  {
    [(NCNotificationListSupplementaryHostingView *)self _configurePlatterViewIfNecessary];
  }

  else
  {
    [(NCDimmableView *)self setBackgroundDimmingView:0];
  }
}

- (void)_configureAuxiliaryOptionsViewIfNecessary
{
  if (self->_auxiliaryOptionsView)
  {
    goto LABEL_2;
  }

  if ([(NCNotificationListSupplementaryHostingView *)self hasContentForAuxiliaryOptions])
  {
    v5 = objc_alloc_init(NCAuxiliaryOptionsView);
    auxiliaryOptionsView = self->_auxiliaryOptionsView;
    self->_auxiliaryOptionsView = v5;

    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAdjustsFontForContentSizeCategory:[(NCNotificationListSupplementaryHostingView *)self adjustsFontForContentSizeCategory]];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionActions:self->_auxiliaryOptionActions];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsTextColor:self->_auxiliaryOptionsTextColor];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsSummaryText:self->_auxiliaryOptionsSummaryText];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsBackgroundColor:self->_auxiliaryOptionsBackgroundColor];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setAuxiliaryOptionsBackgroundCompositingFilter:self->_auxiliaryOptionsBackgroundCompositingFilter];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialRecipe:self->_materialRecipe];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialTintColor:self->_materialTintColor];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setMaterialGroupNameBase:self->_materialGroupNameBase];
    v7 = self->_auxiliaryOptionsView;
    [(NCNotificationListSupplementaryHostingView *)self _continuousCornerRadius];
    [(NCAuxiliaryOptionsView *)v7 _setContinuousCornerRadius:?];
    customContentView = [(PLPlatterView *)self->_platterView customContentView];
    [customContentView addSubview:self->_auxiliaryOptionsView];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __87__NCNotificationListSupplementaryHostingView__configureAuxiliaryOptionsViewIfNecessary__block_invoke;
    v9[3] = &unk_27836F6A8;
    v9[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    return;
  }

  if (self->_auxiliaryOptionsView)
  {
LABEL_2:
    if (![(NCNotificationListSupplementaryHostingView *)self hasContentForAuxiliaryOptions])
    {
      auxiliaryOptionsView = [(NCNotificationListSupplementaryHostingView *)self auxiliaryOptionsView];
      [auxiliaryOptionsView removeFromSuperview];

      v4 = self->_auxiliaryOptionsView;
      self->_auxiliaryOptionsView = 0;
    }
  }
}

- (void)_layoutHostedView
{
  [(NCNotificationListSupplementaryHostingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  hostedView = [(NCNotificationListSupplementaryHostingView *)self hostedView];
  [hostedView sizeThatFits:{v8, v10}];
  v13 = v12;

  [(UIView *)self->_viewToBlockOutOfProcessUIInteractions setFrame:v4, v6, v8, v10];
  hostedView = self->_hostedView;

  [(UIView *)hostedView setFrame:v4, v6, v8, v13];
}

- (void)_layoutAuxiliaryOptionsView
{
  if (self->_auxiliaryOptionsView)
  {
    [(NCNotificationListSupplementaryHostingView *)self bounds];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView sizeThatFits:v3, v4];
    BSRectWithSize();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(UIView *)self->_hostedView frame];
    [(NCAuxiliaryOptionsView *)self->_auxiliaryOptionsView setFrame:v6, CGRectGetMaxY(v13), v8, v10];
    auxiliaryOptionsView = self->_auxiliaryOptionsView;
    [(NCNotificationListSupplementaryHostingView *)self _continuousCornerRadius];

    [(NCAuxiliaryOptionsView *)auxiliaryOptionsView _setContinuousCornerRadius:?];
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  view = [touch view];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)_configureViewToBlockOutOfProcessUIInteractionsIfNecessary
{
  if (!self->_viewToBlockOutOfProcessUIInteractions)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    viewToBlockOutOfProcessUIInteractions = self->_viewToBlockOutOfProcessUIInteractions;
    self->_viewToBlockOutOfProcessUIInteractions = v3;

    layer = [(UIView *)self->_viewToBlockOutOfProcessUIInteractions layer];
    [layer setHitTestsAsOpaque:1];

    layer2 = [(UIView *)self->_viewToBlockOutOfProcessUIInteractions layer];
    [layer2 setAllowsHitTesting:1];

    [(UIView *)self->_viewToBlockOutOfProcessUIInteractions setHidden:1];
    v7 = self->_viewToBlockOutOfProcessUIInteractions;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v7 setBackgroundColor:clearColor];

    v9 = self->_viewToBlockOutOfProcessUIInteractions;
    [(NCNotificationListSupplementaryHostingView *)self bounds];
    [(UIView *)v9 setFrame:?];
    [(UIView *)self->_viewToBlockOutOfProcessUIInteractions setAutoresizingMask:18];
    customContentView = [(PLPlatterView *)self->_platterView customContentView];
    [customContentView addSubview:self->_viewToBlockOutOfProcessUIInteractions];
  }
}

- (void)_tapGestureRecognized:(id)recognized
{
  if ([recognized state] == 3 && -[NCNotificationListSupplementaryHostingView isUserInteractionEnabled](self, "isUserInteractionEnabled"))
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      if (objc_opt_respondsToSelector())
      {
        [v5 supplementaryHostingViewWasTapped:self];
      }
    }

    MEMORY[0x2821F9730]();
  }
}

- (NCNotificationListSupplementaryHostingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end