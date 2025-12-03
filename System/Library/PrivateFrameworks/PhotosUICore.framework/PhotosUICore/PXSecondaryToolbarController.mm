@interface PXSecondaryToolbarController
- (BOOL)isSecondaryToolbarVisible;
- (PXSecondaryToolbarActionHandler)actionHandler;
- (PXSecondaryToolbarController)init;
- (PXSecondaryToolbarController)initWithContainerView:(id)view styleGuideProvider:(id)provider;
- (PXSecondaryToolbarControllerUpdateDelegate)updateDelegate;
- (UIEdgeInsets)containerViewAdditionalEdgeInsets;
- (UIEdgeInsets)containerViewAdditionalEdgeInsetsWhenVisible:(BOOL)visible;
- (UIEdgeInsets)padding;
- (int64_t)overrideUserInterfaceStyle;
- (void)_invalidateAccessoryViewsLayout;
- (void)_invalidateContentLayout;
- (void)_invalidateLegibilityGradient;
- (void)_replaceAccessoryView:(id)view with:(id)with;
- (void)_updateAccessoryViewsLayout;
- (void)_updateContentLayout;
- (void)_updateLegibilityGradient;
- (void)_updatePositioning;
- (void)_updateSecondaryToolbarLayout;
- (void)_updateViewOpacity;
- (void)invalidatePositioning;
- (void)invalidateSecondaryToolbarLayout;
- (void)invalidateViewOpacity;
- (void)removeFromContainerView;
- (void)setAlpha:(double)alpha;
- (void)setBackdropGroupName:(id)name;
- (void)setContainerView:(id)view;
- (void)setContentScrollViewController:(id)controller;
- (void)setContentView:(id)view;
- (void)setHeight:(double)height;
- (void)setIsAtTop:(BOOL)top;
- (void)setIsShowingGradient:(BOOL)gradient;
- (void)setLeadingAccessoryView:(id)view;
- (void)setLegibilityGradientEnabled:(BOOL)enabled;
- (void)setNeedsUpdate;
- (void)setOverrideUserInterfaceStyle:(int64_t)style;
- (void)setStretched:(BOOL)stretched;
- (void)setTabBarAccessoryPlacement:(id)placement;
- (void)setTrailingAccessoryView:(id)view;
- (void)updateIfNeeded;
@end

@implementation PXSecondaryToolbarController

- (void)setNeedsUpdate
{
  if (!self->_willUpdate)
  {
    containerView = [(PXSecondaryToolbarController *)self containerView];
    [containerView setNeedsLayout];

    updateDelegate = [(PXSecondaryToolbarController *)self updateDelegate];
    [updateDelegate secondaryToolbarControllerSetNeedsUpdate:self];
  }
}

- (PXSecondaryToolbarControllerUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (void)_invalidateContentLayout
{
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentLayout];
}

- (void)invalidateSecondaryToolbarLayout
{
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater setNeedsUpdateOf:sel__updateSecondaryToolbarLayout];
}

- (void)invalidateViewOpacity
{
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewOpacity];
}

