@interface SAUIElementViewController
- (CGAffineTransform)leadingViewTransform;
- (CGAffineTransform)minimalViewTransform;
- (CGAffineTransform)trailingViewTransform;
- (CGSize)leadingViewScale;
- (CGSize)maximumSizeOfLeadingViewForElementView:(id)view;
- (CGSize)maximumSizeOfMinimalViewForElementView:(id)view;
- (CGSize)maximumSizeOfTrailingViewForElementView:(id)view;
- (CGSize)minimalViewScale;
- (CGSize)trailingViewScale;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (SAUIElementViewController)initWithElementViewProvider:(id)provider;
- (SAUIElementViewProviding)elementViewProvider;
- (double)customContentAlpha;
- (id)_contentView;
- (id)_effectiveProvidedMinimalView;
- (id)_elementView;
- (id)beginRequiringSnapshotForReason:(id)reason;
- (int64_t)handleElementTap:(id)tap;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value;
- (unint64_t)layoutAxis;
- (void)_insertContentSnapshotView;
- (void)_setSquishProgress:(double)progress additionalScale:(CGSize)scale additionalTransform:(CGAffineTransform *)transform forProvidedView:(id)view transformView:(id)transformView isLeading:(BOOL)leading isMinimal:(BOOL)minimal;
- (void)_synchronizeBlurProgress:(double)progress alpha:(double)alpha squishProgress:(double)squishProgress additionalTransform:(CGAffineTransform *)transform isLeading:(BOOL)leading isMinimal:(BOOL)minimal ofTransformView:(id)view providedView:(id)self0;
- (void)elementView:(id)view didConfigureLeadingTransformView:(id)transformView;
- (void)elementView:(id)view didConfigureMinimalTransformView:(id)transformView;
- (void)elementView:(id)view didConfigureTrailingTransformView:(id)transformView;
- (void)elementView:(id)view didLayoutResizedLeadingTransformView:(id)transformView;
- (void)elementView:(id)view didLayoutResizedMinimalTransformView:(id)transformView;
- (void)elementView:(id)view didLayoutResizedTrailingTransformView:(id)transformView;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier;
- (void)setCustomContentAlpha:(double)alpha;
- (void)setCustomContentBlurProgress:(double)progress;
- (void)setLayoutAxis:(unint64_t)axis;
- (void)setLeadingViewAlpha:(double)alpha;
- (void)setLeadingViewBlurProgress:(double)progress;
- (void)setLeadingViewScale:(CGSize)scale;
- (void)setLeadingViewSquishProgress:(double)progress;
- (void)setLeadingViewTransform:(CGAffineTransform *)transform;
- (void)setMinimalViewAlpha:(double)alpha;
- (void)setMinimalViewBlurProgress:(double)progress;
- (void)setMinimalViewScale:(CGSize)scale;
- (void)setMinimalViewSquishProgress:(double)progress;
- (void)setMinimalViewTransform:(CGAffineTransform *)transform;
- (void)setSnapshotViewAlpha:(double)alpha;
- (void)setSnapshotViewBlurProgress:(double)progress;
- (void)setTrailingViewAlpha:(double)alpha;
- (void)setTrailingViewBlurProgress:(double)progress;
- (void)setTrailingViewScale:(CGSize)scale;
- (void)setTrailingViewSquishProgress:(double)progress;
- (void)setTrailingViewTransform:(CGAffineTransform *)transform;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation SAUIElementViewController

- (SAUIElementViewProviding)elementViewProvider
{
  v6.receiver = self;
  v6.super_class = SAUIElementViewController;
  elementViewProvider = [(SAUILayoutSpecifyingElementViewController *)&v6 elementViewProvider];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = elementViewProvider;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (CGAffineTransform)trailingViewTransform
{
  v3 = *&self[28].a;
  *&retstr->a = *&self[27].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[28].c;
  return self;
}

- (CGAffineTransform)minimalViewTransform
{
  v3 = *&self[29].a;
  *&retstr->a = *&self[28].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[29].c;
  return self;
}

- (double)customContentAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_elementView);
  contentView = [WeakRetained contentView];
  [contentView alpha];
  v5 = v4;

  return v5;
}

- (CGAffineTransform)leadingViewTransform
{
  v3 = *&self[27].a;
  *&retstr->a = *&self[26].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[27].c;
  return self;
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SAUIElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v5 viewWillLayoutSubviews];
  view = [(SAUIElementViewController *)self view];
  [view bounds];

  WeakRetained = objc_loadWeakRetained(&self->_elementView);
  UIRectGetCenter();
  [WeakRetained setCenter:?];
  BSRectWithSize();
  [WeakRetained setBounds:?];
}

- (id)_contentView
{
  _elementView = [(SAUIElementViewController *)self _elementView];
  contentView = [_elementView contentView];

  return contentView;
}

- (id)_elementView
{
  WeakRetained = objc_loadWeakRetained(&self->_elementView);
  if (!WeakRetained)
  {
    v4 = [SAUIElementView alloc];
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    WeakRetained = [(SAUIElementView *)v4 initWithElementViewProvider:elementViewProvider];

    objc_storeWeak(&self->_elementView, WeakRetained);
    [(SAUIElementView *)WeakRetained setDelegate:self];
  }

  return WeakRetained;
}

