@interface _UINavigationBarVisualProviderModernIOS
- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3;
- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)a3;
- (BOOL)_allowLargeTitleView;
- (BOOL)_isInInteractiveScroll;
- (BOOL)_isInnerNavigationBarOfNestedNavigationController;
- (BOOL)_shim_disableBlurTinting;
- (BOOL)_shim_hasCustomBackgroundView;
- (BOOL)_shouldEnableNestedNavigationPopForTopItem:(id)a3 backItem:(id)a4;
- (BOOL)_stackWantsBottomPaletteDisplayedForItem:(id)a3;
- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)a3;
- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)a3 hideLargeTitleForActiveSearch:(BOOL)a4;
- (BOOL)_stackWantsSearchDisplayedBelowContentViewForItem:(id)a3;
- (BOOL)_useLargeTitleForDisplayMode:(int64_t)a3;
- (BOOL)_wantsWindowMoveClientInteractionInstalled;
- (BOOL)allowLargeTitleView;
- (BOOL)alwaysEvaluateChromelessTransitionProgress;
- (BOOL)isContentViewHidden;
- (BOOL)navigationItemIsBackItem:(id)a3;
- (BOOL)navigationItemIsTopItem:(id)a3;
- (BOOL)permitsSearchBarPlacementIntegratedCentered;
- (BOOL)scrollEdgeAppearanceHasChromelessBehavior;
- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)a3;
- (BOOL)titleRenamer:(id)a3 session:(id)a4 shouldEndRenamingWithTitle:(id)a5;
- (BOOL)topItemHasVariableHeight;
- (BOOL)useManualScrollEdgeAppearanceForItem:(id)a3;
- (CGPoint)contentViewLayoutFrameOrigin;
- (CGPoint)promptViewLayoutFrameOrigin;
- (CGRect)barCustomizer:(id)a3 customizationAreaBoundsForSession:(id)a4;
- (CGRect)barCustomizer:(id)a3 overflowControlBoundsForSession:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSDirectionalEdgeInsets)largeSearchBaseMarginsRequiringNavMinimums:(BOOL)a3;
- (NSDirectionalEdgeInsets)resolvedLargeTitleMargins;
- (NSDirectionalEdgeInsets)resolvedSearchBarMargins;
- (double)_contentBackgroundExtension;
- (double)defaultBarHeightForTraitCollection:(id)a3;
- (double)heightForRestoringFromCancelledTransition;
- (id)_accessibility_HUDItemForPoint:(CGPoint)a3;
- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)a3;
- (id)_backButtonMenu;
- (id)_backgroundLayoutOfClass:(Class)a3 fromLayout:(id)a4;
- (id)_barCustomizationItemWithBarButtonGroup:(id)a3;
- (id)_barCustomizationItemWithBarButtonItem:(id)a3 identifier:(id)a4;
- (id)_centerBarButtonGroupWithIdentifier:(id)a3;
- (id)_compatibleDefaultTextColor;
- (id)_defaultWeeTitleAttributes;
- (id)_effectiveLegacyTitleAttributes;
- (id)_immediatelyFinishRunningTransition;
- (id)_shim_compatibilityBackgroundView;
- (id)_sourceViewProviderForBarButtonItem:(id)a3;
- (id)_staticNavBarButtonFakeBackMenu;
- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4;
- (id)_updateBackgroundLayout:(id)a3 forNavigationItem:(id)a4 compact:(BOOL)a5;
- (id)barCustomizer:(id)a3 containerViewForSession:(id)a4;
- (id)emptyLayout;
- (id)hitTest:(CGPoint)a3 defaultViewHit:(id)a4;
- (id)presentationSourceForContent:(int64_t)a3 navigationItem:(id)a4;
- (id)restingHeights;
- (id)titleRenamer:(id)a3 session:(id)a4 willBeginRenamingWithTitle:(id)a5 selectedRange:(_NSRange *)a6;
- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)statusBarStyle;
- (void)_beginCustomization;
- (void)_beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary;
- (void)_beginRenaming;
- (void)_computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:(id)a3;
- (void)_configureMarginsOnContentViewsAndPalette:(id)a3 withContentMargin:(double)a4;
- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)a3;
- (void)_endRenaming;
- (void)_endTransitionCompleted:(BOOL)a3;
- (void)_enforceLayoutOrdering;
- (void)_ensureLayoutsConfiguredForEntry:(id)a3 forMeasuring:(BOOL)a4;
- (void)_installContentClippingView:(id)a3;
- (void)_installWindowMoveClientInteractionIfNecessary;
- (void)_invalidateIntrinsicContentSizeAndNotifySizeChanged;
- (void)_layoutInBounds:(CGRect)a3;
- (void)_performAnimationWithTransitionCompletion:(id)a3 transition:(int64_t)a4;
- (void)_popToItem:(id)a3;
- (void)_postDidEncounterFirstTitleWithExcessiveHeightChanged;
- (void)_prepareLayouts;
- (void)_presentOrDismissSearch:(int64_t)a3 withTransitionCoordinator:(id)a4;
- (void)_refreshBackButtonMenu;
- (void)_removeContentClippingView;
- (void)_setUpContentFocusContainerGuide;
- (void)_setupAccessibilityLimitsForView:(id)a3;
- (void)_setupTransitionContextForTransition:(int64_t)a3 completion:(id)a4;
- (void)_shim_setCustomBackgroundView:(id)a3;
- (void)_shim_setDisableBlurTinting:(BOOL)a3;
- (void)_updateAugmentedTitleDataSources;
- (void)_updateBackground;
- (void)_updateContentForTopItem:(id)a3 backItem:(id)a4 animated:(BOOL)a5;
- (void)_updateContentPriorities;
- (void)_updateLegacyLayout:(id)a3 forNavigationItem:(id)a4;
- (void)_updateModernLayout:(id)a3 forNavigationItem:(id)a4 compact:(BOOL)a5;
- (void)_updatePromptViewAndActuallyHide:(BOOL)a3;
- (void)_updateTabBarHost;
- (void)_updateTabBarSuppressionIfNeeded;
- (void)_updateTitleViewForLayout:(id)a3;
- (void)_updateWithCompletion:(id)a3;
- (void)_upgradeAppearanceAPIForItemIfNecessary:(id)a3;
- (void)animateForSearchPresentation:(BOOL)a3;
- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4;
- (void)applyBarBackground:(id)a3 alpha:(double)a4;
- (void)barCustomizer:(id)a3 willEndSession:(id)a4 didReset:(BOOL)a5;
- (void)barDidMoveToWindow;
- (void)changeAppearance;
- (void)changeLayout;
- (void)deferSearchSuggestionsMenuRefreshForGeometryChange;
- (void)layoutSubviews;
- (void)navigationBarContentViewDidChangeTintColor:(id)a3;
- (void)navigationBarInvalidatedResolvedLayoutMargins;
- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)a3;
- (void)navigationItem:(id)a3 appearance:(id)a4 categoriesChanged:(int64_t)a5;
- (void)navigationItem:(id)a3 updatedPalettePart:(int64_t)a4 oldPalette:(id)a5;
- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)a3;
- (void)navigationItemUpdatedAdditionalOverflowItems:(id)a3;
- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedBackgroundAppearance:(id)a3;
- (void)navigationItemUpdatedBottomPalette:(id)a3 oldPalette:(id)a4;
- (void)navigationItemUpdatedCenterBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedLargeTitleContent:(id)a3;
- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)a3;
- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedNavigationBarVisibility:(id)a3;
- (void)navigationItemUpdatedPromptContent:(id)a3;
- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4;
- (void)navigationItemUpdatedScrollEdgeProgress:(id)a3;
- (void)navigationItemUpdatedSearchController:(id)a3 oldSearchController:(id)a4;
- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4;
- (void)popAnimated:(BOOL)a3 completion:(id)a4;
- (void)prepare;
- (void)prepareForPop;
- (void)prepareForPush;
- (void)prepareForStackChange;
- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5;
- (void)pushAnimated:(BOOL)a3 completion:(id)a4;
- (void)refreshSearchSuggestionsMenuAfterGeometryChange;
- (void)removeContentForItem:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)a3;
- (void)setActiveTabBarHost:(BOOL)a3;
- (void)setAppearanceAPIVersion:(int64_t)a3;
- (void)setBackgroundAlpha:(double)a3;
- (void)setForceScrollEdgeAppearance:(BOOL)a3;
- (void)setNeedsStaticNavBarButtonUpdate;
- (void)setRefreshControlHost:(id)a3;
- (void)setStaticNavBarButtonItem:(id)a3;
- (void)setStaticNavBarButtonItem:(id)a3 trailingPosition:(BOOL)a4;
- (void)setTabBarHostedView:(id)a3;
- (void)setTitleAlpha:(double)a3;
- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)setWantsHostedTabBarMetrics:(BOOL)a3;
- (void)tabBarContainerDidLayoutFloatingTabBar:(id)a3;
- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)a3;
- (void)teardown;
- (void)titleRenamer:(id)a3 didCancelSession:(id)a4;
- (void)titleRenamer:(id)a3 session:(id)a4 didEndRenamingWithTitle:(id)a5;
- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidEnd:(id)a5;
- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidFail:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)traitCollectionDidChangeOnSubtree:(id)a3;
- (void)updateBackgroundGroupName;
- (void)updateBarVisibilityForTopItem;
- (void)updateSearchBarForPlacementChangeIfApplicable;
@end

@implementation _UINavigationBarVisualProviderModernIOS

- (void)_updateContentPriorities
{
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v4 = [v3 activeLayout];
  if ([(_UINavigationBarLayout *)v4 isVariableHeight])
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  if (v3)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v3];
    v4 = [v3 normalLayout];
    v5 = v4;
    if (v4)
    {
      if ([(_UINavigationBarLayout *)v4 isVariableHeight])
      {
        v6 = 1;
LABEL_9:

        goto LABEL_10;
      }

      if ([v3 isSearchActive])
      {
        v7 = [v3 searchLayout];
        v6 = [(_UINavigationBarLayout *)v7 isVariableHeight];

        goto LABEL_9;
      }
    }

    v6 = 0;
    goto LABEL_9;
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (BOOL)_wantsWindowMoveClientInteractionInstalled
{
  v3 = [(UIView *)self->super._navigationBar traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = _os_feature_enabled_impl();
  if ([(UINavigationBar *)self->super._navigationBar barPosition]== 3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v4 == 1 && v6;
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack previousBackItem];
  [v3 _setTitleViewDataSource:0];

  v4 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [v4 _setTitleViewDataSource:0];

  v5 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
  [v5 _setTitleViewDataSource:self->_contentView];

  v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [v6 _setTitleViewDataSource:self->_contentView];
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
  v3 = [(UINavigationBar *)self->super._navigationBar titleTextAttributes];
  v4 = *off_1E70EC920;
  v5 = [v3 objectForKeyedSubscript:*off_1E70EC920];

  if (!v5)
  {
    v6 = [v3 mutableCopy];
    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _compatibleDefaultTextColor];
    [v6 setObject:v7 forKeyedSubscript:v4];

    v3 = v6;
  }

  v8 = [(UIView *)self->super._navigationBar traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = [(UIView *)self->super._navigationBar traitCollection];
  v11 = [v10 userInterfaceIdiom];
  if (v9 == 6)
  {
    _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v3, v11, 0);
  }

  else
  {
    _UINavigationTitleAppearanceAddDefaultTitleAttributes(v3, v11, 0);
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
  v11 = [(_UINavigationBarVisualProviderModernIOS *)self alternateBarBackground];
  if (v11)
  {
    objc_storeStrong(&self->_backgroundView, v11);
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
  v15 = [(_UINavigationBarVisualProvider *)self contentViewVisualProvider];
  v16 = [(_UINavigationBarContentView *)v14 initWithFrame:v15 visualProvider:v4, v6, v8, v10];
  contentView = self->_contentView;
  self->_contentView = v16;

  [(_UINavigationBarContentView *)self->_contentView setDelegate:self];
  v18 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v19 = [v18 _splitViewControllerEnforcingClass:0];
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
  v23 = [(UIView *)self->super._navigationBar traitCollection];
  v24 = [v23 userInterfaceIdiom];
  v25 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(MEMORY[0x1E695E0F8], v24, 0);
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
  v3 = [(UIView *)self->super._navigationBar _focusSystem];

  if (v3)
  {
    if (!self->_contentFocusContainerGuide)
    {
      v4 = objc_alloc_init(UIFocusContainerGuide);
      contentFocusContainerGuide = self->_contentFocusContainerGuide;
      self->_contentFocusContainerGuide = v4;

      [(UIView *)self->super._navigationBar addLayoutGuide:self->_contentFocusContainerGuide];
      [(UILayoutGuide *)self->_contentFocusContainerGuide setIdentifier:@"UINavigationBarContentFocusContainerGuide"];
      v16 = MEMORY[0x1E69977A0];
      v19 = [(UILayoutGuide *)self->_contentFocusContainerGuide topAnchor];
      v18 = [(UIView *)self->super._navigationBar topAnchor];
      v17 = [v19 constraintEqualToAnchor:v18];
      v20[0] = v17;
      v6 = [(UILayoutGuide *)self->_contentFocusContainerGuide leadingAnchor];
      v7 = [(UIView *)self->super._navigationBar leadingAnchor];
      v8 = [v6 constraintEqualToAnchor:v7];
      v20[1] = v8;
      v9 = [(UILayoutGuide *)self->_contentFocusContainerGuide trailingAnchor];
      v10 = [(UIView *)self->super._navigationBar trailingAnchor];
      v11 = [v9 constraintEqualToAnchor:v10];
      v20[2] = v11;
      v12 = [(UILayoutGuide *)self->_contentFocusContainerGuide bottomAnchor];
      v13 = [(UIView *)self->super._navigationBar bottomAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];
      v20[3] = v14;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
      [v16 activateConstraints:v15];
    }
  }
}

- (void)updateBarVisibilityForTopItem
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v4 = [v3 item];
  v5 = [v4 _navigationBarVisibility];
  v6 = v5 != 0;

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
      v12 = [(UIView *)self->super._navigationBar layer];
      [v12 setFilters:v11];
    }

    if (v5)
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v13 = ;
    v14 = [(UIView *)self->super._navigationBar layer];
    v15 = [v13 CGColor];
    v16 = MEMORY[0x1E696AEC0];
    v17 = [(CAFilter *)self->_hiddenFilter name];
    v18 = [v16 stringWithFormat:@"filters.%@.%@", v17, *v7];
    [v14 setValue:v15 forKeyPath:v18];

    self->_isHidden = v6;
    v19 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v20 = [v19 delegate];

    if (objc_opt_respondsToSelector())
    {
      [v20 _navigationBarDidUpdateVisibility:self->super._navigationBar];
    }
  }
}

- (void)changeAppearance
{
  v3 = [(UINavigationBar *)self->super._navigationBar largeTitleTextAttributes];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:v3];

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _installWindowMoveClientInteractionIfNecessary];
}

- (void)_installWindowMoveClientInteractionIfNecessary
{
  v3 = [(_UINavigationBarVisualProviderModernIOS *)self _wantsWindowMoveClientInteractionInstalled];
  windowDragClientInteraction = self->_windowDragClientInteraction;
  if (v3)
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:v3];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)_prepareLayouts
{
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v3];

  v4 = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v4];
}