- (void)_updateLegibilityGradient
{
  contentScrollViewController = [(PXSecondaryToolbarController *)self contentScrollViewController];
  [contentScrollViewController constrainedVisibleRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [contentScrollViewController contentBounds];
  v38.origin.x = v12;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  v37.origin.x = v5;
  v37.origin.y = v7;
  v37.size.width = v9;
  v37.size.height = v11;
  v16 = CGRectContainsRect(v37, v38);
  scrollView = [contentScrollViewController scrollView];
  [scrollView px_scrollDistanceFromEdge:3];
  v19 = v18;
  WeakRetained = objc_loadWeakRetained(&self->_styleGuideProvider);
  [WeakRetained secondaryToolbarControllerScrollableContentPadding:self];
  v22 = v21;

  if ([(PXSecondaryToolbarController *)self legibilityGradientEnabled]&& !v16 && ([(PXSecondaryToolbarController *)self padding], v19 >= v22 + v23))
  {
    if (![(PXSecondaryToolbarController *)self isShowingGradient])
    {
      [(PXSecondaryToolbarController *)self setIsShowingGradient:1];
      if (!self->_gradientView)
      {
        v26 = objc_alloc(MEMORY[0x1E69DCAE0]);
        [v26 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        PXPhotosUIFoundationBundle();
      }

      v24 = MEMORY[0x1E69DD250];
      v32 = MEMORY[0x1E69E9820];
      v33 = 3221225472;
      v34 = __57__PXSecondaryToolbarController__updateLegibilityGradient__block_invoke;
      v35 = &unk_1E774C648;
      selfCopy = self;
      v25 = &v32;
      goto LABEL_10;
    }
  }

  else if ([(PXSecondaryToolbarController *)self isShowingGradient])
  {
    [(PXSecondaryToolbarController *)self setIsShowingGradient:0];
    v24 = MEMORY[0x1E69DD250];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __57__PXSecondaryToolbarController__updateLegibilityGradient__block_invoke_2;
    v30 = &unk_1E774C648;
    selfCopy2 = self;
    v25 = &v27;
LABEL_10:
    [v24 animateWithDuration:4 delay:v25 options:0 animations:0.2 completion:{0.0, v27, v28, v29, v30, selfCopy2, v32, v33, v34, v35, selfCopy}];
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  }
}

- (void)updateIfNeeded
{
  if (self->_willUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSecondaryToolbarController.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"!_willUpdate"}];
  }

  self->_willUpdate = 1;
  [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  self->_willUpdate = 0;
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater updateIfNeeded];
}

- (void)_updatePositioning
{
  WeakRetained = objc_loadWeakRetained(&self->_styleGuideProvider);
  [WeakRetained secondaryToolbarControllerToolbarSize:self];
  v5 = v4;

  v6 = objc_loadWeakRetained(&self->_styleGuideProvider);
  -[PXSecondaryToolbarController setPlacement:](self, "setPlacement:", [v6 secondaryToolbarControllerToolbarPlacement:self]);

  placement = [(PXSecondaryToolbarController *)self placement];
  if (placement == 4)
  {
    v8 = 0;
    v11 = *off_1E7721FA8;
    v13 = *(off_1E7721FA8 + 1);
    v15 = *(off_1E7721FA8 + 2);
    v17 = *(off_1E7721FA8 + 3);
    v18 = 1;
  }

  else
  {
    v8 = placement == 1;
    v9 = objc_loadWeakRetained(&self->_styleGuideProvider);
    [v9 secondaryToolbarControllerToolbarPadding:self];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = 0;
  }

  [(PXSecondaryToolbarController *)self setIsAtTop:v18];
  [(PXSecondaryToolbarController *)self setStretched:v8];
  [(PXSecondaryToolbarController *)self setHeight:v5];

  [(PXSecondaryToolbarController *)self setPadding:v11, v13, v15, v17];
}

- (void)_updateSecondaryToolbarLayout
{
  containerView = [(PXSecondaryToolbarController *)self containerView];
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  [(PXSecondaryToolbarController *)self padding];
  [containerView safeAreaInsets];
  [containerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  rect = v11;
  [containerView bringSubviewToFront:secondaryToolbar];
  [(PXSecondaryToolbarController *)self height];
  if ([(PXSecondaryToolbarController *)self isAtTop])
  {
    WeakRetained = objc_loadWeakRetained(&self->_styleGuideProvider);
    [WeakRetained secondaryToolbarControllerToolbarContentInsets:self];
  }

  else if ([(PXSecondaryToolbarController *)self placement]== 3)
  {
    tabBarAccessoryPlacement = [(PXSecondaryToolbarController *)self tabBarAccessoryPlacement];
    [tabBarAccessoryPlacement rectInCoordinateSpace:containerView];
  }

  else
  {
    v18.origin.x = v6;
    v18.origin.y = v8;
    v18.size.width = v10;
    v18.size.height = rect;
    CGRectGetMaxY(v18);
    [containerView layoutMargins];
    [(PXSecondaryToolbarController *)self height];
  }

  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4010000000;
  v15[3] = &unk_1A561E057;
  v16 = 0u;
  v17 = 0u;
  PXEdgeInsetsInsetRect();
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

void __61__PXSecondaryToolbarController__updateSecondaryToolbarLayout__block_invoke(uint64_t a1, void *a2, CGRectEdge a3)
{
  v5 = a2;
  if (v5)
  {
    if (*(a1 + 112) == 1)
    {
      PXRectEdgeFlippedHorizontally();
    }

    [v5 sizeThatFits:{*(a1 + 64), *(a1 + 72)}];
    memset(&slice, 0, sizeof(slice));
    memset(&v7, 0, sizeof(v7));
    CGRectDivide(*(*(*(a1 + 32) + 8) + 32), &slice, &v7, v6, a3);
    CGRectGetMidX(slice);
    CGRectGetMidY(*(a1 + 80));
    PXRectWithCenterAndSize();
  }
}

void __61__PXSecondaryToolbarController__updateSecondaryToolbarLayout__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    [a2 frame];
    PXPointSubtract();
  }
}