- (id)_effectiveProvidedMinimalView
{
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  minimalView = [elementViewProvider minimalView];
  v4 = minimalView;
  if (minimalView)
  {
    leadingView = minimalView;
  }

  else
  {
    leadingView = [elementViewProvider leadingView];
  }

  v6 = leadingView;

  return v6;
}

- (SAUIElementViewController)initWithElementViewProvider:(id)provider
{
  v13.receiver = self;
  v13.super_class = SAUIElementViewController;
  result = [(SAUILayoutSpecifyingElementViewController *)&v13 initWithElementViewProvider:provider];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    result->_leadingViewScale = _Q0;
    result->_trailingViewScale = _Q0;
    result->_minimalViewScale = _Q0;
    v9 = MEMORY[0x277CBF2C0];
    v10 = *MEMORY[0x277CBF2C0];
    v11 = *(MEMORY[0x277CBF2C0] + 16);
    *&result->_leadingViewTransform.a = *MEMORY[0x277CBF2C0];
    *&result->_leadingViewTransform.c = v11;
    v12 = *(v9 + 32);
    *&result->_leadingViewTransform.tx = v12;
    *&result->_trailingViewTransform.a = v10;
    *&result->_trailingViewTransform.c = v11;
    *&result->_trailingViewTransform.tx = v12;
    *&result->_minimalViewTransform.c = v11;
    *&result->_minimalViewTransform.tx = v12;
    *&result->_minimalViewTransform.a = v10;
  }

  return result;
}

- (void)viewDidLoad
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SAUIElementViewController.m" lineNumber:87 description:@"Element view not added to self view"];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v52 = *MEMORY[0x277D85DE8];
  coordinatorCopy = coordinator;
  _previousLayoutMode = [(SAUILayoutSpecifyingElementViewController *)self _previousLayoutMode];
  layoutMode = [(SAUILayoutSpecifyingElementViewController *)self layoutMode];
  v10 = layoutMode;
  isPerformingSystemApertureInertTransition = 0;
  v12 = layoutMode == 3 && _previousLayoutMode < 3;
  v13 = layoutMode < 3 && _previousLayoutMode == 3;
  if (_previousLayoutMode == 3 && layoutMode == 3)
  {
    if (objc_opt_respondsToSelector())
    {
      isPerformingSystemApertureInertTransition = [coordinatorCopy isPerformingSystemApertureInertTransition];
    }

    else
    {
      isPerformingSystemApertureInertTransition = 0;
    }
  }

  v14 = (v12 || v13) | isPerformingSystemApertureInertTransition;
  v15 = [(SAUILayoutSpecifyingElementViewController *)self isTrackingTransitionWithReason:@"com.apple.SystemApertureUI.SAUIElementViewController.expansionTransition"];
  v38 = [(SAUILayoutSpecifyingElementViewController *)self isTrackingTransitionWithReason:@"com.apple.SystemApertureUI.SAUIElementViewController.contractionTransition"];
  v39 = v15;
  v16 = v15 || v38;
  v40 = v14;
  v17 = v14 | (v15 || v38 || v10 != 3);
  if (v14 & 1 | (v15 || v38 || v10 != 3) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [coordinatorCopy setPerformingSystemApertureCustomContentTransition:1];
  }

  v18 = MEMORY[0x277D6B8A8];
  v19 = *MEMORY[0x277D6B8A8];
  if (os_log_type_enabled(*MEMORY[0x277D6B8A8], OS_LOG_TYPE_DEBUG))
  {
    v31 = v19;
    v53.width = width;
    v53.height = height;
    v37 = NSStringFromCGSize(v53);
    v32 = SAUIStringFromElementViewLayoutMode(_previousLayoutMode);
    v33 = SAUIStringFromElementViewLayoutMode(v10);
    *location = 138543874;
    *&location[4] = v37;
    v48 = 2114;
    v49 = v32;
    v50 = 2114;
    v51 = v33;
    _os_log_debug_impl(&dword_26C482000, v31, OS_LOG_TYPE_DEBUG, "View will transition to size: %{public}@, layoutMode: %{public}@ -> %{public}@", location, 0x20u);
  }

  v20 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
  {
    v34 = v20;
    v37 = MEMORY[0x26D6A1CB0](v40 & 1);
    v35 = MEMORY[0x26D6A1CB0](v16 & 1);
    v36 = MEMORY[0x26D6A1CB0](v17 & 1);
    *location = 138543874;
    *&location[4] = v37;
    v48 = 2114;
    v49 = v35;
    v50 = 2114;
    v51 = v36;
    _os_log_debug_impl(&dword_26C482000, v34, OS_LOG_TYPE_DEBUG, "View will transition isTransitioning:%{public}@ isInActiveTransition:%{public}@ clientShouldLayoutImmediately:%{public}@", location, 0x20u);
  }

  v21 = [coordinatorCopy valueForKey:{@"__mainContext", v37}];
  v22 = [v21 valueForKey:@"__animator"];
  v23 = [v22 valueForKey:@"_fluidBehaviorSettings"];

  v24 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
  {
    [SAUIElementViewController viewWillTransitionToSize:v23 withTransitionCoordinator:v24];
  }

  v46.receiver = self;
  v46.super_class = SAUIElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v46 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  if (v17)
  {
    if (v16)
    {
      v25 = v39;
      if (v10 >= 3)
      {
        v25 = 0;
      }

      if (v25)
      {
LABEL_30:
        uUID = [MEMORY[0x277CCAD78] UUID];
        v28 = @"com.apple.SystemApertureUI.SAUIElementViewController.expansionTransition";
        if ((v10 < 3) | isPerformingSystemApertureInertTransition & 1)
        {
          v28 = @"com.apple.SystemApertureUI.SAUIElementViewController.contractionTransition";
        }

        v29 = v28;
        [(SAUILayoutSpecifyingElementViewController *)self beginTrackingTransitionWithUniqueIdentifier:uUID reason:v29];
        objc_initWeak(location, self);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
        v44[3] = &unk_279D32858;
        objc_copyWeak(&v45, location);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3;
        v41[3] = &unk_279D32880;
        objc_copyWeak(&v43, location);
        v30 = uUID;
        v42 = v30;
        [coordinatorCopy animateAlongsideTransition:v44 completion:v41];

        objc_destroyWeak(&v43);
        objc_destroyWeak(&v45);
        objc_destroyWeak(location);

        goto LABEL_33;
      }

      v26 = v38 && v10 > 2;
    }

    else
    {
      v26 = 0;
    }

    if ((v40 & ~v16 & 1) == 0 && !v26)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_33:
}

