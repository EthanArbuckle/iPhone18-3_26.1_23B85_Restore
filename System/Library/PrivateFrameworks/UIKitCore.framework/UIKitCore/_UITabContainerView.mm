@interface _UITabContainerView
- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)_isShowingSidebar;
- (BOOL)_isTabBarHidden;
- (BOOL)_sidebarGestureRecognizerShouldReceiveTouch:(id)touch;
- (BOOL)canShowFloatingTabBar;
- (BOOL)canShowFloatingUI;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isEditing;
- (BOOL)isShowingFloatingTabBar;
- (BOOL)isSidebarOverlappingContent;
- (BOOL)isSidebarOverlayingContent;
- (BOOL)outlineViewShouldShowCustomizationHeader:(id)header;
- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event;
- (CGRect)adjustedFrameForContentTransitionViewFrame:(CGRect)frame;
- (CGRect)contentLayoutGuideFrame;
- (CGRect)floatingTabBarContentFrameInCoordinateSpace:(id)space;
- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options;
- (UIAction)_sidebarToggleAction;
- (UIEdgeInsets)absoluteSidebarInsets;
- (UIEdgeInsets)additionalContentMargins;
- (UIEdgeInsets)additionalSidebarInsets;
- (UIEdgeInsets)bottomAccessoryInsets;
- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller;
- (UITabBarController)tabBarController;
- (UIView)_dimmingView;
- (_UIFloatingTabBar)floatingTabBar;
- (_UITabContainerView)initWithTabBarController:(id)controller;
- (_UITabContainerViewDelegate)delegate;
- (_UITabContainerViewFloatingTabBarHost)floatingTabBarHost;
- (_UITabOutlineView)sidebarView;
- (double)_currentSidebarWidth;
- (double)_floatingTabBarFittingHeight;
- (double)_floatingTabBarTopOffset;
- (double)floatingTabBarTopInsetForViewController:(id)controller;
- (id)_configuredGroupCompletion;
- (id)_currentPlatformMetrics;
- (id)_morphViewForVisibleItem:(int64_t)item;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)preferredFocusEnvironments;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab;
- (id)sidebar;
- (id)tabCustomizationStore;
- (int64_t)_currentVisibleComponents;
- (int64_t)resolvedAccessoryEnvironmentForEnvironment:(int64_t)environment;
- (void)_commitSidebarTranslation;
- (void)_createViewHierarchy;
- (void)_finalizeEditingState;
- (void)_handleDimmingViewTap:(id)tap;
- (void)_handleSidebarResizePanGestureRecognizer:(id)recognizer;
- (void)_handleSidebarResizeTapGestureRecognizer:(id)recognizer;
- (void)_horizontalSizeClassDidChange;
- (void)_updateBottomTabBarFrame;
- (void)_updateFloatingTabBarFrame;
- (void)_updatePassthroughScrollInteractionIfNeeded;
- (void)_updateSidebarAppearanceForMorphTransitionAnimated:(BOOL)animated;
- (void)_updateSidebarContentMarginsWithTabBarContentFrame:(CGRect)frame;
- (void)_updateSidebarViewFrame;
- (void)_updateToggleAction;
- (void)_updateVisibleBarAnimated:(BOOL)animated requireLayout:(BOOL)layout updateDimmingView:(BOOL)view;
- (void)_updateVisibleItem:(int64_t)item;
- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter;
- (void)layoutSubviews;
- (void)outlineView:(id)view didSelectTab:(id)tab;
- (void)outlineViewDidChangeCustomizationStore:(id)store;
- (void)safeAreaInsetsDidChange;
- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)insets;
- (void)setAdditionalSidebarInsets:(UIEdgeInsets)insets;
- (void)setAvailableComponent:(int64_t)component animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing;
- (void)setFrame:(CGRect)frame;
- (void)setIsBottomBarSuppressed:(BOOL)suppressed;
- (void)setOverrideTidebarButtonAction:(id)action;
- (void)setPreferredSidebarLayout:(int64_t)layout;
- (void)setSupportedComponent:(int64_t)component;
- (void)setSupportsResizingSidebar:(BOOL)sidebar;
- (void)setSuppressTabBar:(BOOL)bar;
- (void)setTabBar:(id)bar;
- (void)updateBottomAccessoryAnimated:(BOOL)animated;
- (void)updateDimmingViewAnimated:(BOOL)animated;
- (void)updateEditModeAppearanceAnimated:(BOOL)animated;
- (void)updateSidebarAppearanceStateAnimated:(BOOL)animated animator:(id)animator;
@end

@implementation _UITabContainerView

- (_UITabContainerView)initWithTabBarController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = _UITabContainerView;
  v5 = [(UIView *)&v12 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_tabBarController, controllerCopy);
    if (controllerCopy)
    {
      v7 = controllerCopy[150];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    customizationStore = [v8 customizationStore];
    [customizationStore preferredSidebarWidth];
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
  tabBarController = [(_UITabContainerView *)self tabBarController];
  sidebar = [tabBarController sidebar];

  return sidebar;
}

