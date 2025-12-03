@interface _UINavigationBarVisualProviderModernIOS
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)width;
- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)point;
- (BOOL)_allowLargeTitleView;
- (BOOL)_isInInteractiveScroll;
- (BOOL)_isInnerNavigationBarOfNestedNavigationController;
- (BOOL)_shim_disableBlurTinting;
- (BOOL)_shim_hasCustomBackgroundView;
- (BOOL)_shouldEnableNestedNavigationPopForTopItem:(id)item backItem:(id)backItem;
- (BOOL)_stackWantsBottomPaletteDisplayedForItem:(id)item;
- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)item;
- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)item hideLargeTitleForActiveSearch:(BOOL)search;
- (BOOL)_stackWantsSearchDisplayedBelowContentViewForItem:(id)item;
- (BOOL)_useLargeTitleForDisplayMode:(int64_t)mode;
- (BOOL)_wantsWindowMoveClientInteractionInstalled;
- (BOOL)allowLargeTitleView;
- (BOOL)alwaysEvaluateChromelessTransitionProgress;
- (BOOL)isContentViewHidden;
- (BOOL)navigationItemIsBackItem:(id)item;
- (BOOL)navigationItemIsTopItem:(id)item;
- (BOOL)permitsSearchBarPlacementIntegratedCentered;
- (BOOL)scrollEdgeAppearanceHasChromelessBehavior;
- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item;
- (BOOL)titleRenamer:(id)renamer session:(id)session shouldEndRenamingWithTitle:(id)title;
- (BOOL)topItemHasVariableHeight;
- (BOOL)useManualScrollEdgeAppearanceForItem:(id)item;
- (CGPoint)contentViewLayoutFrameOrigin;
- (CGPoint)promptViewLayoutFrameOrigin;
- (CGRect)barCustomizer:(id)customizer customizationAreaBoundsForSession:(id)session;
- (CGRect)barCustomizer:(id)customizer overflowControlBoundsForSession:(id)session;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSDirectionalEdgeInsets)largeSearchBaseMarginsRequiringNavMinimums:(BOOL)minimums;
- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)resolvedSearchBarMargins;
- (double)_contentBackgroundExtension;
- (double)defaultBarHeightForTraitCollection:(id)collection;
- (double)heightForRestoringFromCancelledTransition;
- (id)_accessibility_HUDItemForPoint:(CGPoint)point;
- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point;
- (id)_backButtonMenu;
- (id)_backgroundLayoutOfClass:(Class)class fromLayout:(id)layout;
- (id)_barCustomizationItemWithBarButtonGroup:(id)group;
- (id)_barCustomizationItemWithBarButtonItem:(id)item identifier:(id)identifier;
- (id)_centerBarButtonGroupWithIdentifier:(id)identifier;
- (id)_compatibleDefaultTextColor;
- (id)_defaultWeeTitleAttributes;
- (id)_effectiveLegacyTitleAttributes;
- (id)_immediatelyFinishRunningTransition;
- (id)_shim_compatibilityBackgroundView;
- (id)_sourceViewProviderForBarButtonItem:(id)item;
- (id)_staticNavBarButtonFakeBackMenu;
- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path;
- (id)_updateBackgroundLayout:(id)layout forNavigationItem:(id)item compact:(BOOL)compact;
- (id)barCustomizer:(id)customizer containerViewForSession:(id)session;
- (id)emptyLayout;
- (id)hitTest:(CGPoint)test defaultViewHit:(id)hit;
- (id)presentationSourceForContent:(int64_t)content navigationItem:(id)item;
- (id)restingHeights;
- (id)titleRenamer:(id)renamer session:(id)session willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range;
- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection;
- (id)valueForUndefinedKey:(id)key;
- (int64_t)statusBarStyle;
- (void)_beginCustomization;
- (void)_beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary;
- (void)_beginRenaming;
- (void)_computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:(id)item;
- (void)_configureMarginsOnContentViewsAndPalette:(id)palette withContentMargin:(double)margin;
- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)changed;
- (void)_endRenaming;
- (void)_endTransitionCompleted:(BOOL)completed;
- (void)_enforceLayoutOrdering;
- (void)_ensureLayoutsConfiguredForEntry:(id)entry forMeasuring:(BOOL)measuring;
- (void)_installContentClippingView:(id)view;
- (void)_installWindowMoveClientInteractionIfNecessary;
- (void)_invalidateIntrinsicContentSizeAndNotifySizeChanged;
- (void)_layoutInBounds:(CGRect)bounds;
- (void)_performAnimationWithTransitionCompletion:(id)completion transition:(int64_t)transition;
- (void)_popToItem:(id)item;
- (void)_postDidEncounterFirstTitleWithExcessiveHeightChanged;
- (void)_prepareLayouts;
- (void)_presentOrDismissSearch:(int64_t)search withTransitionCoordinator:(id)coordinator;
- (void)_refreshBackButtonMenu;
- (void)_removeContentClippingView;
- (void)_setUpContentFocusContainerGuide;
- (void)_setupAccessibilityLimitsForView:(id)view;
- (void)_setupTransitionContextForTransition:(int64_t)transition completion:(id)completion;
- (void)_shim_setCustomBackgroundView:(id)view;
- (void)_shim_setDisableBlurTinting:(BOOL)tinting;
- (void)_updateAugmentedTitleDataSources;
- (void)_updateBackground;
- (void)_updateContentForTopItem:(id)item backItem:(id)backItem animated:(BOOL)animated;
- (void)_updateContentPriorities;
- (void)_updateLegacyLayout:(id)layout forNavigationItem:(id)item;
- (void)_updateModernLayout:(id)layout forNavigationItem:(id)item compact:(BOOL)compact;
- (void)_updatePromptViewAndActuallyHide:(BOOL)hide;
- (void)_updateTabBarHost;
- (void)_updateTabBarSuppressionIfNeeded;
- (void)_updateTitleViewForLayout:(id)layout;
- (void)_updateWithCompletion:(id)completion;
- (void)_upgradeAppearanceAPIForItemIfNecessary:(id)necessary;
- (void)animateForSearchPresentation:(BOOL)presentation;
- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)applyBarBackground:(id)background alpha:(double)alpha;
- (void)barCustomizer:(id)customizer willEndSession:(id)session didReset:(BOOL)reset;
- (void)barDidMoveToWindow;
- (void)changeAppearance;
- (void)changeLayout;
- (void)deferSearchSuggestionsMenuRefreshForGeometryChange;
- (void)layoutSubviews;
- (void)navigationBarContentViewDidChangeTintColor:(id)color;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)layout;
- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed;
- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette;
- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)bar;
- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items;
- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated;
- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance;
- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette;
- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated;
- (void)navigationItemUpdatedLargeTitleContent:(id)content;
- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility;
- (void)navigationItemUpdatedPromptContent:(id)content;
- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated;
- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress;
- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController;
- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated;
- (void)popAnimated:(BOOL)animated completion:(id)completion;
- (void)prepare;
- (void)prepareForPop;
- (void)prepareForPush;
- (void)prepareForStackChange;
- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem;
- (void)pushAnimated:(BOOL)animated completion:(id)completion;
- (void)refreshSearchSuggestionsMenuAfterGeometryChange;
- (void)removeContentForItem:(id)item;
- (void)safeAreaInsetsDidChange;
- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)item;
- (void)setActiveTabBarHost:(BOOL)host;
- (void)setAppearanceAPIVersion:(int64_t)version;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setForceScrollEdgeAppearance:(BOOL)appearance;
- (void)setNeedsStaticNavBarButtonUpdate;
- (void)setRefreshControlHost:(id)host;
- (void)setStaticNavBarButtonItem:(id)item;
- (void)setStaticNavBarButtonItem:(id)item trailingPosition:(BOOL)position;
- (void)setTabBarHostedView:(id)view;
- (void)setTitleAlpha:(double)alpha;
- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)large;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)setWantsHostedTabBarMetrics:(BOOL)metrics;
- (void)tabBarContainerDidLayoutFloatingTabBar:(id)bar;
- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)visibility;
- (void)teardown;
- (void)titleRenamer:(id)renamer didCancelSession:(id)session;
- (void)titleRenamer:(id)renamer session:(id)session didEndRenamingWithTitle:(id)title;
- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidEnd:(id)end;
- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidFail:(id)fail;
- (void)traitCollectionDidChange:(id)change;
- (void)traitCollectionDidChangeOnSubtree:(id)subtree;
- (void)updateBackgroundGroupName;
- (void)updateBarVisibilityForTopItem;
- (void)updateSearchBarForPlacementChangeIfApplicable;
@end

@implementation _UINavigationBarVisualProviderModernIOS

- (void)_updateContentPriorities
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  if ([(_UINavigationBarLayout *)activeLayout isVariableHeight])
  {
    v5 = 250.0;
  }

  else
  {
    v5 = 750.0;
  }

  [(UIView *)self->super._navigationBar contentHuggingPriorityForAxis:1];
  v7 = v6;
  [(UIView *)self->super._navigationBar contentCompressionResistancePriorityForAxis:1];
  v9 = *&v8;
  if (v5 == v7)
  {
    if (v5 == *&v8)
    {
      return;
    }
  }

  else
  {
    *&v8 = v5;
    [(UIView *)self->super._navigationBar setContentHuggingPriority:1 forAxis:v8];
    if (v5 == v9)
    {
      goto LABEL_9;
    }
  }

  *&v8 = v5;
  [(UIView *)self->super._navigationBar setContentCompressionResistancePriority:1 forAxis:v8];
LABEL_9:

  [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
}

- (BOOL)topItemHasVariableHeight
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  if (topEntry)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];
    normalLayout = [topEntry normalLayout];
    v5 = normalLayout;
    if (normalLayout)
    {
      if ([(_UINavigationBarLayout *)normalLayout isVariableHeight])
      {
        isVariableHeight = 1;
LABEL_9:

        goto LABEL_10;
      }

      if ([topEntry isSearchActive])
      {
        searchLayout = [topEntry searchLayout];
        isVariableHeight = [(_UINavigationBarLayout *)searchLayout isVariableHeight];

        goto LABEL_9;
      }
    }

    isVariableHeight = 0;
    goto LABEL_9;
  }

  isVariableHeight = 0;
LABEL_10:

  return isVariableHeight;
}

- (BOOL)_wantsWindowMoveClientInteractionInstalled
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = _os_feature_enabled_impl();
  if ([(UINavigationBar *)self->super._navigationBar barPosition]== 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return userInterfaceIdiom == 1 && v6;
}

- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins
{
  if ([(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView])
  {

    [(_UINavigationBarVisualProviderModernIOS *)self largeSearchBaseMarginsRequiringNavMinimums:0];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UINavigationBarVisualProviderModernIOS;
    [(_UINavigationBarVisualProvider *)&v7 resolvedLargeTitleMargins];
  }

  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)_updateAugmentedTitleDataSources
{
  previousBackItem = [(_UINavigationBarItemStack *)self->super._stack previousBackItem];
  [previousBackItem _setTitleViewDataSource:0];

  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [backItem _setTitleViewDataSource:0];

  previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
  [previousTopItem _setTitleViewDataSource:self->_contentView];

  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [topItem _setTitleViewDataSource:self->_contentView];
}

- (id)_backButtonMenu
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_UINavigationBarBackButtonShowsContextMenu())
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58___UINavigationBarVisualProviderModernIOS__backButtonMenu__block_invoke;
    v8[3] = &unk_1E70F7690;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    v3 = [UIDeferredMenuElement elementWithProvider:v8];
    v4 = objc_opt_new();
    [v4 setMaximumNumberOfTitleLines:1];
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [UIMenu menuWithChildren:v5];

    [v6 setDisplayPreferences:v4];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_effectiveLegacyTitleAttributes
{
  titleTextAttributes = [(UINavigationBar *)self->super._navigationBar titleTextAttributes];
  v4 = *off_1E70EC920;
  v5 = [titleTextAttributes objectForKeyedSubscript:*off_1E70EC920];

  if (!v5)
  {
    v6 = [titleTextAttributes mutableCopy];
    _compatibleDefaultTextColor = [(_UINavigationBarVisualProviderModernIOS *)self _compatibleDefaultTextColor];
    [v6 setObject:_compatibleDefaultTextColor forKeyedSubscript:v4];

    titleTextAttributes = v6;
  }

  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  traitCollection2 = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom2 = [traitCollection2 userInterfaceIdiom];
  if (userInterfaceIdiom == 6)
  {
    _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(titleTextAttributes, userInterfaceIdiom2, 0);
  }

  else
  {
    _UINavigationTitleAppearanceAddDefaultTitleAttributes(titleTextAttributes, userInterfaceIdiom2, 0);
  }
  v12 = ;

  return v12;
}

- (void)prepare
{
  v30.receiver = self;
  v30.super_class = _UINavigationBarVisualProviderModernIOS;
  [(_UINavigationBarVisualProvider *)&v30 prepare];
  self->_titleAlpha = 1.0;
  self->_backgroundAlpha = 1.0;
  self->_shadowAlpha = 1.0;
  [(UIView *)self->super._navigationBar bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  alternateBarBackground = [(_UINavigationBarVisualProviderModernIOS *)self alternateBarBackground];
  if (alternateBarBackground)
  {
    objc_storeStrong(&self->_backgroundView, alternateBarBackground);
    self->_usesBarBackground = 0;
  }

  else
  {
    v12 = [[_UIBarBackground alloc] initWithFrame:v4, v6, v8, v10];
    backgroundView = self->_backgroundView;
    self->_backgroundView = v12;

    [(_UIBarBackground *)self->_backgroundView setTopAligned:1];
    self->_usesBarBackground = 1;
  }

  v14 = [_UINavigationBarContentView alloc];
  contentViewVisualProvider = [(_UINavigationBarVisualProvider *)self contentViewVisualProvider];
  v16 = [(_UINavigationBarContentView *)v14 initWithFrame:contentViewVisualProvider visualProvider:v4, v6, v8, v10];
  contentView = self->_contentView;
  self->_contentView = v16;

  [(_UINavigationBarContentView *)self->_contentView setDelegate:self];
  _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = [_effectiveDelegate _splitViewControllerEnforcingClass:0];
    v20 = [v19 primaryEdge] == 1;
  }

  else
  {
    v20 = 0;
  }

  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonTrailing:v20];
  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonItem:self->_staticNavBarButtonItem];
  v21 = [[_UINavigationBarLargeTitleView alloc] initWithFrame:v4, v6, v8, v10];
  largeTitleView = self->_largeTitleView;
  self->_largeTitleView = v21;

  [(UIView *)self->_largeTitleView setClipsToBounds:1];
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  v25 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(MEMORY[0x1E695E0F8], userInterfaceIdiom, 0);
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:v25];

  v26 = [[_UINavigationBarModernPromptView alloc] initWithFrame:v4, v6, v8, v10];
  promptView = self->_promptView;
  self->_promptView = v26;

  v28 = objc_alloc_init(_UIPointerInteractionAssistant);
  assistant = self->_assistant;
  self->_assistant = v28;

  [(UIView *)self->super._navigationBar addInteraction:self->_assistant];
  [(_UINavigationBarContentView *)self->_contentView setAssistant:self->_assistant];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setAssistant:self->_assistant];
  [(UIView *)self->super._navigationBar _setWantsAutolayout];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
  if ([(UIView *)self->super._navigationBar translatesAutoresizingMaskIntoConstraints])
  {
    [(UIView *)self->super._navigationBar _setHostsLayoutEngine:1];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self _setUpContentFocusContainerGuide];
}

- (void)_setUpContentFocusContainerGuide
{
  v20[4] = *MEMORY[0x1E69E9840];
  _focusSystem = [(UIView *)self->super._navigationBar _focusSystem];

  if (_focusSystem)
  {
    if (!self->_contentFocusContainerGuide)
    {
      v4 = objc_alloc_init(UIFocusContainerGuide);
      contentFocusContainerGuide = self->_contentFocusContainerGuide;
      self->_contentFocusContainerGuide = v4;

      [(UIView *)self->super._navigationBar addLayoutGuide:self->_contentFocusContainerGuide];
      [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UINavigationBarContentFocusContainerGuide"];
      v16 = MEMORY[0x1E69977A0];
      topAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
      topAnchor2 = [(UIView *)self->super._navigationBar topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v20[0] = v17;
      leadingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
      leadingAnchor2 = [(UIView *)self->super._navigationBar leadingAnchor];
      v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v20[1] = v8;
      trailingAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
      trailingAnchor2 = [(UIView *)self->super._navigationBar trailingAnchor];
      v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v20[2] = v11;
      bottomAnchor = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
      bottomAnchor2 = [(UIView *)self->super._navigationBar bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v20[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      [v16 activateConstraints:v15];
    }
  }
}

- (void)updateBarVisibilityForTopItem
{
  v21[1] = *MEMORY[0x1E69E9840];
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  item = [topEntry item];
  _navigationBarVisibility = [item _navigationBarVisibility];
  v6 = _navigationBarVisibility != 0;

  if (self->_isHidden != v6)
  {
    v7 = MEMORY[0x1E6979AA0];
    if (!self->_hiddenFilter)
    {
      v8 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CB0]];
      hiddenFilter = self->_hiddenFilter;
      self->_hiddenFilter = v8;

      [(CAFilter *)self->_hiddenFilter setName:@"barVisibility"];
      if (self->_isHidden)
      {
        +[UIColor clearColor];
      }

      else
      {
        +[UIColor whiteColor];
      }
      v10 = ;
      -[CAFilter setValue:forKey:](self->_hiddenFilter, "setValue:forKey:", [v10 CGColor], *v7);
      v21[0] = self->_hiddenFilter;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      layer = [(UIView *)self->super._navigationBar layer];
      [layer setFilters:v11];
    }

    if (_navigationBarVisibility)
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v13 = ;
    layer2 = [(UIView *)self->super._navigationBar layer];
    cGColor = [v13 CGColor];
    v16 = MEMORY[0x1E696AEC0];
    name = [(CAFilter *)self->_hiddenFilter name];
    v18 = [v16 stringWithFormat:@"filters.%@.%@", name, *v7];
    [layer2 setValue:cGColor forKeyPath:v18];

    self->_isHidden = v6;
    navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
    delegate = [navigationBar delegate];

    if (objc_opt_respondsToSelector())
    {
      [delegate _navigationBarDidUpdateVisibility:self->super._navigationBar];
    }
  }
}

- (void)changeAppearance
{
  largeTitleTextAttributes = [(UINavigationBar *)self->super._navigationBar largeTitleTextAttributes];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:largeTitleTextAttributes];

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _installWindowMoveClientInteractionIfNecessary];
}

- (void)_installWindowMoveClientInteractionIfNecessary
{
  _wantsWindowMoveClientInteractionInstalled = [(_UINavigationBarVisualProviderModernIOS *)self _wantsWindowMoveClientInteractionInstalled];
  windowDragClientInteraction = self->_windowDragClientInteraction;
  if (_wantsWindowMoveClientInteractionInstalled)
  {
    if (!windowDragClientInteraction)
    {
      v5 = objc_alloc_init(UIWindowSceneDragInteraction);
      v6 = self->_windowDragClientInteraction;
      self->_windowDragClientInteraction = v5;

      windowDragClientInteraction = self->_windowDragClientInteraction;
    }

    navigationBar = self->super._navigationBar;

    [(UIView *)navigationBar addInteraction:windowDragClientInteraction];
  }

  else if (windowDragClientInteraction)
  {
    v8 = self->super._navigationBar;

    [(UIView *)v8 removeInteraction:?];
  }
}

- (void)prepareForStackChange
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:topItem];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)_prepareLayouts
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];

  previousTopEntry = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:previousTopEntry];
}

- (BOOL)_isInnerNavigationBarOfNestedNavigationController
{
  _accessibility_navigationController = [(UINavigationBar *)self->super._navigationBar _accessibility_navigationController];
  _outermostNavigationController = [_accessibility_navigationController _outermostNavigationController];
  navigationBar = [_outermostNavigationController navigationBar];

  navigationBar = self->super._navigationBar;
  if (navigationBar == navigationBar)
  {
    v9 = 0;
  }

  else
  {
    topItem = [(UINavigationBar *)navigationBar topItem];
    topItem2 = [(UINavigationBar *)navigationBar topItem];
    v9 = topItem == topItem2;
  }

  return v9;
}

- (void)barDidMoveToWindow
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  subviews = [(UIView *)self->super._navigationBar subviews];
  v4 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [(_UINavigationBarVisualProviderModernIOS *)self _setupAccessibilityLimitsForView:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (self->_customizer)
  {
    window = [(UIView *)self->super._navigationBar window];

    if (!window)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __61___UINavigationBarVisualProviderModernIOS_barDidMoveToWindow__block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
    }
  }
}

- (void)layoutSubviews
{
  v46 = *MEMORY[0x1E69E9840];
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  window = [(UIView *)self->super._navigationBar window];
  if (window)
  {
  }

  else
  {
    item = [topEntry item];
    _navigationBar = [item _navigationBar];
    navigationBar = self->super._navigationBar;

    if (_navigationBar != navigationBar)
    {
      goto LABEL_24;
    }
  }

  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  previewContainer = [(_UIPointerInteractionAssistant *)self->_assistant previewContainer];
  [previewContainer setFrame:{v5, v6, v7, v8}];

  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];
  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry2 activeLayout];

  if (!self->_transitionContext)
  {
    if (activeLayout)
    {
      v12 = activeLayout[18];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (!v13)
    {
      [(UIView *)self->_largeTitleView removeFromSuperview];
      [(UIView *)self->_weeTitleLabel removeFromSuperview];
    }

    topEntry3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    inactiveLayout = [topEntry3 inactiveLayout];

    if (activeLayout || !inactiveLayout)
    {
      [(_UINavigationBarLayout *)inactiveLayout removeViewsNotInLayout:activeLayout];
LABEL_11:

      goto LABEL_12;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v42 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v42, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_29;
      }

      topEntry4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      v44 = 138412290;
      v45 = topEntry4;
      _os_log_fault_impl(&dword_188A29000, v42, OS_LOG_TYPE_FAULT, "Unexpected configuration for the top navigation item on the navigation bar (activeLayout is nil with non-nil inactiveLayout). %@", &v44, 0xCu);
    }

    else
    {
      v40 = *(__UILogGetCategoryCachedImpl("Assert", &layoutSubviews___s_category) + 8);
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      stack = self->super._stack;
      v42 = v40;
      topEntry4 = [(_UINavigationBarItemStack *)stack topEntry];
      v44 = 138412290;
      v45 = topEntry4;
      _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Unexpected configuration for the top navigation item on the navigation bar (activeLayout is nil with non-nil inactiveLayout). %@", &v44, 0xCu);
    }

LABEL_29:
    goto LABEL_11;
  }