- (BOOL)_isInnerNavigationBarOfNestedNavigationController
{
  v3 = [(UINavigationBar *)self->super._navigationBar _accessibility_navigationController];
  v4 = [v3 _outermostNavigationController];
  v5 = [v4 navigationBar];

  navigationBar = self->super._navigationBar;
  if (navigationBar == v5)
  {
    v9 = 0;
  }

  else
  {
    v7 = [(UINavigationBar *)navigationBar topItem];
    v8 = [(UINavigationBar *)v5 topItem];
    v9 = v7 == v8;
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
  v3 = [(UIView *)self->super._navigationBar subviews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v3);
        }

        [(_UINavigationBarVisualProviderModernIOS *)self _setupAccessibilityLimitsForView:*(*(&v10 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (self->_customizer)
  {
    v8 = [(UIView *)self->super._navigationBar window];

    if (!v8)
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v4 = [(UIView *)self->super._navigationBar window];
  if (v4)
  {
  }

  else
  {
    v36 = [v3 item];
    v37 = [v36 _navigationBar];
    navigationBar = self->super._navigationBar;

    if (v37 != navigationBar)
    {
      goto LABEL_24;
    }
  }

  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v7 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v9 = [(_UIPointerInteractionAssistant *)self->_assistant previewContainer];
  [v9 setFrame:{v5, v6, v7, v8}];

  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v3];
  v10 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v11 = [v10 activeLayout];

  if (!self->_transitionContext)
  {
    if (v11)
    {
      v12 = v11[18];
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

    v14 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v15 = [v14 inactiveLayout];

    if (v11 || !v15)
    {
      [(_UINavigationBarLayout *)v15 removeViewsNotInLayout:v11];
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

      v43 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      v44 = 138412290;
      v45 = v43;
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
      v43 = [(_UINavigationBarItemStack *)stack topEntry];
      v44 = 138412290;
      v45 = v43;
      _os_log_impl(&dword_188A29000, v42, OS_LOG_TYPE_ERROR, "Unexpected configuration for the top navigation item on the navigation bar (activeLayout is nil with non-nil inactiveLayout). %@", &v44, 0xCu);
    }

LABEL_29:
    goto LABEL_11;
  }

LABEL_12:
  v16 = [v3 item];
  if ([v16 _hasIntegratedSearchBarInNavigationBar])
  {
    v17 = [v16 _searchControllerIfAllowed];
    v18 = [v17 searchBar];

    v19 = [v18 superview];
    v20 = self->super._navigationBar;

    if (v19 == v20)
    {
      [v18 removeFromSuperview];
    }
  }

  [(UIView *)self->super._navigationBar _contentMargin];
  v22 = v21;
  v23 = [v16 _topPalette];
  v24 = [v16 _bottomPalette];
  [v23 setAssistantIdentifier:@"Palette.itemTop"];
  [v23 setAssistant:self->_assistant];
  [v24 setAssistantIdentifier:@"Palette.itemBottom"];
  [v24 setAssistant:self->_assistant];
  [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:v23 withContentMargin:v22];
  [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:v24 withContentMargin:v22];
  [(UIView *)self->_contentView setSemanticContentAttribute:[(UIView *)self->super._navigationBar semanticContentAttribute]];
  [(_UINavigationBarVisualProviderModernIOS *)self _updatePromptViewAndActuallyHide:1];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
  v25 = [(_UINavigationBarItemStack *)self->super._stack backItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v16 backItem:v25];

  v26 = [(_UINavigationBarItemStack *)self->super._stack itemCount];
  [(UIView *)self->super._navigationBar bounds];
  v31 = v27;
  v32 = v28;
  v33 = v29;
  v34 = v30;
  if (v26 < 1)
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
      [(_UINavigationBarVisualProviderModernIOS *)self _configureMarginsOnContentViewsAndPalette:v24 withContentMargin:?];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _updateTitleViewForLayout:v11];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self updateBarVisibilityForTopItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
  [(_UINavigationBarVisualProviderModernIOS *)self _enforceLayoutOrdering];
  [(_UIBarCustomizer *)self->_customizer invalidateLayout];

LABEL_24:
}

- (BOOL)_allowLargeTitleView
{
  v3 = [(UIView *)self->super._navigationBar traitCollection];
  if ([v3 verticalSizeClass] == 1)
  {
    v4 = 0;
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
      v4 = HIBYTE(word_1ED498169);
    }

    else
    {
      v4 = [(UINavigationBar *)v5 prefersLargeTitles];
    }
  }

  return v4;
}

- (BOOL)allowLargeTitleView
{
  v3 = [(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView];
  if (v3)
  {
    LOBYTE(v3) = [(_UINavigationBarVisualProviderModernIOS *)self largeTitleStyle]== 0;
  }

  return v3;
}

- (void)_updateTabBarSuppressionIfNeeded
{
  v3 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v4 = [v3 _stackEntry];
  self->_isSuppressingTabBar = [v4 isSearchActive];

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
      v5 = [(UIView *)self->super._navigationBar superview];
      v6 = v5;
      if (v5)
      {
        [v5 safeAreaInsets];
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
  v19 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v3 = [(UIView *)self->super._navigationBar _canDrawContent];
  [(UIView *)self->_backgroundView setHidden:v3];
  if (v3)
  {
    [(UIView *)self->super._navigationBar setNeedsDisplay];
    goto LABEL_30;
  }

  v4 = [v19 item];
  v5 = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
  v6 = [v19 activeLayout];
  v7 = v6;
  v8 = v5 == 102 || v5 == 1;
  if (v5 == 102 || v5 == 1)
  {
    if (v6)
    {
      v10 = *(v6 + 184);
LABEL_15:
      v11 = v10;
      goto LABEL_16;
    }
  }

  else if (v6)
  {
    v10 = *(v6 + 192);
    goto LABEL_15;
  }

  v10 = 0;
  v11 = 0;
LABEL_16:
  v12 = v10;

  v13 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v12 forNavigationItem:v4 compact:v8];

  if (v7)
  {
    v14 = *(v7 + 288);
  }

  else
  {
    v14 = 0.0;
  }

  [v13 setBackgroundTransitionProgress:v14];
  if (v5 != 102 && v5 != 1)
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
    v16 = self;
    v17 = v16;
    backgroundAlpha = v16->_backgroundAlpha;
    if (!self->_usesBarBackground)
    {
      [(_UINavigationBarVisualProviderModernIOS *)v16 alphaForBarBackground:self->_backgroundView preferredAlpha:v4 navigationItem:backgroundAlpha];
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
    v6 = [(UIView *)self->super._navigationBar traitCollection];
    v4 = objc_opt_self();
    v5 = [v6 objectForTrait:v4];
    [(_UIBarBackground *)self->_backgroundView setGroupName:v5];
  }
}

- (void)_enforceLayoutOrdering
{
  if (!dyld_program_sdk_at_least() || ([(UIView *)self->super._navigationBar window], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
    {
      v8 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      if (v8)
      {
        v4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
        v5 = [v4 activeLayout];
        [(_UINavigationBarLayout *)v5 installViewsInNavigationBar:?];

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
      v7 = [(_UIPointerInteractionAssistant *)self->_assistant previewContainer];
      [(UIView *)navigationBar addSubview:v7];
    }
  }
}

- (void)navigationBarInvalidatedResolvedLayoutMargins
{
  v2 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v4 = [v2 _searchControllerIfAllowed];

  v3 = [v4 searchBar];
  [v3 _updateEffectiveContentInset];
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
  v3 = [(UIView *)self->super._navigationBar traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 6)
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
    v7 = self;
    v6 = &v7;
  }

  v6->super_class = _UINavigationBarVisualProviderModernIOS;
  return [(objc_super *)v6 permitsSearchBarPlacementIntegratedCentered];
}

- (void)applyBarBackground:(id)a3 alpha:(double)a4
{
  v6 = a3;
  if (!self->_usesBarBackground)
  {
    v8 = v6;
    [v6 alpha];
    v6 = v8;
    if (v7 != a4)
    {
      [v8 setAlpha:a4];
      v6 = v8;
    }
  }
}

- (void)teardown
{
  [(UIView *)self->super._navigationBar removeInteraction:self->_assistant];
  v3 = [(UIView *)self->super._navigationBar layer];
  [v3 setFilters:0];

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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v4 = [v3 activeLayout];
  [(_UINavigationBarLayout *)v4 updateLayout];

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
}

- (double)heightForRestoringFromCancelledTransition
{
  v2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v3 = [v2 activeLayout];
  [(_UINavigationBarLayout *)v3 layoutHeights];
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

- (void)provideViewsForContents:(id)a3 topItem:(id)a4 backItem:(id)a5
{
  contentView = self->_contentView;
  v7 = a4;
  v14 = a3;
  [(_UINavigationBarContentView *)contentView updateAccessibilityContents:?];
  v8 = [v7 _stackEntry];

  v9 = [v8 activeLayout];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 144);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = [v12 accessibilityTitleView];
  [v14 setLargeTitleView:v13];

  [v14 setPromptView:0];
}

- (void)_updatePromptViewAndActuallyHide:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v6 = [v5 prompt];

  if (v3)
  {
    [(UIView *)self->_promptView setHidden:v6 == 0];
  }

  v7 = 0.0;
  if (v6)
  {
    v7 = 1.0;
  }

  promptView = self->_promptView;

  [(UIView *)promptView setAlpha:v7];
}

- (BOOL)_isInInteractiveScroll
{
  v2 = [(UINavigationBar *)self->super._navigationBar delegate];
  if (v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [v2 _navigationBarLayoutIsInInteractiveScroll];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_updateTitleViewForLayout:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v6 = [v5 isSearchActive];

  if (v6)
  {
    goto LABEL_27;
  }

  [(UIView *)self->super._navigationBar bounds];
  self->_previousBarSize.width = v7;
  self->_previousBarSize.height = v8;
  if (v4)
  {
    v9 = *(v4 + 18);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (v4)
    {
      v11 = *(v4 + 35);
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
      v15 = [(_UINavigationBarItemStack *)self->super._stack topItem];
      v16 = [v15 _weeTitle];
      v17 = [v16 length];

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

- (void)setUseInlineBackgroundHeightWhenLarge:(BOOL)a3
{
  if (self->_useInlineBackgroundHeightWhenLarge != a3)
  {
    self->_useInlineBackgroundHeightWhenLarge = a3;
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setBackgroundAlpha:(double)a3
{
  if (self->_backgroundAlpha != a3)
  {
    self->_backgroundAlpha = a3;
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setTitleAlpha:(double)a3
{
  if (self->_titleAlpha != a3)
  {
    self->_titleAlpha = a3;
  }

  if (![(_UINavigationBarVisualProviderModernIOS *)self wantsLargeTitleDisplayed])
  {
    titleAlpha = self->_titleAlpha;
    contentView = self->_contentView;

    [(_UINavigationBarContentView *)contentView setInlineTitleViewAlpha:titleAlpha];
  }
}

- (void)setAppearanceAPIVersion:(int64_t)a3
{
  appearanceAPIVersion = self->_appearanceAPIVersion;
  if (appearanceAPIVersion > a3)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:610 description:@"We shouldn't be decreasing the API version... right?"];

    appearanceAPIVersion = self->_appearanceAPIVersion;
  }

  if (appearanceAPIVersion != a3)
  {
    self->_appearanceAPIVersion = a3;
    self->_useModernAppearanceAPI = a3 > 1;
    if (a3 >= 2)
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

- (void)_upgradeAppearanceAPIForItemIfNecessary:(id)a3
{
  v4 = a3;
  if (self->_appearanceAPIVersion <= 1)
  {
    v7 = v4;
    v5 = [v4 standardAppearance];
    if (v5 || ([v7 compactAppearance], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {

LABEL_5:
      [(_UINavigationBarVisualProviderModernIOS *)self setAppearanceAPIVersion:2];
      v4 = v7;
      goto LABEL_6;
    }

    v6 = [v7 scrollEdgeAppearance];

    v4 = v7;
    if (v6)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

- (BOOL)useManualScrollEdgeAppearanceForItem:(id)a3
{
  v4 = a3;
  if ([v4 _alwaysUseManualScrollEdgeAppearance])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 _searchControllerIfAllowed];
    if (v6)
    {
      v7 = [v4 _hidesSearchBarWhenScrollingIfAllowed];
    }

    else
    {
      v7 = 0;
    }

    v5 = v7 | [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:v4];
  }

  v8 = [(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress];
  if ((v8 & 1) == 0 && (v5 & 1) == 0)
  {
    if ([(_UINavigationBarVisualProviderModernIOS *)self forceScrollEdgeAppearance])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v4 _isManualScrollEdgeAppearanceEnabled];
    }
  }

  return v8;
}

- (void)setForceScrollEdgeAppearance:(BOOL)a3
{
  v4 = a3 & ~[(UIView *)self->super._navigationBar _canDrawContent];
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v4 = [v3 scrollEdgeAppearance];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(UINavigationBar *)self->super._navigationBar scrollEdgeAppearance];

    if (!v5)
    {
      LOBYTE(v7) = 1;
      return v7;
    }
  }

  v6 = [v5 _backgroundData];
  v7 = [v6 hasBackground] ^ 1;

  return v7;
}

- (BOOL)_useLargeTitleForDisplayMode:(int64_t)a3
{
  switch(a3)
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

- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 _stackEntry];
  if ([v5 isSearchActive])
  {
    v6 = [v4 _searchControllerIfAllowed];
    v7 = -[_UINavigationBarVisualProviderModernIOS _stackWantsLargeTitleDisplayedForItem:hideLargeTitleForActiveSearch:](self, "_stackWantsLargeTitleDisplayedForItem:hideLargeTitleForActiveSearch:", v4, [v6 hidesNavigationBarDuringPresentation]);
  }

  else
  {
    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:v4 hideLargeTitleForActiveSearch:0];
  }

  return v7;
}

- (BOOL)_stackWantsLargeTitleDisplayedForItem:(id)a3 hideLargeTitleForActiveSearch:(BOOL)a4
{
  v6 = a3;
  v7 = 0;
  if ([(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView]&& !a4)
  {
    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:v6]];
  }

  return v7;
}

- (BOOL)_stackWantsSearchDisplayedBelowContentViewForItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  }

  v5 = [v4 _searchControllerIfAllowed];
  if (v5)
  {
    v6 = [v4 _stackEntry];
    if ([v6 isSearchActive])
    {
      v7 = [v5 hidesNavigationBarDuringPresentation] ^ 1;
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

- (BOOL)_stackWantsBottomPaletteDisplayedForItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  }

  v5 = [v4 _bottomPalette];
  v6 = v5 != 0;

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

- (void)_popToItem:(id)a3
{
  v4 = a3;
  v5 = [(UINavigationBar *)self->super._navigationBar delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 _navigationBar:self->super._navigationBar requestPopToItem:v4];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF70] array];
    stack = self->super._stack;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __54___UINavigationBarVisualProviderModernIOS__popToItem___block_invoke;
    v12 = &unk_1E70F7640;
    v13 = v6;
    v14 = v4;
    v8 = v6;
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
  v3 = [(_UINavigationBarContentView *)self->_contentView layout];
  v10 = [v3 backButton];

  v4 = v10;
  if (v10)
  {
    v5 = [(_UINavigationBarItemStack *)self->super._stack backItem];
    v6 = [v5 _effectiveBackBarButtonItem];

    v7 = [(_UINavigationBarVisualProviderModernIOS *)self _backButtonMenu];
    [v6 setMenu:v7];

    v8 = [v10 visualProvider];
    LODWORD(v5) = [v8 canUpdateMenuInPlace];

    if (v5)
    {
      v9 = [v10 visualProvider];
      [v9 updateMenu];
    }

    v4 = v10;
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

  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(_UINavigationBarContentView *)self->_contentView layout];
  v9 = [v8 centerBar];
  v21 = [v9 groupRealizedOrder];
  v10 = [v9 groupOrderer];
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:952 description:@"Began customizing but the customizer is nil!"];
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke;
  v30[3] = &unk_1E70F76B8;
  v30[4] = self;
  v11 = v6;
  v31 = v11;
  v12 = v7;
  v32 = v12;
  [(_UIButtonBarGroupOrderer *)v10 enumerateSourceGroups:v30];
  v13 = [_UIBarCustomizationSession sessionWithVisibleItems:v11 additionalItems:v12];
  currentCustomizationSession = self->_currentCustomizationSession;
  self->_currentCustomizationSession = v13;

  v15 = [(_UIBarCustomizationSession *)self->_currentCustomizationSession beginAnimationCoordinator];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_2;
  v27[3] = &unk_1E70F35B8;
  v16 = v9;
  v28 = v16;
  v29 = self;
  [v15 addAnimations:v27];

  v17 = [(_UIBarCustomizationSession *)self->_currentCustomizationSession endAnimationCoordinator];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_3;
  v26[3] = &unk_1E70F3590;
  v26[4] = self;
  [v17 addAnimations:v26];

  objc_initWeak(&location, self);
  v18 = [(_UIBarCustomizationSession *)self->_currentCustomizationSession endAnimationCoordinator];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __62___UINavigationBarVisualProviderModernIOS__beginCustomization__block_invoke_4;
  v22[3] = &unk_1E70F76E0;
  objc_copyWeak(&v24, &location);
  v19 = v16;
  v23 = v19;
  [v18 addCompletion:v22];

  [(_UIBarCustomizer *)self->_customizer beginWithSession:self->_currentCustomizationSession];
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (id)_barCustomizationItemWithBarButtonGroup:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 _customizationIdentifier];
  v6 = [v4 _items];
  v7 = [v6 count];

  if (v7 < 2)
  {
    v26 = [v4 _items];
    v27 = [v26 firstObject];
    v23 = [(_UINavigationBarVisualProviderModernIOS *)self _barCustomizationItemWithBarButtonItem:v27 identifier:v5];
  }

  else
  {
    v8 = self;
    v9 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v29 = v4;
    obj = [v4 _items];
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
          v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%i", v5, v12];
          v17 = [(_UINavigationBarVisualProviderModernIOS *)v8 _barCustomizationItemWithBarButtonItem:v15 identifier:v16];
          [v9 addObject:v17];

          v12 = (v12 + 1);
        }

        v11 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v11);
    }

    v4 = v29;
    v18 = [v29 representativeItem];
    v19 = [v18 image];
    v20 = [v29 representativeItem];
    v21 = [v20 title];
    v22 = v9;
    v23 = [_UIBarCustomizationItem groupWithWithIdentifier:v5 icon:v19 name:v21 items:v9];

    [v23 setCollapsed:{objc_msgSend(v29, "isDisplayingRepresentativeItem")}];
    v24 = [v29 representativeItem];
    v25 = [(_UINavigationBarVisualProviderModernIOS *)v8 _sourceViewProviderForBarButtonItem:v24];
    [v23 setSourceViewProvider:v25];
  }

  [v23 setRemovable:{objc_msgSend(v4, "_isRemovableItem")}];

  return v23;
}

- (id)_barCustomizationItemWithBarButtonItem:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 _resolvedImage];
  v9 = [v7 resolvedTitle];
  v10 = [v7 customView];
  v11 = [_UIBarCustomizationItem itemWithIdentifier:v6 icon:v8 name:v9 view:v10];

  v12 = [v7 tintColor];
  [v11 setTintColor:v12];

  [v11 setEnabled:{objc_msgSend(v7, "isEnabled")}];
  v13 = [(_UINavigationBarVisualProviderModernIOS *)self _sourceViewProviderForBarButtonItem:v7];

  [v11 setSourceViewProvider:v13];

  return v11;
}

- (id)_sourceViewProviderForBarButtonItem:(id)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79___UINavigationBarVisualProviderModernIOS__sourceViewProviderForBarButtonItem___block_invoke;
  aBlock[3] = &unk_1E70F7708;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