void __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _containerView];
    v4 = MEMORY[0x277D75D18];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
    v6[3] = &unk_279D32628;
    v7 = v3;
    v5 = v3;
    [v4 performWithoutAnimation:v6];
  }
}

uint64_t __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeAllRetargetableAnimations:1];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

void __80__SAUIElementViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained endTrackingTransitionWithUniqueIdentifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (int64_t)handleElementTap:(id)tap
{
  tapCopy = tap;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SAUIElementViewController_handleElementTap___block_invoke;
  v17[3] = &unk_279D328A8;
  v17[4] = self;
  v18 = tapCopy;
  v6 = MEMORY[0x26D6A2080](v17);
  if (-[SAUILayoutSpecifyingElementViewController layoutMode](self, "layoutMode") == 1 && ([elementViewProvider minimalView], v7 = objc_claimAutoreleasedReturnValue(), v8 = (v6)[2](v6, v7), v7, (v8 & 1) != 0))
  {
    v9 = 3;
  }

  else
  {
    leadingView = [elementViewProvider leadingView];
    v11 = (v6)[2](v6, leadingView);

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      trailingView = [elementViewProvider trailingView];
      v13 = (v6)[2](v6, trailingView);

      if (!v13)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v9 = 2;
    }
  }

  if ([elementViewProvider handleElementViewEvent:v9])
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

LABEL_12:

  if (!v14)
  {
LABEL_13:
    v16.receiver = self;
    v16.super_class = SAUIElementViewController;
    v14 = [(SAUILayoutSpecifyingElementViewController *)&v16 handleElementTap:tapCopy];
  }

  return v14;
}

