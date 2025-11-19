@interface _UITabContainerView
- (BOOL)_gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4;
- (BOOL)_isShowingSidebar;
- (BOOL)_isTabBarHidden;
- (BOOL)_sidebarGestureRecognizerShouldReceiveTouch:(id)a3;
- (BOOL)canShowFloatingTabBar;
- (BOOL)canShowFloatingUI;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isEditing;
- (BOOL)isShowingFloatingTabBar;
- (BOOL)isSidebarOverlappingContent;
- (BOOL)isSidebarOverlayingContent;
- (BOOL)outlineViewShouldShowCustomizationHeader:(id)a3;
- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5;
- (CGRect)adjustedFrameForContentTransitionViewFrame:(CGRect)a3;
- (CGRect)contentLayoutGuideFrame;
- (CGRect)floatingTabBarContentFrameInCoordinateSpace:(id)a3;
- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4;
- (UIAction)_sidebarToggleAction;
- (UIEdgeInsets)absoluteSidebarInsets;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)additionalSidebarInsets;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3;
- (UITabBarController)tabBarController;
- (UIView)_dimmingView;
- (_UIFloatingTabBar)floatingTabBar;
- (_UITabContainerView)initWithTabBarController:(id)a3;
- (_UITabContainerViewDelegate)delegate;
- (_UITabContainerViewFloatingTabBarHost)floatingTabBarHost;
- (_UITabOutlineView)sidebarView;
- (double)_currentSidebarWidth;
- (double)_floatingTabBarFittingHeight;
- (double)_floatingTabBarTopOffset;
- (double)floatingTabBarTopInsetForViewController:(id)a3;
- (id)_configuredGroupCompletion;
- (id)_currentPlatformMetrics;
- (id)_morphViewForVisibleItem:(int64_t)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)preferredFocusEnvironments;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3;
- (id)sidebar;
- (id)tabCustomizationStore;
- (int64_t)_currentVisibleComponents;
- (int64_t)resolvedAccessoryEnvironmentForEnvironment:(int64_t)a3;
- (void)_commitSidebarTranslation;
- (void)_createViewHierarchy;
- (void)_finalizeEditingState;
- (void)_handleDimmingViewTap:(id)a3;
- (void)_handleSidebarResizePanGestureRecognizer:(id)a3;
- (void)_handleSidebarResizeTapGestureRecognizer:(id)a3;
- (void)_horizontalSizeClassDidChange;
- (void)_updateBottomTabBarFrame;
- (void)_updateFloatingTabBarFrame;
- (void)_updatePassthroughScrollInteractionIfNeeded;
- (void)_updateSidebarAppearanceForMorphTransitionAnimated:(BOOL)a3;
- (void)_updateSidebarContentMarginsWithTabBarContentFrame:(CGRect)a3;
- (void)_updateSidebarViewFrame;
- (void)_updateToggleAction;
- (void)_updateVisibleBarAnimated:(BOOL)a3 requireLayout:(BOOL)a4 updateDimmingView:(BOOL)a5;
- (void)_updateVisibleItem:(int64_t)a3;
- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4;
- (void)layoutSubviews;
- (void)outlineView:(id)a3 didSelectTab:(id)a4;
- (void)outlineViewDidChangeCustomizationStore:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)a3;
- (void)setAdditionalSidebarInsets:(UIEdgeInsets)a3;
- (void)setAvailableComponent:(int64_t)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setIsBottomBarSuppressed:(BOOL)a3;
- (void)setOverrideTidebarButtonAction:(id)a3;
- (void)setPreferredSidebarLayout:(int64_t)a3;
- (void)setSupportedComponent:(int64_t)a3;
- (void)setSupportsResizingSidebar:(BOOL)a3;
- (void)setSuppressTabBar:(BOOL)a3;
- (void)setTabBar:(id)a3;
- (void)updateBottomAccessoryAnimated:(BOOL)a3;
- (void)updateDimmingViewAnimated:(BOOL)a3;
- (void)updateEditModeAppearanceAnimated:(BOOL)a3;
- (void)updateSidebarAppearanceStateAnimated:(BOOL)a3 animator:(id)a4;
@end

@implementation _UITabContainerView

- (_UITabContainerView)initWithTabBarController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _UITabContainerView;
  v5 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBarController, v4);
    if (v4)
    {
      v7 = v4[150];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    v9 = [v8 customizationStore];
    [v9 preferredSidebarWidth];
    v6->_currentSidebarWidth = v10;

    *&v6->_additionalSidebarInsets.top = 0u;
    *&v6->_additionalSidebarInsets.bottom = 0u;
    *&v6->_absoluteSidebarInsets.top = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v6->_absoluteSidebarInsets.bottom = xmmword_18A682290;
    [(_UITabContainerView *)v6 _createViewHierarchy];
  }

  return v6;
}

- (id)sidebar
{
  v2 = [(_UITabContainerView *)self tabBarController];
  v3 = [v2 sidebar];

  return v3;
}

- (id)tabCustomizationStore
{
  v2 = [(_UITabContainerView *)self tabBarController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1200);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 customizationStore];

  return v6;
}

- (BOOL)isEditing
{
  v2 = [(_UITabContainerView *)self tabBarController];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 1200);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 isEditing];

  return v6;
}

- (void)setEditing:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UITabContainerView *)self tabBarController];
  v7 = v4;
  if (v4)
  {
    v5 = *(v4 + 1200);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 setEditing:v3];
}

- (_UIFloatingTabBar)floatingTabBar
{
  if (!self->_floatingTabBar && ([(_UITabContainerView *)self supportedComponent]& 1) != 0)
  {
    v3 = [_UIFloatingTabBar alloc];
    v4 = [(_UIFloatingTabBar *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v5 = [(_UITabContainerView *)self tabBarController];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 1200);
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    [(_UIFloatingTabBar *)v4 setTabModel:v8];

    objc_initWeak(&location, self);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __37___UITabContainerView_floatingTabBar__block_invoke;
    v15 = &unk_1E7120B88;
    objc_copyWeak(&v16, &location);
    [(_UIFloatingTabBar *)v4 setContentFrameDidChangeBlock:&v12];
    [(UIView *)v4 addInteraction:self->_floatingTabBarPocketContainerInteraction, v12, v13, v14, v15];
    floatingTabBar = self->_floatingTabBar;
    self->_floatingTabBar = v4;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  v10 = self->_floatingTabBar;

  return v10;
}

- (_UITabOutlineView)sidebarView
{
  v2 = [(_UITabContainerView *)self sidebar];
  v3 = [v2 _outlineView];

  return v3;
}

- (void)setTabBar:(id)a3
{
  v5 = a3;
  tabBar = self->_tabBar;
  if (tabBar != v5)
  {
    v7 = v5;
    [(UITabBar *)tabBar _setGlassGroupContainer:?];
    [(UIView *)self->_tabBar removeFromSuperview];
    objc_storeStrong(&self->_tabBar, a3);
    [(UITabBar *)self->_tabBar _setGlassGroupContainer:?];
    [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
    [(_UITabContainerView *)self _updateBottomTabBarFrame];
    v5 = v7;
  }
}

- (void)_createViewHierarchy
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v4 = [(UITabBarController *)WeakRetained _internalTabBar];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [UITabBar alloc];
    v6 = [(UITabBar *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v8 = v6;

  [(UIView *)v8 setAutoresizingMask:0];
  objc_storeStrong(&self->_tabBar, v8);
  v9 = [(_UITabContainerView *)self tabBarController];
  v10 = [(UITabBarController *)v9 _scrollPocketCollectorInteraction];

  v11 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:1];
  floatingTabBarPocketContainerInteraction = self->_floatingTabBarPocketContainerInteraction;
  self->_floatingTabBarPocketContainerInteraction = v11;

  [(_UIScrollPocketContainerInteraction *)self->_floatingTabBarPocketContainerInteraction _setCollectorInteraction:v10];
  if (_UIScrollPocketAllowHorizontalPockets())
  {
    v13 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
    sidebarPocketInteraction = self->_sidebarPocketInteraction;
    self->_sidebarPocketInteraction = v13;

    [(_UIScrollPocketInteraction *)self->_sidebarPocketInteraction _setCollectorInteraction:v10];
    [(UIView *)self addInteraction:self->_sidebarPocketInteraction];
  }

  if (_UISolariumEnabled())
  {
    v15 = objc_opt_new();
    tabBarGroupView = self->_tabBarGroupView;
    self->_tabBarGroupView = v15;

    [(UITabBar *)self->_tabBar _setGlassGroupContainer:?];
    v17 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:4];
    bottomTabBarPocketContainerInteraction = self->_bottomTabBarPocketContainerInteraction;
    self->_bottomTabBarPocketContainerInteraction = v17;

    [(_UIScrollPocketContainerInteraction *)self->_bottomTabBarPocketContainerInteraction _setCollectorInteraction:v10];
    [(UIView *)self->_tabBarGroupView addInteraction:self->_bottomTabBarPocketContainerInteraction];
    v19 = [_UITabBarContentLayoutManager alloc];
    v20 = [(_UIBottomTabBarGroupView *)self->_tabBarGroupView contentView];
    v21 = [(_UITabBarContentLayoutManager *)v19 initWithLayoutHost:self container:v20];
    tabBarContentLayoutManager = self->_tabBarContentLayoutManager;
    self->_tabBarContentLayoutManager = v21;
  }

  v23 = [(_UITabContainerView *)self _currentPlatformMetrics];
  v24 = [v23 sidebarSupportsPassthroughInOverlay];

  if (v24)
  {
    v25 = objc_alloc_init(_UIPassthroughScrollInteraction);
    passthroughInteraction = self->_passthroughInteraction;
    self->_passthroughInteraction = v25;

    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setDelegate:self];
    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setRecognizeOnPrimaryButtonDown:1];
    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction setRecognizeOnSecondaryButtonDown:1];
    [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction _setOverrideAllowsHitTestingOnTouchFallbackView:0];
  }

  v32[0] = 0x1EFE323F8;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v28 = [(UIView *)self _registerForTraitTokenChanges:v27 withTarget:self action:sel__horizontalSizeClassDidChange];

  v31[0] = 0x1EFE323C8;
  v31[1] = 0x1EFE32440;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v30 = [(UIView *)self _registerForTraitTokenChanges:v29 withTarget:self action:sel_setNeedsLayout];
}