- (void)_updateContentLayout
{
  [(PXSecondaryToolbarController *)self contentView];
  objc_claimAutoreleasedReturnValue();
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  [secondaryToolbar bounds];

  PXRectGetCenter();
}

- (void)_invalidateAccessoryViewsLayout
{
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater setNeedsUpdateOf:sel__updateAccessoryViewsLayout];
}

- (void)_updateAccessoryViewsLayout
{
  [(PXSecondaryToolbarController *)self containerView];
  [objc_claimAutoreleasedReturnValue() effectiveUserInterfaceLayoutDirection];
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  [secondaryToolbar frame];

  WeakRetained = objc_loadWeakRetained(&self->_styleGuideProvider);
  [WeakRetained secondaryToolbarControllerMaximumAccessoryViewPaddingToContentView:self];

  PXFloatApproximatelyEqualToFloat();
}

void __59__PXSecondaryToolbarController__updateAccessoryViewsLayout__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (*(a1 + 72) == 1)
    {
      PXRectEdgeFlippedHorizontally();
    }

    [v3 frame];
    PXRectEdgeAxis();
  }
}

- (void)_updateViewOpacity
{
  [(PXSecondaryToolbarController *)self alpha];
  v4 = v3;
  toolbarContainerView = [(PXSecondaryToolbarController *)self toolbarContainerView];
  [toolbarContainerView setAlpha:v4];
}

- (UIEdgeInsets)containerViewAdditionalEdgeInsets
{
  isSecondaryToolbarVisible = [(PXSecondaryToolbarController *)self isSecondaryToolbarVisible];

  [(PXSecondaryToolbarController *)self containerViewAdditionalEdgeInsetsWhenVisible:isSecondaryToolbarVisible];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (BOOL)isSecondaryToolbarVisible
{
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  v8 = v4 > 0.0 && ([secondaryToolbar isHidden] & 1) == 0 && (-[PXSecondaryToolbarController contentView](self, "contentView"), v5 = [secondaryToolbar alpha];

  return v8;
}

- (void)invalidatePositioning
{
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater setNeedsUpdateOf:sel__updatePositioning];
}

- (void)_invalidateLegibilityGradient
{
  if (!self->_hasScheduledGradientUpdate)
  {
    self->_hasScheduledGradientUpdate = 1;
    objc_initWeak(&location, self);
    objc_copyWeak(&v2, &location);
    px_perform_on_main_runloop();
  }
}

void __61__PXSecondaryToolbarController__invalidateLegibilityGradient__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleScheduledLegibilityGradientUpdate];
}

- (PXSecondaryToolbarActionHandler)actionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandler);

  return WeakRetained;
}

- (void)setBackdropGroupName:(id)name
{
  nameCopy = name;
  backdropGroupName = self->_backdropGroupName;
  if (backdropGroupName != nameCopy)
  {
    v9 = nameCopy;
    v6 = [(NSString *)backdropGroupName isEqual:nameCopy];
    nameCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSString *)v9 copy];
      v8 = self->_backdropGroupName;
      self->_backdropGroupName = v7;

      [(PXSecondaryToolbarController *)self backdropGroupNameDidChange];
      nameCopy = v9;
    }
  }
}

- (void)setIsShowingGradient:(BOOL)gradient
{
  if (self->_isShowingGradient != gradient)
  {
    self->_isShowingGradient = gradient;
    [(PXSecondaryToolbarController *)self isShowingGradientDidChange];
  }
}

