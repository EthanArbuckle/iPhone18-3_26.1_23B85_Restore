@interface SAUIElementViewController
- (CGAffineTransform)leadingViewTransform;
- (CGAffineTransform)minimalViewTransform;
- (CGAffineTransform)trailingViewTransform;
- (CGSize)leadingViewScale;
- (CGSize)maximumSizeOfLeadingViewForElementView:(id)a3;
- (CGSize)maximumSizeOfMinimalViewForElementView:(id)a3;
- (CGSize)maximumSizeOfTrailingViewForElementView:(id)a3;
- (CGSize)minimalViewScale;
- (CGSize)trailingViewScale;
- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7;
- (SAUIElementViewController)initWithElementViewProvider:(id)a3;
- (SAUIElementViewProviding)elementViewProvider;
- (double)customContentAlpha;
- (id)_contentView;
- (id)_effectiveProvidedMinimalView;
- (id)_elementView;
- (id)beginRequiringSnapshotForReason:(id)a3;
- (int64_t)handleElementTap:(id)a3;
- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4;
- (unint64_t)layoutAxis;
- (void)_insertContentSnapshotView;
- (void)_setSquishProgress:(double)a3 additionalScale:(CGSize)a4 additionalTransform:(CGAffineTransform *)a5 forProvidedView:(id)a6 transformView:(id)a7 isLeading:(BOOL)a8 isMinimal:(BOOL)a9;
- (void)_synchronizeBlurProgress:(double)a3 alpha:(double)a4 squishProgress:(double)a5 additionalTransform:(CGAffineTransform *)a6 isLeading:(BOOL)a7 isMinimal:(BOOL)a8 ofTransformView:(id)a9 providedView:(id)a10;
- (void)elementView:(id)a3 didConfigureLeadingTransformView:(id)a4;
- (void)elementView:(id)a3 didConfigureMinimalTransformView:(id)a4;
- (void)elementView:(id)a3 didConfigureTrailingTransformView:(id)a4;
- (void)elementView:(id)a3 didLayoutResizedLeadingTransformView:(id)a4;
- (void)elementView:(id)a3 didLayoutResizedMinimalTransformView:(id)a4;
- (void)elementView:(id)a3 didLayoutResizedTrailingTransformView:(id)a4;
- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3;
- (void)setCustomContentAlpha:(double)a3;
- (void)setCustomContentBlurProgress:(double)a3;
- (void)setLayoutAxis:(unint64_t)a3;
- (void)setLeadingViewAlpha:(double)a3;
- (void)setLeadingViewBlurProgress:(double)a3;
- (void)setLeadingViewScale:(CGSize)a3;
- (void)setLeadingViewSquishProgress:(double)a3;
- (void)setLeadingViewTransform:(CGAffineTransform *)a3;
- (void)setMinimalViewAlpha:(double)a3;
- (void)setMinimalViewBlurProgress:(double)a3;
- (void)setMinimalViewScale:(CGSize)a3;
- (void)setMinimalViewSquishProgress:(double)a3;
- (void)setMinimalViewTransform:(CGAffineTransform *)a3;
- (void)setSnapshotViewAlpha:(double)a3;
- (void)setSnapshotViewBlurProgress:(double)a3;
- (void)setTrailingViewAlpha:(double)a3;
- (void)setTrailingViewBlurProgress:(double)a3;
- (void)setTrailingViewScale:(CGSize)a3;
- (void)setTrailingViewSquishProgress:(double)a3;
- (void)setTrailingViewTransform:(CGAffineTransform *)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SAUIElementViewController

- (SAUIElementViewProviding)elementViewProvider
{
  v6.receiver = self;
  v6.super_class = SAUIElementViewController;
  v2 = [(SAUILayoutSpecifyingElementViewController *)&v6 elementViewProvider];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = v2;
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
  v3 = [WeakRetained contentView];
  [v3 alpha];
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
  v3 = [(SAUIElementViewController *)self view];
  [v3 bounds];

  WeakRetained = objc_loadWeakRetained(&self->_elementView);
  UIRectGetCenter();
  [WeakRetained setCenter:?];
  BSRectWithSize();
  [WeakRetained setBounds:?];
}

