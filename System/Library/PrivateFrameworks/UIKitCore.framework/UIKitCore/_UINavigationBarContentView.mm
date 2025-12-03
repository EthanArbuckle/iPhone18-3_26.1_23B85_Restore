@interface _UINavigationBarContentView
- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)range;
- (BOOL)_backButtonLayoutGuideIncludesFullyHiddenConstant;
- (BOOL)_effectiveStaticNavBarButtonLingers;
- (BOOL)_item:(id)_item addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated;
- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated;
- (BOOL)_item:(id)_item removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated;
- (BOOL)_showTitleWithTabBar;
- (BOOL)_useLeadingAlignedTitle;
- (BOOL)compactMetrics;
- (BOOL)isNavItemContentLayoutGuideFlushLeading;
- (BOOL)isNavItemContentLayoutGuideFlushTrailing;
- (BOOL)isRTL;
- (BOOL)updateNavItemContentLayoutGuideAnimationConstraintConstant:(double)constant;
- (CGRect)_overlayRectForFrame:(CGRect)frame inView:(id)view inTargetView:(id)targetView;
- (CGRect)_overlayRectForGuide:(id)guide inTargetView:(id)view;
- (CGRect)_overlayRectForView:(id)view inTargetView:(id)targetView;
- (CGRect)hostedTabBarFrame;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)description;
- (UILayoutGuide)navItemContentLayoutGuide;
- (UIOffset)titlePositionAdjustment;
- (UIView)_effectiveTitleView;
- (_UINavigationBarContentView)initWithFrame:(CGRect)frame visualProvider:(id)provider;
- (_UINavigationBarContentViewDelegate)delegate;
- (_UIPointerInteractionAssistant)assistant;
- (double)_contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton;
- (double)_contentLayoutGuideAnimationConstraintConstantForFullyVisibleButton;
- (double)_intrinsicHeight;
- (double)_resolvedInlineTitleViewAlpha;
- (double)backButtonMargin;
- (double)buttonBarMinimumInterGroupSpace;
- (double)buttonBarMinimumInterItemSpace;
- (double)defaultEdgeSpacing;
- (double)navItemContentLayoutGuideAnimationDistance;
- (double)titleViewContentBaseHeight:(id)height;
- (double)titleViewContentBaselineOffsetFromTop:(id)top;
- (double)titleViewFloatingTabBarHeight:(id)height;
- (double)titleViewLargeTitleHeight:(id)height;
- (id)_accessibility_HUDItemForPoint:(CGPoint)point;
- (id)_accessibility_barButtonItemAtPoint:(CGPoint)point;
- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point;
- (id)_contextMenuInteractionForItem:(id)item;
- (id)_layoutForAugmentedTitleView:(id)view;
- (id)_newLayout;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)titleViewBackButtonMenu:(id)menu;
- (int64_t)_currentContentSize;
- (int64_t)currentContentSize;
- (int64_t)effectiveStyleForStyle:(int64_t)style;
- (unint64_t)edgesPaddingBarButtonItem:(id)item;
- (void)__backButtonAction:(id)action;
- (void)_addCoordinatedAnimation:(id)animation completion:(id)completion;
- (void)_appearanceChanged;
- (void)_clearAllAnimations;
- (void)_clearAssistants;
- (void)_configureBackButton:(id)button;
- (void)_ensureHostedTabBarConstraintsWithUpdateBlock:(id)block;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options;
- (void)_runAllScheduledAnimations:(BOOL)animations;
- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets;
- (void)_setAssistants;
- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)_setupBackButton;
- (void)_setupCenterButtonBar;
- (void)_setupLeadingButtonBarAnimated:(BOOL)animated;
- (void)_setupStaticNavBarButtonAnimated:(BOOL)animated;
- (void)_setupTitleView;
- (void)_setupTrailingButtonBarAnimated:(BOOL)animated;
- (void)_updateLayoutMarginsForLayout:(id)layout;
- (void)_updateNavItemContentLayoutGuideEdgeConstraints;
- (void)_updateStaticNavBarButtonVerticalAlignmentConstraints;
- (void)_updateTitleAlignment;
- (void)adoptLayout:(id)layout;
- (void)adoptNewLayout;
- (void)beginAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange;
- (void)clearTransitionContext;
- (void)endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange;
- (void)ensureBackButtonTruncationOccursWithContext:(id)context;
- (void)layoutMarginsDidChange;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)layoutSubviews;
- (void)prepareToRecordToState:(id)state;
- (void)recordFromStateForTransition:(id)transition;
- (void)recordToStateForTransition:(id)transition;
- (void)relinquishLayout;
- (void)resolvedHeightDidChange;
- (void)setAssistant:(id)assistant;
- (void)setBackButtonItem:(id)item;
- (void)setBarMetrics:(int64_t)metrics;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
- (void)setHostedTabBarEnabled:(BOOL)enabled;
- (void)setHostedTabBarFrame:(CGRect)frame;
- (void)setInlineTitleViewAlpha:(double)alpha;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setRequestedContentSize:(int64_t)size;
- (void)setShouldFadeStaticNavBarButton:(BOOL)button;
- (void)setStaticNavBarButtonItem:(id)item;
- (void)setStaticNavBarButtonLingers:(BOOL)lingers;
- (void)tintColorDidChange;
- (void)titleView:(id)view needsUpdatedContentOverlayRects:(id)rects;
- (void)titleViewChangedPreferredDisplaySize:(id)size;
- (void)titleViewChangedStandardDisplayItems:(id)items;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAccessibilityContents:(id)contents;
- (void)updateAugmentedTitleViewNavigationBarTraitsTo:(id)to from:(id)from;
- (void)updateContentAnimated:(BOOL)animated;
@end

@implementation _UINavigationBarContentView

- (void)_updateNavItemContentLayoutGuideEdgeConstraints
{
  v43[2] = *MEMORY[0x1E69E9840];
  if (self->_navItemContentLayoutGuide)
  {
    goto LABEL_2;
  }

  if (os_variant_has_internal_diagnostics())
  {
    v36 = __UIFaultDebugAssertLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_188A29000, v36, OS_LOG_TYPE_FAULT, "_navItemContentLayoutGuideLeadingConstraint not updated because of missing layout guide", buf, 2u);
    }
  }

  else
  {
    v35 = *(__UILogGetCategoryCachedImpl("Assert", &_updateNavItemContentLayoutGuideEdgeConstraints___s_category) + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v35, OS_LOG_TYPE_ERROR, "_navItemContentLayoutGuideLeadingConstraint not updated because of missing layout guide", buf, 2u);
    }
  }

  if (self->_navItemContentLayoutGuide)
  {
LABEL_2:
    firstObject = [(NSArray *)self->_navItemContentLayoutGuideHorizEdgeConstraints firstObject];
    lastObject = [(NSArray *)self->_navItemContentLayoutGuideHorizEdgeConstraints lastObject];
    navigationBarContentViewFlags = self->_navigationBarContentViewFlags;
    if ((navigationBarContentViewFlags & 0x10) != 0)
    {
      if ((navigationBarContentViewFlags & 0x20) != 0)
      {
        navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint = self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint;
        if (!navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint)
        {
          goto LABEL_14;
        }

        if (self->_staticNavBarButtonTrailing)
        {
          v9 = 6;
        }

        else
        {
          v9 = 5;
        }

        if (v9 != [(NSLayoutConstraint *)navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint firstAttribute])
        {
          [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint setActive:0];
          v10 = self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint;
          self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint = 0;
        }

        if (!self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint)
        {
LABEL_14:
          if (self->_staticNavBarButtonTrailing)
          {
            trailingAnchor = [(UIView *)self trailingAnchor];
            [(UILayoutGuide *)self->_navItemContentLayoutGuide trailingAnchor];
          }

          else
          {
            trailingAnchor = [(UILayoutGuide *)self->_navItemContentLayoutGuide leadingAnchor];
            [(UIView *)self leadingAnchor];
          }
          v25 = ;
          v26 = [trailingAnchor constraintEqualToAnchor:v25];
          v27 = self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint;
          self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint = v26;
        }

        if (self->_staticNavBarButtonTrailing)
        {
          v28 = lastObject;
        }

        else
        {
          v28 = firstObject;
        }

        v29 = v28;
        secondItem = [v29 secondItem];

        if (secondItem == self)
        {
          v34 = 0.0;
        }

        else
        {
          [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyVisibleButton];
          v32 = v31;
          [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton];
          v34 = v32 - v33;
        }

        [v29 setActive:0];
        [(_UINavigationBarContentView *)self updateNavItemContentLayoutGuideAnimationConstraintConstant:v34];
        [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint setActive:1];

        *&self->_navigationBarContentViewFlags &= ~0x20u;
      }

      goto LABEL_41;
    }

    [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint setActive:0];
    staticNavBarButtonItem = self->_staticNavBarButtonItem;
    v7 = staticNavBarButtonItem && ![(UIBarButtonItem *)staticNavBarButtonItem isHidden]|| [(_UINavigationBarContentView *)self _effectiveStaticNavBarButtonLingers];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __78___UINavigationBarContentView__updateNavItemContentLayoutGuideEdgeConstraints__block_invoke;
    v39 = &unk_1E70F8028;
    selfCopy = self;
    v41 = v7;
    v12 = __78___UINavigationBarContentView__updateNavItemContentLayoutGuideEdgeConstraints__block_invoke(v37, firstObject, 1);
    if (v12)
    {
      [firstObject setActive:0];
      staticNavBarButtonTrailing = self->_staticNavBarButtonTrailing;
      leadingAnchor = [(UILayoutGuide *)self->_navItemContentLayoutGuide leadingAnchor];
      if (staticNavBarButtonTrailing || !v7)
      {
        leadingAnchor2 = [(UIView *)self leadingAnchor];
        v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      }

      else
      {
        leadingAnchor2 = [(UIView *)self->_staticNavBarButton trailingAnchor];
        [(_UINavigationBarContentView *)self buttonBarMinimumInterGroupSpace];
        v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
      }

      v17 = v16;

      [v17 setIdentifier:@"UINavItemContentGuide-leading"];
      firstObject = v17;
    }

    else
    {
      [firstObject setActive:1];
    }

    if ((v38)(v37, lastObject, 0))
    {
      [lastObject setActive:0];
      v18 = self->_staticNavBarButtonTrailing && v7;
      trailingAnchor2 = [(UILayoutGuide *)self->_navItemContentLayoutGuide trailingAnchor];
      if (v18)
      {
        leadingAnchor3 = [(UIView *)self->_staticNavBarButton leadingAnchor];
        [(_UINavigationBarContentView *)self buttonBarMinimumInterGroupSpace];
        [trailingAnchor2 constraintEqualToAnchor:leadingAnchor3 constant:-v21];
      }

      else
      {
        leadingAnchor3 = [(UIView *)self trailingAnchor];
        [trailingAnchor2 constraintEqualToAnchor:leadingAnchor3];
      }
      v22 = ;

      [v22 setIdentifier:@"UINavItemContentGuide-trailing"];
      lastObject = v22;
    }

    else
    {
      [lastObject setActive:1];
      if (!v12)
      {
        goto LABEL_41;
      }
    }

    v43[0] = firstObject;
    v43[1] = lastObject;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    navItemContentLayoutGuideHorizEdgeConstraints = self->_navItemContentLayoutGuideHorizEdgeConstraints;
    self->_navItemContentLayoutGuideHorizEdgeConstraints = v23;

    [MEMORY[0x1E69977A0] activateConstraints:self->_navItemContentLayoutGuideHorizEdgeConstraints];
    [(_UINavigationBarContentViewLayout *)self->_layout _updateMarginConstraints];
LABEL_41:
  }
}

- (BOOL)_effectiveStaticNavBarButtonLingers
{
  if ((*&self->_navigationBarContentViewFlags & 0x80) == 0)
  {
    return 0;
  }

  backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
  if (backButton)
  {
    v2 = 0;
  }

  else
  {
    v2 = self->_staticNavBarButton != 0;
  }

  return v2;
}