uint64_t __46__SAUIElementViewController_handleElementTap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 alpha];
  if (v4 <= 0.0)
  {
    v7 = 0;
  }

  else
  {
    v5 = [v3 superview];
    v6 = [*(a1 + 32) view];
    if (v5 == v6)
    {
      [*(a1 + 40) locationInView:v3];
      v7 = [v3 pointInside:0 withEvent:?];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)layoutAxis
{
  if (![(SAUIElementViewController *)self isViewLoaded])
  {
    return 1;
  }

  _elementView = [(SAUIElementViewController *)self _elementView];
  layoutAxis = [_elementView layoutAxis];

  return layoutAxis;
}

- (void)setLayoutAxis:(unint64_t)axis
{
  [(SAUIElementViewController *)self loadViewIfNeeded];
  _elementView = [(SAUIElementViewController *)self _elementView];
  [_elementView setLayoutAxis:axis];
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  v32 = *MEMORY[0x277D85DE8];
  overriderCopy = overrider;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  v25.receiver = self;
  v25.super_class = SAUIElementViewController;
  v8 = [(SAUILayoutSpecifyingElementViewController *)&v25 maximumSupportedLayoutModeForTargetWithOverrider:overriderCopy isDefaultValue:value];

  v9 = *value;
  if (objc_opt_respondsToSelector())
  {
    leadingView = [elementViewProvider leadingView];
    v11 = leadingView != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (objc_opt_respondsToSelector())
  {
    minimalView = [elementViewProvider minimalView];
    v12 = minimalView != 0 || v11;
  }

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    trailingView = [elementViewProvider trailingView];
    if (trailingView)
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 1;
  }

  if (v12)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v9 || v8 > 2)
  {
    if (v9)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }
  }

  else
  {
    element = [elementViewProvider element];
    if (v8 >= v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    if (v8 <= v16)
    {
      v18 = v8;
    }

    else
    {
      v19 = SAUILogElementViewControlling;
      if (os_log_type_enabled(SAUILogElementViewControlling, OS_LOG_TYPE_ERROR))
      {
        v20 = v19;
        v21 = MEMORY[0x26D6A1D80](element);
        v22 = SAUIStringFromElementViewLayoutMode(v8);
        v23 = SAUIStringFromElementViewLayoutMode(v16);
        *buf = 138543874;
        v27 = v21;
        v28 = 2114;
        v29 = v22;
        v30 = 2114;
        v31 = v23;
        _os_log_error_impl(&dword_26C482000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Client claims a max supported layout mode of '%{public}@', but doesn't implement the required properties – restricting to '%{public}@'", buf, 0x20u);
      }
    }
  }

  return v18;
}

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)mode suggestedOutsets:(NSDirectionalEdgeInsets)outsets maximumOutsets:(NSDirectionalEdgeInsets)maximumOutsets forTargetWithOverrider:(id)overrider isDefaultValue:(BOOL *)value
{
  trailing = maximumOutsets.trailing;
  bottom = maximumOutsets.bottom;
  leading = maximumOutsets.leading;
  top = maximumOutsets.top;
  v12 = outsets.trailing;
  v13 = outsets.bottom;
  v14 = outsets.leading;
  v15 = outsets.top;
  overriderCopy = overrider;
  if (mode < 1)
  {
    v15 = *MEMORY[0x277D75060];
    v14 = *(MEMORY[0x277D75060] + 8);
    v13 = *(MEMORY[0x277D75060] + 16);
    v12 = *(MEMORY[0x277D75060] + 24);
  }

  else
  {
    [(SAUIElementViewController *)self loadViewIfNeeded];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    if (SAUIDirectionEdgeInsetsAnyComponentIsZero())
    {
      [WeakRetained suggestedOutsetsForLayoutMode:mode maximumOutsets:{top, leading, bottom, trailing}];
      v15 = SAUIDirectionEdgeInsetsComponentWiseMinimum(v15, v14, v13, v12, v21);
      v14 = v22;
      v13 = v23;
      v12 = v24;
    }

    if (objc_opt_respondsToSelector())
    {
      v33.receiver = self;
      v33.super_class = SAUIElementViewController;
      [(SAUILayoutSpecifyingElementViewController *)&v33 preferredEdgeOutsetsForLayoutMode:mode suggestedOutsets:overriderCopy maximumOutsets:value forTargetWithOverrider:v15 isDefaultValue:v14, v13, v12, top, leading, bottom, trailing];
      v15 = v25;
      v14 = v26;
      v13 = v27;
      v12 = v28;
    }
  }

  v29 = v15;
  v30 = v14;
  v31 = v13;
  v32 = v12;
  result.trailing = v32;
  result.bottom = v31;
  result.leading = v30;
  result.top = v29;
  return result;
}

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)specifier
{
  specifierCopy = specifier;
  _elementView = [(SAUIElementViewController *)self _elementView];
  [_elementView setNeedsLayout];

  v6.receiver = self;
  v6.super_class = SAUIElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v6 preferredComponentViewSizeDidInvalidateForLayoutSpecifier:specifierCopy];
}

- (CGSize)maximumSizeOfMinimalViewForElementView:(id)view
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  layoutHost = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    elementViewProvider2 = [(SAUIElementViewController *)self elementViewProvider];
    [layoutHost maximumAvailableSizeForProvidedMinimalView:leadingView fromViewProvider:elementViewProvider2];
    v8 = v12;
    v7 = v13;
  }

  if (v8 == v4 && v7 == v5)
  {
    [(SAUILayoutSpecifyingElementViewController *)self _obstructedRegionSize];
    v7 = v15;
    v8 = 1.79769313e308;
  }

  v16 = v8;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)maximumSizeOfLeadingViewForElementView:(id)view
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  layoutHost = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    elementViewProvider2 = [(SAUIElementViewController *)self elementViewProvider];
    [layoutHost maximumAvailableSizeForProvidedLeadingView:leadingView fromViewProvider:elementViewProvider2];
    v8 = v12;
    v7 = v13;
  }

  if (v8 == v4 && v7 == v5)
  {
    [(SAUILayoutSpecifyingElementViewController *)self _obstructedRegionSize];
    v7 = v15;
    v8 = 1.79769313e308;
  }

  v16 = v8;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)maximumSizeOfTrailingViewForElementView:(id)view
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  layoutHost = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    elementViewProvider2 = [(SAUIElementViewController *)self elementViewProvider];
    [layoutHost maximumAvailableSizeForProvidedTrailingView:leadingView fromViewProvider:elementViewProvider2];
    v8 = v12;
    v7 = v13;
  }

  if (v8 == v4 && v7 == v5)
  {
    [(SAUILayoutSpecifyingElementViewController *)self _obstructedRegionSize];
    v7 = v15;
    v8 = 1.79769313e308;
  }

  v16 = v8;
  v17 = v7;
  result.height = v17;
  result.width = v16;
  return result;
}

- (void)elementView:(id)view didConfigureLeadingTransformView:(id)transformView
{
  leadingViewBlurProgress = self->_leadingViewBlurProgress;
  leadingViewAlpha = self->_leadingViewAlpha;
  leadingViewSquishProgress = self->_leadingViewSquishProgress;
  p_leadingViewTransform = &self->_leadingViewTransform;
  transformViewCopy = transformView;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  leadingView = [elementViewProvider leadingView];
  v12 = *&p_leadingViewTransform->c;
  v13[0] = *&p_leadingViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_leadingViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v13 alpha:1 squishProgress:0 additionalTransform:transformViewCopy isLeading:leadingView isMinimal:leadingViewBlurProgress ofTransformView:leadingViewAlpha providedView:leadingViewSquishProgress];
}