- (id)_contentView
{
  v2 = [(SAUIElementViewController *)self _elementView];
  v3 = [v2 contentView];

  return v3;
}

- (id)_elementView
{
  WeakRetained = objc_loadWeakRetained(&self->_elementView);
  if (!WeakRetained)
  {
    v4 = [SAUIElementView alloc];
    v5 = [(SAUIElementViewController *)self elementViewProvider];
    WeakRetained = [(SAUIElementView *)v4 initWithElementViewProvider:v5];

    objc_storeWeak(&self->_elementView, WeakRetained);
    [(SAUIElementView *)WeakRetained setDelegate:self];
  }

  return WeakRetained;
}

- (id)_effectiveProvidedMinimalView
{
  v2 = [(SAUIElementViewController *)self elementViewProvider];
  v3 = [v2 minimalView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [v2 leadingView];
  }

  v6 = v5;

  return v6;
}

- (SAUIElementViewController)initWithElementViewProvider:(id)a3
{
  v13.receiver = self;
  v13.super_class = SAUIElementViewController;
  result = [(SAUILayoutSpecifyingElementViewController *)&v13 initWithElementViewProvider:a3];
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
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SAUIElementViewController.m" lineNumber:87 description:@"Element view not added to self view"];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v52 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(SAUILayoutSpecifyingElementViewController *)self _previousLayoutMode];
  v9 = [(SAUILayoutSpecifyingElementViewController *)self layoutMode];
  v10 = v9;
  v11 = 0;
  v12 = v9 == 3 && v8 < 3;
  v13 = v9 < 3 && v8 == 3;
  if (v8 == 3 && v9 == 3)
  {
    if (objc_opt_respondsToSelector())
    {
      v11 = [v7 isPerformingSystemApertureInertTransition];
    }

    else
    {
      v11 = 0;
    }
  }

  v14 = (v12 || v13) | v11;
  v15 = [(SAUILayoutSpecifyingElementViewController *)self isTrackingTransitionWithReason:@"com.apple.SystemApertureUI.SAUIElementViewController.expansionTransition"];
  v38 = [(SAUILayoutSpecifyingElementViewController *)self isTrackingTransitionWithReason:@"com.apple.SystemApertureUI.SAUIElementViewController.contractionTransition"];
  v39 = v15;
  v16 = v15 || v38;
  v40 = v14;
  v17 = v14 | (v15 || v38 || v10 != 3);
  if (v14 & 1 | (v15 || v38 || v10 != 3) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v7 setPerformingSystemApertureCustomContentTransition:1];
  }

  v18 = MEMORY[0x277D6B8A8];
  v19 = *MEMORY[0x277D6B8A8];
  if (os_log_type_enabled(*MEMORY[0x277D6B8A8], OS_LOG_TYPE_DEBUG))
  {
    v31 = v19;
    v53.width = width;
    v53.height = height;
    v37 = NSStringFromCGSize(v53);
    v32 = SAUIStringFromElementViewLayoutMode(v8);
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

  v21 = [v7 valueForKey:{@"__mainContext", v37}];
  v22 = [v21 valueForKey:@"__animator"];
  v23 = [v22 valueForKey:@"_fluidBehaviorSettings"];

  v24 = *v18;
  if (os_log_type_enabled(*v18, OS_LOG_TYPE_DEBUG))
  {
    [SAUIElementViewController viewWillTransitionToSize:v23 withTransitionCoordinator:v24];
  }

  v46.receiver = self;
  v46.super_class = SAUIElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v46 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
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
        v27 = [MEMORY[0x277CCAD78] UUID];
        v28 = @"com.apple.SystemApertureUI.SAUIElementViewController.expansionTransition";
        if ((v10 < 3) | v11 & 1)
        {
          v28 = @"com.apple.SystemApertureUI.SAUIElementViewController.contractionTransition";
        }

        v29 = v28;
        [(SAUILayoutSpecifyingElementViewController *)self beginTrackingTransitionWithUniqueIdentifier:v27 reason:v29];
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
        v30 = v27;
        v42 = v30;
        [v7 animateAlongsideTransition:v44 completion:v41];

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

- (int64_t)handleElementTap:(id)a3
{
  v4 = a3;
  v5 = [(SAUIElementViewController *)self elementViewProvider];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__SAUIElementViewController_handleElementTap___block_invoke;
  v17[3] = &unk_279D328A8;
  v17[4] = self;
  v18 = v4;
  v6 = MEMORY[0x26D6A2080](v17);
  if (-[SAUILayoutSpecifyingElementViewController layoutMode](self, "layoutMode") == 1 && ([v5 minimalView], v7 = objc_claimAutoreleasedReturnValue(), v8 = (v6)[2](v6, v7), v7, (v8 & 1) != 0))
  {
    v9 = 3;
  }

  else
  {
    v10 = [v5 leadingView];
    v11 = (v6)[2](v6, v10);

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v12 = [v5 trailingView];
      v13 = (v6)[2](v6, v12);

      if (!v13)
      {
        v14 = 0;
        goto LABEL_12;
      }

      v9 = 2;
    }
  }

  if ([v5 handleElementViewEvent:v9])
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
    v14 = [(SAUILayoutSpecifyingElementViewController *)&v16 handleElementTap:v4];
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

  v3 = [(SAUIElementViewController *)self _elementView];
  v4 = [v3 layoutAxis];

  return v4;
}