- (id)barCustomizer:(id)a3 containerViewForSession:(id)a4
{
  customizationContainerView = self->_customizationContainerView;
  if (!customizationContainerView)
  {
    v6 = [UIView alloc];
    v7 = [(UIView *)self->super._navigationBar window];
    [v7 bounds];
    v8 = [(UIView *)v6 initWithFrame:?];

    [(UIView *)v8 setAutoresizingMask:18];
    v9 = [(UIView *)self->_contentView tintColor];
    [(UIView *)v8 setTintColor:v9];

    if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_BarCustomizationDebugEnabled, @"BarCustomizationDebugEnabled") & 1) == 0 && byte_1EA95E154)
    {
      v10 = +[UIColor redColor];
      v11 = [v10 CGColor];
      v12 = [(UIView *)v8 layer];
      [v12 setBorderColor:v11];

      v13 = [(UIView *)v8 layer];
      [v13 setBorderWidth:1.0];
    }

    v14 = self->_customizationContainerView;
    self->_customizationContainerView = v8;

    v15 = [(UIView *)self->super._navigationBar window];
    [v15 addSubview:self->_customizationContainerView];

    [(_UINavigationBarVisualProviderModernIOS *)self _setupAccessibilityLimitsForView:self->_customizationContainerView];
    customizationContainerView = self->_customizationContainerView;
  }

  return customizationContainerView;
}

- (CGRect)barCustomizer:(id)a3 customizationAreaBoundsForSession:(id)a4
{
  contentView = self->_contentView;
  [(UIView *)contentView bounds:a3];
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

- (CGRect)barCustomizer:(id)a3 overflowControlBoundsForSession:(id)a4
{
  v5 = [(_UINavigationBarContentView *)self->_contentView layout:a3];
  v6 = [v5 overflowButton];
  v7 = _contentViewFromBarButton(v6);

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

- (void)barCustomizer:(id)a3 willEndSession:(id)a4 didReset:(BOOL)a5
{
  v5 = a5;
  v104 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = [(_UINavigationBarContentView *)self->_contentView layout];
  v9 = [v8 centerBar];

  v70 = v7;
  v63 = v9;
  if (v5)
  {
    v10 = [v9 groupOrderer];
    [(_UIButtonBarGroupOrderer *)v10 reset];

    v11 = [v9 view];
    [v11 layoutIfNeeded];

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = [v9 barButtonGroups];
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
            v68 = [v7 visibleItems];
            v15 = [v68 countByEnumeratingWithState:&v89 objects:v102 count:16];
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
                    objc_enumerationMutation(v68);
                  }

                  v18 = *(*(&v89 + 1) + 8 * i);
                  v19 = v13;
                  v20 = [v13 _customizationIdentifier];
                  v21 = [v18 identifier];
                  v22 = [v20 isEqual:v21];

                  if (v22)
                  {
                    v13 = v19;
                    [v18 setCollapsed:{objc_msgSend(v19, "isDisplayingRepresentativeItem")}];
                    v14 = 1;
                    goto LABEL_19;
                  }

                  v13 = v19;
                }

                v16 = [v68 countByEnumeratingWithState:&v89 objects:v102 count:16];
                if (v16)
                {
                  continue;
                }

                break;
              }

LABEL_19:
              v7 = v70;
            }

            else
            {
              v14 = 0;
            }
          }

          if ([v13 isDisplayingRepresentativeItem])
          {
            v23 = [v13 representativeItem];
            v101 = v23;
            v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v101 count:1];
          }

          else
          {
            v24 = [v13 _items];
          }

          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v25 = v24;
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
                v31 = [v30 view];
                [v31 setAlpha:0.0];

                v32 = [v7 endAnimationCoordinator];
                v33 = v32;
                if (v14)
                {
                  v84[0] = MEMORY[0x1E69E9820];
                  v84[1] = 3221225472;
                  v84[2] = __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke;
                  v84[3] = &unk_1E70F7730;
                  v84[4] = v30;
                  [v32 addCompletion:v84];
                }

                else
                {
                  v83[0] = MEMORY[0x1E69E9820];
                  v83[1] = 3221225472;
                  v83[2] = __81___UINavigationBarVisualProviderModernIOS_barCustomizer_willEndSession_didReset___block_invoke_2;
                  v83[3] = &unk_1E70F3590;
                  v83[4] = v30;
                  [v32 addAnimations:v83];
                }

                v7 = v70;
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
    v35 = [v63 view];
    [v35 setHidden:0];
  }

  else
  {
    v35 = objc_opt_new();
    v36 = objc_opt_new();
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v37 = [v7 visibleItems];
    v38 = [v37 countByEnumeratingWithState:&v79 objects:v99 count:16];
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
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v79 + 1) + 8 * k);
          v43 = [v42 identifier];

          if (v43)
          {
            v44 = [v42 identifier];
            [v35 addObject:v44];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v79 objects:v99 count:16];
      }

      while (v39);
    }

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v45 = [v70 additionalItems];
    v46 = [v45 countByEnumeratingWithState:&v75 objects:v98 count:16];
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
            objc_enumerationMutation(v45);
          }

          v51 = [*(*(&v75 + 1) + 8 * m) identifier];
          [v36 addObject:v51];
        }

        v48 = [v45 countByEnumeratingWithState:&v75 objects:v98 count:16];
      }

      while (v48);
    }

    v52 = [v47 groupOrderer];
    [(_UIButtonBarGroupOrderer *)v52 setIncludedIdentifiers:v35 excludedIdentifiers:v36];

    v53 = [v47 view];
    [v53 layoutIfNeeded];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v54 = [v70 visibleItems];
    v55 = [v54 countByEnumeratingWithState:&v71 objects:v97 count:16];
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
            objc_enumerationMutation(v54);
          }

          v59 = *(*(&v71 + 1) + 8 * n);
          v60 = [v59 identifier];
          v61 = [(_UINavigationBarVisualProviderModernIOS *)self _centerBarButtonGroupWithIdentifier:v60];

          [v59 setCollapsed:{objc_msgSend(v61, "isDisplayingRepresentativeItem")}];
        }

        v56 = [v54 countByEnumeratingWithState:&v71 objects:v97 count:16];
      }

      while (v56);
    }

    v34 = v63;
    v62 = [v63 groupOrderer];
    [(_UIButtonBarGroupOrderer *)v62 save];

    v7 = v70;
  }
}

- (id)_centerBarButtonGroupWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(_UINavigationBarContentView *)self->_contentView layout];
    v6 = [v5 centerBar];
    v7 = [v6 barButtonGroups];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [v11 _customizationIdentifier];
          v13 = [v12 isEqual:v4];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v5 = [v4 item];

  v6 = [(_UINavigationBarTitleRenamerSession *)self->_titleRenamerSession context];

  if (v6 != v5)
  {
    if (self->_titleRenamerSession)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      v35 = [(_UINavigationBarTitleRenamerSession *)self->_titleRenamerSession context];
      [v34 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1218 description:{@"Attempting to begin renaming a navigation item (%@) while already renaming a different navigation item (%@) on navigation bar (%@).", v5, v35, self->super._navigationBar}];
    }

    v7 = [v5 _renameHandler];
    if (!v7)
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

    v9 = [(_UINavigationBarContentView *)self->_contentView documentProperties];
    if ([v9 wantsIconRepresentation])
    {
      v10 = [v9 _metadataWrapper];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v7 _fileURLForRenaming];
    v41 = v11;
    v42 = v10;
    if (v11)
    {
      v12 = v11;
      v37 = v7;
      v39 = v9;
      v13 = [_UINavigationBarTitleRenamerRemoteSession alloc];
      v43 = 0;
      v14 = [(UIView *)self->_contentView _window];
      v15 = [v14 windowScene];
      v16 = [(_UINavigationBarTitleRenamerRemoteSession *)v13 initWithFileURL:v12 iconMetadata:v10 error:&v43 scene:v15];
      v17 = v43;

      if (!v16)
      {
        v24 = _UINSLocalizedStringWithDefaultValue(@"Rename failed", @"Rename failed");
        [v17 localizedDescription];
        v26 = v25 = v8;
        v27 = [UIAlertController alertControllerWithTitle:v24 message:v26 preferredStyle:1];

        v28 = _UINSLocalizedStringWithDefaultValue(@"OK", @"OK");
        v29 = [UIAlertAction actionWithTitle:v28 style:0 handler:0];
        [v27 addAction:v29];

        v8 = v25;
        v30 = [(UIView *)self->super._navigationBar _viewControllerForAncestor];
        [v30 presentViewController:v27 animated:1 completion:0];

        v16 = 0;
        v7 = v37;
        v9 = v39;
LABEL_27:

LABEL_28:
        goto LABEL_29;
      }

      v7 = v37;
      v9 = v39;
    }

    else
    {
      v38 = v8;
      if ((_UIInternalPreferenceUsesDefault_0(&_UIInternalPreference_ForceOOPRename, @"ForceOOPRename") & 1) != 0 || !byte_1EA95E15C)
      {
        v31 = [_UINavigationBarTitleRenamerSession alloc];
        v32 = [v5 title];
        v19 = v32;
        if (v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = &stru_1EFB14550;
        }

        v16 = [(_UINavigationBarTitleRenamerSession *)v31 initWithSuggestedTitle:v33 iconMetadata:v10];
      }

      else
      {
        v36 = [_UINavigationBarTitleRenamerRemoteSession alloc];
        v18 = [v5 title];
        v19 = v18;
        v40 = v9;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = &stru_1EFB14550;
        }

        v21 = [(UIView *)self->_contentView _window];
        v22 = [v21 windowScene];
        v23 = v20;
        v9 = v40;
        v16 = [(_UINavigationBarTitleRenamerRemoteSession *)v36 initWithSuggestedTitle:v23 iconMetadata:v10 scene:v22];
      }

      v17 = 0;
      v8 = v38;
    }

    [(_UINavigationBarTitleRenamerSession *)v16 setContext:v5];
    [(_UINavigationBarTitleRenamer *)v8 startSession:v16];
    objc_storeStrong(&self->_titleRenamerSession, v16);
    v27 = [(_UINavigationBarContentView *)self->_contentView layout];
    [v27 setActiveRenamerSession:v16];
    goto LABEL_27;
  }

  NSLog(&cfstr_RequestToBegin.isa, v5);
LABEL_29:
}

- (void)_endRenaming
{
  if (!self->_titleRenamerSession)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:1299 description:@"Unable to end a renaming session. No session in progress."];
  }

  [(_UINavigationBarTitleRenamer *)self->_titleRenamer endSession:?];
  titleRenamerSession = self->_titleRenamerSession;
  self->_titleRenamerSession = 0;

  v6 = [(_UINavigationBarContentView *)self->_contentView layout];
  [v6 setActiveRenamerSession:0];
}