- (void)setLegibilityGradientEnabled:(BOOL)enabled
{
  if (self->_legibilityGradientEnabled != enabled)
  {
    self->_legibilityGradientEnabled = enabled;
    [(PXSecondaryToolbarController *)self _updateLegibilityGradient];
  }
}

- (void)setContentScrollViewController:(id)controller
{
  controllerCopy = controller;
  contentScrollViewController = self->_contentScrollViewController;
  if (contentScrollViewController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXScrollViewController *)contentScrollViewController unregisterObserver:self];
    objc_storeStrong(&self->_contentScrollViewController, controller);
    [(PXScrollViewController *)self->_contentScrollViewController registerObserver:self];
    [(PXSecondaryToolbarController *)self _updateLegibilityGradient];
    controllerCopy = v7;
  }
}

- (void)setHeight:(double)height
{
  if (self->_height != height)
  {
    self->_height = height;
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  }
}

- (void)setStretched:(BOOL)stretched
{
  if (self->_stretched != stretched)
  {
    self->_stretched = stretched;
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  }
}

- (void)setIsAtTop:(BOOL)top
{
  if (self->_isAtTop != top)
  {
    self->_isAtTop = top;
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  }
}

- (UIEdgeInsets)containerViewAdditionalEdgeInsetsWhenVisible:(BOOL)visible
{
  visibleCopy = visible;
  updater = [(PXSecondaryToolbarController *)self updater];
  [updater updateIfNeeded];

  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v8 = *(MEMORY[0x1E69DDCE0] + 24);
  if (![(PXSecondaryToolbarController *)self isAtTop]&& ![(PXSecondaryToolbarController *)self isFloating]&& visibleCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_styleGuideProvider);
    v11 = [WeakRetained secondaryToolbarControllerWantsPaddingAppliedToContainerAdditionalEdgeInsets:self];

    if (v11)
    {
      [(PXSecondaryToolbarController *)self padding];
      v13 = v12;
      v15 = v14;
    }

    else
    {
      v13 = *off_1E7721FA8;
      v15 = *(off_1E7721FA8 + 2);
    }

    [(PXSecondaryToolbarController *)self height];
    v9 = v15 + v13 + v16;
  }

  v17 = v6;
  v18 = v7;
  v19 = v9;
  v20 = v8;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (void)setTabBarAccessoryPlacement:(id)placement
{
  v13 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v6 = placementCopy;
  if (self->_tabBarAccessoryPlacement != placementCopy && ([(PXDisplayRect *)placementCopy isEqual:?]& 1) == 0)
  {
    v7 = PLUIGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      tabBarAccessoryPlacement = self->_tabBarAccessoryPlacement;
      v9 = 138412546;
      v10 = tabBarAccessoryPlacement;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_DEBUG, "[PXSecondaryToolbarController]: updating tab bar accessory placement from %@ to %@", &v9, 0x16u);
    }

    objc_storeStrong(&self->_tabBarAccessoryPlacement, placement);
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  }
}

- (void)setOverrideUserInterfaceStyle:(int64_t)style
{
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  [secondaryToolbar setOverrideUserInterfaceStyle:style];
}

- (int64_t)overrideUserInterfaceStyle
{
  secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
  overrideUserInterfaceStyle = [secondaryToolbar overrideUserInterfaceStyle];

  return overrideUserInterfaceStyle;
}

- (void)setAlpha:(double)alpha
{
  if (self->_alpha != alpha)
  {
    self->_alpha = alpha;
    [(PXSecondaryToolbarController *)self invalidateViewOpacity];
  }
}