LABEL_12:
  item2 = [topEntry item];
  if ([item2 _hasIntegratedSearchBarInNavigationBar])
  {
    _searchControllerIfAllowed = [item2 _searchControllerIfAllowed];
    searchBar = [_searchControllerIfAllowed searchBar];

    superview = [searchBar superview];
    v20 = self->super._navigationBar;

    if (superview == v20)
    {
      [searchBar removeFromSuperview];
    }
  }

  [(UIView *)self->super._navigationBar _contentMargin];
  v22 = v21;
  _topPalette = [item2 _topPalette];
  _bottomPalette = [item2 _bottomPalette];
  [_topPalette setAssistantIdentifier:@"Palette.itemTop"];
  [_topPalette setAssistant:self->_assistant];
  [_bottomPalette setAssistantIdentifier:@"Palette.itemBottom"];
  [_bottomPalette setAssistant:self->_assistant];
  [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:_topPalette withContentMargin:v22];
  [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:_bottomPalette withContentMargin:v22];
  [(UIView *)self->_contentView setSemanticContentAttribute:[(UIView *)self->super._navigationBar semanticContentAttribute]];
  [(_UINavigationBarVisualProviderModernIOS *)self _updatePromptViewAndActuallyHide:1];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
  backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:item2 backItem:backItem];

  itemCount = [(_UINavigationBarItemStack *)self->super._stack itemCount];
  [(UIView *)self->super._navigationBar bounds];
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  if (itemCount < 1)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _contentBackgroundExtension];
    [(UIView *)self->_backgroundView setFrame:v31, v32 - v39, v33, v34 + v39];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _layoutInBounds:v27, v28, v29, v30];
    [(UIView *)self->super._navigationBar _contentMargin];
    if (v22 != v35)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:_bottomPalette withContentMargin:?];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _updateTitleViewForLayout:activeLayout];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self updateBarVisibilityForTopItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
  [(_UINavigationBarVisualProviderModernIOS *)self _enforceLayoutOrdering];
  [(_UIBarCustomizer *)self->_customizer invalidateLayout];

LABEL_24:
}

- (BOOL)_allowLargeTitleView
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  if ([traitCollection verticalSizeClass] == 1)
  {
    prefersLargeTitles = 0;
  }

  else
  {
    v5 = self->super._navigationBar;
    if (qword_1ED498188 != -1)
    {
      dispatch_once(&qword_1ED498188, &__block_literal_global_631);
    }

    if (word_1ED498169 == 1)
    {
      prefersLargeTitles = HIBYTE(word_1ED498169);
    }

    else
    {
      prefersLargeTitles = [(UINavigationBar *)v5 prefersLargeTitles];
    }
  }

  return prefersLargeTitles;
}

- (BOOL)allowLargeTitleView
{
  _allowLargeTitleView = [(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView];
  if (_allowLargeTitleView)
  {
    LOBYTE(_allowLargeTitleView) = [(_UINavigationBarVisualProviderModernIOS *)self largeTitleStyle]== 0;
  }

  return _allowLargeTitleView;
}

- (void)_updateTabBarSuppressionIfNeeded
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _stackEntry = [topItem _stackEntry];
  self->_isSuppressingTabBar = [_stackEntry isSearchActive];

  if (self->_isActiveTabBarHost)
  {
    isSuppressingTabBar = self->_isSuppressingTabBar;
    tabBarHostedView = self->_tabBarHostedView;

    [(_UITabContainerView *)tabBarHostedView setSuppressTabBar:isSuppressingTabBar];
  }
}

- (double)_contentBackgroundExtension
{
  v3 = 0.0;
  if ([(UINavigationBar *)self->super._navigationBar barPosition]== 3)
  {
    [(UINavigationBar *)self->super._navigationBar _overrideBackgroundExtension];
    v3 = v4;
    if (v4 == 0.0)
    {
      superview = [(UIView *)self->super._navigationBar superview];
      v6 = superview;
      if (superview)
      {
        [superview safeAreaInsets];
        v3 = v7;
      }

      else
      {
        v3 = 0.0;
      }
    }
  }

  return v3;
}

- (void)_updateBackground
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  _canDrawContent = [(UIView *)self->super._navigationBar _canDrawContent];
  [(UIView *)self->_backgroundView setHidden:_canDrawContent];
  if (_canDrawContent)
  {
    [(UIView *)self->super._navigationBar setNeedsDisplay];
    goto LABEL_30;
  }

  item = [topEntry item];
  _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
  activeLayout = [topEntry activeLayout];
  v7 = activeLayout;
  v8 = _activeBarMetrics == 102 || _activeBarMetrics == 1;
  if (_activeBarMetrics == 102 || _activeBarMetrics == 1)
  {
    if (activeLayout)
    {
      v10 = *(activeLayout + 184);
LABEL_15:
      v11 = v10;
      goto LABEL_16;
    }
  }

  else if (activeLayout)
  {
    v10 = *(activeLayout + 192);
    goto LABEL_15;
  }

  v10 = 0;
  v11 = 0;
LABEL_16:
  v12 = v10;

  v13 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v12 forNavigationItem:item compact:v8];

  if (v7)
  {
    v14 = *(v7 + 288);
  }

  else
  {
    v14 = 0.0;
  }

  [v13 setBackgroundTransitionProgress:v14];
  if (_activeBarMetrics != 102 && _activeBarMetrics != 1)
  {
    [(_UINavigationBarLayout *)v7 setStandardBackgroundViewLayout:v13];
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_23:
    v15 = 1.0;
    goto LABEL_24;
  }

  [(UIBackgroundConfiguration *)v7 __setMaterial:v13];
  if (!v7)
  {
    goto LABEL_23;
  }

LABEL_21:
  v15 = *(v7 + 296);
LABEL_24:
  [v13 setBackgroundAlpha:v15];
  if (self->_usesBarBackground)
  {
    [(_UIBarBackground *)self->_backgroundView setLayout:v13];
    [(_UINavigationBarVisualProviderModernIOS *)self updateBackgroundGroupName];
    [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
  }

  else
  {
    selfCopy = self;
    v17 = selfCopy;
    backgroundAlpha = selfCopy->_backgroundAlpha;
    if (!self->_usesBarBackground)
    {
      [(_UINavigationBarVisualProviderModernIOS *)selfCopy alphaForBarBackground:self->_backgroundView preferredAlpha:item navigationItem:backgroundAlpha];
      v17->_backgroundAlpha = backgroundAlpha;
    }

    [(_UINavigationBarVisualProviderModernIOS *)v17 applyBarBackground:self->_backgroundView alpha:backgroundAlpha];
  }

  [(UINavigationBar *)self->super._navigationBar _updatePaletteBackgroundIfNecessary];

LABEL_30:
}

- (void)updateBackgroundGroupName
{
  if (self->_usesBarBackground)
  {
    traitCollection = [(UIView *)self->super._navigationBar traitCollection];
    v4 = objc_opt_self();
    v5 = [traitCollection objectForTrait:v4];
    [(_UIBarBackground *)self->_backgroundView setGroupName:v5];
  }
}

- (void)_enforceLayoutOrdering
{
  if (!dyld_program_sdk_at_least() || ([(UIView *)self->super._navigationBar window], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
    {
      topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      if (topEntry)
      {
        topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
        activeLayout = [topEntry2 activeLayout];
        [(_UINavigationBarLayout *)activeLayout installViewsInNavigationBar:?];

        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          [(UINavigationBar *)self->super._navigationBar didAddSubview:self->_backgroundView];
        }
      }

      else
      {
        [(UIView *)self->super._navigationBar insertSubview:self->_backgroundView atIndex:0];
      }

      navigationBar = self->super._navigationBar;
      previewContainer = [(_UIPointerInteractionAssistant *)self->_assistant previewContainer];
      [(UIView *)navigationBar addSubview:previewContainer];
    }
  }
}

- (void)navigationBarInvalidatedResolvedLayoutMargins
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _searchControllerIfAllowed = [topItem _searchControllerIfAllowed];

  searchBar = [_searchControllerIfAllowed searchBar];
  [searchBar _updateEffectiveContentInset];
}

- (void)safeAreaInsetsDidChange
{
  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  largeTitleView = self->_largeTitleView;

  [(UIView *)largeTitleView setNeedsLayout];
}

- (BOOL)alwaysEvaluateChromelessTransitionProgress
{
  v3 = _UIBarsApplyChromelessEverywhere();
  if (v3)
  {
    navigationBar = self->super._navigationBar;

    LOBYTE(v3) = [(UINavigationBar *)navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
  }

  return v3;
}

- (BOOL)permitsSearchBarPlacementIntegratedCentered
{
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    if (qword_1ED498180 != -1)
    {
      dispatch_once(&qword_1ED498180, &__block_literal_global_57);
    }

    if (_MergedGlobals_123)
    {
      return 1;
    }

    v8.receiver = self;
    v6 = &v8;
  }

  else
  {
    selfCopy = self;
    v6 = &selfCopy;
  }

  v6->super_class = _UINavigationBarVisualProviderModernIOS;
  return [(objc_super *)v6 permitsSearchBarPlacementIntegratedCentered];
}

- (void)applyBarBackground:(id)background alpha:(double)alpha
{
  backgroundCopy = background;
  if (!self->_usesBarBackground)
  {
    v8 = backgroundCopy;
    [backgroundCopy alpha];
    backgroundCopy = v8;
    if (v7 != alpha)
    {
      [v8 setAlpha:alpha];
      backgroundCopy = v8;
    }
  }
}

- (void)teardown
{
  [(UIView *)self->super._navigationBar removeInteraction:self->_assistant];
  layer = [(UIView *)self->super._navigationBar layer];
  [layer setFilters:0];

  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = 0;

  [(UIView *)self->_largeTitleView removeFromSuperview];
  largeTitleView = self->_largeTitleView;
  self->_largeTitleView = 0;

  [(UIView *)self->_promptView removeFromSuperview];
  promptView = self->_promptView;
  self->_promptView = 0;

  weeTitleLabel = self->_weeTitleLabel;
  if (weeTitleLabel)
  {
    [(UIView *)weeTitleLabel removeFromSuperview];
    v9 = self->_weeTitleLabel;
    self->_weeTitleLabel = 0;
  }

  if (self->_contentFocusContainerGuide)
  {
    [(UIView *)self->super._navigationBar removeLayoutGuide:?];
    contentFocusContainerGuide = self->_contentFocusContainerGuide;
    self->_contentFocusContainerGuide = 0;
  }

  [(_UINavigationBarTransitionContext *)self->_transitionContext setNavigationBar:0];
  transitionContext = self->_transitionContext;
  self->_transitionContext = 0;

  v12.receiver = self;
  v12.super_class = _UINavigationBarVisualProviderModernIOS;
  [(_UINavigationBarVisualProvider *)&v12 teardown];
}

- (void)changeLayout
{
  [(_UINavigationBarContentView *)self->_contentView setRequestedContentSize:[(UINavigationBar *)self->super._navigationBar requestedContentSize]];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  [(_UINavigationBarLayout *)activeLayout updateLayout];

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
}

- (double)heightForRestoringFromCancelledTransition
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  [(_UINavigationBarLayout *)activeLayout layoutHeights];
  v5 = v4;

  return v5;
}

- (void)_invalidateIntrinsicContentSizeAndNotifySizeChanged
{
  [(UINavigationBar *)self->super._navigationBar invalidateIntrinsicContentSize];
  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  navigationBar = self->super._navigationBar;

  [(UINavigationBar *)navigationBar _sendNavigationBarResize];
}

- (void)provideViewsForContents:(id)contents topItem:(id)item backItem:(id)backItem
{
  contentView = self->_contentView;
  itemCopy = item;
  contentsCopy = contents;
  [(_UINavigationBarContentView *)contentView updateAccessibilityContents:?];
  _stackEntry = [itemCopy _stackEntry];

  activeLayout = [_stackEntry activeLayout];
  v10 = activeLayout;
  if (activeLayout)
  {
    v11 = *(activeLayout + 144);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  accessibilityTitleView = [v12 accessibilityTitleView];
  [contentsCopy setLargeTitleView:accessibilityTitleView];

  [contentsCopy setPromptView:0];
}

- (void)_updatePromptViewAndActuallyHide:(BOOL)hide
{
  hideCopy = hide;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  prompt = [topItem prompt];

  if (hideCopy)
  {
    [(UIView *)self->_promptView setHidden:prompt == 0];
  }

  v7 = 0.0;
  if (prompt)
  {
    v7 = 1.0;
  }

  promptView = self->_promptView;

  [(UIView *)promptView setAlpha:v7];
}

- (BOOL)_isInInteractiveScroll
{
  delegate = [(UINavigationBar *)self->super._navigationBar delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    _navigationBarLayoutIsInInteractiveScroll = [delegate _navigationBarLayoutIsInInteractiveScroll];
  }

  else
  {
    _navigationBarLayoutIsInInteractiveScroll = 0;
  }

  return _navigationBarLayoutIsInInteractiveScroll;
}

- (void)_updateTitleViewForLayout:(id)layout
{
  layoutCopy = layout;
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  isSearchActive = [topEntry isSearchActive];

  if (isSearchActive)
  {
    goto LABEL_27;
  }

  [(UIView *)self->super._navigationBar bounds];
  self->_previousBarSize.width = v7;
  self->_previousBarSize.height = v8;
  if (layoutCopy)
  {
    v9 = *(layoutCopy + 18);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (layoutCopy)
    {
      v11 = *(layoutCopy + 35);
      v12 = v11 < 0.05;
      v13 = 1.0;
      if (v11 >= 0.05)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = 1;
    }

    v13 = 0.0;
LABEL_8:
    if (v12)
    {
      v14 = 1.0;
    }

    else
    {
      v14 = 0.0;
    }

    if (self->_transitionContext || ![(_UINavigationBarVisualProviderModernIOS *)self _isInInteractiveScroll])
    {
      [(_UINavigationBarContentView *)self->_contentView setInlineTitleViewAlpha:v14];
      [(UIView *)self->_largeTitleView setAlpha:v13];
    }

    else
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __69___UINavigationBarVisualProviderModernIOS__updateTitleViewForLayout___block_invoke;
      v26[3] = &unk_1E70F6848;
      v26[4] = self;
      *&v26[5] = v14;
      *&v26[6] = v13;
      [UIView animateWithDuration:v26 animations:0.2];
    }

    if (!self->_transitionContext)
    {
      topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
      _weeTitle = [topItem _weeTitle];
      v17 = [_weeTitle length];

      if (v17)
      {
        [(UIView *)self->super._navigationBar bounds];
        v19 = v18;
        [(UIView *)self->_contentView frame];
        v20 = v19 - CGRectGetMaxY(v27);
        [(_UINavigationBarLargeTitleView *)self->_largeTitleView restingHeightOfTitleView];
        v22 = v21 - v20;
        if (v22 < 0.0)
        {
          v22 = 0.0;
        }

        v23 = (10.0 - fmin(v22, 10.0)) / 10.0;
        if (v23 < 0.0)
        {
          v23 = 0.0;
        }

        v24 = fmin(v23, 1.0);
        weeTitleLabel = self->_weeTitleLabel;
      }

      else
      {
        weeTitleLabel = self->_weeTitleLabel;
        v24 = 0.0;
      }

      [(UIView *)weeTitleLabel setAlpha:v24];
    }

    goto LABEL_27;
  }

  if (self->_appearanceAPIVersion < 1 || !self->_transitionContext)
  {
    [(_UINavigationBarContentView *)self->_contentView setInlineTitleViewAlpha:self->_titleAlpha];
  }

LABEL_27:
}

- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)large
{
  if (self->_useInlineBackgroundHeightWhenLarge != large)
  {
    self->_useInlineBackgroundHeightWhenLarge = large;
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if (self->_backgroundAlpha != alpha)
  {
    self->_backgroundAlpha = alpha;
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)alpha
{
  if (self->_titleAlpha != alpha)
  {
    self->_titleAlpha = alpha;
  }

  if (![(_UINavigationBarVisualProviderModernIOS *)self wantsLargeTitleDisplayed])
  {
    titleAlpha = self->_titleAlpha;
    contentView = self->_contentView;

    [(_UINavigationBarContentView *)contentView setInlineTitleViewAlpha:titleAlpha];
  }
}

- (void)setAppearanceAPIVersion:(int64_t)version
{
  appearanceAPIVersion = self->_appearanceAPIVersion;
  if (appearanceAPIVersion > version)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:610 description:@"We shouldn't be decreasing the API version... right?"];

    appearanceAPIVersion = self->_appearanceAPIVersion;
  }

  if (appearanceAPIVersion != version)
  {
    self->_appearanceAPIVersion = version;
    self->_useModernAppearanceAPI = version > 1;
    if (version >= 2)
    {
      stack = self->super._stack;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __67___UINavigationBarVisualProviderModernIOS_setAppearanceAPIVersion___block_invoke;
      v9[3] = &unk_1E70F7618;
      v9[4] = self;
      [(_UINavigationBarItemStack *)stack iterateEntries:v9];
    }
  }
}

- (void)_upgradeAppearanceAPIForItemIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if (self->_appearanceAPIVersion <= 1)
  {
    v7 = necessaryCopy;
    standardAppearance = [necessaryCopy standardAppearance];
    if (standardAppearance || ([v7 compactAppearance], (standardAppearance = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_5:
      [(_UINavigationBarVisualProviderModernIOS *)self setAppearanceAPIVersion:2];
      necessaryCopy = v7;
      goto LABEL_6;
    }

    scrollEdgeAppearance = [v7 scrollEdgeAppearance];

    necessaryCopy = v7;
    if (scrollEdgeAppearance)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (BOOL)useManualScrollEdgeAppearanceForItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _alwaysUseManualScrollEdgeAppearance])
  {
    v5 = 0;
  }

  else
  {
    _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
    if (_searchControllerIfAllowed)
    {
      _hidesSearchBarWhenScrollingIfAllowed = [itemCopy _hidesSearchBarWhenScrollingIfAllowed];
    }

    else
    {
      _hidesSearchBarWhenScrollingIfAllowed = 0;
    }

    v5 = _hidesSearchBarWhenScrollingIfAllowed | [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:itemCopy];
  }

  alwaysEvaluateChromelessTransitionProgress = [(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress];
  if ((alwaysEvaluateChromelessTransitionProgress & 1) == 0 && (v5 & 1) == 0)
  {
    if ([(_UINavigationBarVisualProviderModernIOS *)self forceScrollEdgeAppearance])
    {
      alwaysEvaluateChromelessTransitionProgress = 1;
    }

    else
    {
      alwaysEvaluateChromelessTransitionProgress = [itemCopy _isManualScrollEdgeAppearanceEnabled];
    }
  }

  return alwaysEvaluateChromelessTransitionProgress;
}

- (void)setForceScrollEdgeAppearance:(BOOL)appearance
{
  v4 = appearance & ~[(UIView *)self->super._navigationBar _canDrawContent];
  if (self->_forceScrollEdgeAppearance != v4)
  {
    self->_forceScrollEdgeAppearance = v4;
    stack = self->super._stack;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __72___UINavigationBarVisualProviderModernIOS_setForceScrollEdgeAppearance___block_invoke;
    v6[3] = &unk_1E70F7618;
    v6[4] = self;
    [(_UINavigationBarItemStack *)stack iterateEntries:v6];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
  }
}

- (BOOL)scrollEdgeAppearanceHasChromelessBehavior
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  scrollEdgeAppearance = [topItem scrollEdgeAppearance];
  if (scrollEdgeAppearance)
  {
    scrollEdgeAppearance2 = scrollEdgeAppearance;
  }

  else
  {
    scrollEdgeAppearance2 = [(UINavigationBar *)self->super._navigationBar scrollEdgeAppearance];

    if (!scrollEdgeAppearance2)
    {
      LOBYTE(v7) = 1;
      return v7;
    }
  }

  _backgroundData = [scrollEdgeAppearance2 _backgroundData];
  v7 = [_backgroundData hasBackground] ^ 1;

  return v7;
}

- (BOOL)_useLargeTitleForDisplayMode:(int64_t)mode
{
  switch(mode)
  {
    case 3:
      return ![(_UITabContainerView *)self->_tabBarHostedView canShowFloatingTabBar:v3];
    case 2:
      return 0;
    case 0:
      return ![(_UITabContainerView *)self->_tabBarHostedView canShowFloatingTabBar:v3];
  }

  return 1;
}

- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)item
{
  itemCopy = item;
  _stackEntry = [itemCopy _stackEntry];
  if ([_stackEntry isSearchActive])
  {
    _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
    v7 = -[_UINavigationBarVisualProviderModernIOS _stackWantsLargeTitleDisplayedForItem:hideLargeTitleForActiveSearch:](self, "_stackWantsLargeTitleDisplayedForItem:hideLargeTitleForActiveSearch:", itemCopy, [_searchControllerIfAllowed hidesNavigationBarDuringPresentation]);
  }

  else
  {
    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:itemCopy hideLargeTitleForActiveSearch:0];
  }

  return v7;
}

- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)item hideLargeTitleForActiveSearch:(BOOL)search
{
  itemCopy = item;
  v7 = 0;
  if ([(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView]&& !search)
  {
    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:itemCopy]];
  }

  return v7;
}

- (BOOL)_stackWantsSearchDisplayedBelowContentViewForItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    itemCopy = [(_UINavigationBarItemStack *)self->super._stack topItem];
  }

  _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
  if (_searchControllerIfAllowed)
  {
    _stackEntry = [itemCopy _stackEntry];
    if ([_stackEntry isSearchActive])
    {
      v7 = [_searchControllerIfAllowed hidesNavigationBarDuringPresentation] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_stackWantsBottomPaletteDisplayedForItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    itemCopy = [(_UINavigationBarItemStack *)self->super._stack topItem];
  }

  _bottomPalette = [itemCopy _bottomPalette];
  v6 = _bottomPalette != 0;

  return v6;
}

- (id)_defaultWeeTitleAttributes
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = [off_1E70ECC18 preferredFontForTextStyle:@"UICTFontTextStyleEmphasizedFootnote"];
  v3 = *off_1E70EC920;
  v7[0] = *off_1E70EC918;
  v7[1] = v3;
  v8[0] = v2;
  v4 = +[UIColor grayColor];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (void)_popToItem:(id)item
{
  itemCopy = item;
  delegate = [(UINavigationBar *)self->super._navigationBar delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate _navigationBar:self->super._navigationBar requestPopToItem:itemCopy];
  }

  else
  {
    array = [MEMORY[0x1E695DF70] array];
    stack = self->super._stack;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __54___UINavigationBarVisualProviderModernIOS__popToItem___block_invoke;
    v12 = &unk_1E70F7640;
    v13 = array;
    v14 = itemCopy;
    v8 = array;
    [(_UINavigationBarItemStack *)stack iterateItems:&v9];
    [(UINavigationBar *)self->super._navigationBar setItems:v8 animated:1, v9, v10, v11, v12];
  }
}