- (id)titleRenamer:(id)a3 session:(id)a4 willBeginRenamingWithTitle:(id)a5 selectedRange:(_NSRange *)a6
{
  v9 = a5;
  v10 = a4;
  __ASSERT_RENAMER_SESSION__(self, v10);
  v11 = __renameHandler(v10);

  if (v11)
  {
    v12 = [v11 _willBeginRenamingWithTitle:v9 selectedRange:a6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)titleRenamer:(id)a3 session:(id)a4 shouldEndRenamingWithTitle:(id)a5
{
  v7 = a5;
  v8 = a4;
  __ASSERT_RENAMER_SESSION__(self, v8);
  v9 = __renameHandler(v8);

  if (v9)
  {
    v10 = [v9 _shouldEndRenamingWithTitle:v7];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)titleRenamer:(id)a3 session:(id)a4 didEndRenamingWithTitle:(id)a5
{
  v11 = a4;
  __ASSERT_RENAMER_SESSION__(self, v11);
  v6 = __renameHandler(v11);
  if (v6)
  {
    v7 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v8 = [v7 item];

    v9 = [v11 title];
    [v8 setTitle:v9];

    v10 = [v11 title];
    [v6 _didEndRenamingWithTitle:v10];

    [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
  }
}

- (void)titleRenamer:(id)a3 didCancelSession:(id)a4
{
  v5 = a4;
  v9 = __renameHandler(v5);
  v6 = [v5 title];

  [v9 _didEndRenamingWithTitle:v6];
  titleRenamerSession = self->_titleRenamerSession;
  self->_titleRenamerSession = 0;

  v8 = [(_UINavigationBarContentView *)self->_contentView layout];
  [v8 setActiveRenamerSession:0];
}

- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidEnd:(id)a5
{
  v7 = a5;
  v8 = a4;
  __ASSERT_RENAMER_SESSION__(self, v8);
  v9 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v13 = [v9 item];

  v10 = [v7 lastPathComponent];
  v11 = [v10 stringByDeletingPathExtension];
  [v13 setTitle:v11];

  v12 = __renameHandler(v8);

  [v12 _fileRenameDidEndWithFinalURL:v7];
  [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
}

- (void)titleRenamer:(id)a3 session:(id)a4 fileRenameDidFail:(id)a5
{
  v7 = a5;
  v8 = a4;
  __ASSERT_RENAMER_SESSION__(self, v8);
  v9 = __renameHandler(v8);

  [v9 _fileRenameDidFailWithError:v7];
  [(_UINavigationBarVisualProviderModernIOS *)self _endRenaming];
}

- (void)_updateContentForTopItem:(id)a3 backItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v144 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_hasIdiom && ![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
  {
    v10 = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    v11 = [(_UINavigationBarVisualProviderModernIOS *)self wantsLargeTitleDisplayed];
    v129 = v10;
    v131 = v11;
    v125 = v5;
    if (self->_appearanceAPIVersion < 2)
    {
      v15 = 0;
      v16 = 0;
      goto LABEL_41;
    }

    v12 = v11;
    v13 = [v8 _isManualScrollEdgeAppearanceEnabled];
    if (v13 & 1 | ![(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress]| v12)
    {
      v14 = 0;
    }

    else
    {
      v17 = [v8 _stackEntry];
      v18 = [v17 activeLayout];
      if (v18)
      {
        v14 = v18[27] < 0.25;
      }

      else
      {
        v14 = 1;
      }
    }

    if (v10 == 102 || v10 == 1)
    {
      if (!v14 || (_nullableCompactScrollEdgeAppearance(self->super._navigationBar, v8), (v16 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v16 = _compactAppearance(self->super._navigationBar, v8);
      }

      goto LABEL_40;
    }

    if (v14)
    {
      goto LABEL_16;
    }

    v23 = [v8 _stackEntry];
    v24 = [v23 activeLayout];
    if (dyld_program_sdk_at_least())
    {
      if (v24)
      {
        v25 = v24[36];

        if (v25 <= 0.0)
        {
          goto LABEL_29;
        }

LABEL_16:
        v19 = self->super._navigationBar;
        v20 = v8;
        v21 = [v20 scrollEdgeAppearance];
        v22 = v21;
        if (v21)
        {
          v16 = v21;
        }

        else
        {
          v26 = [(UINavigationBar *)v19 scrollEdgeAppearance];
          v27 = v26;
          if (v26)
          {
            v16 = v26;
          }

          else
          {
            v32 = v19;
            v33 = [v20 standardAppearance];
            v34 = v33;
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              v35 = [(UINavigationBar *)v32 standardAppearance];
            }

            v16 = v35;
          }
        }

        goto LABEL_39;
      }
    }

    else if (v12 && v24)
    {
      v28 = v24[35];

      if (v28 < 0.05)
      {
        goto LABEL_29;
      }

      goto LABEL_16;
    }

LABEL_29:
    v19 = self->super._navigationBar;
    v29 = [v8 standardAppearance];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [(UINavigationBar *)v19 standardAppearance];
    }

    v16 = v31;

LABEL_39:
LABEL_40:
    v15 = [v16 _barTitleData];
LABEL_41:
    v130 = v16;
    v36 = [v9 _effectiveBackBarButtonItem];
    v37 = [(_UINavigationBarVisualProviderModernIOS *)self _backButtonMenu];
    [v36 setMenu:v37];

    v38 = [v8 hidesBackButton];
    v39 = [v8 leftItemsSupplementBackButton];
    v141 = 0;
    v142 = 0;
    [v8 _getLeadingItems:&v142 groups:&v141];
    v139 = 0;
    v140 = 0;
    [v8 _getTrailingItems:&v140 groups:&v139];
    v132 = v15;
    if (v142)
    {
      v127 = v39;
      if ((v36 == 0) | v38 & 1 || (v39 & 1) == 0 && [v142 count])
      {
        v40 = v36;
        v41 = [v8 _barButtonForBackButtonIndicator];
      }

      else
      {
        v40 = v36;
        v41 = 0;
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

            [*(*(&v135 + 1) + 8 * i) _setShowsChevron:*(*(&v135 + 1) + 8 * i) == v41];
          }

          v44 = [v42 countByEnumeratingWithState:&v135 objects:v143 count:16];
        }

        while (v44);
      }

      v15 = v132;
      v36 = v40;
      v39 = v127;
    }

    [v8 _updateSearchBarItemGroup];
    v126 = v36;
    [(_UINavigationBarContentView *)self->_contentView setBackButtonItem:v36];
    [(_UINavigationBarContentView *)self->_contentView setBackButtonHidden:v38];
    v47 = v142;
    if (v142)
    {
      v48 = [(_UINavigationBarContentView *)self->_contentView leadingBarGroups];
      v49 = [v48 lastObject];
      v50 = [v49 _items];
      v51 = v47;
      v52 = v50;
      v53 = v52;
      if (v51 == v52)
      {

        v15 = v132;
        goto LABEL_63;
      }

      if (v52)
      {
        v54 = [v51 isEqual:v52];

        v15 = v132;
        if (v54)
        {
LABEL_63:
          [(_UINavigationBarContentView *)self->_contentView setLeadingItemsSupplementBackItem:v39];
          v55 = [v8 _searchControllerIfAllowed];
          v56 = [v55 _inlineSearchBarItemGroup];
          [(_UINavigationBarContentView *)self->_contentView setInlineSearchBarGroup:v56];

          -[_UINavigationBarContentView setPlaceInlineSearchBarInCenter:](self->_contentView, "setPlaceInlineSearchBarInCenter:", [v8 searchBarPlacement] == 3);
          if (v140)
          {
            v57 = [v140 reverseObjectEnumerator];
            v58 = [v57 allObjects];
            v59 = [(_UINavigationBarContentView *)self->_contentView trailingBarGroups];
            v60 = [v59 lastObject];
            v61 = [v60 _items];
            v62 = v58;
            v63 = v61;
            v64 = v63;
            if (v62 == v63)
            {

              v15 = v132;
              goto LABEL_72;
            }

            if (v62 && v63)
            {
              v65 = [v62 isEqual:v63];

              v15 = v132;
              if (v65)
              {
LABEL_72:
                v66 = [v8 pinnedTrailingGroup];
                [(_UINavigationBarContentView *)self->_contentView setFixedTrailingGroup:v66];

                v67 = [v8 title];
                [(_UINavigationBarContentView *)self->_contentView setTitle:v67];

                v68 = [v8 titleView];
                [(_UINavigationBarContentView *)self->_contentView setTitleView:v68];

                if (_UIBarsDesktopNavigationBarEnabled())
                {
                  v69 = [v8 centerItemGroups];
                  [(_UINavigationBarContentView *)self->_contentView setCenterBarGroups:v69];

                  -[_UINavigationBarContentView setToolbarStyle:](self->_contentView, "setToolbarStyle:", [v8 style]);
                  v70 = [v8 titleMenuProvider];
                  v71 = v129;
                  v72 = v130;
                  if (!v70)
                  {
                    v70 = [v8 _renameHandler];

                    if (v70)
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
                        v70 = _Block_copy(aBlock);
                      }

                      else
                      {
                        v70 = 0;
                      }

                      v15 = v132;
                    }
                  }

                  v75 = [v8 customizationIdentifier];
                  [(_UINavigationBarContentView *)self->_contentView setCustomizationIdentifier:v75];

                  [(_UINavigationBarContentView *)self->_contentView setTitleMenuProvider:v70];
                  v76 = [v8 documentProperties];
                  [(_UINavigationBarContentView *)self->_contentView setDocumentProperties:v76];

                  v77 = [v8 _renameHandler];
                  [(_UINavigationBarContentView *)self->_contentView setRenameHandler:v77];

                  v78 = [v8 backAction];
                  [(_UINavigationBarContentView *)self->_contentView setBackAction:v78];

                  [(_UINavigationBarContentView *)self->_contentView setEnableAlternatePopItem:[(_UINavigationBarVisualProviderModernIOS *)self _shouldEnableNestedNavigationPopForTopItem:v8 backItem:v9]];
                  v79 = [v8 additionalOverflowItems];
                  [(_UINavigationBarContentView *)self->_contentView setAdditionalItems:v79];
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
                [v8 _minimumDesiredHeightForBarMetrics:{-[UINavigationBar _activeBarMetrics](self->super._navigationBar, "_activeBarMetrics")}];
                [(_UINavigationBarContentView *)self->_contentView setOverrideSize:?];
                [(_UINavigationBarContentView *)self->_contentView setBarMetrics:v71];
                v80 = [(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:v8];
                if (v80 == 1)
                {
                  v81 = 1;
                  if (v15)
                  {
                    goto LABEL_88;
                  }
                }

                else
                {
                  if (!v80)
                  {
                    v81 = [(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView];
                    if (!v15)
                    {
                      goto LABEL_90;
                    }

LABEL_88:
                    v82 = [v15 titleTextAttributes];
                    v83 = [(_UINavigationBarVisualProviderModernIOS *)self _adjustedAppearanceTitleAttributes:v82 allowsLargeTitle:v81];
                    [(_UINavigationBarContentView *)self->_contentView setTitleAttributes:v83];

                    [v15 titlePositionAdjustment];
                    contentView = self->_contentView;
                    goto LABEL_91;
                  }

                  v81 = 0;
                  if (v15)
                  {
                    goto LABEL_88;
                  }
                }

LABEL_90:
                v87 = [(_UINavigationBarVisualProviderModernIOS *)self _effectiveLegacyTitleAttributes];
                v88 = [(_UINavigationBarVisualProviderModernIOS *)self _adjustedAppearanceTitleAttributes:v87 allowsLargeTitle:v81];
                [(_UINavigationBarContentView *)self->_contentView setTitleAttributes:v88];

                v82 = [(UINavigationBar *)self->super._navigationBar _appearanceStorage];
                [v82 titleVerticalAdjustmentForBarMetrics:{-[UINavigationBar _activeBarMetrics](self->super._navigationBar, "_activeBarMetrics")}];
                v85 = v89;
                contentView = self->_contentView;
                v84 = 0.0;
LABEL_91:
                [(_UINavigationBarContentView *)contentView setTitlePositionAdjustment:v84, v85];

                [(_UINavigationBarContentView *)self->_contentView setAllowLeadingAlignedLargeTitle:[(_UINavigationBarVisualProviderModernIOS *)self _allowLargeTitleView]];
                if (v72)
                {
                  v90 = [v72 _backButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setBackButtonAppearance:v90];

                  v91 = [v72 _plainButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setPlainItemAppearance:v91];

                  v92 = [v72 _prominentButtonAppearanceData];
                  [(_UINavigationBarContentView *)self->_contentView setDoneItemAppearance:v92];
                }

                else
                {
                  v92 = [(UINavigationBar *)self->super._navigationBar backIndicatorImage];
                  v93 = [(UINavigationBar *)self->super._navigationBar backIndicatorTransitionMaskImage];
                  v94 = v93;
                  if (v92 && v93)
                  {
                    [(_UINavigationBarContentView *)self->_contentView setBackIndicatorImage:v92];
                    [(_UIBarContentView *)self->_contentView setBackIndicatorMaskImage:v94];
                  }
                }

                [(UINavigationBar *)self->super._navigationBar _requestedMaxBackButtonWidth];
                [(_UINavigationBarContentView *)self->_contentView _setBackButtonMaximumWidth:?];
                v95 = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBar];
                v128 = [v95 currentSelectionTitle];
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
                if ([v8 style])
                {
                  v97 = 1;
                }

                else if (v9)
                {
                  v98 = [v8 title];
                  if ([v98 length])
                  {
                    v99 = [v8 title];
                    v100 = v128;
                    v101 = v100;
                    if (v99 == v100)
                    {
                      v97 = 0;
                    }

                    else
                    {
                      v97 = 1;
                      if (v100 && v99)
                      {
                        v97 = [v99 isEqual:v100] ^ 1;
                      }
                    }

                    v72 = v130;
                  }

                  else
                  {
                    v97 = 0;
                  }

                  v15 = v132;
                }

                else
                {
                  v97 = 0;
                }

                [(_UINavigationBarContentView *)self->_contentView setShowTitleWithTabBar:v97];
                [(_UINavigationBarContentView *)self->_contentView setHostedTabBarVisibilityAffectsTitle:[(_UITabContainerView *)self->_tabBarHostedView sidebarLayout]!= 2];
                [(_UINavigationBarContentView *)self->_contentView setIsHostedTabBarVisible:[(_UITabContainerView *)self->_tabBarHostedView isShowingFloatingTabBar]];
                -[_UINavigationBarContentView setUseInlineLargeTitleMetrics:](self->_contentView, "setUseInlineLargeTitleMetrics:", [v8 largeTitleDisplayMode] == 3);
                [(_UINavigationBarContentView *)self->_contentView updateContentAnimated:v125];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleType:v131];
                v102 = [v8 title];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitle:v102];

                v103 = [v8 _alternateLargeTitles];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setAlternateTitles:v103];

                v104 = [v8 _largeTitleAccessoryView];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setAccessoryView:v104];

                -[_UINavigationBarLargeTitleView setAlignAccessoryViewToTitleBaseline:](self->_largeTitleView, "setAlignAccessoryViewToTitleBaseline:", [v8 _alignLargeTitleAccessoryViewToBaseline]);
                -[_UINavigationBarLargeTitleView setAccessoryViewHorizontalAlignment:](self->_largeTitleView, "setAccessoryViewHorizontalAlignment:", [v8 _largeTitleAccessoryViewHorizontalAlignment]);
                -[_UINavigationBarLargeTitleView setTwoLineMode:](self->_largeTitleView, "setTwoLineMode:", [v8 _largeTitleTwoLineMode]);
                if (v15)
                {
                  v105 = [v15 largeTitleTextAttributes];
                  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:v105];
                }

                else
                {
                  v105 = [(UINavigationBar *)self->super._navigationBar largeTitleTextAttributes];
                  v106 = [(UIView *)self->super._navigationBar traitCollection];
                  v107 = _UINavigationTitleAppearanceAddDefaultLargeTitleAttributes(v105, [v106 userInterfaceIdiom], 0);
                  [(_UINavigationBarLargeTitleView *)self->_largeTitleView setTitleAttributes:v107];
                }

                if (v131)
                {
                  [(_UINavigationBarVisualProviderModernIOS *)self _computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:v8];
                }

                [(_UINavigationBarLargeTitleView *)self->_largeTitleView setProvidesExtraSpaceForExcessiveLineHeights:self->_providesExtraSpaceForExcessiveLineHeights];
                [(_UINavigationBarLargeTitleView *)self->_largeTitleView updateContent];
                v108 = [v8 prompt];

                if (v108)
                {
                  v109 = [v8 prompt];
                  [(_UINavigationBarModernPromptView *)self->_promptView setPrompt:v109];

                  v110 = [(_UINavigationBarVisualProviderModernIOS *)self _compatibleDefaultTextColor];
                  [(_UINavigationBarModernPromptView *)self->_promptView setTextColor:v110];
                }

                v111 = [v8 _weeTitle];
                v112 = [v111 length];

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
                  v117 = [v8 _weeTitle];
                  v118 = [v117 localizedUppercaseString];
                  v119 = [(_UINavigationBarVisualProviderModernIOS *)self _defaultWeeTitleAttributes];
                  v120 = [v116 initWithString:v118 attributes:v119];
                  [(UILabel *)self->_weeTitleLabel setAttributedText:v120];

                  v72 = v130;
                }

                v121 = [v8 _searchControllerIfAllowed];
                v122 = [v121 searchBar];

                if (([v122 _isIntegratedIntoToolbarOrNavigationBarContent] & 1) != 0 || !v122)
                {
                  if (!v122)
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

                  [v122 setMaximumContentSizeCategory:v123];
                }

                if ([v122 showsScopeBar])
                {
                  v124 = [v122 _scopeBar];
                  [v124 setAlpha:1.0];
                }

                goto LABEL_135;
              }
            }

            else
            {

              v15 = v132;
            }
          }

          [(_UINavigationBarContentView *)self->_contentView setTrailingBarButtonItems:v140];
          [(_UINavigationBarContentView *)self->_contentView setTrailingBarGroups:v139];
          goto LABEL_72;
        }
      }

      else
      {

        v15 = v132;
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

- (BOOL)_shouldEnableNestedNavigationPopForTopItem:(id)a3 backItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && ([v6 backAction], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      v10 = [v9 _navigationBarTopItemIsNestedNavigationController:self->super._navigationBar];
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

- (void)_ensureLayoutsConfiguredForEntry:(id)a3 forMeasuring:(BOOL)a4
{
  v74 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    if (![(_UINavigationBarVisualProviderModernIOS *)self _isInnerNavigationBarOfNestedNavigationController])
    {
      v7 = [(UIView *)self->super._navigationBar window];

      if (v7)
      {
        v8 = [v6 item];
        v9 = [v8 _searchControllerIfAllowed];
        v10 = [v9 searchBar];
        v11 = [v8 _navigationBar];
        if (v11 || (a4 || [(_UINavigationBarItemStack *)self->super._stack state]== 1 || [(_UINavigationBarItemStack *)self->super._stack state]== 2) && (v11 = self->super._navigationBar) != 0)
        {
          v12 = v11;
          v13 = [(UIView *)v11 traitCollection];
          v14 = [v8 _hasIntegratedSearchBarInNavigationBarForTraits:v13];

          v15 = v14;
          if (v14 == [v10 _isHostedInlineByNavigationBar])
          {
            goto LABEL_14;
          }
        }

        else
        {
          v15 = 0;
          v12 = 0;
          if (([v10 _isHostedInlineByNavigationBar] & 1) == 0)
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
        [v10 _setHostedInlineByNavigationBar:v16];
LABEL_14:
        v70 = v9;
        v19 = [v6 normalLayout];
        v20 = [v6 searchLayout];
        v21 = v20;
        if (v10)
        {
          v22 = v20 == 0;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        if (!v10)
        {
          v27 = 0;
LABEL_28:
          if (self->_transitionContext)
          {
            v28 = v19 == 0;
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
          if (v19)
          {
            goto LABEL_38;
          }

LABEL_45:
          v34 = objc_alloc_init(_UINavigationBarLayout);
          v19 = v34;
          if (v34)
          {
            v34->_apiVersion = self->_appearanceAPIVersion;
            v34->_representedSearchLayoutState = 2;
          }

          [v6 setNormalLayout:{v34, v12}];
          v31 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
          if (!v19)
          {
            [v8 _isManualScrollEdgeAppearanceEnabled];
            v35 = 1;
LABEL_49:
            [(_UINavigationBarVisualProviderModernIOS *)self _contentBackgroundExtension];
            v37 = v36;
            v71 = [v8 prompt];
            if ((v35 & 1) == 0)
            {
              *(v19 + 200) = v37;
            }

            [(_UINavigationBarLayout *)v19 setBackgroundView:?];
            if (v71)
            {
              promptView = self->_promptView;
            }

            else
            {
              promptView = 0;
            }

            [(_UINavigationBarLayout *)v19 setPromptView:?];
            if ((v35 & 1) == 0)
            {
              *(v19 + 114) = v15;
            }

            if (v15)
            {
              v39 = 0;
            }

            else
            {
              v39 = v10;
            }

            [(_UINavigationBarLayout *)v19 setSearchBar:v39];
            -[_UINavigationBarLayout setHidesSearchBarWhenScrolling:](v19, [v8 _hidesSearchBarWhenScrollingIfAllowed]);
            v40 = [v8 _preserveSearchBarAcrossTransitions];
            v67 = v15;
            if (v35)
            {
              [v8 _backgroundHidden];
            }

            else
            {
              *(v19 + 115) = v40;
              *(v19 + 110) = [v8 _backgroundHidden];
            }

            v41 = self;
            v42 = v41;
            backgroundAlpha = v41->_backgroundAlpha;
            if (!v41->_usesBarBackground)
            {
              [(_UINavigationBarVisualProviderModernIOS *)v41 alphaForBarBackground:self->_backgroundView preferredAlpha:v8 navigationItem:backgroundAlpha];
              v42->_backgroundAlpha = backgroundAlpha;
            }

            [(_UINavigationBarVisualProviderModernIOS *)v42 applyBarBackground:self->_backgroundView alpha:backgroundAlpha];

            v44 = [(_UINavigationBarVisualProviderModernIOS *)v42 useManualScrollEdgeAppearanceForItem:v8];
            if (v35)
            {
              [v8 _manualScrollEdgeAppearanceProgress];
            }

            else
            {
              if (*(v19 + 111) != v44)
              {
                *(v19 + 111) = v44;
                [v19 _updateLayoutOutputs];
              }

              [v8 _manualScrollEdgeAppearanceProgress];
              *(v19 + 216) = v45;
              if (*(v19 + 111) == 1)
              {
                [v19 _updateLayoutOutputs];
              }

              v46 = v42->_tabBarHostedView != 0;
              if (*(v19 + 117) != v46)
              {
                *(v19 + 117) = v46;
                [v19 _reorderLayoutItem:*(v19 + 64) toOrder:{objc_msgSend(v19, "_topPaletteOrder")}];
              }
            }

            v47 = [(_UINavigationBarVisualProvider *)v42 contentViewVisualProvider];
            [(_UINavigationBarLayout *)v19 setContentViewVisualProvider:v47];

            [(_UINavigationBarLayout *)v19 setContentView:?];
            v69 = [v8 _topPalette];
            [(_UINavigationBarLayout *)v19 setTopPalette:v69];
            v68 = [v8 _bottomPalette];
            [(_UINavigationBarLayout *)v19 setBottomPalette:v68];
            if ([(_UINavigationBarVisualProviderModernIOS *)v42 _stackWantsLargeTitleDisplayedForItem:v8 hideLargeTitleForActiveSearch:0])
            {
              [(_UINavigationBarLayout *)v19 setLargeTitleView:?];
              weeTitleLabel = v42->_weeTitleLabel;
            }

            else
            {
              [(_UINavigationBarLayout *)v19 setLargeTitleView:?];
              weeTitleLabel = 0;
            }

            [(_UINavigationBarLayout *)v19 setWeeTitleLabel:?];
            if (!v10)
            {
              v30 = v70;
              v12 = v65;
LABEL_105:

              goto LABEL_106;
            }

            if (v21)
            {
              v49 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
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

              [v6 setSearchLayout:v50];
              v49 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
              if (!v21)
              {
                v51 = 1;
LABEL_81:
                [(_UINavigationBarLayout *)v21 setBackgroundView:?];
                if (v71)
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

                [(_UINavigationBarLayout *)v21 setSearchBar:v10];
                v53 = [v8 _preserveSearchBarAcrossTransitions];
                if ((v51 & 1) == 0)
                {
                  *(v21 + 115) = v53;
                }

                [(_UINavigationBarLayout *)v21 setHidesSearchBarWhenScrolling:?];
                v54 = [v8 _backgroundHidden];
                if ((v51 & 1) == 0)
                {
                  *(v21 + 110) = v54;
                }

                v55 = [(_UINavigationBarVisualProvider *)v42 contentViewVisualProvider];
                [(_UINavigationBarLayout *)v21 setContentViewVisualProvider:v55];

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
                    v56 = *(v19 + 128);
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
                      v58 = *(v19 + 144);
                      [(_UINavigationBarLayout *)v21 setLargeTitleView:v58];

                      v59 = *(v19 + 232);
                    }

                    v12 = v65;
                    v60 = v59;
                    [(_UINavigationBarLayout *)v21 setWeeTitleLabel:v60];

LABEL_99:
                    v61 = [(_UINavigationBarPalette *)v69 _paletteForSearch];
                    [(_UINavigationBarLayout *)v21 setTopPalette:v61];

                    v62 = [(_UINavigationBarPalette *)v68 _paletteForSearch];
                    [(_UINavigationBarLayout *)v21 setBottomPalette:v62];

                    if ([(_UINavigationBarVisualProviderModernIOS *)v42 alwaysEvaluateChromelessTransitionProgress])
                    {
                      v63 = [(_UINavigationBarVisualProviderModernIOS *)v42 useManualScrollEdgeAppearanceForItem:v8];
                      if (v51)
                      {
                        [v8 _manualScrollEdgeAppearanceProgress];
                      }

                      else
                      {
                        if (*(v21 + 111) != v63)
                        {
                          *(v21 + 111) = v63;
                          [v21 _updateLayoutOutputs];
                        }

                        [v8 _manualScrollEdgeAppearanceProgress];
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
            *(v21 + 113) = v49;
            *(v21 + 200) = v37;
            goto LABEL_81;
          }

LABEL_48:
          *(v19 + 113) = v31;
          v35 = 0;
          *(v19 + 112) = [v8 _isManualScrollEdgeAppearanceEnabled];
          goto LABEL_49;
        }

        if (v19)
        {
          if (v15 != *(v19 + 114))
          {
LABEL_38:
            v31 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
            goto LABEL_48;
          }

          if (v20)
          {
LABEL_24:
            if (v15 != *(v20 + 114))
            {
              goto LABEL_37;
            }

            v66 = v15;
            v24 = [v9 _hidesNavigationBarDuringPresentationRespectingInlineSearch];
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

          if (v20)
          {
            goto LABEL_24;
          }
        }

        v66 = v15;
        v24 = [v9 _hidesNavigationBarDuringPresentationRespectingInlineSearch];
        v25 = 0;
LABEL_26:
        v26 = v25;

        v27 = v24 ^ (v26 == 0);
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
    v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v6 = [v3 item];

    v4 = [v6 _searchControllerIfAllowed];
    v5 = [v4 searchBar];

    LOBYTE(v4) = [v6 _hasIntegratedSearchBarInNavigationBar];
    [v5 _setHostedInlineByNavigationBar:{objc_msgSend(v6, "_hasIntegratedSearchBarInNavigationBar")}];
    if ((v4 & 1) == 0)
    {
      [v5 _setHostedInlineByToolbar:{objc_msgSend(v6, "_hasIntegratedSearchBarInToolbar")}];
    }
  }
}

- (void)deferSearchSuggestionsMenuRefreshForGeometryChange
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v3 = [v5 activeLayout];
    v4 = v3;
    if (v3)
    {
      [*(v3 + 160) deferSearchSuggestionsMenuRefreshForGeometryChange];
    }
  }
}

- (void)searchScopeBarWillManuallyShowOrHideForNavigationItem:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v6 = [v5 item];

    v4 = v8;
    if (v6 == v8)
    {
      v7 = [(UINavigationBar *)self->super._navigationBar delegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 _navigationBarWillChangeHeightForManualShowOrHideOfSearchScopeBar:self->super._navigationBar];
      }

      v4 = v8;
    }
  }
}

- (void)refreshSearchSuggestionsMenuAfterGeometryChange
{
  if (_UIBarsDesktopNavigationBarEnabled())
  {
    v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v3 = [v5 activeLayout];
    v4 = v3;
    if (v3)
    {
      [*(v3 + 160) refreshSearchSuggestionsMenuAfterGeometryChange];
    }
  }
}

- (id)emptyLayout
{
  v3 = objc_getAssociatedObject(self, &emptyLayout___emptyLayoutKey);
  if (v3)
  {
    v4 = v3;
    v5 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
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
    v8 = [(_UINavigationBarVisualProvider *)self contentViewVisualProvider];
    [(_UINavigationBarLayout *)v4 setContentViewVisualProvider:v8];

    [(_UINavigationBarLayout *)v4 setContentView:?];
    objc_setAssociatedObject(self, &emptyLayout___emptyLayoutKey, v4, 1);
    v5 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegateSupportsScrollEdgeTransitionProgress];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  *(v4 + 113) = v5;
LABEL_7:

  return v4;
}

- (void)_layoutInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v29 = [(_UINavigationBarItemStack *)self->super._stack topEntry:a3.origin.x];
  v6 = [v29 item];
  v7 = [v29 activeLayout];
  if (self->_backgroundTransparentWhenNotCollapsed)
  {
    v8 = 1;
  }

  else if (self->_transitionContext || [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsSearchDisplayedBelowContentViewForItem:v6]|| [(_UINavigationBarVisualProviderModernIOS *)self _stackWantsLargeTitleDisplayedForItem:v6])
  {
    v8 = 0;
  }

  else
  {
    v8 = ![(_UINavigationBarVisualProviderModernIOS *)self _stackWantsBottomPaletteDisplayedForItem:v6];
  }

  if (v7)
  {
    *(v7 + 109) = v8;
    p_backgroundAlpha = &self->_backgroundAlpha;
    backgroundAlpha = self->_backgroundAlpha;
    if (*(v7 + 208) != backgroundAlpha)
    {
      *(v7 + 208) = backgroundAlpha;
      [v7 _updateLayoutOutputs];
    }
  }

  else
  {
    p_backgroundAlpha = &self->_backgroundAlpha;
  }

  v11 = [v29 normalLayout];

  if (v7 != v11)
  {
    goto LABEL_32;
  }

  if ([(_UITabContainerView *)self->_tabBarHostedView canShowFloatingTabBar])
  {
LABEL_29:
    if (!v7)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (!v7)
  {
    v12 = 0;
LABEL_28:

    goto LABEL_29;
  }

  v12 = *(v7 + 144);
  if (!v12 || [v6 largeTitleDisplayMode] != 3)
  {
    goto LABEL_28;
  }

  v13 = *(v7 + 160);
  v14 = [v13 backButton];
  if (v14)
  {

    goto LABEL_30;
  }

  staticNavBarButtonItem = self->_staticNavBarButtonItem;

  if (staticNavBarButtonItem)
  {
LABEL_30:
    if (*(v7 + 108))
    {
      *(v7 + 108) = 0;
      [v7 _updateContentViewLayoutItem];
      [v7 _updateLargeTitleViewLayoutItem];
      [v7 _updateRefreshControlLayoutData];
    }

    goto LABEL_32;
  }

  if ((*(v7 + 108) & 1) == 0)
  {
    *(v7 + 108) = 1;
    [v7 _updateContentViewLayoutItem];
    [v7 _updateLargeTitleViewLayoutItem];
    [v7 _updateRefreshControlLayoutData];
  }

  v16 = *(v7 + 160);
  if ([v16 leadingGroupsMode] == 1)
  {
    [v16 setLeadingGroupsMode:2];
  }

  if ([v16 centerGroupsMode] == 1)
  {
    [v16 setCenterGroupsMode:2];
  }

LABEL_32:
  [(_UINavigationBarLayout *)v7 setLayoutSize:height];
  [(_UINavigationBarLayout *)v7 layoutViews];
  [(_UINavigationBarVisualProviderModernIOS *)self applyBarBackground:self->_backgroundView alpha:*p_backgroundAlpha];
  if (!self->_transitionContext)
  {
    [(UIView *)self->_backgroundView setFrame:[(_UINavigationBarLayout *)v7 backgroundViewLayoutFrame]];
    if (self->_usesBarBackground)
    {
      v17 = [(_UIBarBackground *)self->_backgroundView layout];
      v18 = v17;
      if (v7)
      {
        [v17 setBackgroundTransitionProgress:*(v7 + 288)];
        v19 = *(v7 + 296);
      }

      else
      {
        v19 = 0.0;
        [v17 setBackgroundTransitionProgress:0.0];
      }

      [v18 setBackgroundAlpha:v19];
      [(_UIBarBackground *)self->_backgroundView transitionBackgroundViews];
    }

    if (!self->_transitionContext)
    {
      v20 = [(UIView *)self->_weeTitleLabel window];
      if (v20)
      {
      }

      else if (+[UIView _isInAnimationBlockWithAnimationsEnabled])
      {
        goto LABEL_49;
      }

      if (v7)
      {
        v21 = *(v7 + 144);
        if (v21)
        {
          v22 = v21;
          v23 = *(v7 + 232);
          if (v23)
          {
            v24 = v23;
            v25 = [(_UINavigationBarItemStack *)self->super._stack topItem];
            v26 = [v25 _weeTitle];
            v27 = [v26 length];

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

- (void)_updateModernLayout:(id)a3 forNavigationItem:(id)a4 compact:(BOOL)a5
{
  v5 = a5;
  v22 = a4;
  navigationBar = self->super._navigationBar;
  if (v5)
  {
    v9 = a3;
    v10 = _compactAppearance(navigationBar, v22);
    v11 = [v10 _backgroundData];

    if (![(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
    {
      v19 = v11;
      v11 = v19;
      goto LABEL_14;
    }

    v12 = _nullableCompactScrollEdgeAppearance(self->super._navigationBar, v22);
    if (!v12)
    {
      v13 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
LABEL_13:
      v19 = v13;

      goto LABEL_14;
    }

LABEL_12:
    v13 = [v12 _backgroundData];
    goto LABEL_13;
  }

  v14 = navigationBar;
  v15 = a3;
  v16 = [v22 standardAppearance];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [(UINavigationBar *)v14 standardAppearance];
  }

  v20 = v18;

  v11 = [v20 _backgroundData];

  v21 = [v22 scrollEdgeAppearance];
  if (v21 || ([(UINavigationBar *)self->super._navigationBar scrollEdgeAppearance], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v21;
    goto LABEL_12;
  }

  v19 = +[_UIBarBackgroundAppearanceData transparentBackgroundData];
LABEL_14:
  [a3 setBackgroundData1:v11];
  [a3 setBackgroundData2:v19];
}

- (void)_updateLegacyLayout:(id)a3 forNavigationItem:(id)a4
{
  v6 = a3;
  navigationBar = self->super._navigationBar;
  v8 = a4;
  v9 = [(UINavigationBar *)navigationBar isTranslucent];
  v10 = [(UINavigationBar *)self->super._navigationBar backgroundEffects];
  v11 = [(UINavigationBar *)self->super._navigationBar _effectiveBarTintColor];
  v12 = [(UINavigationBar *)self->super._navigationBar barStyle];
  v13 = v12;
  if (v10)
  {
    [v6 configureWithEffects:v10];
  }

  else if (v12 == 4 || (v14 = self->super._navigationBar, v21 = 0, [(UINavigationBar *)v14 _getBackgroundImage:&v21 shouldRespectOversizedBackgroundImage:0 actualBarMetrics:0 actualBarPosition:0], (v15 = v21) == 0))
  {
    [v6 configureEffectForStyle:v13 backgroundTintColor:v11 forceOpaque:!v9];
  }

  else
  {
    v16 = v15;
    self->_backgroundTransparentWhenNotCollapsed = 1;
    v20 = 0;
    [v15 _isInvisibleAndGetIsTranslucent:&v20];
    if (v9)
    {
      [v6 configureImage:v16 forceTranslucent:(v20 & 1) == 0];
    }

    else if (v11)
    {
      [v6 configureImage:v16 forceOpaque:v20 backgroundTintColor:v11];
    }

    else
    {
      [v6 configureImage:v16 forceOpaque:v20 barStyle:v13];
    }
  }

  v17 = [(UINavigationBar *)self->super._navigationBar shadowImage];
  v18 = [v8 _backgroundHidden];

  if ((v18 & 1) == 0)
  {
    v19 = [(UINavigationBar *)self->super._navigationBar _hidesShadow];
    if (v17 && !v19)
    {
      [v6 configureShadowImage:v17];
      goto LABEL_19;
    }

    if (!v19)
    {
      [v6 configureShadowForBarStyle:v13];
      goto LABEL_19;
    }
  }

  [v6 configureWithoutShadow];
LABEL_19:
  [v6 setShadowAlpha:self->_shadowAlpha];
}

- (id)_backgroundLayoutOfClass:(Class)a3 fromLayout:(id)a4
{
  v6 = a4;
  v7 = v6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [[a3 alloc] initWithLayout:v6];
  }

  v8 = [(UIView *)self->super._navigationBar traitCollection];
  [v7 setInterfaceIdiom:{objc_msgSend(v8, "userInterfaceIdiom")}];
  [v7 setInterfaceStyle:{objc_msgSend(v8, "userInterfaceStyle")}];

  return v7;
}

- (id)_updateBackgroundLayout:(id)a3 forNavigationItem:(id)a4 compact:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v10 = a4;
  if ([(UIView *)self->super._navigationBar _canDrawContent])
  {
    v11 = 0;
    goto LABEL_15;
  }

  if (self->_appearanceAPIVersion < 2)
  {
    v12 = [(_UINavigationBarVisualProviderModernIOS *)self _backgroundLayoutOfClass:objc_opt_class() fromLayout:v9];

    v13 = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
    if (v5)
    {
      if (v13 == 1 || v13 == 102)
      {
        goto LABEL_13;
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = v14;
      v16 = @"LEGACY: Trying to update background for compact size while bar is not in compact size is not supported";
      v17 = a2;
      v18 = self;
      v19 = 2177;
    }

    else
    {
      if (!v13 || v13 == 101)
      {
        goto LABEL_13;
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = v14;
      v16 = @"LEGACY: Trying to update background for default size while bar is not in default size is not supported";
      v17 = a2;
      v18 = self;
      v19 = 2179;
    }

    [v14 handleFailureInMethod:v17 object:v18 file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:v19 description:v16];

LABEL_13:
    [(_UINavigationBarVisualProviderModernIOS *)self _updateLegacyLayout:v12 forNavigationItem:v10];
    goto LABEL_14;
  }

  v12 = [(_UINavigationBarVisualProviderModernIOS *)self _backgroundLayoutOfClass:objc_opt_class() fromLayout:v9];

  [(_UINavigationBarVisualProviderModernIOS *)self _updateModernLayout:v12 forNavigationItem:v10 compact:v5];
LABEL_14:
  v9 = v12;
  v11 = v9;
LABEL_15:

  return v11;
}

- (NSDirectionalEdgeInsets)largeSearchBaseMarginsRequiringNavMinimums:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v6 = [v5 item];

  [v6 largeTitleInsets];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if ([v6 useRelativeLargeTitleInsets])
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
    if (v3)
    {
      v14 = v24;
    }

    else
    {
      v14 = v22;
    }

    if (v3)
    {
      v10 = v23;
    }

    else
    {
      v10 = v21;
    }
  }

  else if (v3)
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

- (void)_configureMarginsOnContentViewsAndPalette:(id)a3 withContentMargin:(double)a4
{
  v32 = a3;
  [(_UINavigationBarVisualProviderModernIOS *)self leadingMarginForContentViewsWithContentMargin:a4];
  v7 = v6;
  [(_UINavigationBarContentView *)self->_contentView _setDirectionalLayoutMargins:0.0, v6, 0.0, a4];
  [(UIView *)self->_promptView setDirectionalLayoutMargins:0.0, v7, 0.0, a4];
  [(_UINavigationBarVisualProviderModernIOS *)self resolvedLargeTitleMargins];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if ([(UIView *)self->super._navigationBar insetsLayoutMarginsFromSafeArea]&& [(UIView *)self->_largeTitleView insetsLayoutMarginsFromSafeArea])
  {
    v16 = [(UIView *)self->super._navigationBar _shouldReverseLayoutDirection];
    [(UIView *)self->super._navigationBar safeAreaInsets];
    if (v16)
    {
      v21 = v15;
    }

    else
    {
      v21 = v11;
    }

    if (v16)
    {
      v22 = v11;
    }

    else
    {
      v22 = v15;
    }

    v9 = v9 - v17;
    v13 = v13 - v19;
    if (v16)
    {
      v11 = v22 - v20;
    }

    else
    {
      v11 = v21 - v18;
    }

    if (v16)
    {
      v15 = v21 - v18;
    }

    else
    {
      v15 = v22 - v20;
    }
  }

  [(UIView *)self->_largeTitleView setDirectionalLayoutMargins:v9, v11, v13, v15];
  v23 = v32;
  if (v32)
  {
    v24 = [v32 _contentViewMarginType];
    if (v24 == 2)
    {
      v26 = [v32 contentView];
      v27 = v26;
      v28 = v9;
      v30 = v11;
      v29 = v13;
      v31 = v15;
    }

    else
    {
      v25 = v24 == 1;
      v23 = v32;
      if (!v25)
      {
        goto LABEL_22;
      }

      v26 = [v32 contentView];
      v27 = v26;
      v28 = 0.0;
      v29 = 0.0;
      v30 = a4;
      v31 = a4;
    }

    [v26 setDirectionalLayoutMargins:{v28, v30, v29, v31}];

    v23 = v32;
  }

LABEL_22:
}

- (void)_updateWithCompletion:(id)a3
{
  stack = self->super._stack;
  v5 = a3;
  v6 = [(_UINavigationBarItemStack *)stack backItem];
  [v6 _setTitleViewDataSource:0];

  v7 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [v7 _setTitleViewDataSource:self->_contentView];

  v8 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v8];

  v9 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v14 = [v9 activeLayout];

  v10 = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
  v11 = [v10 activeLayout];
  v12 = v11;
  if (v14)
  {
    [(_UINavigationBarLayout *)v11 removeViewsNotInLayout:v14];
  }

  else
  {
    [(_UINavigationBarLayout *)v11 removeAllViews];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self layoutSubviews];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
  v13 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  v5[2](v5, 0, v13);
}

- (void)_setupTransitionContextForTransition:(int64_t)a3 completion:(id)a4
{
  navigationBar = self->super._navigationBar;
  v8 = a4;
  v9 = [(UIView *)navigationBar traitCollection];
  v10 = +[_UINavigationBarTransitionContext contextForTransition:withIdiom:completion:](_UINavigationBarTransitionContext, "contextForTransition:withIdiom:completion:", a3, [v9 userInterfaceIdiom], v8);

  transitionContext = self->_transitionContext;
  self->_transitionContext = v10;

  [(_UINavigationBarTransitionContext *)self->_transitionContext setNavigationBar:self->super._navigationBar];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setApiVersion:self->_appearanceAPIVersion];
  v12 = [(UINavigationBar *)self->super._navigationBar _activeBarMetrics];
  v14 = v12 == 1 || v12 == 102;
  [(_UINavigationBarTransitionContext *)self->_transitionContext setCompact:v14];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBackgroundAlpha:self->_backgroundAlpha];
  [(_UINavigationBarVisualProviderModernIOS *)self applyBarBackground:self->_backgroundView alpha:self->_backgroundAlpha];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setStack:self->super._stack];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setAllowLargeTitles:[(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView]];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setRTL:[(UIView *)self->super._navigationBar effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setPromptView:self->_promptView];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setContentView:self->_contentView];
  v15 = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBar];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setTabBarHostedView:v15];

  [(_UINavigationBarTransitionContext *)self->_transitionContext setBackgroundView:self->_backgroundView isBarBackground:self->_usesBarBackground];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setLargeTitleView:self->_largeTitleView];
  if ((a3 - 1) < 4)
  {
    v16 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v46 = v16;
    if (v16)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v16];
      [v46 activeLayout];
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
    v33 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    [(_UINavigationBarLayout *)v33 setLayoutSize:v30, v32];

    v34 = [(_UINavigationBarItemStack *)self->super._stack previousTopEntry];
    if (v34)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v34];
      v35 = [v34 activeLayout];
    }

    else
    {
      if (!v46)
      {
        v45 = [MEMORY[0x1E696AAA8] currentHandler];
        [v45 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2578 description:@"Unexpected transition in the navigation bar with no stack entries"];
      }

      v35 = [(_UINavigationBarVisualProviderModernIOS *)self emptyLayout];
    }

    v36 = v35;
    [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:v35];

    LODWORD(v36) = [v46 isSearchActive];
    if (v36 != [v34 isSearchActive])
    {
      [(_UINavigationBarTransitionContext *)self->_transitionContext setTwoPart:1];
    }

    v37 = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      v38 = [v37 _navigationBarTransitionOverlay];
      [(_UINavigationBarTransitionContext *)self->_transitionContext setTransitionOverlayView:v38];
    }

    goto LABEL_38;
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      v46 = [MEMORY[0x1E696AAA8] currentHandler];
      [v46 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2670 description:{@"Unknown transition = %ld", a3}];
LABEL_38:

      return;
    }

    v46 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v46];
    v17 = [v46 searchLayout];
    [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:v17];

    v18 = [v46 normalLayout];
    v19 = [v18 copy];

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
      v24 = [v23 expectedInactiveInlineSearchBarLayoutState];

      if (v19)
      {
        if (v24 != -1)
        {
          *(v19 + 248) = v24;
        }
      }
    }

    [(_UINavigationBarTransitionContext *)self->_transitionContext setToLayout:v19];
    [v46 setSearchActive:0];
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
        v26 = [(_UINavigationBarLayout *)v19 layoutHeights];
        if (vabdd_f64(v27, v25) >= vabdd_f64(v25, v26))
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

  v39 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v39];
  v40 = [v39 normalLayout];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setFromLayout:v40];
  v41 = [v39 searchLayout];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setToLayout:v41];

  [v39 setSearchActive:1];
  if (!v40)
  {
    goto LABEL_48;
  }

  if (*(v40 + 116) == 1 && *(v40 + 114) != 1)
  {
    if ([(_UINavigationBarTransitionContext *)self->_transitionContext allowLargeTitles])
    {
      goto LABEL_45;
    }

LABEL_48:
    v42 = 0;
    goto LABEL_49;
  }

  if (*(v40 + 280) <= 0.0)
  {
    goto LABEL_48;
  }