- (id)tabCustomizationStore
{
  tabBarController = [(_UITabContainerView *)self tabBarController];
  v3 = tabBarController;
  if (tabBarController)
  {
    v4 = *(tabBarController + 1200);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  customizationStore = [v5 customizationStore];

  return customizationStore;
}

- (BOOL)isEditing
{
  tabBarController = [(_UITabContainerView *)self tabBarController];
  v3 = tabBarController;
  if (tabBarController)
  {
    v4 = *(tabBarController + 1200);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  isEditing = [v5 isEditing];

  return isEditing;
}

- (void)setEditing:(BOOL)editing
{
  editingCopy = editing;
  tabBarController = [(_UITabContainerView *)self tabBarController];
  v7 = tabBarController;
  if (tabBarController)
  {
    v5 = *(tabBarController + 1200);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v6 setEditing:editingCopy];
}

- (_UIFloatingTabBar)floatingTabBar
{
  if (!self->_floatingTabBar && ([(_UITabContainerView *)self supportedComponent]& 1) != 0)
  {
    v3 = [_UIFloatingTabBar alloc];
    v4 = [(_UIFloatingTabBar *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    tabBarController = [(_UITabContainerView *)self tabBarController];
    v6 = tabBarController;
    if (tabBarController)
    {
      v7 = *(tabBarController + 1200);
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
  sidebar = [(_UITabContainerView *)self sidebar];
  _outlineView = [sidebar _outlineView];

  return _outlineView;
}

- (void)setTabBar:(id)bar
{
  barCopy = bar;
  tabBar = self->_tabBar;
  if (tabBar != barCopy)
  {
    v7 = barCopy;
    [(UITabBar *)tabBar _setGlassGroupContainer:?];
    [(UIView *)self->_tabBar removeFromSuperview];
    objc_storeStrong(&self->_tabBar, bar);
    [(UITabBar *)self->_tabBar _setGlassGroupContainer:?];
    [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
    [(_UITabContainerView *)self _updateBottomTabBarFrame];
    barCopy = v7;
  }
}

- (void)_createViewHierarchy
{
  v32[1] = *MEMORY[0x1E69E9840];
  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  _internalTabBar = [(UITabBarController *)WeakRetained _internalTabBar];
  v5 = _internalTabBar;
  if (_internalTabBar)
  {
    v6 = _internalTabBar;
  }

  else
  {
    v7 = [UITabBar alloc];
    v6 = [(UITabBar *)v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v8 = v6;

  [(UIView *)v8 setAutoresizingMask:0];
  objc_storeStrong(&self->_tabBar, v8);
  tabBarController = [(_UITabContainerView *)self tabBarController];
  _scrollPocketCollectorInteraction = [(UITabBarController *)tabBarController _scrollPocketCollectorInteraction];

  v11 = [[_UIScrollPocketContainerInteraction alloc] initWithScrollView:0 edge:1];
  floatingTabBarPocketContainerInteraction = self->_floatingTabBarPocketContainerInteraction;
  self->_floatingTabBarPocketContainerInteraction = v11;

  [(_UIScrollPocketContainerInteraction *)self->_floatingTabBarPocketContainerInteraction _setCollectorInteraction:_scrollPocketCollectorInteraction];
  if (_UIScrollPocketAllowHorizontalPockets())
  {
    v13 = [[_UIScrollPocketInteraction alloc] initWithStyle:0];
    sidebarPocketInteraction = self->_sidebarPocketInteraction;
    self->_sidebarPocketInteraction = v13;

    [(_UIScrollPocketInteraction *)self->_sidebarPocketInteraction _setCollectorInteraction:_scrollPocketCollectorInteraction];
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

    [(_UIScrollPocketContainerInteraction *)self->_bottomTabBarPocketContainerInteraction _setCollectorInteraction:_scrollPocketCollectorInteraction];
    [(UIView *)self->_tabBarGroupView addInteraction:self->_bottomTabBarPocketContainerInteraction];
    v19 = [_UITabBarContentLayoutManager alloc];
    contentView = [(_UIBottomTabBarGroupView *)self->_tabBarGroupView contentView];
    v21 = [(_UITabBarContentLayoutManager *)v19 initWithLayoutHost:self container:contentView];
    tabBarContentLayoutManager = self->_tabBarContentLayoutManager;
    self->_tabBarContentLayoutManager = v21;
  }

  _currentPlatformMetrics = [(_UITabContainerView *)self _currentPlatformMetrics];
  sidebarSupportsPassthroughInOverlay = [_currentPlatformMetrics sidebarSupportsPassthroughInOverlay];

  if (sidebarSupportsPassthroughInOverlay)
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
  delegate = [(_UITabContainerView *)self delegate];
  [delegate safeAreaInsetsDidChange];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
    _currentPlatformMetrics = [(_UITabContainerView *)self _currentPlatformMetrics];
    remainder.origin.x = x;
    remainder.size.width = width;
    remainder.origin.y = 0.0;
    [(_UITabContainerView *)self _floatingTabBarFittingHeight];
    v26 = v17 + v25;
    [_currentPlatformMetrics expandedDropTargetInset];
    height = v26 + v27;
    remainder.size.height = height;
    sidebarView = [(_UITabContainerView *)self sidebarView];
    v30 = sidebarView;
    if (!sidebarView || (y = 0.0, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(sidebarView[46]), vceqzq_f64(sidebarView[47]))))) & 1) == 0))
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
  sidebarView = [(_UITabContainerView *)self sidebarView];
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  supportsFloatingSidebar = [v4 supportsFloatingSidebar];
  if (sidebarView)
  {
    v7 = *(sidebarView + 53) == 1;
  }

  else
  {
    v7 = 0;
  }

  _isShowingSidebar = [(_UITabContainerView *)self isEditing]|| [(_UITabContainerView *)self _isShowingSidebar];
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
  if (_shouldReverseLayoutDirection)
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
    traitCollection2 = [(UIView *)self traitCollection];
    v29 = _UISidebarGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);

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
    if (_shouldReverseLayoutDirection)
    {
      v49 = 13;
    }

    else
    {
      v49 = 7;
    }

    if (_shouldReverseLayoutDirection)
    {
      v50 = v35;
    }

    else
    {
      v50 = v33;
    }

    if (_shouldReverseLayoutDirection)
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
    if (!_shouldReverseLayoutDirection)
    {
      v54 = v44;
    }

    v55 = fmax(v54, v51);
    if (_shouldReverseLayoutDirection)
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
    if (sidebarView)
    {
      sidebarView[63] = Height;
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
  [sidebarView setBounds:{*MEMORY[0x1E695EFF8], v79, v24, Height}];
  [sidebarView setCenter:{v24 * 0.5 + v25, Height * 0.5 + v21}];
  if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
  {
    [sidebarView layoutIfNeeded];
  }

  if (!v7 || [(_UITabContainerView *)self supportsResizingSidebar])
  {
    sidebarBorderView = [(_UITabContainerView *)self sidebarBorderView];
    if (supportsFloatingSidebar)
    {
      v82 = +[UIColor clearColor];
      [sidebarBorderView setBackgroundColor:v82];
    }

    v83 = v25;
    v84 = v21;
    v85 = v24;
    v86 = Height;
    if (_shouldReverseLayoutDirection)
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
    [sidebarBorderView setBounds:{v80, v79, v109, v91}];
    v92 = v91 * 0.5;
    Height = v90;
    v21 = v89;
    [sidebarBorderView setCenter:{v109 * 0.5 + v88, v92 + 0.0}];

    v78 = *&v110[24];
  }

  if (_shouldReverseLayoutDirection)
  {
    v93 = 8;
  }

  else
  {
    v93 = 2;
  }

  [(_UIScrollPocketInteraction *)self->_sidebarPocketInteraction _setEdge:v93];
  if (_shouldReverseLayoutDirection)
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
  if (!_isShowingSidebar)
  {
    v98 = 0.0;
  }

  v121.origin.x = v95;
  v121.origin.y = v21;
  v121.size.width = v94;
  v121.size.height = v96;
  v103 = CGRectGetHeight(v121);
  sidebarPocketInteraction = [(_UITabContainerView *)self sidebarPocketInteraction];
  [sidebarPocketInteraction _setRect:{v99, MinY, v98, v103}];

  delegate = [(_UITabContainerView *)self delegate];
  [delegate didLayoutSidebarView];
}

- (void)_updateBottomTabBarFrame
{
  tabBar = [(_UITabContainerView *)self tabBar];
  window = [tabBar window];
  if (window)
  {
  }

  else
  {
    _expectedSuperviewFollowingAnimation = [tabBar _expectedSuperviewFollowingAnimation];

    if (_expectedSuperviewFollowingAnimation)
    {
      goto LABEL_12;
    }
  }

  tabBarGroupView = [(_UITabContainerView *)self tabBarGroupView];
  [(UIView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [tabBarGroupView contentView];
  [contentView setBounds:{v7, v9, v11, v13}];

  contentView2 = [tabBarGroupView contentView];
  v16 = contentView2;
  if (contentView2)
  {
    selfCopy = contentView2;
  }

  else
  {
    selfCopy = self;
  }

  v18 = selfCopy;

  [(UIView *)v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *MEMORY[0x1E695F060];
  v28 = *(MEMORY[0x1E695F060] + 8);
  [tabBar sizeThatFits:{*MEMORY[0x1E695F060], v28}];
  v30 = v29;
  v32 = v31;
  v58.origin.x = v20;
  v58.origin.y = v22;
  v58.size.width = v24;
  v58.size.height = v26;
  [tabBar setFrame:{0.0, CGRectGetMaxY(v58) - v32, v30, v32}];
  if (tabBarGroupView)
  {
    tabBarContentLayoutManager = [(_UITabContainerView *)self tabBarContentLayoutManager];
    [tabBarContentLayoutManager contentSizeForAllHostedElements];
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
    [tabBarGroupView setBounds:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), slice.size.width, slice.size.height}];
    __asm { FMOV            V2.2D, #0.5 }

    [tabBarGroupView setCenter:{vaddq_f64(slice.origin, vmulq_f64(slice.size, _Q2))}];
    [(UIView *)self bounds];
    v46 = v45;
    v48 = v47;
    v51 = v50 * 0.5 + v49 - CGRectGetMinY(slice);
    contentView3 = [tabBarGroupView contentView];
    [contentView3 setCenter:{v46 + v48 * 0.5, v51}];

    [(UIView *)self _eagerlyUpdateSafeAreaInsetsToDescendant:?];
    tabBarContentLayoutManager2 = [(_UITabContainerView *)self tabBarContentLayoutManager];
    [tabBarContentLayoutManager2 updateLayout];
  }

  [tabBar sizeThatFits:{v27, v28}];
  if (v54 != v32)
  {
    [(_UITabContainerView *)self _updateBottomTabBarFrame];
  }

LABEL_12:
}

- (CGRect)frameForHostedElement:(int64_t)element options:(int64_t)options
{
  if (([(_UITabContainerView *)self _currentVisibleComponents]& 1) != 0)
  {
    tabBar = self->_tabBar;
    if (tabBar)
    {
      [(_UITabBarVisualProvider *)tabBar->_visualProvider frameForHostedElement:element options:options];
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

    tabBarGroupView = [(_UITabContainerView *)self tabBarGroupView];
    contentView = [tabBarGroupView contentView];
    [contentView convertRect:self->_tabBar fromView:{v22, v24, v26, v28}];
    v32 = v31;
    v34 = v33;
    Width = v35;
    v38 = v37;
  }

  else if (element == 2)
  {
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
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
      if (_shouldReverseLayoutDirection)
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
    tabBarController = [(_UITabContainerView *)self tabBarController];
    bottomAccessory = [tabBarController bottomAccessory];
    contentView2 = [bottomAccessory contentView];
    v38 = 64.0;
    [contentView2 sizeThatFits:{Width, 64.0}];
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

- (int64_t)resolvedAccessoryEnvironmentForEnvironment:(int64_t)environment
{
  if ([(_UITabContainerView *)self canShowFloatingUI])
  {
    return 2;
  }

  else
  {
    return environment;
  }
}

- (void)setPreferredSidebarLayout:(int64_t)layout
{
  if (self->_preferredSidebarLayout != layout)
  {
    self->_preferredSidebarLayout = layout;
    [(_UITabContainerView *)self _updateVisibleBarAnimated:0];

    [(_UITabContainerView *)self _updateSidebarViewFrame];
  }
}

- (void)setSupportedComponent:(int64_t)component
{
  if (self->_supportedComponent != component)
  {
    componentCopy = component;
    self->_supportedComponent = component;
    sidebar = [(_UITabContainerView *)self sidebar];
    v8 = sidebar;
    if ((componentCopy & 2) != 0)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    [(UITabBarControllerSidebar *)sidebar _setSidebarViewDelegate:selfCopy];
  }
}

- (void)setAvailableComponent:(int64_t)component animated:(BOOL)animated
{
  if (self->_availableComponent != component)
  {
    animatedCopy = animated;
    self->_availableComponent = component;
    [(_UITabContainerView *)self _updateToggleAction];

    [(_UITabContainerView *)self _updateVisibleBarAnimated:animatedCopy];
  }
}

- (void)setIsBottomBarSuppressed:(BOOL)suppressed
{
  if (self->_isBottomBarSuppressed != suppressed)
  {
    self->_isBottomBarSuppressed = suppressed;
    [(_UITabContainerView *)self _updateVisibleBarAnimated:1];
  }
}

- (void)setSuppressTabBar:(BOOL)bar
{
  if (self->_suppressTabBar != bar)
  {
    self->_suppressTabBar = bar;
    if ([(_UITabContainerView *)self canShowFloatingUI])
    {
      [(_UITabContainerView *)self _updateVisibleBarAnimated:1];

      [(_UITabContainerView *)self _updateToggleAction];
    }
  }
}

- (void)setOverrideTidebarButtonAction:(id)action
{
  actionCopy = action;
  if (self->_overrideTidebarButtonAction != actionCopy)
  {
    v6 = actionCopy;
    objc_storeStrong(&self->_overrideTidebarButtonAction, action);
    [(_UITabContainerView *)self _updateToggleAction];
    actionCopy = v6;
  }
}

- (void)setAdditionalSidebarInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_additionalSidebarInsets.top), vceqq_f64(v4, *&self->_additionalSidebarInsets.bottom)))) & 1) == 0)
  {
    self->_additionalSidebarInsets = insets;
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setAbsoluteSidebarInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_absoluteSidebarInsets.top), vceqq_f64(v4, *&self->_absoluteSidebarInsets.bottom)))) & 1) == 0)
  {
    self->_absoluteSidebarInsets = insets;
    [(UIView *)self setNeedsLayout];
  }
}