- (BOOL)isNavItemContentLayoutGuideFlushTrailing
{
  lastObject = [(NSArray *)self->_navItemContentLayoutGuideHorizEdgeConstraints lastObject];
  secondItem = [lastObject secondItem];
  if (lastObject)
  {
    v5 = secondItem == self;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;

  return v6;
}

- (void)_clearAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  [WeakRetained setAssistedView:0 identifier:@"ContentView.staticButton"];

  v4 = objc_loadWeakRetained(&self->_assistant);
  [v4 setAssistedView:0 identifier:@"ContentView.backButton"];

  leadingBar = [(_UINavigationBarContentViewLayout *)self->_layout leadingBar];
  [leadingBar setAssistant:0];

  v6 = objc_loadWeakRetained(&self->_assistant);
  [v6 setAssistedView:0 identifier:@"ContentView.leadingBar"];

  centerBar = [(_UINavigationBarContentViewLayout *)self->_layout centerBar];
  [centerBar setAssistant:0];

  v8 = objc_loadWeakRetained(&self->_assistant);
  [v8 setAssistedView:0 identifier:@"ContentView.centerBar"];

  trailingBar = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
  [trailingBar setAssistant:0];

  v10 = objc_loadWeakRetained(&self->_assistant);
  [v10 setAssistedView:0 identifier:@"ContentView.trailingBar"];

  v11 = objc_loadWeakRetained(&self->_assistant);
  [v11 setAssistedView:0 identifier:@"ContentView.title"];
}

- (void)_setAssistants
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);
  [WeakRetained setAssistedView:self->_staticNavBarButton identifier:@"ContentView.staticButton"];

  v4 = objc_loadWeakRetained(&self->_assistant);
  backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
  [v4 setAssistedView:backButton identifier:@"ContentView.backButton"];

  v6 = objc_loadWeakRetained(&self->_assistant);
  leadingBar = [(_UINavigationBarContentViewLayout *)self->_layout leadingBar];
  [leadingBar setAssistant:v6];

  v8 = objc_loadWeakRetained(&self->_assistant);
  leadingBar2 = [(_UINavigationBarContentViewLayout *)self->_layout leadingBar];
  assistantView = [leadingBar2 assistantView];
  [v8 setAssistedView:assistantView identifier:@"ContentView.leadingBar"];

  v11 = objc_loadWeakRetained(&self->_assistant);
  centerBar = [(_UINavigationBarContentViewLayout *)self->_layout centerBar];
  [centerBar setAssistant:v11];

  v13 = objc_loadWeakRetained(&self->_assistant);
  centerBar2 = [(_UINavigationBarContentViewLayout *)self->_layout centerBar];
  assistantView2 = [centerBar2 assistantView];
  [v13 setAssistedView:assistantView2 identifier:@"ContentView.centerBar"];

  v16 = objc_loadWeakRetained(&self->_assistant);
  trailingBar = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
  [trailingBar setAssistant:v16];

  v18 = objc_loadWeakRetained(&self->_assistant);
  trailingBar2 = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
  assistantView3 = [trailingBar2 assistantView];
  [v18 setAssistedView:assistantView3 identifier:@"ContentView.trailingBar"];

  v22 = objc_loadWeakRetained(&self->_assistant);
  titleControl = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
  [v22 setAssistedView:titleControl identifier:@"ContentView.title"];
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarContentView;
  [(UIView *)&v3 layoutMarginsDidChange];
  [(_UINavigationBarContentView *)self _updateLayoutMarginsForLayout:self->_layout];
}

- (void)_updateTitleAlignment
{
  if ([(_UINavigationBarContentView *)self _useLeadingAlignedTitle])
  {
    v3 = 1;
  }

  else
  {
    v3 = (*&self->_navigationBarContentViewFlags >> 8) & 2;
  }

  layout = self->_layout;

  [(_UINavigationBarContentViewLayout *)layout setTitleAlignment:v3];
}

- (BOOL)_useLeadingAlignedTitle
{
  _effectiveToolbarStyle = [(_UINavigationBarContentView *)self _effectiveToolbarStyle];
  visualProvider = self->_visualProvider;
  v5 = _effectiveToolbarStyle - 1;
  if (visualProvider)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= 2;
  }

  v7 = !v6;
  if (visualProvider)
  {
    v8 = v5 >= 2;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    return v7;
  }

  allowLeadingAlignedLargeTitle = self->_allowLeadingAlignedLargeTitle;
  toolbarStyle = self->_toolbarStyle;

  return [(_UINavigationBarContentViewVisualProvider *)visualProvider useLeadingAlignedLargeTitle:allowLeadingAlignedLargeTitle toolbarStyle:toolbarStyle];
}

- (int64_t)_currentContentSize
{
  requestedContentSize = self->_requestedContentSize;
  if (!requestedContentSize)
  {
    requestedContentSize = self->_barMetrics;
    if (requestedContentSize != 1)
    {
      traitCollection = [(UIView *)self traitCollection];
      _presentationSemanticContext = [traitCollection _presentationSemanticContext];

      requestedContentSize = 2;
      if (_presentationSemanticContext == 2)
      {
        return 3;
      }
    }
  }

  return requestedContentSize;
}

- (void)_setupBackButton
{
  if (self->_backAction)
  {
    goto LABEL_2;
  }

  backActionItem = self->_backActionItem;
  self->_backActionItem = 0;

  if ([(NSArray *)self->_leadingBarButtonItems count])
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSArray *)self->_leadingBarGroups count]== 0;
  }

  if (self->_backButtonItem && !self->_backButtonHidden)
  {
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
    _hideNavigationBarBackButton = [augmentedTitleView _hideNavigationBarBackButton];
    if ((_hideNavigationBarBackButton | v8))
    {
      v11 = _hideNavigationBarBackButton;

      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      leadingItemsSupplementBackItem = self->_leadingItemsSupplementBackItem;

      if (!leadingItemsSupplementBackItem)
      {
        goto LABEL_14;
      }
    }

LABEL_2:
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    if (!backButton)
    {
      traitCollection = [(UIView *)self traitCollection];
      v5 = +[_UIButtonBarButtonVisualProvider visualProviderForIdiom:](_UIButtonBarButtonVisualProvider, "visualProviderForIdiom:", [traitCollection userInterfaceIdiom]);

      v14 = [objc_alloc(objc_msgSend(v5 "buttonBarButtonClass"))];
      [v14 addTarget:self action:sel___backButtonAction_ forControlEvents:0x2000];
      LODWORD(v6) = 1143111680;
      [v14 setContentCompressionResistancePriority:0 forAxis:v6];
      [v14 setSpringLoaded:{+[UIDragInteraction isEnabledByDefault](UIDragInteraction, "isEnabledByDefault")}];
      [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(_UINavigationBarContentViewLayout *)self->_layout setBackButton:v14];

      backButton = v14;
    }

    v15 = backButton;
    [(_UINavigationBarContentView *)self _configureBackButton:backButton];
    [(_UINavigationBarContentViewLayout *)self->_layout setMinimumBackButtonWidth:_minimumBackButtonWidth(self)];
    [(UIBarButtonItem *)self->_backButtonItem _setViewOwner:self];

    return;
  }

LABEL_14:
  layout = self->_layout;

  [(_UINavigationBarContentViewLayout *)layout setBackButton:0];
}

- (void)_setupCenterButtonBar
{
  _effectiveToolbarStyle = [(_UINavigationBarContentView *)self _effectiveToolbarStyle];
  centerSearchBarGroup = [(_UINavigationBarContentViewLayout *)self->_layout centerSearchBarGroup];
  if (centerSearchBarGroup)
  {
    v4 = ![(UIBarButtonItemGroup *)self->_inlineSearchBarGroup isHidden];
  }

  else
  {
    v4 = 0;
  }

  if ([(NSArray *)self->_centerBarGroups count])
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5 || (-[_UINavigationBarContentViewLayout augmentedTitleView](self->_layout, "augmentedTitleView"), (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, v8 = [v6 _hideNavigationBarCenterBarButtons], v7, (v8 & 1) != 0))
  {
    v9 = 0;
  }

  else if (_effectiveToolbarStyle)
  {
    if ((*&self->_navigationBarContentViewFlags & 0x200) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 2;
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setCenterGroupsMode:v9];
  if (self->_centerBarGroups)
  {
    centerBarGroups = self->_centerBarGroups;
  }

  else
  {
    centerBarGroups = MEMORY[0x1E695E0F0];
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setCenterBarGroups:centerBarGroups];
}

- (id)_newLayout
{
  v3 = [[_UINavigationBarContentViewLayout alloc] initWithContentView:self];
  [(_UINavigationBarContentViewLayout *)v3 setMinimumBackButtonWidth:_minimumBackButtonWidth(self)];
  [(_UINavigationBarContentViewLayout *)v3 setRequestedContentSize:[(_UINavigationBarContentView *)self _currentContentSize]];
  [(_UINavigationBarContentView *)self _updateLayoutMarginsForLayout:v3];
  return v3;
}

- (UILayoutGuide)navItemContentLayoutGuide
{
  navItemContentLayoutGuide = self->_navItemContentLayoutGuide;
  if (!navItemContentLayoutGuide)
  {
    v4 = objc_alloc_init(UILayoutGuide);
    v5 = self->_navItemContentLayoutGuide;
    self->_navItemContentLayoutGuide = v4;

    [(UILayoutGuide *)self->_navItemContentLayoutGuide setIdentifier:@"UINavigationBarItemContentLayoutGuide"];
    [(UIView *)self addLayoutGuide:self->_navItemContentLayoutGuide];
    topAnchor = [(UILayoutGuide *)self->_navItemContentLayoutGuide topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v8 setActive:1];

    bottomAnchor = [(UILayoutGuide *)self->_navItemContentLayoutGuide bottomAnchor];
    bottomAnchor2 = [(UIView *)self bottomAnchor];
    v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v11 setActive:1];

    [(_UINavigationBarContentView *)self _updateNavItemContentLayoutGuideEdgeConstraints];
    navItemContentLayoutGuide = self->_navItemContentLayoutGuide;
  }

  return navItemContentLayoutGuide;
}

- (BOOL)isNavItemContentLayoutGuideFlushLeading
{
  firstObject = [(NSArray *)self->_navItemContentLayoutGuideHorizEdgeConstraints firstObject];
  secondItem = [firstObject secondItem];
  if (firstObject)
  {
    v5 = secondItem == self;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;

  return v6;
}

- (double)defaultEdgeSpacing
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 6)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 8.0;
  }

  return v3;
}

- (double)_resolvedInlineTitleViewAlpha
{
  v3 = 1.0;
  if ([(_UINavigationBarContentView *)self hostedTabBarEnabled]&& [(_UINavigationBarContentView *)self isHostedTabBarVisible])
  {
    if ([(_UINavigationBarContentView *)self showTitleWithTabBar])
    {
      v3 = 1.0;
    }

    else
    {
      v3 = 0.0;
    }
  }

  return v3 * self->_inlineTitleViewAlpha;
}

- (BOOL)_showTitleWithTabBar
{
  showTitleWithTabBar = self->_showTitleWithTabBar;
  hostedTabBarVisibilityAffectsTitle = self->_hostedTabBarVisibilityAffectsTitle;
  titleView = self->_titleView;
  if (!titleView)
  {
    if (showTitleWithTabBar)
    {
      goto LABEL_10;
    }

    return self->_titleMenuProvider != 0;
  }

  if (!showTitleWithTabBar)
  {
    v6 = _UINavigationBarCastToAugmentedTitleView(titleView);
    if (!v6)
    {
      return 1;
    }

    v7 = v6;
    if ([v6 _navigationBarHeightShouldBeIncreasedByTabBarHeight])
    {
      useInlineLargeTitleMetrics = self->_useInlineLargeTitleMetrics;

      if (!useInlineLargeTitleMetrics)
      {
LABEL_10:
        if (hostedTabBarVisibilityAffectsTitle)
        {
          return self->_isHostedTabBarVisible;
        }

        return 1;
      }
    }

    else
    {
    }

    return self->_titleMenuProvider != 0;
  }

  if (!hostedTabBarVisibilityAffectsTitle)
  {
    return 1;
  }

  return self->_isHostedTabBarVisible;
}