LABEL_45:
  v42 = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)self->super._stack effectiveDisplayModeForItemInCurrentStack:0]];
LABEL_49:
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithLargeTitle:v42];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithLargeTitle:0];
  v43 = [(UINavigationBar *)self->super._navigationBar delegate];
  if (objc_opt_respondsToSelector())
  {
    v47 = *MEMORY[0x1E695EFF8];
    v48 = v47;
    -[_UINavigationBarTransitionContext setObservedScrollViewOffsetIsApplicable:](self->_transitionContext, "setObservedScrollViewOffsetIsApplicable:", [v43 _navigationBar:self->super._navigationBar getContentOffsetOfObservedScrollViewIfApplicable:&v48 velocity:&v47]);
    [(_UINavigationBarTransitionContext *)self->_transitionContext setStartingContentOffsetForObservedScrollView:v48];
  }
}

- (void)_endTransitionCompleted:(BOOL)a3
{
  transitionContext = self->_transitionContext;
  if (transitionContext)
  {
    v5 = a3;
    v13 = [(_UINavigationBarTransitionContext *)transitionContext completionHandler];
    v6 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
    stack = self->super._stack;
    if (v5)
    {
      v8 = [(_UINavigationBarItemStack *)stack topItem];
      v9 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v8 backItem:v9 animated:0];

      [(_UINavigationBarTransitionContext *)self->_transitionContext complete];
    }

    else
    {
      v10 = [(_UINavigationBarItemStack *)stack previousTopItem];
      v11 = [(_UINavigationBarItemStack *)self->super._stack previousBackItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v10 backItem:v11 animated:0];

      [(_UINavigationBarTransitionContext *)self->_transitionContext cancel];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _updatePromptViewAndActuallyHide:1];
    v12 = self->_transitionContext;
    self->_transitionContext = 0;

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
    if (v13)
    {
      v13[2](v13, 1, v6);
    }
  }
}