- (void)setLayoutAxis:(unint64_t)a3
{
  [(SAUIElementViewController *)self loadViewIfNeeded];
  v5 = [(SAUIElementViewController *)self _elementView];
  [v5 setLayoutAxis:a3];
}

- (int64_t)maximumSupportedLayoutModeForTargetWithOverrider:(id)a3 isDefaultValue:(BOOL *)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(SAUIElementViewController *)self elementViewProvider];
  v25.receiver = self;
  v25.super_class = SAUIElementViewController;
  v8 = [(SAUILayoutSpecifyingElementViewController *)&v25 maximumSupportedLayoutModeForTargetWithOverrider:v6 isDefaultValue:a4];

  v9 = *a4;
  if (objc_opt_respondsToSelector())
  {
    v10 = [v7 leadingView];
    v11 = v10 != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (objc_opt_respondsToSelector())
  {
    v13 = [v7 minimalView];
    v12 = v13 != 0 || v11;
  }

  if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v14 = [v7 trailingView];
    if (v14)
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
    v17 = [v7 element];
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
        v21 = MEMORY[0x26D6A1D80](v17);
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

- (NSDirectionalEdgeInsets)preferredEdgeOutsetsForLayoutMode:(int64_t)a3 suggestedOutsets:(NSDirectionalEdgeInsets)a4 maximumOutsets:(NSDirectionalEdgeInsets)a5 forTargetWithOverrider:(id)a6 isDefaultValue:(BOOL *)a7
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  v12 = a4.trailing;
  v13 = a4.bottom;
  v14 = a4.leading;
  v15 = a4.top;
  v18 = a6;
  if (a3 < 1)
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
    v20 = [(SAUIElementViewController *)self elementViewProvider];
    if (SAUIDirectionEdgeInsetsAnyComponentIsZero())
    {
      [WeakRetained suggestedOutsetsForLayoutMode:a3 maximumOutsets:{top, leading, bottom, trailing}];
      v15 = SAUIDirectionEdgeInsetsComponentWiseMinimum(v15, v14, v13, v12, v21);
      v14 = v22;
      v13 = v23;
      v12 = v24;
    }

    if (objc_opt_respondsToSelector())
    {
      v33.receiver = self;
      v33.super_class = SAUIElementViewController;
      [(SAUILayoutSpecifyingElementViewController *)&v33 preferredEdgeOutsetsForLayoutMode:a3 suggestedOutsets:v18 maximumOutsets:a7 forTargetWithOverrider:v15 isDefaultValue:v14, v13, v12, top, leading, bottom, trailing];
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

- (void)preferredComponentViewSizeDidInvalidateForLayoutSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(SAUIElementViewController *)self _elementView];
  [v5 setNeedsLayout];

  v6.receiver = self;
  v6.super_class = SAUIElementViewController;
  [(SAUILayoutSpecifyingElementViewController *)&v6 preferredComponentViewSizeDidInvalidateForLayoutSpecifier:v4];
}