- (id)_staticNavBarButtonFakeBackMenu
{
  v11[1] = *MEMORY[0x1E69E9840];
  if (_UINavigationBarBackButtonShowsContextMenu())
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __74___UINavigationBarVisualProviderModernIOS__staticNavBarButtonFakeBackMenu__block_invoke;
    v8[3] = &unk_1E70F7690;
    objc_copyWeak(&v9, &location);
    v8[4] = self;
    v3 = [UIDeferredMenuElement elementWithProvider:v8];
    v4 = objc_opt_new();
    [v4 setMaximumNumberOfTitleLines:1];
    v11[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    v6 = [UIMenu menuWithChildren:v5];

    [v6 setDisplayPreferences:v4];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_refreshBackButtonMenu
{
  layout = [(_UINavigationBarContentView *)self->_contentView layout];
  backButton = [layout backButton];

  v4 = backButton;
  if (backButton)
  {
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    _effectiveBackBarButtonItem = [backItem _effectiveBackBarButtonItem];

    _backButtonMenu = [(_UINavigationBarVisualProviderModernIOS *)self _backButtonMenu];
    [_effectiveBackBarButtonItem setMenu:_backButtonMenu];

    visualProvider = [backButton visualProvider];
    LODWORD(backItem) = [visualProvider canUpdateMenuInPlace];

    if (backItem)
    {
      visualProvider2 = [backButton visualProvider];
      [visualProvider2 updateMenu];
    }

    v4 = backButton;
  }
}

- (void)_beginCustomization
{
  if (!self->_customizer)
  {
    v4 = [[_UIBarCustomizer alloc] initWithDelegate:self];
    customizer = self->_customizer;
    self->_customizer = v4;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  layout = [(_UINavigationBarContentView *)self->_contentView layout];
  centerBar = [layout centerBar];
  groupRealizedOrder = [centerBar groupRealizedOrder];
  groupOrderer = [centerBar groupOrderer];
  if (!groupOrderer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:952 description:@"Began customizing but the customizer is nil!"];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke;
  v30[3] = &unk_1E70F76B8;
  v30[4] = self;
  v11 = array;
  v31 = v11;
  v12 = array2;
  v32 = v12;
  [(_UIButtonBarGroupOrderer *)groupOrderer enumerateSourceGroups:v30];
  v13 = [_UIBarCustomizationSession sessionWithVisibleItems:v11 additionalItems:v12];
  currentCustomizationSession = self->_currentCustomizationSession;
  self->_currentCustomizationSession = v13;

  beginAnimationCoordinator = [(_UIBarCustomizationSession *)self->_currentCustomizationSession beginAnimationCoordinator];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_2;
  v27[3] = &unk_1E70F35B8;
  v16 = centerBar;
  v28 = v16;
  selfCopy = self;
  [beginAnimationCoordinator addAnimations:v27];

  endAnimationCoordinator = [(_UIBarCustomizationSession *)self->_currentCustomizationSession endAnimationCoordinator];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_3;
  v26[3] = &unk_1E70F3590;
  v26[4] = self;
  [endAnimationCoordinator addAnimations:v26];

  objc_initWeak(&location, self);
  endAnimationCoordinator2 = [(_UIBarCustomizationSession *)self->_currentCustomizationSession endAnimationCoordinator];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_4;
  v22[3] = &unk_1E70F76E0;
  objc_copyWeak(&v24, &location);
  v19 = v16;
  v23 = v19;
  [endAnimationCoordinator2 addCompletion:v22];

  [(_UIBarCustomizer *)self->_customizer beginWithSession:self->_currentCustomizationSession];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (id)_barCustomizationItemWithBarButtonGroup:(id)group
{
  v36 = *MEMORY[0x1E69E9840];
  groupCopy = group;
  _customizationIdentifier = [groupCopy _customizationIdentifier];
  _items = [groupCopy _items];
  v7 = [_items count];

  if (v7 < 2)
  {
    _items2 = [groupCopy _items];
    firstObject = [_items2 firstObject];
    v23 = [(_UINavigationBarVisualProviderModernIOS *)self _barCustomizationItemWithBarButtonItem:firstObject identifier:_customizationIdentifier];
  }

  else
  {
    selfCopy = self;
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = groupCopy;
    obj = [groupCopy _items];
    v10 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%i", _customizationIdentifier, v12];
          v17 = [(_UINavigationBarVisualProviderModernIOS *)selfCopy _barCustomizationItemWithBarButtonItem:v15 identifier:v16];
          [array addObject:v17];

          v12 = (v12 + 1);
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    groupCopy = v29;
    representativeItem = [v29 representativeItem];
    image = [representativeItem image];
    representativeItem2 = [v29 representativeItem];
    title = [representativeItem2 title];
    v22 = array;
    v23 = [_UIBarCustomizationItem groupWithWithIdentifier:_customizationIdentifier icon:image name:title items:array];

    [v23 setCollapsed:{objc_msgSend(v29, "isDisplayingRepresentativeItem")}];
    representativeItem3 = [v29 representativeItem];
    v25 = [(_UINavigationBarVisualProviderModernIOS *)selfCopy _sourceViewProviderForBarButtonItem:representativeItem3];
    [v23 setSourceViewProvider:v25];
  }

  [v23 setRemovable:{objc_msgSend(groupCopy, "_isRemovableItem")}];

  return v23;
}

- (id)_barCustomizationItemWithBarButtonItem:(id)item identifier:(id)identifier
{
  identifierCopy = identifier;
  itemCopy = item;
  _resolvedImage = [itemCopy _resolvedImage];
  resolvedTitle = [itemCopy resolvedTitle];
  customView = [itemCopy customView];
  v11 = [_UIBarCustomizationItem itemWithIdentifier:identifierCopy icon:_resolvedImage name:resolvedTitle view:customView];

  tintColor = [itemCopy tintColor];
  [v11 setTintColor:tintColor];

  [v11 setEnabled:{objc_msgSend(itemCopy, "isEnabled")}];
  v13 = [(_UINavigationBarVisualProviderModernIOS *)self _sourceViewProviderForBarButtonItem:itemCopy];

  [v11 setSourceViewProvider:v13];

  return v11;
}

- (id)_sourceViewProviderForBarButtonItem:(id)item
{
  itemCopy = item;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79___UINavigationBarVisualProviderModernIOS__sourceViewProviderForBarButtonItem___block_invoke;
  aBlock[3] = &unk_1E70F7708;
  v8 = itemCopy;
  v4 = itemCopy;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)barCustomizer:(id)customizer containerViewForSession:(id)session
{
  customizationContainerView = self->_customizationContainerView;
  if (!customizationContainerView)
  {
    v6 = [UIView alloc];
    window = [(UIView *)self->super._navigationBar window];
    [window bounds];
    v8 = [(UIView *)v6 initWithFrame:?];

    [(UIView *)v8 setAutoresizingMask:18];
    tintColor = [(UIView *)self->_contentView tintColor];
    [(UIView *)v8 setTintColor:tintColor];

    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled") & 1) == 0 && byte_1EA95E154)
    {
      v10 = +[UIColor redColor];
      cGColor = [v10 CGColor];
      layer = [(UIView *)v8 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(UIView *)v8 layer];
      [layer2 setBorderWidth:1.0];
    }

    v14 = self->_customizationContainerView;
    self->_customizationContainerView = v8;

    window2 = [(UIView *)self->super._navigationBar window];
    [window2 addSubview:self->_customizationContainerView];

    [(_UINavigationBarVisualProviderModernIOS *)self _setupAccessibilityLimitsForView:self->_customizationContainerView];
    customizationContainerView = self->_customizationContainerView;
  }

  return customizationContainerView;
}

- (CGRect)barCustomizer:(id)customizer customizationAreaBoundsForSession:(id)session
{
  contentView = self->_contentView;
  [(UIView *)contentView bounds:customizer];
  [(UIView *)contentView convertRect:self->super._navigationBar toView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(UIView *)self->super._navigationBar bounds];
  Width = CGRectGetWidth(v23);
  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  v15 = CGRectGetHeight(v24) + 48.0;
  navigationBar = self->super._navigationBar;
  customizationContainerView = self->_customizationContainerView;

  [(UIView *)navigationBar convertRect:customizationContainerView toView:0.0, -24.0, Width, v15];
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (CGRect)barCustomizer:(id)customizer overflowControlBoundsForSession:(id)session
{
  v5 = [(_UINavigationBarContentView *)self->_contentView layout:customizer];
  overflowButton = [v5 overflowButton];
  v7 = _contentViewFromBarButton(overflowButton);

  [v7 bounds];
  [v7 convertRect:self->_customizationContainerView toView:?];
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

- (void)barCustomizer:(id)customizer willEndSession:(id)session didReset:(BOOL)reset
{
  resetCopy = reset;
  v104 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  layout = [(_UINavigationBarContentView *)self->_contentView layout];
  centerBar = [layout centerBar];

  v70 = sessionCopy;
  v63 = centerBar;
  if (resetCopy)
  {
    groupOrderer = [centerBar groupOrderer];
    [(_UIButtonBarGroupOrderer *)groupOrderer reset];

    view = [centerBar view];
    [view layoutIfNeeded];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [centerBar barButtonGroups];
    v66 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
    if (v66)
    {
      v65 = *v94;
      do
      {
        v12 = 0;
        do
        {
          if (*v94 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v67 = v12;
          v13 = *(*(&v93 + 1) + 8 * v12);
          v14 = [v13 _isRemovableItem] ^ 1;
          if (v14)
          {
            v14 = 1;
          }

          else
          {
            v91 = 0u;
            v92 = 0u;
            v89 = 0u;
            v90 = 0u;
            visibleItems = [sessionCopy visibleItems];
            v15 = [visibleItems countByEnumeratingWithState:&v89 objects:v102 count:16];
            if (v15)
            {
              v16 = v15;
              v69 = *v90;
              while (2)
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v90 != v69)
                  {
                    objc_enumerationMutation(visibleItems);
                  }

                  v18 = *(*(&v89 + 1) + 8 * i);
                  v19 = v13;
                  _customizationIdentifier = [v13 _customizationIdentifier];
                  identifier = [v18 identifier];
                  v22 = [_customizationIdentifier isEqual:identifier];

                  if (v22)
                  {
                    v13 = v19;
                    [v18 setCollapsed:{objc_msgSend(v19, "isDisplayingRepresentativeItem")}];
                    v14 = 1;
                    goto LABEL_19;
                  }

                  v13 = v19;
                }

                v16 = [visibleItems countByEnumeratingWithState:&v89 objects:v102 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }

LABEL_19:
              sessionCopy = v70;
            }

            else
            {
              v14 = 0;
            }
          }

          if ([v13 isDisplayingRepresentativeItem])
          {
            representativeItem = [v13 representativeItem];
            v101 = representativeItem;
            _items = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
          }

          else
          {
            _items = [v13 _items];
          }

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v25 = _items;
          v26 = [v25 countByEnumeratingWithState:&v85 objects:v100 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v86;
            do
            {
              for (j = 0; j != v27; ++j)
              {
                if (*v86 != v28)
                {
                  objc_enumerationMutation(v25);
                }

                v30 = *(*(&v85 + 1) + 8 * j);
                view2 = [v30 view];
                [view2 setAlpha:0.0];

                endAnimationCoordinator = [sessionCopy endAnimationCoordinator];
                v33 = endAnimationCoordinator;
                if (v14)
                {
                  v84[0] = MEMORY[0x1E69E9820];
                  v84[1] = 3221225472;
                  v84[2] = __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke;
                  v84[3] = &unk_1E70F7730;
                  v84[4] = v30;
                  [endAnimationCoordinator addCompletion:v84];
                }

                else
                {
                  v83[0] = MEMORY[0x1E69E9820];
                  v83[1] = 3221225472;
                  v83[2] = __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke_2;
                  v83[3] = &unk_1E70F3590;
                  v83[4] = v30;
                  [endAnimationCoordinator addAnimations:v83];
                }

                sessionCopy = v70;
              }

              v27 = [v25 countByEnumeratingWithState:&v85 objects:v100 count:16];
            }

            while (v27);
          }

          v12 = v67 + 1;
        }

        while (v67 + 1 != v66);
        v66 = [obj countByEnumeratingWithState:&v93 objects:v103 count:16];
      }

      while (v66);
    }

    v34 = v63;
    view3 = [v63 view];
    [view3 setHidden:0];
  }

  else
  {
    view3 = objc_opt_new();
    v36 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    visibleItems2 = [sessionCopy visibleItems];
    v38 = [visibleItems2 countByEnumeratingWithState:&v79 objects:v99 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v80;
      do
      {
        for (k = 0; k != v39; ++k)
        {
          if (*v80 != v40)
          {
            objc_enumerationMutation(visibleItems2);
          }

          v42 = *(*(&v79 + 1) + 8 * k);
          identifier2 = [v42 identifier];

          if (identifier2)
          {
            identifier3 = [v42 identifier];
            [view3 addObject:identifier3];
          }
        }

        v39 = [visibleItems2 countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v39);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    additionalItems = [v70 additionalItems];
    v46 = [additionalItems countByEnumeratingWithState:&v75 objects:v98 count:16];
    v47 = v63;
    if (v46)
    {
      v48 = v46;
      v49 = *v76;
      do
      {
        for (m = 0; m != v48; ++m)
        {
          if (*v76 != v49)
          {
            objc_enumerationMutation(additionalItems);
          }

          identifier4 = [*(*(&v75 + 1) + 8 * m) identifier];
          [v36 addObject:identifier4];
        }

        v48 = [additionalItems countByEnumeratingWithState:&v75 objects:v98 count:16];
      }

      while (v48);
    }

    groupOrderer2 = [v47 groupOrderer];
    [(_UIButtonBarGroupOrderer *)groupOrderer2 setIncludedIdentifiers:view3 excludedIdentifiers:v36];

    view4 = [v47 view];
    [view4 layoutIfNeeded];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    visibleItems3 = [v70 visibleItems];
    v55 = [visibleItems3 countByEnumeratingWithState:&v71 objects:v97 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v72;
      do
      {
        for (n = 0; n != v56; ++n)
        {
          if (*v72 != v57)
          {
            objc_enumerationMutation(visibleItems3);
          }

          v59 = *(*(&v71 + 1) + 8 * n);
          identifier5 = [v59 identifier];
          v61 = [(_UINavigationBarVisualProviderModernIOS *)self _centerBarButtonGroupWithIdentifier:identifier5];

          [v59 setCollapsed:{objc_msgSend(v61, "isDisplayingRepresentativeItem")}];
        }

        v56 = [visibleItems3 countByEnumeratingWithState:&v71 objects:v97 count:16];
      }

      while (v56);
    }

    v34 = v63;
    groupOrderer3 = [v63 groupOrderer];
    [(_UIButtonBarGroupOrderer *)groupOrderer3 save];

    sessionCopy = v70;
  }
}

- (id)_centerBarButtonGroupWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    layout = [(_UINavigationBarContentView *)self->_contentView layout];
    centerBar = [layout centerBar];
    barButtonGroups = [centerBar barButtonGroups];

    v8 = [barButtonGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(barButtonGroups);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          _customizationIdentifier = [v11 _customizationIdentifier];
          v13 = [_customizationIdentifier isEqual:identifierCopy];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [barButtonGroups countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_beginRenaming
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  item = [topEntry item];

  context = [(_UINavigationBarTitleRenamerSession *)self->_titleRenamerSession context];

  if (context != item)
  {
    if (self->_titleRenamerSession)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      context2 = [(_UINavigationBarTitleRenamerSession *)self->_titleRenamerSession context];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1218 description:{@"Attempting to begin renaming a navigation item (%@) while already renaming a different navigation item (%@) on navigation bar (%@).", item, context2, self->super._navigationBar}];
    }

    _renameHandler = [item _renameHandler];
    if (!_renameHandler)
    {
      goto LABEL_28;
    }

    v8 = self->_titleRenamer;
    if (!v8)
    {
      v8 = objc_opt_new();
      [(_UINavigationBarTitleRenamer *)v8 setDelegate:self];
      objc_storeStrong(&self->_titleRenamer, v8);
    }

    documentProperties = [(_UINavigationBarContentView *)self->_contentView documentProperties];
    if ([documentProperties wantsIconRepresentation])
    {
      _metadataWrapper = [documentProperties _metadataWrapper];
    }

    else
    {
      _metadataWrapper = 0;
    }

    _fileURLForRenaming = [_renameHandler _fileURLForRenaming];
    v41 = _fileURLForRenaming;
    v42 = _metadataWrapper;
    if (_fileURLForRenaming)
    {
      v12 = _fileURLForRenaming;
      v37 = _renameHandler;
      v39 = documentProperties;
      v13 = [_UINavigationBarTitleRenamerRemoteSession alloc];
      v43 = 0;
      _window = [(UIView *)self->_contentView _window];
      windowScene = [_window windowScene];
      v16 = [(_UINavigationBarTitleRenamerRemoteSession *)v13 initWithFileURL:v12 iconMetadata:_metadataWrapper error:&v43 scene:windowScene];
      v17 = v43;

      if (!v16)
      {
        v24 = _UINSLocalizedStringWithDefaultValue(@"Rename failed", @"Rename failed");
        [v17 localizedDescription];
        v26 = v25 = v8;
        layout = [UIAlertController alertControllerWithTitle:v24 message:v26 preferredStyle:1];

        v28 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
        v29 = [UIAlertAction actionWithTitle:v28 style:0 handler:0];
        [layout addAction:v29];

        v8 = v25;
        _viewControllerForAncestor = [(UIView *)self->super._navigationBar _viewControllerForAncestor];
        [_viewControllerForAncestor presentViewController:layout animated:1 completion:0];

        v16 = 0;
        _renameHandler = v37;
        documentProperties = v39;
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      _renameHandler = v37;
      documentProperties = v39;
    }

    else
    {
      v38 = v8;
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ForceOOPRename, @"ForceOOPRename") & 1) != 0 || !byte_1EA95E15C)
      {
        v31 = [_UINavigationBarTitleRenamerSession alloc];
        title = [item title];
        v19 = title;
        if (title)
        {
          v33 = title;
        }

        else
        {
          v33 = &stru_1EFB14550;
        }

        v16 = [(_UINavigationBarTitleRenamerSession *)v31 initWithSuggestedTitle:v33 iconMetadata:_metadataWrapper];
      }

      else
      {
        v36 = [_UINavigationBarTitleRenamerRemoteSession alloc];
        title2 = [item title];
        v19 = title2;
        v40 = documentProperties;
        if (title2)
        {
          v20 = title2;
        }

        else
        {
          v20 = &stru_1EFB14550;
        }

        _window2 = [(UIView *)self->_contentView _window];
        windowScene2 = [_window2 windowScene];
        v23 = v20;
        documentProperties = v40;
        v16 = [(_UINavigationBarTitleRenamerRemoteSession *)v36 initWithSuggestedTitle:v23 iconMetadata:_metadataWrapper scene:windowScene2];
      }

      v17 = 0;
      v8 = v38;
    }

    [(_UINavigationBarTitleRenamerSession *)v16 setContext:item];
    [(_UINavigationBarTitleRenamer *)v8 startSession:v16];
    objc_storeStrong(&self->_titleRenamerSession, v16);
    layout = [(_UINavigationBarContentView *)self->_contentView layout];
    [layout setActiveRenamerSession:v16];
    goto LABEL_27;
  }

  NSLog(&cfstr_RequestToBegin.isa, item);
LABEL_29:
}

- (void)_endRenaming
{
  if (!self->_titleRenamerSession)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1299 description:@"Unable to end a renaming session. No session in progress."];
  }

  [(_UINavigationBarTitleRenamer *)self->_titleRenamer endSession:?];
  titleRenamerSession = self->_titleRenamerSession;
  self->_titleRenamerSession = 0;

  layout = [(_UINavigationBarContentView *)self->_contentView layout];
  [layout setActiveRenamerSession:0];
}

- (id)titleRenamer:(id)renamer session:(id)session willBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range
{
  titleCopy = title;
  sessionCopy = session;
  __ASSERT_RENAMER_SESSION__(self, sessionCopy);
  v11 = __renameHandler(sessionCopy);

  if (v11)
  {
    v12 = [v11 _willBeginRenamingWithTitle:titleCopy selectedRange:range];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)titleRenamer:(id)renamer session:(id)session shouldEndRenamingWithTitle:(id)title
{
  titleCopy = title;
  sessionCopy = session;
  __ASSERT_RENAMER_SESSION__(self, sessionCopy);
  v9 = __renameHandler(sessionCopy);

  if (v9)
  {
    v10 = [v9 _shouldEndRenamingWithTitle:titleCopy];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)titleRenamer:(id)renamer session:(id)session didEndRenamingWithTitle:(id)title
{
  sessionCopy = session;
  __ASSERT_RENAMER_SESSION__(self, sessionCopy);
  v6 = __renameHandler(sessionCopy);
  if (v6)
  {
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    item = [topEntry item];

    title = [sessionCopy title];
    [item setTitle:title];

    title2 = [sessionCopy title];
    [v6 _didEndRenamingWithTitle:title2];

    [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
  }
}

- (void)titleRenamer:(id)renamer didCancelSession:(id)session
{
  sessionCopy = session;
  v9 = __renameHandler(sessionCopy);
  title = [sessionCopy title];

  [v9 _didEndRenamingWithTitle:title];
  titleRenamerSession = self->_titleRenamerSession;
  self->_titleRenamerSession = 0;

  layout = [(_UINavigationBarContentView *)self->_contentView layout];
  [layout setActiveRenamerSession:0];
}

- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidEnd:(id)end
{
  endCopy = end;
  sessionCopy = session;
  __ASSERT_RENAMER_SESSION__(self, sessionCopy);
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  item = [topEntry item];

  lastPathComponent = [endCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  [item setTitle:stringByDeletingPathExtension];

  v12 = __renameHandler(sessionCopy);

  [v12 _fileRenameDidEndWithFinalURL:endCopy];
  [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
}

- (void)titleRenamer:(id)renamer session:(id)session fileRenameDidFail:(id)fail
{
  failCopy = fail;
  sessionCopy = session;
  __ASSERT_RENAMER_SESSION__(self, sessionCopy);
  v9 = __renameHandler(sessionCopy);

  [v9 _fileRenameDidFailWithError:failCopy];
  [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
}

- (void)_updateContentForTopItem:(id)item backItem:(id)backItem animated:(BOOL)animated
{
  animatedCopy = animated;
  v144 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  backItemCopy = backItem;
  if (self->_hasIdiom && ![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
  {
    _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    wantsLargeTitleDisplayed = [(_UINavigationBarVisualProviderModernIOS *)self wantsLargeTitleDisplayed];
    v129 = _activeBarMetrics;
    v131 = wantsLargeTitleDisplayed;
    v125 = animatedCopy;
    if (self->_appearanceAPIVersion < 2)
    {
      _barTitleData = 0;
      v16 = 0;
      goto LABEL_41;
    }

    v12 = wantsLargeTitleDisplayed;
    _isManualScrollEdgeAppearanceEnabled = [itemCopy _isManualScrollEdgeAppearanceEnabled];
    if (_isManualScrollEdgeAppearanceEnabled & 1 | ![(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress]| v12)
    {
      v14 = 0;
    }

    else
    {
      _stackEntry = [itemCopy _stackEntry];
      activeLayout = [_stackEntry activeLayout];
      if (activeLayout)
      {
        v14 = activeLayout[27] < 0.25;
      }

      else
      {
        v14 = 1;
      }
    }

    if (_activeBarMetrics == 102 || _activeBarMetrics == 1)
    {
      if (!v14 || (_nullableCompactScrollEdgeAppearance(self->super._navigationBar, itemCopy), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = _compactAppearance(self->super._navigationBar, itemCopy);
      }

      goto LABEL_40;
    }

    if (v14)
    {
      goto LABEL_16;
    }

    _stackEntry2 = [itemCopy _stackEntry];
    activeLayout2 = [_stackEntry2 activeLayout];
    if (dyld_program_sdk_at_least())
    {
      if (activeLayout2)
      {
        v25 = activeLayout2[36];

        if (v25 <= 0.0)
        {
          goto LABEL_29;
        }

LABEL_16:
        v19 = self->super._navigationBar;
        v20 = itemCopy;
        scrollEdgeAppearance = [v20 scrollEdgeAppearance];
        v22 = scrollEdgeAppearance;
        if (scrollEdgeAppearance)
        {
          v16 = scrollEdgeAppearance;
        }

        else
        {
          scrollEdgeAppearance2 = [(UINavigationBar *)v19 scrollEdgeAppearance];
          v27 = scrollEdgeAppearance2;
          if (scrollEdgeAppearance2)
          {
            v16 = scrollEdgeAppearance2;
          }

          else
          {
            v32 = v19;
            standardAppearance = [v20 standardAppearance];
            v34 = standardAppearance;
            if (standardAppearance)
            {
              standardAppearance2 = standardAppearance;
            }

            else
            {
              standardAppearance2 = [(UINavigationBar *)v32 standardAppearance];
            }

            v16 = standardAppearance2;
          }
        }

        goto LABEL_39;
      }
    }

    else if (v12 && activeLayout2)
    {
      v28 = activeLayout2[35];

      if (v28 < 0.05)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_29:
    v19 = self->super._navigationBar;
    standardAppearance3 = [itemCopy standardAppearance];
    v30 = standardAppearance3;
    if (standardAppearance3)
    {
      standardAppearance4 = standardAppearance3;
    }

    else
    {
      standardAppearance4 = [(UINavigationBar *)v19 standardAppearance];
    }

    v16 = standardAppearance4;

LABEL_39:
LABEL_40:
    _barTitleData = [v16 _barTitleData];
LABEL_41:
    v130 = v16;
    _effectiveBackBarButtonItem = [backItemCopy _effectiveBackBarButtonItem];
    _backButtonMenu = [(_UINavigationBarVisualProviderModernIOS *)self _backButtonMenu];
    [_effectiveBackBarButtonItem setMenu:_backButtonMenu];

    hidesBackButton = [itemCopy hidesBackButton];
    leftItemsSupplementBackButton = [itemCopy leftItemsSupplementBackButton];
    v141 = 0;
    v142 = 0;
    [itemCopy _getLeadingItems:&v142 groups:&v141];
    v139 = 0;
    v140 = 0;
    [itemCopy _getTrailingItems:&v140 groups:&v139];
    v132 = _barTitleData;
    if (v142)
    {
      v127 = leftItemsSupplementBackButton;
      if ((_effectiveBackBarButtonItem == 0) | hidesBackButton & 1 || (leftItemsSupplementBackButton & 1) == 0 && [v142 count])
      {
        v40 = _effectiveBackBarButtonItem;
        _barButtonForBackButtonIndicator = [itemCopy _barButtonForBackButtonIndicator];
      }

      else
      {
        v40 = _effectiveBackBarButtonItem;
        _barButtonForBackButtonIndicator = 0;
      }

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      v42 = v142;
      v43 = [v42 countByEnumeratingWithState:&v135 objects:v143 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v136;
        do
        {
          for (i = 0; i != v44; ++i)
          {
            if (*v136 != v45)
            {
              objc_enumerationMutation(v42);
            }

            [*(*(&v135 + 1) + 8 * i) _setShowsChevron:*(*(&v135 + 1) + 8 * i) == _barButtonForBackButtonIndicator];
          }

          v44 = [v42 countByEnumeratingWithState:&v135 objects:v143 count:16];
        }

        while (v44);
      }

      _barTitleData = v132;
      _effectiveBackBarButtonItem = v40;
      leftItemsSupplementBackButton = v127;
    }

    [itemCopy _updateSearchBarItemGroup];
    v126 = _effectiveBackBarButtonItem;
    [(_UINavigationBarContentView *)self->_contentView setBackButtonItem:_effectiveBackBarButtonItem];
    [(_UINavigationBarContentView *)self->_contentView setBackButtonHidden:hidesBackButton];
    v47 = v142;
    if (v142)
    {
      leadingBarGroups = [(_UINavigationBarContentView *)self->_contentView leadingBarGroups];
      lastObject = [leadingBarGroups lastObject];
      _items = [lastObject _items];
      v51 = v47;
      v52 = _items;
      v53 = v52;
      if (v51 == v52)
      {

        _barTitleData = v132;
        goto LABEL_63;
      }

      if (v52)
      {
        v54 = [v51 isEqual:v52];

        _barTitleData = v132;
        if (v54)
        {
LABEL_63:
          [(_UINavigationBarContentView *)self->_contentView setLeadingItemsSupplementBackItem:leftItemsSupplementBackButton];
          _searchControllerIfAllowed = [itemCopy _searchControllerIfAllowed];
          _inlineSearchBarItemGroup = [_searchControllerIfAllowed _inlineSearchBarItemGroup];
          [(_UINavigationBarContentView *)self->_contentView setInlineSearchBarGroup:_inlineSearchBarItemGroup];

          -[_UINavigationBarContentView setPlaceInlineSearchBarInCenter:](self->_contentView, "setPlaceInlineSearchBarInCenter:", [itemCopy searchBarPlacement] == 3);
          if (v140)
          {
            reverseObjectEnumerator = [v140 reverseObjectEnumerator];
            allObjects = [reverseObjectEnumerator allObjects];
            trailingBarGroups = [(_UINavigationBarContentView *)self->_contentView trailingBarGroups];
            lastObject2 = [trailingBarGroups lastObject];
            _items2 = [lastObject2 _items];
            v62 = allObjects;
            v63 = _items2;
            v64 = v63;
            if (v62 == v63)
            {

              _barTitleData = v132;
              goto LABEL_72;
            }

            if (v62 && v63)
            {
              v65 = [v62 isEqual:v63];

              _barTitleData = v132;
              if (v65)
              {
LABEL_72:
                pinnedTrailingGroup = [itemCopy pinnedTrailingGroup];
                [(_UINavigationBarContentView *)self->_contentView setFixedTrailingGroup:pinnedTrailingGroup];

                title = [itemCopy title];
                [(_UINavigationBarContentView *)self->_contentView setTitle:title];

                titleView = [itemCopy titleView];
                [(_UINavigationBarContentView *)self->_contentView setTitleView:titleView];

                if (_UIBarsDesktopNavigationBarEnabled())
                {
                  centerItemGroups = [itemCopy centerItemGroups];
                  [(_UINavigationBarContentView *)self->_contentView setCenterBarGroups:centerItemGroups];

                  -[_UINavigationBarContentView setToolbarStyle:](self->_contentView, "setToolbarStyle:", [itemCopy style]);
                  titleMenuProvider = [itemCopy titleMenuProvider];
                  v71 = v129;
                  v72 = v130;
                  if (!titleMenuProvider)
                  {
                    titleMenuProvider = [itemCopy _renameHandler];

                    if (titleMenuProvider)
                    {
                      v73 = [UICommand _defaultCommandForAction:sel_rename_];
                      v74 = v73;
                      if (v73)
                      {
                        aBlock[0] = MEMORY[0x1E69E9820];
                        aBlock[1] = 3221225472;
                        aBlock[2] = __86___UINavigationBarVisualProviderModernIOS__updateContentForTopItem_backItem_animated___block_invoke;
                        aBlock[3] = &unk_1E70F6A70;
                        v134 = v73;
                        titleMenuProvider = _Block_copy(aBlock);
                      }

                      else
                      {
                        titleMenuProvider = 0;
                      }

                      _barTitleData = v132;
                    }
                  }

                  customizationIdentifier = [itemCopy customizationIdentifier];
                  [(_UINavigationBarContentView *)self->_contentView setCustomizationIdentifier:customizationIdentifier];

                  [(_UINavigationBarContentView *)self->_contentView setTitleMenuProvider:titleMenuProvider];
                  documentProperties = [itemCopy documentProperties];
                  [(_UINavigationBarContentView *)self->_contentView setDocumentProperties:documentProperties];

                  _renameHandler = [itemCopy _renameHandler];
                  [(_UINavigationBarContentView *)self->_contentView setRenameHandler:_renameHandler];

                  backAction = [itemCopy backAction];
                  [(_UINavigationBarContentView *)self->_contentView setBackAction:backAction];

                  [(_UINavigationBarContentView *)self->_contentView setEnableAlternatePopItem:[(_UINavigationBarVisualProviderModernIOS *)self _shouldEnableNestedNavigationPopForTopItem:itemCopy backItem:backItemCopy]];
                  additionalOverflowItems = [itemCopy additionalOverflowItems];
                  [(_UINavigationBarContentView *)self->_contentView setAdditionalItems:additionalOverflowItems];
                }

                else
                {
                  [(_UINavigationBarContentView *)self->_contentView setCenterBarGroups:MEMORY[0x1E695E0F0]];
                  [(_UINavigationBarContentView *)self->_contentView setToolbarStyle:0];
                  [(_UINavigationBarContentView *)self->_contentView setCustomizationIdentifier:0];
                  [(_UINavigationBarContentView *)self->_contentView setTitleMenuProvider:0];
                  [(_UINavigationBarContentView *)self->_contentView setDocumentProperties:0];
                  [(_UINavigationBarContentView *)self->_contentView setAdditionalItems:0];
                  [(_UINavigationBarContentView *)self->_contentView setRenameHandler:0];
                  [(_UINavigationBarContentView *)self->_contentView setBackAction:0];
                  [(_UINavigationBarContentView *)self->_contentView setEnableAlternatePopItem:0];
                  v71 = v129;
                  v72 = v130;
                }

                if (!v131)
                {
                  [(_UINavigationBarContentView *)self->_contentView setInlineTitleViewAlpha:self->_titleAlpha];
                }

                [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
                [itemCopy _minimumDesiredHeightForBarMetrics:{-[UINavigationBar _activeBarMetrics](self->super._navigationBar, "_activeBarMetrics")}];
                [(_UINavigationBarContentView *)self->_contentView setOverrideSize:?];
                [(_UINavigationBarContentView *)self->_contentView setBarMetrics:v71];
                v80 = [(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:itemCopy];
                if (v80 == 1)
                {
                  _allowLargeTitleView = 1;
                  if (_barTitleData)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (!v80)
                  {
                    _allowLargeTitleView = [(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView];
                    if (!_barTitleData)
                    {
                      goto LABEL_90;
                    }

LABEL_88:
                    titleTextAttributes = [_barTitleData titleTextAttributes];
                    v83 = [(_UINavigationBarVisualProviderModernIOS *)self _adjustedAppearanceTitleAttributes:titleTextAttributes allowsLargeTitle:_allowLargeTitleView];
                    [(_UINavigationBarContentView *)self->_contentView setTitleAttributes:v83];

                    [_barTitleData titlePositionAdjustment];
                    contentView = self->_contentView;
                    goto LABEL_91;
                  }

                  _allowLargeTitleView = 0;
                  if (_barTitleData)
                  {
                    goto LABEL_88;
                  }
                }

LABEL_90:
                _effectiveLegacyTitleAttributes = [(_UINavigationBarVisualProviderModernIOS *)self _effectiveLegacyTitleAttributes];
                v88 = [(_UINavigationBarVisualProviderModernIOS *)self _adjustedAppearanceTitleAttributes:_effectiveLegacyTitleAttributes allowsLargeTitle:_allowLargeTitleView];
                [(_UINavigationBarContentView *)self->_contentView setTitleAttributes:v88];

                titleTextAttributes = [(UINavigationBar *)self->super._navigationBar _appearanceStorage];
                [titleTextAttributes titleVerticalAdjustmentForBarMetrics:{-[UINavigationBar _activeBarMetrics](self->super._navigationBar, "_activeBarMetrics")}];
                v85 = v89;
                contentView = self->_contentView;
                v84 = 0.0;
LABEL_91:
                [(_UINavigationBarContentView *)contentView setTitlePositionAdjustment:v84, v85];

                [(_UINavigationBarContentView *)self->_contentView setAllowLeadingAlignedLargeTitle:[(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView]];
                if (v72)
                {
                  _backButtonAppearanceData = [v72 _backButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setBackButtonAppearance:_backButtonAppearanceData];

                  _plainButtonAppearanceData = [v72 _plainButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setPlainItemAppearance:_plainButtonAppearanceData];

                  _prominentButtonAppearanceData = [v72 _prominentButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setDoneItemAppearance:_prominentButtonAppearanceData];
                }

                else
                {
                  _prominentButtonAppearanceData = [(UINavigationBar *)self->super._navigationBar backIndicatorImage];
                  backIndicatorTransitionMaskImage = [(UINavigationBar *)self->super._navigationBar backIndicatorTransitionMaskImage];
                  v94 = backIndicatorTransitionMaskImage;
                  if (_prominentButtonAppearanceData && backIndicatorTransitionMaskImage)
                  {
                    [(_UINavigationBarContentView *)self->_contentView setBackIndicatorImage:_prominentButtonAppearanceData];
                    [(_UIBarContentView *)self->_contentView setBackIndicatorMaskImage:v94];
                  }
                }

                [(UINavigationBar *)self->super._navigationBar _requestedMaxBackButtonWidth];
                [(_UINavigationBarContentView *)self->_contentView _setBackButtonMaximumWidth:?];
                floatingTabBar = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBar];
                currentSelectionTitle = [floatingTabBar currentSelectionTitle];
                [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarSuppressionIfNeeded];
                if ([(_UITabContainerView *)self->_tabBarHostedView canShowFloatingTabBar])
                {
                  v96 = !self->_isSuppressingTabBar;
                }

                else
                {
                  v96 = 0;
                }

                [(_UINavigationBarContentView *)self->_contentView setHostedTabBarEnabled:v96];
                [(_UITabContainerView *)self->_tabBarHostedView floatingTabBarContentFrameInCoordinateSpace:self->_contentView];
                [(_UINavigationBarContentView *)self->_contentView setHostedTabBarFrame:?];
                [(_UINavigationBarContentView *)self->_contentView setWantsHostedTabBarMetrics:self->_wantsHostedTabBarMetrics];
                [(_UINavigationBarContentView *)self->_contentView setHasLeadingInsetFromTideBar:[(_UITabContainerView *)self->_tabBarHostedView isSidebarOverlappingContent]];
                if ([itemCopy style])
                {
                  v97 = 1;
                }

                else if (backItemCopy)
                {
                  title2 = [itemCopy title];
                  if ([title2 length])
                  {
                    title3 = [itemCopy title];
                    v100 = currentSelectionTitle;
                    v101 = v100;
                    if (title3 == v100)
                    {
                      v97 = 0;
                    }

                    else
                    {
                      v97 = 1;
                      if (v100 && title3)
                      {
                        v97 = [title3 isEqual:v100] ^ 1;
                      }
                    }

                    v72 = v130;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  _barTitleData = v132;
                }

                else
                {
                  v97 = 0;
                }

                [(_UINavigationBarContentView *)self->_contentView setShowTitleWithTabBar:v97];
                [(_UINavigationBarContentView *)self->_contentView setHostedTabBarVisibilityAffectsTitle:[(_UITabContainerView *)self->_tabBarHostedView sidebarLayout]!= 2];
                [(_UINavigationBarContentView *)self->_contentView setIsHostedTabBarVisible:[(_UITabContainerView *)self->_tabBarHostedView isShowingFloatingTabBar]];
                -[_UINavigationBarContentView setUseInlineLargeTitleMetrics:](self->_contentView, "setUseInlineLargeTitleMetrics:", [itemCopy largeTitleDisplayMode] == 3);
                [(_UINavigationBarContentView *)self->_contentView updateContentAnimated:v125];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleType:v131];
                title4 = [itemCopy title];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitle:title4];

                _alternateLargeTitles = [itemCopy _alternateLargeTitles];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setAlternateTitles:_alternateLargeTitles];

                _largeTitleAccessoryView = [itemCopy _largeTitleAccessoryView];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setAccessoryView:_largeTitleAccessoryView];

                -[_UINavigationBarLargeTitleView setAlignAccessoryViewToTitleBaseline:](self->_largeTitleView, "setAlignAccessoryViewToTitleBaseline:", [itemCopy _alignLargeTitleAccessoryViewToBaseline]);
                -[_UINavigationBarLargeTitleView setAccessoryViewHorizontalAlignment:](self->_largeTitleView, "setAccessoryViewHorizontalAlignment:", [itemCopy _largeTitleAccessoryViewHorizontalAlignment]);
                -[_UINavigationBarLargeTitleView setTwoLineMode:](self->_largeTitleView, "setTwoLineMode:", [itemCopy _largeTitleTwoLineMode]);
                if (_barTitleData)
                {
                  largeTitleTextAttributes = [_barTitleData largeTitleTextAttributes];
                  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:largeTitleTextAttributes];
                }

                else
                {
                  largeTitleTextAttributes = [(UINavigationBar *)self->super._navigationBar largeTitleTextAttributes];
                  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
                  v107 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(largeTitleTextAttributes, [traitCollection userInterfaceIdiom], 0);
                  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:v107];
                }

                if (v131)
                {
                  [(_UINavigationBarVisualProviderModernIOS *)self _computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:itemCopy];
                }

                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setProvidesExtraSpaceForExcessiveLineHeights:self->_providesExtraSpaceForExcessiveLineHeights];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView updateContent];
                prompt = [itemCopy prompt];

                if (prompt)
                {
                  prompt2 = [itemCopy prompt];
                  [(_UINavigationBarModernPromptView *)self->_promptView setPrompt:prompt2];

                  _compatibleDefaultTextColor = [(_UINavigationBarVisualProviderModernIOS *)self _compatibleDefaultTextColor];
                  [(_UINavigationBarModernPromptView *)self->_promptView setTextColor:_compatibleDefaultTextColor];
                }

                _weeTitle = [itemCopy _weeTitle];
                v112 = [_weeTitle length];

                if (v112)
                {
                  if (!self->_weeTitleLabel)
                  {
                    v113 = [UILabel alloc];
                    [(UIView *)self->super._navigationBar bounds];
                    v114 = [(UILabel *)v113 initWithFrame:?];
                    weeTitleLabel = self->_weeTitleLabel;
                    self->_weeTitleLabel = v114;
                  }

                  v116 = objc_alloc(MEMORY[0x1E696AAB0]);
                  _weeTitle2 = [itemCopy _weeTitle];
                  localizedUppercaseString = [_weeTitle2 localizedUppercaseString];
                  _defaultWeeTitleAttributes = [(_UINavigationBarVisualProviderModernIOS *)self _defaultWeeTitleAttributes];
                  v120 = [v116 initWithString:localizedUppercaseString attributes:_defaultWeeTitleAttributes];
                  [(UILabel *)self->_weeTitleLabel setAttributedText:v120];

                  v72 = v130;
                }

                _searchControllerIfAllowed2 = [itemCopy _searchControllerIfAllowed];
                searchBar = [_searchControllerIfAllowed2 searchBar];

                if (([searchBar _isIntegratedIntoToolbarOrNavigationBarContent] & 1) != 0 || !searchBar)
                {
                  if (!searchBar)
                  {
LABEL_135:
                    [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];

                    goto LABEL_136;
                  }
                }

                else
                {
                  if (v129 == 102 || v129 == 1)
                  {
                    v123 = @"UICTContentSizeCategoryAccessibilityL";
                  }

                  else
                  {
                    v123 = 0;
                  }

                  [searchBar setMaximumContentSizeCategory:v123];
                }

                if ([searchBar showsScopeBar])
                {
                  _scopeBar = [searchBar _scopeBar];
                  [_scopeBar setAlpha:1.0];
                }

                goto LABEL_135;
              }
            }

            else
            {

              _barTitleData = v132;
            }
          }

          [(_UINavigationBarContentView *)self->_contentView setTrailingBarButtonItems:v140];
          [(_UINavigationBarContentView *)self->_contentView setTrailingBarGroups:v139];
          goto LABEL_72;
        }
      }

      else
      {

        _barTitleData = v132;
      }
    }

    [(_UINavigationBarContentView *)self->_contentView setLeadingBarButtonItems:v142];
    [(_UINavigationBarContentView *)self->_contentView setLeadingBarGroups:v141];
    goto LABEL_63;
  }

LABEL_136:
}

- (id)_compatibleDefaultTextColor
{
  if ((dyld_program_sdk_at_least() & 1) != 0 || ([(UINavigationBar *)self->super._navigationBar barStyle]- 1) > 1)
  {
    v3 = +[UIColor labelColor];
  }

  else
  {
    v3 = +[UIColor whiteColor];
  }

  return v3;
}

- (BOOL)_shouldEnableNestedNavigationPopForTopItem:(id)item backItem:(id)backItem
{
  itemCopy = item;
  backItemCopy = backItem;
  if (backItemCopy && ([itemCopy backAction], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    delegate = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [delegate _navigationBarTopItemIsNestedNavigationController:self->super._navigationBar];
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

- (void)_ensureLayoutsConfiguredForEntry:(id)entry forMeasuring:(BOOL)measuring
{
  v74 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    if (![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
    {
      window = [(UIView *)self->super._navigationBar window];

      if (window)
      {
        item = [entryCopy item];
        _searchControllerIfAllowed = [item _searchControllerIfAllowed];
        searchBar = [_searchControllerIfAllowed searchBar];
        _navigationBar = [item _navigationBar];
        if (_navigationBar || (measuring || [(_UINavigationBarItemStack *)self->super._stack state]== 1 || [(_UINavigationBarItemStack *)self->super._stack state]== 2) && (_navigationBar = self->super._navigationBar) != 0)
        {
          v12 = _navigationBar;
          traitCollection = [(UIView *)_navigationBar traitCollection];
          v14 = [item _hasIntegratedSearchBarInNavigationBarForTraits:traitCollection];

          v15 = v14;
          if (v14 == [searchBar _isHostedInlineByNavigationBar])
          {
            goto LABEL_14;
          }
        }

        else
        {
          v15 = 0;
          v12 = 0;
          if (([searchBar _isHostedInlineByNavigationBar] & 1) == 0)
          {
            goto LABEL_14;
          }
        }

        v16 = v15;
        if (os_variant_has_internal_diagnostics())
        {
          v32 = __UIFaultDebugAssertLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            navigationBar = self->super._navigationBar;
            *buf = 138412290;
            v73 = navigationBar;
            _os_log_fault_impl(&dword_188A29000, v32, OS_LOG_TYPE_FAULT, "UINavigationBar has changed horizontal size class without updating search bar to new placement. Fixing, but delegate searchBarPlacement callbacks have been skipped. navigationBar = %@", buf, 0xCu);
          }
        }

        else
        {
          v17 = *(__UILogGetCategoryCachedImpl("Assert", &_ensureLayoutsConfiguredForEntry_forMeasuring____s_category) + 8);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = self->super._navigationBar;
            *buf = 138412290;
            v73 = v18;
            _os_log_impl(&dword_188A29000, v17, OS_LOG_TYPE_ERROR, "UINavigationBar has changed horizontal size class without updating search bar to new placement. Fixing, but delegate searchBarPlacement callbacks have been skipped. navigationBar = %@", buf, 0xCu);
          }
        }

        LODWORD(v15) = v16;
        [searchBar _setHostedInlineByNavigationBar:v16];
LABEL_14:
        v70 = _searchControllerIfAllowed;
        normalLayout = [entryCopy normalLayout];
        searchLayout = [entryCopy searchLayout];
        v21 = searchLayout;
        if (searchBar)
        {
          v22 = searchLayout == 0;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        if (!searchBar)
        {
          v27 = 0;
LABEL_28:
          if (self->_transitionContext)
          {
            v28 = normalLayout == 0;
          }

          else
          {
            v28 = 1;
          }

          v29 = v28;
          if (((v29 | v23) & 1) == 0 && !v27)
          {
            v30 = v70;
LABEL_106:

            goto LABEL_107;
          }

LABEL_37:
          if (normalLayout)
          {
            goto LABEL_38;
          }

LABEL_45:
          v34 = objc_alloc_init(_UINavigationBarLayout);
          normalLayout = v34;
          if (v34)
          {
            v34->_apiVersion = self->_appearanceAPIVersion;
            v34->_representedSearchLayoutState = 2;
          }

          [entryCopy setNormalLayout:{v34, v12}];
          _effectiveDelegateSupportsScrollEdgeTransitionProgress = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
          if (!normalLayout)
          {
            [item _isManualScrollEdgeAppearanceEnabled];
            v35 = 1;
LABEL_49:
            [(_UINavigationBarVisualProviderModernIOS *)self _contentBackgroundExtension];
            v37 = v36;
            prompt = [item prompt];
            if ((v35 & 1) == 0)
            {
              *(normalLayout + 200) = v37;
            }

            [(_UINavigationBarLayout *)normalLayout setBackgroundView:?];
            if (prompt)
            {
              promptView = self->_promptView;
            }

            else
            {
              promptView = 0;
            }

            [(_UINavigationBarLayout *)normalLayout setPromptView:?];
            if ((v35 & 1) == 0)
            {
              *(normalLayout + 114) = v15;
            }

            if (v15)
            {
              v39 = 0;
            }

            else
            {
              v39 = searchBar;
            }

            [(_UINavigationBarLayout *)normalLayout setSearchBar:v39];
            -[_UINavigationBarLayout setHidesSearchBarWhenScrolling:](normalLayout, [item _hidesSearchBarWhenScrollingIfAllowed]);
            _preserveSearchBarAcrossTransitions = [item _preserveSearchBarAcrossTransitions];
            v67 = v15;
            if (v35)
            {
              [item _backgroundHidden];
            }

            else
            {
              *(normalLayout + 115) = _preserveSearchBarAcrossTransitions;
              *(normalLayout + 110) = [item _backgroundHidden];
            }

            selfCopy = self;
            v42 = selfCopy;
            backgroundAlpha = selfCopy->_backgroundAlpha;
            if (!selfCopy->_usesBarBackground)
            {
              [(_UINavigationBarVisualProviderModernIOS *)selfCopy alphaForBarBackground:self->_backgroundView preferredAlpha:item navigationItem:backgroundAlpha];
              v42->_backgroundAlpha = backgroundAlpha;
            }

            [(_UINavigationBarVisualProviderModernIOS *)v42 applyBarBackground:self->_backgroundView alpha:backgroundAlpha];

            v44 = [(_UINavigationBarVisualProviderModernIOS *)v42 useManualScrollEdgeAppearanceForItem:item];
            if (v35)
            {
              [item _manualScrollEdgeAppearanceProgress];
            }

            else
            {
              if (*(normalLayout + 111) != v44)
              {
                *(normalLayout + 111) = v44;
                [normalLayout _updateLayoutOutputs];
              }

              [item _manualScrollEdgeAppearanceProgress];
              *(normalLayout + 216) = v45;
              if (*(normalLayout + 111) == 1)
              {
                [normalLayout _updateLayoutOutputs];
              }

              v46 = v42->_tabBarHostedView != 0;
              if (*(normalLayout + 117) != v46)
              {
                *(normalLayout + 117) = v46;
                [normalLayout _reorderLayoutItem:*(normalLayout + 64) toOrder:{objc_msgSend(normalLayout, "_topPaletteOrder")}];
              }
            }

            contentViewVisualProvider = [(_UINavigationBarVisualProvider *)v42 contentViewVisualProvider];
            [(_UINavigationBarLayout *)normalLayout setContentViewVisualProvider:contentViewVisualProvider];

            [(_UINavigationBarLayout *)normalLayout setContentView:?];
            _topPalette = [item _topPalette];
            [(_UINavigationBarLayout *)normalLayout setTopPalette:_topPalette];
            _bottomPalette = [item _bottomPalette];
            [(_UINavigationBarLayout *)normalLayout setBottomPalette:_bottomPalette];
            if ([(_UINavigationBarVisualProviderModernIOS *)v42 _stackWantsLargeTitleDisplayedForItem:item hideLargeTitleForActiveSearch:0])
            {
              [(_UINavigationBarLayout *)normalLayout setLargeTitleView:?];
              weeTitleLabel = v42->_weeTitleLabel;
            }

            else
            {
              [(_UINavigationBarLayout *)normalLayout setLargeTitleView:?];
              weeTitleLabel = 0;
            }

            [(_UINavigationBarLayout *)normalLayout setWeeTitleLabel:?];
            if (!searchBar)
            {
              v30 = v70;
              v12 = v65;
LABEL_105:

              goto LABEL_106;
            }

            if (v21)
            {
              _effectiveDelegateSupportsScrollEdgeTransitionProgress2 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
            }

            else
            {
              v50 = objc_alloc_init(_UINavigationBarLayout);
              v21 = v50;
              if (v50)
              {
                v50->_apiVersion = v42->_appearanceAPIVersion;
                v50->_representedSearchLayoutState = 3;
              }

              [entryCopy setSearchLayout:v50];
              _effectiveDelegateSupportsScrollEdgeTransitionProgress2 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
              if (!v21)
              {
                v51 = 1;
LABEL_81:
                [(_UINavigationBarLayout *)v21 setBackgroundView:?];
                if (prompt)
                {
                  v52 = v42->_promptView;
                }

                else
                {
                  v52 = 0;
                }

                v30 = v70;
                [(_UINavigationBarLayout *)v21 setPromptView:v52];
                if ((v51 & 1) == 0)
                {
                  *(v21 + 114) = v67;
                }

                [(_UINavigationBarLayout *)v21 setSearchBar:searchBar];
                _preserveSearchBarAcrossTransitions2 = [item _preserveSearchBarAcrossTransitions];
                if ((v51 & 1) == 0)
                {
                  *(v21 + 115) = _preserveSearchBarAcrossTransitions2;
                }

                [(_UINavigationBarLayout *)v21 setHidesSearchBarWhenScrolling:?];
                _backgroundHidden = [item _backgroundHidden];
                if ((v51 & 1) == 0)
                {
                  *(v21 + 110) = _backgroundHidden;
                }

                contentViewVisualProvider2 = [(_UINavigationBarVisualProvider *)v42 contentViewVisualProvider];
                [(_UINavigationBarLayout *)v21 setContentViewVisualProvider:contentViewVisualProvider2];

                if ([v70 _hidesNavigationBarDuringPresentationRespectingInlineSearch])
                {
                  [(_UINavigationBarLayout *)v21 setContentView:?];
                }

                else
                {
                  if (v35)
                  {
                    v56 = 0;
                  }

                  else
                  {
                    v56 = *(normalLayout + 128);
                  }

                  v57 = v56;
                  [(_UINavigationBarLayout *)v21 setContentView:v57];

                  if (!v67)
                  {
                    if (v35)
                    {
                      [(_UINavigationBarLayout *)v21 setLargeTitleView:?];
                      v59 = 0;
                    }

                    else
                    {
                      v58 = *(normalLayout + 144);
                      [(_UINavigationBarLayout *)v21 setLargeTitleView:v58];

                      v59 = *(normalLayout + 232);
                    }

                    v12 = v65;
                    v60 = v59;
                    [(_UINavigationBarLayout *)v21 setWeeTitleLabel:v60];

LABEL_99:
                    _paletteForSearch = [(_UINavigationBarPalette *)_topPalette _paletteForSearch];
                    [(_UINavigationBarLayout *)v21 setTopPalette:_paletteForSearch];

                    _paletteForSearch2 = [(_UINavigationBarPalette *)_bottomPalette _paletteForSearch];
                    [(_UINavigationBarLayout *)v21 setBottomPalette:_paletteForSearch2];

                    if ([(_UINavigationBarVisualProviderModernIOS *)v42 alwaysEvaluateChromelessTransitionProgress])
                    {
                      v63 = [(_UINavigationBarVisualProviderModernIOS *)v42 useManualScrollEdgeAppearanceForItem:item];
                      if (v51)
                      {
                        [item _manualScrollEdgeAppearanceProgress];
                      }

                      else
                      {
                        if (*(v21 + 111) != v63)
                        {
                          *(v21 + 111) = v63;
                          [v21 _updateLayoutOutputs];
                        }

                        [item _manualScrollEdgeAppearanceProgress];
                        *(v21 + 216) = v64;
                        if (*(v21 + 111) == 1)
                        {
                          [v21 _updateLayoutOutputs];
                        }
                      }
                    }

                    goto LABEL_105;
                  }
                }

                [(_UINavigationBarLayout *)v21 setLargeTitleView:?];
                [(_UINavigationBarLayout *)v21 setWeeTitleLabel:?];
                v12 = v65;
                goto LABEL_99;
              }
            }

            v51 = 0;
            *(v21 + 113) = _effectiveDelegateSupportsScrollEdgeTransitionProgress2;
            *(v21 + 200) = v37;
            goto LABEL_81;
          }

LABEL_48:
          *(normalLayout + 113) = _effectiveDelegateSupportsScrollEdgeTransitionProgress;
          v35 = 0;
          *(normalLayout + 112) = [item _isManualScrollEdgeAppearanceEnabled];
          goto LABEL_49;
        }

        if (normalLayout)
        {
          if (v15 != *(normalLayout + 114))
          {
LABEL_38:
            _effectiveDelegateSupportsScrollEdgeTransitionProgress = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
            goto LABEL_48;
          }

          if (searchLayout)
          {
LABEL_24:
            if (v15 != *(searchLayout + 114))
            {
              goto LABEL_37;
            }

            v66 = v15;
            _hidesNavigationBarDuringPresentationRespectingInlineSearch = [_searchControllerIfAllowed _hidesNavigationBarDuringPresentationRespectingInlineSearch];
            v25 = *(v21 + 128);
            goto LABEL_26;
          }

          if (v15)
          {
            goto LABEL_38;
          }
        }

        else
        {
          if (v15)
          {
            goto LABEL_45;
          }

          if (searchLayout)
          {
            goto LABEL_24;
          }
        }

        v66 = v15;
        _hidesNavigationBarDuringPresentationRespectingInlineSearch = [_searchControllerIfAllowed _hidesNavigationBarDuringPresentationRespectingInlineSearch];
        v25 = 0;
LABEL_26:
        v26 = v25;

        v27 = _hidesNavigationBarDuringPresentationRespectingInlineSearch ^ (v26 == 0);
        LODWORD(v15) = v66;
        goto LABEL_28;
      }
    }
  }

LABEL_107:
}

- (void)updateSearchBarForPlacementChangeIfApplicable
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    item = [topEntry item];

    _searchControllerIfAllowed = [item _searchControllerIfAllowed];
    searchBar = [_searchControllerIfAllowed searchBar];

    LOBYTE(_searchControllerIfAllowed) = [item _hasIntegratedSearchBarInNavigationBar];
    [searchBar _setHostedInlineByNavigationBar:{objc_msgSend(item, "_hasIntegratedSearchBarInNavigationBar")}];
    if ((_searchControllerIfAllowed & 1) == 0)
    {
      [searchBar _setHostedInlineByToolbar:{objc_msgSend(item, "_hasIntegratedSearchBarInToolbar")}];
    }
  }
}

- (void)deferSearchSuggestionsMenuRefreshForGeometryChange
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    activeLayout = [topEntry activeLayout];
    v4 = activeLayout;
    if (activeLayout)
    {
      [*(activeLayout + 160) deferSearchSuggestionsMenuRefreshForGeometryChange];
    }
  }
}

- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v8 = itemCopy;
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    item = [topEntry item];

    itemCopy = v8;
    if (item == v8)
    {
      delegate = [(UINavigationBar *)self->super._navigationBar delegate];
      if (objc_opt_respondsToSelector())
      {
        [delegate _navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:self->super._navigationBar];
      }

      itemCopy = v8;
    }
  }
}

- (void)refreshSearchSuggestionsMenuAfterGeometryChange
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    activeLayout = [topEntry activeLayout];
    v4 = activeLayout;
    if (activeLayout)
    {
      [*(activeLayout + 160) refreshSearchSuggestionsMenuAfterGeometryChange];
    }
  }
}

- (id)emptyLayout
{
  v3 = objc_getAssociatedObject(self, &emptyLayout___emptyLayoutKey);
  if (v3)
  {
    v4 = v3;
    _effectiveDelegateSupportsScrollEdgeTransitionProgress = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
  }

  else
  {
    v6 = objc_alloc_init(_UINavigationBarLayout);
    v4 = v6;
    if (v6)
    {
      v6->_apiVersion = self->_appearanceAPIVersion;
      v6->_representedSearchLayoutState = 2;
      [(_UINavigationBarVisualProviderModernIOS *)self _contentBackgroundExtension];
      *(v4 + 200) = v7;
    }

    else
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _contentBackgroundExtension];
    }

    [(_UINavigationBarLayout *)v4 setBackgroundView:?];
    contentViewVisualProvider = [(_UINavigationBarVisualProvider *)self contentViewVisualProvider];
    [(_UINavigationBarLayout *)v4 setContentViewVisualProvider:contentViewVisualProvider];

    [(_UINavigationBarLayout *)v4 setContentView:?];
    objc_setAssociatedObject(self, &emptyLayout___emptyLayoutKey, v4, 1);
    _effectiveDelegateSupportsScrollEdgeTransitionProgress = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  *(v4 + 113) = _effectiveDelegateSupportsScrollEdgeTransitionProgress;
LABEL_7:

  return v4;
}

- (void)_layoutInBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  v29 = [(_UINavigationBarItemStack *)self->super._stack topEntry:bounds.origin.x];
  item = [v29 item];
  activeLayout = [v29 activeLayout];
  if (self->_backgroundTransparentWhenNotCollapsed)
  {
    v8 = 1;
  }

  else if (self->_transitionContext || [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsSearchDisplayedBelowContentViewForItem:item]|| [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:item])
  {
    v8 = 0;
  }

  else
  {
    v8 = ![(_UINavigationBarVisualProviderModernIOS *)self _stackWantsBottomPaletteDisplayedForItem:item];
  }

  if (activeLayout)
  {
    *(activeLayout + 109) = v8;
    p_backgroundAlpha = &self->_backgroundAlpha;
    backgroundAlpha = self->_backgroundAlpha;
    if (*(activeLayout + 208) != backgroundAlpha)
    {
      *(activeLayout + 208) = backgroundAlpha;
      [activeLayout _updateLayoutOutputs];
    }
  }

  else
  {
    p_backgroundAlpha = &self->_backgroundAlpha;
  }

  normalLayout = [v29 normalLayout];

  if (activeLayout != normalLayout)
  {
    goto LABEL_32;
  }

  if ([(_UITabContainerView *)self->_tabBarHostedView canShowFloatingTabBar])
  {
LABEL_29:
    if (!activeLayout)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!activeLayout)
  {
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = *(activeLayout + 144);
  if (!v12 || [item largeTitleDisplayMode] != 3)
  {
    goto LABEL_28;
  }

  v13 = *(activeLayout + 160);
  backButton = [v13 backButton];
  if (backButton)
  {

    goto LABEL_30;
  }

  staticNavBarButtonItem = self->_staticNavBarButtonItem;

  if (staticNavBarButtonItem)
  {
LABEL_30:
    if (*(activeLayout + 108))
    {
      *(activeLayout + 108) = 0;
      [activeLayout _updateContentViewLayoutItem];
      [activeLayout _updateLargeTitleViewLayoutItem];
      [activeLayout _updateRefreshControlLayoutData];
    }

    goto LABEL_32;
  }

  if ((*(activeLayout + 108) & 1) == 0)
  {
    *(activeLayout + 108) = 1;
    [activeLayout _updateContentViewLayoutItem];
    [activeLayout _updateLargeTitleViewLayoutItem];
    [activeLayout _updateRefreshControlLayoutData];
  }

  v16 = *(activeLayout + 160);
  if ([v16 leadingGroupsMode] == 1)
  {
    [v16 setLeadingGroupsMode:2];
  }

  if ([v16 centerGroupsMode] == 1)
  {
    [v16 setCenterGroupsMode:2];
  }

LABEL_32:
  [(_UINavigationBarLayout *)activeLayout setLayoutSize:height];
  [(_UINavigationBarLayout *)activeLayout layoutViews];
  [(_UINavigationBarVisualProviderModernIOS *)self applyBarBackground:self->_backgroundView alpha:*p_backgroundAlpha];
  if (!self->_transitionContext)
  {
    [(UIView *)self->_backgroundView setFrame:[(_UINavigationBarLayout *)activeLayout backgroundViewLayoutFrame]];
    if (self->_usesBarBackground)
    {
      layout = [(_UIBarBackground *)self->_backgroundView layout];
      v18 = layout;
      if (activeLayout)
      {
        [layout setBackgroundTransitionProgress:*(activeLayout + 288)];
        v19 = *(activeLayout + 296);
      }

      else
      {
        v19 = 0.0;
        [layout setBackgroundTransitionProgress:0.0];
      }

      [v18 setBackgroundAlpha:v19];
      [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
    }

    if (!self->_transitionContext)
    {
      window = [(UIView *)self->_weeTitleLabel window];
      if (window)
      {
      }

      else if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        goto LABEL_49;
      }

      if (activeLayout)
      {
        v21 = *(activeLayout + 144);
        if (v21)
        {
          v22 = v21;
          v23 = *(activeLayout + 232);
          if (v23)
          {
            v24 = v23;
            topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
            _weeTitle = [topItem _weeTitle];
            v27 = [_weeTitle length];

            v28 = 1.0;
            if (v27)
            {
LABEL_48:
              [(UIView *)self->_weeTitleLabel setAlpha:v28];
              goto LABEL_49;
            }
          }

          else
          {
          }
        }
      }

      v28 = 0.0;
      goto LABEL_48;
    }
  }

LABEL_49:
}

- (void)_updateModernLayout:(id)layout forNavigationItem:(id)item compact:(BOOL)compact
{
  compactCopy = compact;
  itemCopy = item;
  navigationBar = self->super._navigationBar;
  if (compactCopy)
  {
    layoutCopy = layout;
    v10 = _compactAppearance(navigationBar, itemCopy);
    _backgroundData = [v10 _backgroundData];

    if (![(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
    {
      v19 = _backgroundData;
      _backgroundData = v19;
      goto LABEL_14;
    }

    v12 = _nullableCompactScrollEdgeAppearance(self->super._navigationBar, itemCopy);
    if (!v12)
    {
      _backgroundData2 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
LABEL_13:
      v19 = _backgroundData2;

      goto LABEL_14;
    }

LABEL_12:
    _backgroundData2 = [v12 _backgroundData];
    goto LABEL_13;
  }

  v14 = navigationBar;
  layoutCopy2 = layout;
  standardAppearance = [itemCopy standardAppearance];
  v17 = standardAppearance;
  if (standardAppearance)
  {
    standardAppearance2 = standardAppearance;
  }

  else
  {
    standardAppearance2 = [(UINavigationBar *)v14 standardAppearance];
  }

  v20 = standardAppearance2;

  _backgroundData = [v20 _backgroundData];

  scrollEdgeAppearance = [itemCopy scrollEdgeAppearance];
  if (scrollEdgeAppearance || ([(UINavigationBar *)self->super._navigationBar scrollEdgeAppearance], (scrollEdgeAppearance = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = scrollEdgeAppearance;
    goto LABEL_12;
  }

  v19 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
LABEL_14:
  [layout setBackgroundData1:_backgroundData];
  [layout setBackgroundData2:v19];
}

- (void)_updateLegacyLayout:(id)layout forNavigationItem:(id)item
{
  layoutCopy = layout;
  navigationBar = self->super._navigationBar;
  itemCopy = item;
  isTranslucent = [(UINavigationBar *)navigationBar isTranslucent];
  backgroundEffects = [(UINavigationBar *)self->super._navigationBar backgroundEffects];
  _effectiveBarTintColor = [(UINavigationBar *)self->super._navigationBar _effectiveBarTintColor];
  barStyle = [(UINavigationBar *)self->super._navigationBar barStyle];
  v13 = barStyle;
  if (backgroundEffects)
  {
    [layoutCopy configureWithEffects:backgroundEffects];
  }

  else if (barStyle == 4 || (v14 = self->super._navigationBar, v21 = 0, [(UINavigationBar *)v14 _getBackgroundImage:&v21 shouldRespectOversizedBackgroundImage:0 actualBarMetrics:0 actualBarPosition:0], (v15 = v21) == 0))
  {
    [layoutCopy configureEffectForStyle:v13 backgroundTintColor:_effectiveBarTintColor forceOpaque:!isTranslucent];
  }

  else
  {
    v16 = v15;
    self->_backgroundTransparentWhenNotCollapsed = 1;
    v20 = 0;
    [v15 _isInvisibleAndGetIsTranslucent:&v20];
    if (isTranslucent)
    {
      [layoutCopy configureImage:v16 forceTranslucent:(v20 & 1) == 0];
    }

    else if (_effectiveBarTintColor)
    {
      [layoutCopy configureImage:v16 forceOpaque:v20 backgroundTintColor:_effectiveBarTintColor];
    }

    else
    {
      [layoutCopy configureImage:v16 forceOpaque:v20 barStyle:v13];
    }
  }

  shadowImage = [(UINavigationBar *)self->super._navigationBar shadowImage];
  _backgroundHidden = [itemCopy _backgroundHidden];

  if ((_backgroundHidden & 1) == 0)
  {
    _hidesShadow = [(UINavigationBar *)self->super._navigationBar _hidesShadow];
    if (shadowImage && !_hidesShadow)
    {
      [layoutCopy configureShadowImage:shadowImage];
      goto LABEL_19;
    }

    if (!_hidesShadow)
    {
      [layoutCopy configureShadowForBarStyle:v13];
      goto LABEL_19;
    }
  }

  [layoutCopy configureWithoutShadow];
LABEL_19:
  [layoutCopy setShadowAlpha:self->_shadowAlpha];
}

- (id)_backgroundLayoutOfClass:(Class)class fromLayout:(id)layout
{
  layoutCopy = layout;
  v7 = layoutCopy;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [[class alloc] initWithLayout:layoutCopy];
  }

  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  [v7 setInterfaceIdiom:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];
  [v7 setInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

  return v7;
}

- (id)_updateBackgroundLayout:(id)layout forNavigationItem:(id)item compact:(BOOL)compact
{
  compactCopy = compact;
  layoutCopy = layout;
  itemCopy = item;
  if ([(UIView *)self->super._navigationBar _canDrawContent])
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (self->_appearanceAPIVersion < 2)
  {
    v12 = [(_UINavigationBarVisualProviderModernIOS *)self _backgroundLayoutOfClass:objc_opt_class() fromLayout:layoutCopy];

    _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    if (compactCopy)
    {
      if (_activeBarMetrics == 1 || _activeBarMetrics == 102)
      {
        goto LABEL_13;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = currentHandler;
      v16 = @"LEGACY: Trying to update background for compact size while bar is not in compact size is not supported";
      v17 = a2;
      selfCopy2 = self;
      v19 = 2177;
    }

    else
    {
      if (!_activeBarMetrics || _activeBarMetrics == 101)
      {
        goto LABEL_13;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = currentHandler;
      v16 = @"LEGACY: Trying to update background for default size while bar is not in default size is not supported";
      v17 = a2;
      selfCopy2 = self;
      v19 = 2179;
    }

    [currentHandler handleFailureInMethod:v17 object:selfCopy2 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:v19 description:v16];

LABEL_13:
    [(_UINavigationBarVisualProviderModernIOS *)self _updateLegacyLayout:v12 forNavigationItem:itemCopy];
    goto LABEL_14;
  }

  v12 = [(_UINavigationBarVisualProviderModernIOS *)self _backgroundLayoutOfClass:objc_opt_class() fromLayout:layoutCopy];

  [(_UINavigationBarVisualProviderModernIOS *)self _updateModernLayout:v12 forNavigationItem:itemCopy compact:compactCopy];
LABEL_14:
  layoutCopy = v12;
  v11 = layoutCopy;
LABEL_15:

  return v11;
}

- (NSDirectionalEdgeInsets)largeSearchBaseMarginsRequiringNavMinimums:(BOOL)minimums
{
  minimumsCopy = minimums;
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  item = [topEntry item];

  [item largeTitleInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([item useRelativeLargeTitleInsets])
  {
    [(UINavigationBar *)self->super._navigationBar _resolvedLayoutMargins];
    v10 = v10 + v15;
    v14 = v14 + v16;
  }

  else if (v10 == 0.0 || v14 == 0.0)
  {
    [(UINavigationBar *)self->super._navigationBar _resolvedLayoutMargins];
    if (v10 == 0.0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v10;
    }

    if (v14 == 0.0)
    {
      v22 = v20;
    }

    else
    {
      v22 = v14;
    }

    v23 = fmax(v21, v19);
    v24 = fmax(v22, v20);
    if (minimumsCopy)
    {
      v14 = v24;
    }

    else
    {
      v14 = v22;
    }

    if (minimumsCopy)
    {
      v10 = v23;
    }

    else
    {
      v10 = v21;
    }
  }

  else if (minimumsCopy)
  {
    [(UINavigationBar *)self->super._navigationBar _resolvedLayoutMargins];
    v10 = fmax(v10, v17);
    v14 = fmax(v14, v18);
  }

  v25 = v8;
  v26 = v10;
  v27 = v12;
  v28 = v14;
  result.trailing = v28;
  result.bottom = v27;
  result.leading = v26;
  result.top = v25;
  return result;
}

- (NSDirectionalEdgeInsets)resolvedSearchBarMargins
{
  if ([(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView])
  {

    [(_UINavigationBarVisualProviderModernIOS *)self largeSearchBaseMarginsRequiringNavMinimums:1];
  }

  else
  {
    navigationBar = self->super._navigationBar;

    [(UINavigationBar *)navigationBar _resolvedLayoutMargins];
  }

  result.trailing = v6;
  result.bottom = v5;
  result.leading = v4;
  result.top = v3;
  return result;
}

- (void)_configureMarginsOnContentViewsAndPalette:(id)palette withContentMargin:(double)margin
{
  paletteCopy = palette;
  [(_UINavigationBarVisualProviderModernIOS *)self leadingMarginForContentViewsWithContentMargin:margin];
  v7 = v6;
  [(_UINavigationBarContentView *)self->_contentView _setDirectionalLayoutMargins:0.0, v6, 0.0, margin];
  [(UIView *)self->_promptView setDirectionalLayoutMargins:0.0, v7, 0.0, margin];
  [(_UINavigationBarVisualProviderModernIOS *)self resolvedLargeTitleMargins];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(UIView *)self->super._navigationBar insetsLayoutMarginsFromSafeArea]&& [(UIView *)self->_largeTitleView insetsLayoutMarginsFromSafeArea])
  {
    _shouldReverseLayoutDirection = [(UIView *)self->super._navigationBar _shouldReverseLayoutDirection];
    [(UIView *)self->super._navigationBar safeAreaInsets];
    if (_shouldReverseLayoutDirection)
    {
      v21 = v15;
    }

    else
    {
      v21 = v11;
    }

    if (_shouldReverseLayoutDirection)
    {
      v22 = v11;
    }

    else
    {
      v22 = v15;
    }

    v9 = v9 - v17;
    v13 = v13 - v19;
    if (_shouldReverseLayoutDirection)
    {
      v11 = v22 - v20;
    }

    else
    {
      v11 = v21 - v18;
    }

    if (_shouldReverseLayoutDirection)
    {
      v15 = v21 - v18;
    }

    else
    {
      v15 = v22 - v20;
    }
  }

  [(UIView *)self->_largeTitleView setDirectionalLayoutMargins:v9, v11, v13, v15];
  v23 = paletteCopy;
  if (paletteCopy)
  {
    _contentViewMarginType = [paletteCopy _contentViewMarginType];
    if (_contentViewMarginType == 2)
    {
      contentView = [paletteCopy contentView];
      v27 = contentView;
      v28 = v9;
      marginCopy = v11;
      v29 = v13;
      marginCopy2 = v15;
    }

    else
    {
      v25 = _contentViewMarginType == 1;
      v23 = paletteCopy;
      if (!v25)
      {
        goto LABEL_22;
      }

      contentView = [paletteCopy contentView];
      v27 = contentView;
      v28 = 0.0;
      v29 = 0.0;
      marginCopy = margin;
      marginCopy2 = margin;
    }

    [contentView setDirectionalLayoutMargins:{v28, marginCopy, v29, marginCopy2}];

    v23 = paletteCopy;
  }

LABEL_22:
}

- (void)_updateWithCompletion:(id)completion
{
  stack = self->super._stack;
  completionCopy = completion;
  backItem = [(_UINavigationBarItemStack *)stack backItem];
  [backItem _setTitleViewDataSource:0];

  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [topItem _setTitleViewDataSource:self->_contentView];

  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];

  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry2 activeLayout];

  previousTopEntry = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
  activeLayout2 = [previousTopEntry activeLayout];
  v12 = activeLayout2;
  if (activeLayout)
  {
    [(_UINavigationBarLayout *)activeLayout2 removeViewsNotInLayout:activeLayout];
  }

  else
  {
    [(_UINavigationBarLayout *)activeLayout2 removeAllViews];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self layoutSubviews];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
  transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  completionCopy[2](completionCopy, 0, transitionAssistant);
}

- (void)_setupTransitionContextForTransition:(int64_t)transition completion:(id)completion
{
  navigationBar = self->super._navigationBar;
  completionCopy = completion;
  traitCollection = [(UIView *)navigationBar traitCollection];
  v10 = +[_UINavigationBarTransitionContext contextForTransition:withIdiom:completion:](_UINavigationBarTransitionContext, "contextForTransition:withIdiom:completion:", transition, [traitCollection userInterfaceIdiom], completionCopy);

  transitionContext = self->_transitionContext;
  self->_transitionContext = v10;

  [(_UINavigationBarTransitionContext *)self->_transitionContext setNavigationBar:self->super._navigationBar];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setApiVersion:self->_appearanceAPIVersion];
  _activeBarMetrics = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
  v14 = _activeBarMetrics == 1 || _activeBarMetrics == 102;
  [(_UINavigationBarTransitionContext *)self->_transitionContext setCompact:v14];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBackgroundAlpha:self->_backgroundAlpha];
  [(_UINavigationBarVisualProviderModernIOS *)self applyBarBackground:self->_backgroundView alpha:self->_backgroundAlpha];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setStack:self->super._stack];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setAllowLargeTitles:[(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView]];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setRTL:[(UIView *)self->super._navigationBar effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setPromptView:self->_promptView];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setContentView:self->_contentView];
  floatingTabBar = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBar];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setTabBarHostedView:floatingTabBar];

  [(_UINavigationBarTransitionContext *)self->_transitionContext setBackgroundView:self->_backgroundView isBarBackground:self->_usesBarBackground];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setLargeTitleView:self->_largeTitleView];
  if ((transition - 1) < 4)
  {
    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    currentHandler2 = topEntry;
    if (topEntry)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];
      [currentHandler2 activeLayout];
    }

    else
    {
      [(_UINavigationBarVisualProviderModernIOS *)self emptyLayout];
    }
    v28 = ;
    [(_UINavigationBarTransitionContext *)self->_transitionContext setToLayout:v28];

    [(UINavigationBar *)self->super._navigationBar _incomingNavigationBarFrame];
    v30 = v29;
    v32 = v31;
    toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    [(_UINavigationBarLayout *)toLayout setLayoutSize:v30, v32];

    previousTopEntry = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
    if (previousTopEntry)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:previousTopEntry];
      activeLayout = [previousTopEntry activeLayout];
    }

    else
    {
      if (!currentHandler2)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2578 description:@"Unexpected transition in the navigation bar with no stack entries"];
      }

      activeLayout = [(_UINavigationBarVisualProviderModernIOS *)self emptyLayout];
    }

    v36 = activeLayout;
    [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:activeLayout];

    LODWORD(v36) = [currentHandler2 isSearchActive];
    if (v36 != [previousTopEntry isSearchActive])
    {
      [(_UINavigationBarTransitionContext *)self->_transitionContext setTwoPart:1];
    }

    delegate = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      _navigationBarTransitionOverlay = [delegate _navigationBarTransitionOverlay];
      [(_UINavigationBarTransitionContext *)self->_transitionContext setTransitionOverlayView:_navigationBarTransitionOverlay];
    }

    goto LABEL_38;
  }

  if (transition != 5)
  {
    if (transition != 6)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2670 description:{@"Unknown transition = %ld", transition}];