- (void)_presentOrDismissSearch:(int64_t)a3 withTransitionCoordinator:(id)a4
{
  v7 = a4;
  if ((a3 - 7) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = v36;
    if ((a3 - 1) > 2)
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown (transition = %ld)", a3];
      [v37 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2729 description:{@"Unexpected transition type: %@", v38}];
    }

    else
    {
      [v36 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:2729 description:{@"Unexpected transition type: %@", off_1E70F77F0[a3 - 1]}];
    }
  }

  v8 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  [v8 setSearchActive:a3 == 5];
  [(_UINavigationBarVisualProviderModernIOS *)self _setupTransitionContextForTransition:a3 completion:0];
  v9 = [v8 item];
  if (a3 != 5)
  {
    v10 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 312);
    }

    else
    {
      v12 = 0.0;
    }

    v13 = [(UINavigationBar *)self->super._navigationBar delegate];
    if (objc_opt_respondsToSelector())
    {
      [(_UINavigationBarLayout *)v11 updateLayout];
      v14 = [(UINavigationBar *)self->super._navigationBar delegate];
      [v14 _navigationBar:self->super._navigationBar preferredHeightForTransitionToHeightRange:-[_UINavigationBarLayout layoutHeights](v11)];
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
  v18 = [(_UINavigationBarTransitionContext *)self->_transitionContext compact];
  v19 = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
  v20 = v19;
  if (v18)
  {
    if (v19)
    {
      v21 = *(v19 + 184);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v22 forNavigationItem:v9 compact:1];
    [(UIBackgroundConfiguration *)v20 __setMaterial:v23];

    v24 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v25 = v24;
    if (v24)
    {
      v26 = *(v24 + 184);
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
    v28 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v27 forNavigationItem:v9 compact:1];
    [(UIBackgroundConfiguration *)v25 __setMaterial:v28];
  }

  else
  {
    if (v19)
    {
      v29 = *(v19 + 192);
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v31 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v30 forNavigationItem:v9 compact:0];
    [(_UINavigationBarLayout *)v20 setStandardBackgroundViewLayout:v31];

    v32 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
    v25 = v32;
    if (v32)
    {
      v33 = *(v32 + 192);
    }

    else
    {
      v33 = 0;
    }

    v27 = v33;
    v28 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v27 forNavigationItem:v9 compact:0];
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
  if ([v7 isAnimated])
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
    [v7 animateAlongsideTransition:v41 completion:v39];
  }

  else
  {
    v34[2](v34);
    v35[2](v35);
  }
}

- (void)_performAnimationWithTransitionCompletion:(id)a3 transition:(int64_t)a4
{
  v6 = a3;
  if (self->_transitionContext)
  {
    NSLog(&cfstr_AttemptingToBe_2.isa, self->super._navigationBar);
    goto LABEL_53;
  }

  [(_UINavigationBarVisualProviderModernIOS *)self _enforceLayoutOrdering];
  v58 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  v7 = [v58 transition];
  if (!v7)
  {
    v8 = v6;
    contentView = self->_contentView;
    v10 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    if ((-[_UINavigationBarContentView effectiveStyleForStyle:](contentView, "effectiveStyleForStyle:", [v10 style]) - 1) > 1)
    {
      v11 = self->_contentView;
      v12 = [(_UINavigationBarItemStack *)self->super._stack topItem];
      v13 = -[_UINavigationBarContentView effectiveStyleForStyle:](v11, "effectiveStyleForStyle:", [v12 style]) - 1;

      v14 = v13 > 1;
      v7 = a4;
      v6 = v8;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    else
    {

      v6 = v8;
    }

    v7 = 3;
  }

LABEL_8:
  v15 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v16 = [v15 titleView];
  if (_UINavigationBarAugmentedTitleWantsTwoPartCrossfade(v16))
  {
  }

  else
  {
    v17 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    v18 = [v17 titleView];
    v19 = _UINavigationBarAugmentedTitleWantsTwoPartCrossfade(v18);

    if (!v19)
    {
      goto LABEL_12;
    }
  }

  [(_UINavigationBarTransitionContext *)self->_transitionContext setTwoPart:1];
  v7 = 3;
LABEL_12:
  [(_UINavigationBarVisualProviderModernIOS *)self _updateAugmentedTitleDataSources];
  [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarSuppressionIfNeeded];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke;
  v76[3] = &unk_1E70F7758;
  v76[4] = self;
  v77 = v6;
  [(_UINavigationBarVisualProviderModernIOS *)self _setupTransitionContextForTransition:v7 completion:v76];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setPushOperation:a4 == 1];
  [(UINavigationBar *)self->super._navigationBar _prepareToAnimateTransition];
  transitionContext = self->_transitionContext;
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_2;
  v75[3] = &unk_1E70F3590;
  v75[4] = self;
  [(_UINavigationBarTransitionContext *)transitionContext recordUpdates:v75];
  v59 = v6;
  if (![(_UINavigationBarVisualProviderModernIOS *)self allowLargeTitleView])
  {
    v24 = 0;
LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  stack = self->super._stack;
  v22 = [(_UINavigationBarItemStack *)stack previousTopItem];
  LODWORD(stack) = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)stack effectiveDisplayModeForItemInPreviousStack:v22]];

  if (stack)
  {
    v23 = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
    if (v23)
    {
      v24 = v23[35] > 0.0;
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
  v26 = [(_UINavigationBarItemStack *)v25 topItem];
  LODWORD(v25) = [(_UINavigationBarVisualProviderModernIOS *)self _useLargeTitleForDisplayMode:[(_UINavigationBarItemStack *)v25 effectiveDisplayModeForItemInCurrentStack:v26]];

  if (!v25)
  {
    goto LABEL_23;
  }

  v27 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
  if (v27)
  {
    v28 = v27[35] > 0.0;
  }

  else
  {
    v28 = 0;
  }

LABEL_24:
  [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithLargeTitle:v24];
  [(_UINavigationBarTransitionContext *)self->_transitionContext setEndWithLargeTitle:v28];
  v29 = [(_UINavigationBarTransitionContext *)self->_transitionContext fromLayout];
  v30 = [(_UINavigationBarTransitionContext *)self->_transitionContext toLayout];
  backgroundAlpha = self->_backgroundAlpha;
  if (v29 && *(v29 + 208) != backgroundAlpha)
  {
    *(v29 + 208) = backgroundAlpha;
    [v29 _updateLayoutOutputs];
    backgroundAlpha = self->_backgroundAlpha;
  }

  if (v30 && *(v30 + 208) != backgroundAlpha)
  {
    *(v30 + 208) = backgroundAlpha;
    [v30 _updateLayoutOutputs];
  }

  v57 = v7;
  if ([(_UINavigationBarTransitionContext *)self->_transitionContext compact])
  {
    if (v29)
    {
      v32 = *(v29 + 184);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v34 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    v35 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v33 forNavigationItem:v34 compact:1];

    if (v30)
    {
      v36 = *(v30 + 184);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v39 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v37 forNavigationItem:v38 compact:1];

    [(UIBackgroundConfiguration *)v29 __setMaterial:v35];
    [(UIBackgroundConfiguration *)v30 __setMaterial:v39];
  }

  else
  {
    if (v29)
    {
      v40 = *(v29 + 192);
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v42 = [(_UINavigationBarItemStack *)self->super._stack previousTopItem];
    v35 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v41 forNavigationItem:v42 compact:0];

    if (v30)
    {
      v43 = *(v30 + 192);
    }

    else
    {
      v43 = 0;
    }

    v44 = v43;
    v45 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v39 = [(_UINavigationBarVisualProviderModernIOS *)self _updateBackgroundLayout:v44 forNavigationItem:v45 compact:0];

    [(_UINavigationBarLayout *)v29 setStandardBackgroundViewLayout:v35];
    [(_UINavigationBarLayout *)v30 setStandardBackgroundViewLayout:v39];
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
    v47 = [v35 backgroundData2];
    -[_UINavigationBarTransitionContext setBeginWithTransparencyAllowed:](self->_transitionContext, "setBeginWithTransparencyAllowed:", [v47 hasBackground] ^ 1);
  }

  else
  {
    [(_UINavigationBarTransitionContext *)self->_transitionContext setBeginWithTransparencyAllowed:0];
  }

  if (!self->_useModernAppearanceAPI)
  {
    goto LABEL_48;
  }

  v48 = [v39 backgroundData2];
  -[_UINavigationBarTransitionContext setEndWithTransparencyAllowed:](self->_transitionContext, "setEndWithTransparencyAllowed:", [v48 hasBackground] ^ 1);

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
  v49 = v30;
  v71 = v49;
  v50 = _Block_copy(aBlock);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __96___UINavigationBarVisualProviderModernIOS__performAnimationWithTransitionCompletion_transition___block_invoke_8;
  v67[3] = &unk_1E70F3C60;
  v51 = v58;
  v68 = v51;
  v69 = self;
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
    v56 = [v54 transitionCoordinator];
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
    [v56 _animateAlongsideTransitionInView:0 systemAnimation:0 systemCompletion:1 animation:v62 completion:v60];
  }

  else
  {
    (*(v55 + 2))(v55, v52);
  }

  v6 = v59;

LABEL_53:
}

- (void)pushAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _performAnimationWithTransitionCompletion:a4 transition:1];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _updateWithCompletion:a4];
  }
}

- (void)popAnimated:(BOOL)a3 completion:(id)a4
{
  if (a3)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _performAnimationWithTransitionCompletion:a4 transition:2];
  }

  else
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _updateWithCompletion:a4];
  }
}

- (void)prepareForPush
{
  v3 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:v3];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)prepareForPop
{
  v3 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:v3];

  [(_UINavigationBarVisualProviderModernIOS *)self _prepareLayouts];
}

- (void)removeContentForItem:(id)a3
{
  v5 = [a3 _stackEntry];
  v3 = [v5 normalLayout];
  [(_UINavigationBarLayout *)v3 removeAllViews];

  v4 = [v5 searchLayout];
  [(_UINavigationBarLayout *)v4 removeAllViews];
}