- (void)elementView:(id)view didConfigureTrailingTransformView:(id)transformView
{
  trailingViewBlurProgress = self->_trailingViewBlurProgress;
  trailingViewAlpha = self->_trailingViewAlpha;
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  p_trailingViewTransform = &self->_trailingViewTransform;
  transformViewCopy = transformView;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  trailingView = [elementViewProvider trailingView];
  v12 = *&p_trailingViewTransform->c;
  v13[0] = *&p_trailingViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_trailingViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v13 alpha:0 squishProgress:0 additionalTransform:transformViewCopy isLeading:trailingView isMinimal:trailingViewBlurProgress ofTransformView:trailingViewAlpha providedView:trailingViewSquishProgress];
}

- (void)elementView:(id)view didConfigureMinimalTransformView:(id)transformView
{
  minimalViewBlurProgress = self->_minimalViewBlurProgress;
  minimalViewAlpha = self->_minimalViewAlpha;
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  p_minimalViewTransform = &self->_minimalViewTransform;
  transformViewCopy = transformView;
  _effectiveProvidedMinimalView = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
  v11 = *&p_minimalViewTransform->c;
  v12[0] = *&p_minimalViewTransform->a;
  v12[1] = v11;
  v12[2] = *&p_minimalViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v12 alpha:1 squishProgress:1 additionalTransform:transformViewCopy isLeading:_effectiveProvidedMinimalView isMinimal:minimalViewBlurProgress ofTransformView:minimalViewAlpha providedView:minimalViewSquishProgress];
}

- (void)elementView:(id)view didLayoutResizedLeadingTransformView:(id)transformView
{
  leadingViewSquishProgress = self->_leadingViewSquishProgress;
  p_leadingViewScale = &self->_leadingViewScale;
  p_leadingViewTransform = &self->_leadingViewTransform;
  transformViewCopy = transformView;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  leadingView = [elementViewProvider leadingView];
  width = p_leadingViewScale->width;
  height = p_leadingViewScale->height;
  v13 = *&p_leadingViewTransform->c;
  v14[0] = *&p_leadingViewTransform->a;
  v14[1] = v13;
  v14[2] = *&p_leadingViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:leadingView additionalTransform:transformViewCopy forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
}

- (void)elementView:(id)view didLayoutResizedTrailingTransformView:(id)transformView
{
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  p_trailingViewScale = &self->_trailingViewScale;
  p_trailingViewTransform = &self->_trailingViewTransform;
  transformViewCopy = transformView;
  elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
  trailingView = [elementViewProvider trailingView];
  width = p_trailingViewScale->width;
  height = p_trailingViewScale->height;
  v13 = *&p_trailingViewTransform->c;
  v14[0] = *&p_trailingViewTransform->a;
  v14[1] = v13;
  v14[2] = *&p_trailingViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:trailingView additionalTransform:transformViewCopy forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
}

- (void)elementView:(id)view didLayoutResizedMinimalTransformView:(id)transformView
{
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  p_minimalViewScale = &self->_minimalViewScale;
  p_minimalViewTransform = &self->_minimalViewTransform;
  transformViewCopy = transformView;
  _effectiveProvidedMinimalView = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
  width = p_minimalViewScale->width;
  height = p_minimalViewScale->height;
  v12 = *&p_minimalViewTransform->c;
  v13[0] = *&p_minimalViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_minimalViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v13 additionalScale:_effectiveProvidedMinimalView additionalTransform:transformViewCopy forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
}

- (id)beginRequiringSnapshotForReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_snapshotViewAssertion);
  snapshotReason = [WeakRetained snapshotReason];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    [WeakRetained invalidateWithReason:@"different reason requested"];
    [(SAUIElementViewController *)self _insertContentSnapshotView];
    v8 = self->_snapshotView;
    v9 = [_SAUIElementViewControllerSnapshotAssertion alloc];
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    element = [elementViewProvider element];
    v12 = [(_SAUIElementViewControllerSnapshotAssertion *)v9 initWithElement:element snapshotReason:reasonCopy];

    objc_storeWeak(&self->_snapshotViewAssertion, v12);
    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__SAUIElementViewController_beginRequiringSnapshotForReason___block_invoke;
    v15[3] = &unk_279D328D0;
    v13 = v8;
    v16 = v13;
    objc_copyWeak(&v17, &location);
    [(SAAssertion *)v12 addInvalidationBlock:v15];
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
    WeakRetained = v12;
  }

  return WeakRetained;
}

uint64_t __61__SAUIElementViewController_beginRequiringSnapshotForReason___block_invoke(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (BSEqualObjects())
    {
      v3 = v5[140];
      v5[140] = 0;
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)setLeadingViewBlurProgress:(double)progress
{
  if (self->_leadingViewBlurProgress != progress)
  {
    self->_leadingViewBlurProgress = progress;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    leadingTransformView = [WeakRetained leadingTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:leadingTransformView forView:progress];
  }
}

- (void)setLeadingViewAlpha:(double)alpha
{
  if (self->_leadingViewAlpha != alpha)
  {
    self->_leadingViewAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    leadingTransformView = [WeakRetained leadingTransformView];
    [leadingTransformView setAlpha:self->_leadingViewAlpha];
  }
}

- (void)setLeadingViewSquishProgress:(double)progress
{
  if (self->_leadingViewSquishProgress != progress)
  {
    self->_leadingViewSquishProgress = progress;
    p_leadingViewScale = &self->_leadingViewScale;
    p_leadingViewTransform = &self->_leadingViewTransform;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    leadingTransformView = [WeakRetained leadingTransformView];
    width = p_leadingViewScale->width;
    height = p_leadingViewScale->height;
    v13 = *&p_leadingViewTransform->c;
    v14[0] = *&p_leadingViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:leadingView additionalTransform:leadingTransformView forProvidedView:1 transformView:0 isLeading:progress isMinimal:width, height];
  }
}