LABEL_38:

      return;
    }

    currentHandler2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:currentHandler2];
    searchLayout = [currentHandler2 searchLayout];
    [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:searchLayout];

    normalLayout = [currentHandler2 normalLayout];
    v19 = [normalLayout copy];

    if (v19)
    {
      v20 = *(v19 + 160);
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (v21)
    {
      v22 = v19 ? *(v19 + 160) : 0;
      v23 = v22;
      expectedInactiveInlineSearchBarLayoutState = [v23 expectedInactiveInlineSearchBarLayoutState];

      if (v19)
      {
        if (expectedInactiveInlineSearchBarLayoutState != -1)
        {
          *(v19 + 248) = expectedInactiveInlineSearchBarLayoutState;
        }
      }
    }

    [(_UINavigationBarTransitionContext *)self->_transitionContext setToLayout:v19];
    [currentHandler2 setSearchActive:0];
    if (v19)
    {
      if (*(v19 + 116) == 1 && (*(v19 + 114) & 1) == 0)
      {
        if (![(_UINavigationBarTransitionContext *)self->_transitionContext allowLargeTitles]|| ![(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:0]])
        {
          goto LABEL_57;
        }

        goto LABEL_54;
      }

      if ([(_UINavigationBarTransitionContext *)self->_transitionContext allowLargeTitles])
      {
        v25 = *(v19 + 320);
        goto LABEL_25;
      }
    }

    else
    {
      v25 = 0.0;
      if ([(_UINavigationBarTransitionContext *)self->_transitionContext allowLargeTitles])
      {
LABEL_25:
        layoutHeights = [(_UINavigationBarLayout *)v19 layoutHeights];
        if (vabdd_f64(v27, v25) >= vabdd_f64(v25, layoutHeights))
        {
          goto LABEL_57;
        }

LABEL_54:
        v44 = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:0]];
LABEL_58:
        [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithLargeTitle:v44];
        [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithLargeTitle:0];

        goto LABEL_38;
      }
    }