- (CGSize)maximumSizeOfMinimalViewForElementView:(id)a3
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v6 = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SAUIElementViewController *)self elementViewProvider];
    v10 = [v9 leadingView];
    v11 = [(SAUIElementViewController *)self elementViewProvider];
    [v6 maximumAvailableSizeForProvidedMinimalView:v10 fromViewProvider:v11];
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

- (CGSize)maximumSizeOfLeadingViewForElementView:(id)a3
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v6 = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SAUIElementViewController *)self elementViewProvider];
    v10 = [v9 leadingView];
    v11 = [(SAUIElementViewController *)self elementViewProvider];
    [v6 maximumAvailableSizeForProvidedLeadingView:v10 fromViewProvider:v11];
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

- (CGSize)maximumSizeOfTrailingViewForElementView:(id)a3
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v6 = [(SAUILayoutSpecifyingElementViewController *)self layoutHost];
  v7 = v5;
  v8 = v4;
  if (objc_opt_respondsToSelector())
  {
    v9 = [(SAUIElementViewController *)self elementViewProvider];
    v10 = [v9 leadingView];
    v11 = [(SAUIElementViewController *)self elementViewProvider];
    [v6 maximumAvailableSizeForProvidedTrailingView:v10 fromViewProvider:v11];
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

- (void)elementView:(id)a3 didConfigureLeadingTransformView:(id)a4
{
  leadingViewBlurProgress = self->_leadingViewBlurProgress;
  leadingViewAlpha = self->_leadingViewAlpha;
  leadingViewSquishProgress = self->_leadingViewSquishProgress;
  p_leadingViewTransform = &self->_leadingViewTransform;
  v9 = a4;
  v10 = [(SAUIElementViewController *)self elementViewProvider];
  v11 = [v10 leadingView];
  v12 = *&p_leadingViewTransform->c;
  v13[0] = *&p_leadingViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_leadingViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v13 alpha:1 squishProgress:0 additionalTransform:v9 isLeading:v11 isMinimal:leadingViewBlurProgress ofTransformView:leadingViewAlpha providedView:leadingViewSquishProgress];
}

- (void)elementView:(id)a3 didConfigureTrailingTransformView:(id)a4
{
  trailingViewBlurProgress = self->_trailingViewBlurProgress;
  trailingViewAlpha = self->_trailingViewAlpha;
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  p_trailingViewTransform = &self->_trailingViewTransform;
  v9 = a4;
  v10 = [(SAUIElementViewController *)self elementViewProvider];
  v11 = [v10 trailingView];
  v12 = *&p_trailingViewTransform->c;
  v13[0] = *&p_trailingViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_trailingViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v13 alpha:0 squishProgress:0 additionalTransform:v9 isLeading:v11 isMinimal:trailingViewBlurProgress ofTransformView:trailingViewAlpha providedView:trailingViewSquishProgress];
}

- (void)elementView:(id)a3 didConfigureMinimalTransformView:(id)a4
{
  minimalViewBlurProgress = self->_minimalViewBlurProgress;
  minimalViewAlpha = self->_minimalViewAlpha;
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  p_minimalViewTransform = &self->_minimalViewTransform;
  v9 = a4;
  v10 = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
  v11 = *&p_minimalViewTransform->c;
  v12[0] = *&p_minimalViewTransform->a;
  v12[1] = v11;
  v12[2] = *&p_minimalViewTransform->tx;
  [(SAUIElementViewController *)self _synchronizeBlurProgress:v12 alpha:1 squishProgress:1 additionalTransform:v9 isLeading:v10 isMinimal:minimalViewBlurProgress ofTransformView:minimalViewAlpha providedView:minimalViewSquishProgress];
}