- (void)_setupTitleView
{
  v3 = _UINavigationBarCastToAugmentedTitleView(self->_titleView);
  v4 = v3;
  if (!v3)
  {
    if (self->_titleView)
    {
      [(_UINavigationBarContentViewLayout *)self->_layout setAugmentedTitleView:0];
      LODWORD(v5) = 1142292480;
      [(_UINavigationBarContentViewLayout *)self->_layout configureWithTitleView:self->_titleView compressionResistancePriority:v5];
LABEL_20:
      [(_UINavigationBarContentViewLayout *)self->_layout setTitlePositionAdjustment:self->_titlePositionAdjustment.horizontal, self->_titlePositionAdjustment.vertical];
      goto LABEL_21;
    }

    v6 = [(NSString *)self->_title length];
    layout = self->_layout;
    v8 = 0;
LABEL_8:
    [(_UINavigationBarContentViewLayout *)layout setAugmentedTitleView:v8];
    if (!v6)
    {
      goto LABEL_14;
    }

    LODWORD(v9) = 1143930880;
    [(_UINavigationBarContentViewLayout *)self->_layout configureWithTitle:self->_title attributes:self->_titleAttributes compressionResistancePriority:v9];
    v10 = self->_layout;
    if (v10)
    {
      [(_UINavigationBarContentViewLayout *)v10 currentButtonBarLayoutInfo];
      if ((v15[58] & 1) == 0)
      {
LABEL_18:
        [(_UINavigationBarContentView *)self _resolvedInlineTitleViewAlpha];
LABEL_19:
        [(_UINavigationBarContentViewLayout *)self->_layout setInlineTitleViewAlpha:v11];
        goto LABEL_20;
      }

      v12 = self->_layout;
      if (v12)
      {
        [(_UINavigationBarContentViewLayout *)v12 currentButtonBarLayoutInfo];
        v11 = 0.0;
        if (v14[57])
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v13 = v14;
    }

    else
    {
      v13 = v15;
    }

    v11 = 0.0;
    v13[2] = 0u;
    v13[3] = 0u;
    *v13 = 0u;
    v13[1] = 0u;
    goto LABEL_18;
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (![v4 _hideNavigationBarStandardTitle])
  {
    v6 = [(NSString *)self->_title length];
    layout = self->_layout;
    v8 = v4;
    goto LABEL_8;
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setAugmentedTitleView:v4];
LABEL_14:
  [(_UINavigationBarContentViewLayout *)self->_layout configureWithoutTitle];
LABEL_21:
  [(_UINavigationBarContentViewLayout *)self->_layout setTitleMenuProvider:self->_titleMenuProvider];
  [(_UINavigationBarContentViewLayout *)self->_layout setDocumentProperties:self->_documentProperties];
  [(_UINavigationBarContentViewLayout *)self->_layout setRenameHandler:self->_renameHandler];
}

- (void)_updateStaticNavBarButtonVerticalAlignmentConstraints
{
  v15[2] = *MEMORY[0x1E69E9840];
  if (self->_staticNavBarButton && [(_UINavigationBarContentViewLayout *)self->_layout active])
  {
    firstObject = [(NSArray *)self->_staticNavBarButtonVerticalAlignmentConstraints firstObject];
    if ([(UIBarButtonItem *)self->_staticNavBarButtonItem _actsAsFakeBackButton])
    {
      backButtonGuide = [(_UINavigationBarContentViewLayout *)self->_layout backButtonGuide];
    }

    else
    {
      layout = self->_layout;
      if (self->_staticNavBarButtonTrailing)
      {
        [(_UINavigationBarContentViewLayout *)layout trailingBarGuide];
      }

      else
      {
        [(_UINavigationBarContentViewLayout *)layout leadingBarGuide];
      }
      backButtonGuide = ;
    }

    v6 = backButtonGuide;
    if (backButtonGuide && (!firstObject || ![firstObject isActive] || v6 != objc_msgSend(firstObject, "secondItem")))
    {
      if (self->_staticNavBarButtonVerticalAlignmentConstraints)
      {
        [MEMORY[0x1E69977A0] deactivateConstraints:?];
      }

      topAnchor = [(UIView *)self->_staticNavBarButton topAnchor];
      topAnchor2 = [v6 topAnchor];
      v9 = [topAnchor constraintEqualToAnchor:topAnchor2];

      [v9 setIdentifier:@"UINav-static-button-top"];
      bottomAnchor = [(UIView *)self->_staticNavBarButton bottomAnchor];
      bottomAnchor2 = [v6 bottomAnchor];
      v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

      [v12 setIdentifier:@"UINav-static-button-bottom"];
      v15[0] = v9;
      v15[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      staticNavBarButtonVerticalAlignmentConstraints = self->_staticNavBarButtonVerticalAlignmentConstraints;
      self->_staticNavBarButtonVerticalAlignmentConstraints = v13;

      [MEMORY[0x1E69977A0] activateConstraints:self->_staticNavBarButtonVerticalAlignmentConstraints];
    }
  }
}

- (double)buttonBarMinimumInterItemSpace
{
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v4 = 8.0;
  if (userInterfaceIdiom == 6)
  {
    v4 = 16.0;
  }

  if (userInterfaceIdiom == 5)
  {
    v5 = 6.0;
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (_UINavigationBarContentView)initWithFrame:(CGRect)frame visualProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v20.receiver = self;
  v20.super_class = _UINavigationBarContentView;
  height = [(_UIBarContentView *)&v20 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_visualProvider, provider);
    _newLayout = [(_UINavigationBarContentView *)v12 _newLayout];
    layout = v12->_layout;
    v12->_layout = _newLayout;

    [(_UINavigationBarContentViewLayout *)v12->_layout setActive:1 contentView:v12];
    [(UIView *)v12 _setHostsLayoutEngine:1];
    v15 = objc_opt_new();
    currentAnimations = v12->_currentAnimations;
    v12->_currentAnimations = v15;

    v17 = objc_opt_new();
    currentCompletions = v12->_currentCompletions;
    v12->_currentCompletions = v17;
  }

  return v12;
}

- (void)setRequestedContentSize:(int64_t)size
{
  barMetrics = [(_UINavigationBarContentView *)self barMetrics];
  if (self->_requestedContentSize != size)
  {
    v6 = barMetrics;
    self->_requestedContentSize = size;
    [(_UINavigationBarContentViewLayout *)self->_layout setRequestedContentSize:[(_UINavigationBarContentView *)self _currentContentSize]];
    if (v6 != [(_UINavigationBarContentView *)self barMetrics])
    {

      [(_UINavigationBarContentView *)self _appearanceChanged];
    }
  }
}

- (int64_t)currentContentSize
{
  if (self->_layout)
  {
    return [(_UINavigationBarContentViewLayout *)self->_layout requestedContentSize];
  }

  else
  {
    return self->_requestedContentSize;
  }
}

- (void)setBarMetrics:(int64_t)metrics
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = 1;
  if (metrics == 101)
  {
    metricsCopy = 0;
  }

  else
  {
    metricsCopy = metrics;
  }

  if (metrics != 102)
  {
    v3 = metricsCopy;
  }

  if (self->_barMetrics != v3)
  {
    self->_barMetrics = v3;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v6 = self->_leadingBarButtonItems;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v20 + 1) + 8 * v10++) _updateView];
        }

        while (v8 != v10);
        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v8);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_trailingBarButtonItems;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15++) _updateView];
        }

        while (v13 != v15);
        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(_UINavigationBarContentViewLayout *)self->_layout setRequestedContentSize:[(_UINavigationBarContentView *)self _currentContentSize]];
  }
}

- (BOOL)compactMetrics
{
  v2 = self->_requestedContentSize - 1;
  if (v2 >= 3)
  {
    LOBYTE(self) = self->_barMetrics == 1;
  }

  else
  {
    LODWORD(self) = 1u >> (v2 & 7);
  }

  return self;
}