- (void)safeAreaInsetsDidChange
{
  v4.receiver = self;
  v4.super_class = _UITabContainerView;
  [(UIView *)&v4 safeAreaInsetsDidChange];
  v3 = [(_UITabContainerView *)self delegate];
  [v3 safeAreaInsetsDidChange];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v15.origin.x = v8;
  v15.origin.y = v9;
  v15.size.width = v10;
  v15.size.height = v11;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v12 = CGRectEqualToRect(v14, v15);
  v13.receiver = self;
  v13.super_class = _UITabContainerView;
  [(UIView *)&v13 setFrame:x, y, width, height];
  if (!v12)
  {
    if ([(_UITabContainerView *)self _hasActiveMorphTransition])
    {
      [(_UITabContainerView *)self _updateSidebarAppearanceForMorphTransitionAnimated:0];
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UITabContainerView;
  [(UIView *)&v3 layoutSubviews];
  if (!self->_activeMorphTransition || +[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [(_UITabContainerView *)self _updateBottomTabBarFrame];
    [(_UITabContainerView *)self _updateFloatingTabBarFrame];
    [(_UITabContainerView *)self _updateSidebarViewFrame];
    [(UIView *)self bounds];
    [(UIView *)self->_dimmingView setFrame:?];
  }
}

- (void)_updateFloatingTabBarFrame
{
  v3 = self->_floatingTabBar;
  [(UIView *)self safeAreaInsets];
  v5 = v4;
  v7 = v6;
  [(UIView *)v3 center];
  v9 = v8;
  v11 = v10;
  [(UIView *)self bounds];
  [(_UIFloatingTabBar *)v3 sizeThatFits:v12, v13];
  v15 = v14;
  [(_UITabContainerView *)self _floatingTabBarTopOffset];
  v17 = v16;
  [(UIView *)self bounds];
  x = v5 + 0.0;
  width = CGRectGetWidth(v41) - (v5 + v7);
  [(_UIFloatingTabBar *)v3 setBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, v15];
  [(UIView *)v3 setCenter:x + width * 0.5, v17 + 0.0 + v15 * 0.5];
  [(UIView *)v3 center];
  if (v9 != v21 || v11 != v20)
  {
    WeakRetained = objc_loadWeakRetained(&self->_floatingTabBarHost);
    [WeakRetained tabBarContainerDidLayoutFloatingTabBar:self];
  }

  if ([(_UITabContainerView *)self isEditing])
  {
    v24 = [(_UITabContainerView *)self _currentPlatformMetrics];
    remainder.origin.x = x;
    remainder.size.width = width;
    remainder.origin.y = 0.0;
    [(_UITabContainerView *)self _floatingTabBarFittingHeight];
    v26 = v17 + v25;
    [v24 expandedDropTargetInset];
    height = v26 + v27;
    remainder.size.height = height;
    v29 = [(_UITabContainerView *)self sidebarView];
    v30 = v29;
    if (!v29 || (y = 0.0, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v29[46]), vceqzq_f64(v29[47]))))) & 1) == 0))
    {
      [(_UITabContainerView *)self _currentSidebarWidth];
      v33 = v32;
      if ([(UIView *)self _shouldReverseLayoutDirection:*MEMORY[0x1E695F058]])
      {
        v34 = CGRectMaxXEdge;
      }

      else
      {
        v34 = CGRectMinXEdge;
      }

      v42.origin.y = 0.0;
      v42.origin.x = x;
      v42.size.width = width;
      v42.size.height = height;
      CGRectDivide(v42, &v39, &remainder, v33, v34);
      x = remainder.origin.x;
      y = remainder.origin.y;
      width = remainder.size.width;
      height = remainder.size.height;
    }

    [(UIView *)self convertRect:v3 toView:x, y, width, height];
    remainder.origin.x = v35;
    remainder.origin.y = v36;
    remainder.size.width = v37;
    remainder.size.height = v38;
    [(_UIFloatingTabBar *)v3 setFrameForExpandedDropTarget:?];
  }

  else
  {
    [(_UIFloatingTabBar *)v3 setFrameForExpandedDropTarget:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  }
}