LABEL_57:
    v44 = 0;
    goto LABEL_58;
  }

  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry2];
  normalLayout2 = [topEntry2 normalLayout];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:normalLayout2];
  searchLayout2 = [topEntry2 searchLayout];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setToLayout:searchLayout2];

  [topEntry2 setSearchActive:1];
  if (!normalLayout2)
  {
    goto LABEL_48;
  }

  if (*(normalLayout2 + 116) == 1 && *(normalLayout2 + 114) != 1)
  {
    if ([(_UINavigationBarTransitionContext *)self->_transitionContext allowLargeTitles])
    {
      goto LABEL_45;
    }

LABEL_48:
    v42 = 0;
    goto LABEL_49;
  }

  if (*(normalLayout2 + 280) <= 0.0)
  {
    goto LABEL_48;
  }

LABEL_45:
  v42 = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:0]];
LABEL_49:
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithLargeTitle:v42];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithLargeTitle:0];
  delegate2 = [(UINavigationBar *)self->super._navigationBar delegate];
  if (objc_opt_respondsToSelector())
  {
    v47 = *MEMORY[0x1E695EFF8];
    v48 = v47;
    -[_UINavigationBarTransitionContext setObservedScrollViewOffsetIsApplicable:](self->_transitionContext, "setObservedScrollViewOffsetIsApplicable:", [delegate2 _navigationBar:self->super._navigationBar getContentOffsetOfObservedScrollViewIfApplicable:&v48 velocity:&v47]);
    [(_UINavigationBarTransitionContext *)self->_transitionContext setStartingContentOffsetForObservedScrollView:v48];
  }
}