- (void)elementView:(id)a3 didLayoutResizedLeadingTransformView:(id)a4
{
  leadingViewSquishProgress = self->_leadingViewSquishProgress;
  p_leadingViewScale = &self->_leadingViewScale;
  p_leadingViewTransform = &self->_leadingViewTransform;
  v8 = a4;
  v9 = [(SAUIElementViewController *)self elementViewProvider];
  v10 = [v9 leadingView];
  width = p_leadingViewScale->width;
  height = p_leadingViewScale->height;
  v13 = *&p_leadingViewTransform->c;
  v14[0] = *&p_leadingViewTransform->a;
  v14[1] = v13;
  v14[2] = *&p_leadingViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:v10 additionalTransform:v8 forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
}

- (void)elementView:(id)a3 didLayoutResizedTrailingTransformView:(id)a4
{
  trailingViewSquishProgress = self->_trailingViewSquishProgress;
  p_trailingViewScale = &self->_trailingViewScale;
  p_trailingViewTransform = &self->_trailingViewTransform;
  v8 = a4;
  v9 = [(SAUIElementViewController *)self elementViewProvider];
  v10 = [v9 trailingView];
  width = p_trailingViewScale->width;
  height = p_trailingViewScale->height;
  v13 = *&p_trailingViewTransform->c;
  v14[0] = *&p_trailingViewTransform->a;
  v14[1] = v13;
  v14[2] = *&p_trailingViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:v10 additionalTransform:v8 forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
}