- (BOOL)canShowFloatingUI
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarController);
  traitCollection = [WeakRetained traitCollection];
  v4 = [traitCollection horizontalSizeClass] == 2;

  return v4;
}

- (BOOL)isShowingFloatingTabBar
{
  if ([(_UITabContainerView *)self _hasActiveMorphTransition])
  {
    LOBYTE(canShowFloatingTabBar) = self->_morphTargetVisibleItem == 0;
  }

  else
  {
    canShowFloatingTabBar = [(_UITabContainerView *)self canShowFloatingTabBar];
    if (canShowFloatingTabBar)
    {
      LOBYTE(canShowFloatingTabBar) = ![(_UITabContainerView *)self _isShowingSidebar];
    }
  }

  return canShowFloatingTabBar;
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
  _isShowingSidebar = [(_UITabContainerView *)self _isShowingSidebar];
  if (_isShowingSidebar)
  {
    LOBYTE(_isShowingSidebar) = [(_UITabContainerView *)self sidebarLayout]== 0;
  }

  return _isShowingSidebar;
}

- (BOOL)isSidebarOverlayingContent
{
  sidebarView = [(_UITabContainerView *)self sidebarView];
  window = [sidebarView window];
  if (window)
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
  sidebar = [(_UITabContainerView *)self sidebar];
  _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

  return _isSidebarSupportedAndVisible;
}