- (void)_updateSidebarViewFrame
{
  v111 = [(_UITabContainerView *)self sidebarView];
  v3 = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [(UIView *)self _shouldReverseLayoutDirection];
  v6 = [v4 supportsFloatingSidebar];
  if (v111)
  {
    v7 = *(v111 + 53) == 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(_UITabContainerView *)self isEditing]|| [(_UITabContainerView *)self _isShowingSidebar];
  [(UIView *)self bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v4 sidebarBorderWidth];
  v18 = v17;
  [(UIView *)self _currentScreenScale];
  v20 = v18 / v19;
  v21 = 0.0;
  v109 = v20;
  if (([v4 isSidebarBorderInsideBounds] | v7))
  {
    v22 = 0.0;
  }

  else
  {
    v22 = v20;
  }

  [(_UITabContainerView *)self _currentSidebarWidth];
  v24 = v23 - v22;
  v25 = 0.0;
  if (v5)
  {
    v113.origin.x = v10;
    v113.origin.y = v12;
    v113.size.width = v14;
    v113.size.height = v16;
    v25 = v22 + CGRectGetWidth(v113) - v24;
  }

  *v110 = v10;
  *&v110[8] = v12;
  v114.origin.x = v10;
  v114.origin.y = v12;
  v114.size.width = v14;
  v114.size.height = v16;
  Height = CGRectGetHeight(v114);
  *&v110[16] = v14;
  *&v110[24] = v16;
  if (v7)
  {
    v108 = v24;
    v27 = v25;
    v28 = [(UIView *)self traitCollection];
    v29 = _UISidebarGetPlatformMetrics([v28 userInterfaceIdiom]);

    [v29 platterInsets];
    v106 = v31;
    v107 = v30;
    v33 = v32;
    v35 = v34;
    [(UIView *)self safeAreaInsets];
    v36 = Height;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;
    [(_UITabContainerView *)self additionalSidebarInsets];
    if (v5)
    {
      v49 = 13;
    }

    else
    {
      v49 = 7;
    }

    if (v5)
    {
      v50 = v35;
    }

    else
    {
      v50 = v33;
    }

    if (v5)
    {
      v51 = v33;
    }

    else
    {
      v51 = v35;
    }

    v52 = v38 + v45;
    v53 = v40 + v46;
    v54 = v44 + v48;
    if (!v5)
    {
      v54 = v44;
    }

    v55 = fmax(v54, v51);
    if (v5)
    {
      v56 = v55;
    }

    else
    {
      v56 = v44;
    }

    if ((v49 & 2) == 0)
    {
      v53 = v40;
    }

    v57 = v42 + v47;
    v58 = fmax(v52, v107);
    v59 = fmax(v53, v50);
    v60 = fmax(v57, v106);
    if ((v49 & 2) != 0)
    {
      v40 = v59;
    }

    [(_UITabContainerView *)self absoluteSidebarInsets];
    v65 = 4;
    if ((v61 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v65 = 5;
    }

    if ((v63 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v66 = (v61 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    }

    else
    {
      v66 = v65;
    }

    if ((v62 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v67 = v66;
    }

    else
    {
      v67 = v66 | 2;
    }

    if ((v64 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      v68 = v67;
    }

    else
    {
      v68 = v67 | 8;
    }

    [(_UITabContainerView *)self absoluteSidebarInsets];
    v73 = v68 & v49;
    if ((v68 & 1) == 0)
    {
      v69 = v58;
    }

    if ((v73 & 2) == 0)
    {
      v70 = v40;
    }

    if ((v68 & 4) != 0)
    {
      v74 = v71;
    }

    else
    {
      v74 = v60;
    }

    if (v73 < 8)
    {
      v72 = v56;
    }

    v75 = v72 + v70;
    Height = v36 - (v69 + v74);
    if (v111)
    {
      v111[63] = Height;
    }

    v25 = v27 + v70;
    v21 = v69 + 0.0;
    v24 = v108 - v75;
    if ([(_UITabContainerView *)self isEditing])
    {
      top = self->_sidebarAdditionalEditingInsets.top;
      left = self->_sidebarAdditionalEditingInsets.left;
      v25 = v25 + left;
      v21 = v21 + top;
      v24 = v24 - (left + self->_sidebarAdditionalEditingInsets.right);
      Height = Height - (top + self->_sidebarAdditionalEditingInsets.bottom);
    }

    v78 = *&v110[24];
  }

  else
  {
    v78 = v16;
  }

  v80 = *MEMORY[0x1E695EFF8];
  v79 = *(MEMORY[0x1E695EFF8] + 8);
  [v111 setBounds:{*MEMORY[0x1E695EFF8], v79, v24, Height}];
  [v111 setCenter:{v24 * 0.5 + v25, Height * 0.5 + v21}];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [v111 layoutIfNeeded];
  }

  if (!v7 || [(_UITabContainerView *)self supportsResizingSidebar])
  {
    v81 = [(_UITabContainerView *)self sidebarBorderView];
    if (v6)
    {
      v82 = +[UIColor clearColor];
      [v81 setBackgroundColor:v82];
    }

    v83 = v25;
    v84 = v21;
    v85 = v24;
    v86 = Height;
    if (v5)
    {
      MinX = CGRectGetMinX(*&v83);
    }

    else
    {
      MinX = CGRectGetMaxX(*&v83);
    }

    v88 = MinX;
    v115.origin.x = v25;
    v115.origin.y = v21;
    v115.size.width = v24;
    v115.size.height = Height;
    v89 = v21;
    v90 = Height;
    v91 = CGRectGetHeight(v115);
    [v81 setBounds:{v80, v79, v109, v91}];
    v92 = v91 * 0.5;
    Height = v90;
    v21 = v89;
    [v81 setCenter:{v109 * 0.5 + v88, v92 + 0.0}];

    v78 = *&v110[24];
  }

  if (v5)
  {
    v93 = 8;
  }

  else
  {
    v93 = 2;
  }

  [(_UIScrollPocketInteraction *)self->_sidebarPocketInteraction _setEdge:v93];
  if (v5)
  {
    v94 = v24;
    v95 = v25;
    v116.origin.x = *v110;
    v96 = Height;
    v116.origin.y = *&v110[8];
    v116.size.width = *&v110[16];
    v116.size.height = v78;
    MaxX = CGRectGetMaxX(v116);
    v117.origin.x = v25;
    v117.origin.y = v21;
    v117.size.width = v94;
    v117.size.height = Height;
    v98 = MaxX - CGRectGetMaxX(v117) + 50.0;
    v99 = CGRectGetMaxX(*v110) - v98;
  }

  else
  {
    v118.origin.x = v25;
    v118.origin.y = v21;
    v118.size.width = v24;
    v118.size.height = Height;
    v100 = CGRectGetMinX(v118);
    v119.size.height = v78;
    v101 = v100;
    v94 = v24;
    v95 = v25;
    v119.origin.x = *v110;
    v96 = Height;
    v119.origin.y = *&v110[8];
    v119.size.width = *&v110[16];
    v98 = v101 - CGRectGetMinX(v119) + 50.0;
    v99 = CGRectGetMinX(*v110);
  }

  v120.origin.x = v95;
  v120.origin.y = v21;
  v120.size.width = v94;
  v120.size.height = v96;
  MinY = CGRectGetMinY(v120);
  if (!v8)
  {
    v98 = 0.0;
  }

  v121.origin.x = v95;
  v121.origin.y = v21;
  v121.size.width = v94;
  v121.size.height = v96;
  v103 = CGRectGetHeight(v121);
  v104 = [(_UITabContainerView *)self sidebarPocketInteraction];
  [v104 _setRect:{v99, MinY, v98, v103}];

  v105 = [(_UITabContainerView *)self delegate];
  [v105 didLayoutSidebarView];
}

- (void)_updateBottomTabBarFrame
{
  v3 = [(_UITabContainerView *)self tabBar];
  v4 = [v3 window];
  if (v4)
  {
  }

  else
  {
    v55 = [v3 _expectedSuperviewFollowingAnimation];

    if (v55)
    {
      goto LABEL_12;
    }
  }

  v5 = [(_UITabContainerView *)self tabBarGroupView];
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v5 contentView];
  [v14 setBounds:{v7, v9, v11, v13}];

  v15 = [v5 contentView];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = self;
  }

  v18 = v17;

  [(UIView *)v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *MEMORY[0x1E695F060];
  v28 = *(MEMORY[0x1E695F060] + 8);
  [v3 sizeThatFits:{*MEMORY[0x1E695F060], v28}];
  v30 = v29;
  v32 = v31;
  v58.origin.x = v20;
  v58.origin.y = v22;
  v58.size.width = v24;
  v58.size.height = v26;
  [v3 setFrame:{0.0, CGRectGetMaxY(v58) - v32, v30, v32}];
  if (v5)
  {
    v33 = [(_UITabContainerView *)self tabBarContentLayoutManager];
    [v33 contentSizeForAllHostedElements];
    v35 = v34;

    v36 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v36;
    v56.origin = slice.origin;
    v56.size = v36;
    v37 = v20;
    v36.width = v22;
    v38 = v24;
    v39 = v26;
    CGRectDivide(*(&v36 - 8), &slice, &v56, v35, CGRectMaxYEdge);
    [v5 setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), slice.size.width, slice.size.height}];
    __asm { FMOV            V2.2D, #0.5 }

    [v5 setCenter:{vaddq_f64(slice.origin, vmulq_f64(slice.size, _Q2))}];
    [(UIView *)self bounds];
    v46 = v45;
    v48 = v47;
    v51 = v50 * 0.5 + v49 - CGRectGetMinY(slice);
    v52 = [v5 contentView];
    [v52 setCenter:{v46 + v48 * 0.5, v51}];

    [(UIView *)self _eagerlyUpdateSafeAreaInsetsToDescendant:?];
    v53 = [(_UITabContainerView *)self tabBarContentLayoutManager];
    [v53 updateLayout];
  }

  [v3 sizeThatFits:{v27, v28}];
  if (v54 != v32)
  {
    [(_UITabContainerView *)self _updateBottomTabBarFrame];
  }

LABEL_12:
}

- (CGRect)frameForHostedElement:(int64_t)a3 options:(int64_t)a4
{
  if (([(_UITabContainerView *)self _currentVisibleComponents]& 1) != 0)
  {
    tabBar = self->_tabBar;
    if (tabBar)
    {
      [(_UITabBarVisualProvider *)tabBar->_visualProvider frameForHostedElement:a3 options:a4];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
    }

    else
    {
      v28 = 0.0;
      v26 = 0.0;
      v24 = 0.0;
      v22 = 0.0;
    }

    v29 = [(_UITabContainerView *)self tabBarGroupView];
    v30 = [v29 contentView];
    [v30 convertRect:self->_tabBar fromView:{v22, v24, v26, v28}];
    v32 = v31;
    v34 = v33;
    Width = v35;
    v38 = v37;
  }

  else if (a3 == 2)
  {
    v7 = [(UIView *)self _shouldReverseLayoutDirection];
    [(UIView *)self safeAreaInsets];
    v9 = v8;
    v11 = v10;
    v13 = fmax(v12, 34.0);
    v15 = fmax(v14, 34.0);
    if ([(_UITabContainerView *)self _isShowingSidebar])
    {
      [(_UITabContainerView *)self _currentSidebarWidth];
      v17 = v16 + 34.0;
      [(UIView *)self safeAreaInsets];
      if (v7)
      {
        v15 = v17 + v19;
      }

      else
      {
        v13 = v17 + v18;
      }
    }

    [(UIView *)self bounds];
    v40 = v13 + v39;
    v65.origin.y = v9 + v41;
    v43 = v42 - (v15 + v13);
    v65.size.height = v44 - (v9 + v11);
    v65.origin.x = v40;
    v65.size.width = v43;
    Width = CGRectGetWidth(v65);
    v45 = *MEMORY[0x1E695F058];
    v46 = *(MEMORY[0x1E695F058] + 8);
    v47 = [(_UITabContainerView *)self tabBarController];
    v48 = [v47 bottomAccessory];
    v49 = [v48 contentView];
    v38 = 64.0;
    [v49 sizeThatFits:{Width, 64.0}];
    v51 = v50;
    v53 = v52;

    v54 = v51 >= Width || v51 <= 0.0;
    v55 = fmax(v51, 44.0);
    if (!v54)
    {
      Width = v55;
    }

    v56 = v53 >= 64.0 || v53 <= 0.0;
    v57 = fmax(v53, 44.0);
    if (!v56)
    {
      v38 = v57;
    }

    [(UIView *)self bounds];
    MaxY = CGRectGetMaxY(v66);
    v67.origin.x = v45;
    v67.origin.y = v46;
    v67.size.width = Width;
    v67.size.height = v38;
    Height = CGRectGetHeight(v67);
    [(UIView *)self safeAreaInsets];
    v34 = MaxY - (Height + fmax(v60, 10.0));
    v32 = round(v40 + (v43 - Width) * 0.5);
  }

  else
  {
    v32 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    Width = *(MEMORY[0x1E695F050] + 16);
    v38 = *(MEMORY[0x1E695F050] + 24);
  }

  v61 = v32;
  v62 = v34;
  v63 = Width;
  v64 = v38;
  result.size.height = v64;
  result.size.width = v63;
  result.origin.y = v62;
  result.origin.x = v61;
  return result;
}

- (int64_t)resolvedAccessoryEnvironmentForEnvironment:(int64_t)a3
{
  if ([(_UITabContainerView *)self canShowFloatingUI])
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

- (void)setPreferredSidebarLayout:(int64_t)a3
{
  if (self->_preferredSidebarLayout != a3)
  {
    self->_preferredSidebarLayout = a3;
    [(_UITabContainerView *)self _updateVisibleBarAnimated:0];

    [(_UITabContainerView *)self _updateSidebarViewFrame];
  }
}

- (void)setSupportedComponent:(int64_t)a3
{
  if (self->_supportedComponent != a3)
  {
    v4 = a3;
    self->_supportedComponent = a3;
    v6 = [(_UITabContainerView *)self sidebar];
    v8 = v6;
    if ((v4 & 2) != 0)
    {
      v7 = self;
    }

    else
    {
      v7 = 0;
    }

    [(UITabBarControllerSidebar *)v6 _setSidebarViewDelegate:v7];
  }
}

- (void)setAvailableComponent:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_availableComponent != a3)
  {
    v5 = a4;
    self->_availableComponent = a3;
    [(_UITabContainerView *)self _updateToggleAction];

    [(_UITabContainerView *)self _updateVisibleBarAnimated:v5];
  }
}

- (void)setIsBottomBarSuppressed:(BOOL)a3
{
  if (self->_isBottomBarSuppressed != a3)
  {
    self->_isBottomBarSuppressed = a3;
    [(_UITabContainerView *)self _updateVisibleBarAnimated:1];
  }
}

- (void)setSuppressTabBar:(BOOL)a3
{
  if (self->_suppressTabBar != a3)
  {
    self->_suppressTabBar = a3;
    if ([(_UITabContainerView *)self canShowFloatingUI])
    {
      [(_UITabContainerView *)self _updateVisibleBarAnimated:1];

      [(_UITabContainerView *)self _updateToggleAction];
    }
  }
}

- (void)setOverrideTidebarButtonAction:(id)a3
{
  v5 = a3;
  if (self->_overrideTidebarButtonAction != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_overrideTidebarButtonAction, a3);
    [(_UITabContainerView *)self _updateToggleAction];
    v5 = v6;
  }
}