- (void)_endTransitionCompleted:(BOOL)completed
{
  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    completedCopy = completed;
    completionHandler = [(_UINavigationBarTransitionContext *)transitionContext completionHandler];
    transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
    stack = self->super._stack;
    if (completedCopy)
    {
      topItem = [(_UINavigationBarItemStack *)stack topItem];
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:0];

      [(_UINavigationBarTransitionContext *)self->_transitionContext complete];
    }

    else
    {
      previousTopItem = [(_UINavigationBarItemStack *)stack previousTopItem];
      previousBackItem = [(_UINavigationBarItemStack *)self->super._stack previousBackItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:previousTopItem backItem:previousBackItem animated:0];

      [(_UINavigationBarTransitionContext *)self->_transitionContext cancel];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _updatePromptViewAndActuallyHide:1];
    v12 = self->_transitionContext;
    self->_transitionContext = 0;

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
    if (completionHandler)
    {
      completionHandler[2](completionHandler, 1, transitionAssistant);
    }
  }
}

- (void)_presentOrDismissSearch:(int64_t)search withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if ((search - 7) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = currentHandler;
    if ((search - 1) > 2)
    {
      search = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (transition = %ld)", search];
      [v37 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2729 description:{@"Unexpected transition type: %@", search}];
    }

    else
    {
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2729 description:{@"Unexpected transition type: %@", off_1E70F77F0[search - 1]}];
    }
  }

  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [topEntry setSearchActive:search == 5];
  [(_UINavigationBarVisualProviderModernIOS *)self _setupTransitionContextForTransition:search completion:0];
  item = [topEntry item];
  if (search != 5)
  {
    toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v11 = toLayout;
    if (toLayout)
    {
      v12 = *(toLayout + 312);
    }

    else
    {
      v12 = 0.0;
    }

    delegate = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      [(_UINavigationBarLayout *)v11 updateLayout];
      delegate2 = [(UINavigationBar *)self->super._navigationBar delegate];
      [delegate2 _navigationBar:self->super._navigationBar preferredHeightForTransitionToHeightRange:-[_UINavigationBarLayout layoutHeights](v11)];
      v16 = v15;

      [(_UINavigationBarLayout *)v11 setLayoutSize:v12, v16];
    }
  }

  [(_UINavigationBarTransitionContext *)self->_transitionContext setSharesContentViewLayouts:1];
  [(UINavigationBar *)self->super._navigationBar _prepareToAnimateTransition];
  transitionContext = self->_transitionContext;
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke;
  v45[3] = &unk_1E70F3590;
  v45[4] = self;
  [(_UINavigationBarTransitionContext *)transitionContext recordUpdates:v45];
  compact = [(_UINavigationBarTransitionContext *)self->_transitionContext compact];
  fromLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
  v20 = fromLayout;
  if (compact)
  {
    if (fromLayout)
    {
      v21 = *(fromLayout + 184);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v22 forNavigationItem:item compact:1];
    [(UIBackgroundConfiguration *)v20 __setMaterial:v23];

    toLayout2 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v25 = toLayout2;
    if (toLayout2)
    {
      v26 = *(toLayout2 + 184);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v27 forNavigationItem:item compact:1];
    [(UIBackgroundConfiguration *)v25 __setMaterial:v28];
  }

  else
  {
    if (fromLayout)
    {
      v29 = *(fromLayout + 192);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v31 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v30 forNavigationItem:item compact:0];
    [(_UINavigationBarLayout *)v20 setStandardBackgroundViewLayout:v31];

    toLayout3 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v25 = toLayout3;
    if (toLayout3)
    {
      v33 = *(toLayout3 + 192);
    }

    else
    {
      v33 = 0;
    }

    v27 = v33;
    v28 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v27 forNavigationItem:item compact:0];
    [(_UINavigationBarLayout *)v25 setStandardBackgroundViewLayout:v28];
  }

  [(_UINavigationBarTransitionContext *)self->_transitionContext prepare];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_2;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v34 = _Block_copy(aBlock);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_3;
  v43[3] = &unk_1E70F3590;
  v43[4] = self;
  v35 = _Block_copy(v43);
  if ([coordinatorCopy isAnimated])
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_4;
    v41[3] = &unk_1E70F3770;
    v42 = v34;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __93___UINavigationBarVisualProviderModernIOS__presentOrDismissSearch_withTransitionCoordinator___block_invoke_5;
    v39[3] = &unk_1E70F3770;
    v40 = v35;
    [coordinatorCopy animateAlongsideTransition:v41 completion:v39];
  }

  else
  {
    v34[2](v34);
    v35[2](v35);
  }
}

- (void)_performAnimationWithTransitionCompletion:(id)completion transition:(int64_t)transition
{
  completionCopy = completion;
  if (self->_transitionContext)
  {
    NSLog(&cfstr_AttemptingToBe_2.isa, self->super._navigationBar);
    goto LABEL_53;
  }

  [(_UINavigationBarVisualProviderModernIOS *)self _enforceLayoutOrdering];
  transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  transitionCopy = [transitionAssistant transition];
  if (!transitionCopy)
  {
    v8 = completionCopy;
    contentView = self->_contentView;
    previousTopItem = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    if ((-[_UINavigationBarContentView effectiveStyleForStyle:](contentView, "effectiveStyleForStyle:", [previousTopItem style]) - 1) > 1)
    {
      v11 = self->_contentView;
      topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
      v13 = -[_UINavigationBarContentView effectiveStyleForStyle:](v11, "effectiveStyleForStyle:", [topItem style]) - 1;

      v14 = v13 > 1;
      transitionCopy = transition;
      completionCopy = v8;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {

      completionCopy = v8;
    }

    transitionCopy = 3;
  }

LABEL_8:
  topItem2 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  titleView = [topItem2 titleView];
  if (_UINavigationBarAugmentedTitleWantsTwoPartCrossfade(titleView))
  {
  }

  else
  {
    previousTopItem2 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    titleView2 = [previousTopItem2 titleView];
    v19 = _UINavigationBarAugmentedTitleWantsTwoPartCrossfade(titleView2);

    if (!v19)
    {
      goto LABEL_12;
    }
  }

  [(_UINavigationBarTransitionContext *)self->_transitionContext setTwoPart:1];
  transitionCopy = 3;
LABEL_12:
  [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarSuppressionIfNeeded];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke;
  v76[3] = &unk_1E70F7758;
  v76[4] = self;
  v77 = completionCopy;
  [(_UINavigationBarVisualProviderModernIOS *)self _setupTransitionContextForTransition:transitionCopy completion:v76];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setPushOperation:transition == 1];
  [(UINavigationBar *)self->super._navigationBar _prepareToAnimateTransition];
  transitionContext = self->_transitionContext;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_2;
  v75[3] = &unk_1E70F3590;
  v75[4] = self;
  [(_UINavigationBarTransitionContext *)transitionContext recordUpdates:v75];
  v59 = completionCopy;
  if (![(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView])
  {
    v24 = 0;
LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  stack = self->super._stack;
  previousTopItem3 = [(_UINavigationBarItemStack *)stack previousTopItem];
  LODWORD(stack) = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)stack effectiveDisplayModeForItemInPreviousStack:previousTopItem3]];

  if (stack)
  {
    fromLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
    if (fromLayout)
    {
      v24 = fromLayout[35] > 0.0;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = self->super._stack;
  topItem3 = [(_UINavigationBarItemStack *)v25 topItem];
  LODWORD(v25) = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)v25 effectiveDisplayModeForItemInCurrentStack:topItem3]];

  if (!v25)
  {
    goto LABEL_23;
  }

  toLayout = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
  if (toLayout)
  {
    v28 = toLayout[35] > 0.0;
  }

  else
  {
    v28 = 0;
  }

LABEL_24:
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithLargeTitle:v24];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithLargeTitle:v28];
  fromLayout2 = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
  toLayout2 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
  backgroundAlpha = self->_backgroundAlpha;
  if (fromLayout2 && *(fromLayout2 + 208) != backgroundAlpha)
  {
    *(fromLayout2 + 208) = backgroundAlpha;
    [fromLayout2 _updateLayoutOutputs];
    backgroundAlpha = self->_backgroundAlpha;
  }

  if (toLayout2 && *(toLayout2 + 208) != backgroundAlpha)
  {
    *(toLayout2 + 208) = backgroundAlpha;
    [toLayout2 _updateLayoutOutputs];
  }

  v57 = transitionCopy;
  if ([(_UINavigationBarTransitionContext *)self->_transitionContext compact])
  {
    if (fromLayout2)
    {
      v32 = *(fromLayout2 + 184);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    previousTopItem4 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    v35 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v33 forNavigationItem:previousTopItem4 compact:1];

    if (toLayout2)
    {
      v36 = *(toLayout2 + 184);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    topItem4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v39 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v37 forNavigationItem:topItem4 compact:1];

    [(UIBackgroundConfiguration *)fromLayout2 __setMaterial:v35];
    [(UIBackgroundConfiguration *)toLayout2 __setMaterial:v39];
  }

  else
  {
    if (fromLayout2)
    {
      v40 = *(fromLayout2 + 192);
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    previousTopItem5 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    v35 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v41 forNavigationItem:previousTopItem5 compact:0];

    if (toLayout2)
    {
      v43 = *(toLayout2 + 192);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    topItem5 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v39 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v44 forNavigationItem:topItem5 compact:0];

    [(_UINavigationBarLayout *)fromLayout2 setStandardBackgroundViewLayout:v35];
    [(_UINavigationBarLayout *)toLayout2 setStandardBackgroundViewLayout:v39];
  }

  appearanceAPIVersion = self->_appearanceAPIVersion;
  if (appearanceAPIVersion == 1)
  {
    [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithTransparencyAllowed:1];
LABEL_48:
    [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithTransparencyAllowed:appearanceAPIVersion == 1];
    goto LABEL_49;
  }

  if (self->_useModernAppearanceAPI)
  {
    backgroundData2 = [v35 backgroundData2];
    -[_UINavigationBarTransitionContext setBeginWithTransparencyAllowed:](self->_transitionContext, "setBeginWithTransparencyAllowed:", [backgroundData2 hasBackground] ^ 1);
  }

  else
  {
    [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithTransparencyAllowed:0];
  }

  if (!self->_useModernAppearanceAPI)
  {
    goto LABEL_48;
  }

  backgroundData22 = [v39 backgroundData2];
  -[_UINavigationBarTransitionContext setEndWithTransparencyAllowed:](self->_transitionContext, "setEndWithTransparencyAllowed:", [backgroundData22 hasBackground] ^ 1);

LABEL_49:
  [(_UINavigationBarTransitionContext *)self->_transitionContext prepare];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_3;
  aBlock[3] = &unk_1E70F7780;
  aBlock[4] = self;
  v72 = v57;
  v73 = v24;
  v74 = v28;
  v49 = toLayout2;
  v71 = v49;
  v50 = _Block_copy(aBlock);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_8;
  v67[3] = &unk_1E70F3C60;
  v51 = transitionAssistant;
  v68 = v51;
  selfCopy = self;
  v52 = _Block_copy(v67);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_9;
  v64[3] = &unk_1E70F77A8;
  v64[4] = self;
  v53 = v50;
  v66 = v53;
  v54 = v51;
  v65 = v54;
  v55 = _Block_copy(v64);
  if ([v54 shouldAnimateAlongside])
  {
    transitionCoordinator = [v54 transitionCoordinator];
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_10;
    v62[3] = &unk_1E70F3770;
    v63 = v55;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_11;
    v60[3] = &unk_1E70F3770;
    v61 = v52;
    [transitionCoordinator _animateAlongsideTransitionInView:0 systemAnimation:0 systemCompletion:1 animation:v62 completion:v60];
  }

  else
  {
    (*(v55 + 2))(v55, v52);
  }

  completionCopy = v59;

LABEL_53:
}