- (int64_t)effectiveStyleForStyle:(int64_t)style
{
  if (style == -1)
  {
    styleCopy = 0;
  }

  else
  {
    styleCopy = style;
  }

  if ((styleCopy - 1) <= 1)
  {
    traitCollection = [(UIView *)self traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (horizontalSizeClass == 1)
    {
      return 0;
    }

    else
    {
      return style;
    }
  }

  return styleCopy;
}

- (void)_ensureHostedTabBarConstraintsWithUpdateBlock:(id)block
{
  v22[4] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v5 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  if (!self->_hostedTabBarGuide)
  {
    v6 = objc_alloc_init(UILayoutGuide);
    hostedTabBarGuide = self->_hostedTabBarGuide;
    self->_hostedTabBarGuide = v6;

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TabBarGuide(%p)", self];
    [(UILayoutGuide *)self->_hostedTabBarGuide setIdentifier:v8];

    leftAnchor = [(UILayoutGuide *)self->_hostedTabBarGuide leftAnchor];
    leftAnchor2 = [(UIView *)self leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v22[0] = v19;
    topAnchor = [(UILayoutGuide *)self->_hostedTabBarGuide topAnchor];
    topAnchor2 = [(UIView *)self topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[1] = v11;
    widthAnchor = [(UILayoutGuide *)self->_hostedTabBarGuide widthAnchor];
    v13 = [widthAnchor constraintEqualToConstant:0.0];
    v22[2] = v13;
    heightAnchor = [(UILayoutGuide *)self->_hostedTabBarGuide heightAnchor];
    v15 = [heightAnchor constraintEqualToConstant:0.0];
    v22[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    hostedTabBarConstraints = self->_hostedTabBarConstraints;
    self->_hostedTabBarConstraints = v16;

    v5 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, *(&self->super.super.super.super.isa + v5[466]));
  }

  if ((*&self->_navigationBarContentViewFlags & 0x200) != 0)
  {
    [(UIView *)self addLayoutGuide:self->_hostedTabBarGuide];
    [MEMORY[0x1E69977A0] activateConstraints:*(&self->super.super.super.super.isa + v5[466])];
    v18 = self->_hostedTabBarGuide;
  }

  else
  {
    v18 = 0;
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setTabBarContentGuide:v18];
}

- (void)setHostedTabBarEnabled:(BOOL)enabled
{
  navigationBarContentViewFlags = self->_navigationBarContentViewFlags;
  if (((((navigationBarContentViewFlags & 0x200) == 0) ^ enabled) & 1) == 0)
  {
    if (enabled)
    {
      v4 = 512;
    }

    else
    {
      v4 = 0;
    }

    *&self->_navigationBarContentViewFlags = navigationBarContentViewFlags & 0xFDFF | v4;
    [(_UINavigationBarContentView *)self _ensureHostedTabBarConstraintsWithUpdateBlock:0];
  }
}

- (CGRect)hostedTabBarFrame
{
  [(_UINavigationBarContentView *)self _ensureHostedTabBarConstraintsWithUpdateBlock:0];
  v3 = [(NSArray *)self->_hostedTabBarConstraints objectAtIndexedSubscript:0];
  [v3 constant];
  v5 = v4;
  v6 = [(NSArray *)self->_hostedTabBarConstraints objectAtIndexedSubscript:1];
  [v6 constant];
  v8 = v7;
  v9 = [(NSArray *)self->_hostedTabBarConstraints objectAtIndexedSubscript:2];
  [v9 constant];
  v11 = v10;
  v12 = [(NSArray *)self->_hostedTabBarConstraints objectAtIndexedSubscript:3];
  [v12 constant];
  v14 = v13;

  v15 = v5;
  v16 = v8;
  v17 = v11;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (void)setHostedTabBarFrame:(CGRect)frame
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52___UINavigationBarContentView_setHostedTabBarFrame___block_invoke;
  v3[3] = &__block_descriptor_64_e17_v16__0__NSArray_8l;
  frameCopy = frame;
  [(_UINavigationBarContentView *)self _ensureHostedTabBarConstraintsWithUpdateBlock:v3];
}

- (void)setShouldFadeStaticNavBarButton:(BOOL)button
{
  if (button)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navigationBarContentViewFlags = *&self->_navigationBarContentViewFlags & 0xFFBF | v3;
}

- (void)setStaticNavBarButtonLingers:(BOOL)lingers
{
  if (lingers)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_navigationBarContentViewFlags = *&self->_navigationBarContentViewFlags & 0xFF7F | v3;
}

- (void)beginAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange
{
  if (self->_staticNavBarButton)
  {
    navigationBarContentViewFlags = self->_navigationBarContentViewFlags;
    if ((navigationBarContentViewFlags & 0x10) == 0)
    {
      *&self->_navigationBarContentViewFlags = navigationBarContentViewFlags | 0x30;
      [(_UINavigationBarContentView *)self _updateNavItemContentLayoutGuideEdgeConstraints];
    }
  }
}

- (double)navItemContentLayoutGuideAnimationDistance
{
  [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyVisibleButton];
  v4 = v3;
  [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton];
  return v4 - v5;
}

- (BOOL)_backButtonLayoutGuideIncludesFullyHiddenConstant
{
  backButtonGuide = [(_UINavigationBarContentViewLayout *)self->_layout backButtonGuide];
  [backButtonGuide layoutFrame];
  v3 = CGRectGetWidth(v5) != 0.0;

  return v3;
}

- (BOOL)updateNavItemContentLayoutGuideAnimationConstraintConstant:(double)constant
{
  if ((*&self->_navigationBarContentViewFlags & 0x10) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentView.m" lineNumber:380 description:@"Must send -beginAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange first"];
  }

  if (![(_UINavigationBarContentView *)self _backButtonLayoutGuideIncludesFullyHiddenConstant])
  {
    [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton];
    constant = v5 + constant;
  }

  [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint constant];
  v7 = v6;
  [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint setConstant:constant];
  return v7 != constant;
}

- (void)endAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange
{
  navigationBarContentViewFlags = self->_navigationBarContentViewFlags;
  if ((navigationBarContentViewFlags & 0x10) != 0)
  {
    *&self->_navigationBarContentViewFlags = navigationBarContentViewFlags & 0xFFEF;
    [(_UINavigationBarContentView *)self _updateNavItemContentLayoutGuideEdgeConstraints];
  }
}

- (double)_contentLayoutGuideAnimationConstraintConstantForFullyVisibleButton
{
  if ([(_UINavigationBarContentView *)self _isStaticNavBarButtonOnRight])
  {
    [(UIView *)self bounds];
    MaxX = CGRectGetMaxX(v10);
    [(UIView *)self->_staticNavBarButton frame];
    return MaxX - CGRectGetMinX(v11);
  }

  else
  {
    [(UIView *)self->_staticNavBarButton frame];

    return CGRectGetMaxX(*&v5);
  }
}

- (double)_contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton
{
  backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];

  result = 0.0;
  if (!backButton)
  {
    staticNavBarButtonTrailing = self->_staticNavBarButtonTrailing;
    [(_UINavigationBarContentViewLayout *)self->_layout layoutMargins];
    if (staticNavBarButtonTrailing)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  return result;
}

- (void)_setupStaticNavBarButtonAnimated:(BOOL)animated
{
  staticNavBarButtonItem = self->_staticNavBarButtonItem;
  if (staticNavBarButtonItem && ![(UIBarButtonItem *)staticNavBarButtonItem isHidden])
  {
    if ([(UIBarButtonItem *)self->_staticNavBarButtonItem _actsAsFakeBackButton])
    {
      staticNavBarButton = self->_staticNavBarButton;
      if (staticNavBarButton)
      {
        if ((*&self->_navigationBarContentViewFlags & 0x100) == 0)
        {
          [(UIView *)staticNavBarButton removeFromSuperview];
          v8 = self->_staticNavBarButton;
          self->_staticNavBarButton = 0;

          staticNavBarButtonVerticalAlignmentConstraints = self->_staticNavBarButtonVerticalAlignmentConstraints;
          self->_staticNavBarButtonVerticalAlignmentConstraints = 0;
        }
      }
    }

    v10 = self->_staticNavBarButton;
    if (!v10)
    {
      v11 = [_UIButtonBarButton alloc];
      traitCollection = [(UIView *)self traitCollection];
      v13 = +[_UIButtonBarButtonVisualProvider visualProviderForIdiom:](_UIButtonBarButtonVisualProvider, "visualProviderForIdiom:", [traitCollection userInterfaceIdiom]);
      v14 = [(_UIButtonBarButton *)v11 initWithVisualProvider:v13];
      v15 = self->_staticNavBarButton;
      self->_staticNavBarButton = v14;

      [(UIView *)self->_staticNavBarButton setTranslatesAutoresizingMaskIntoConstraints:0];
      LODWORD(v16) = 1145569280;
      [(UIView *)self->_staticNavBarButton setContentCompressionResistancePriority:0 forAxis:v16];
      v10 = self->_staticNavBarButton;
    }

    [(UIView *)self addSubview:v10];
    if ((*&self->_navigationBarContentViewFlags & 4) == 0)
    {
      visualProvider = [(_UIButtonBarButton *)self->_staticNavBarButton visualProvider];
      contentView = [visualProvider contentView];

      if (contentView)
      {
        goto LABEL_40;
      }
    }

    _actsAsFakeBackButton = [(UIBarButtonItem *)self->_staticNavBarButtonItem _actsAsFakeBackButton];
    v20 = self->_staticNavBarButton;
    v21 = self->_staticNavBarButtonItem;
    if (_actsAsFakeBackButton)
    {
      [(_UIButtonBarButton *)v20 configureBackButtonFromBarItem:v21 withAppearanceDelegate:self];
      v22 = *&self->_navigationBarContentViewFlags | 0x100;
    }

    else
    {
      [(_UIButtonBarButton *)v20 configureFromBarItem:v21 withAppearanceDelegate:self];
      v22 = *&self->_navigationBarContentViewFlags & 0xFEFF;
    }

    *&self->_navigationBarContentViewFlags = v22;
    staticNavBarButtonTrailing = self->_staticNavBarButtonTrailing;
    visualProvider2 = [(_UIButtonBarButton *)self->_staticNavBarButton visualProvider];
    v25 = visualProvider2;
    if (staticNavBarButtonTrailing)
    {
      [visualProvider2 alignmentViewForStaticNavBarButtonTrailing];
    }

    else
    {
      [visualProvider2 alignmentViewForStaticNavBarButtonLeading];
    }
    v26 = ;

    if (self->_staticNavBarButtonTrailing)
    {
      v27 = 6;
    }

    else
    {
      v27 = 5;
    }

    staticNavBarButtonXPositionConstraint = self->_staticNavBarButtonXPositionConstraint;
    if (v26)
    {
      if (!staticNavBarButtonXPositionConstraint || ![(NSLayoutConstraint *)staticNavBarButtonXPositionConstraint isActive])
      {
        goto LABEL_30;
      }

      firstItem = [(NSLayoutConstraint *)self->_staticNavBarButtonXPositionConstraint firstItem];
      v30 = firstItem;
      if (firstItem != v26)
      {

LABEL_30:
        [(NSLayoutConstraint *)self->_staticNavBarButtonXPositionConstraint setActive:0];
        v32 = MEMORY[0x1E69977A0];
        layoutMarginsGuide = [(UIView *)self layoutMarginsGuide];
        v34 = [v32 constraintWithItem:v26 attribute:v27 relatedBy:0 toItem:layoutMarginsGuide attribute:v27 multiplier:1.0 constant:0.0];

        [(NSLayoutConstraint *)v34 setIdentifier:@"UINav_static_button_horiz_position"];
        [(NSLayoutConstraint *)v34 setActive:1];
        v35 = self->_staticNavBarButtonXPositionConstraint;
        self->_staticNavBarButtonXPositionConstraint = v34;

        goto LABEL_31;
      }

      firstAttribute = [(NSLayoutConstraint *)self->_staticNavBarButtonXPositionConstraint firstAttribute];

      if (v27 != firstAttribute)
      {
        goto LABEL_30;
      }
    }

    else
    {
      [(NSLayoutConstraint *)staticNavBarButtonXPositionConstraint setActive:0];
    }

LABEL_31:
    objc_initWeak(&location, self->_staticNavBarButtonItem);
    _isFloating = [(UIBarButtonItem *)self->_staticNavBarButtonItem _isFloating];
    v37 = self->_staticNavBarButtonItem;
    if (_isFloating)
    {
      v38 = v37;
      _configuredFloatableView = [(UIBarButtonItem *)v38 _configuredFloatableView];

      if (!_configuredFloatableView)
      {
        v40 = [_UIButtonBarButton alloc];
        traitCollection2 = [(UIView *)self traitCollection];
        v42 = +[_UIButtonBarButtonVisualProvider visualProviderForIdiom:](_UIButtonBarButtonVisualProvider, "visualProviderForIdiom:", [traitCollection2 userInterfaceIdiom]);
        v43 = [(_UIButtonBarButton *)v40 initWithVisualProvider:v42];

        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __64___UINavigationBarContentView__setupStaticNavBarButtonAnimated___block_invoke;
        v62[3] = &unk_1E70F7450;
        objc_copyWeak(&v63, &location);
        v44 = [UIAction actionWithTitle:&stru_1EFB14550 image:0 identifier:@"com.apple.UIKit.NavigationBar.StaticNavBarButton" handler:v62];
        [(UIControl *)v43 addAction:v44 forControlEvents:0x2000];

        [(UIBarButtonItem *)v38 _setConfiguredFloatableView:v43];
        objc_destroyWeak(&v63);
      }

      [(UIBarButtonItem *)v38 _setReferenceView:self->_staticNavBarButton];
      _configuredFloatableView2 = [(UIBarButtonItem *)v38 _configuredFloatableView];
      [_configuredFloatableView2 configureFromBarItem:v38 withAppearanceDelegate:self];
      [(UIView *)self->_staticNavBarButton setUserInteractionEnabled:0];
      _configuredFloatableView3 = [(UIBarButtonItem *)self->_staticNavBarButtonItem _configuredFloatableView];
      [_configuredFloatableView3 setAlpha:1.0];
    }

    else
    {
      _configuredFloatableView4 = [(UIBarButtonItem *)v37 _configuredFloatableView];
      [_configuredFloatableView4 setAlpha:0.0];

      v48 = self->_staticNavBarButton;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __64___UINavigationBarContentView__setupStaticNavBarButtonAnimated___block_invoke_2;
      v60[3] = &unk_1E70F7450;
      objc_copyWeak(&v61, &location);
      v49 = [UIAction actionWithTitle:&stru_1EFB14550 image:0 identifier:@"com.apple.UIKit.NavigationBar.StaticNavBarButton" handler:v60];
      [(UIControl *)v48 addAction:v49 forControlEvents:0x2000];

      if ([(UIBarButtonItem *)self->_staticNavBarButtonItem _isFloatable])
      {
        _referenceView = [(UIBarButtonItem *)self->_staticNavBarButtonItem _referenceView];

        if (!_referenceView)
        {
          [(UIBarButtonItem *)self->_staticNavBarButtonItem _setReferenceView:self->_staticNavBarButton];
        }
      }

      objc_destroyWeak(&v61);
    }

    objc_destroyWeak(&location);

LABEL_40:
    v6 = 1;
    goto LABEL_41;
  }

  v5 = self->_staticNavBarButton;
  if (v5)
  {
    [(UIView *)self insertSubview:v5 atIndex:0];
  }

  v6 = 0;
LABEL_41:
  if ([(UIBarButtonItem *)self->_staticNavBarButtonItem _isFloating])
  {
    [(UIView *)self->_staticNavBarButton setAlpha:0.0];
  }

  else
  {
    if ((*&self->_navigationBarContentViewFlags & 0x40) != 0)
    {
      [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyHiddenButton];
      v53 = v52;
      [(_UINavigationBarContentView *)self _contentLayoutGuideAnimationConstraintConstantForFullyVisibleButton];
      v55 = v54;
      [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint constant];
      v57 = v56;
      if ([(_UINavigationBarContentView *)self _backButtonLayoutGuideIncludesFullyHiddenConstant])
      {
        v58 = 0.0;
      }

      else
      {
        v58 = v53;
      }

      v59 = fmax(fmin((v57 - v58) / (v55 - v53), 1.0), 0.0);
      v51 = v59 * (v59 * (v59 * v59));
    }

    else
    {
      v51 = 1.0;
      if ((v6 & 1) == 0)
      {
        if ([(_UINavigationBarContentView *)self _effectiveStaticNavBarButtonLingers])
        {
          v51 = 1.0;
        }

        else
        {
          v51 = 0.0;
        }
      }
    }

    [(UIView *)self->_staticNavBarButton setAlpha:v51];
    [(UIView *)self->_staticNavBarButton setUserInteractionEnabled:v51 == 1.0];
  }

  [(_UINavigationBarContentView *)self _updateNavItemContentLayoutGuideEdgeConstraints];
  [(_UINavigationBarContentView *)self _updateStaticNavBarButtonVerticalAlignmentConstraints];
  [(UIBarButtonItem *)self->_staticNavBarButtonItem setView:self->_staticNavBarButton];
  *&self->_navigationBarContentViewFlags &= ~4u;
}

- (void)__backButtonAction:(id)action
{
  backAction = self->_backAction;
  if (backAction)
  {

    [(UIAction *)backAction performWithSender:0 target:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained navigationBarContentViewDidTriggerBackAction:self fromBackButtonItem:self->_backButtonItem];
  }
}

- (void)_configureBackButton:(id)button
{
  buttonCopy = button;
  backButtonItem = self->_backButtonItem;
  if (backButtonItem || self->_backAction)
  {
    v5 = backButtonItem;
    if (self->_backButtonItem || !self->_backAction)
    {
      backActionItem = self->_backActionItem;
      self->_backActionItem = 0;
    }

    else
    {
      v7 = self->_backActionItem;
      if (v7)
      {
        [(UIBarButtonItem *)v7 setPrimaryAction:?];
      }

      else
      {
        v8 = [[UIBarButtonItem alloc] initWithPrimaryAction:self->_backAction];
        v9 = self->_backActionItem;
        self->_backActionItem = v8;
      }

      v10 = self->_backActionItem;
      backActionItem = v5;
      v5 = v10;
    }

    if (self->_toolbarStyle == 2)
    {
      [buttonCopy configureBreadcrumbBackButtonFromBarItem:v5 withAppearanceDelegate:self];
    }

    else
    {
      [buttonCopy configureBackButtonFromBarItem:v5 withAppearanceDelegate:self];
    }
  }
}

- (void)setBackButtonItem:(id)item
{
  itemCopy = item;
  backButtonItem = self->_backButtonItem;
  if (backButtonItem != itemCopy)
  {
    v7 = itemCopy;
    [(UIBarButtonItem *)backButtonItem _setViewOwner:0];
    objc_storeStrong(&self->_backButtonItem, item);
    itemCopy = v7;
  }
}

- (void)setStaticNavBarButtonItem:(id)item
{
  itemCopy = item;
  staticNavBarButtonItem = self->_staticNavBarButtonItem;
  v7 = itemCopy;
  if (itemCopy)
  {
    if ([itemCopy isEqual:staticNavBarButtonItem])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (staticNavBarButtonItem)
  {
LABEL_3:
    objc_storeStrong(&self->_staticNavBarButtonItem, item);
    [(_UINavigationBarContentView *)self setNeedsStaticNavBarButtonUpdate];
  }

LABEL_4:
}

- (void)_setupLeadingButtonBarAnimated:(BOOL)animated
{
  v17[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_leadingBarButtonItems count]|| [(NSArray *)self->_leadingBarGroups count]|| self->_enableAlternatePopItem)
  {
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
    v5 = augmentedTitleView;
    if (augmentedTitleView)
    {
      v6 = [augmentedTitleView _hideNavigationBarLeadingBarButtons] ^ 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setLeadingGroupsMode:v6];
  if ([(NSArray *)self->_leadingBarGroups count])
  {
    v7 = self->_leadingBarGroups;
  }

  else if ([(NSArray *)self->_leadingBarButtonItems count])
  {
    v8 = [[UIBarButtonItemGroup alloc] initWithBarButtonItems:self->_leadingBarButtonItems representativeItem:0];
    v17[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

    objc_storeStrong(&self->_leadingBarGroups, v7);
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setLeadingGroups:v7];
  [(_UINavigationBarContentViewLayout *)self->_layout setEnableAlternatePopItem:self->_enableAlternatePopItem];
  layout = self->_layout;
  if (v6)
  {
    leadingBar = [(_UINavigationBarContentViewLayout *)layout leadingBar];
    leadingVisibleItem = [leadingBar leadingVisibleItem];
    _showsChevron = [leadingVisibleItem _showsChevron];

    if (_showsChevron)
    {
      v13 = 8.0;
    }

    else
    {
      v13 = 0.0;
    }

    leadingBar2 = [(_UINavigationBarContentViewLayout *)self->_layout leadingBar];
    view = [leadingBar2 view];
    [view setDirectionalLayoutMargins:{0.0, 0.0, 0.0, v13}];

    layout = self->_layout;
    v16 = _showsChevron;
  }

  else
  {
    v16 = 0;
  }

  [(_UINavigationBarContentViewLayout *)layout setHasFakedBackButton:v16];
}

- (void)_setupTrailingButtonBarAnimated:(BOOL)animated
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = [(NSArray *)self->_trailingBarButtonItems count]|| [(NSArray *)self->_trailingBarGroups count]|| self->_fixedTrailingGroup != 0;
  trailingSearchBarGroup = [(_UINavigationBarContentViewLayout *)self->_layout trailingSearchBarGroup];
  if (trailingSearchBarGroup)
  {
    v6 = ![(UIBarButtonItemGroup *)self->_inlineSearchBarGroup isHidden];
  }

  else
  {
    v6 = 0;
  }

  if (((v4 | v6) & 1) != 0 || self->_additionalItems || _UIBarsDesktopNavigationBarEnabled())
  {
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
    v8 = augmentedTitleView;
    if (augmentedTitleView)
    {
      v9 = [augmentedTitleView _hideNavigationBarTrailingBarButtons] ^ 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setTrailingGroupsEnabled:v9];
  if ([(NSArray *)self->_trailingBarGroups count])
  {
    v10 = self->_trailingBarGroups;
  }

  else if ([(NSArray *)self->_trailingBarButtonItems count])
  {
    v11 = [UIBarButtonItemGroup alloc];
    reverseObjectEnumerator = [(NSArray *)self->_trailingBarButtonItems reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    v14 = [(UIBarButtonItemGroup *)v11 initWithBarButtonItems:allObjects representativeItem:0];
    v18[0] = v14;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];

    objc_storeStrong(&self->_trailingBarGroups, v10);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setTrailingGroups:v10];
  [(_UINavigationBarContentViewLayout *)self->_layout setFixedTrailingGroup:self->_fixedTrailingGroup];
  additionalOverflowItems = [(_UINavigationBarContentViewLayout *)self->_layout additionalOverflowItems];

  additionalItems = self->_additionalItems;
  [(_UINavigationBarContentViewLayout *)self->_layout setAdditionalOverflowItems:additionalItems];
  if (v9)
  {
    trailingBar = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
    [trailingBar _confirmOwnershipOfFixedGroups];
  }

  if ((additionalOverflowItems != 0) == (additionalItems == 0))
  {
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setInlineTitleViewAlpha:(double)alpha
{
  self->_inlineTitleViewAlpha = alpha;
  [(_UINavigationBarContentView *)self _resolvedInlineTitleViewAlpha];
  [(_UINavigationBarContentViewLayout *)self->_layout setInlineTitleViewAlpha:?];
  layout = self->_layout;
  if (layout)
  {
    [(_UINavigationBarContentViewLayout *)layout currentButtonBarLayoutInfo];
    layout = self->_layout;
    if (BYTE10(v12))
    {
      if (layout)
      {
        [(_UINavigationBarContentViewLayout *)layout currentButtonBarLayoutInfo];
        if (BYTE9(v8))
        {
          return;
        }

        layout = self->_layout;
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
        v5 = 0u;
        v6 = 0u;
      }
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
  }

  [(_UINavigationBarContentViewLayout *)layout _applyInlineTitleViewAlphaImmediately:v5];
}

- (double)_intrinsicHeight
{
  layout = self->_layout;
  if (layout)
  {

    [(_UINavigationBarContentViewLayout *)layout preferredHeight];
  }

  else
  {
    transitionContext = self->_transitionContext;
    if (transitionContext)
    {
      fromLayout = [(_UINavigationBarTransitionContext *)transitionContext fromLayout];
      v7 = fromLayout;
      if (fromLayout)
      {
        v8 = *(fromLayout + 160);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      [v9 preferredHeight];
      v11 = v10;

      toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
      v13 = toLayout;
      if (toLayout)
      {
        v14 = *(toLayout + 160);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      [v15 preferredHeight];
      v17 = v16;

      if (v11 >= v17)
      {
        return v11;
      }

      else
      {
        return v17;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentView.m" lineNumber:1037 description:@"Cannot determine content view height"];

      return 0.0;
    }
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(_UINavigationBarContentView *)self _intrinsicHeight];
  v3 = v2;
  v4 = -1.0;
  result.height = v3;
  result.width = v4;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(_UINavigationBarContentView *)self _intrinsicHeight:fits.width];
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)resolvedHeightDidChange
{
  if (self->_layout)
  {
    navigationBarContentViewFlags = self->_navigationBarContentViewFlags;
    if ((navigationBarContentViewFlags & 2) == 0)
    {
      if (navigationBarContentViewFlags)
      {
        *&self->_navigationBarContentViewFlags = navigationBarContentViewFlags | 2;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54___UINavigationBarContentView_resolvedHeightDidChange__block_invoke;
        block[3] = &unk_1E70F3590;
        block[4] = self;
        dispatch_async(MEMORY[0x1E69E96A0], block);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained navigationBarContentViewDidChangeDesiredHeight:self];
      }
    }
  }
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  layout = self->_layout;
  viewCopy = view;
  augmentedTitleView = [(_UINavigationBarContentViewLayout *)layout augmentedTitleView];

  if (augmentedTitleView == viewCopy)
  {
    *&self->_navigationBarContentViewFlags |= 1u;
    [(_UINavigationBarContentViewLayout *)self->_layout updateAugmentedTitleViewHeight];
    *&self->_navigationBarContentViewFlags &= ~1u;
  }
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentView.m" lineNumber:1089 description:@"Client error attempting to change layout margins of a private view"];
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setLayoutMargins____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Client error attempting to change layout margins of a private view", buf, 2u);
    }
  }
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  if (dyld_program_sdk_at_least())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentView.m" lineNumber:1094 description:@"Client error attempting to change layout margins of a private view"];
  }

  else
  {
    v5 = *(__UILogGetCategoryCachedImpl("Assert", &setDirectionalLayoutMargins____s_category) + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Client error attempting to change layout margins of a private view", buf, 2u);
    }
  }
}

- (void)_setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarContentView;
  [(UIView *)&v3 setDirectionalLayoutMargins:margins.top, margins.leading, margins.bottom, margins.trailing];
}

- (void)_safeAreaInsetsDidChangeFromOldInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  left = insets.left;
  v12.receiver = self;
  v12.super_class = _UINavigationBarContentView;
  [(UIView *)&v12 _safeAreaInsetsDidChangeFromOldInsets:insets.top, insets.left, insets.bottom];
  [(_UINavigationBarContentView *)self _updateLayoutMarginsForLayout:self->_layout];
  [(_UINavigationBarContentViewLayout *)self->_layout updateBackButtonGeometry];
  if ([(_UINavigationBarContentView *)self isAnimatingNavItemContentLayoutGuideForStaticButtonVisibilityChange]&& ![(_UINavigationBarContentView *)self _backButtonLayoutGuideIncludesFullyHiddenConstant])
  {
    _isStaticNavBarButtonOnRight = [(_UINavigationBarContentView *)self _isStaticNavBarButtonOnRight];
    [(UIView *)self safeAreaInsets];
    v9 = v8 - left;
    if (_isStaticNavBarButtonOnRight)
    {
      v10 = v7 - right;
    }

    else
    {
      v10 = v9;
    }

    [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint constant];
    [(NSLayoutConstraint *)self->_navItemContentLayoutGuideStaticButtonVisibilityAnimationConstraint setConstant:v10 + v11];
  }
}

- (void)_updateLayoutMarginsForLayout:(id)layout
{
  layoutCopy = layout;
  [(UIView *)self directionalLayoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_UINavigationBarContentView *)self defaultEdgeSpacing];
  v13 = v12;
  leadingVisibleItem = [layoutCopy leadingVisibleItem];
  trailingVisibleItem = [layoutCopy trailingVisibleItem];
  isCustomViewItem = [leadingVisibleItem isCustomViewItem];
  isCustomViewItem2 = [trailingVisibleItem isCustomViewItem];
  v18 = isCustomViewItem2;
  if (!isCustomViewItem)
  {
    v7 = v7 - v13;
  }

  if (!isCustomViewItem2)
  {
    v11 = v11 - v13;
  }

  [layoutCopy layoutMargins];
  v25 = v7 == v22 && v5 == v19 && v11 == v21 && v9 == v20;
  if (!v25 || [layoutCopy hasFakedBackButton])
  {
    [layoutCopy setLayoutMargins:{v5, v7, v9, v11}];
    if ((isCustomViewItem & 1) == 0)
    {
      _viewOwner = [leadingVisibleItem _viewOwner];
      [_viewOwner _itemStandardViewNeedsUpdate:leadingVisibleItem];
    }

    if ((v18 & 1) == 0)
    {
      _viewOwner2 = [trailingVisibleItem _viewOwner];
      [_viewOwner2 _itemStandardViewNeedsUpdate:trailingVisibleItem];
    }
  }
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = _UINavigationBarContentView;
  [(UIView *)&v5 layoutSublayersOfLayer:layer];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained navigationBarContentViewDidLayoutSubviews:self];
}

- (void)layoutSubviews
{
  v3 = _UINavigationBarCastToAugmentedTitleView(self->_titleView);
  _navigationBarContentOverlayRects = [v3 _navigationBarContentOverlayRects];
  v67.receiver = self;
  v67.super_class = _UINavigationBarContentView;
  [(UIView *)&v67 layoutSubviews];
  if (!self->_transitionContext)
  {
    layout = self->_layout;
    if (layout)
    {
      [(_UINavigationBarContentViewLayout *)layout layoutSubviews];
      [(UIView *)self bounds];
      x = v68.origin.x;
      y = v68.origin.y;
      width = v68.size.width;
      height = v68.size.height;
      MinX = CGRectGetMinX(v68);
      v69.origin.x = x;
      v69.origin.y = y;
      v69.size.width = width;
      v69.size.height = height;
      CGRectGetMaxX(v69);
      backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
      titleControl = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
      leadingBar = [(_UINavigationBarContentViewLayout *)self->_layout leadingBar];
      trailingBar = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
      v15 = 464;
      staticNavBarButton = self->_staticNavBarButton;
      v66 = leadingBar;
      if (staticNavBarButton && ![(UIView *)staticNavBarButton isHidden])
      {
        staticNavBarButtonTrailing = self->_staticNavBarButtonTrailing;
        v17 = self->_staticNavBarButton;
        if (!staticNavBarButtonTrailing)
        {
          _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
          if (v17)
          {
            if (backButton)
            {
              v15 = 0;
              view2 = backButton;
            }

            else
            {
              view = [leadingBar view];
              if (view)
              {
                leadingBar = view;
                v15 = 0;
                view2 = view;
              }

              else if (titleControl)
              {
                v15 = 0;
                leadingBar = 0;
                view2 = titleControl;
              }

              else
              {
                view2 = [trailingBar view];
                leadingBar = 0;
                v15 = 1;
              }
            }

            v61 = _hitTestInsets(v17, 0, view2, _shouldReverseLayoutDirection, MinX);
            [(UIView *)v17 setHitTestInsets:0.0, v61, 0.0, v62];
            if (v15)
            {
            }

            v18 = 0;
            if (!backButton)
            {
              v20 = 1;
LABEL_25:

              leadingBar = v66;
LABEL_26:
              v64 = backButton;
              if (leadingBar)
              {
                v15 = v17;
                leadingBar = [v66 view];
                if (v20)
                {
                  backButton = v17;
                }

                v34 = titleControl;
                if (!titleControl)
                {
                  view3 = [trailingBar view];
                  v15 = view3;
                  if (view3)
                  {
                    v34 = view3;
                  }

                  else
                  {
                    v34 = v18;
                  }
                }

                v36 = _hitTestInsets(leadingBar, backButton, v34, _shouldReverseLayoutDirection, MinX);
                [v66 setHitTestInsets:{0.0, v36, 0.0, v37}];
                if (!titleControl)
                {
                }

                backButton = v64;
              }

              if (trailingBar)
              {
                leadingBar = [trailingBar view];
                v38 = titleControl;
                if (!titleControl)
                {
                  view4 = [v66 view];
                  v15 = view4;
                  if (v20)
                  {
                    v40 = v17;
                  }

                  else
                  {
                    v40 = backButton;
                  }

                  if (view4)
                  {
                    v38 = view4;
                  }

                  else
                  {
                    v38 = v40;
                  }
                }

                v41 = _hitTestInsets(leadingBar, v38, v18, _shouldReverseLayoutDirection, MinX);
                [trailingBar setHitTestInsets:{0.0, v41, 0.0, v42}];
                if (!titleControl)
                {
                }
              }

              if (v18)
              {
                if (titleControl)
                {
                  v43 = 0;
                  v44 = titleControl;
                }

                else
                {
                  view5 = [v66 view];
                  if (view5)
                  {
                    leadingBar = view5;
                    v43 = 0;
                    v44 = view5;
                  }

                  else if (v20)
                  {
                    view6 = [trailingBar view];
                    v20 = view6;
                    leadingBar = 0;
                    if (view6)
                    {
                      v44 = view6;
                    }

                    else
                    {
                      v44 = v17;
                    }

                    v43 = 1;
                  }

                  else
                  {
                    leadingBar = 0;
                    v43 = 0;
                    v44 = backButton;
                  }
                }

                v47 = _hitTestInsets(v18, v44, 0, _shouldReverseLayoutDirection, MinX);
                [(UIView *)v18 setHitTestInsets:0.0, v47, 0.0, v48];
                if (v43)
                {
                }

                if (!titleControl)
                {
                }
              }

              view7 = [trailingBar view];
              v50 = view7;
              if (v3)
              {
                subviews = [view7 subviews];
                v52 = [subviews count] != 0;
                view8 = [trailingBar view];
                [view8 setUserInteractionEnabled:v52];

                v54 = v66;
                if (_navigationBarContentOverlayRects)
                {
                  _navigationBarContentOverlayRects2 = [v3 _navigationBarContentOverlayRects];
                  v56 = _navigationBarContentOverlayRects;
                  v57 = _navigationBarContentOverlayRects2;
                  v58 = v57;
                  if (v56 == v57)
                  {
                  }

                  else
                  {
                    if (v57)
                    {
                      v59 = [v56 isEqual:v57];

                      if (v59)
                      {
                        goto LABEL_73;
                      }
                    }

                    else
                    {
                    }

                    [v3 setNeedsLayout];
                  }
                }
              }

              else
              {
                [view7 setUserInteractionEnabled:1];

                v54 = v66;
              }

LABEL_73:

              goto LABEL_74;
            }

            leadingBar = v66;
LABEL_8:
            view9 = [leadingBar view];
            leadingBar = view9;
            if (view9)
            {
              v20 = 0;
              v21 = view9;
            }

            else if (titleControl)
            {
              v20 = 0;
              v21 = titleControl;
            }

            else
            {
              view10 = [trailingBar view];
              v15 = view10;
              if (view10)
              {
                v21 = view10;
              }

              else
              {
                v21 = v18;
              }

              v20 = 1;
            }

            v32 = _hitTestInsets(backButton, v17, v21, _shouldReverseLayoutDirection, MinX);
            [(UIView *)backButton setHitTestInsets:0.0, v32, 0.0, v33];
            if (v20)
            {

              v20 = 0;
            }

            goto LABEL_25;
          }

          v18 = 0;
LABEL_7:
          v17 = 0;
          if (!backButton)
          {
            v20 = 1;
            goto LABEL_26;
          }

          goto LABEL_8;
        }
      }

      else
      {
        v17 = 0;
      }

      _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
      v18 = v17;
      goto LABEL_7;
    }

    if (self->_staticNavBarButton)
    {
      [(UIView *)self bounds];
      v22 = v70.origin.x;
      v23 = v70.origin.y;
      v24 = v70.size.width;
      v25 = v70.size.height;
      v26 = CGRectGetMinX(v70);
      v71.origin.x = v22;
      v71.origin.y = v23;
      v71.size.width = v24;
      v71.size.height = v25;
      CGRectGetMaxX(v71);
      v27 = _hitTestInsets(self->_staticNavBarButton, 0, 0, [(UIView *)self _shouldReverseLayoutDirection], v26);
      [(UIView *)self->_staticNavBarButton setHitTestInsets:0.0, v27, 0.0, v28];
    }
  }

LABEL_74:
}

- (void)updateAccessibilityContents:(id)contents
{
  v15[1] = *MEMORY[0x1E69E9840];
  contentsCopy = contents;
  augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
    [contentsCopy setAugmentedTitleView:augmentedTitleView2];
  }

  tabBarContentGuide = [(_UINavigationBarContentViewLayout *)self->_layout tabBarContentGuide];
  if (!tabBarContentGuide || (v9 = tabBarContentGuide, v10 = [(_UINavigationBarContentViewLayout *)self->_layout showTitleWithTabBar], v9, v10))
  {
    titleControl = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
    [contentsCopy setTitleView:titleControl];
  }

  backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];

  if (backButton)
  {
    backButton2 = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v15[0] = backButton2;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [contentsCopy setViewsRepresentingBackButton:v14];
  }
}