- (void)animateForSearchPresentation:(BOOL)a3
{
  v3 = a3;
  v6 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v7 = [v6 searchLayout];
  if (v7)
  {
    v8 = v7;
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

  v11 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v12 = [v11 searchLayout];

  if (v12)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:3049 description:{@"Hosted search should take a different code path%@", v10}];
  }

  if (!self->_runningPaletteBasedSearchPresentation)
  {
    self->_runningPaletteBasedSearchPresentation = 1;
    [(UIView *)self->_contentView alpha];
    v14 = v13;
    [(UIView *)self->_largeTitleView alpha];
    v16 = v15;
    if (v3)
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

- (void)_setupAccessibilityLimitsForView:(id)a3
{
  v4 = a3;
  if (self->_contentView == v4 || self->_promptView == v4)
  {
    v6 = v4;
    v5 = [(UIView *)self->super._navigationBar window];

    v4 = v6;
    if (v5)
    {
      _UIBarsSetAccessibilityLimits(v6);
      v4 = v6;
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v21 = a3;
  v4 = [(UIView *)self->super._navigationBar traitCollection];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 userInterfaceIdiom];
    v7 = v6 == -1;
    p_hasIdiom = &self->_hasIdiom;
    hasIdiom = self->_hasIdiom;
    if (!hasIdiom && v6 != -1)
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
    v10 = [v5 horizontalSizeClass];
    if (v10 != [v21 horizontalSizeClass] || (v11 = objc_msgSend(v5, "verticalSizeClass"), v11 != objc_msgSend(v21, "verticalSizeClass")))
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentPriorities];
    }
  }

LABEL_12:
  [(_UINavigationBarContentView *)self->_contentView updateAugmentedTitleViewNavigationBarTraitsTo:v5 from:v21];
  [(_UINavigationBarVisualProviderModernIOS *)self _setUpContentFocusContainerGuide];
  if (v21 && hasIdiom && *p_hasIdiom)
  {
    v12 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if ([v12 _changeMayAffectSearchBarPlacementFromTraits:v21 toOtherTraits:v5])
    {
      v13 = [v12 _hasIntegratedSearchBarInNavigationBar];
      v14 = [v12 _hasIntegratedSearchBarInToolbar];
      v15 = [v12 _hasIntegratedSearchBarInNavigationBarForTraits:v21];
      if (v14 != [v12 _hasIntegratedSearchBarInToolbarForTraits:v21] || v13 != v15)
      {
        v16 = [v12 _searchControllerIfAllowed];
        v17 = [v16 searchBar];
        [v17 _setHostedInlineByNavigationBar:v13];
        if ((v13 & 1) == 0)
        {
          [v17 _setHostedInlineByToolbar:v14];
        }

        v18 = [v16 delegate];
        if (objc_opt_respondsToSelector())
        {
          if ((v13 | v14))
          {
            v19 = 2;
          }

          else
          {
            v19 = 1;
          }

          [v18 searchController:v16 didChangeFromSearchBarPlacement:v19];
        }

        else if (objc_opt_respondsToSelector())
        {
          if ((v13 | v14))
          {
            v20 = 1;
          }

          else
          {
            v20 = 2;
          }

          [v18 _dci_searchController:v16 didChangeToSearchBarPlacement:v20];
        }
      }
    }
  }
}

- (void)traitCollectionDidChangeOnSubtree:(id)a3
{
  v21 = a3;
  v4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v5 = [v4 activeLayout];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v10 = [v9 activeLayout];
  v11 = v10;
  if (v10)
  {
    v12 = *(v10 + 240);
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v8 | v13)
  {
    v14 = [v21 preferredContentSizeCategory];
    v15 = [(UIView *)self->super._navigationBar traitCollection];
    v16 = [v15 preferredContentSizeCategory];

    v17 = v14;
    v18 = v16;
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

- (id)traitCollectionForChild:(id)a3 baseTraitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_appearanceAPIVersion > 1 || ((v9 = [v7 userInterfaceStyle], (-[UINavigationBar barStyle](self->super._navigationBar, "barStyle") - 3) >= 0xFFFFFFFFFFFFFFFELL) ? (v10 = v9 == 2) : (v10 = 1), v10))
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

- (id)hitTest:(CGPoint)a3 defaultViewHit:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
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
      v9 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
      v10 = [v9 activeLayout];

      if (v10)
      {
        if (*(v10 + 108) == 1)
        {
          v11 = *(v10 + 128);
          if (v11)
          {
            v12 = v11;
            v13 = *(v10 + 144);

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

  v8 = v7;
LABEL_15:

  return v8;
}

- (int64_t)statusBarStyle
{
  if (self->_useModernAppearanceAPI)
  {
    v3 = [(UIView *)self->_backgroundView traitCollection];
    v4 = [v3 userInterfaceStyle];

    if (v4 == 2)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (a3.width == 0.0)
  {
    v5 = [(UIView *)self->super._navigationBar superview];
    v6 = v5;
    if (v5)
    {
      [v5 bounds];
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

- (double)defaultBarHeightForTraitCollection:(id)a3
{
  if ([a3 userInterfaceIdiom] == 5)
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

- ($1AB5FA073B851C12C2339EC22442E995)layoutHeightsFittingWidth:(double)a3
{
  v5 = self->super._itemForMeasuring;
  if (v5)
  {
    v6 = v5;
    v7 = [(UINavigationItem *)v5 _stackEntry];
    if (v7)
    {
      goto LABEL_3;
    }

    goto LABEL_16;
  }

  if ([(_UINavigationBarItemStack *)self->super._stack itemCount])
  {
    v18 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
    v19 = [v18 cancelledTransition];
    stack = self->super._stack;
    if (v19)
    {
      [(_UINavigationBarItemStack *)stack previousTopEntry];
    }

    else
    {
      [(_UINavigationBarItemStack *)stack topEntry];
    }
    v7 = ;

    v6 = [v7 item];
    if (v7)
    {
LABEL_3:
      if (qword_1ED498190 != -1)
      {
        dispatch_once(&qword_1ED498190, &__block_literal_global_664);
      }

      if (byte_1ED49816B != 1 || ([v7 item], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "_navigationBar"), v9 = objc_claimAutoreleasedReturnValue(), navigationBar = self->super._navigationBar, v9, v8, v9 == navigationBar))
      {
        [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v7 forMeasuring:1];
      }

      v11 = [v7 activeLayout];
      v12 = [(_UINavigationBarLayout *)v11 layoutForMeasuringWidth:a3];

      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    v7 = [_UINavigationBarItemStackEntry newEntryForItem:v6];
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v7 forMeasuring:1];
    v12 = [v7 activeLayout];
    [(_UINavigationBarLayout *)v12 setLayoutSize:a3, 0.0];
    if (v12)
    {
LABEL_9:
      v13 = [(_UINavigationBarLayout *)v12 layoutHeights];
      v15 = v14;
      v17 = v16;
LABEL_18:

      goto LABEL_19;
    }

LABEL_17:
    v22 = [(UIView *)self->super._navigationBar traitCollection];
    [(_UINavigationBarVisualProviderModernIOS *)self defaultBarHeightForTraitCollection:v22];
    v13 = v23;

    v15 = v13;
    v17 = v13;
    goto LABEL_18;
  }

  v6 = [(UIView *)self->super._navigationBar traitCollection];
  [(_UINavigationBarVisualProviderModernIOS *)self defaultBarHeightForTraitCollection:v6];
  v13 = v21;
  v15 = v21;
  v17 = v21;
LABEL_19:

  v24 = v13;
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

  v5 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v6 = [v5 activeLayout];
  v7 = [(_UINavigationBarLayout *)v6 restingHeights];

  return v7;
}

- (void)_didEncounterFirstTitleWithExcessiveHeightChanged:(id)a3
{
  if (!self->_providesExtraSpaceForExcessiveLineHeights)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = 1;
    v5 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v6 = [(_UINavigationBarItemStack *)self->super._stack backItem];
    [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v5 backItem:v6 animated:1];

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
  }
}

- (void)_computeProvidesExtraSpaceForExcessiveLineHeightsForTopItem:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (sHasEncounteredNavigationTitleWithExcessiveHeight)
  {
    self->_providesExtraSpaceForExcessiveLineHeights = sHasEncounteredNavigationTitleWithExcessiveHeight;
    [(_UINavigationBarVisualProviderModernIOS *)self _beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary];
  }

  else
  {
    v5 = [v4 title];
    sHasEncounteredNavigationTitleWithExcessiveHeight = _UINavigationBarHasExcessiveLineHeightCharactersInTitle(v5);

    LODWORD(v5) = sHasEncounteredNavigationTitleWithExcessiveHeight;
    self->_providesExtraSpaceForExcessiveLineHeights = sHasEncounteredNavigationTitleWithExcessiveHeight;
    [(_UINavigationBarVisualProviderModernIOS *)self _beginOrEndObservingDidEncounterFirstTitleWithExcessiveHeightChangedIfNecessary];
    if (v5 == 1)
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
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = v4;
    if (self->_providesExtraSpaceForExcessiveLineHeights)
    {
      [v4 removeObserver:self name:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
    }

    else
    {
      [v4 addObserver:self selector:sel__didEncounterFirstTitleWithExcessiveHeightChanged_ name:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
    }

    self->_isObservingDidEncounterFirstTitleWithExcessiveHeightChanged = v2;
  }
}

- (void)_postDidEncounterFirstTitleWithExcessiveHeightChanged
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"_UINavigationBarLargeTitleDidEncounterFirstTitleWithExcessiveHeightChanged" object:0];
}

- (void)setRefreshControlHost:(id)a3
{
  v5 = a3;
  refreshControlHost = self->_refreshControlHost;
  if (refreshControlHost != v5)
  {
    v11 = v5;
    [(_UINavigationControllerRefreshControlHost *)refreshControlHost setDelegate:0];
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost stopAnimations];
    v7 = [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost hostContainerView];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_refreshControlHost, a3);
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost setDelegate:self];
    v8 = objc_opt_new();
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost setHostContainerView:v8];

    v9 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
    v10 = [v9 normalLayout];
    [(_UINavigationBarLayout *)v10 setRefreshControlHost:v11];

    v5 = v11;
  }
}

- (void)navigationControllerRefreshControlHostDidUpdateLayout:(id)a3
{
  v4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v5 = [v4 activeLayout];
  [(_UINavigationBarLayout *)v5 updateLayout];

  [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
}

- (void)setTabBarHostedView:(id)a3
{
  v5 = a3;
  tabBarHostedView = self->_tabBarHostedView;
  v10 = v5;
  if (tabBarHostedView != v5 || ([(_UITabContainerView *)tabBarHostedView floatingTabBarHost], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 != self))
  {
    if (self->_isSuppressingTabBar)
    {
      v8 = [(_UITabContainerView *)self->_tabBarHostedView floatingTabBarHost];

      if (v8 == self)
      {
        [(_UITabContainerView *)self->_tabBarHostedView setSuppressTabBar:0];
      }

      self->_isSuppressingTabBar = 0;
    }

    v9 = [(_UITabContainerView *)v10 floatingTabBarHost];

    if (v9 == self)
    {
      [(_UITabContainerView *)v10 setFloatingTabBarHost:0];
    }

    objc_storeStrong(&self->_tabBarHostedView, a3);
    [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarHost];
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)setActiveTabBarHost:(BOOL)a3
{
  if (self->_isActiveTabBarHost != a3)
  {
    self->_isActiveTabBarHost = a3;
    [(_UINavigationBarVisualProviderModernIOS *)self _updateTabBarHost];
  }
}

- (void)setWantsHostedTabBarMetrics:(BOOL)a3
{
  if (self->_wantsHostedTabBarMetrics != a3)
  {
    self->_wantsHostedTabBarMetrics = a3;
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
    v5 = self;
LABEL_3:

    [(_UITabContainerView *)tabBarHostedView setFloatingTabBarHost:v5];
    return;
  }

  v6 = [(_UITabContainerView *)tabBarHostedView floatingTabBarHost];
  if (v6 == self)
  {
    v7 = self->_isActiveTabBarHost;

    if (v7)
    {
      return;
    }

    tabBarHostedView = self->_tabBarHostedView;
    v5 = 0;
    goto LABEL_3;
  }
}

- (void)setStaticNavBarButtonItem:(id)a3
{
  v7 = a3;
  v4 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 _splitViewControllerEnforcingClass:0];
    v6 = [v5 primaryEdge] == 1;
  }

  else
  {
    v6 = 0;
  }

  [(_UINavigationBarVisualProviderModernIOS *)self setStaticNavBarButtonItem:v7 trailingPosition:v6];
}

- (void)setStaticNavBarButtonItem:(id)a3 trailingPosition:(BOOL)a4
{
  v4 = a4;
  objc_storeStrong(&self->_staticNavBarButtonItem, a3);
  v7 = a3;
  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonTrailing:v4];
  [(_UINavigationBarContentView *)self->_contentView setStaticNavBarButtonItem:self->_staticNavBarButtonItem];
  [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];
}

- (BOOL)isContentViewHidden
{
  v2 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v3 = [v2 activeLayout];
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 128);
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
    v3 = [(_UINavigationBarVisualProviderModernIOS *)self _staticNavBarButtonFakeBackMenu];
    [(UIBarButtonItem *)self->_staticNavBarButtonItem setMenu:v3];
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
  v3 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v4 = [v3 normalLayout];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 136);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  v9 = [v8 normalLayout];
  [(_UISplitViewControllerAdaptiveColumn *)v9 setTogglePrimaryEdgeButtonView:?];

  v10 = [(UIView *)self->_contentView superview];
  v11 = v10;
  if (v10 && v10 != self->super._navigationBar)
  {
    if (v7 && v10 != v7)
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

- (void)_installContentClippingView:(id)a3
{
  v8 = a3;
  v4 = [(_UINavigationBarItemStack *)self->super._stack topEntry];
  if (v4)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v4];
    v5 = [v4 normalLayout];
    [(_UISplitViewControllerAdaptiveColumn *)v5 setTogglePrimaryEdgeButtonView:v8];

    v6 = [v4 activeLayout];
    v7 = [v4 normalLayout];

    if (v6 == v7)
    {
      [(UIView *)self->super._navigationBar addSubview:v8];
      [v8 addSubview:self->_contentView];
    }
  }
}

- (void)navigationBarContentViewDidChangeTintColor:(id)a3
{
  v4 = [a3 tintColor];
  [(UIView *)self->_customizationContainerView setTintColor:v4];
}

- (BOOL)navigationItemIsTopItem:(id)a3
{
  stack = self->super._stack;
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)stack topItem];

  return v5 == v4;
}

- (BOOL)navigationItemIsBackItem:(id)a3
{
  stack = self->super._stack;
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)stack backItem];

  return v5 == v4;
}

- (void)navigationItemUpdatedTitleContent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v6 == v9)
    {
      v7 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v6 backItem:v7 animated:v4];

      v8 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v8 _navigationBar:self->super._navigationBar itemBackButtonUpdated:v6];
      }
    }
  }
}

- (void)navigationItemUpdatedLeftBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v6 == v8)
    {
      v7 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v6 backItem:v7 animated:v4];
    }
  }
}

- (void)navigationItemUpdatedCenterBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v7 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v7 == v6)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __94___UINavigationBarVisualProviderModernIOS_navigationItemUpdatedCenterBarButtonItems_animated___block_invoke;
      v9[3] = &unk_1E70F3590;
      v9[4] = self;
      [UIView performWithoutAnimation:v9];
      v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v7 backItem:v8 animated:v4];
    }
  }
}

- (void)navigationItemUpdatedRightBarButtonItems:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v6 == v8)
    {
      v7 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v6 backItem:v7 animated:v4];
    }
  }
}

- (void)navigationItemUpdatedAdditionalOverflowItems:(id)a3
{
  v9 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v4 == v9)
    {
      v5 = [v9 additionalOverflowItems];
      v6 = [(_UINavigationBarContentView *)self->_contentView layout];
      v7 = [v6 canUpdateAdditionalOverflowItemsInPlace];

      if (v7)
      {
        v8 = [(_UINavigationBarContentView *)self->_contentView layout];
        [v8 setAdditionalOverflowItems:v5];
        [(_UINavigationBarContentView *)self->_contentView setAdditionalItems:v5];
      }

      else
      {
        v8 = [(_UINavigationBarItemStack *)self->super._stack backItem];
        [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v4 backItem:v8 animated:0];
      }
    }
  }
}

- (id)presentationSourceForContent:(int64_t)a3 navigationItem:(id)a4
{
  v6 = a4;
  if (![(_UINavigationBarItemStack *)self->super._stack state]&& ([(_UINavigationBarItemStack *)self->super._stack topItem], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v6))
  {
    if (a3)
    {
      v10 = 0;
    }

    else
    {
      v11 = [(_UINavigationBarContentView *)self->_contentView layout];
      v12 = [v11 overflowItem];

      v13 = [v12 buttonGroup];
      v14 = [v13 isHidden];

      if (v14)
      {
        v10 = 0;
      }

      else
      {
        v10 = v12;
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

- (void)navigationItemUpdatedContentLayout:(id)a3 animated:(BOOL)a4
{
  v8 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v5 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v5 == v8)
    {
      v6 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v6 _navigationBar:self->super._navigationBar topItemUpdatedContentLayout:v5];
      }

      v7 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v5 backItem:v7 animated:0];
    }
  }
}

- (void)navigationItemUpdatedBackButtonContent:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v6 = [(_UINavigationBarItemStack *)self->super._stack backItem];
    v7 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v6 == v8)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v7 backItem:v6 animated:v4];
    }

    else
    {

      if (v7 != v8)
      {
LABEL_8:

        goto LABEL_9;
      }

      v7 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
      if (objc_opt_respondsToSelector())
      {
        [v7 _navigationBar:self->super._navigationBar itemBackButtonUpdated:v6];
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)navigationItemUpdatedLargeTitleDisplayMode:(id)a3
{
  v6 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (v4 == v6)
    {
      if (_UIBarsApplyChromelessEverywhere())
      {
        [(_UINavigationBarVisualProviderModernIOS *)self changeLayout];
        v5 = [(UINavigationBar *)self->super._navigationBar _effectiveDelegate];
        if (objc_opt_respondsToSelector())
        {
          [v5 _navigationBar:self->super._navigationBar topItemUpdatedLargeTitleDisplayMode:v6];
        }
      }
    }
  }
}