- (void)pushAnimated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _performAnimationWithTransitionCompletion:completion transition:1];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _updateWithCompletion:completion];
  }
}

- (void)popAnimated:(BOOL)animated completion:(id)completion
{
  if (animated)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _performAnimationWithTransitionCompletion:completion transition:2];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _updateWithCompletion:completion];
  }
}

- (void)prepareForPush
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:topItem];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)prepareForPop
{
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:topItem];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)removeContentForItem:(id)item
{
  _stackEntry = [item _stackEntry];
  normalLayout = [_stackEntry normalLayout];
  [(_UINavigationBarLayout *)normalLayout removeAllViews];

  searchLayout = [_stackEntry searchLayout];
  [(_UINavigationBarLayout *)searchLayout removeAllViews];
}

- (void)animateForSearchPresentation:(BOOL)presentation
{
  presentationCopy = presentation;
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  searchLayout = [topEntry searchLayout];
  if (searchLayout)
  {
    v8 = searchLayout;
    has_internal_diagnostics = os_variant_has_internal_diagnostics();

    if (has_internal_diagnostics)
    {
      v10 = @". Collect sysdiagnose for UISearchController category critical logging and possible related user faults";
    }

    else
    {
      v10 = &stru_1EFB14550;
    }
  }

  else
  {

    v10 = &stru_1EFB14550;
  }

  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  searchLayout2 = [topEntry2 searchLayout];

  if (searchLayout2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:3049 description:{@"Hosted search should take a different code path%@", v10}];
  }

  if (!self->_runningPaletteBasedSearchPresentation)
  {
    self->_runningPaletteBasedSearchPresentation = 1;
    [(UIView *)self->_contentView alpha];
    v14 = v13;
    [(UIView *)self->_largeTitleView alpha];
    v16 = v15;
    if (presentationCopy)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke;
      v23[3] = &unk_1E70F3590;
      v23[4] = self;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_4;
      v22[3] = &unk_1E70F3CD8;
      v22[4] = self;
      v22[5] = v14;
      v22[6] = v15;
      v17 = v23;
      v18 = v22;
    }

    else
    {
      [(UIView *)self->_contentView setAlpha:0.0];
      [(UIView *)self->_largeTitleView setAlpha:0.0];
      v20[4] = self;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_5;
      v21[3] = &unk_1E70F6848;
      v21[4] = self;
      v21[5] = v14;
      v21[6] = v16;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __72___UINavigationBarVisualProviderModernIOS_animateForSearchPresentation___block_invoke_8;
      v20[3] = &unk_1E70F5AC0;
      v17 = v21;
      v18 = v20;
    }

    [UIView animateKeyframesWithDuration:0 delay:v17 options:v18 animations:0.0 completion:0.0];
  }
}

- (void)_setupAccessibilityLimitsForView:(id)view
{
  viewCopy = view;
  if (self->_contentView == viewCopy || self->_promptView == viewCopy)
  {
    v6 = viewCopy;
    window = [(UIView *)self->super._navigationBar window];

    viewCopy = v6;
    if (window)
    {
      _UIBarsSetAccessibilityLimits(v6);
      viewCopy = v6;
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  traitCollection = [(UIView *)self->super._navigationBar traitCollection];
  v5 = traitCollection;
  if (traitCollection)
  {
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];
    v7 = userInterfaceIdiom == -1;
    p_hasIdiom = &self->_hasIdiom;
    hasIdiom = self->_hasIdiom;
    if (!hasIdiom && userInterfaceIdiom != -1)
    {
      *p_hasIdiom = 1;
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
      hasIdiom = 0;
      goto LABEL_12;
    }
  }

  else
  {
    p_hasIdiom = &self->_hasIdiom;
    hasIdiom = self->_hasIdiom;
    v7 = 1;
  }

  if (hasIdiom && v7)
  {
    *p_hasIdiom = 0;
    hasIdiom = 1;
  }

  else
  {
    horizontalSizeClass = [v5 horizontalSizeClass];
    if (horizontalSizeClass != [changeCopy horizontalSizeClass] || (v11 = objc_msgSend(v5, "verticalSizeClass"), v11 != objc_msgSend(changeCopy, "verticalSizeClass")))
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
    }
  }

LABEL_12:
  [(_UINavigationBarContentView *)self->_contentView updateAugmentedTitleViewNavigationBarTraitsTo:v5 from:changeCopy];
  [(_UINavigationBarVisualProviderModernIOS *)self _setUpContentFocusContainerGuide];
  if (changeCopy && hasIdiom && *p_hasIdiom)
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if ([topItem _changeMayAffectSearchBarPlacementFromTraits:changeCopy toOtherTraits:v5])
    {
      _hasIntegratedSearchBarInNavigationBar = [topItem _hasIntegratedSearchBarInNavigationBar];
      _hasIntegratedSearchBarInToolbar = [topItem _hasIntegratedSearchBarInToolbar];
      v15 = [topItem _hasIntegratedSearchBarInNavigationBarForTraits:changeCopy];
      if (_hasIntegratedSearchBarInToolbar != [topItem _hasIntegratedSearchBarInToolbarForTraits:changeCopy] || _hasIntegratedSearchBarInNavigationBar != v15)
      {
        _searchControllerIfAllowed = [topItem _searchControllerIfAllowed];
        searchBar = [_searchControllerIfAllowed searchBar];
        [searchBar _setHostedInlineByNavigationBar:_hasIntegratedSearchBarInNavigationBar];
        if ((_hasIntegratedSearchBarInNavigationBar & 1) == 0)
        {
          [searchBar _setHostedInlineByToolbar:_hasIntegratedSearchBarInToolbar];
        }

        delegate = [_searchControllerIfAllowed delegate];
        if (objc_opt_respondsToSelector())
        {
          if ((_hasIntegratedSearchBarInNavigationBar | _hasIntegratedSearchBarInToolbar))
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          [delegate searchController:_searchControllerIfAllowed didChangeFromSearchBarPlacement:v19];
        }

        else if (objc_opt_respondsToSelector())
        {
          if ((_hasIntegratedSearchBarInNavigationBar | _hasIntegratedSearchBarInToolbar))
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          [delegate _dci_searchController:_searchControllerIfAllowed didChangeToSearchBarPlacement:v20];
        }
      }
    }
  }
}

- (void)traitCollectionDidChangeOnSubtree:(id)subtree
{
  subtreeCopy = subtree;
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  v6 = activeLayout;
  if (activeLayout)
  {
    v7 = *(activeLayout + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout2 = [topEntry2 activeLayout];
  v11 = activeLayout2;
  if (activeLayout2)
  {
    v12 = *(activeLayout2 + 240);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v8 | v13)
  {
    preferredContentSizeCategory = [subtreeCopy preferredContentSizeCategory];
    traitCollection = [(UIView *)self->super._navigationBar traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];

    v17 = preferredContentSizeCategory;
    v18 = preferredContentSizeCategory2;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (v17 && v18)
      {
        v20 = [v17 isEqual:v18];

        if (v20)
        {
          goto LABEL_14;
        }
      }

      else
      {
      }

      [(_UINavigationBarVisualProviderModernIOS *)self changeLayout];
    }

LABEL_14:
  }
}

- (id)traitCollectionForChild:(id)child baseTraitCollection:(id)collection
{
  childCopy = child;
  collectionCopy = collection;
  v8 = collectionCopy;
  if (self->_appearanceAPIVersion > 1 || ((v9 = [collectionCopy userInterfaceStyle], (-[UINavigationBar barStyle](self->super._navigationBar, "barStyle") - 3) >= 0xFFFFFFFFFFFFFFFELL) ? (v10 = v9 == 2) : (v10 = 1), v10))
  {
    v11 = v8;
  }

  else
  {
    v11 = [v8 _traitCollectionByReplacingNSIntegerValue:2 forTraitToken:0x1EFE323B0];
  }

  v12 = v11;

  return v12;
}

- (CGPoint)contentViewLayoutFrameOrigin
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)promptViewLayoutFrameOrigin
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (id)hitTest:(CGPoint)test defaultViewHit:(id)hit
{
  y = test.y;
  x = test.x;
  hitCopy = hit;
  if (self->_isHidden)
  {
    v8 = 0;
    goto LABEL_15;
  }

  [(UIView *)self->_contentView frame];
  v18.x = x;
  v18.y = y;
  if (CGRectContainsPoint(v20, v18))
  {
    [(UIView *)self->_largeTitleView frame];
    v19.x = x;
    v19.y = y;
    if (CGRectContainsPoint(v21, v19))
    {
      topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      activeLayout = [topEntry activeLayout];

      if (activeLayout)
      {
        if (*(activeLayout + 108) == 1)
        {
          v11 = *(activeLayout + 128);
          if (v11)
          {
            v12 = v11;
            v13 = *(activeLayout + 144);

            if (v13)
            {
              largeTitleView = self->_largeTitleView;
              [(UIView *)self->super._navigationBar convertPoint:largeTitleView toView:x, y];
              v15 = [(UIView *)largeTitleView hitTest:0 withEvent:?];
              v8 = v15;
              if (v15 && v15 != self->_largeTitleView)
              {

                goto LABEL_15;
              }
            }
          }
        }
      }
    }
  }

  v8 = hitCopy;
LABEL_15:

  return v8;
}

- (int64_t)statusBarStyle
{
  if (self->_useModernAppearanceAPI)
  {
    traitCollection = [(UIView *)self->_backgroundView traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 2)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  else if (-[UINavigationBar barStyle](self->super._navigationBar, "barStyle") == UIBarStyleDefault && self->_usesBarBackground && (-[_UIBarBackground layout](self->_backgroundView, "layout"), v6 = objc_claimAutoreleasedReturnValue(), [v6 topInset], v8 = v7, v6, v8 <= 0.0))
  {
    v9.receiver = self;
    v9.super_class = _UINavigationBarVisualProviderModernIOS;
    return [(_UINavigationBarVisualProvider *)&v9 statusBarStyle];
  }

  else
  {
    return 1;
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->super._navigationBar bounds];
  [(_UINavigationBarVisualProviderModernIOS *)self layoutHeightsFittingWidth:v3];
  v5 = v4;
  v6 = -1.0;
  result.height = v5;
  result.width = v6;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (fits.width == 0.0)
  {
    superview = [(UIView *)self->super._navigationBar superview];
    v6 = superview;
    if (superview)
    {
      [superview bounds];
      width = v7;
    }
  }

  [(_UINavigationBarVisualProviderModernIOS *)self layoutHeightsFittingWidth:width];
  v9 = v8;
  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (double)defaultBarHeightForTraitCollection:(id)collection
{
  if ([collection userInterfaceIdiom] == 5)
  {
    return 39.0;
  }

  v4 = _UIBarsUseNewPadHeights();
  result = 44.0;
  if (v4)
  {
    return 50.0;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)width
{
  v5 = self->super._itemForMeasuring;
  if (v5)
  {
    item = v5;
    _stackEntry = [(UINavigationItem *)v5 _stackEntry];
    if (_stackEntry)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  if ([(_UINavigationBarItemStack *)self->super._stack itemCount])
  {
    transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    cancelledTransition = [transitionAssistant cancelledTransition];
    stack = self->super._stack;
    if (cancelledTransition)
    {
      [(_UINavigationBarItemStack *)stack previousTopEntry];
    }

    else
    {
      [(_UINavigationBarItemStack *)stack topEntry];
    }
    _stackEntry = ;

    item = [_stackEntry item];
    if (_stackEntry)
    {
LABEL_3:
      if (qword_1ED498190 != -1)
      {
        dispatch_once(&qword_1ED498190, &__block_literal_global_664);
      }

      if (byte_1ED49816B != 1 || ([_stackEntry item], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_navigationBar"), v9 = objc_claimAutoreleasedReturnValue(), navigationBar = self->super._navigationBar, v9, v8, v9 == navigationBar))
      {
        [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:_stackEntry forMeasuring:1];
      }

      activeLayout = [_stackEntry activeLayout];
      activeLayout2 = [(_UINavigationBarLayout *)activeLayout layoutForMeasuringWidth:width];

      if (activeLayout2)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    _stackEntry = [_UINavigationBarItemStackEntry newEntryForItem:item];
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:_stackEntry forMeasuring:1];
    activeLayout2 = [_stackEntry activeLayout];
    [(_UINavigationBarLayout *)activeLayout2 setLayoutSize:width, 0.0];
    if (activeLayout2)
    {
LABEL_9:
      layoutHeights = [(_UINavigationBarLayout *)activeLayout2 layoutHeights];
      v15 = v14;
      v17 = v16;
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    traitCollection = [(UIView *)self->super._navigationBar traitCollection];
    [(_UINavigationBarVisualProviderModernIOS *)self defaultBarHeightForTraitCollection:traitCollection];
    layoutHeights = v23;

    v15 = layoutHeights;
    v17 = layoutHeights;
    goto LABEL_18;
  }

  item = [(UIView *)self->super._navigationBar traitCollection];
  [(_UINavigationBarVisualProviderModernIOS *)self defaultBarHeightForTraitCollection:item];
  layoutHeights = v21;
  v15 = v21;
  v17 = v21;
LABEL_19:

  v24 = layoutHeights;
  v25 = v15;
  v26 = v17;
  result.var2 = v26;
  result.var1 = v25;
  result.var0 = v24;
  return result;
}

- (id)restingHeights
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  itemForMeasuring = self->super._itemForMeasuring;
  if (has_internal_diagnostics)
  {
    if (itemForMeasuring)
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "Don’t know how to apply override measurement item when calculating detents!", buf, 2u);
      }
    }
  }

  else if (itemForMeasuring)
  {
    v10 = *(__UILogGetCategoryCachedImpl("Assert", &restingHeights___s_category) + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Don’t know how to apply override measurement item when calculating detents!", v11, 2u);
    }
  }

  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  restingHeights = [(_UINavigationBarLayout *)activeLayout restingHeights];

  return restingHeights;
}

- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)changed
{
  if (!self->_providesExtraSpaceForExcessiveLineHeights)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = 1;
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:1];

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
  }
}

- (void)_computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (sHasEncounteredNavigationTitleWithExcessiveHeight)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = sHasEncounteredNavigationTitleWithExcessiveHeight;
    [(_UINavigationBarVisualProviderModernIOS *)self _beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary];
  }

  else
  {
    title = [itemCopy title];
    sHasEncounteredNavigationTitleWithExcessiveHeight = _UINavigationBarHasExcessiveLineHeightCharactersInTitle(title);

    LODWORD(title) = sHasEncounteredNavigationTitleWithExcessiveHeight;
    self->_providesExtraSpaceForExcessiveLineHeights = sHasEncounteredNavigationTitleWithExcessiveHeight;
    [(_UINavigationBarVisualProviderModernIOS *)self _beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary];
    if (title == 1)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _postDidEncounterFirstTitleWithExcessiveHeightChanged];
    }
  }
}

- (void)_beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary
{
  v2 = !self->_providesExtraSpaceForExcessiveLineHeights;
  if (self->_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged != v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = defaultCenter;
    if (self->_providesExtraSpaceForExcessiveLineHeights)
    {
      [defaultCenter removeObserver:self name:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
    }

    else
    {
      [defaultCenter addObserver:self selector:sel__didEncounterFirstTitleWithExcessiveHeightChanged_ name:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
    }

    self->_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged = v2;
  }
}

- (void)_postDidEncounterFirstTitleWithExcessiveHeightChanged
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
}

- (void)setRefreshControlHost:(id)host
{
  hostCopy = host;
  refreshControlHost = self->_refreshControlHost;
  if (refreshControlHost != hostCopy)
  {
    v11 = hostCopy;
    [(_UINavigationControllerRefreshControlHost *)refreshControlHost setDelegate:0];
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost stopAnimations];
    hostContainerView = [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost hostContainerView];
    [hostContainerView removeFromSuperview];

    objc_storeStrong(&self->_refreshControlHost, host);
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost setDelegate:self];
    v8 = objc_opt_new();
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost setHostContainerView:v8];

    topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    normalLayout = [topEntry normalLayout];
    [(_UINavigationBarLayout *)normalLayout setRefreshControlHost:v11];

    hostCopy = v11;
  }
}

- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)layout
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  [(_UINavigationBarLayout *)activeLayout updateLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
}

- (void)setTabBarHostedView:(id)view
{
  viewCopy = view;
  tabBarHostedView = self->_tabBarHostedView;
  v10 = viewCopy;
  if (tabBarHostedView != viewCopy || ([(_UITabContainerView *)tabBarHostedView floatingTabBarHost], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != self))
  {
    if (self->_isSuppressingTabBar)
    {
      floatingTabBarHost = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBarHost];

      if (floatingTabBarHost == self)
      {
        [(_UITabContainerView *)self->_tabBarHostedView setSuppressTabBar:0];
      }

      self->_isSuppressingTabBar = 0;
    }

    floatingTabBarHost2 = [(_UITabContainerView *)v10 floatingTabBarHost];

    if (floatingTabBarHost2 == self)
    {
      [(_UITabContainerView *)v10 setFloatingTabBarHost:0];
    }

    objc_storeStrong(&self->_tabBarHostedView, view);
    [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarHost];
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setActiveTabBarHost:(BOOL)host
{
  if (self->_isActiveTabBarHost != host)
  {
    self->_isActiveTabBarHost = host;
    [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarHost];
  }
}

- (void)setWantsHostedTabBarMetrics:(BOOL)metrics
{
  if (self->_wantsHostedTabBarMetrics != metrics)
  {
    self->_wantsHostedTabBarMetrics = metrics;
    [(_UINavigationBarContentView *)self->_contentView setWantsHostedTabBarMetrics:?];
    navigationBar = self->super._navigationBar;

    [(UINavigationBar *)navigationBar setNeedsLayout];
  }
}

- (void)_updateTabBarHost
{
  isActiveTabBarHost = self->_isActiveTabBarHost;
  tabBarHostedView = self->_tabBarHostedView;
  if (isActiveTabBarHost)
  {
    selfCopy = self;
LABEL_3:

    [(_UITabContainerView *)tabBarHostedView setFloatingTabBarHost:selfCopy];
    return;
  }

  floatingTabBarHost = [(_UITabContainerView *)tabBarHostedView floatingTabBarHost];
  if (floatingTabBarHost == self)
  {
    v7 = self->_isActiveTabBarHost;

    if (v7)
    {
      return;
    }

    tabBarHostedView = self->_tabBarHostedView;
    selfCopy = 0;
    goto LABEL_3;
  }
}

- (void)setStaticNavBarButtonItem:(id)item
{
  itemCopy = item;
  _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [_effectiveDelegate _splitViewControllerEnforcingClass:0];
    v6 = [v5 primaryEdge] == 1;
  }

  else
  {
    v6 = 0;
  }

  [(_UINavigationBarVisualProviderModernIOS *)self setStaticNavBarButtonItem:itemCopy trailingPosition:v6];
}

- (void)setStaticNavBarButtonItem:(id)item trailingPosition:(BOOL)position
{
  positionCopy = position;
  objc_storeStrong(&self->_staticNavBarButtonItem, item);
  itemCopy = item;
  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonTrailing:positionCopy];
  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonItem:self->_staticNavBarButtonItem];
  [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];
}

- (BOOL)isContentViewHidden
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  activeLayout = [topEntry activeLayout];
  v4 = activeLayout;
  if (activeLayout)
  {
    v5 = *(activeLayout + 128);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6 == 0;

  return v7;
}

- (void)setNeedsStaticNavBarButtonUpdate
{
  if ([(UIBarButtonItem *)self->_staticNavBarButtonItem _actsAsFakeBackButton])
  {
    _staticNavBarButtonFakeBackMenu = [(_UINavigationBarVisualProviderModernIOS *)self _staticNavBarButtonFakeBackMenu];
    [(UIBarButtonItem *)self->_staticNavBarButtonItem setMenu:_staticNavBarButtonFakeBackMenu];
  }

  else
  {
    [(UIBarButtonItem *)self->_staticNavBarButtonItem setMenu:0];
  }

  [(_UINavigationBarContentView *)self->_contentView setNeedsStaticNavBarButtonUpdate];
  navigationBar = self->super._navigationBar;

  [(UINavigationBar *)navigationBar _accessibility_navigationBarContentsDidChange];
}

- (void)_removeContentClippingView
{
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  normalLayout = [topEntry normalLayout];
  v5 = normalLayout;
  if (normalLayout)
  {
    v6 = *(normalLayout + 136);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  topEntry2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  normalLayout2 = [topEntry2 normalLayout];
  [(_UISplitViewControllerAdaptiveColumn *)normalLayout2 setTogglePrimaryEdgeButtonView:?];

  superview = [(UIView *)self->_contentView superview];
  v11 = superview;
  if (superview && superview != self->super._navigationBar)
  {
    if (v7 && superview != v7)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v13 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v13, OS_LOG_TYPE_FAULT, "Unexpected container for the content view when trying to remove clipping view", buf, 2u);
        }
      }

      else
      {
        v12 = *(__UILogGetCategoryCachedImpl("Assert", &_removeContentClippingView___s_category) + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Unexpected container for the content view when trying to remove clipping view", v14, 2u);
        }
      }
    }

    [(UIView *)self->super._navigationBar addSubview:self->_contentView];
    [(UIView *)v7 removeFromSuperview];
  }
}

- (void)_installContentClippingView:(id)view
{
  viewCopy = view;
  topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  if (topEntry)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:topEntry];
    normalLayout = [topEntry normalLayout];
    [(_UISplitViewControllerAdaptiveColumn *)normalLayout setTogglePrimaryEdgeButtonView:viewCopy];

    activeLayout = [topEntry activeLayout];
    normalLayout2 = [topEntry normalLayout];

    if (activeLayout == normalLayout2)
    {
      [(UIView *)self->super._navigationBar addSubview:viewCopy];
      [viewCopy addSubview:self->_contentView];
    }
  }
}

- (void)navigationBarContentViewDidChangeTintColor:(id)color
{
  tintColor = [color tintColor];
  [(UIView *)self->_customizationContainerView setTintColor:tintColor];
}

- (BOOL)navigationItemIsTopItem:(id)item
{
  stack = self->super._stack;
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  return topItem == itemCopy;
}

- (BOOL)navigationItemIsBackItem:(id)item
{
  stack = self->super._stack;
  itemCopy = item;
  backItem = [(_UINavigationBarItemStack *)stack backItem];

  return backItem == itemCopy;
}

- (void)navigationItemUpdatedTitleContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  contentCopy = content;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == contentCopy)
    {
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy];

      _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [_effectiveDelegate _navigationBar:self->super._navigationBar itemBackButtonUpdated:topItem];
      }
    }
  }
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemsCopy)
    {
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy];
    }
  }
}

- (void)navigationItemUpdatedCenterBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemsCopy)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __94___UINavigationBarVisualProviderModernIOS_navigationItemUpdatedCenterBarButtonItems_animated___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy];
    }
  }
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)items animated:(BOOL)animated
{
  animatedCopy = animated;
  itemsCopy = items;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemsCopy)
    {
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy];
    }
  }
}

- (void)navigationItemUpdatedAdditionalOverflowItems:(id)items
{
  itemsCopy = items;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemsCopy)
    {
      additionalOverflowItems = [itemsCopy additionalOverflowItems];
      layout = [(_UINavigationBarContentView *)self->_contentView layout];
      canUpdateAdditionalOverflowItemsInPlace = [layout canUpdateAdditionalOverflowItemsInPlace];

      if (canUpdateAdditionalOverflowItemsInPlace)
      {
        layout2 = [(_UINavigationBarContentView *)self->_contentView layout];
        [layout2 setAdditionalOverflowItems:additionalOverflowItems];
        [(_UINavigationBarContentView *)self->_contentView setAdditionalItems:additionalOverflowItems];
      }

      else
      {
        layout2 = [(_UINavigationBarItemStack *)self->super._stack backItem];
        [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:layout2 animated:0];
      }
    }
  }
}