- (void)_replaceAccessoryView:(id)view with:(id)with
{
  withCopy = with;
  [view removeFromSuperview];
  if (withCopy)
  {
    toolbarContainerView = [(PXSecondaryToolbarController *)self toolbarContainerView];
    [toolbarContainerView addSubview:withCopy];

    [withCopy setHitTestDirectionalInsets:{-20.0, -20.0, -20.0, -20.0}];
  }

  [(PXSecondaryToolbarController *)self invalidatePositioning];
  [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
  [(PXSecondaryToolbarController *)self invalidateViewOpacity];
}

- (void)setTrailingAccessoryView:(id)view
{
  viewCopy = view;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != viewCopy)
  {
    v10 = viewCopy;
    [(PXSecondaryToolbarController *)self _replaceAccessoryView:trailingAccessoryView with:viewCopy];
    objc_storeStrong(&self->_trailingAccessoryView, view);
    v7 = MEMORY[0x1E69DCAB0];
    capsuleShape = [MEMORY[0x1E69DCF48] capsuleShape];
    v9 = [v7 styleWithShape:capsuleShape];
    [(UIView *)self->_trailingAccessoryView setHoverStyle:v9];

    viewCopy = v10;
  }
}

- (void)setLeadingAccessoryView:(id)view
{
  viewCopy = view;
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView != viewCopy)
  {
    v10 = viewCopy;
    [(PXSecondaryToolbarController *)self _replaceAccessoryView:leadingAccessoryView with:viewCopy];
    objc_storeStrong(&self->_leadingAccessoryView, view);
    v7 = MEMORY[0x1E69DCAB0];
    capsuleShape = [MEMORY[0x1E69DCF48] capsuleShape];
    v9 = [v7 styleWithShape:capsuleShape];
    [(UIView *)self->_leadingAccessoryView setHoverStyle:v9];

    viewCopy = v10;
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    if (self->_contentView)
    {
      secondaryToolbar = [(PXSecondaryToolbarController *)self secondaryToolbar];
      [secondaryToolbar addSubview:self->_contentView];
    }

    [(PXSecondaryToolbarController *)self _invalidateContentLayout];
    [(PXSecondaryToolbarController *)self invalidateSecondaryToolbarLayout];
    viewCopy = v8;
  }
}

- (void)setContainerView:(id)view
{
  viewCopy = view;
  if (self->_containerView != viewCopy)
  {
    v6 = viewCopy;
    [(PXSecondaryToolbarController *)self removeFromContainerView];
    objc_storeStrong(&self->_containerView, view);
    [(UIView *)self->_containerView addSubview:self->_toolbarContainerView];
    [(PXSecondaryToolbarController *)self _updateSecondaryToolbarLayout];
    [(PXSecondaryToolbarController *)self _updateLegibilityGradient];
    viewCopy = v6;
  }
}

- (void)removeFromContainerView
{
  toolbarContainerView = [(PXSecondaryToolbarController *)self toolbarContainerView];
  [toolbarContainerView removeFromSuperview];

  [(UIView *)self->_gradientView removeFromSuperview];
  gradientView = self->_gradientView;
  self->_gradientView = 0;
}

- (PXSecondaryToolbarController)initWithContainerView:(id)view styleGuideProvider:(id)provider
{
  viewCopy = view;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = PXSecondaryToolbarController;
  v9 = [(PXSecondaryToolbarController *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_containerView, view);
    objc_storeStrong(&v10->_legibilityContainerView, view);
    v11 = objc_alloc_init(PXHitTestTransparentView);
    toolbarContainerView = v10->_toolbarContainerView;
    v10->_toolbarContainerView = &v11->super;

    [(UIView *)v10->_containerView addSubview:v10->_toolbarContainerView];
    objc_storeWeak(&v10->_styleGuideProvider, providerCopy);
    v10->_alpha = 1.0;
    v13 = [[off_1E7721940 alloc] initWithTarget:v10 needsUpdateSelector:sel_setNeedsUpdate];
    updater = v10->_updater;
    v10->_updater = v13;

    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updatePositioning needsUpdate:1];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateSecondaryToolbarLayout needsUpdate:1];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateContentLayout needsUpdate:1];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateAccessoryViewsLayout needsUpdate:1];
    [(PXUpdater *)v10->_updater addUpdateSelector:sel__updateViewOpacity needsUpdate:1];
    v15 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 10.0, 10.0}];
    secondaryToolbar = v10->_secondaryToolbar;
    v10->_secondaryToolbar = v15;

    [(UIView *)v10->_toolbarContainerView addSubview:v10->_secondaryToolbar];
  }

  return v10;
}

- (PXSecondaryToolbarController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSecondaryToolbarController.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXSecondaryToolbarController init]"}];

  abort();
}

@end