- (void)_updateVisibleItem:(int64_t)item
{
  sidebar = [(_UITabContainerView *)self sidebar];
  isHidden = [sidebar isHidden];

  if (item)
  {
    v7 = isHidden;
  }

  else
  {
    v7 = 1;
  }

  if (item == 1)
  {
    v7 = 0;
  }

  if (self->_visibleItem == item)
  {
    v8 = isHidden;
  }

  else
  {
    v8 = v7;
  }

  sidebar2 = [(_UITabContainerView *)self sidebar];
  isHidden2 = [sidebar2 isHidden];

  if (v8 == isHidden2)
  {

    [(_UITabContainerView *)self _updateSidebarAppearanceForMorphTransitionAnimated:1];
  }

  else
  {
    sidebar3 = [(_UITabContainerView *)self sidebar];
    [(UITabBarControllerSidebar *)sidebar3 _setHidden:v8 source:1];
  }
}

- (UIEdgeInsets)edgeInsetsForChildViewController:(id)controller
{
  controllerCopy = controller;
  v5 = 0.0;
  v6 = 0.0;
  if ([(_UITabContainerView *)self isShowingFloatingTabBar])
  {
    tabBarController = [(_UITabContainerView *)self tabBarController];
    _tabElements = [tabBarController _tabElements];
    if ([_tabElements count])
    {
      _shouldOverlayTabBar = [controllerCopy _shouldOverlayTabBar];

      if ((_shouldOverlayTabBar & 1) == 0)
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
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v5 = _shouldReverseLayoutDirection ? v11 : 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v11 = 0.0;
    }
  }

  tabBarController2 = [(_UITabContainerView *)self tabBarController];
  bottomAccessory = [tabBarController2 bottomAccessory];

  if (bottomAccessory)
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

- (double)floatingTabBarTopInsetForViewController:(id)controller
{
  controllerCopy = controller;
  v5 = 0.0;
  if ([(_UITabContainerView *)self isShowingFloatingTabBar])
  {
    _hostingNavigationBar = [controllerCopy _hostingNavigationBar];

    if (_hostingNavigationBar)
    {
      _currentPlatformMetrics = [(_UITabContainerView *)self _currentPlatformMetrics];
      [_currentPlatformMetrics verticalPaddingToNavigationBar];
      v9 = v8;

      floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
      [floatingTabBar contentLayoutFrame];
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
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v9 = v7 + 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v4 = v7 + 0.0;
    }

    else
    {
      v4 = 0.0;
    }

    if (_shouldReverseLayoutDirection)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v9;
    }
  }

  tabBarController = [(_UITabContainerView *)self tabBarController];
  bottomAccessory = [tabBarController bottomAccessory];

  if (bottomAccessory)
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
  tabBarController = [(_UITabContainerView *)self tabBarController];
  bottomAccessory = [tabBarController bottomAccessory];

  if (bottomAccessory)
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

- (CGRect)adjustedFrameForContentTransitionViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  remainder = frame;
  sidebar = [(_UITabContainerView *)self sidebar];
  if ([(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible])
  {
    sidebarView = [(_UITabContainerView *)self sidebarView];
    superview = [sidebarView superview];
    v11 = superview == 0;
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
    tabBarController = [(_UITabContainerView *)self tabBarController];
    _tabElements = [tabBarController _tabElements];
    v7 = [_tabElements count];

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
    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v3 = _shouldReverseLayoutDirection ? v9 : 0.0;
    if (_shouldReverseLayoutDirection)
    {
      v9 = 0.0;
    }
  }

  tabBarController2 = [(_UITabContainerView *)self tabBarController];
  bottomAccessory = [tabBarController2 bottomAccessory];

  if (bottomAccessory)
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

- (CGRect)floatingTabBarContentFrameInCoordinateSpace:(id)space
{
  spaceCopy = space;
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
    superview = [(UIView *)self->_dimmingView superview];
    if (superview)
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
  [(UIView *)self convertRect:spaceCopy toCoordinateSpace:MidX, v19, v10, v12];
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

- (void)_updateSidebarContentMarginsWithTabBarContentFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  [floatingTabBar convertRect:self toView:{x, y, width, height}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sidebarView = [(_UITabContainerView *)self sidebarView];
  [sidebarView frame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v30 = v16;
  if (_shouldReverseLayoutDirection)
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

  sidebarView2 = [(_UITabContainerView *)self sidebarView];
  if (!sidebarView2)
  {
    goto LABEL_8;
  }

  v35 = sidebarView2[53];

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
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UISidebarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

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

  _currentPlatformMetrics = [(_UITabContainerView *)self _currentPlatformMetrics];
  traitCollection = [(UIView *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];

  [(UIView *)self safeAreaInsets];
  v7 = v6;
  [_currentPlatformMetrics safeAreaOffset];
  v9 = v8;
  v10 = 0.0;
  if (_presentationSemanticContext == 2)
  {
    [_currentPlatformMetrics verticalOffsetInSheetPresentationContext];
    v10 = v11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_floatingTabBarHost);
  [WeakRetained contentViewVerticalOffsetInTabBarContainer:self];
  v14 = v13;

  [(_UIFloatingTabBar *)self->_floatingTabBar baselineOffsetFromTop];
  v16 = v7 + v9 + v10 + v14 - v15;
  [_currentPlatformMetrics minimumEdgeOffset];
  v18 = fmax(v16, v17);

  return v18;
}

- (double)_floatingTabBarFittingHeight
{
  availableComponent = [(_UITabContainerView *)self availableComponent];
  v3 = _UITabBarControllerWantsNavigationBarExtensionForFloatingTabBar();
  result = 50.0;
  if ((v3 & availableComponent) != 0)
  {
    return 64.0;
  }

  return result;
}

- (id)_currentPlatformMetrics
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v3;
}

- (void)_updateToggleAction
{
  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  sidebarView = [(_UITabContainerView *)self sidebarView];
  _sidebarToggleAction = [(_UITabContainerView *)self _sidebarToggleAction];
  [floatingTabBar setSidebarButtonAction:_sidebarToggleAction];
  [(_UITabOutlineView *)sidebarView setSidebarButtonAction:_sidebarToggleAction];
  [(_UITabOutlineView *)sidebarView setTransitionsToTabBar:?];
}

- (UIAction)_sidebarToggleAction
{
  overrideTidebarButtonAction = [(_UITabContainerView *)self overrideTidebarButtonAction];

  if (overrideTidebarButtonAction)
  {
    overrideTidebarButtonAction2 = [(_UITabContainerView *)self overrideTidebarButtonAction];
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

    overrideTidebarButtonAction2 = sidebarToggleAction;
  }

  else
  {
    overrideTidebarButtonAction2 = 0;
  }

  return overrideTidebarButtonAction2;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  if (self->_sidebarResizeTapGestureRecognizer == recognizerCopy || self->_sidebarResizeDirectPanGestureRecognizer == recognizerCopy || self->_sidebarResizeIndirectPanGestureRecognizer == recognizerCopy)
  {
    if ([(_UITabContainerView *)self _isShowingSidebar])
    {
      v8 = [(_UITabContainerView *)self _sidebarGestureRecognizerShouldReceiveTouch:touchCopy];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  view = [begin view];
  if (view == self->_dimmingView)
  {
    isEditing = [(_UITabContainerView *)self isEditing];

    if (!isEditing)
    {
      LOBYTE(v5) = 1;
      return v5;
    }

    view = [(_UITabContainerView *)self floatingTabBar];
    if (([(UIView *)view hasActiveDrag]& 1) != 0)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      sidebarView = [(_UITabContainerView *)self sidebarView];
      v5 = [(_UITabOutlineView *)sidebarView hasActiveDrag]^ 1;
    }
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)_gestureRecognizer:(id)recognizer canBePreventedByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  v7 = gestureRecognizerCopy;
  if (self->_sidebarResizeDirectPanGestureRecognizer == recognizer || self->_sidebarResizeIndirectPanGestureRecognizer == recognizer)
  {
    name = [gestureRecognizerCopy name];
    v8 = [name isEqualToString:@"com.apple.UIKit.UIWindowDraggingPan"];
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (void)setSupportsResizingSidebar:(BOOL)sidebar
{
  if (self->_supportsResizingSidebar != sidebar)
  {
    self->_supportsResizingSidebar = sidebar;
    if (sidebar)
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

- (BOOL)_sidebarGestureRecognizerShouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  sidebarBorderView = [(_UITabContainerView *)self sidebarBorderView];
  [sidebarBorderView _touchInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  _isPointerTouch = [touchCopy _isPointerTouch];
  if (_isPointerTouch)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0.0;
  }

  if (_isPointerTouch)
  {
    v16 = v9;
  }

  else
  {
    v16 = -22.0;
  }

  if (_isPointerTouch)
  {
    v17 = v11;
  }

  else
  {
    v17 = 0.0;
  }

  if (_isPointerTouch)
  {
    v18 = v13;
  }

  else
  {
    v18 = -22.0;
  }

  [sidebarBorderView bounds];
  v20 = v16 + v19;
  v22 = v15 + v21;
  v24 = v23 - (v16 + v18);
  v26 = v25 - (v15 + v17);
  [touchCopy locationInView:sidebarBorderView];
  v31.x = v27;
  v31.y = v28;
  v32.origin.x = v20;
  v32.origin.y = v22;
  v32.size.width = v24;
  v32.size.height = v26;
  v29 = CGRectContainsPoint(v32, v31);

  return v29;
}

- (void)_handleSidebarResizePanGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  view = [recognizerCopy view];
  [recognizerCopy translationInView:?];
  v6 = v5;
  state = [recognizerCopy state];

  v8 = 0.0;
  if ((state - 4) >= 2)
  {
    if (state == 3)
    {
      [(_UITabContainerView *)self _commitSidebarTranslation];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_7;
      }

      v8 = v6;
    }
  }

  [(_UITabContainerView *)self setPendingSidebarTranslation:v8];
LABEL_7:
  [(_UITabContainerView *)self _updateSidebarViewFrame];
  delegate = [(_UITabContainerView *)self delegate];
  [delegate updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:0];
}

- (void)_handleSidebarResizeTapGestureRecognizer:(id)recognizer
{
  if ([recognizer state] == 3)
  {
    [(_UITabContainerView *)self setCurrentSidebarWidth:0.0];
    tabCustomizationStore = [(_UITabContainerView *)self tabCustomizationStore];
    [tabCustomizationStore setPreferredSidebarWidth:0.0];

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
  tabCustomizationStore = [(_UITabContainerView *)self tabCustomizationStore];
  [tabCustomizationStore setPreferredSidebarWidth:v4];
}

- (BOOL)_isTabBarHidden
{
  if (self->_availableComponent)
  {
    canShowFloatingUI = [(_UITabContainerView *)self canShowFloatingUI];
    if (canShowFloatingUI)
    {

      LOBYTE(canShowFloatingUI) = [(_UITabContainerView *)self suppressTabBar];
    }
  }

  else
  {
    LOBYTE(canShowFloatingUI) = 1;
  }

  return canShowFloatingUI;
}

- (void)updateBottomAccessoryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
  tabBarContentLayoutManager = [(_UITabContainerView *)self tabBarContentLayoutManager];
  [tabBarContentLayoutManager updateHostedElementsAnimated:animatedCopy];

  [(UIView *)self setNeedsLayout];
}

- (void)updateSidebarAppearanceStateAnimated:(BOOL)animated animator:(id)animator
{
  animatedCopy = animated;
  animatorCopy = animator;
  traitCollection = [(UIView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  if ([(_UITabContainerView *)self _isTabBarHidden])
  {
    v9 = 0;
  }

  else
  {
    v9 = (horizontalSizeClass == 2) & ~[(_UITabContainerView *)self isEditing];
  }

  alongsideAnimator = self->_alongsideAnimator;
  self->_alongsideAnimator = animatorCopy;
  v12 = animatorCopy;

  if (v9)
  {
    [(_UITabContainerView *)self _updateSidebarAppearanceForMorphTransitionAnimated:animatedCopy];
  }

  else
  {
    [(_UITabContainerView *)self _updateVisibleBarAnimated:animatedCopy];
  }

  v11 = self->_alongsideAnimator;
  self->_alongsideAnimator = 0;
}

- (void)_updateSidebarAppearanceForMorphTransitionAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if ([(_UITabContainerView *)self supportedComponent]== 3)
  {
    if (animatedCopy && +[UIView areAnimationsEnabled])
    {
      window = [(UIView *)self window];
      v6 = window != 0;
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
      _configuredGroupCompletion = [(_UITabContainerView *)self _configuredGroupCompletion];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke;
      v23[3] = &unk_1E70F5A28;
      objc_copyWeak(&v24, &location);
      [_configuredGroupCompletion addNonIncrementingCompletion:v23];
      v11 = [_UITabMorphTransition alloc];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74___UITabContainerView__updateSidebarAppearanceForMorphTransitionAnimated___block_invoke_2;
      v19[3] = &unk_1E7101A88;
      objc_copyWeak(&v22, &location);
      v12 = _configuredGroupCompletion;
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
      superview = [v15 superview];

      if (!superview)
      {
        [(_UITabContainerView *)self _updateVisibleBarAnimated:0 requireLayout:1 updateDimmingView:0];
      }

      [(_UITabMorphTransition *)v8 morphToView:v15];
    }

    else
    {
      delegate = [(_UITabContainerView *)self delegate];
      [delegate updateContentLayoutForSidebarAppearanceWithTransitionCoordinator:0];

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

    [(_UITabContainerView *)self _updateVisibleBarAnimated:animatedCopy];
  }
}

- (void)updateEditModeAppearanceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  isEditing = [(_UITabContainerView *)self isEditing];
  supportedComponent = [(_UITabContainerView *)self supportedComponent];
  sidebar = [(_UITabContainerView *)self sidebar];
  v7 = 1;
  v8 = [(UITabBarControllerSidebar *)sidebar _sidebarViewForEditing:?];

  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  superview = [v8 superview];

  superview2 = [floatingTabBar superview];

  if (isEditing || !(v7 = [(_UITabContainerView *)self _isShowingSidebar]))
  {
    v12 = supportedComponent & 1;
  }

  else
  {
    v12 = 0;
  }

  _configuredGroupCompletion = [(_UITabContainerView *)self _configuredGroupCompletion];
  [_configuredGroupCompletion increment];
  self->_isAnimatingEditModeAppearance = 1;
  self->_suppressesEditingInsetsChanges = 1;
  [(_UITabOutlineView *)v8 tabModelEditingStateDidChange];
  [floatingTabBar tabModelEditingStateDidChange];
  if (isEditing)
  {
    [(_UITabOutlineView *)v8 setEditing:superview != 0 animated:?];
    v14 = floatingTabBar;
    v15 = 1;
    v16 = superview2 != 0;
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
    v14 = floatingTabBar;
    v15 = 0;
    v16 = 1;
    goto LABEL_11;
  }

LABEL_12:
  [(_UITabContainerView *)self _updateVisibleBarAnimated:animatedCopy requireLayout:1 updateDimmingView:1];
  if (!superview && v7)
  {
    [v8 setAlpha:0.0];
  }

  if (!superview2 && ((v12 ^ 1) & 1) == 0)
  {
    [floatingTabBar setAlpha:0.0];
  }

  [(UIView *)self bringSubviewToFront:floatingTabBar];
  sidebarView = [(_UITabContainerView *)self sidebarView];
  if (sidebarView)
  {
    v18 = sidebarView[53] == 1;
  }

  else
  {
    v18 = 0;
  }

  v36 = 0u;
  v37 = 0u;
  if (isEditing)
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
  v29 = floatingTabBar;
  v34 = v12;
  v35 = v18;
  v32 = v37;
  selfCopy = self;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __56___UITabContainerView_updateEditModeAppearanceAnimated___block_invoke_2;
  v25[3] = &unk_1E70F3FD8;
  v26 = _configuredGroupCompletion;
  v21 = _configuredGroupCompletion;
  v22 = floatingTabBar;
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
    isEditing = [(_UITabContainerView *)self isEditing];
    floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
    sidebarView = [(_UITabContainerView *)self sidebarView];
    [floatingTabBar setAlpha:1.0];
    [sidebarView setAlpha:1.0];
    [floatingTabBar setEditing:isEditing animated:0];
    [(_UITabOutlineView *)sidebarView setEditing:isEditing animated:0];
    self->_isAnimatingEditModeAppearance = 0;
    self->_suppressesEditingInsetsChanges = 0;
  }
}

- (void)_horizontalSizeClassDidChange
{
  canShowFloatingUI = [(_UITabContainerView *)self canShowFloatingUI];
  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  [floatingTabBar setShowRecentItem:canShowFloatingUI];

  [(_UITabContainerView *)self _updateVisibleBarAnimated:0];
}

- (void)_updateVisibleBarAnimated:(BOOL)animated requireLayout:(BOOL)layout updateDimmingView:(BOOL)view
{
  viewCopy = view;
  animatedCopy = animated;
  self->_isUpdatingVisibleBar = 1;
  _currentVisibleComponents = [(_UITabContainerView *)self _currentVisibleComponents];
  _isTabBarHidden = [(_UITabContainerView *)self _isTabBarHidden];
  v8 = _currentVisibleComponents & 1;
  v53 = (_currentVisibleComponents >> 1) & 1;
  v54 = _currentVisibleComponents & 4;
  v51 = (_currentVisibleComponents >> 2) & 1;
  v60 = _currentVisibleComponents;
  v10 = (_currentVisibleComponents & 9) != 0 && self->_tabBarGroupView != 0;
  sidebarView = [(_UITabContainerView *)self sidebarView];
  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  tabBarGroupView = [(_UITabContainerView *)self tabBarGroupView];
  contentView = [tabBarGroupView contentView];
  v14 = contentView;
  if (contentView)
  {
    selfCopy = contentView;
  }

  else
  {
    selfCopy = self;
  }

  v16 = selfCopy;

  sidebarBorderView = [(_UITabContainerView *)self sidebarBorderView];
  v59 = self->_alongsideAnimator;
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __81___UITabContainerView__updateVisibleBarAnimated_requireLayout_updateDimmingView___block_invoke;
  v84[3] = &unk_1E7102990;
  v18 = animatedCopy || layout;
  v89 = v10;
  v84[4] = self;
  v57 = v8;
  v90 = v8;
  v19 = v16;
  v20 = animatedCopy;
  v50 = v19;
  v85 = v19;
  v91 = v18;
  v92 = v51;
  v21 = sidebarView;
  v86 = v21;
  v22 = sidebarBorderView;
  v87 = v22;
  v93 = v53;
  v23 = floatingTabBar;
  v88 = v23;
  [UIView performWithoutAnimation:v84];
  if (viewCopy)
  {
    [(_UITabContainerView *)self updateDimmingViewAnimated:animatedCopy, v50];
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
  if (v54 == 0 && _isTabBarHidden)
  {
    _shouldReverseLayoutDirection = [v21 _shouldReverseLayoutDirection];
    [(_UITabContainerView *)self _currentSidebarWidth];
    if (!_shouldReverseLayoutDirection)
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

  if ((v60 & 2) == 0 && _isTabBarHidden)
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
    floatingTabBarHost = [(_UITabContainerView *)self floatingTabBarHost];
    [floatingTabBarHost tabBarContainerWillChangeFloatingTabBarVisibility:self];
  }

  if (v57)
  {
    tabBarContentLayoutManager = [(_UITabContainerView *)self tabBarContentLayoutManager];

    if (tabBarContentLayoutManager)
    {
      v37 = _isTabBarHidden || [(_UITabContainerView *)self isBottomBarSuppressed];
      if (self->_isHidingBottomTabBar != v37)
      {
        self->_isHidingBottomTabBar = v37;
        tabBarContentLayoutManager2 = [(_UITabContainerView *)self tabBarContentLayoutManager];
        [tabBarContentLayoutManager2 setBarHidden:v37 animated:v20];
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

    sidebar = [(_UITabContainerView *)self sidebar];
    if ([sidebar isHidden])
    {

      goto LABEL_11;
    }

    availableComponent = [(_UITabContainerView *)self availableComponent];

    if ((availableComponent & 2) == 0)
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
  tabBarController = [(_UITabContainerView *)self tabBarController];
  bottomAccessory = [tabBarController bottomAccessory];

  if (bottomAccessory)
  {
    return v3 | 8;
  }

  else
  {
    return v3;
  }
}

- (id)_morphViewForVisibleItem:(int64_t)item
{
  if (item == 1)
  {
    sidebarView = [(_UITabContainerView *)self sidebarView];
  }

  else
  {
    if (item)
    {
      goto LABEL_6;
    }

    sidebarView = [(_UITabContainerView *)self floatingTabBar];
  }

  a2 = sidebarView;
LABEL_6:

  return a2;
}

- (void)_handleDimmingViewTap:(id)tap
{
  if ([(_UITabContainerView *)self isEditing])
  {

    [(_UITabContainerView *)self setEditing:0];
  }

  else
  {
    sidebar = [(_UITabContainerView *)self sidebar];
    [(UITabBarControllerSidebar *)sidebar _setHidden:3 source:?];
  }
}

- (void)updateDimmingViewAnimated:(BOOL)animated
{
  isEditing = [(_UITabContainerView *)self isEditing];
  sidebarLayout = [(_UITabContainerView *)self sidebarLayout];
  sidebar = [(_UITabContainerView *)self sidebar];
  _isSidebarSupportedAndVisible = [(UITabBarControllerSidebar *)sidebar _isSidebarSupportedAndVisible];

  if (![(_UITabContainerView *)self canShowFloatingUI])
  {
    goto LABEL_8;
  }

  v8 = sidebarLayout != 2 || isEditing;
  if (v8 & 1) != 0 || ((_isSidebarSupportedAndVisible ^ 1))
  {
    if (!isEditing)
    {
      goto LABEL_8;
    }

LABEL_11:
    _dimmingView = [(_UITabContainerView *)self _dimmingView];
    v12 = 1.0;
    v11 = 1;
    goto LABEL_12;
  }

  if (!self->_passthroughInteraction)
  {
    goto LABEL_11;
  }

LABEL_8:
  superview = [(UIView *)self->_dimmingView superview];

  if (!superview)
  {
    return;
  }

  _dimmingView = [(_UITabContainerView *)self _dimmingView];
  v11 = 0;
  v12 = 0.0;
LABEL_12:
  superview2 = [_dimmingView superview];

  if (!superview2)
  {
    v14 = 1.0;
    if (v11)
    {
      v14 = 0.0;
    }

    [_dimmingView setAlpha:v14];
    [(UIView *)self insertSubview:_dimmingView atIndex:0];
  }

  v15 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.25];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __49___UITabContainerView_updateDimmingViewAnimated___block_invoke;
  v20[3] = &unk_1E70F32F0;
  v21 = _dimmingView;
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
    isSidebarOverlayingContent = [(_UITabContainerView *)self isSidebarOverlayingContent];
    view = [(_UIPassthroughScrollInteraction *)self->_passthroughInteraction view];

    if (isSidebarOverlayingContent)
    {
      if (!view)
      {
        passthroughInteraction = self->_passthroughInteraction;

        [(UIView *)self addInteraction:passthroughInteraction];
      }
    }

    else if (view)
    {
      v6 = self->_passthroughInteraction;

      [(UIView *)self removeInteraction:v6];
    }
  }
}

- (BOOL)passthroughScrollInteraction:(id)interaction shouldInteractAtLocation:(CGPoint)location withEvent:(id)event
{
  y = location.y;
  x = location.x;
  interactionCopy = interaction;
  eventCopy = event;
  if ([(_UITabContainerView *)self isEditing])
  {
    goto LABEL_8;
  }

  sidebarView = [(_UITabContainerView *)self sidebarView];

  if (!sidebarView || [(_UITabContainerView *)self sidebarLayout]!= 2)
  {
    goto LABEL_8;
  }

  sidebarView2 = [(_UITabContainerView *)self sidebarView];
  if (!sidebarView2)
  {
    v21 = 0;
    lastHitTestWasPassedThroughToInteraction = 0;
    goto LABEL_7;
  }

  v13 = sidebarView2[53];

  if (!v13)
  {
LABEL_8:
    lastHitTestWasPassedThroughToInteraction = 0;
    goto LABEL_9;
  }

  self->_lastHitTestWasPassedThroughToInteraction = 0;
  view = [interactionCopy view];
  window = [(UIView *)self window];
  [view convertPoint:window toView:{x, y}];
  v17 = v16;
  v19 = v18;

  window2 = [(UIView *)self window];
  v21 = [window2 hitTest:eventCopy withEvent:{v17, v19}];

  lastHitTestWasPassedThroughToInteraction = self->_lastHitTestWasPassedThroughToInteraction;
LABEL_7:

LABEL_9:
  return lastHitTestWasPassedThroughToInteraction;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  self->_lastHitTestWasPassedThroughToInteraction = 0;
  v11.receiver = self;
  v11.super_class = _UITabContainerView;
  v8 = [(UIView *)&v11 hitTest:eventCopy withEvent:x, y];
  if (v8 == self)
  {
    if (self->_passthroughInteraction)
    {
      if ([(_UITabContainerView *)self isSidebarOverlayingContent])
      {
        if (![(_UITabContainerView *)self isEditing])
        {
          v9 = [_UIPassthroughScrollInteraction _shouldEventBePassedThrough:eventCopy];
          [eventCopy type];
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
  sidebarView = [(_UITabContainerView *)self sidebarView];
  window = [sidebarView window];

  if (window)
  {
    sidebarView2 = [(_UITabContainerView *)self sidebarView];
    [v3 addObject:sidebarView2];
  }

  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  window2 = [floatingTabBar window];

  if (window2)
  {
    floatingTabBar2 = [(_UITabContainerView *)self floatingTabBar];
    [v3 addObject:floatingTabBar2];
  }

  tabBar = [(_UITabContainerView *)self tabBar];
  window3 = [tabBar window];

  if (window3)
  {
    tabBar2 = [(_UITabContainerView *)self tabBar];
    [v3 addObject:tabBar2];
  }

  return v3;
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab
{
  tabCopy = tab;
  tabBar = [(_UITabContainerView *)self tabBar];
  window = [tabBar window];

  if (window)
  {
    _parentGroup = [tabCopy _parentGroup];

    if (!_parentGroup)
    {
      _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem = [tabCopy _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem];
      goto LABEL_11;
    }

    _parentGroup2 = [tabCopy _parentGroup];
    selfCopy = self;
    v10 = _parentGroup2;
    goto LABEL_10;
  }

  sidebarView = [(_UITabContainerView *)self sidebarView];
  window2 = [sidebarView window];

  if (window2)
  {
    selfCopy = [(_UITabContainerView *)self sidebarView];
LABEL_9:
    _parentGroup2 = selfCopy;
    v10 = tabCopy;
LABEL_10:
    _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem = [selfCopy resolvedPopoverPresentationControllerSourceItemForTab:v10];

    goto LABEL_11;
  }

  floatingTabBar = [(_UITabContainerView *)self floatingTabBar];
  window3 = [floatingTabBar window];

  if (window3)
  {
    selfCopy = [(_UITabContainerView *)self floatingTabBar];
    goto LABEL_9;
  }

  _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem = 0;
LABEL_11:

  return _resolvedTabBarItemSourceItemForPopoverPresentationControllerSourceItem;
}

- (void)outlineView:(id)view didSelectTab:(id)tab
{
  if (![(_UITabContainerView *)self isEditing:view])
  {
    superview = [(UIView *)self->_dimmingView superview];

    if (superview || [(_UITabContainerView *)self isSidebarOverlayingContent])
    {
      sidebar = [(_UITabContainerView *)self sidebar];
      [(UITabBarControllerSidebar *)sidebar _setHidden:0 source:?];
    }
  }
}

- (void)outlineViewDidChangeCustomizationStore:(id)store
{
  tabCustomizationStore = [(_UITabContainerView *)self tabCustomizationStore];
  [tabCustomizationStore preferredSidebarWidth];
  v6 = v5;

  [(_UITabContainerView *)self setCurrentSidebarWidth:v6];

  [(_UITabContainerView *)self _updateSidebarViewFrame];
}

- (BOOL)outlineViewShouldShowCustomizationHeader:(id)header
{
  tabBarController = [(_UITabContainerView *)self tabBarController];
  _tabElements = [tabBarController _tabElements];
  HasAnyCustomizablePlacement = _UITabItemsHasAnyCustomizablePlacement(_tabElements);

  return HasAnyCustomizablePlacement;
}

- (void)dropInteraction:(id)interaction sessionDidEnter:(id)enter
{
  enterCopy = enter;
  if ([(_UITabContainerView *)self isEditing])
  {
    items = [enterCopy items];
    firstObject = [items firstObject];

    items2 = [enterCopy items];
    if ([items2 count] == 1)
    {
      localObject = [firstObject localObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_11:

        goto LABEL_12;
      }

      items2 = [firstObject localObject];
      previewProvider = [firstObject previewProvider];
      if (previewProvider)
      {
      }

      else
      {
        sidebarView = [(_UITabContainerView *)self sidebarView];
        v13 = sidebarView;
        if (sidebarView)
        {
          v14 = *(sidebarView + 536);
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;
        localDragSession = [enterCopy localDragSession];

        if (v15 == localDragSession)
        {
          traitCollection = [(UIView *)self traitCollection];
          userInterfaceStyle = [traitCollection userInterfaceStyle];

          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __55___UITabContainerView_dropInteraction_sessionDidEnter___block_invoke;
          v19[3] = &unk_1E7120C50;
          v20 = items2;
          v21 = userInterfaceStyle;
          [firstObject setPreviewProvider:v19];
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