- (void)elementView:(id)a3 didLayoutResizedMinimalTransformView:(id)a4
{
  minimalViewSquishProgress = self->_minimalViewSquishProgress;
  p_minimalViewScale = &self->_minimalViewScale;
  p_minimalViewTransform = &self->_minimalViewTransform;
  v8 = a4;
  v9 = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
  width = p_minimalViewScale->width;
  height = p_minimalViewScale->height;
  v12 = *&p_minimalViewTransform->c;
  v13[0] = *&p_minimalViewTransform->a;
  v13[1] = v12;
  v13[2] = *&p_minimalViewTransform->tx;
  [(SAUIElementViewController *)self _setSquishProgress:v13 additionalScale:v9 additionalTransform:v8 forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
}

- (id)beginRequiringSnapshotForReason:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_snapshotViewAssertion);
  v6 = [WeakRetained snapshotReason];
  v7 = BSEqualObjects();

  if ((v7 & 1) == 0)
  {
    [WeakRetained invalidateWithReason:@"different reason requested"];
    [(SAUIElementViewController *)self _insertContentSnapshotView];
    v8 = self->_snapshotView;
    v9 = [_SAUIElementViewControllerSnapshotAssertion alloc];
    v10 = [(SAUIElementViewController *)self elementViewProvider];
    v11 = [v10 element];
    v12 = [(_SAUIElementViewControllerSnapshotAssertion *)v9 initWithElement:v11 snapshotReason:v4];

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

- (void)setLeadingViewBlurProgress:(double)a3
{
  if (self->_leadingViewBlurProgress != a3)
  {
    self->_leadingViewBlurProgress = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v5 = [WeakRetained leadingTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:v5 forView:a3];
  }
}

- (void)setLeadingViewAlpha:(double)a3
{
  if (self->_leadingViewAlpha != a3)
  {
    self->_leadingViewAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v4 = [WeakRetained leadingTransformView];
    [v4 setAlpha:self->_leadingViewAlpha];
  }
}

- (void)setLeadingViewSquishProgress:(double)a3
{
  if (self->_leadingViewSquishProgress != a3)
  {
    self->_leadingViewSquishProgress = a3;
    p_leadingViewScale = &self->_leadingViewScale;
    p_leadingViewTransform = &self->_leadingViewTransform;
    v7 = [(SAUIElementViewController *)self elementViewProvider];
    v8 = [v7 leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v10 = [WeakRetained leadingTransformView];
    width = p_leadingViewScale->width;
    height = p_leadingViewScale->height;
    v13 = *&p_leadingViewTransform->c;
    v14[0] = *&p_leadingViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:v8 additionalTransform:v10 forProvidedView:1 transformView:0 isLeading:a3 isMinimal:width, height];
  }
}

- (void)setLeadingViewScale:(CGSize)a3
{
  p_leadingViewScale = &self->_leadingViewScale;
  if (a3.width != self->_leadingViewScale.width || a3.height != self->_leadingViewScale.height)
  {
    p_leadingViewScale->width = a3.width;
    self->_leadingViewScale.height = a3.height;
    leadingViewSquishProgress = self->_leadingViewSquishProgress;
    p_leadingViewTransform = &self->_leadingViewTransform;
    v8 = [(SAUIElementViewController *)self elementViewProvider];
    v9 = [v8 leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v11 = [WeakRetained leadingTransformView];
    width = p_leadingViewScale->width;
    height = p_leadingViewScale->height;
    v14 = *&p_leadingViewTransform->c;
    v15[0] = *&p_leadingViewTransform->a;
    v15[1] = v14;
    v15[2] = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v15 additionalScale:v9 additionalTransform:v11 forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setLeadingViewTransform:(CGAffineTransform *)a3
{
  p_leadingViewTransform = &self->_leadingViewTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_leadingViewTransform.c;
  *&v18.a = *&self->_leadingViewTransform.a;
  *&v18.c = v7;
  *&v18.tx = *&self->_leadingViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v18))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_leadingViewTransform->c = *&a3->c;
    *&p_leadingViewTransform->tx = v9;
    *&p_leadingViewTransform->a = v8;
    leadingViewSquishProgress = self->_leadingViewSquishProgress;
    v11 = [(SAUIElementViewController *)self elementViewProvider];
    v12 = [v11 leadingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v14 = [WeakRetained leadingTransformView];
    width = self->_leadingViewScale.width;
    height = self->_leadingViewScale.height;
    v17 = *&p_leadingViewTransform->c;
    *&t1.a = *&p_leadingViewTransform->a;
    *&t1.c = v17;
    *&t1.tx = *&p_leadingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:v12 additionalTransform:v14 forProvidedView:1 transformView:0 isLeading:leadingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setTrailingViewBlurProgress:(double)a3
{
  if (self->_trailingViewBlurProgress != a3)
  {
    self->_trailingViewBlurProgress = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v5 = [WeakRetained trailingTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:v5 forView:a3];
  }
}

- (void)setTrailingViewAlpha:(double)a3
{
  if (self->_trailingViewAlpha != a3)
  {
    self->_trailingViewAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v4 = [WeakRetained trailingTransformView];
    [v4 setAlpha:self->_trailingViewAlpha];
  }
}

- (void)setTrailingViewSquishProgress:(double)a3
{
  if (self->_trailingViewSquishProgress != a3)
  {
    self->_trailingViewSquishProgress = a3;
    p_trailingViewScale = &self->_trailingViewScale;
    p_trailingViewTransform = &self->_trailingViewTransform;
    v7 = [(SAUIElementViewController *)self elementViewProvider];
    v8 = [v7 trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v10 = [WeakRetained trailingTransformView];
    width = p_trailingViewScale->width;
    height = p_trailingViewScale->height;
    v13 = *&p_trailingViewTransform->c;
    v14[0] = *&p_trailingViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:v8 additionalTransform:v10 forProvidedView:0 transformView:0 isLeading:a3 isMinimal:width, height];
  }
}

- (void)setTrailingViewScale:(CGSize)a3
{
  p_trailingViewScale = &self->_trailingViewScale;
  if (a3.width != self->_trailingViewScale.width || a3.height != self->_trailingViewScale.height)
  {
    p_trailingViewScale->width = a3.width;
    self->_trailingViewScale.height = a3.height;
    trailingViewSquishProgress = self->_trailingViewSquishProgress;
    p_trailingViewTransform = &self->_trailingViewTransform;
    v8 = [(SAUIElementViewController *)self elementViewProvider];
    v9 = [v8 trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v11 = [WeakRetained trailingTransformView];
    width = p_trailingViewScale->width;
    height = p_trailingViewScale->height;
    v14 = *&p_trailingViewTransform->c;
    v15[0] = *&p_trailingViewTransform->a;
    v15[1] = v14;
    v15[2] = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v15 additionalScale:v9 additionalTransform:v11 forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setTrailingViewTransform:(CGAffineTransform *)a3
{
  p_trailingViewTransform = &self->_trailingViewTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_trailingViewTransform.c;
  *&v18.a = *&self->_trailingViewTransform.a;
  *&v18.c = v7;
  *&v18.tx = *&self->_trailingViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v18))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_trailingViewTransform->c = *&a3->c;
    *&p_trailingViewTransform->tx = v9;
    *&p_trailingViewTransform->a = v8;
    trailingViewSquishProgress = self->_trailingViewSquishProgress;
    v11 = [(SAUIElementViewController *)self elementViewProvider];
    v12 = [v11 trailingView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v14 = [WeakRetained trailingTransformView];
    width = self->_trailingViewScale.width;
    height = self->_trailingViewScale.height;
    v17 = *&p_trailingViewTransform->c;
    *&t1.a = *&p_trailingViewTransform->a;
    *&t1.c = v17;
    *&t1.tx = *&p_trailingViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:v12 additionalTransform:v14 forProvidedView:0 transformView:0 isLeading:trailingViewSquishProgress isMinimal:width, height];
  }
}

- (void)setMinimalViewBlurProgress:(double)a3
{
  if (self->_minimalViewBlurProgress != a3)
  {
    self->_minimalViewBlurProgress = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v5 = [WeakRetained minimalTransformView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:v5 forView:a3];
  }
}

- (void)setMinimalViewAlpha:(double)a3
{
  if (self->_minimalViewAlpha != a3)
  {
    self->_minimalViewAlpha = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v4 = [WeakRetained minimalTransformView];
    [v4 setAlpha:self->_minimalViewAlpha];
  }
}

- (void)setMinimalViewSquishProgress:(double)a3
{
  if (self->_minimalViewSquishProgress != a3)
  {
    self->_minimalViewSquishProgress = a3;
    p_minimalViewScale = &self->_minimalViewScale;
    p_minimalViewTransform = &self->_minimalViewTransform;
    v7 = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v9 = [WeakRetained minimalTransformView];
    width = p_minimalViewScale->width;
    height = p_minimalViewScale->height;
    v12 = *&p_minimalViewTransform->c;
    v13[0] = *&p_minimalViewTransform->a;
    v13[1] = v12;
    v13[2] = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v13 additionalScale:v7 additionalTransform:v9 forProvidedView:1 transformView:1 isLeading:a3 isMinimal:width, height];
  }
}

- (void)setMinimalViewScale:(CGSize)a3
{
  p_minimalViewScale = &self->_minimalViewScale;
  if (a3.width != self->_minimalViewScale.width || a3.height != self->_minimalViewScale.height)
  {
    p_minimalViewScale->width = a3.width;
    self->_minimalViewScale.height = a3.height;
    minimalViewSquishProgress = self->_minimalViewSquishProgress;
    p_minimalViewTransform = &self->_minimalViewTransform;
    v8 = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v10 = [WeakRetained minimalTransformView];
    width = p_minimalViewScale->width;
    height = p_minimalViewScale->height;
    v13 = *&p_minimalViewTransform->c;
    v14[0] = *&p_minimalViewTransform->a;
    v14[1] = v13;
    v14[2] = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:v14 additionalScale:v8 additionalTransform:v10 forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
  }
}

- (void)setMinimalViewTransform:(CGAffineTransform *)a3
{
  p_minimalViewTransform = &self->_minimalViewTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_minimalViewTransform.c;
  *&v17.a = *&self->_minimalViewTransform.a;
  *&v17.c = v7;
  *&v17.tx = *&self->_minimalViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v17))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_minimalViewTransform->c = *&a3->c;
    *&p_minimalViewTransform->tx = v9;
    *&p_minimalViewTransform->a = v8;
    minimalViewSquishProgress = self->_minimalViewSquishProgress;
    v11 = [(SAUIElementViewController *)self _effectiveProvidedMinimalView];
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v13 = [WeakRetained minimalTransformView];
    width = self->_minimalViewScale.width;
    height = self->_minimalViewScale.height;
    v16 = *&p_minimalViewTransform->c;
    *&t1.a = *&p_minimalViewTransform->a;
    *&t1.c = v16;
    *&t1.tx = *&p_minimalViewTransform->tx;
    [(SAUIElementViewController *)self _setSquishProgress:&t1 additionalScale:v11 additionalTransform:v13 forProvidedView:1 transformView:1 isLeading:minimalViewSquishProgress isMinimal:width, height];
  }
}