- (void)setLeadingViewScale:(CGSize)scale
{
  p_leadingViewScale = &self->_leadingViewScale;
  if (scale.width != self->_leadingViewScale.width || scale.height != self->_leadingViewScale.height)
  {
    p_leadingViewScale->width = scale.width;
    self->_leadingViewScale.height = scale.height;
    leadingViewSquishProgress = self->_leadingViewSquishProgress;
    p_leadingViewTransform = &self->_leadingViewTransform;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    leadingTransformView = [WeakRetained leadingTransformView];
    width = p_leadingViewScale->width;
    height = p_leadingViewScale->height;
    v14 = *&p_leadingViewTransform->c;
    v15[0] = *&p_leadingViewTransform->a;
    v15[1] = v14;
    v15[2] = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v15 additionalScale:leadingView additionalTransform:leadingTransformView forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setLeadingViewTransform:(CGAffineTransform *)transform
{
  p_leadingViewTransform = &self->_leadingViewTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_leadingViewTransform.c;
  *&v18.a = *&self->_leadingViewTransform.a;
  *&v18.c = v7;
  *&v18.tx = *&self->_leadingViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v18))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_leadingViewTransform->c = *&transform->c;
    *&p_leadingViewTransform->tx = v9;
    *&p_leadingViewTransform->a = v8;
    leadingViewSquishProgress = self->_leadingViewSquishProgress;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    leadingView = [elementViewProvider leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    leadingTransformView = [WeakRetained leadingTransformView];
    width = self->_leadingViewScale.width;
    height = self->_leadingViewScale.height;
    v17 = *&p_leadingViewTransform->c;
    *&t1.a = *&p_leadingViewTransform->a;
    *&t1.c = v17;
    *&t1.tx = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:leadingView additionalTransform:leadingTransformView forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setTrailingViewBlurProgress:(double)progress
{
  if (self->_trailingViewBlurProgress != progress)
  {
    self->_trailingViewBlurProgress = progress;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    trailingTransformView = [WeakRetained trailingTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:trailingTransformView forView:progress];
  }
}

- (void)setTrailingViewAlpha:(double)alpha
{
  if (self->_trailingViewAlpha != alpha)
  {
    self->_trailingViewAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    trailingTransformView = [WeakRetained trailingTransformView];
    [trailingTransformView setAlpha:self->_trailingViewAlpha];
  }
}

- (void)setTrailingViewSquishProgress:(double)progress
{
  if (self->_trailingViewSquishProgress != progress)
  {
    self->_trailingViewSquishProgress = progress;
    p_trailingViewScale = &self->_trailingViewScale;
    p_trailingViewTransform = &self->_trailingViewTransform;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    trailingView = [elementViewProvider trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    trailingTransformView = [WeakRetained trailingTransformView];
    width = p_trailingViewScale->width;
    height = p_trailingViewScale->height;
    v13 = *&p_trailingViewTransform->c;
    v14[0] = *&p_trailingViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:trailingView additionalTransform:trailingTransformView forProvidedView:0 transformView:0 isLeading:progress isMinimal:width, height];
  }
}

- (void)setTrailingViewScale:(CGSize)scale
{
  p_trailingViewScale = &self->_trailingViewScale;
  if (scale.width != self->_trailingViewScale.width || scale.height != self->_trailingViewScale.height)
  {
    p_trailingViewScale->width = scale.width;
    self->_trailingViewScale.height = scale.height;
    trailingViewSquishProgress = self->_trailingViewSquishProgress;
    p_trailingViewTransform = &self->_trailingViewTransform;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    trailingView = [elementViewProvider trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    trailingTransformView = [WeakRetained trailingTransformView];
    width = p_trailingViewScale->width;
    height = p_trailingViewScale->height;
    v14 = *&p_trailingViewTransform->c;
    v15[0] = *&p_trailingViewTransform->a;
    v15[1] = v14;
    v15[2] = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v15 additionalScale:trailingView additionalTransform:trailingTransformView forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setTrailingViewTransform:(CGAffineTransform *)transform
{
  p_trailingViewTransform = &self->_trailingViewTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_trailingViewTransform.c;
  *&v18.a = *&self->_trailingViewTransform.a;
  *&v18.c = v7;
  *&v18.tx = *&self->_trailingViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v18))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_trailingViewTransform->c = *&transform->c;
    *&p_trailingViewTransform->tx = v9;
    *&p_trailingViewTransform->a = v8;
    trailingViewSquishProgress = self->_trailingViewSquishProgress;
    elementViewProvider = [(SAUIElementViewController *)self elementViewProvider];
    trailingView = [elementViewProvider trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    trailingTransformView = [WeakRetained trailingTransformView];
    width = self->_trailingViewScale.width;
    height = self->_trailingViewScale.height;
    v17 = *&p_trailingViewTransform->c;
    *&t1.a = *&p_trailingViewTransform->a;
    *&t1.c = v17;
    *&t1.tx = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:trailingView additionalTransform:trailingTransformView forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setMinimalViewBlurProgress:(double)progress
{
  if (self->_minimalViewBlurProgress != progress)
  {
    self->_minimalViewBlurProgress = progress;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    minimalTransformView = [WeakRetained minimalTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:minimalTransformView forView:progress];
  }
}

- (void)setMinimalViewAlpha:(double)alpha
{
  if (self->_minimalViewAlpha != alpha)
  {
    self->_minimalViewAlpha = alpha;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    minimalTransformView = [WeakRetained minimalTransformView];
    [minimalTransformView setAlpha:self->_minimalViewAlpha];
  }
}

- (void)setMinimalViewSquishProgress:(double)progress
{
  if (self->_minimalViewSquishProgress != progress)
  {
    self->_minimalViewSquishProgress = progress;
    p_minimalViewScale = &self->_minimalViewScale;
    p_minimalViewTransform = &self->_minimalViewTransform;
    _effectiveProvidedMinimalView = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    minimalTransformView = [WeakRetained minimalTransformView];
    width = p_minimalViewScale->width;
    height = p_minimalViewScale->height;
    v12 = *&p_minimalViewTransform->c;
    v13[0] = *&p_minimalViewTransform->a;
    v13[1] = v12;
    v13[2] = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v13 additionalScale:_effectiveProvidedMinimalView additionalTransform:minimalTransformView forProvidedView:1 transformView:1 isLeading:progress isMinimal:width, height];
  }
}

- (void)setMinimalViewScale:(CGSize)scale
{
  p_minimalViewScale = &self->_minimalViewScale;
  if (scale.width != self->_minimalViewScale.width || scale.height != self->_minimalViewScale.height)
  {
    p_minimalViewScale->width = scale.width;
    self->_minimalViewScale.height = scale.height;
    minimalViewSquishProgress = self->_minimalViewSquishProgress;
    p_minimalViewTransform = &self->_minimalViewTransform;
    _effectiveProvidedMinimalView = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    minimalTransformView = [WeakRetained minimalTransformView];
    width = p_minimalViewScale->width;
    height = p_minimalViewScale->height;
    v13 = *&p_minimalViewTransform->c;
    v14[0] = *&p_minimalViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:_effectiveProvidedMinimalView additionalTransform:minimalTransformView forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
  }
}

- (void)setMinimalViewTransform:(CGAffineTransform *)transform
{
  p_minimalViewTransform = &self->_minimalViewTransform;
  v6 = *&transform->c;
  *&t1.a = *&transform->a;
  *&t1.c = v6;
  *&t1.tx = *&transform->tx;
  v7 = *&self->_minimalViewTransform.c;
  *&v17.a = *&self->_minimalViewTransform.a;
  *&v17.c = v7;
  *&v17.tx = *&self->_minimalViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v17))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_minimalViewTransform->c = *&transform->c;
    *&p_minimalViewTransform->tx = v9;
    *&p_minimalViewTransform->a = v8;
    minimalViewSquishProgress = self->_minimalViewSquishProgress;
    _effectiveProvidedMinimalView = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    minimalTransformView = [WeakRetained minimalTransformView];
    width = self->_minimalViewScale.width;
    height = self->_minimalViewScale.height;
    v16 = *&p_minimalViewTransform->c;
    *&t1.a = *&p_minimalViewTransform->a;
    *&t1.c = v16;
    *&t1.tx = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:_effectiveProvidedMinimalView additionalTransform:minimalTransformView forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
  }
}

- (void)setCustomContentBlurProgress:(double)progress
{
  if (self->_customContentBlurProgress != progress)
  {
    self->_customContentBlurProgress = progress;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    contentView = [WeakRetained contentView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:contentView forView:progress];
  }
}

- (void)setCustomContentAlpha:(double)alpha
{
  [(SAUIElementViewController *)self customContentAlpha];
  if (v5 != alpha)
  {
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    contentView = [WeakRetained contentView];
    [contentView setAlpha:alpha];
  }
}

- (void)setSnapshotViewBlurProgress:(double)progress
{
  if (self->_snapshotViewBlurProgress != progress)
  {
    self->_snapshotViewBlurProgress = progress;
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:self->_snapshotView forView:?];
  }
}