- (void)setAdditionalSidebarInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalSidebarInsets.top), vceqq_f64(v4, *&self->_additionalSidebarInsets.bottom)))) & 1) == 0)
  {
    self->_additionalSidebarInsets = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_absoluteSidebarInsets.top), vceqq_f64(v4, *&self->_absoluteSidebarInsets.bottom)))) & 1) == 0)
  {
    self->_absoluteSidebarInsets = a3;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)canShowFloatingUI
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  v3 = [WeakRetained traitCollection];
  v4 = [v3 horizontalSizeClass] == 2;

  return v4;
}

- (BOOL)isShowingFloatingTabBar
{
  if ([(_UITabContainerView *)self _hasActiveMorphTransition])
  {
    LOBYTE(v3) = self->_morphTargetVisibleItem == 0;
  }

  else
  {
    v3 = [(_UITabContainerView *)self canShowFloatingTabBar];
    if (v3)
    {
      LOBYTE(v3) = ![(_UITabContainerView *)self _isShowingSidebar];
    }
  }

  return v3;
}

- (BOOL)canShowFloatingTabBar
{
  if (([(_UITabContainerView *)self availableComponent]& 1) == 0)
  {
    return 0;
  }

  return [(_UITabContainerView *)self canShowFloatingUI];
}

- (BOOL)isSidebarOverlappingContent
{
  v3 = [(_UITabContainerView *)self _isShowingSidebar];
  if (v3)
  {
    LOBYTE(v3) = [(_UITabContainerView *)self sidebarLayout]== 0;
  }

  return v3;
}