- (UIView)_effectiveTitleView
{
  augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  layout = self->_layout;
  if (isKindOfClass)
  {
    augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)layout augmentedTitleView];
  }

  else
  {
    tabBarContentGuide = [(_UINavigationBarContentViewLayout *)layout tabBarContentGuide];
    if (tabBarContentGuide && (v8 = tabBarContentGuide, v9 = [(_UINavigationBarContentViewLayout *)self->_layout showTitleWithTabBar], v8, !v9))
    {
      augmentedTitleView2 = 0;
    }

    else
    {
      augmentedTitleView2 = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
    }
  }

  return augmentedTitleView2;
}

- (void)_addCoordinatedAnimation:(id)animation completion:(id)completion
{
  aBlock = animation;
  completionCopy = completion;
  if (aBlock)
  {
    currentAnimations = self->_currentAnimations;
    v8 = _Block_copy(aBlock);
    [(NSMutableArray *)currentAnimations addObject:v8];
  }

  if (completionCopy)
  {
    currentCompletions = self->_currentCompletions;
    v10 = _Block_copy(completionCopy);
    [(NSMutableArray *)currentCompletions addObject:v10];
  }
}

- (void)_runAllScheduledAnimations:(BOOL)animations
{
  animationsCopy = animations;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58___UINavigationBarContentView__runAllScheduledAnimations___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___UINavigationBarContentView__runAllScheduledAnimations___block_invoke_2;
  v7[3] = &unk_1E70F5AC0;
  v7[4] = self;
  v6 = _Block_copy(v7);
  if (animationsCopy)
  {
    [UIView animateWithDuration:v5 animations:v6 completion:0.2];
  }

  else
  {
    v5[2](v5);
    v6[2](v6, 1);
  }
}