- (id)presentationSourceForContent:(int64_t)content navigationItem:(id)item
{
  itemCopy = item;
  if (![(_UINavigationBarItemStack *)self->super._stack state]&& ([(_UINavigationBarItemStack *)self->super._stack topItem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == itemCopy))
  {
    if (content)
    {
      v10 = 0;
    }

    else
    {
      layout = [(_UINavigationBarContentView *)self->_contentView layout];
      overflowItem = [layout overflowItem];

      buttonGroup = [overflowItem buttonGroup];
      isHidden = [buttonGroup isHidden];

      if (isHidden)
      {
        v10 = 0;
      }

      else
      {
        v10 = overflowItem;
      }
    }

    v8 = _UIPopoverPresentationControllerSourceItemObscuredSource(v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)navigationItemUpdatedContentLayout:(id)layout animated:(BOOL)animated
{
  layoutCopy = layout;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == layoutCopy)
    {
      _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [_effectiveDelegate _navigationBar:self->super._navigationBar topItemUpdatedContentLayout:topItem];
      }

      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:0];
    }
  }
}

- (void)navigationItemUpdatedBackButtonContent:(id)content animated:(BOOL)animated
{
  animatedCopy = animated;
  contentCopy = content;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (backItem == contentCopy)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:animatedCopy];
    }

    else
    {

      if (topItem != contentCopy)
      {
LABEL_8:

        goto LABEL_9;
      }

      topItem = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [topItem _navigationBar:self->super._navigationBar itemBackButtonUpdated:backItem];
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)mode
{
  modeCopy = mode;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (topItem == modeCopy)
    {
      if (_UIBarsApplyChromelessEverywhere())
      {
        [(_UINavigationBarVisualProviderModernIOS *)self changeLayout];
        _effectiveDelegate = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
        if (objc_opt_respondsToSelector())
        {
          [_effectiveDelegate _navigationBar:self->super._navigationBar topItemUpdatedLargeTitleDisplayMode:modeCopy];
        }
      }
    }
  }
}

- (void)navigationItemUpdatedLargeTitleContent:(id)content
{
  contentCopy = content;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == contentCopy)
    {
      backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:topItem backItem:backItem animated:0];

      if ([topItem _largeTitleTwoLineMode] == 2)
      {
        _stackEntry = [topItem _stackEntry];
        activeLayout = [_stackEntry activeLayout];
        v8 = activeLayout;
        v9 = activeLayout ? *(activeLayout + 144) : 0;
        v10 = v9;

        if (v10)
        {
          [(_UINavigationBarVisualProviderModernIOS *)self changeLayout];
        }
      }
    }
  }
}

- (void)navigationItemUpdatedPromptContent:(id)content
{
  contentCopy = content;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (topItem == contentCopy)
    {
      prompt = [(_UINavigationBarModernPromptView *)self->_promptView prompt];
      prompt2 = [contentCopy prompt];
      v7 = prompt;
      v8 = prompt2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
        }

        else
        {
          v11 = [v7 isEqual:v8];

          if (v11)
          {
            goto LABEL_13;
          }
        }

        [(_UINavigationBarModernPromptView *)self->_promptView setPrompt:v9];
        [(UIView *)self->_promptView layoutIfNeeded];
        [(UINavigationBar *)self->super._navigationBar _sendResizeForPromptChange];
        [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];
      }

LABEL_13:
    }
  }
}

- (void)navigationItem:(id)item appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  itemCopy = item;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemCopy)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:itemCopy];
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
    }
  }
}

- (void)navigationItemUpdatedBackgroundAppearance:(id)appearance
{
  appearanceCopy = appearance;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == appearanceCopy)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
    }
  }
}

- (void)navigationItemUpdatedNavigationBarVisibility:(id)visibility
{
  visibilityCopy = visibility;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == visibilityCopy)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self updateBarVisibilityForTopItem];
    }
  }
}

- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)bar
{
  stack = self->super._stack;
  barCopy = bar;
  topItem = [(_UINavigationBarItemStack *)stack topItem];

  if (topItem == barCopy)
  {
    navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
    delegate = [navigationBar delegate];

    if (objc_opt_respondsToSelector())
    {
      [delegate _navigationBarWillRunAutomaticDeferredShowsScopeBar:self->super._navigationBar];
    }
  }
}

- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)item
{
  itemCopy = item;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];

  if (topItem == itemCopy)
  {
    navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
    delegate = [navigationBar delegate];

    if (objc_opt_respondsToSelector())
    {
      v6 = [delegate _navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:itemCopy];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)navigationItemUpdatedSearchController:(id)controller oldSearchController:(id)searchController
{
  v44 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  searchControllerCopy = searchController;
  _stackEntry = [controllerCopy _stackEntry];
  _searchControllerIfAllowed = [controllerCopy _searchControllerIfAllowed];
  if (_searchControllerIfAllowed == searchControllerCopy)
  {
    goto LABEL_22;
  }

  if (([_stackEntry isSearchActive] & 1) != 0 || objc_msgSend(searchControllerCopy, "isActive"))
  {
    if (![_stackEntry isSearchActive] || (objc_msgSend(searchControllerCopy, "isActive") & 1) == 0)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v33 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v33, OS_LOG_TYPE_FAULT, "Inconsistent state handled when removing old search controller. Investigate if repro steps are available. Otherwise, ignore.", buf, 2u);
        }
      }

      else
      {
        v30 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498170) + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "Inconsistent state handled when removing old search controller. Investigate if repro steps are available. Otherwise, ignore.", buf, 2u);
        }
      }
    }

    has_internal_diagnostics = os_variant_has_internal_diagnostics();
    searchBar = [searchControllerCopy searchBar];
    _isIntegratedIntoToolbarOrNavigationBarContent = [searchBar _isIntegratedIntoToolbarOrNavigationBarContent];
    if (has_internal_diagnostics)
    {
      if (!_isIntegratedIntoToolbarOrNavigationBarContent)
      {
        searchBar2 = [searchControllerCopy searchBar];
        window = [searchBar2 window];

        if (!window)
        {
          goto LABEL_13;
        }

        searchBar = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(searchBar, OS_LOG_TYPE_FAULT))
        {
          item = [_stackEntry item];
          *buf = 138412546;
          v41 = item;
          v42 = 2112;
          v43 = searchControllerCopy;
          _os_log_fault_impl(&dword_188A29000, searchBar, OS_LOG_TYPE_FAULT, "A navigation item is losing its active search controller with visible search bar. This will abruptly remove the search bar from the view hierarchy. Navigation item: %@ Search controller: %@", buf, 0x16u);
LABEL_11:
        }
      }
    }

    else if (!_isIntegratedIntoToolbarOrNavigationBarContent)
    {
      searchBar3 = [searchControllerCopy searchBar];
      window2 = [searchBar3 window];

      if (!window2)
      {
        goto LABEL_13;
      }

      v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498178) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      searchBar = v15;
      item = [_stackEntry item];
      *buf = 138412546;
      v41 = item;
      v42 = 2112;
      v43 = searchControllerCopy;
      _os_log_impl(&dword_188A29000, searchBar, OS_LOG_TYPE_ERROR, "A navigation item is losing its active search controller with visible search bar. This will abruptly remove the search bar from the view hierarchy. Navigation item: %@ Search controller: %@", buf, 0x16u);
      goto LABEL_11;
    }

LABEL_13:
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __101___UINavigationBarVisualProviderModernIOS_navigationItemUpdatedSearchController_oldSearchController___block_invoke;
    v37 = &unk_1E70F35B8;
    v38 = searchControllerCopy;
    v39 = _stackEntry;
    [UIView performWithoutAnimation:&v34];
  }

  searchBar4 = [searchControllerCopy searchBar];
  if (([searchBar4 isDescendantOfView:self->super._navigationBar] & 1) != 0 || (objc_msgSend(searchBar4, "_existingSearchIconBarButtonItem"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "view"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isDescendantOfView:", self->super._navigationBar), v19, v18, v20))
  {
    [searchBar4 _resetIfNecessaryForNavigationBarHosting:0];
    [searchBar4 setMinimumContentSizeCategory:0];
    [searchBar4 setMaximumContentSizeCategory:0];
    [searchBar4 removeFromSuperview];
    _existingSearchIconBarButtonItem = [searchBar4 _existingSearchIconBarButtonItem];
    view = [_existingSearchIconBarButtonItem view];
    [view removeFromSuperview];
  }

  searchBar5 = [_searchControllerIfAllowed searchBar];
  [searchBar5 _resetIfNecessaryForNavigationBarHosting:1];
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v25 = topItem;
  if (topItem == controllerCopy)
  {
    _hasIntegratedSearchBarInNavigationBar = [controllerCopy _hasIntegratedSearchBarInNavigationBar];

    if (_hasIntegratedSearchBarInNavigationBar)
    {
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
    }
  }

  else
  {
  }

LABEL_22:
  if (_searchControllerIfAllowed)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:_stackEntry];
    [_stackEntry setSearchActive:{objc_msgSend(_searchControllerIfAllowed, "isActive")}];
  }

  else
  {
    normalLayout = [_stackEntry normalLayout];
    [(_UINavigationBarLayout *)normalLayout setSearchBar:?];

    [_stackEntry setSearchLayout:0];
  }

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  navigationBar = [(_UINavigationBarVisualProvider *)self navigationBar];
  delegate = [navigationBar delegate];

  if (objc_opt_respondsToSelector())
  {
    [delegate _navigationItemDidUpdateSearchController:controllerCopy oldSearchController:searchControllerCopy];
  }

  [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];
}

- (void)navigationItemUpdatedBottomPalette:(id)palette oldPalette:(id)oldPalette
{
  oldPaletteCopy = oldPalette;
  v8 = oldPaletteCopy;
  if (!self->_transitionContext)
  {
    superview = [oldPaletteCopy superview];
    navigationBar = self->super._navigationBar;

    if (superview == navigationBar)
    {
      [v8 removeFromSuperview];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
  }

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
}

- (void)navigationItem:(id)item updatedPalettePart:(int64_t)part oldPalette:(id)palette
{
  itemCopy = item;
  paletteCopy = palette;
  if ((part & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:4433 description:{@"Unexpected palette part (%li)", part}];

    goto LABEL_5;
  }

  if (part != 6)
  {
LABEL_5:
    _bottomPalette = [itemCopy _bottomPalette];
    goto LABEL_6;
  }

  _bottomPalette = [itemCopy _topPalette];
LABEL_6:
  v12 = _bottomPalette;
  if (_bottomPalette != paletteCopy)
  {
    superview = [paletteCopy superview];
    navigationBar = self->super._navigationBar;

    if (superview == navigationBar)
    {
      [paletteCopy removeFromSuperview];
    }

    if (![(_UINavigationBarItemStack *)self->super._stack state])
    {
      goto LABEL_12;
    }

    topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (topItem == itemCopy)
    {
LABEL_16:

      goto LABEL_17;
    }

    backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];

    if (backItem != itemCopy)
    {
LABEL_12:
      topItem = [itemCopy _stackEntry];
      normalLayout = [topItem normalLayout];
      v18 = normalLayout;
      if (part == 6)
      {
        [(_UINavigationBarLayout *)normalLayout setTopPalette:v12];

        searchLayout = [topItem searchLayout];
        [(_UINavigationBarLayout *)searchLayout setTopPalette:v12];
      }

      else
      {
        [(_UINavigationBarLayout *)normalLayout setBottomPalette:v12];

        searchLayout = [topItem searchLayout];
        [(_UINavigationBarLayout *)searchLayout setBottomPalette:v12];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    topItem2 = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (topItem2 == itemCopy)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
    }
  }
}

- (void)navigationItemUpdatedScrollEdgeProgress:(id)progress
{
  progressCopy = progress;
  if (![(_UINavigationBarItemStack *)self->super._stack state]&& ![(UIView *)self->super._navigationBar _canDrawContent])
  {
    _stackEntry = [progressCopy _stackEntry];
    if ([(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
    {
      [_stackEntry activeLayout];
    }

    else
    {
      [_stackEntry normalLayout];
    }
    v5 = ;
    v6 = [(_UINavigationBarVisualProviderModernIOS *)self useManualScrollEdgeAppearanceForItem:progressCopy];
    v7 = v6;
    if (v5)
    {
      v8 = *(v5 + 111);
      if (v8 != v6)
      {
        *(v5 + 111) = v6;
        [v5 _updateLayoutOutputs];
      }

      [progressCopy _manualScrollEdgeAppearanceProgress];
      v10 = v9;
      v11 = *(v5 + 216);
      *(v5 + 216) = v9;
      if (*(v5 + 111) == 1)
      {
        [v5 _updateLayoutOutputs];
      }
    }

    else
    {
      [progressCopy _manualScrollEdgeAppearanceProgress];
      v10 = v16;
      LOBYTE(v8) = 0;
      v11 = 0.0;
    }

    v12 = v10 == v11;
    if (!v7)
    {
      v12 = v8 ^ 1;
    }

    if ((v12 & 1) == 0)
    {
      topEntry = [(_UINavigationBarItemStack *)self->super._stack topEntry];

      if (topEntry == _stackEntry)
      {
        [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
        _isManualScrollEdgeAppearanceEnabled = [progressCopy _isManualScrollEdgeAppearanceEnabled];
        if ([(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
        {
          if ((_isManualScrollEdgeAppearanceEnabled & 1) == 0)
          {
            backItem = [(_UINavigationBarItemStack *)self->super._stack backItem];
            [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:progressCopy backItem:backItem animated:0];
          }
        }
      }
    }
  }
}

- (void)appearance:(id)appearance categoriesChanged:(int64_t)changed
{
  [(_UINavigationBarVisualProviderModernIOS *)self setAppearanceAPIVersion:2, changed];
  navigationBar = self->super._navigationBar;

  [(UINavigationBar *)navigationBar setNeedsLayout];
}

- (id)_timingFunctionForAnimationInView:(id)view withKeyPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  transitionAssistant = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  interactive = [transitionAssistant interactive];

  if (!interactive)
  {
    v14 = 0;
    goto LABEL_13;
  }

  if ([pathCopy isEqualToString:@"opacity"])
  {
    viewUsingEaseInCurve = [(_UINavigationBarTransitionContext *)self->_transitionContext viewUsingEaseInCurve];

    if (viewUsingEaseInCurve != viewCopy)
    {
      [viewCopy alpha];
      if (v11 < 0.05 || ([(_UINavigationBarTransitionContext *)self->_transitionContext viewFadingInFromCustomAlpha], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == viewCopy))
      {
        v13 = +[_UINavigationBarTransitionContext fadeInFunction];
      }

      else
      {
        v13 = +[_UINavigationBarTransitionContext fadeOutFunction];
      }

      goto LABEL_12;
    }

    v15 = MEMORY[0x1E69793D0];
    v16 = MEMORY[0x1E6979EB0];
  }

  else
  {
    v15 = MEMORY[0x1E69793D0];
    v16 = MEMORY[0x1E6979ED8];
  }

  v13 = [v15 functionWithName:*v16];
LABEL_12:
  v14 = v13;
LABEL_13:

  return v14;
}

- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)visibility
{
  if (!self->_transitionContext)
  {
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)tabBarContainerDidLayoutFloatingTabBar:(id)bar
{
  if (!self->_transitionContext)
  {
    [(_UITabContainerView *)self->_tabBarHostedView floatingTabBarContentFrameInCoordinateSpace:self->_contentView];
    contentView = self->_contentView;

    [(_UINavigationBarContentView *)contentView setHostedTabBarFrame:?];
  }
}

- (BOOL)_shim_hasCustomBackgroundView
{
  if (!self->_usesBarBackground)
  {
    return 0;
  }

  customBackgroundView = [(_UIBarBackground *)self->_backgroundView customBackgroundView];
  v3 = customBackgroundView != 0;

  return v3;
}

- (void)_shim_setCustomBackgroundView:(id)view
{
  viewCopy = view;
  if (self->_usesBarBackground)
  {
    v6 = viewCopy;
    customBackgroundView = [(_UIBarBackground *)self->_backgroundView customBackgroundView];

    viewCopy = v6;
    if (customBackgroundView != v6)
    {
      [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:v6];
      viewCopy = v6;
    }
  }
}

- (id)_shim_compatibilityBackgroundView
{
  if (self->_usesBarBackground)
  {
    customBackgroundView = [(_UIBarBackground *)self->_backgroundView customBackgroundView];
    backgroundView = customBackgroundView;
    if (!customBackgroundView)
    {
      backgroundView = self->_backgroundView;
    }

    v5 = backgroundView;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shim_disableBlurTinting
{
  if (!self->_usesBarBackground)
  {
    return 0;
  }

  layout = [(_UIBarBackground *)self->_backgroundView layout];
  disableTinting = [layout disableTinting];

  return disableTinting;
}

- (void)_shim_setDisableBlurTinting:(BOOL)tinting
{
  if (self->_usesBarBackground)
  {
    tintingCopy = tinting;
    layout = [(_UIBarBackground *)self->_backgroundView layout];
    [layout setDisableTinting:tintingCopy];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self changeAppearance];
}

- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _searchControllerIfAllowed = [topItem _searchControllerIfAllowed];
  searchBar = [_searchControllerIfAllowed searchBar];

  v9 = 1;
  if (searchBar)
  {
    [(UIView *)self->super._navigationBar convertPoint:searchBar toView:x, y];
    if ([searchBar pointInside:0 withEvent:?])
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_accessibility_HUDItemForPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIView *)self->super._navigationBar convertPoint:self->_contentView toView:?];
  v7 = v6;
  v9 = v8;
  topItem = [(_UINavigationBarItemStack *)self->super._stack topItem];
  _weeTitle = [topItem _weeTitle];
  if ([_weeTitle length] && !-[UIView isHidden](self->_weeTitleLabel, "isHidden"))
  {
    weeTitleLabel = self->_weeTitleLabel;
    [(UIView *)self->super._navigationBar convertPoint:weeTitleLabel toView:x, y];
    LODWORD(weeTitleLabel) = [(UIView *)weeTitleLabel pointInside:0 withEvent:?];

    if (weeTitleLabel)
    {
      v30 = [UIAccessibilityHUDItem alloc];
      topItem2 = [(_UINavigationBarItemStack *)self->super._stack topItem];
      _weeTitle2 = [topItem2 _weeTitle];
LABEL_16:
      v32 = _weeTitle2;
      v15 = [(UIAccessibilityHUDItem *)v30 initWithTitle:_weeTitle2 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

      goto LABEL_17;
    }
  }

  else
  {
  }

  if (![(UIView *)self->_promptView isHidden])
  {
    promptView = self->_promptView;
    [(UIView *)self->super._navigationBar convertPoint:promptView toView:x, y];
    if ([(UIView *)promptView pointInside:0 withEvent:?])
    {
      v13 = [UIAccessibilityHUDItem alloc];
      topItem2 = [(_UINavigationBarModernPromptView *)self->_promptView prompt];
      v15 = [(UIAccessibilityHUDItem *)v13 initWithTitle:topItem2 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];
LABEL_17:

      goto LABEL_18;
    }
  }

  if ([(UIView *)self->_contentView pointInside:0 withEvent:v7, v9])
  {
    v15 = [(_UINavigationBarContentView *)self->_contentView _accessibility_HUDItemForPoint:v7, v9];
    goto LABEL_18;
  }

  largeTitleView = self->_largeTitleView;
  [(UIView *)self->super._navigationBar convertPoint:largeTitleView toView:x, y];
  v15 = 0;
  if ([(UIView *)largeTitleView pointInside:0 withEvent:?])
  {
    accessoryView = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];

    if (accessoryView)
    {
      accessoryView2 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      navigationBar = self->super._navigationBar;
      accessoryView3 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      [(UIView *)navigationBar convertPoint:accessoryView3 toView:x, y];
      v21 = [accessoryView2 _largeContentViewerItemAtPoint:?];

      if (v21)
      {
        v22 = [UIAccessibilityHUDItem alloc];
        largeContentTitle = [v21 largeContentTitle];
        largeContentImage = [v21 largeContentImage];
        [v21 largeContentImageInsets];
        v15 = -[UIAccessibilityHUDItem initWithTitle:image:imageInsets:scaleImage:](v22, "initWithTitle:image:imageInsets:scaleImage:", largeContentTitle, largeContentImage, [v21 scalesLargeContentImage], v25, v26, v27, v28);

        goto LABEL_18;
      }
    }

    v30 = [UIAccessibilityHUDItem alloc];
    topItem2 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    _weeTitle2 = [topItem2 title];
    goto LABEL_16;
  }

LABEL_18:

  return v15;
}

- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  contentView = self->_contentView;
  [(UIView *)self->super._navigationBar convertPoint:contentView toView:?];
  accessoryView = [(_UINavigationBarContentView *)contentView _accessibility_controlToActivateForHUDGestureLiftAtPoint:?];
  if (!accessoryView)
  {
    accessoryView = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];

    if (accessoryView)
    {
      accessoryView2 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      navigationBar = self->super._navigationBar;
      accessoryView3 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      [(UIView *)navigationBar convertPoint:accessoryView3 toView:x, y];
      v11 = [accessoryView2 _largeContentViewerItemAtPoint:?];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          accessoryView = v11;
          if ([accessoryView isEnabled])
          {
LABEL_8:

            goto LABEL_9;
          }
        }
      }

      accessoryView = 0;
      goto LABEL_8;
    }
  }

LABEL_9:

  return accessoryView;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"backdropGroupName"])
  {
    UIKVCAccessProhibited(keyCopy, @"UINavigationBar");

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UINavigationBarVisualProviderModernIOS;
    v5 = [(_UINavigationBarVisualProviderModernIOS *)&v7 valueForUndefinedKey:keyCopy];
  }

  return v5;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if ([keyCopy isEqualToString:@"backdropGroupName"])
  {
    UIKVCAccessProhibited(keyCopy, @"UINavigationBar");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UINavigationBarVisualProviderModernIOS;
    [(_UINavigationBarVisualProviderModernIOS *)&v8 setValue:valueCopy forUndefinedKey:keyCopy];
  }
}

- (id)_immediatelyFinishRunningTransition
{
  v12.receiver = self;
  v12.super_class = _UINavigationBarVisualProviderModernIOS;
  _immediatelyFinishRunningTransition = [(_UINavigationBarVisualProvider *)&v12 _immediatelyFinishRunningTransition];
  v4 = _immediatelyFinishRunningTransition;
  if (self->_transitionContext)
  {
    [UIView removePropertyAnimatorAnimationsInView:self->super._navigationBar];
    prepareForInterruption = [(_UINavigationBarTransitionContext *)self->_transitionContext prepareForInterruption];
    [(UIView *)self->super._navigationBar _removeAllAnimations:1];
    [(UIView *)self->super._navigationBar _removeAllRetargetableAnimations:1];
    [(_UINavigationBarVisualProviderModernIOS *)self _endTransitionCompleted:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___UINavigationBarVisualProviderModernIOS__immediatelyFinishRunningTransition__block_invoke;
    v9[3] = &unk_1E70F77D0;
    v10 = v4;
    v11 = prepareForInterruption;
    v6 = prepareForInterruption;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = _Block_copy(_immediatelyFinishRunningTransition);
  }

  return v7;
}

@end