- (BOOL)isSidebarOverlayingContent
{
  v3 = [(_UITabContainerView *)self sidebarView];
  v4 = [v3 window];
  if (v4)
  {
    v5 = [(_UITabContainerView *)self sidebarLayout]== 2;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isShowingSidebar
{
  v2 = [(_UITabContainerView *)self sidebar];
  v3 = [(UITabBarControllerSidebar *)v2 _isSidebarSupportedAndVisible];

  return v3;
}

- (void)_updateVisibleItem:(int64_t)a3
{
  v5 = [(_UITabContainerView *)self sidebar];
  v6 = [v5 isHidden];

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (a3 == 1)
  {
    v7 = 0;
  }

  if (self->_visibleItem == a3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = [(_UITabContainerView *)self sidebar];
  v10 = [v9 isHidden];

  if (v8 == v10)
  {

    [(_UITabContainerView *)self _updateSidebarAppearanceForMorphTransitionAnimated:1];
  }

  else
  {
    v11 = [(_UITabContainerView *)self sidebar];
    [(UITabBarControllerSidebar *)v11 _setHidden:v8 source:1];
  }
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  v6 = 0.0;
  if ([(_UITabContainerView *)self isShowingFloatingTabBar])
  {
    v7 = [(_UITabContainerView *)self tabBarController];
    v8 = [v7 _tabElements];
    if ([v8 count])
    {
      v9 = [v4 _shouldOverlayTabBar];

      if ((v9 & 1) == 0)
      {
        [(_UITabContainerView *)self _floatingTabBarFittingHeight];
        v6 = v10;
      }
    }

    else
    {
    }
  }

  v11 = 0.0;
  if ([(_UITabContainerView *)self isSidebarOverlappingContent])
  {
    [(_UITabContainerView *)self _currentSidebarWidth];
    v11 = v12;
    v13 = [(UIView *)self _shouldReverseLayoutDirection];
    v5 = v13 ? v11 : 0.0;
    if (v13)
    {
      v11 = 0.0;
    }
  }

  v14 = [(_UITabContainerView *)self tabBarController];
  v15 = [v14 bottomAccessory];

  if (v15)
  {
    [(_UITabContainerView *)self frameForHostedElement:2 options:0];
    v16 = CGRectGetHeight(v21) + 10.0;
  }

  else
  {
    v16 = 0.0;
  }

  v17 = v6;
  v18 = v11;
  v19 = v16;
  v20 = v5;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (double)floatingTabBarTopInsetForViewController:(id)a3
{
  v4 = a3;
  v5 = 0.0;
  if ([(_UITabContainerView *)self isShowingFloatingTabBar])
  {
    v6 = [v4 _hostingNavigationBar];

    if (v6)
    {
      v7 = [(_UITabContainerView *)self _currentPlatformMetrics];
      [v7 verticalPaddingToNavigationBar];
      v9 = v8;

      v10 = [(_UITabContainerView *)self floatingTabBar];
      [v10 contentLayoutFrame];
      v5 = v9 + v11;
    }

    else
    {
      [(_UITabContainerView *)self _floatingTabBarFittingHeight];
      v5 = v12;
    }
  }

  return v5;
}

- (UIEdgeInsets)additionalContentMargins
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  if ([(_UITabContainerView *)self sidebarLayout]== 1 && [(_UITabContainerView *)self _isShowingSidebar])
  {
    [(_UITabContainerView *)self _currentSidebarWidth];
    v7 = v6;
    v8 = [(UIView *)self _shouldReverseLayoutDirection];
    v9 = v7 + 0.0;
    if (v8)
    {
      v4 = v7 + 0.0;
    }

    else
    {
      v4 = 0.0;
    }

    if (v8)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v9;
    }
  }

  v10 = [(_UITabContainerView *)self tabBarController];
  v11 = [v10 bottomAccessory];

  if (v11)
  {
    [(_UITabContainerView *)self frameForHostedElement:2 options:0];
    v3 = CGRectGetHeight(v16) + 10.0;
  }

  v12 = 0.0;
  v13 = v5;
  v14 = v3;
  v15 = v4;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (UIEdgeInsets)bottomAccessoryInsets
{
  v3 = [(_UITabContainerView *)self tabBarController];
  v4 = [v3 bottomAccessory];

  if (v4)
  {
    [(_UITabContainerView *)self frameForHostedElement:2 options:0];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [(UIView *)self bounds];
    MaxY = CGRectGetMaxY(v18);
    v19.origin.x = v6;
    v19.origin.y = v8;
    v19.size.width = v10;
    v19.size.height = v12;
    v14 = MaxY - CGRectGetMinY(v19);
  }

  else
  {
    v14 = 0.0;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  result.right = v17;
  result.bottom = v14;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGRect)adjustedFrameForContentTransitionViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  remainder = a3;
  v8 = [(_UITabContainerView *)self sidebar];
  if ([(UITabBarControllerSidebar *)v8 _isSidebarSupportedAndVisible])
  {
    v9 = [(_UITabContainerView *)self sidebarView];
    v10 = [v9 superview];
    v11 = v10 == 0;
  }

  else
  {
    v11 = 1;
  }

  if ([(_UITabContainerView *)self sidebarLayout]== 1 && !v11)
  {
    [(_UITabContainerView *)self _currentSidebarWidth];
    v13 = v12;
    if ([(UIView *)self _shouldReverseLayoutDirection:*MEMORY[0x1E695F058]])
    {
      v14 = CGRectMaxXEdge;
    }

    else
    {
      v14 = CGRectMinXEdge;
    }

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    CGRectDivide(v21, &v19, &remainder, v13, v14);
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)contentLayoutGuideFrame
{
  v3 = 0.0;
  v4 = 0.0;
  if ([(_UITabContainerView *)self isShowingFloatingTabBar])
  {
    v5 = [(_UITabContainerView *)self tabBarController];
    v6 = [v5 _tabElements];
    v7 = [v6 count];

    if (v7)
    {
      [(_UITabContainerView *)self _floatingTabBarFittingHeight];
      v4 = v8;
    }
  }

  v9 = 0.0;
  if ([(_UITabContainerView *)self _isShowingSidebar])
  {
    [(_UITabContainerView *)self _currentSidebarWidth];
    v9 = v10;
    v11 = [(UIView *)self _shouldReverseLayoutDirection];
    v3 = v11 ? v9 : 0.0;
    if (v11)
    {
      v9 = 0.0;
    }
  }

  v12 = [(_UITabContainerView *)self tabBarController];
  v13 = [v12 bottomAccessory];

  if (v13)
  {
    [(_UITabContainerView *)self frameForHostedElement:2 options:0];
    v14 = CGRectGetHeight(v33) + 10.0;
  }

  else
  {
    v14 = 0.0;
  }

  [(UIView *)self bounds];
  v16 = v9 + v15;
  v18 = v4 + v17;
  v20 = v19 - (v3 + v9);
  v22 = v21 - (v4 + v14);
  [(UIView *)self safeAreaInsets];
  v24 = v23 + v18;
  v27 = v20 - (v25 + v26);
  v29 = v22 - (v23 + v28);
  v30 = v25 + v16;
  v31 = v24;
  v32 = v27;
  result.size.height = v29;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)floatingTabBarContentFrameInCoordinateSpace:(id)a3
{
  v4 = a3;
  [(_UIFloatingTabBar *)self->_floatingTabBar contentLayoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_floatingTabBar center];
  v14 = v13;
  v16 = v15;
  [(UIView *)self->_floatingTabBar bounds];
  v17 = v14 - CGRectGetWidth(v33) * 0.5;
  [(UIView *)self->_floatingTabBar bounds];
  MidX = v6 + v17;
  v19 = v8 + v16 - CGRectGetHeight(v34) * 0.5;
  v35.origin.x = MidX;
  v35.origin.y = v19;
  v35.size.width = v10;
  v35.size.height = v12;
  if (CGRectIsEmpty(v35))
  {
    [(UIView *)self bounds];
    MidX = CGRectGetMidX(v36);
    v12 = 0.0;
    v10 = 0.0;
    v19 = 0.0;
  }

  if (![(_UITabContainerView *)self isEditing])
  {
    v20 = [(UIView *)self->_dimmingView superview];
    if (v20)
    {
    }

    else if (![(_UIFloatingTabBar *)self->_floatingTabBar isInTransitionAnimation])
    {
      goto LABEL_8;
    }
  }

  if (!CGRectIsEmpty(self->_lastFloatingTabBarContentFrame))
  {
    x = self->_lastFloatingTabBarContentFrame.origin.x;
    y = self->_lastFloatingTabBarContentFrame.origin.y;
    width = self->_lastFloatingTabBarContentFrame.size.width;
    height = self->_lastFloatingTabBarContentFrame.size.height;
    goto LABEL_10;
  }

LABEL_8:
  [(UIView *)self convertRect:v4 toCoordinateSpace:MidX, v19, v10, v12];
  x = v21;
  y = v23;
  width = v25;
  height = v27;
  self->_lastFloatingTabBarContentFrame.origin.x = v21;
  self->_lastFloatingTabBarContentFrame.origin.y = v23;
  self->_lastFloatingTabBarContentFrame.size.width = v25;
  self->_lastFloatingTabBarContentFrame.size.height = v27;
LABEL_10:

  v29 = x;
  v30 = y;
  v31 = width;
  v32 = height;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (void)_updateSidebarContentMarginsWithTabBarContentFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(_UITabContainerView *)self floatingTabBar];
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  [v8 convertRect:self toView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(_UITabContainerView *)self sidebarView];
  [v17 frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = [(UIView *)self _shouldReverseLayoutDirection];
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  if (v26)
  {
    MaxX = CGRectGetMaxX(*&v27);
    v41.origin.x = v19;
    v41.origin.y = v21;
    v41.size.width = v23;
    v41.size.height = v25;
    v32 = 0.0;
    if (MaxX <= CGRectGetMinX(v41))
    {
      goto LABEL_10;
    }
  }

  else
  {
    MinX = CGRectGetMinX(*&v27);
    v42.origin.x = v19;
    v42.origin.y = v21;
    v42.size.width = v23;
    v42.size.height = v25;
    v32 = 0.0;
    if (MinX >= CGRectGetMaxX(v42))
    {
      goto LABEL_10;
    }
  }

  v34 = [(_UITabContainerView *)self sidebarView];
  if (!v34)
  {
    goto LABEL_8;
  }

  v35 = v34[53];

  if (v35 == 1)
  {
    [(_UITabContainerView *)self _floatingTabBarFittingHeight];
    v32 = v36 + -8.0;
    goto LABEL_10;
  }

  if (!v35)
  {
LABEL_8:
    v32 = CGRectGetHeight(v39);
  }

LABEL_10:
  self->_sidebarAdditionalEditingInsets.top = v32;
  self->_sidebarAdditionalEditingInsets.bottom = 0.0;
  self->_sidebarAdditionalEditingInsets.right = 0.0;
  self->_sidebarAdditionalEditingInsets.left = 0.0;
  if (!self->_suppressesEditingInsetsChanges && [(_UITabContainerView *)self isEditing])
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74___UITabContainerView__updateSidebarContentMarginsWithTabBarContentFrame___block_invoke;
    aBlock[3] = &unk_1E70F3B20;
    aBlock[4] = self;
    *&aBlock[5] = v32;
    memset(&aBlock[6], 0, 24);
    v37 = _Block_copy(aBlock);
    if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
    {
      v37[2](v37);
    }

    else
    {
      v38 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
      [UIView _animateUsingSpringBehavior:v38 tracking:0 animations:v37 completion:0];
    }
  }
}

- (double)_currentSidebarWidth
{
  [(_UITabContainerView *)self currentSidebarWidth];
  v3 = [(UIView *)self traitCollection];
  v4 = _UISidebarGetPlatformMetrics([v3 userInterfaceIdiom]);

  [v4 narrowWidthMetrics];
  [(UIView *)self _shouldReverseLayoutDirection];
  [(_UITabContainerView *)self pendingSidebarTranslation];
  UIRoundToViewScale(self);
  v6 = v5;

  return v6;
}

- (double)_floatingTabBarTopOffset
{
  if (!_UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar())
  {
    return 4.0;
  }

  v3 = [(_UITabContainerView *)self _currentPlatformMetrics];
  v4 = [(UIView *)self traitCollection];
  v5 = [v4 _presentationSemanticContext];

  [(UIView *)self safeAreaInsets];
  v7 = v6;
  [v3 safeAreaOffset];
  v9 = v8;
  v10 = 0.0;
  if (v5 == 2)
  {
    [v3 verticalOffsetInSheetPresentationContext];
    v10 = v11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBarHost);
  [WeakRetained contentViewVerticalOffsetInTabBarContainer:self];
  v14 = v13;

  [(_UIFloatingTabBar *)self->_floatingTabBar baselineOffsetFromTop];
  v16 = v7 + v9 + v10 + v14 - v15;
  [v3 minimumEdgeOffset];
  v18 = fmax(v16, v17);

  return v18;
}

- (double)_floatingTabBarFittingHeight
{
  v2 = [(_UITabContainerView *)self availableComponent];
  v3 = _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar();
  result = 50.0;
  if ((v3 & v2) != 0)
  {
    return 64.0;
  }

  return result;
}

- (id)_currentPlatformMetrics
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([v2 userInterfaceIdiom]);

  return v3;
}

- (void)_updateToggleAction
{
  v5 = [(_UITabContainerView *)self floatingTabBar];
  v3 = [(_UITabContainerView *)self sidebarView];
  v4 = [(_UITabContainerView *)self _sidebarToggleAction];
  [v5 setSidebarButtonAction:v4];
  [(_UITabOutlineView *)v3 setSidebarButtonAction:v4];
  [(_UITabOutlineView *)v3 setTransitionsToTabBar:?];
}

- (UIAction)_sidebarToggleAction
{
  v3 = [(_UITabContainerView *)self overrideTidebarButtonAction];

  if (v3)
  {
    v4 = [(_UITabContainerView *)self overrideTidebarButtonAction];
  }

  else if ([(_UITabContainerView *)self supportedComponent]== 3)
  {
    sidebarToggleAction = self->_sidebarToggleAction;
    if (!sidebarToggleAction)
    {
      objc_initWeak(&location, self);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __43___UITabContainerView__sidebarToggleAction__block_invoke;
      v9[3] = &unk_1E70F7450;
      objc_copyWeak(&v10, &location);
      v6 = [UIAction actionWithHandler:v9];
      v7 = self->_sidebarToggleAction;
      self->_sidebarToggleAction = v6;

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      sidebarToggleAction = self->_sidebarToggleAction;
    }

    v4 = sidebarToggleAction;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_sidebarResizeTapGestureRecognizer == v6 || self->_sidebarResizeDirectPanGestureRecognizer == v6 || self->_sidebarResizeIndirectPanGestureRecognizer == v6)
  {
    if ([(_UITabContainerView *)self _isShowingSidebar])
    {
      v8 = [(_UITabContainerView *)self _sidebarGestureRecognizerShouldReceiveTouch:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = [a3 view];
  if (v4 == self->_dimmingView)
  {
    v7 = [(_UITabContainerView *)self isEditing];

    if (!v7)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    v4 = [(_UITabContainerView *)self floatingTabBar];
    if (([(UIView *)v4 hasActiveDrag]& 1) != 0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v8 = [(_UITabContainerView *)self sidebarView];
      v5 = [(_UITabOutlineView *)v8 hasActiveDrag]^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_gestureRecognizer:(id)a3 canBePreventedByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_sidebarResizeDirectPanGestureRecognizer == a3 || self->_sidebarResizeIndirectPanGestureRecognizer == a3)
  {
    v9 = [v6 name];
    v8 = [v9 isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setSupportsResizingSidebar:(BOOL)a3
{
  if (self->_supportsResizingSidebar != a3)
  {
    self->_supportsResizingSidebar = a3;
    if (a3)
    {
      v4 = [_UITabSidebarBorderView alloc];
      v5 = [(_UITabSidebarBorderView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      if ([(_UITabContainerView *)self _isShowingSidebar])
      {
        [(UIView *)self addSubview:v5];
      }

      sidebarBorderView = self->_sidebarBorderView;
      self->_sidebarBorderView = v5;
      v7 = v5;

      v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleSidebarResizeTapGestureRecognizer_];
      [(UIGestureRecognizer *)v8 setDelaysTouchesBegan:1];
      [(UITapGestureRecognizer *)v8 setNumberOfTapsRequired:2];
      [(UIGestureRecognizer *)v8 setDelegate:self];
      sidebarResizeTapGestureRecognizer = self->_sidebarResizeTapGestureRecognizer;
      self->_sidebarResizeTapGestureRecognizer = v8;
      v10 = v8;

      [(UIView *)self addGestureRecognizer:v10];
      v11 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleSidebarResizePanGestureRecognizer_];
      [(UIGestureRecognizer *)v11 setAllowedTouchTypes:&unk_1EFE2D708];
      [(UIGestureRecognizer *)v11 setDelaysTouchesBegan:1];
      [(UIPanGestureRecognizer *)v11 setDelegate:self];
      [(UIPanGestureRecognizer *)v11 setMaximumNumberOfTouches:1];
      sidebarResizeDirectPanGestureRecognizer = self->_sidebarResizeDirectPanGestureRecognizer;
      self->_sidebarResizeDirectPanGestureRecognizer = v11;
      v13 = v11;

      [(UIView *)self addGestureRecognizer:v13];
      v14 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handleSidebarResizePanGestureRecognizer_];
      [(UIGestureRecognizer *)v14 setAllowedTouchTypes:&unk_1EFE2D720];
      [(UIGestureRecognizer *)v14 setDelaysTouchesBegan:1];
      [(UIPanGestureRecognizer *)v14 setDelegate:self];
      [(UIPanGestureRecognizer *)v14 _setHysteresis:1.0];
      [(UIPanGestureRecognizer *)v14 setMaximumNumberOfTouches:1];
      sidebarResizeIndirectPanGestureRecognizer = self->_sidebarResizeIndirectPanGestureRecognizer;
      self->_sidebarResizeIndirectPanGestureRecognizer = v14;
      v21 = v14;

      [(UIView *)self addGestureRecognizer:v21];
      v16 = v21;
    }

    else
    {
      v17 = self->_sidebarBorderView;
      if (!v17)
      {
        return;
      }

      [(UIView *)v17 removeFromSuperview];
      v18 = self->_sidebarBorderView;
      self->_sidebarBorderView = 0;

      [(UIView *)self removeGestureRecognizer:self->_sidebarResizeTapGestureRecognizer];
      v19 = self->_sidebarResizeTapGestureRecognizer;
      self->_sidebarResizeTapGestureRecognizer = 0;

      [(UIView *)self removeGestureRecognizer:self->_sidebarResizeDirectPanGestureRecognizer];
      v20 = self->_sidebarResizeDirectPanGestureRecognizer;
      self->_sidebarResizeDirectPanGestureRecognizer = 0;

      [(UIView *)self removeGestureRecognizer:self->_sidebarResizeIndirectPanGestureRecognizer];
      v16 = self->_sidebarResizeIndirectPanGestureRecognizer;
      self->_sidebarResizeIndirectPanGestureRecognizer = 0;
    }
  }
}

- (BOOL)_sidebarGestureRecognizerShouldReceiveTouch:(id)a3
{
  v4 = a3;
  v5 = [(_UITabContainerView *)self sidebarBorderView];
  [v5 _touchInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v4 _isPointerTouch];
  if (v14)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0.0;
  }

  if (v14)
  {
    v16 = v9;
  }

  else
  {
    v16 = -22.0;
  }

  if (v14)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0.0;
  }

  if (v14)
  {
    v18 = v13;
  }

  else
  {
    v18 = -22.0;
  }

  [v5 bounds];
  v20 = v16 + v19;
  v22 = v15 + v21;
  v24 = v23 - (v16 + v18);
  v26 = v25 - (v15 + v17);
  [v4 locationInView:v5];
  v31.x = v27;
  v31.y = v28;
  v32.origin.x = v20;
  v32.origin.y = v22;
  v32.size.width = v24;
  v32.size.height = v26;
  v29 = CGRectContainsPoint(v32, v31);

  return v29;
}

- (void)_handleSidebarResizePanGestureRecognizer:(id)a3
{
  v4 = a3;
  v10 = [v4 view];
  [v4 translationInView:?];
  v6 = v5;
  v7 = [v4 state];

  v8 = 0.0;
  if ((v7 - 4) >= 2)
  {
    if (v7 == 3)
    {
      [(_UITabContainerView *)self _commitSidebarTranslation];
    }

    else
    {
      if (v7 != 2)
      {
        goto LABEL_7;
      }

      v8 = v6;
    }
  }

  [(_UITabContainerView *)self setPendingSidebarTranslation:v8];
LABEL_7:
  [(_UITabContainerView *)self _updateSidebarViewFrame];
  v9 = [(_UITabContainerView *)self delegate];
  [v9 updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:0];
}

- (void)_handleSidebarResizeTapGestureRecognizer:(id)a3
{
  if ([a3 state] == 3)
  {
    [(_UITabContainerView *)self setCurrentSidebarWidth:0.0];
    v4 = [(_UITabContainerView *)self tabCustomizationStore];
    [v4 setPreferredSidebarWidth:0.0];

    v5 = [[_UITabSidebarTransitionAnimator alloc] initWithContainerView:self duration:0.5];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64___UITabContainerView__handleSidebarResizeTapGestureRecognizer___block_invoke;
    v9[3] = &unk_1E70F35B8;
    v9[4] = self;
    v10 = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __64___UITabContainerView__handleSidebarResizeTapGestureRecognizer___block_invoke_2;
    v7[3] = &unk_1E70F5AC0;
    v8 = v10;
    v6 = v10;
    [UIView animateWithDuration:0 delay:v9 usingSpringWithDamping:v7 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  }
}

- (void)_commitSidebarTranslation
{
  [(_UITabContainerView *)self _currentSidebarWidth];
  v4 = v3;
  [(_UITabContainerView *)self setCurrentSidebarWidth:?];
  v5 = [(_UITabContainerView *)self tabCustomizationStore];
  [v5 setPreferredSidebarWidth:v4];
}

- (BOOL)_isTabBarHidden
{
  if (self->_availableComponent)
  {
    v2 = [(_UITabContainerView *)self canShowFloatingUI];
    if (v2)
    {

      LOBYTE(v2) = [(_UITabContainerView *)self suppressTabBar];
    }
  }

  else
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

- (void)updateBottomAccessoryAnimated:(BOOL)a3
{
  v3 = a3;
  [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
  v5 = [(_UITabContainerView *)self tabBarContentLayoutManager];
  [v5 updateHostedElementsAnimated:v3];

  [(UIView *)self setNeedsLayout];
}

- (void)updateSidebarAppearanceStateAnimated:(BOOL)a3 animator:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(UIView *)self traitCollection];
  v8 = [v7 horizontalSizeClass];

  if ([(_UITabContainerView *)self _isTabBarHidden])
  {
    v9 = 0;
  }

  else
  {
    v9 = (v8 == 2) & ~[(_UITabContainerView *)self isEditing];
  }

  alongsideAnimator = self->_alongsideAnimator;
  self->_alongsideAnimator = v6;
  v12 = v6;

  if (v9)
  {
    [(_UITabContainerView *)self _updateSidebarAppearanceForMorphTransitionAnimated:v4];
  }

  else
  {
    [(_UITabContainerView *)self _updateVisibleBarAnimated:v4];
  }

  v11 = self->_alongsideAnimator;
  self->_alongsideAnimator = 0;
}

- (void)_updateSidebarAppearanceForMorphTransitionAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(_UITabContainerView *)self supportedComponent]== 3)
  {
    if (v3 && +[UIView areAnimationsEnabled])
    {
      v5 = [(UIView *)self window];
      v6 = v5 != 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = self->_alongsideAnimator;
    v8 = self->_activeMorphTransition;
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = !v6;
    }

    if (!v9)
    {
      objc_initWeak(&location, self);
      v10 = [(_UITabContainerView *)self _configuredGroupCompletion];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke;
      v23[3] = &unk_1E70F5A28;
      objc_copyWeak(&v24, &location);
      [v10 addNonIncrementingCompletion:v23];
      v11 = [_UITabMorphTransition alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_2;
      v19[3] = &unk_1E7101A88;
      objc_copyWeak(&v22, &location);
      v12 = v10;
      v20 = v12;
      v21 = v7;
      v8 = [(_UITabMorphTransition *)v11 initWithContainer:self groupCompletion:v12 contentAlongsideAnimation:v19];
      v13 = [(_UITabContainerView *)self _morphViewForVisibleItem:self->_visibleItem];
      [(_UITabMorphTransition *)v8 morphToView:v13];
      objc_storeStrong(&self->_activeMorphTransition, v8);
      self->_morphTargetVisibleItem = self->_visibleItem;
      WeakRetained = objc_loadWeakRetained(&self->_floatingTabBarHost);
      [WeakRetained tabBarContainerDidLayoutFloatingTabBar:self];

      objc_destroyWeak(&v22);
      objc_destroyWeak(&v24);

      objc_destroyWeak(&location);
    }

    [(_UITabContainerView *)self updateDimmingViewAnimated:v6];
    if (v6)
    {
      if (self->_isAnimatingEditModeAppearance)
      {
        [(_UITabContainerView *)self _finalizeEditingState];
      }

      [(_UITabContainerView *)self _updateVisibleItemIfNeeded];
      v15 = [(_UITabContainerView *)self _morphViewForVisibleItem:self->_visibleItem];
      v16 = [v15 superview];

      if (!v16)
      {
        [(_UITabContainerView *)self _updateVisibleBarAnimated:0 requireLayout:1 updateDimmingView:0];
      }

      [(_UITabMorphTransition *)v8 morphToView:v15];
    }

    else
    {
      v17 = [(_UITabContainerView *)self delegate];
      [v17 updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:0];

      [(_UITabBarControllerSidebarAnimator *)v7 runAnimations];
      [(_UITabBarControllerSidebarAnimator *)v7 runCompletions];
      transitionGroupCompletion = self->_transitionGroupCompletion;
      if (transitionGroupCompletion)
      {
        [(_UIGroupCompletion *)transitionGroupCompletion completeImmediately];
      }

      else
      {
        [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
      }
    }
  }

  else
  {

    [(_UITabContainerView *)self _updateVisibleBarAnimated:v3];
  }
}

- (void)updateEditModeAppearanceAnimated:(BOOL)a3
{
  v24 = a3;
  v4 = [(_UITabContainerView *)self isEditing];
  v5 = [(_UITabContainerView *)self supportedComponent];
  v6 = [(_UITabContainerView *)self sidebar];
  v7 = 1;
  v8 = [(UITabBarControllerSidebar *)v6 _sidebarViewForEditing:?];

  v9 = [(_UITabContainerView *)self floatingTabBar];
  v10 = [v8 superview];

  v11 = [v9 superview];

  if (v4 || !(v7 = [(_UITabContainerView *)self _isShowingSidebar]))
  {
    v12 = v5 & 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(_UITabContainerView *)self _configuredGroupCompletion];
  [v13 increment];
  self->_isAnimatingEditModeAppearance = 1;
  self->_suppressesEditingInsetsChanges = 1;
  [(_UITabOutlineView *)v8 tabModelEditingStateDidChange];
  [v9 tabModelEditingStateDidChange];
  if (v4)
  {
    [(_UITabOutlineView *)v8 setEditing:v10 != 0 animated:?];
    v14 = v9;
    v15 = 1;
    v16 = v11 != 0;
LABEL_11:
    [v14 setEditing:v15 animated:v16];
    goto LABEL_12;
  }

  if (v7)
  {
    [(_UITabOutlineView *)v8 setEditing:1 animated:?];
  }

  if (v12)
  {
    v14 = v9;
    v15 = 0;
    v16 = 1;
    goto LABEL_11;
  }

LABEL_12:
  [(_UITabContainerView *)self _updateVisibleBarAnimated:v24 requireLayout:1 updateDimmingView:1];
  if (!v10 && v7)
  {
    [v8 setAlpha:0.0];
  }

  if (!v11 && ((v12 ^ 1) & 1) == 0)
  {
    [v9 setAlpha:0.0];
  }

  [(UIView *)self bringSubviewToFront:v9];
  v17 = [(_UITabContainerView *)self sidebarView];
  if (v17)
  {
    v18 = v17[53] == 1;
  }

  else
  {
    v18 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  if (v4)
  {
    v19 = *&self->_sidebarAdditionalEditingInsets.bottom;
    v36 = *&self->_sidebarAdditionalEditingInsets.top;
    v37 = v19;
  }

  v20 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v31 = v36;
  v27[2] = __56___UITabContainerView_updateEditModeAppearanceAnimated___block_invoke;
  v27[3] = &unk_1E7120BB0;
  v33 = v7;
  v28 = v8;
  v29 = v9;
  v34 = v12;
  v35 = v18;
  v32 = v37;
  v30 = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56___UITabContainerView_updateEditModeAppearanceAnimated___block_invoke_2;
  v25[3] = &unk_1E70F3FD8;
  v26 = v13;
  v21 = v13;
  v22 = v9;
  v23 = v8;
  [UIView _animateUsingSpringBehavior:v20 tracking:0 animations:v27 completion:v25];
}

- (id)_configuredGroupCompletion
{
  transitionGroupCompletion = self->_transitionGroupCompletion;
  if (!transitionGroupCompletion)
  {
    v4 = objc_alloc_init(_UIGroupCompletion);
    v5 = self->_transitionGroupCompletion;
    self->_transitionGroupCompletion = v4;

    objc_initWeak(&location, self);
    v6 = self->_transitionGroupCompletion;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __49___UITabContainerView__configuredGroupCompletion__block_invoke;
    v8[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    [(_UIGroupCompletion *)v6 addNonIncrementingCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    transitionGroupCompletion = self->_transitionGroupCompletion;
  }

  return transitionGroupCompletion;
}

- (void)_finalizeEditingState
{
  if (self->_isAnimatingEditModeAppearance)
  {
    v3 = [(_UITabContainerView *)self isEditing];
    v5 = [(_UITabContainerView *)self floatingTabBar];
    v4 = [(_UITabContainerView *)self sidebarView];
    [v5 setAlpha:1.0];
    [v4 setAlpha:1.0];
    [v5 setEditing:v3 animated:0];
    [(_UITabOutlineView *)v4 setEditing:v3 animated:0];
    self->_isAnimatingEditModeAppearance = 0;
    self->_suppressesEditingInsetsChanges = 0;
  }
}

- (void)_horizontalSizeClassDidChange
{
  v3 = [(_UITabContainerView *)self canShowFloatingUI];
  v4 = [(_UITabContainerView *)self floatingTabBar];
  [v4 setShowRecentItem:v3];

  [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
}

- (void)_updateVisibleBarAnimated:(BOOL)a3 requireLayout:(BOOL)a4 updateDimmingView:(BOOL)a5
{
  v55 = a5;
  v5 = a3;
  self->_isUpdatingVisibleBar = 1;
  v7 = [(_UITabContainerView *)self _currentVisibleComponents];
  v58 = [(_UITabContainerView *)self _isTabBarHidden];
  v8 = v7 & 1;
  v53 = (v7 >> 1) & 1;
  v54 = v7 & 4;
  v51 = (v7 >> 2) & 1;
  v60 = v7;
  v10 = (v7 & 9) != 0 && self->_tabBarGroupView != 0;
  v11 = [(_UITabContainerView *)self sidebarView];
  v52 = [(_UITabContainerView *)self floatingTabBar];
  v12 = [(_UITabContainerView *)self tabBarGroupView];
  v13 = [v12 contentView];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = self;
  }

  v16 = v15;

  v17 = [(_UITabContainerView *)self sidebarBorderView];
  v59 = self->_alongsideAnimator;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke;
  v84[3] = &unk_1E7102990;
  v18 = v5 || a4;
  v89 = v10;
  v84[4] = self;
  v57 = v8;
  v90 = v8;
  v19 = v16;
  v20 = v5;
  v50 = v19;
  v85 = v19;
  v91 = v18;
  v92 = v51;
  v21 = v11;
  v86 = v21;
  v22 = v17;
  v87 = v22;
  v93 = v53;
  v23 = v52;
  v88 = v23;
  [UIView performWithoutAnimation:v84];
  if (v55)
  {
    [(_UITabContainerView *)self updateDimmingViewAnimated:v5, v50];
  }

  v24 = *MEMORY[0x1E695EFD0];
  v25 = *(MEMORY[0x1E695EFD0] + 32);
  *&v83.c = *(MEMORY[0x1E695EFD0] + 16);
  *&v83.tx = v25;
  *&v82.a = v24;
  *&v82.c = *&v83.c;
  *&v82.tx = v25;
  *&v83.a = v24;
  v26 = 1.0;
  v27 = 1.0;
  if (v54 == 0 && v58)
  {
    v28 = [v21 _shouldReverseLayoutDirection];
    [(_UITabContainerView *)self _currentSidebarWidth];
    if (!v28)
    {
      v29 = -v29;
    }

    CGAffineTransformMakeTranslation(&v83, v29, 0.0);
    if (v21)
    {
      if (v21[53] == 1)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = 1.0;
      }
    }
  }

  if ((v60 & 2) == 0 && v58)
  {
    [(_UITabContainerView *)self _floatingTabBarFittingHeight];
    v26 = 0.0;
    CGAffineTransformMakeTranslation(&v82, 0.0, -v30);
  }

  if (v21)
  {
    [v21 transform];
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  t2 = v83;
  v31 = CGAffineTransformEqualToTransform(&t1, &t2);
  [v23 alpha];
  v33 = v32;
  if ([(_UITabContainerView *)self canShowFloatingUI])
  {
    v34 = v33 != v26 || !v31;
  }

  else
  {
    v34 = 0;
  }

  if (v33 != v26)
  {
    v35 = [(_UITabContainerView *)self floatingTabBarHost];
    [v35 tabBarContainerWillChangeFloatingTabBarVisibility:self];
  }

  if (v57)
  {
    v36 = [(_UITabContainerView *)self tabBarContentLayoutManager];

    if (v36)
    {
      v37 = v58 || [(_UITabContainerView *)self isBottomBarSuppressed];
      if (self->_isHidingBottomTabBar != v37)
      {
        self->_isHidingBottomTabBar = v37;
        v38 = [(_UITabContainerView *)self tabBarContentLayoutManager];
        [v38 setBarHidden:v37 animated:v20];
      }
    }
  }

  if (v34)
  {
    if (v20)
    {
      v39 = [[_UITabSidebarTransitionAnimator alloc] initWithContainerView:self duration:0.5];
    }

    else
    {
      v39 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_2;
    aBlock[3] = &unk_1E70F6228;
    aBlock[4] = self;
    v78 = v39;
    v79 = v59;
    v41 = v39;
    v40 = _Block_copy(aBlock);
  }

  else
  {
    v40 = 0;
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_5;
  v69[3] = &unk_1E7120BD8;
  v42 = v23;
  v70 = v42;
  v73 = v26;
  v74 = v82;
  v43 = v21;
  v71 = v43;
  v75 = v27;
  v76 = v83;
  v44 = v22;
  v72 = v44;
  v45 = _Block_copy(v69);
  objc_initWeak(&t1, self);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_6;
  v65[3] = &unk_1E7120C00;
  objc_copyWeak(v68, &t1);
  v68[1] = v60;
  v46 = v42;
  v66 = v46;
  v47 = v43;
  v67 = v47;
  v48 = _Block_copy(v65);
  if (v20)
  {
    v49 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.35];
    [UIView _animateUsingSpringBehavior:v49 tracking:0 animations:v45 completion:v48];
    if (v40)
    {
      v40[2](v40);
    }
  }

  else
  {
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke_7;
    v61[3] = &unk_1E70F4940;
    v62 = v45;
    v63 = v48;
    v64 = v40;
    [UIView performWithoutAnimation:v61];

    v49 = v62;
  }

  self->_isUpdatingVisibleBar = 0;
  objc_destroyWeak(v68);
  objc_destroyWeak(&t1);
}

- (int64_t)_currentVisibleComponents
{
  if ([(_UITabContainerView *)self canShowFloatingUI])
  {
    if ([(_UITabContainerView *)self isEditing])
    {
      v3 = 6;
      goto LABEL_5;
    }

    v7 = [(_UITabContainerView *)self sidebar];
    if ([v7 isHidden])
    {

      goto LABEL_11;
    }

    v8 = [(_UITabContainerView *)self availableComponent];

    if ((v8 & 2) == 0)
    {
LABEL_11:
      if ([(_UITabContainerView *)self suppressTabBar])
      {
        v3 = 0;
      }

      else
      {
        v3 = 2 * ([(_UITabContainerView *)self availableComponent]& 1);
      }

      goto LABEL_5;
    }

    v3 = 4;
  }

  else
  {
    v3 = 1;
  }

LABEL_5:
  v4 = [(_UITabContainerView *)self tabBarController];
  v5 = [v4 bottomAccessory];

  if (v5)
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (id)_morphViewForVisibleItem:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [(_UITabContainerView *)self sidebarView];
  }

  else
  {
    if (a3)
    {
      goto LABEL_6;
    }

    v3 = [(_UITabContainerView *)self floatingTabBar];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (void)_handleDimmingViewTap:(id)a3
{
  if ([(_UITabContainerView *)self isEditing])
  {

    [(_UITabContainerView *)self setEditing:0];
  }

  else
  {
    v4 = [(_UITabContainerView *)self sidebar];
    [(UITabBarControllerSidebar *)v4 _setHidden:3 source:?];
  }
}

- (void)updateDimmingViewAnimated:(BOOL)a3
{
  v4 = [(_UITabContainerView *)self isEditing];
  v5 = [(_UITabContainerView *)self sidebarLayout];
  v6 = [(_UITabContainerView *)self sidebar];
  v7 = [(UITabBarControllerSidebar *)v6 _isSidebarSupportedAndVisible];

  if (![(_UITabContainerView *)self canShowFloatingUI])
  {
    goto LABEL_8;
  }

  v8 = v5 != 2 || v4;
  if (v8 & 1) != 0 || ((v7 ^ 1))
  {
    if (!v4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v10 = [(_UITabContainerView *)self _dimmingView];
    v12 = 1.0;
    v11 = 1;
    goto LABEL_12;
  }

  if (!self->_passthroughInteraction)
  {
    goto LABEL_11;
  }

LABEL_8:
  v9 = [(UIView *)self->_dimmingView superview];

  if (!v9)
  {
    return;
  }

  v10 = [(_UITabContainerView *)self _dimmingView];
  v11 = 0;
  v12 = 0.0;
LABEL_12:
  v13 = [v10 superview];

  if (!v13)
  {
    v14 = 1.0;
    if (v11)
    {
      v14 = 0.0;
    }

    [v10 setAlpha:v14];
    [(UIView *)self insertSubview:v10 atIndex:0];
  }

  v15 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49___UITabContainerView_updateDimmingViewAnimated___block_invoke;
  v20[3] = &unk_1E70F32F0;
  v21 = v10;
  v22 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49___UITabContainerView_updateDimmingViewAnimated___block_invoke_2;
  v17[3] = &unk_1E7120C28;
  v19 = v11;
  v18 = v21;
  v16 = v21;
  [UIView _animateUsingSpringBehavior:v15 tracking:0 animations:v20 completion:v17];
}

- (UIView)_dimmingView
{
  dimmingView = self->_dimmingView;
  if (!dimmingView)
  {
    v4 = [UIView alloc];
    [(UIView *)self bounds];
    v5 = [(UIView *)v4 initWithFrame:?];
    [(UIView *)v5 setAutoresizingMask:18];
    v6 = +[UIColor _dimmingViewColor];
    [(UIView *)v5 setBackgroundColor:v6];

    v7 = self->_dimmingView;
    self->_dimmingView = v5;
    v8 = v5;

    v9 = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__handleDimmingViewTap_];
    [(UIGestureRecognizer *)v9 setDelegate:self];
    [(UIView *)v8 addGestureRecognizer:v9];
    v10 = [[UIDropInteraction alloc] initWithDelegate:self];
    [(UIView *)v8 addInteraction:v10];

    dimmingView = self->_dimmingView;
  }

  return dimmingView;
}

- (void)_updatePassthroughScrollInteractionIfNeeded
{
  if (self->_passthroughInteraction)
  {
    v3 = [(_UITabContainerView *)self isSidebarOverlayingContent];
    v4 = [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction view];

    if (v3)
    {
      if (!v4)
      {
        passthroughInteraction = self->_passthroughInteraction;

        [(UIView *)self addInteraction:passthroughInteraction];
      }
    }

    else if (v4)
    {
      v6 = self->_passthroughInteraction;

      [(UIView *)self removeInteraction:v6];
    }
  }
}

- (BOOL)passthroughScrollInteraction:(id)a3 shouldInteractAtLocation:(CGPoint)a4 withEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a3;
  v10 = a5;
  if ([(_UITabContainerView *)self isEditing])
  {
    goto LABEL_8;
  }

  v11 = [(_UITabContainerView *)self sidebarView];

  if (!v11 || [(_UITabContainerView *)self sidebarLayout]!= 2)
  {
    goto LABEL_8;
  }

  v12 = [(_UITabContainerView *)self sidebarView];
  if (!v12)
  {
    v21 = 0;
    lastHitTestWasPassedThroughToInteraction = 0;
    goto LABEL_7;
  }

  v13 = v12[53];

  if (!v13)
  {
LABEL_8:
    lastHitTestWasPassedThroughToInteraction = 0;
    goto LABEL_9;
  }

  self->_lastHitTestWasPassedThroughToInteraction = 0;
  v14 = [v9 view];
  v15 = [(UIView *)self window];
  [v14 convertPoint:v15 toView:{x, y}];
  v17 = v16;
  v19 = v18;

  v20 = [(UIView *)self window];
  v21 = [v20 hitTest:v10 withEvent:{v17, v19}];

  lastHitTestWasPassedThroughToInteraction = self->_lastHitTestWasPassedThroughToInteraction;
LABEL_7:

LABEL_9:
  return lastHitTestWasPassedThroughToInteraction;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  self->_lastHitTestWasPassedThroughToInteraction = 0;
  v11.receiver = self;
  v11.super_class = _UITabContainerView;
  v8 = [(UIView *)&v11 hitTest:v7 withEvent:x, y];
  if (v8 == self)
  {
    if (self->_passthroughInteraction)
    {
      if ([(_UITabContainerView *)self isSidebarOverlayingContent])
      {
        if (![(_UITabContainerView *)self isEditing])
        {
          v9 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:v7];
          [v7 type];
          if (v9)
          {
            self->_lastHitTestWasPassedThroughToInteraction = 1;
          }
        }
      }
    }

    v8 = 0;
  }

  return v8;
}

- (id)preferredFocusEnvironments
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(_UITabContainerView *)self sidebarView];
  v5 = [v4 window];

  if (v5)
  {
    v6 = [(_UITabContainerView *)self sidebarView];
    [v3 addObject:v6];
  }

  v7 = [(_UITabContainerView *)self floatingTabBar];
  v8 = [v7 window];

  if (v8)
  {
    v9 = [(_UITabContainerView *)self floatingTabBar];
    [v3 addObject:v9];
  }

  v10 = [(_UITabContainerView *)self tabBar];
  v11 = [v10 window];

  if (v11)
  {
    v12 = [(_UITabContainerView *)self tabBar];
    [v3 addObject:v12];
  }

  return v3;
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3
{
  v4 = a3;
  v5 = [(_UITabContainerView *)self tabBar];
  v6 = [v5 window];

  if (v6)
  {
    v7 = [v4 _parentGroup];

    if (!v7)
    {
      v13 = [v4 _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem];
      goto LABEL_11;
    }

    v8 = [v4 _parentGroup];
    v9 = self;
    v10 = v8;
    goto LABEL_10;
  }

  v11 = [(_UITabContainerView *)self sidebarView];
  v12 = [v11 window];

  if (v12)
  {
    v9 = [(_UITabContainerView *)self sidebarView];
LABEL_9:
    v8 = v9;
    v10 = v4;
LABEL_10:
    v13 = [v9 resolvedPopoverPresentationControllerSourceItemForTab:v10];

    goto LABEL_11;
  }

  v14 = [(_UITabContainerView *)self floatingTabBar];
  v15 = [v14 window];

  if (v15)
  {
    v9 = [(_UITabContainerView *)self floatingTabBar];
    goto LABEL_9;
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)outlineView:(id)a3 didSelectTab:(id)a4
{
  if (![(_UITabContainerView *)self isEditing:a3])
  {
    v5 = [(UIView *)self->_dimmingView superview];

    if (v5 || [(_UITabContainerView *)self isSidebarOverlayingContent])
    {
      v6 = [(_UITabContainerView *)self sidebar];
      [(UITabBarControllerSidebar *)v6 _setHidden:0 source:?];
    }
  }
}

- (void)outlineViewDidChangeCustomizationStore:(id)a3
{
  v4 = [(_UITabContainerView *)self tabCustomizationStore];
  [v4 preferredSidebarWidth];
  v6 = v5;

  [(_UITabContainerView *)self setCurrentSidebarWidth:v6];

  [(_UITabContainerView *)self _updateSidebarViewFrame];
}

- (BOOL)outlineViewShouldShowCustomizationHeader:(id)a3
{
  v3 = [(_UITabContainerView *)self tabBarController];
  v4 = [v3 _tabElements];
  HasAnyCustomizablePlacement = _UITabItemsHasAnyCustomizablePlacement(v4);

  return HasAnyCustomizablePlacement;
}

- (void)dropInteraction:(id)a3 sessionDidEnter:(id)a4
{
  v5 = a4;
  if ([(_UITabContainerView *)self isEditing])
  {
    v6 = [v5 items];
    v7 = [v6 firstObject];

    v8 = [v5 items];
    if ([v8 count] == 1)
    {
      v9 = [v7 localObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_11:

        goto LABEL_12;
      }

      v8 = [v7 localObject];
      v11 = [v7 previewProvider];
      if (v11)
      {
      }

      else
      {
        v12 = [(_UITabContainerView *)self sidebarView];
        v13 = v12;
        if (v12)
        {
          v14 = *(v12 + 536);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        v16 = [v5 localDragSession];

        if (v15 == v16)
        {
          v17 = [(UIView *)self traitCollection];
          v18 = [v17 userInterfaceStyle];

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __55___UITabContainerView_dropInteraction_sessionDidEnter___block_invoke;
          v19[3] = &unk_1E7120C50;
          v20 = v8;
          v21 = v18;
          [v7 setPreviewProvider:v19];
        }
      }
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (_UITabContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UITabBarController)tabBarController
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);

  return WeakRetained;
}

- (_UITabContainerViewFloatingTabBarHost)floatingTabBarHost
{
  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBarHost);

  return WeakRetained;
}

- (UIEdgeInsets)additionalSidebarInsets
{
  top = self->_additionalSidebarInsets.top;
  left = self->_additionalSidebarInsets.left;
  bottom = self->_additionalSidebarInsets.bottom;
  right = self->_additionalSidebarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)absoluteSidebarInsets
{
  top = self->_absoluteSidebarInsets.top;
  left = self->_absoluteSidebarInsets.left;
  bottom = self->_absoluteSidebarInsets.bottom;
  right = self->_absoluteSidebarInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end