- (void)_clearAllAnimations
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = self->_currentAnimations;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v22;
    do
    {
      v8 = 0;
      v9 = v6;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 = _Block_copy(*(*(&v21 + 1) + 8 * v8));

        v6[2](v6);
        ++v8;
        v9 = v6;
      }

      while (v5 != v8);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_currentCompletions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v18;
    do
    {
      v15 = 0;
      v16 = v13;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v13 = _Block_copy(*(*(&v17 + 1) + 8 * v15));

        (*(v13 + 2))(v13, 1);
        ++v15;
        v16 = v13;
      }

      while (v12 != v15);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  [(_UINavigationBarContentViewLayout *)self->_layout setKeepsSnapshotsInHierarchy:0, v17];
  [(_UINavigationBarContentViewLayout *)self->_layout removeAllSnapshots];
  [(NSMutableArray *)self->_currentAnimations removeAllObjects];
  [(NSMutableArray *)self->_currentCompletions removeAllObjects];
}

- (void)updateContentAnimated:(BOOL)animated
{
  layout = self->_layout;
  if (layout)
  {
    animatedCopy = animated;
    [(_UINavigationBarContentViewLayout *)layout setOverrideHeight:self->_overrideSize];
    [(_UINavigationBarContentViewLayout *)self->_layout setShowTitleWithTabBar:[(_UINavigationBarContentView *)self _showTitleWithTabBar]];
    [(_UINavigationBarContentViewLayout *)self->_layout setUseInlineLargeTitleMetrics:self->_useInlineLargeTitleMetrics];
    if ((*&self->_navigationBarContentViewFlags & 0x200) != 0)
    {
      hostedTabBarGuide = self->_hostedTabBarGuide;
    }

    else
    {
      hostedTabBarGuide = 0;
    }

    [(_UINavigationBarContentViewLayout *)self->_layout setTabBarContentGuide:hostedTabBarGuide];
    [(_UINavigationBarContentView *)self _updateTitleAlignment];
    [(_UINavigationBarContentViewLayout *)self->_layout setInlineSearchBarGroup:self->_inlineSearchBarGroup];
    v7 = self->_placeInlineSearchBarInCenter && [(_UINavigationBarContentViewLayout *)self->_layout titleAlignment]== 1;
    [(_UINavigationBarContentViewLayout *)self->_layout setPlaceInlineSearchBarInCenter:v7];
    [(_UINavigationBarContentView *)self _setupTitleView];
    [(_UINavigationBarContentView *)self _setupStaticNavBarButtonAnimated:animatedCopy];
    [(_UINavigationBarContentView *)self _setupBackButton];
    [(_UINavigationBarContentView *)self _setupLeadingButtonBarAnimated:0];
    [(_UINavigationBarContentView *)self _setupCenterButtonBar];
    [(_UINavigationBarContentView *)self _setupTrailingButtonBarAnimated:0];
    [(_UINavigationBarContentViewLayout *)self->_layout setCustomizationIdentifier:self->_customizationIdentifier];
    [(_UINavigationBarContentViewLayout *)self->_layout updateAlphas];
    [(_UINavigationBarContentView *)self _updateLayoutMarginsForLayout:self->_layout];
    [(_UINavigationBarContentViewLayout *)self->_layout updateSpacingConstraints];
    [(_UINavigationBarContentViewLayout *)self->_layout updateBackButtonGeometry];
    augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
    [augmentedTitleView _contentDidChange];

    [(_UINavigationBarContentView *)self _runAllScheduledAnimations:animatedCopy];

    [(_UINavigationBarContentView *)self _setAssistants];
  }
}