- (void)setCustomContentBlurProgress:(double)a3
{
  if (self->_customContentBlurProgress != a3)
  {
    self->_customContentBlurProgress = a3;
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v5 = [WeakRetained contentView];
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:v5 forView:a3];
  }
}

- (void)setCustomContentAlpha:(double)a3
{
  [(SAUIElementViewController *)self customContentAlpha];
  if (v5 != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_elementView);
    v6 = [WeakRetained contentView];
    [v6 setAlpha:a3];
  }
}

- (void)setSnapshotViewBlurProgress:(double)a3
{
  if (self->_snapshotViewBlurProgress != a3)
  {
    self->_snapshotViewBlurProgress = a3;
    [(SAUILayoutSpecifyingElementViewController *)self _setBlurProgress:self->_snapshotView forView:?];
  }
}

- (void)setSnapshotViewAlpha:(double)a3
{
  [(SAUIElementViewController *)self snapshotViewAlpha];
  if (v5 != a3)
  {
    snapshotView = self->_snapshotView;

    [(UIView *)snapshotView setAlpha:a3];
  }
}

- (void)_setSquishProgress:(double)a3 additionalScale:(CGSize)a4 additionalTransform:(CGAffineTransform *)a5 forProvidedView:(id)a6 transformView:(id)a7 isLeading:(BOOL)a8 isMinimal:(BOOL)a9
{
  v9 = a8;
  height = a4.height;
  width = a4.width;
  v16 = a7;
  v17 = v16;
  if (a6 && v16)
  {
    v18 = a6;
    v19 = [(SAUIElementViewController *)self view];
    v20 = [v19 _shouldReverseLayoutDirection];

    v21 = -1.0;
    if (v9)
    {
      v21 = 1.0;
    }

    v22 = height;
    if (v20)
    {
      v23 = v21;
    }

    else
    {
      v23 = -v21;
    }

    [v18 bounds];
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
    CGAffineTransformMakeScale(&t1, 1.0 - a3, 1.0);
    CGAffineTransformMakeTranslation(&t2, v23 * a3 * v32 * 0.5, 0.0);
    CGAffineTransformConcat(&v41, &t1, &t2);
    if (!BSFloatIsOne() || (BSFloatIsOne() & 1) == 0)
    {
      t2 = v41;
      CGAffineTransformScale(&t1, &t2, width, v22);
      v41 = t1;
    }

    t2 = v41;
    v33 = *&a5->c;
    *&v38.a = *&a5->a;
    *&v38.c = v33;
    *&v38.tx = *&a5->tx;
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

- (void)_synchronizeBlurProgress:(double)a3 alpha:(double)a4 squishProgress:(double)a5 additionalTransform:(CGAffineTransform *)a6 isLeading:(BOOL)a7 isMinimal:(BOOL)a8 ofTransformView:(id)a9 providedView:(id)a10
{
  v18 = a9;
  v19 = a10;
  v20 = MEMORY[0x277D75D18];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __144__SAUIElementViewController__synchronizeBlurProgress_alpha_squishProgress_additionalTransform_isLeading_isMinimal_ofTransformView_providedView___block_invoke;
  v24[3] = &unk_279D328F8;
  v24[4] = self;
  v25 = v18;
  v27 = a3;
  v28 = a4;
  v33 = a8;
  v34 = a7;
  v29 = a5;
  v21 = *&a6->c;
  v30 = *&a6->a;
  v31 = v21;
  v32 = *&a6->tx;
  v26 = v19;
  v22 = v19;
  v23 = v18;
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