- (void)navigationItemUpdatedLargeTitleContent:(id)a3
{
  v11 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v4 == v11)
    {
      v5 = [(_UINavigationBarItemStack *)self->super._stack backItem];
      [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v4 backItem:v5 animated:0];

      if ([v4 _largeTitleTwoLineMode] == 2)
      {
        v6 = [v4 _stackEntry];
        v7 = [v6 activeLayout];
        v8 = v7;
        v9 = v7 ? *(v7 + 144) : 0;
        v10 = v9;

        if (v10)
        {
          [(_UINavigationBarVisualProviderModernIOS *)self changeLayout];
        }
      }
    }
  }
}

- (void)navigationItemUpdatedPromptContent:(id)a3
{
  v12 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (v4 == v12)
    {
      v5 = [(_UINavigationBarModernPromptView *)self->_promptView prompt];
      v6 = [v12 prompt];
      v7 = v5;
      v8 = v6;
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

- (void)navigationItem:(id)a3 appearance:(id)a4 categoriesChanged:(int64_t)a5
{
  v7 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v6 == v7)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _upgradeAppearanceAPIForItemIfNecessary:v7];
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
    }
  }
}

- (void)navigationItemUpdatedBackgroundAppearance:(id)a3
{
  v5 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v4 == v5)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
    }
  }
}

- (void)navigationItemUpdatedNavigationBarVisibility:(id)a3
{
  v5 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v4 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v4 == v5)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self updateBarVisibilityForTopItem];
    }
  }
}

- (void)navigationItemSearchControllerReadyForDeferredAutomaticShowsScopeBar:(id)a3
{
  stack = self->super._stack;
  v5 = a3;
  v6 = [(_UINavigationBarItemStack *)stack topItem];

  if (v6 == v5)
  {
    v7 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v8 = [v7 delegate];

    if (objc_opt_respondsToSelector())
    {
      [v8 _navigationBarWillRunAutomaticDeferredShowsScopeBar:self->super._navigationBar];
    }
  }
}

- (BOOL)shouldSearchControllerDeferPresentationTransitionForNavigationItem:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarItemStack *)self->super._stack topItem];

  if (v5 == v4)
  {
    v7 = [(_UINavigationBarVisualProvider *)self navigationBar];
    v8 = [v7 delegate];

    if (objc_opt_respondsToSelector())
    {
      v6 = [v8 _navigationItemShouldDeferSearchPresentationOrDismissalForScrollViewAnimation:v4];
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

- (void)navigationItemUpdatedSearchController:(id)a3 oldSearchController:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 _stackEntry];
  v9 = [v6 _searchControllerIfAllowed];
  if (v9 == v7)
  {
    goto LABEL_22;
  }

  if (([v8 isSearchActive] & 1) != 0 || objc_msgSend(v7, "isActive"))
  {
    if (![v8 isSearchActive] || (objc_msgSend(v7, "isActive") & 1) == 0)
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
    v11 = [v7 searchBar];
    v12 = [v11 _isIntegratedIntoToolbarOrNavigationBarContent];
    if (has_internal_diagnostics)
    {
      if (!v12)
      {
        v31 = [v7 searchBar];
        v32 = [v31 window];

        if (!v32)
        {
          goto LABEL_13;
        }

        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          v16 = [v8 item];
          *buf = 138412546;
          v41 = v16;
          v42 = 2112;
          v43 = v7;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "A navigation item is losing its active search controller with visible search bar. This will abruptly remove the search bar from the view hierarchy. Navigation item: %@ Search controller: %@", buf, 0x16u);
LABEL_11:
        }
      }
    }

    else if (!v12)
    {
      v13 = [v7 searchBar];
      v14 = [v13 window];

      if (!v14)
      {
        goto LABEL_13;
      }

      v15 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED498178) + 8);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v11 = v15;
      v16 = [v8 item];
      *buf = 138412546;
      v41 = v16;
      v42 = 2112;
      v43 = v7;
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "A navigation item is losing its active search controller with visible search bar. This will abruptly remove the search bar from the view hierarchy. Navigation item: %@ Search controller: %@", buf, 0x16u);
      goto LABEL_11;
    }

LABEL_13:
    v34 = MEMORY[0x1E69E9820];
    v35 = 3221225472;
    v36 = __101___UINavigationBarVisualProviderModernIOS_navigationItemUpdatedSearchController_oldSearchController___block_invoke;
    v37 = &unk_1E70F35B8;
    v38 = v7;
    v39 = v8;
    [UIView performWithoutAnimation:&v34];
  }

  v17 = [v7 searchBar];
  if (([v17 isDescendantOfView:self->super._navigationBar] & 1) != 0 || (objc_msgSend(v17, "_existingSearchIconBarButtonItem"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "view"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "isDescendantOfView:", self->super._navigationBar), v19, v18, v20))
  {
    [v17 _resetIfNecessaryForNavigationBarHosting:0];
    [v17 setMinimumContentSizeCategory:0];
    [v17 setMaximumContentSizeCategory:0];
    [v17 removeFromSuperview];
    v21 = [v17 _existingSearchIconBarButtonItem];
    v22 = [v21 view];
    [v22 removeFromSuperview];
  }

  v23 = [v9 searchBar];
  [v23 _resetIfNecessaryForNavigationBarHosting:1];
  v24 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v25 = v24;
  if (v24 == v6)
  {
    v26 = [v6 _hasIntegratedSearchBarInNavigationBar];

    if (v26)
    {
      [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
    }
  }

  else
  {
  }

LABEL_22:
  if (v9)
  {
    [(_UINavigationBarVisualProviderModernIOS *)self _ensureLayoutsConfiguredForEntry:v8];
    [v8 setSearchActive:{objc_msgSend(v9, "isActive")}];
  }

  else
  {
    v27 = [v8 normalLayout];
    [(_UINavigationBarLayout *)v27 setSearchBar:?];

    [v8 setSearchLayout:0];
  }

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  v28 = [(_UINavigationBarVisualProvider *)self navigationBar];
  v29 = [v28 delegate];

  if (objc_opt_respondsToSelector())
  {
    [v29 _navigationItemDidUpdateSearchController:v6 oldSearchController:v7];
  }

  [(UINavigationBar *)self->super._navigationBar _accessibility_navigationBarContentsDidChange];
}

- (void)navigationItemUpdatedBottomPalette:(id)a3 oldPalette:(id)a4
{
  v5 = a4;
  v8 = v5;
  if (!self->_transitionContext)
  {
    v6 = [v5 superview];
    navigationBar = self->super._navigationBar;

    if (v6 == navigationBar)
    {
      [v8 removeFromSuperview];
    }

    [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
  }

  [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
}

- (void)navigationItem:(id)a3 updatedPalettePart:(int64_t)a4 oldPalette:(id)a5
{
  v21 = a3;
  v9 = a5;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UINavigationBarVisualProviderModernIOS.m" lineNumber:4433 description:{@"Unexpected palette part (%li)", a4}];

    goto LABEL_5;
  }

  if (a4 != 6)
  {
LABEL_5:
    v10 = [v21 _bottomPalette];
    goto LABEL_6;
  }

  v10 = [v21 _topPalette];
LABEL_6:
  v12 = v10;
  if (v10 != v9)
  {
    v13 = [v9 superview];
    navigationBar = self->super._navigationBar;

    if (v13 == navigationBar)
    {
      [v9 removeFromSuperview];
    }

    if (![(_UINavigationBarItemStack *)self->super._stack state])
    {
      goto LABEL_12;
    }

    v15 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    if (v15 == v21)
    {
LABEL_16:

      goto LABEL_17;
    }

    v16 = [(_UINavigationBarItemStack *)self->super._stack backItem];

    if (v16 != v21)
    {
LABEL_12:
      v15 = [v21 _stackEntry];
      v17 = [v15 normalLayout];
      v18 = v17;
      if (a4 == 6)
      {
        [(_UINavigationBarLayout *)v17 setTopPalette:v12];

        v19 = [v15 searchLayout];
        [(_UINavigationBarLayout *)v19 setTopPalette:v12];
      }

      else
      {
        [(_UINavigationBarLayout *)v17 setBottomPalette:v12];

        v19 = [v15 searchLayout];
        [(_UINavigationBarLayout *)v19 setBottomPalette:v12];
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  if (![(_UINavigationBarItemStack *)self->super._stack state])
  {
    v20 = [(_UINavigationBarItemStack *)self->super._stack topItem];

    if (v20 == v21)
    {
      [(_UINavigationBarVisualProviderModernIOS *)self _invalidateIntrinsicContentSizeAndNotifySizeChanged];
    }
  }
}

- (void)navigationItemUpdatedScrollEdgeProgress:(id)a3
{
  v17 = a3;
  if (![(_UINavigationBarItemStack *)self->super._stack state]&& ![(UIView *)self->super._navigationBar _canDrawContent])
  {
    v4 = [v17 _stackEntry];
    if ([(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
    {
      [v4 activeLayout];
    }

    else
    {
      [v4 normalLayout];
    }
    v5 = ;
    v6 = [(_UINavigationBarVisualProviderModernIOS *)self useManualScrollEdgeAppearanceForItem:v17];
    v7 = v6;
    if (v5)
    {
      v8 = *(v5 + 111);
      if (v8 != v6)
      {
        *(v5 + 111) = v6;
        [v5 _updateLayoutOutputs];
      }

      [v17 _manualScrollEdgeAppearanceProgress];
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
      [v17 _manualScrollEdgeAppearanceProgress];
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
      v13 = [(_UINavigationBarItemStack *)self->super._stack topEntry];

      if (v13 == v4)
      {
        [(_UINavigationBarVisualProviderModernIOS *)self _updateBackground];
        v14 = [v17 _isManualScrollEdgeAppearanceEnabled];
        if ([(_UINavigationBarVisualProviderModernIOS *)self alwaysEvaluateChromelessTransitionProgress])
        {
          if ((v14 & 1) == 0)
          {
            v15 = [(_UINavigationBarItemStack *)self->super._stack backItem];
            [(_UINavigationBarVisualProviderModernIOS *)self _updateContentForTopItem:v17 backItem:v15 animated:0];
          }
        }
      }
    }
  }
}

- (void)appearance:(id)a3 categoriesChanged:(int64_t)a4
{
  [(_UINavigationBarVisualProviderModernIOS *)self setAppearanceAPIVersion:2, a4];
  navigationBar = self->super._navigationBar;

  [(UINavigationBar *)navigationBar setNeedsLayout];
}

- (id)_timingFunctionForAnimationInView:(id)a3 withKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UINavigationBarItemStack *)self->super._stack transitionAssistant];
  v9 = [v8 interactive];

  if (!v9)
  {
    v14 = 0;
    goto LABEL_13;
  }

  if ([v7 isEqualToString:@"opacity"])
  {
    v10 = [(_UINavigationBarTransitionContext *)self->_transitionContext viewUsingEaseInCurve];

    if (v10 != v6)
    {
      [v6 alpha];
      if (v11 < 0.05 || ([(_UINavigationBarTransitionContext *)self->_transitionContext viewFadingInFromCustomAlpha], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 == v6))
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

- (void)tabBarContainerWillChangeFloatingTabBarVisibility:(id)a3
{
  if (!self->_transitionContext)
  {
    [(UINavigationBar *)self->super._navigationBar setNeedsLayout];
  }
}

- (void)tabBarContainerDidLayoutFloatingTabBar:(id)a3
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

  v2 = [(_UIBarBackground *)self->_backgroundView customBackgroundView];
  v3 = v2 != 0;

  return v3;
}

- (void)_shim_setCustomBackgroundView:(id)a3
{
  v4 = a3;
  if (self->_usesBarBackground)
  {
    v6 = v4;
    v5 = [(_UIBarBackground *)self->_backgroundView customBackgroundView];

    v4 = v6;
    if (v5 != v6)
    {
      [(_UIBarBackground *)self->_backgroundView setCustomBackgroundView:v6];
      v4 = v6;
    }
  }
}

- (id)_shim_compatibilityBackgroundView
{
  if (self->_usesBarBackground)
  {
    v3 = [(_UIBarBackground *)self->_backgroundView customBackgroundView];
    backgroundView = v3;
    if (!v3)
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

  v2 = [(_UIBarBackground *)self->_backgroundView layout];
  v3 = [v2 disableTinting];

  return v3;
}

- (void)_shim_setDisableBlurTinting:(BOOL)a3
{
  if (self->_usesBarBackground)
  {
    v4 = a3;
    v5 = [(_UIBarBackground *)self->_backgroundView layout];
    [v5 setDisableTinting:v4];
  }

  [(_UINavigationBarVisualProviderModernIOS *)self changeAppearance];
}

- (BOOL)_accessibility_shouldBeginHUDGestureAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v7 = [v6 _searchControllerIfAllowed];
  v8 = [v7 searchBar];

  v9 = 1;
  if (v8)
  {
    [(UIView *)self->super._navigationBar convertPoint:v8 toView:x, y];
    if ([v8 pointInside:0 withEvent:?])
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)_accessibility_HUDItemForPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self->super._navigationBar convertPoint:self->_contentView toView:?];
  v7 = v6;
  v9 = v8;
  v10 = [(_UINavigationBarItemStack *)self->super._stack topItem];
  v11 = [v10 _weeTitle];
  if ([v11 length] && !-[UIView isHidden](self->_weeTitleLabel, "isHidden"))
  {
    weeTitleLabel = self->_weeTitleLabel;
    [(UIView *)self->super._navigationBar convertPoint:weeTitleLabel toView:x, y];
    LODWORD(weeTitleLabel) = [(UIView *)weeTitleLabel pointInside:0 withEvent:?];

    if (weeTitleLabel)
    {
      v30 = [UIAccessibilityHUDItem alloc];
      v14 = [(_UINavigationBarItemStack *)self->super._stack topItem];
      v31 = [v14 _weeTitle];
LABEL_16:
      v32 = v31;
      v15 = [(UIAccessibilityHUDItem *)v30 initWithTitle:v31 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];

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
      v14 = [(_UINavigationBarModernPromptView *)self->_promptView prompt];
      v15 = [(UIAccessibilityHUDItem *)v13 initWithTitle:v14 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];
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
    v17 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];

    if (v17)
    {
      v18 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      navigationBar = self->super._navigationBar;
      v20 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      [(UIView *)navigationBar convertPoint:v20 toView:x, y];
      v21 = [v18 _largeContentViewerItemAtPoint:?];

      if (v21)
      {
        v22 = [UIAccessibilityHUDItem alloc];
        v23 = [v21 largeContentTitle];
        v24 = [v21 largeContentImage];
        [v21 largeContentImageInsets];
        v15 = -[UIAccessibilityHUDItem initWithTitle:image:imageInsets:scaleImage:](v22, "initWithTitle:image:imageInsets:scaleImage:", v23, v24, [v21 scalesLargeContentImage], v25, v26, v27, v28);

        goto LABEL_18;
      }
    }

    v30 = [UIAccessibilityHUDItem alloc];
    v14 = [(_UINavigationBarItemStack *)self->super._stack topItem];
    v31 = [v14 title];
    goto LABEL_16;
  }

LABEL_18:

  return v15;
}

- (id)_accessibility_controlToActivateForHUDGestureLiftAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  contentView = self->_contentView;
  [(UIView *)self->super._navigationBar convertPoint:contentView toView:?];
  v7 = [(_UINavigationBarContentView *)contentView _accessibility_controlToActivateForHUDGestureLiftAtPoint:?];
  if (!v7)
  {
    v7 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];

    if (v7)
    {
      v8 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      navigationBar = self->super._navigationBar;
      v10 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView accessoryView];
      [(UIView *)navigationBar convertPoint:v10 toView:x, y];
      v11 = [v8 _largeContentViewerItemAtPoint:?];

      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v11;
          if ([v7 isEnabled])
          {
LABEL_8:

            goto LABEL_9;
          }
        }
      }

      v7 = 0;
      goto LABEL_8;
    }
  }

LABEL_9:

  return v7;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"backdropGroupName"])
  {
    UIKVCAccessProhibited(v4, @"UINavigationBar");

    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _UINavigationBarVisualProviderModernIOS;
    v5 = [(_UINavigationBarVisualProviderModernIOS *)&v7 valueForUndefinedKey:v4];
  }

  return v5;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"backdropGroupName"])
  {
    UIKVCAccessProhibited(v7, @"UINavigationBar");
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UINavigationBarVisualProviderModernIOS;
    [(_UINavigationBarVisualProviderModernIOS *)&v8 setValue:v6 forUndefinedKey:v7];
  }
}

- (id)_immediatelyFinishRunningTransition
{
  v12.receiver = self;
  v12.super_class = _UINavigationBarVisualProviderModernIOS;
  v3 = [(_UINavigationBarVisualProvider *)&v12 _immediatelyFinishRunningTransition];
  v4 = v3;
  if (self->_transitionContext)
  {
    [UIView removePropertyAnimatorAnimationsInView:self->super._navigationBar];
    v5 = [(_UINavigationBarTransitionContext *)self->_transitionContext prepareForInterruption];
    [(UIView *)self->super._navigationBar _removeAllAnimations:1];
    [(UIView *)self->super._navigationBar _removeAllRetargetableAnimations:1];
    [(_UINavigationBarVisualProviderModernIOS *)self _endTransitionCompleted:1];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78___UINavigationBarVisualProviderModernIOS__immediatelyFinishRunningTransition__block_invoke;
    v9[3] = &unk_1E70F77D0;
    v10 = v4;
    v11 = v5;
    v6 = v5;
    v7 = _Block_copy(v9);
  }

  else
  {
    v7 = _Block_copy(v3);
  }

  return v7;
}

@end