- (void)recordFromStateForTransition:(id)transition
{
  layout = self->_layout;
  transitionCopy = transition;
  fromLayout = [(_UINavigationBarTransitionContext *)transitionCopy fromLayout];
  [(_UINavigationBarLayout *)fromLayout setContentViewLayout:?];

  [(_UINavigationBarContentViewLayout *)self->_layout setKeepsSnapshotsInHierarchy:0];
  [(_UINavigationBarContentViewLayout *)self->_layout removeAllSnapshots];
  [(_UINavigationBarContentView *)self _clearAssistants];
  v7 = self->_layout;
  self->_layout = 0;

  self->_transitionContext = transitionCopy;
}

- (void)prepareToRecordToState:(id)state
{
  stateCopy = state;
  _newLayout = [(_UINavigationBarContentView *)self _newLayout];
  if (!self->_transitionContext)
  {
    [(_UINavigationBarContentViewLayout *)self->_layout removeContent];
  }

  self->_transitionContext = stateCopy;
  layout = self->_layout;
  self->_layout = _newLayout;
}

- (void)recordToStateForTransition:(id)transition
{
  transitionCopy = transition;
  [(_UINavigationBarContentView *)self updateContentAnimated:0];
  layout = self->_layout;
  toLayout = [(_UINavigationBarTransitionContext *)transitionCopy toLayout];
  [(_UINavigationBarLayout *)toLayout setContentViewLayout:?];

  self->_transitionContext = transitionCopy;
  [(_UINavigationBarContentViewLayout *)self->_layout setKeepsSnapshotsInHierarchy:0];
  [(_UINavigationBarContentViewLayout *)self->_layout removeAllSnapshots];
  v6 = self->_layout;
  self->_layout = 0;
}

- (void)ensureBackButtonTruncationOccursWithContext:(id)context
{
  v5 = self->_layout;
  toLayout = [context toLayout];
  v7 = toLayout;
  if (toLayout)
  {
    v8 = *(toLayout + 160);
  }

  else
  {
    v8 = 0;
  }

  objc_storeStrong(&self->_layout, v8);

  backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
  visualProvider = [backButton visualProvider];
  contentView = [visualProvider contentView];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentTitle = [contentView currentTitle];
    if (currentTitle)
    {
      v12 = currentTitle;
      backButton2 = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
      [backButton2 systemLayoutSizeFittingSize:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v15 = v14;
      v16 = _minimumBackButtonWidth(self);

      if (v15 > v16)
      {
        [(_UINavigationBarContentView *)self updateContentAnimated:0];
      }
    }
  }

  layout = self->_layout;
  self->_layout = v5;
}

- (void)clearTransitionContext
{
  if (self->_transitionContext)
  {
    if (!self->_layout)
    {
      v3 = [[_UINavigationBarContentViewLayout alloc] initWithContentView:self];
      layout = self->_layout;
      self->_layout = v3;
    }

    self->_transitionContext = 0;
  }
}

- (void)adoptLayout:(id)layout
{
  layoutCopy = layout;
  v9 = layoutCopy;
  if (!layoutCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarContentView.m" lineNumber:1528 description:@"Cannot adopt a nil layout!"];

    layoutCopy = 0;
  }

  self->_transitionContext = 0;
  layout = self->_layout;
  if (layout != layoutCopy)
  {
    [(_UINavigationBarContentViewLayout *)layout removeContent];
    objc_storeStrong(&self->_layout, layout);
    layout = self->_layout;
  }

  [(_UINavigationBarContentViewLayout *)layout setActive:1 contentView:self];
  [(_UINavigationBarContentView *)self updateContentAnimated:0];
}

- (void)adoptNewLayout
{
  if (!self->_layout)
  {
    _newLayout = [(_UINavigationBarContentView *)self _newLayout];
    layout = self->_layout;
    self->_layout = _newLayout;

    [(_UINavigationBarContentViewLayout *)self->_layout setActive:1 contentView:self];

    [(_UINavigationBarContentView *)self updateContentAnimated:0];
  }
}

- (void)relinquishLayout
{
  [(_UINavigationBarContentViewLayout *)self->_layout removeContent];
  layout = self->_layout;
  self->_layout = 0;
}

- (void)tintColorDidChange
{
  [(_UINavigationBarContentView *)self _appearanceChanged];
  delegate = [(_UINavigationBarContentView *)self delegate];
  [delegate navigationBarContentViewDidChangeTintColor:self];
}