- (void)setSnapshotViewAlpha:(double)alpha
{
  [(SAUIElementViewController *)self snapshotViewAlpha];
  if (v5 != alpha)
  {
    snapshotView = self->_snapshotView;

    [(UIView *)snapshotView setAlpha:alpha];
  }
}

- (void)_setSquishProgress:(double)progress additionalScale:(CGSize)scale additionalTransform:(CGAffineTransform *)transform forProvidedView:(id)view transformView:(id)transformView isLeading:(BOOL)leading isMinimal:(BOOL)minimal
{
  leadingCopy = leading;
  height = scale.height;
  width = scale.width;
  transformViewCopy = transformView;
  v17 = transformViewCopy;
  if (view && transformViewCopy)
  {
    viewCopy = view;
    view = [(SAUIElementViewController *)self view];
    _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];

    v21 = -1.0;
    if (leadingCopy)
    {
      v21 = 1.0;
    }

    v22 = height;
    if (_shouldReverseLayoutDirection)
    {
      v23 = v21;
    }

    else
    {
      v23 = -v21;
    }

    [viewCopy bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v42.origin.x = v25;
    v42.origin.y = v27;
    v42.size.width = v29;
    v42.size.height = v31;
    v32 = CGRectGetWidth(v42);
    memset(&v41, 0, sizeof(v41));
    CGAffineTransformMakeScale(&t1, 1.0 - progress, 1.0);
    CGAffineTransformMakeTranslation(&t2, v23 * progress * v32 * 0.5, 0.0);
    CGAffineTransformConcat(&v41, &t1, &t2);
    if (!BSFloatIsOne() || (BSFloatIsOne() & 1) == 0)
    {
      t2 = v41;
      CGAffineTransformScale(&t1, &t2, width, v22);
      v41 = t1;
    }

    t2 = v41;
    v33 = *&transform->c;
    *&v38.a = *&transform->a;
    *&v38.c = v33;
    *&v38.tx = *&transform->tx;
    CGAffineTransformConcat(&t1, &t2, &v38);
    v41 = t1;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __134__SAUIElementViewController__setSquishProgress_additionalScale_additionalTransform_forProvidedView_transformView_isLeading_isMinimal___block_invoke;
    v35[3] = &unk_279D32650;
    v36 = v17;
    v37 = v41;
    v34 = MEMORY[0x26D6A2080](v35);
    if ([MEMORY[0x277D75D18] _isInRetargetableAnimationBlock])
    {
      [MEMORY[0x277D75D18] _modifyAnimationsByDecomposingGeometricTypes:0 animations:v34];
    }

    else
    {
      v34[2](v34);
    }
  }
}