- (void)updateAugmentedTitleViewNavigationBarTraitsTo:(id)to from:(id)from
{
  toCopy = to;
  fromCopy = from;
  [(_UINavigationBarContentViewLayout *)self->_layout setAugmentedTitleNavigationBarTraits:toCopy];
  augmentedTitleView = [(_UINavigationBarContentViewLayout *)self->_layout augmentedTitleView];
  v8 = augmentedTitleView;
  if (augmentedTitleView)
  {
    [augmentedTitleView _navigationBarTraitCollectionDidChangeTo:toCopy from:fromCopy];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = _UINavigationBarContentView;
  [(UIView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(UIView *)self traitCollection];
  _presentationSemanticContext = [traitCollection _presentationSemanticContext];
  if (_presentationSemanticContext != [changeCopy _presentationSemanticContext])
  {
    [(_UINavigationBarContentViewLayout *)self->_layout setRequestedContentSize:[(_UINavigationBarContentView *)self _currentContentSize]];
  }

  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom != [changeCopy userInterfaceIdiom])
  {
    [(_UINavigationBarContentViewLayout *)self->_layout updateOverflowItemImage];
  }

  horizontalSizeClass = [traitCollection horizontalSizeClass];
  if (horizontalSizeClass != [changeCopy horizontalSizeClass])
  {
    [(_UINavigationBarContentViewLayout *)self->_layout updateRenameForHorizontalSizeClassChangeIfNecessary];
    [(_UINavigationBarContentView *)self _updateTitleAlignment];
  }
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  environmentCopy = environment;
  v23.receiver = self;
  v23.super_class = _UINavigationBarContentView;
  v5 = [(UIView *)&v23 _traitCollectionForChildEnvironment:environmentCopy];
  layout = self->_layout;
  if (layout)
  {
    v7 = [(_UINavigationBarContentViewLayout *)layout traitOverridesForChild:environmentCopy];
  }

  else
  {
    transitionContext = self->_transitionContext;
    if (!transitionContext)
    {
      v15 = v5;
      goto LABEL_15;
    }

    toLayout = [(_UINavigationBarTransitionContext *)transitionContext toLayout];
    v10 = toLayout;
    if (toLayout)
    {
      v11 = *(toLayout + 160);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = [v12 traitOverridesForChild:environmentCopy];
    v14 = v13;
    if (v13)
    {
      v7 = v13;
    }

    else
    {
      fromLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
      v17 = fromLayout;
      if (fromLayout)
      {
        v18 = *(fromLayout + 160);
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;
      v7 = [v19 traitOverridesForChild:environmentCopy];
    }
  }

  v20 = v5;
  v15 = v20;
  if (v7)
  {
    v21 = [(UITraitCollection *)v20 _traitCollectionByApplyingOverrides:v7 defaultValueOverrides:0];

    v15 = v21;
  }

LABEL_15:

  return v15;
}

- (unint64_t)edgesPaddingBarButtonItem:(id)item
{
  itemCopy = item;
  visualProvider = self->_visualProvider;
  if (visualProvider)
  {
    v6 = [(_UINavigationBarContentViewVisualProvider *)visualProvider edgesPaddingBarButtonItem:itemCopy];
  }

  else
  {
    v7 = self->_layout;
    if (!v7)
    {
      transitionContext = self->_transitionContext;
      if (transitionContext)
      {
        toLayout = [(_UINavigationBarTransitionContext *)transitionContext toLayout];
        v10 = toLayout;
        if (toLayout)
        {
          v11 = *(toLayout + 160);
        }

        else
        {
          v11 = 0;
        }

        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }

    leadingVisibleItem = [(_UINavigationBarContentViewLayout *)v7 leadingVisibleItem];

    if (leadingVisibleItem == itemCopy)
    {
      v13 = 13;
    }

    else
    {
      v13 = 15;
    }

    trailingVisibleItem = [(_UINavigationBarContentViewLayout *)v7 trailingVisibleItem];

    if (trailingVisibleItem == itemCopy)
    {
      v6 = v13 & 7;
    }

    else
    {
      v6 = v13;
    }
  }

  return v6;
}

- (BOOL)isRTL
{
  superview = [(UIView *)self superview];
  v4 = superview;
  if (superview)
  {
    selfCopy = superview;
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  effectiveUserInterfaceLayoutDirection = [(UIView *)v6 effectiveUserInterfaceLayoutDirection];
  return effectiveUserInterfaceLayoutDirection == 1;
}

- (double)backButtonMargin
{
  [(UIView *)self _contentMargin];
  v4 = v3;
  result = 0.0;
  if (v4 > 0.0)
  {
    v6 = 0.0;
    if (!self->_hasLeadingInsetFromTideBar && (![(UIBarButtonItem *)self->_staticNavBarButtonItem _isFloatable]|| [(UIBarButtonItem *)self->_staticNavBarButtonItem isHidden]))
    {
      [(UIView *)self safeAreaInsets];
      v6 = v7;
      v9 = v8;
      if ([(UIView *)self effectiveUserInterfaceLayoutDirection])
      {
        v6 = v9;
      }
    }

    return v4 + -8.0 + v6;
  }

  return result;
}

- (void)_appearanceChanged
{
  v3 = self->_layout;
  if (v3 || (transitionContext = self->_transitionContext) != 0 && (([(_UINavigationBarTransitionContext *)transitionContext toLayout], v9 = objc_claimAutoreleasedReturnValue(), (v10 = v9) == 0) ? (v11 = 0) : (v11 = *(v9 + 160)), v13 = v11, v10, (v3 = v13) != 0))
  {
    v12 = v3;
    backButton = [(_UINavigationBarContentViewLayout *)v3 backButton];
    if (backButton)
    {
      [(_UINavigationBarContentView *)self _configureBackButton:backButton];
    }

    leadingBar = [(_UINavigationBarContentViewLayout *)v12 leadingBar];
    [leadingBar _appearanceChanged];

    trailingBar = [(_UINavigationBarContentViewLayout *)v12 trailingBar];
    [trailingBar _appearanceChanged];

    centerBar = [(_UINavigationBarContentViewLayout *)v12 centerBar];
    [centerBar _appearanceChanged];
  }

  else
  {
    v12 = 0;
  }

  *&self->_navigationBarContentViewFlags |= 4u;
  [(_UINavigationBarContentView *)self _setupStaticNavBarButtonAnimated:0];
}

- (double)buttonBarMinimumInterGroupSpace
{
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 6)
  {
    v3 = 20.0;
  }

  else
  {
    v3 = 6.0;
  }

  return v3;
}

- (void)setAssistant:(id)assistant
{
  obj = assistant;
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  if (WeakRetained != obj)
  {
    [(_UINavigationBarContentView *)self _clearAssistants];
    objc_storeWeak(&self->_assistant, obj);
    [(_UINavigationBarContentView *)self _setAssistants];
  }
}

- (CGRect)_overlayRectForFrame:(CGRect)frame inView:(id)view inTargetView:(id)targetView
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  targetViewCopy = targetView;
  if (viewCopy && (v24.origin.x = x, v24.origin.y = y, v24.size.width = width, v24.size.height = height, !CGRectIsEmpty(v24)))
  {
    [viewCopy convertRect:targetViewCopy toView:{x, y, width, height}];
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v13 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v15 = *(MEMORY[0x1E695F050] + 24);
  }

  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_overlayRectForGuide:(id)guide inTargetView:(id)view
{
  viewCopy = view;
  guideCopy = guide;
  [guideCopy layoutFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  owningView = [guideCopy owningView];

  [(_UINavigationBarContentView *)self _overlayRectForFrame:owningView inView:viewCopy inTargetView:v9, v11, v13, v15];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)_overlayRectForView:(id)view inTargetView:(id)targetView
{
  targetViewCopy = targetView;
  viewCopy = view;
  [viewCopy bounds];
  [(_UINavigationBarContentView *)self _overlayRectForFrame:viewCopy inView:targetViewCopy inTargetView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)_layoutForAugmentedTitleView:(id)view
{
  viewCopy = view;
  v5 = self->_layout;
  if (!v5)
  {
    toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v7 = toLayout;
    if (toLayout)
    {
      v8 = *(toLayout + 160);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    augmentedTitleView = [v9 augmentedTitleView];

    transitionContext = self->_transitionContext;
    if (augmentedTitleView == viewCopy)
    {
      toLayout2 = [(_UINavigationBarTransitionContext *)transitionContext toLayout];
    }

    else
    {
      fromLayout = [(_UINavigationBarTransitionContext *)transitionContext fromLayout];
      v13 = fromLayout;
      if (fromLayout)
      {
        v14 = *(fromLayout + 160);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      augmentedTitleView2 = [v15 augmentedTitleView];

      if (augmentedTitleView2 != viewCopy)
      {
        v5 = 0;
        goto LABEL_14;
      }

      toLayout2 = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
    }

    v18 = toLayout2;
    if (toLayout2)
    {
      v19 = *(toLayout2 + 160);
    }

    else
    {
      v19 = 0;
    }

    v5 = v19;
  }

LABEL_14:

  return v5;
}

- (void)titleView:(id)view needsUpdatedContentOverlayRects:(id)rects
{
  viewCopy = view;
  rectsCopy = rects;
  v7 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:viewCopy];
  v8 = v7;
  if (v7)
  {
    backButton = [v7 backButton];
    [(_UINavigationBarContentView *)self _overlayRectForView:backButton inTargetView:viewCopy];
    [rectsCopy setBackButtonRect:?];

    leadingBar = [v8 leadingBar];
    _viewForOverlayRects = [leadingBar _viewForOverlayRects];
    [(_UINavigationBarContentView *)self _overlayRectForView:_viewForOverlayRects inTargetView:viewCopy];
    [rectsCopy setLeadingItemsRect:?];

    titleControl = [v8 titleControl];
    [(_UINavigationBarContentView *)self _overlayRectForView:titleControl inTargetView:viewCopy];
    [rectsCopy setTitleRect:?];

    centerBar = [v8 centerBar];
    _viewForOverlayRects2 = [centerBar _viewForOverlayRects];
    [(_UINavigationBarContentView *)self _overlayRectForView:_viewForOverlayRects2 inTargetView:viewCopy];
    [rectsCopy setCenterItemsRect:?];

    trailingBar = [v8 trailingBar];
    _viewForOverlayRects3 = [trailingBar _viewForOverlayRects];
    [(_UINavigationBarContentView *)self _overlayRectForView:_viewForOverlayRects3 inTargetView:viewCopy];
    [rectsCopy setTrailingItemsRect:?];

    tabBarContentGuide = [v8 tabBarContentGuide];
    [(_UINavigationBarContentView *)self _overlayRectForGuide:tabBarContentGuide inTargetView:viewCopy];
    [rectsCopy setFloatingTabBarRect:?];

    staticNavBarButtonItem = self->_staticNavBarButtonItem;
    v19 = MEMORY[0x1E695F050];
    if (staticNavBarButtonItem && ![(UIBarButtonItem *)staticNavBarButtonItem _isFloating])
    {
      [(_UINavigationBarContentView *)self _overlayRectForView:self->_staticNavBarButton inTargetView:viewCopy];
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v23 = v27;
    }

    else
    {
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
    }

    if (self->_staticNavBarButtonTrailing)
    {
      [rectsCopy setLeadingStaticItemRect:{*v19, v19[1], v19[2], v19[3]}];
    }

    else
    {
      [rectsCopy setLeadingStaticItemRect:{v20, v21, v22, v23}];
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
    }

    [rectsCopy setTrailingStaticItemRect:{v20, v21, v22, v23}];
    titleAlignment = [v8 titleAlignment];
    switch(titleAlignment)
    {
      case 2:
        if ([v8 showTitleWithTabBar])
        {
          tabBarContentGuide2 = [v8 tabBarContentGuide];

          if (tabBarContentGuide2)
          {
            v29 = 3;
          }

          else
          {
            v29 = 0;
          }

          goto LABEL_19;
        }

        break;
      case 1:
        v29 = 2;
        goto LABEL_19;
      case 0:
        v29 = 1;
LABEL_19:
        [rectsCopy setTitleLocation:v29];
        goto LABEL_20;
    }

    v29 = 0;
    goto LABEL_19;
  }

LABEL_20:
}

- (double)titleViewLargeTitleHeight:(id)height
{
  v3 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:height];
  [v3 largeTitleHeight];
  v5 = v4;

  return v5;
}

- (double)titleViewFloatingTabBarHeight:(id)height
{
  heightCopy = height;
  v5 = 0.0;
  if ([(_UINavigationBarContentView *)self _showTitleWithTabBar])
  {
    v6 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:heightCopy];
    [v6 tabBarExtension];
    v5 = v7;
  }

  return v5;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)titleViewLargeTitleHeightRange:(id)range
{
  v3 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:range];
  [v3 largeTitleHeightRange];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (double)titleViewContentBaselineOffsetFromTop:(id)top
{
  topCopy = top;
  v5 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:topCopy];
  [v5 baselineOffsetFromTop];
  v7 = v6;

  [(UIView *)self convertPoint:topCopy toView:0.0, v7];
  v9 = v8;

  return v9;
}

- (double)titleViewContentBaseHeight:(id)height
{
  v3 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:height];
  [v3 baseHeight];
  v5 = v4;

  return v5;
}

- (void)titleViewChangedStandardDisplayItems:(id)items
{
  [(_UINavigationBarContentView *)self updateContentAnimated:0];
  layout = self->_layout;

  [(_UINavigationBarContentViewLayout *)layout updateAugmentedTitleViewHeight];
}

- (void)titleViewChangedPreferredDisplaySize:(id)size
{
  _currentContentSize = [(_UINavigationBarContentView *)self _currentContentSize];
  layout = self->_layout;

  [(_UINavigationBarContentViewLayout *)layout setRequestedContentSize:_currentContentSize];
}

- (id)titleViewBackButtonMenu:(id)menu
{
  v3 = [(_UINavigationBarContentView *)self _layoutForAugmentedTitleView:menu];
  v4 = v3;
  if (v3)
  {
    backButton = [v3 backButton];
    visualProvider = [backButton visualProvider];
    buttonContextMenuInteractionConfiguration = [visualProvider buttonContextMenuInteractionConfiguration];

    if (buttonContextMenuInteractionConfiguration)
    {
      actionProvider = [buttonContextMenuInteractionConfiguration actionProvider];
      v9 = actionProvider;
      if (actionProvider)
      {
        v10 = (*(actionProvider + 16))(actionProvider, MEMORY[0x1E695E0F0]);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)_item:(id)_item addSymbolEffect:(id)effect options:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  effectCopy = effect;
  optionsCopy = options;
  if (self->_backButtonItem == _item)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v14 = backButton;
    v12 = backButton == 0;
    if (backButton)
    {
      [backButton addSymbolEffect:effectCopy options:optionsCopy animated:animatedCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_item:(id)_item removeSymbolEffectOfType:(id)type options:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  typeCopy = type;
  optionsCopy = options;
  if (self->_backButtonItem == _item)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v14 = backButton;
    v12 = backButton == 0;
    if (backButton)
    {
      [backButton removeSymbolEffectOfType:typeCopy options:optionsCopy animated:animatedCopy];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_item:(id)_item removeAllSymbolEffectsWithOptions:(id)options animated:(BOOL)animated
{
  animatedCopy = animated;
  optionsCopy = options;
  if (self->_backButtonItem == _item)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v11 = backButton;
    v9 = backButton == 0;
    if (backButton)
    {
      [backButton removeAllSymbolEffectsWithOptions:optionsCopy animated:animatedCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_item:(id)_item applyContentTransition:(id)transition options:(id)options
{
  transitionCopy = transition;
  optionsCopy = options;
  if (self->_backButtonItem == _item)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v10 = backButton;
    if (backButton)
    {
      [backButton applyContentTransition:transitionCopy options:optionsCopy];
    }
  }
}

- (id)_contextMenuInteractionForItem:(id)item
{
  if (self->_backButtonItem == item)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    v5 = backButton;
    if (backButton)
    {
      contextMenuInteraction = [backButton contextMenuInteraction];
    }

    else
    {
      contextMenuInteraction = 0;
    }
  }

  else
  {
    contextMenuInteraction = 0;
  }

  return contextMenuInteraction;
}

- (id)_accessibility_HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (self->_inlineTitleViewAlpha > 0.0)
  {
    if ([(NSString *)self->_title length])
    {
      titleControl = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
      titleControl2 = [(_UINavigationBarContentViewLayout *)self->_layout titleControl];
      [(UIView *)self convertPoint:titleControl2 toView:x, y];
      v8 = [titleControl pointInside:0 withEvent:?];

      if (v8)
      {
        v9 = [[UIAccessibilityHUDItem alloc] initWithTitle:self->_title image:0 imageInsets:0.0, 0.0, 0.0, 0.0];
        goto LABEL_12;
      }
    }
  }

  if (self->_backButtonHidden || (-[_UINavigationBarContentViewLayout backButton](self->_layout, "backButton"), v10 = objc_claimAutoreleasedReturnValue(), -[_UINavigationBarContentViewLayout backButton](self->_layout, "backButton"), v11 = objc_claimAutoreleasedReturnValue(), -[UIView convertPoint:toView:](self, "convertPoint:toView:", v11, x, y), v12 = [v10 pointInside:0 withEvent:?], v11, v10, !v12))
  {
    v13 = [(_UINavigationBarContentView *)self _accessibility_barButtonItemAtPoint:x, y];
    _showsChevron = [(UIBarButtonItem *)v13 _showsChevron];
    if (!v13)
    {
      goto LABEL_8;
    }

LABEL_10:
    v9 = [UIAccessibilityHUDItem HUDItemForBarButtonItem:v13 atPoint:self inView:_showsChevron isBackButton:x, y];
    goto LABEL_11;
  }

  v13 = self->_backButtonItem;
  _showsChevron = 1;
  if (v13)
  {
    goto LABEL_10;
  }

LABEL_8:
  v9 = 0;
LABEL_11:

LABEL_12:

  return v9;
}

- (id)_accessibility_barButtonItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  staticNavBarButtonItem = self->_staticNavBarButtonItem;
  if (staticNavBarButtonItem && ![(UIBarButtonItem *)staticNavBarButtonItem isHidden]&& (staticNavBarButton = self->_staticNavBarButton, [(UIView *)self convertPoint:staticNavBarButton toView:x, y], [(UIView *)staticNavBarButton pointInside:0 withEvent:?]))
  {
    v8 = self->_staticNavBarButtonItem;
  }

  else
  {
    layout = self->_layout;
    if (layout)
    {
      leadingBar = [(_UINavigationBarContentViewLayout *)layout leadingBar];
      v8 = [leadingBar itemAtPoint:self inView:{x, y}];

      if (!v8)
      {
        centerBar = [(_UINavigationBarContentViewLayout *)self->_layout centerBar];
        v8 = [centerBar itemAtPoint:self inView:{x, y}];

        if (!v8)
        {
          trailingBar = [(_UINavigationBarContentViewLayout *)self->_layout trailingBar];
          v8 = [trailingBar itemAtPoint:self inView:{x, y}];
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (!self->_backButtonHidden)
  {
    backButton = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    backButton2 = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
    [(UIView *)self convertPoint:backButton2 toView:x, y];
    if ([backButton pointInside:0 withEvent:?])
    {
      backButton3 = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
      _accessibilityShouldActivateOnHUDLift = [backButton3 _accessibilityShouldActivateOnHUDLift];

      if (_accessibilityShouldActivateOnHUDLift)
      {
        backButton4 = [(_UINavigationBarContentViewLayout *)self->_layout backButton];
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v11 = [(_UINavigationBarContentView *)self _accessibility_barButtonItemAtPoint:x, y];
  view = [v11 view];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_10;
  }

  view2 = [v11 view];
  _accessibilityShouldActivateOnHUDLift2 = [view2 _accessibilityShouldActivateOnHUDLift];

  if (!_accessibilityShouldActivateOnHUDLift2)
  {
LABEL_10:
    backButton4 = 0;
    goto LABEL_11;
  }

  backButton4 = [v11 view];
LABEL_11:

LABEL_12:

  return backButton4;
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = _UINavigationBarContentView;
  v3 = [(UIView *)&v15 description];
  v4 = [v3 mutableCopy];

  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    fromLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
    v7 = fromLayout;
    if (fromLayout)
    {
      v8 = *(fromLayout + 160);
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v11 = toLayout;
    if (toLayout)
    {
      v12 = *(toLayout + 160);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    [v4 appendFormat:@" transitionContext=%p fromLayout=%p toLayout=%p", transitionContext, v9, v13];
  }

  else
  {
    [v4 appendFormat:@" layout=%p", self->_layout];
  }

  return v4;
}

- (_UINavigationBarContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UIOffset)titlePositionAdjustment
{
  horizontal = self->_titlePositionAdjustment.horizontal;
  vertical = self->_titlePositionAdjustment.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (_UIPointerInteractionAssistant)assistant
{
  WeakRetained = objc_loadWeakRetained(&self->_assistant);

  return WeakRetained;
}

@end