uint64_t __134__SAUIElementViewController__setSquishProgress_additionalScale_additionalTransform_forProvidedView_transformView_isLeading_isMinimal___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

- (void)_synchronizeBlurProgress:(double)progress alpha:(double)alpha squishProgress:(double)squishProgress additionalTransform:(CGAffineTransform *)transform isLeading:(BOOL)leading isMinimal:(BOOL)minimal ofTransformView:(id)view providedView:(id)self0
{
  viewCopy = view;
  providedViewCopy = providedView;
  v20 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __144__SAUIElementViewController__synchronizeBlurProgress_alpha_squishProgress_additionalTransform_isLeading_isMinimal_ofTransformView_providedView___block_invoke;
  v24[3] = &unk_279D328F8;
  v24[4] = self;
  v25 = viewCopy;
  progressCopy = progress;
  alphaCopy = alpha;
  minimalCopy = minimal;
  leadingCopy = leading;
  squishProgressCopy = squishProgress;
  v21 = *&transform->c;
  v30 = *&transform->a;
  v31 = v21;
  v32 = *&transform->tx;
  v26 = providedViewCopy;
  v22 = providedViewCopy;
  v23 = viewCopy;
  [v20 performWithoutAnimation:v24];
}

uint64_t __144__SAUIElementViewController__synchronizeBlurProgress_alpha_squishProgress_additionalTransform_isLeading_isMinimal_ofTransformView_providedView___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setBlurProgress:*(a1 + 40) forView:*(a1 + 56)];
  [*(a1 + 40) setAlpha:*(a1 + 64)];
  if (*(a1 + 128) == 1)
  {
    v2 = *(a1 + 32);
    v3 = v2 + 158;
    v4 = *(a1 + 129);
  }

  else
  {
    v2 = *(a1 + 32);
    if (*(a1 + 129) == 1)
    {
      v3 = v2 + 154;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v3 = v2 + 156;
    }
  }

  v5 = *v3;
  v6 = v3[1];
  v7 = *(a1 + 72);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a1 + 96);
  v12[0] = *(a1 + 80);
  v12[1] = v10;
  v12[2] = *(a1 + 112);
  return [v2 _setSquishProgress:v12 additionalScale:v8 additionalTransform:v9 forProvidedView:v4 & 1 transformView:v7 isLeading:v5 isMinimal:v6];
}

- (void)_insertContentSnapshotView
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__SAUIElementViewController__insertContentSnapshotView__block_invoke;
  v2[3] = &unk_279D32628;
  v2[4] = self;
  [MEMORY[0x277D75D18] performWithoutAnimation:v2];
}

void __55__SAUIElementViewController__insertContentSnapshotView__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) view];
  v2 = [v6 snapshotViewAfterScreenUpdates:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1120);
  *(v3 + 1120) = v2;

  [*(a1 + 32) _insertSnapshotView:*(*(a1 + 32) + 1120)];
  v5 = *(*(a1 + 32) + 1120);
  [v6 bounds];
  [v5 setFrame:?];
  [*(*(a1 + 32) + 1120) setContentMode:1];
  [*(*(a1 + 32) + 1120) setAutoresizingMask:18];
  [*(*(a1 + 32) + 1120) setUserInteractionEnabled:0];
}

- (CGSize)leadingViewScale
{
  width = self->_leadingViewScale.width;
  height = self->_leadingViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)trailingViewScale
{
  width = self->_trailingViewScale.width;
  height = self->_trailingViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimalViewScale
{
  width = self->_minimalViewScale.width;
  height = self->_minimalViewScale.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)viewWillTransitionToSize:(uint64_t)a1 withTransitionCoordinator:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_26C482000, a2, OS_LOG_TYPE_DEBUG, "View will transition with settings: %{public}@", &v2, 0xCu);
}

@end