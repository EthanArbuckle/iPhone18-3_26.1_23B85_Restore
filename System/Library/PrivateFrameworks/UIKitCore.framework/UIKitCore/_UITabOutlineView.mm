@interface _UITabOutlineView
- (BOOL)_canDragTab:(id)tab;
- (BOOL)_canMoveTab:(id)tab toDestinationIndexPath:(id)path;
- (BOOL)_hasCustomizablePlacementForTab:(id)tab;
- (BOOL)_isActionIndexPath:(id)path;
- (BOOL)_isHeaderIndexPath:(id)path;
- (BOOL)_isLensActiveOrAnimating;
- (BOOL)_isShowingLensView;
- (BOOL)_showSidebarBarButtonItem;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application;
- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context;
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CACornerRadii)contentCornerRadii;
- (CGPoint)sidebarButtonOrigin;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_UIShadowProperties)shadowProperties;
- (id)_actionForIndexPath:(id)path;
- (id)_bottomToolbar;
- (id)_collectionView:(id)view dragSessionPropertiesForSession:(id)session;
- (id)_currentPlatformMetrics;
- (id)_currentSidebarImage;
- (id)_dataSourceUpdateGroupCompletionCreateIfNeeded:(BOOL)needed;
- (id)_existingSectionSnapshotForTabIdentifier:(id)identifier;
- (id)_footerContentConfiguration;
- (id)_headerContentConfiguration;
- (id)_highlightGroupCompletion;
- (id)_indexPathForGestureRecognizer:(id)recognizer;
- (id)_leadingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)_sidebarContentForIndexPath:(id)path;
- (id)_tabBarController;
- (id)_tabForIndexPath:(id)path;
- (id)_tabsByIdentifier;
- (id)_trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path;
- (id)activeTransaction;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point;
- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path;
- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath;
- (id)delegate;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view;
- (id)initWithSidebar:(id *)sidebar;
- (id)preferredFocusEnvironments;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab;
- (int64_t)_hitRegionForDropSession:(id)session destinationIndexPath:(id)path;
- (int64_t)_indentationLevelForItemIdentifier:(id)identifier indexPath:(id)path;
- (uint64_t)makeFirstResponderForTab:(void *)tab;
- (uint64_t)setAdditionalEditingInsets:(float64_t)insets;
- (uint64_t)setEditing:(uint64_t)editing animated:;
- (uint64_t)style;
- (void)_activateNewSidebarTransaction;
- (void)_adjustScrollViewForKeyboardInfo:(id)info;
- (void)_animateSelection:(id)selection completion:(id)completion;
- (void)_commitCurrentSidebarTransaction;
- (void)_configureShadowView;
- (void)_createViewHierarchy;
- (void)_handleSelectionGesture:(id)gesture;
- (void)_keyboardDidChangeFrame:(id)frame;
- (void)_keyboardWillHide:(id)hide;
- (void)_keyboardWillShow:(id)show;
- (void)_performWithWillDisplayTab:(id)tab block:(id)block;
- (void)_performWithoutAffectingContent:(id)content;
- (void)_performWithoutAffectingSelection:(id)selection;
- (void)_reconfigureItemsInDataSourceForTabs:(id)tabs animated:(BOOL)animated;
- (void)_reloadDataSourceSnapshotAnimated:(BOOL)animated;
- (void)_resetCustomization;
- (void)_selectItemAtIndexPath:(id)path animated:(BOOL)animated performAction:(BOOL)action;
- (void)_setHighlightedIndexPath:(id)path animated:(BOOL)animated;
- (void)_setLensActive:(BOOL)active;
- (void)_setShowLensView:(BOOL)view;
- (void)_tabModel:(id)model customizationStoreDidChange:(id)change;
- (void)_tabModel:(id)model didChangeSelectedLeaf:(id)leaf previousElement:(id)element;
- (void)_tabModel:(id)model didReplaceOldItem:(id)item newItem:(id)newItem;
- (void)_tabModel:(id)model tabContentDidChange:(id)change;
- (void)_tabModel:(id)model visibilityDidChangeForTab:(id)tab;
- (void)_tabModelDidReload:(id)reload;
- (void)_updateBackgroundEffects;
- (void)_updateConfigurationForCell:(id)cell inState:(id)state content:(id)content indexPath:(id)path;
- (void)_updateContinuousSelectionGesture;
- (void)_updateEditBarButtonItem;
- (void)_updateEditingInsets;
- (void)_updateLensViewFrameAnimated:(BOOL)animated;
- (void)_updateScrollEdgeAppearance;
- (void)_updateSelectedItemAnimated:(BOOL)animated;
- (void)_updateSidebarStyle;
- (void)_updateSnapshot:(id)snapshot usingNode:(id)node;
- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)collectionView:(id)view dragSessionDidEnd:(id)end;
- (void)collectionView:(id)view dragSessionWillBegin:(id)begin;
- (void)collectionView:(id)view dropSessionDidEnd:(id)end;
- (void)collectionView:(id)view dropSessionDidEnter:(id)enter;
- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)footerContentConfigurationDidChange:(id *)change;
- (void)hasActiveDrag;
- (void)headerContentConfigurationDidChange:(id *)change;
- (void)layoutSubviews;
- (void)prepareForTransitionToVisibility:(BOOL)visibility;
- (void)reconfigureItemForTab:(void *)tab;
- (void)safeAreaInsetsDidChange;
- (void)scrollToTarget:(uint64_t)target animated:;
- (void)setDisplayedGroup:(uint64_t)group;
- (void)setOverrideBackgroundEffect:(id *)effect;
- (void)setPreferredStyle:(void *)result;
- (void)setSidebarButtonAction:(id *)action;
- (void)setTitle:(id *)title;
- (void)setTransitionsToTabBar:(uint64_t)bar;
- (void)tabModelEditingStateDidChange;
- (void)updateBottomBarView;
- (void)updateCornerConfiguration;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation _UITabOutlineView

- (void)updateBottomBarView
{
  if (self)
  {
    _bottomToolbar = [self _bottomToolbar];
    [_bottomToolbar _setItemsDidChangeBlock:0];

    v3 = *(self + 664);
    if (v3)
    {
      [v3 removeInteraction:*(self + 728)];
      [*(self + 664) removeFromSuperview];
      v4 = *(self + 664);
      *(self + 664) = 0;

      [self setNeedsLayout];
    }

    v5 = *(self + 488);
    supplementaryFrames = [(_UICollectionLayoutAuxillaryItemSolver *)v5 supplementaryFrames];

    if (supplementaryFrames)
    {
      objc_initWeak(&location, self);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __40___UITabOutlineView_updateBottomBarView__block_invoke;
      v23 = &unk_1E70F5A28;
      objc_copyWeak(&v24, &location);
      v7 = _Block_copy(&v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = supplementaryFrames;
        _defaultBarBackdropGroupName = [self _defaultBarBackdropGroupName];
        [v8 _setBackdropViewLayerGroupName:_defaultBarBackdropGroupName];

        [v8 _setItemsDidChangeBlock:v7];
        *(self + 412) = 1;
      }

      else
      {
        *(self + 412) = 0;
      }

      v11 = [[_UITabSidebarBottomBarWrapperView alloc] initWithView:supplementaryFrames intrinsicContentSizeInvalidationHandler:v7];
      v12 = *(self + 664);
      *(self + 664) = v11;

      backgroundView = [self backgroundView];
      contentView = [backgroundView contentView];
      [contentView addSubview:*(self + 664)];

      [self setNeedsLayout];
      v15 = *(self + 728);
      if (!v15)
      {
        v16 = [_UIScrollPocketContainerInteraction alloc];
        collectionView = [self collectionView];
        v18 = [(_UIScrollPocketContainerInteraction *)v16 initWithScrollView:collectionView edge:4];
        v19 = *(self + 728);
        *(self + 728) = v18;

        v15 = *(self + 728);
      }

      [*(self + 664) addInteraction:{v15, v20, v21, v22, v23}];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = *(self + 728);
      *(self + 728) = 0;
    }
  }
}

- (void)updateCornerConfiguration
{
  selfCopy = self;
  sub_1891EF4CC();
}

- (id)initWithSidebar:(id *)sidebar
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!sidebar)
  {
    goto LABEL_11;
  }

  v21.receiver = sidebar;
  v21.super_class = _UITabOutlineView;
  sidebar = objc_msgSendSuper2(&v21, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  if (!sidebar)
  {
    goto LABEL_11;
  }

  if (!v3)
  {
    v5 = 0;
    goto LABEL_13;
  }

  v4 = v3[5];
  v5 = v4;
  if (!v4)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = *(v4 + 150);
LABEL_6:
  v7 = v6;

  objc_storeStrong(sidebar + 59, v6);
  sidebar[61] = v3;
  *(sidebar + 449) = 1;
  *(sidebar + 448) = 0;
  _internalTraitOverrides = [(UIView *)sidebar _internalTraitOverrides];
  [_internalTraitOverrides _setNSIntegerValue:1 forTraitToken:0x1EFE32590];

  _internalTraitOverrides2 = [(UIView *)sidebar _internalTraitOverrides];
  [_internalTraitOverrides2 _setNSIntegerValue:2 forTraitToken:0x1EFE32560];

  _internalTraitOverrides3 = [(UIView *)sidebar _internalTraitOverrides];
  v11 = objc_opt_self();
  [_internalTraitOverrides3 setNSIntegerValue:1 forTrait:v11];

  [sidebar _createViewHierarchy];
  v24[0] = 0x1EFE323E0;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v13 = [sidebar _registerForTraitTokenChanges:v12 withTarget:sidebar action:sel__displayScaleTraitChanged];

  v23 = 0x1EFE323B0;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v15 = [sidebar _registerForTraitTokenChanges:v14 withTarget:sidebar action:sel__userInterfaceStyleTraitChanged];

  v22 = 0x1EFE323C8;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v17 = [sidebar _registerForTraitTokenChanges:v16 withTarget:sidebar action:sel__updateEditBarButtonItem];

  [v7 addObserver:sidebar];
  tabItems = [v7 tabItems];
  v19 = [tabItems count];

  if (v19)
  {
    [sidebar _reloadDataSourceSnapshotAnimated:0];
    [sidebar _updateSelectedItemAnimated:0];
  }

  if ([v7 isEditing])
  {
    [(_UITabOutlineView *)sidebar setEditing:0 animated:?];
  }

LABEL_11:
  return sidebar;
}

- (uint64_t)setEditing:(uint64_t)editing animated:
{
  if (result)
  {
    v4 = result;
    if (*(result + 451) != a2)
    {
      *(result + 451) = a2;
      if (a2)
      {
        WeakRetained = objc_loadWeakRetained((result + 464));
        v4[416] = [WeakRetained outlineViewShouldShowCustomizationHeader:v4];
      }

      [v4 _updateEditBarButtonItem];
      [v4 _reloadDataSourceSnapshotAnimated:editing];
      collectionView = [v4 collectionView];
      [collectionView setSelectionFollowsFocus:a2 ^ 1];

      if (editing)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __41___UITabOutlineView_setEditing_animated___block_invoke;
        v11[3] = &unk_1E70F35E0;
        v11[4] = v4;
        v12 = a2;
        [UIView animateWithDuration:v11 animations:0.3];
      }

      else
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __41___UITabOutlineView_setEditing_animated___block_invoke_2;
        v9[3] = &unk_1E70F35E0;
        v9[4] = v4;
        v10 = a2;
        [UIView performWithoutAnimation:v9];
      }

      bottomBarView = [v4 bottomBarView];
      [bottomBarView setHidden:a2];

      [v4 _updateSelectedItemAnimated:editing];
      return [v4 _updateEditingInsets];
    }
  }

  return result;
}

- (void)prepareForTransitionToVisibility:(BOOL)visibility
{
  self->_isInTransitionAnimation = 1;
  if (visibility)
  {
    if (self->_needsScrollToSelectedItemWhenBecomingVisible && ![(_UITabOutlineView *)self isEditing])
    {
      collectionView = [(_UITabOutlineView *)self collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
      firstObject = [indexPathsForSelectedItems firstObject];

      if (firstObject)
      {
        collectionView2 = [(_UITabOutlineView *)self collectionView];
        [collectionView2 scrollToItemAtIndexPath:firstObject atScrollPosition:0 animated:0];
      }
    }

    self->_needsScrollToSelectedItemWhenBecomingVisible = 0;
  }
}

- (CACornerRadii)contentCornerRadii
{
  if (!self)
  {
LABEL_4:

    return [(CACornerRadii *)self _intersectedSceneCornerRadii];
  }

  height = self[6].maxXMinY.height;
  if (*&height != 1)
  {
    if (height != 0.0)
    {
      return self;
    }

    goto LABEL_4;
  }

  layer = [(CACornerRadii *)self layer];
  if (layer)
  {
    v6 = layer;
    [layer cornerRadii];
    layer = v6;
  }

  else
  {
    retstr->maxXMinY = 0u;
    retstr->minXMinY = 0u;
    retstr->minXMaxY = 0u;
    retstr->maxXMaxY = 0u;
  }

  return self;
}

- (uint64_t)style
{
  if (result)
  {
    return *(result + 424);
  }

  return result;
}

- (CGPoint)sidebarButtonOrigin
{
  navigationItem = [(_UITabOutlineView *)self navigationItem];
  leftBarButtonItem = [navigationItem leftBarButtonItem];
  [leftBarButtonItem frameInView:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setOverrideBackgroundEffect:(id *)effect
{
  v4 = a2;
  if (effect && effect[66] != v4)
  {
    v5 = v4;
    objc_storeStrong(effect + 66, a2);
    [effect _updateBackgroundEffects];
    v4 = v5;
  }
}

- (id)_tabBarController
{
  if (self)
  {
    self = self->_tabModel;
  }

  return [(_UITabOutlineView *)self tabBarController];
}

- (_UIShadowProperties)shadowProperties
{
  shadowView = [(_UITabOutlineView *)self shadowView];
  v3 = shadowView;
  if (shadowView)
  {
    v4 = *(shadowView + 416);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (void)_createViewHierarchy
{
  v94[1] = *MEMORY[0x1E69E9840];
  _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
  sidebarPrefersMacAppearance = [_currentPlatformMetrics sidebarPrefersMacAppearance];
  supportsFloatingSidebar = [_currentPlatformMetrics supportsFloatingSidebar];
  v6 = objc_alloc_init(_UIVisualEffectBackdropView);
  [(_UIVisualEffectBackdropView *)v6 setRenderMode:1];
  [(UIView *)self addSubview:v6];
  v63 = v6;
  objc_storeStrong(&self->_backgroundCaptureView, v6);
  if (supportsFloatingSidebar & 1 | ((sidebarPrefersMacAppearance & 1) == 0))
  {
    v7 = objc_alloc_init(_UIDuoShadowView);
    shadowView = self->_shadowView;
    self->_shadowView = v7;
    v9 = v7;

    [(UIView *)self addSubview:v9];
  }

  v10 = [[UIVisualEffectView alloc] initWithEffect:0];
  sidebarBackgroundEffects = [_currentPlatformMetrics sidebarBackgroundEffects];
  [(UIVisualEffectView *)v10 setBackgroundEffects:sidebarBackgroundEffects];

  contentView = [(UIVisualEffectView *)v10 contentView];
  [contentView setClipsToBounds:1];

  [(UIVisualEffectView *)v10 _setCaptureView:v63];
  [(UIView *)self addSubview:v10];
  objc_storeStrong(&self->_backgroundView, v10);
  [(_UITabOutlineView *)self _updateSidebarStyle];
  if (sidebarPrefersMacAppearance)
  {
    obj = 0;
  }

  else
  {
    v13 = [[UINavigationItem alloc] initWithTitle:&stru_1EFB14550];
    [(UINavigationItem *)v13 _setManualScrollEdgeAppearanceEnabled:1];
    objc_storeStrong(&self->_navigationItem, v13);
    v14 = [UINavigationBar alloc];
    obj = [(UINavigationBar *)v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    _defaultBarBackdropGroupName = [(_UITabOutlineView *)self _defaultBarBackdropGroupName];
    [(UINavigationBar *)obj _setBackdropViewLayerGroupName:_defaultBarBackdropGroupName];

    [(UINavigationBar *)obj _setBarPosition:3];
    v16 = self->_wantsHostedTabBarMetricsForNavigationBar && self->_resolvedStyle == 0;
    [(UINavigationBar *)obj _setWantsHostedTabBarMetrics:v16];
    v94[0] = v13;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
    [(UINavigationBar *)obj setItems:v17];

    contentView2 = [(UIVisualEffectView *)v10 contentView];
    [contentView2 addSubview:obj];

    objc_storeStrong(&self->_navigationBar, obj);
  }

  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  [(UIView *)v10 setPreservesSuperviewLayoutMargins:1];
  [(UIView *)v10 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  contentView3 = [(UIVisualEffectView *)v10 contentView];
  [contentView3 setPreservesSuperviewLayoutMargins:1];

  contentView4 = [(UIVisualEffectView *)v10 contentView];
  [contentView4 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];

  objc_initWeak(&location, self);
  v21 = [UICollectionViewCompositionalLayout alloc];
  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke;
  v91[3] = &unk_1E711BBD8;
  objc_copyWeak(&v92, &location);
  v62 = [(UICollectionViewCompositionalLayout *)v21 initWithSectionProvider:v91];
  v22 = [_UITabSidebarCollectionView alloc];
  [(UIView *)self bounds];
  v23 = [(UICollectionView *)v22 initWithFrame:v62 collectionViewLayout:?];
  [(UICollectionView *)v23 setAllowsFocus:1];
  [(UICollectionView *)v23 setSelectionFollowsFocus:1];
  [(UICollectionView *)v23 setSpringLoaded:1];
  [(UICollectionView *)v23 setDragDelegate:self];
  [(UICollectionView *)v23 setDropDelegate:self];
  if (v23)
  {
    dragAndDropController = v23->super._dragAndDropController;
    if (dragAndDropController)
    {
      dragAndDropController->_flockSelectedItemsOnDrag = 0;
    }
  }

  [(UICollectionView *)v23 _setAllowsBandSelectionForMultipleSelection:0];
  [(UICollectionView *)v23 _setPreferredDragDestinationVisualStyle:1];
  [(UICollectionView *)v23 setContentInset:9.0, 0.0, 9.0, 0.0];
  [(UICollectionView *)v23 setDelegate:self];
  [(UICollectionView *)v23 setAllowsMultipleSelectionDuringEditing:1];
  [(UIView *)v23 _setSafeAreaInsetsFrozen:1];
  [(UIScrollView *)v23 _addScrollViewScrollObserver:self];
  contentView5 = [(UIVisualEffectView *)v10 contentView];
  if (obj)
  {
    [contentView5 insertSubview:v23 belowSubview:self->_navigationBar];
  }

  else
  {
    [contentView5 addSubview:v23];
  }

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_4;
  v89[3] = &unk_1E70F5A28;
  objc_copyWeak(&v90, &location);
  [(_UITabSidebarCollectionView *)v23 setLayoutSubviewHandler:v89];
  objc_storeStrong(&self->_collectionView, v23);
  v26 = objc_opt_class();
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_6;
  v87[3] = &unk_1E712BFE0;
  objc_copyWeak(&v88, &location);
  v27 = [UICollectionViewCellRegistration registrationWithCellClass:v26 configurationHandler:v87];
  v28 = [UICollectionViewDiffableDataSource alloc];
  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_8;
  v84[3] = &unk_1E712C008;
  objc_copyWeak(&v86, &location);
  v60 = v27;
  v85 = v60;
  v29 = [(UICollectionViewDiffableDataSource *)v28 initWithCollectionView:v23 cellProvider:v84];
  dataSource = self->_dataSource;
  self->_dataSource = v29;

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_9;
  aBlock[3] = &unk_1E712C030;
  objc_copyWeak(&v83, &location);
  v65 = _Block_copy(aBlock);
  v31 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UICollectionElementKindSectionHeader" configurationHandler:v65];
  v32 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UICollectionElementKindSectionFooter" configurationHandler:v65];
  v33 = [UICollectionViewSupplementaryRegistration registrationWithSupplementaryClass:objc_opt_class() elementKind:@"UITabOutlineView.EditHeader" configurationHandler:v65];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_10;
  v78[3] = &unk_1E711BCD8;
  v57 = v31;
  v79 = v57;
  v58 = v32;
  v80 = v58;
  v59 = v33;
  v81 = v59;
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v78];
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_11;
  v76[3] = &unk_1E711BD00;
  objc_copyWeak(&v77, &location);
  reorderingHandlers = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [reorderingHandlers setCanReorderItemHandler:v76];

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_12;
  v74[3] = &unk_1E712C058;
  objc_copyWeak(v75, &location);
  v75[1] = a2;
  reorderingHandlers2 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [reorderingHandlers2 setWillReorderHandler:v74];

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_13;
  v72[3] = &unk_1E712C058;
  objc_copyWeak(v73, &location);
  v73[1] = a2;
  reorderingHandlers3 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [reorderingHandlers3 setDidReorderHandler:v72];

  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  collapsedGroupIdentifiers = self->_collapsedGroupIdentifiers;
  self->_collapsedGroupIdentifiers = v37;

  v39 = self->_tabModel;
  customizationStore = [(_UITabModel *)v39 customizationStore];
  collapsedGroupIdentifiers = [customizationStore collapsedGroupIdentifiers];

  if ([collapsedGroupIdentifiers count])
  {
    [(NSMutableSet *)self->_collapsedGroupIdentifiers unionSet:collapsedGroupIdentifiers];
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_14;
  v70[3] = &unk_1E712C080;
  objc_copyWeak(&v71, &location);
  sectionSnapshotHandlers = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers setWillExpandItemHandler:v70];

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_16;
  v68[3] = &unk_1E712C080;
  objc_copyWeak(&v69, &location);
  sectionSnapshotHandlers2 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [sectionSnapshotHandlers2 setWillCollapseItemHandler:v68];

  _currentSidebarImage = [(_UITabOutlineView *)self _currentSidebarImage];
  v43 = [[UIBarButtonItem alloc] initWithImage:_currentSidebarImage style:0 target:0 action:0];
  [(UIBarButtonItem *)v43 setSpringLoaded:1];
  objc_storeStrong(&self->_sidebarBarButtonItem, v43);
  v44 = _UINSLocalizedStringWithDefaultValue(@"Reset", @"Reset");
  v45 = [[UIBarButtonItem alloc] initWithTitle:v44 style:0 target:self action:sel__resetCustomization];
  objc_storeStrong(&self->_resetBarButtonItem, v45);
  [(_UITabOutlineView *)self _updateEditBarButtonItem];
  if ([_currentPlatformMetrics sidebarSupportsAnimatedSelections])
  {
    v46 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectionGesture_];
    [(UIGestureRecognizer *)v46 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v46 setDelegate:self];
    [(UIView *)self addGestureRecognizer:v46];
    objc_storeStrong(&self->_selectionGestureRecognizer, v46);
    v47 = objc_opt_new();
    contentView6 = [(UIVisualEffectView *)v10 contentView];
    [(_UITabSidebarLensView *)v47 setLiftedContainerView:contentView6];

    contentView7 = [(UIVisualEffectView *)v10 contentView];
    [contentView7 addSubview:v47];

    lensView = self->_lensView;
    self->_lensView = v47;
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  _screen = [(UIView *)self _screen];
  [defaultCenter addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:_screen];
  [defaultCenter addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:_screen];
  [defaultCenter addObserver:self selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:_screen];
  if (obj)
  {
    v53 = [_UIScrollPocketContainerInteraction alloc];
    collectionView = [(_UITabOutlineView *)self collectionView];
    v55 = [(_UIScrollPocketContainerInteraction *)v53 initWithScrollView:collectionView edge:1];
    navigationBarPocketContainerInteraction = self->_navigationBarPocketContainerInteraction;
    self->_navigationBarPocketContainerInteraction = v55;

    [(UIView *)obj addInteraction:self->_navigationBarPocketContainerInteraction];
  }

  objc_destroyWeak(&v69);
  objc_destroyWeak(&v71);

  objc_destroyWeak(v73);
  objc_destroyWeak(v75);
  objc_destroyWeak(&v77);

  objc_destroyWeak(&v83);
  objc_destroyWeak(&v86);

  objc_destroyWeak(&v88);
  objc_destroyWeak(&v90);

  objc_destroyWeak(&v92);
  objc_destroyWeak(&location);
}

- (id)_currentPlatformMetrics
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v3;
}

- (void)_configureShadowView
{
  if (self->_shadowView)
  {
    _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
    traitCollection = [(UIView *)self traitCollection];
    if (_UISolariumEnabled())
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      [v4 setRadius:0.0];
      [traitCollection displayScale];
      v5 = 1.0;
      [v4 setOffset:{1.0 / v6, 0.0}];
      if ([traitCollection userInterfaceStyle] == 2)
      {
        v7 = +[UIColor opaqueSeparatorColor];
        [v4 setColor:v7];
      }

      else
      {
        v5 = 0.16;
      }

      [v4 setOpacity:v5];
    }

    [(_UIDuoShadowView *)self->_shadowView setPrimaryShadow:v4];
  }
}

- (void)_updateBackgroundEffects
{
  if (!self)
  {
    goto LABEL_6;
  }

  if (self->_resolvedStyle)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v3 = self->_overrideBackgroundEffect;
  if (v3)
  {
    _currentPlatformMetrics = v3;
    sidebarBackgroundEffects = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0}];
  }

  else
  {
LABEL_6:
    _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
    sidebarBackgroundEffects = [_currentPlatformMetrics sidebarBackgroundEffects];
  }

  v7 = sidebarBackgroundEffects;

LABEL_8:
  backgroundView = [(_UITabOutlineView *)self backgroundView];
  [backgroundView setBackgroundEffects:v7];
}

- (void)_resetCustomization
{
  activeTransaction = [(_UITabOutlineView *)self activeTransaction];
  if (self)
  {
    tabItems = [(_UITabModel *)self->_tabModel tabItems];
    [activeTransaction resetCustomizationForTabs:tabItems];

    tabModel = self->_tabModel;
  }

  else
  {
    tabItems2 = [0 tabItems];
    [activeTransaction resetCustomizationForTabs:tabItems2];

    tabModel = 0;
  }

  customizationStore = [(_UITabModel *)tabModel customizationStore];
  [customizationStore reset];

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
}

- (void)_updateConfigurationForCell:(id)cell inState:(id)state content:(id)content indexPath:(id)path
{
  cellCopy = cell;
  stateCopy = state;
  contentCopy = content;
  pathCopy = path;
  v14 = cellCopy;
  if (cellCopy)
  {
    if (stateCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:768 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];

    v14 = cellCopy;
    if (!cellCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

  v14 = 0;
  if (!stateCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v14)
  {
LABEL_14:
    updatedSidebarItemForCurrentConfigurationState = 0;
LABEL_15:
    v22 = [contentCopy tab];

    if (v22)
    {
      v23 = [(_UITabOutlineView *)self _isHeaderIndexPath:pathCopy];
      if ([contentCopy isEmptyGroup])
      {
        v24 = [contentCopy tab];
        _isSidebarDestination = [v24 _isSidebarDestination];

        if (_isSidebarDestination)
        {
          v23 |= 2uLL;
        }
      }

      v26 = [UITabSidebarItemRequest alloc];
      action2 = [contentCopy tab];
      v28 = [(UITabSidebarItemRequest *)v26 _initWithTab:action2 cell:cellCopy attributes:v23];
    }

    else
    {
      action = [contentCopy action];

      if (!action)
      {
LABEL_26:
        [(_UITabSidebarCell *)cellCopy setSidebarItem:?];
        goto LABEL_27;
      }

      v30 = [UITabSidebarItemRequest alloc];
      action2 = [contentCopy action];
      v28 = [(UITabSidebarItemRequest *)v30 _initWithAction:action2 cell:cellCopy];
    }

    v31 = v28;

    if (v31)
    {
      if (self)
      {
        sidebar = self->_sidebar;
      }

      else
      {
        sidebar = 0;
      }

      v33 = [(UITabBarControllerSidebar *)sidebar _sidebarItemForRequest:v31];
      [(_UITabSidebarCell *)cellCopy setSidebarItem:v33];

      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_4:
  v15 = v14[110];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  if ((*(cellCopy + 876) & 1) == 0)
  {
    updatedSidebarItemForCurrentConfigurationState = v15;
    goto LABEL_15;
  }

  updatedSidebarItemForCurrentConfigurationState = [(_UITabSidebarCell *)cellCopy updatedSidebarItemForCurrentConfigurationState];

  if (self)
  {
    v18 = self->_sidebar;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(UITabBarControllerSidebar *)v18 _updatedSidebarItem:updatedSidebarItemForCurrentConfigurationState];
  if (v19 != updatedSidebarItemForCurrentConfigurationState)
  {
    [(_UITabSidebarCell *)cellCopy setSidebarItem:v19];
  }

LABEL_27:
}

- (id)_leadingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
  if (v5 && ![(_UITabOutlineView *)self _isHeaderIndexPath:pathCopy])
  {
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v6 = [(UITabBarControllerSidebar *)sidebar _leadingSwipeActionsConfigurationForTab:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_trailingSwipeActionsConfigurationForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
  if (v5 && ![(_UITabOutlineView *)self _isHeaderIndexPath:pathCopy])
  {
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v6 = [(UITabBarControllerSidebar *)sidebar _trailingSwipeActionsConfigurationForTab:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = _UITabOutlineView;
  [(UIView *)&v5 didMoveToSuperview];
  if (superview)
  {
    [(_UITabOutlineView *)self _updateSelectedItemAnimated:0];
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = _UITabOutlineView;
  [(UIView *)&v3 didMoveToSuperview];
  [(_UITabOutlineView *)self _updateEditingInsets];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (self && self->_resolvedStyle == 1)
  {
    collectionView = [(_UITabOutlineView *)self collectionView];
    [collectionView contentSize];
    v8 = v7;

    collectionView2 = [(_UITabOutlineView *)self collectionView];
    [collectionView2 contentInset];
    v11 = v10;
    collectionView3 = [(_UITabOutlineView *)self collectionView];
    [collectionView3 contentInset];
    v14 = v8 + v11 + v13;

    navigationBar = [(_UITabOutlineView *)self navigationBar];
    [navigationBar frame];
    v17 = v14 + v16;

    bottomBarView = [(_UITabOutlineView *)self bottomBarView];
    [bottomBarView frame];
    height = v17 + v19;
  }

  v20 = width;
  v21 = height;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = _UITabOutlineView;
  [(UIView *)&v53 layoutSubviews];
  [(UIView *)self _shouldReverseLayoutDirection];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  maximumSidebarHeight = v9;
  [(UIView *)self safeAreaInsets];
  v50 = v11;
  v51 = v12;
  v52 = v13;
  v15 = v14;
  shadowView = [(_UITabOutlineView *)self shadowView];
  [shadowView setFrame:{v4, v6, v8, maximumSidebarHeight}];

  backgroundView = [(_UITabOutlineView *)self backgroundView];
  [backgroundView setFrame:{v4, v6, v8, maximumSidebarHeight}];

  backgroundCaptureView = [(_UITabOutlineView *)self backgroundCaptureView];
  [backgroundCaptureView setFrame:{v4, v6, v8, maximumSidebarHeight}];

  navigationBar = [(_UITabOutlineView *)self navigationBar];
  [navigationBar sizeThatFits:{v8, maximumSidebarHeight}];
  v21 = v20;
  v23 = v22;

  if (v23 == 0.0)
  {
    navigationBar2 = [(_UITabOutlineView *)self navigationBar];
    [navigationBar2 layoutIfNeeded];

    navigationBar3 = [(_UITabOutlineView *)self navigationBar];
    [navigationBar3 sizeThatFits:{v8, maximumSidebarHeight}];
    v21 = v26;
    v23 = v27;
  }

  [(UIView *)self safeAreaInsets];
  v29 = v28;
  navigationBar4 = [(_UITabOutlineView *)self navigationBar];
  [navigationBar4 setFrame:{0.0, v29, v21, v23}];

  if (self->_isNavigationBarSafeAreaDirty)
  {
    navigationBar5 = [(_UITabOutlineView *)self navigationBar];
    [navigationBar5 safeAreaInsetsDidChange];

    self->_isNavigationBarSafeAreaDirty = 0;
  }

  navigationBar6 = [(_UITabOutlineView *)self navigationBar];

  bottomBarView = [(_UITabOutlineView *)self bottomBarView];
  v36 = bottomBarView;
  if (bottomBarView)
  {
    LODWORD(v34) = 1148846080;
    LODWORD(v35) = 1112014848;
    [bottomBarView systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:44.0 verticalFittingPriority:{v34, v35}];
    v38 = v37;
    v39 = maximumSidebarHeight - v37;
    _bottomToolbar = [(_UITabOutlineView *)self _bottomToolbar];
    items = [_bottomToolbar items];
    v42 = [items count];

    if (v42)
    {
      [v36 setLayoutWithinSafeArea:1];
      [(UIView *)self safeAreaInsets];
      v39 = v39 - v43;
      [(UIView *)self safeAreaInsets];
      v45 = v38 + v44;
    }

    else
    {
      [v36 setLayoutWithinSafeArea:0];
      v45 = v38;
    }

    [v36 setFrame:{0.0, v39, v8, v45}];
    v15 = v15 + v38;
  }

  v54.origin.x = v4;
  v54.origin.y = v6;
  v54.size.width = v8;
  v54.size.height = maximumSidebarHeight;
  if (CGRectGetHeight(v54) < self->_maximumSidebarHeight)
  {
    v55.origin.x = v4;
    v55.origin.y = v6;
    v55.size.width = v8;
    v55.size.height = maximumSidebarHeight;
    Height = CGRectGetHeight(v55);
    maximumSidebarHeight = self->_maximumSidebarHeight;
    v15 = v15 + maximumSidebarHeight - Height;
  }

  if (navigationBar6)
  {
    v47 = v50 + v23;
  }

  else
  {
    v47 = v50;
  }

  collectionView = [(_UITabOutlineView *)self collectionView];
  [collectionView setSafeAreaInsets:{v47, v52, v15, v51}];

  collectionView2 = [(_UITabOutlineView *)self collectionView];
  [collectionView2 setFrame:{v4, v6, v8, maximumSidebarHeight}];

  [(_UITabOutlineView *)self _updateScrollEdgeAppearance];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _UITabOutlineView;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  self->_isNavigationBarSafeAreaDirty = 1;
}

- (void)setDisplayedGroup:(uint64_t)group
{
  v4 = a2;
  if (group && *(group + 480) != v4)
  {
    v8 = v4;
    if (v4)
    {
      _tabModel = [v4 _tabModel];
      v6 = *(group + 472);

      if (_tabModel != v6)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_setDisplayedGroup_ object:group file:@"_UITabOutlineView.m" lineNumber:945 description:@"Trying to display a group that is not part of the tab model."];
      }
    }

    objc_storeStrong((group + 480), a2);
    [group _reloadDataSourceSnapshotAnimated:0];
    [group _updateSelectedItemAnimated:0];
    v4 = v8;
  }
}

- (void)setSidebarButtonAction:(id *)action
{
  v3 = a2;
  if (action)
  {
    v7 = v3;
    v4 = [v3 copy];

    objc_storeStrong(action + 65, v4);
    _currentSidebarImage = [action _currentSidebarImage];
    [v4 setImage:_currentSidebarImage];

    sidebarBarButtonItem = [action sidebarBarButtonItem];
    [sidebarBarButtonItem setPrimaryAction:v4];
    [sidebarBarButtonItem setHidden:{objc_msgSend(action, "_showSidebarBarButtonItem") ^ 1}];
    [action setNeedsLayout];

    v3 = v4;
  }
}

- (void)setTitle:(id *)title
{
  v10 = a2;
  if (title)
  {
    navigationItem = title[64];
    v5 = v10;
    v6 = v5;
    if (navigationItem == v5)
    {
    }

    else
    {
      if (v5 && navigationItem)
      {
        v7 = [navigationItem isEqual:v5];

        if (v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      objc_storeStrong(title + 64, a2);
      _currentPlatformMetrics = [title _currentPlatformMetrics];
      showsSidebarTitle = [_currentPlatformMetrics showsSidebarTitle];

      if (!showsSidebarTitle)
      {
        goto LABEL_12;
      }

      navigationItem = [title navigationItem];
      [navigationItem setTitle:v6];
    }
  }

LABEL_12:
}

- (void)setPreferredStyle:(void *)result
{
  if (result)
  {
    v2 = result;
    if (result[62] != a2)
    {
      result[62] = a2;
      if (a2 == 1)
      {
        _currentPlatformMetrics = [result _currentPlatformMetrics];
        supportsFloatingSidebar = [_currentPlatformMetrics supportsFloatingSidebar];

        a2 = supportsFloatingSidebar & 1;
      }

      v2[53] = a2;

      return [v2 _updateSidebarStyle];
    }
  }

  return result;
}

- (void)_updateSidebarStyle
{
  _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UISidebarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  backgroundView = [(_UITabOutlineView *)self backgroundView];
  layer = [backgroundView layer];

  if (self && self->_resolvedStyle == 1)
  {
    floatingBackground = [v4 floatingBackground];
    [_currentPlatformMetrics sidebarBorderWidth];
    [layer setBorderWidth:?];
    sidebarBorderColor = [_currentPlatformMetrics sidebarBorderColor];
    [layer setBorderColor:{objc_msgSend(sidebarBorderColor, "CGColor")}];
  }

  else
  {
    floatingBackground = [v4 abuttedBackground];
    [layer setBorderWidth:0.0];
  }

  backgroundView2 = [(_UITabOutlineView *)self backgroundView];
  [backgroundView2 _setBackground:floatingBackground];

  [(_UITabOutlineView *)self _configureShadowView];
  [(_UITabOutlineView *)self _updateBackgroundEffects];
  [(_UITabOutlineView *)self updateCornerConfiguration];
  resolvedStyle = self->_resolvedStyle;
  v11 = resolvedStyle == 1;
  if (self->_didAddElevatedTraitTransformer != v11)
  {
    if (resolvedStyle == 1)
    {
      [(UIView *)self _addTraitCollectionTransformWithIdentifier:&__block_literal_global_725 transform:?];
    }

    else
    {
      [(UIView *)self _removeTraitCollectionTransformWithIdentifier:?];
    }

    self->_didAddElevatedTraitTransformer = v11;
  }
}

- (void)setTransitionsToTabBar:(uint64_t)bar
{
  if (bar && *(bar + 449) != a2)
  {
    *(bar + 449) = a2;
    _currentSidebarImage = [bar _currentSidebarImage];
    [*(bar + 648) setImage:_currentSidebarImage];
  }
}

- (uint64_t)makeFirstResponderForTab:(void *)tab
{
  if (!tab)
  {
    return 0;
  }

  v3 = a2;
  dataSource = [tab dataSource];
  identifier = [v3 identifier];

  v6 = [dataSource indexPathForItemIdentifier:identifier];

  if (v6)
  {
    collectionView = [tab collectionView];
    v8 = [collectionView cellForItemAtIndexPath:v6];

    if (v8)
    {
      contentView = [v8 contentView];
      becomeFirstResponder = [contentView becomeFirstResponder];
    }

    else
    {
      becomeFirstResponder = 0;
    }
  }

  else
  {
    becomeFirstResponder = 0;
  }

  return becomeFirstResponder;
}

- (id)_currentSidebarImage
{
  if (self && self->_transitionsToTabBar)
  {
    v2 = [UIImage _systemImageNamed:@"rectangle.line.horizontal.inset.top"];
  }

  else
  {
    v2 = [UIImage systemImageNamed:@"sidebar.leading"];
  }

  return v2;
}

- (void)_updateSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v46 = *MEMORY[0x1E69E9840];
  if (!self->_ignoringSelectionUpdates)
  {
    v4 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
    if ([(_UITabModel *)self->_tabModel isEditing])
    {
      dataSource = [(_UITabOutlineView *)self dataSource];
      snapshot = [dataSource snapshot];

      v34 = snapshot;
      itemIdentifiers = [snapshot itemIdentifiers];
      collectionView = [(_UITabOutlineView *)self collectionView];
      indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = itemIdentifiers;
      v9 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = v9;
      v11 = *v42;
      while (1)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          contentByIdentifier = [(_UITabOutlineView *)self contentByIdentifier];
          v15 = [contentByIdentifier objectForKey:v13];
          v16 = [v15 tab];

          v17 = [*(&self->super.super.super.isa + v4[473]) isTabHidden:v16];
          if (v16)
          {
            v18 = v17;
            v19 = v4;
            dataSource2 = [(_UITabOutlineView *)self dataSource];
            v21 = [dataSource2 indexPathForItemIdentifier:v13];

            collectionView2 = [(_UITabOutlineView *)self collectionView];
            v23 = [(_UITabOutlineView *)self collectionView:collectionView2 shouldSelectItemAtIndexPath:v21];

            v24 = [(_UITabOutlineView *)self _hasCustomizablePlacementForTab:v16];
            if ((v18 & 1) == 0 && (v23 || v24))
            {
              collectionView3 = [(_UITabOutlineView *)self collectionView];
              [collectionView3 selectItemAtIndexPath:v21 animated:animatedCopy scrollPosition:0];
              v4 = v19;
              goto LABEL_14;
            }

            v4 = v19;
            if ([indexPathsForSelectedItems containsObject:v21])
            {
              collectionView3 = [(_UITabOutlineView *)self collectionView];
              [collectionView3 deselectItemAtIndexPath:v21 animated:animatedCopy];
LABEL_14:
            }
          }
        }

        v10 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        if (!v10)
        {
LABEL_18:

          return;
        }
      }
    }

    objb = [(_UITabModel *)self->_tabModel selectedLeaf];
    dataSource3 = [(_UITabOutlineView *)self dataSource];
    identifier = [objb identifier];
    v28 = [dataSource3 indexPathForItemIdentifier:identifier];

    v29 = objb;
    if (objb)
    {
      v30 = v28 == 0;
    }

    else
    {
      v30 = 0;
    }

    if (v30)
    {
      do
      {
        v31 = v29;
        objc = [v29 _parentGroup];

        dataSource4 = [(_UITabOutlineView *)self dataSource];
        identifier2 = [objc identifier];
        v28 = [dataSource4 indexPathForItemIdentifier:identifier2];

        v29 = objc;
      }

      while (objc && !v28);
    }

    obja = v29;
    [(_UITabOutlineView *)self _selectItemAtIndexPath:v28 animated:animatedCopy performAction:0];
  }
}

- (void)_updateSnapshot:(id)snapshot usingNode:(id)node
{
  v31 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  nodeCopy = node;
  identifier = [nodeCopy identifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = nodeCopy;
  children = [nodeCopy children];
  v10 = [children countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(children);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        identifier2 = [v14 identifier];
        v29 = identifier2;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        [snapshotCopy appendItems:v16 intoParentItem:identifier];

        [(_UITabOutlineView *)self _updateSnapshot:snapshotCopy usingNode:v14];
      }

      v11 = [children countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  actions = [v23 actions];

  if (actions)
  {
    actions2 = [v23 actions];
    [snapshotCopy appendItems:actions2 intoParentItem:identifier];
  }

  v19 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:identifier];
  if ([(_UITabOutlineView *)self isEditing])
  {
    [(_UITabOutlineView *)self editingCollapsedGroupIdentifiers];
  }

  else
  {
    [(_UITabOutlineView *)self collapsedGroupIdentifiers];
  }
  v20 = ;
  v21 = [v20 containsObject:identifier];

  if ((v21 & 1) == 0)
  {
    v28 = identifier;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [snapshotCopy expandItems:v22];
  }
}

- (void)_reloadDataSourceSnapshotAnimated:(BOOL)animated
{
  v166 = *MEMORY[0x1E69E9840];
  if (self->_ignoringContentUpdates)
  {
    return;
  }

  animatedCopy = animated;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Root-%p", self];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  v131 = v7;
  v119 = v5;
  [v7 setObject:v8 forKeyedSubscript:v5];
  isEditing = [(_UITabModel *)self->_tabModel isEditing];
  tabItems = [(_UITabModel *)self->_tabModel tabItems];
  v11 = self->_displayedGroup;
  _tabModel = [(_UITabGroup *)v11 _tabModel];
  tabModel = self->_tabModel;

  v120 = animatedCopy;
  v116 = v11;
  if (_tabModel == tabModel)
  {
    activeTransaction = [(_UITabOutlineView *)self activeTransaction];
    identifier = [(_UITabGroup *)v11 identifier];
    v16 = [activeTransaction currentDisplayOrderForGroupWithIdentifier:identifier];

    v17 = [(_UITabGroup *)v11 _orderedChildrenForDisplayOrder:v16];

    tabItems = v17;
  }

  v18 = [_UITabOutlineParser alloc];
  activeTransaction2 = [(_UITabOutlineView *)self activeTransaction];
  v117 = tabItems;
  v20 = [(_UITabOutlineParser *)v18 initWithTabs:tabItems includeAllowsHidingItems:isEditing transaction:activeTransaction2];

  customizationStore = [(_UITabModel *)self->_tabModel customizationStore];
  allGroupIdentifiers = [customizationStore allGroupIdentifiers];

  collapsedByDefaultGroupIdentifiers = [(_UITabOutlineParser *)v20 collapsedByDefaultGroupIdentifiers];
  v24 = [collapsedByDefaultGroupIdentifiers mutableCopy];

  v115 = allGroupIdentifiers;
  [v24 minusSet:allGroupIdentifiers];
  selfCopy = self;
  v114 = v24;
  [(NSMutableSet *)self->_collapsedGroupIdentifiers unionSet:v24];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v122 = v20;
  rootItems = [(_UITabOutlineParser *)v20 rootItems];
  v26 = [rootItems countByEnumeratingWithState:&v153 objects:v165 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v154;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v154 != v28)
        {
          objc_enumerationMutation(rootItems);
        }

        v30 = *(*(&v153 + 1) + 8 * i);
        identifier2 = [v30 identifier];
        v164 = identifier2;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v164 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)v8 appendItems:v32];

        if ([v30 isGroup])
        {
          [(_UITabOutlineView *)selfCopy _updateSnapshot:v8 usingNode:v30];
        }
      }

      v27 = [rootItems countByEnumeratingWithState:&v153 objects:v165 count:16];
    }

    while (v27);
  }

  v118 = v8;

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  groupItems = [(_UITabOutlineParser *)v122 groupItems];
  v34 = [groupItems countByEnumeratingWithState:&v149 objects:v163 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v150;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v150 != v36)
        {
          objc_enumerationMutation(groupItems);
        }

        v38 = *(*(&v149 + 1) + 8 * j);
        v39 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
        identifier3 = [v38 identifier];
        v162 = identifier3;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)v39 appendItems:v41];

        [(_UITabOutlineView *)selfCopy _updateSnapshot:v39 usingNode:v38];
        [v6 addObject:identifier3];
        [v131 setObject:v39 forKeyedSubscript:identifier3];
      }

      v35 = [groupItems countByEnumeratingWithState:&v149 objects:v163 count:16];
    }

    while (v35);
  }

  v113 = [(_UITabOutlineView *)selfCopy _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
  [v113 increment];
  dataSource = [(_UITabOutlineView *)selfCopy dataSource];
  snapshot = [dataSource snapshot];

  sectionIdentifiers = [snapshot sectionIdentifiers];
  v45 = [v6 differenceFromArray:sectionIdentifiers withOptions:4];
  v112 = sectionIdentifiers;
  v123 = snapshot;
  v121 = v45;
  if (![sectionIdentifiers count])
  {
    [snapshot appendSectionsWithIdentifiers:v6];
LABEL_43:
    v46 = &OBJC_IVAR____UIStateMachine__state;
    goto LABEL_44;
  }

  v46 = &OBJC_IVAR____UIStateMachine__state;
  if ([v45 hasChanges])
  {
    array = [MEMORY[0x1E695DF70] array];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    removals = [v45 removals];
    v49 = [removals countByEnumeratingWithState:&v145 objects:v161 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v146;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v146 != v51)
          {
            objc_enumerationMutation(removals);
          }

          v53 = *(*(&v145 + 1) + 8 * k);
          if ([v53 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            object = [v53 object];
            [array addObject:object];
          }
        }

        v50 = [removals countByEnumeratingWithState:&v145 objects:v161 count:16];
      }

      while (v50);
    }

    v129 = array;
    [v123 deleteSectionsWithIdentifiers:array];
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    insertions = [v121 insertions];
    v56 = [insertions countByEnumeratingWithState:&v141 objects:v160 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v142;
      do
      {
        for (m = 0; m != v57; ++m)
        {
          if (*v142 != v58)
          {
            objc_enumerationMutation(insertions);
          }

          v60 = *(*(&v141 + 1) + 8 * m);
          object2 = [v60 object];
          v62 = [v6 objectAtIndex:{objc_msgSend(v60, "index") - 1}];
          if ([v60 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v159 = object2;
            v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
            [v123 insertSectionsWithIdentifiers:v63 afterSectionWithIdentifier:v62];
          }

          else
          {
            [v123 moveSectionWithIdentifier:object2 afterSectionWithIdentifier:v62];
          }
        }

        v57 = [insertions countByEnumeratingWithState:&v141 objects:v160 count:16];
      }

      while (v57);
    }

    snapshot = v123;
    v45 = v121;
    goto LABEL_43;
  }

LABEL_44:
  v64 = selfCopy;
  if ([v45 hasChanges])
  {
    dataSource2 = [(_UITabOutlineView *)selfCopy dataSource];
    [dataSource2 applySnapshot:snapshot animatingDifferences:v120];
  }

  v66 = selfCopy->_contentByIdentifier;
  contentByIdentifier = [(_UITabOutlineParser *)v122 contentByIdentifier];
  contentByIdentifier = selfCopy->_contentByIdentifier;
  selfCopy->_contentByIdentifier = contentByIdentifier;

  allGroupIdentifiers2 = [(_UITabOutlineParser *)v122 allGroupIdentifiers];
  allGroupIdentifiers = selfCopy->_allGroupIdentifiers;
  selfCopy->_allGroupIdentifiers = allGroupIdentifiers2;

  v71 = *(&selfCopy->super.super.super.isa + v46[706]);
  if (v71)
  {
    v72 = v71;
    v73 = [_UITabSidebarContent contentForTab:v72];
    v74 = selfCopy->_contentByIdentifier;
    v75 = *(&selfCopy->super.super.super.isa + v46[706]);
    identifier4 = [v75 identifier];
    [(NSMutableDictionary *)v74 setObject:v73 forKeyedSubscript:identifier4];
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = v6;
  v77 = [obj countByEnumeratingWithState:&v137 objects:v158 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v138;
    do
    {
      for (n = 0; n != v78; ++n)
      {
        if (*v138 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v137 + 1) + 8 * n);
        v82 = [v131 objectForKeyedSubscript:v81];
        dataSource3 = [(_UITabOutlineView *)selfCopy dataSource];
        [dataSource3 applySnapshot:v82 toSection:v81 animatingDifferences:v120];
      }

      v78 = [obj countByEnumeratingWithState:&v137 objects:v158 count:16];
    }

    while (v78);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  collectionView = [(_UITabOutlineView *)selfCopy collectionView];
  preparedCells = [collectionView preparedCells];

  v130 = [preparedCells countByEnumeratingWithState:&v133 objects:v157 count:16];
  v86 = 0;
  if (v130)
  {
    v128 = *v134;
    v124 = v66;
    v125 = preparedCells;
    while (1)
    {
      v87 = 0;
      do
      {
        if (*v134 != v128)
        {
          objc_enumerationMutation(v125);
        }

        v88 = *(*(&v133 + 1) + 8 * v87);
        if (v88)
        {
          v89 = *(v88 + 880);
        }

        else
        {
          v89 = 0;
        }

        v90 = v89;
        v91 = [v90 tab];

        v92 = selfCopy->_contentByIdentifier;
        identifier5 = [v91 identifier];
        v94 = [(NSMutableDictionary *)v92 objectForKeyedSubscript:identifier5];

        v95 = [v94 tab];
        identifier6 = [v91 identifier];
        v97 = [(NSMutableDictionary *)v66 objectForKeyedSubscript:identifier6];

        if (v95 && ([v94 isCompatibleWithContent:v97] & 1) == 0)
        {
          if (v86)
          {
            identifier7 = [v95 identifier];
            [v86 addObject:identifier7];
          }

          else
          {
            v105 = MEMORY[0x1E695DF70];
            identifier7 = [v95 identifier];
            v86 = [v105 arrayWithObject:identifier7];
          }

LABEL_73:

          goto LABEL_74;
        }

        if (v88 && (*(v88 + 876) & 1) != 0)
        {
          v127 = v86;
          identifier8 = [v91 identifier];
          v99 = identifier8;
          if (identifier8)
          {
            identifier7 = identifier8;
          }

          else
          {
            v101 = *(v88 + 880);
            action = [v101 action];
            identifier7 = [action identifier];
          }

          dataSource4 = [(_UITabOutlineView *)selfCopy dataSource];
          v104 = [dataSource4 indexPathForItemIdentifier:identifier7];

          [v88 setIndentationLevel:{-[_UITabOutlineView _indentationLevelForItemIdentifier:indexPath:](selfCopy, "_indentationLevelForItemIdentifier:indexPath:", identifier7, v104)}];
          v66 = v124;
          v86 = v127;
          goto LABEL_73;
        }

LABEL_74:

        ++v87;
      }

      while (v130 != v87);
      v106 = [v125 countByEnumeratingWithState:&v133 objects:v157 count:16];
      v130 = v106;
      if (!v106)
      {

        if (v86)
        {
          v64 = selfCopy;
          v107 = v113;
          if ([v86 count])
          {
            dataSource5 = [(_UITabOutlineView *)selfCopy dataSource];
            snapshot2 = [dataSource5 snapshot];

            [snapshot2 reconfigureItemsWithIdentifiers:v86];
            preparedCells = [(_UITabOutlineView *)selfCopy dataSource];
            [preparedCells applySnapshot:snapshot2 animatingDifferences:v120];
            v123 = snapshot2;
            goto LABEL_82;
          }
        }

        else
        {
          v64 = selfCopy;
          v107 = v113;
        }

        goto LABEL_84;
      }
    }
  }

  v107 = v113;
LABEL_82:

LABEL_84:
  [v107 complete];
  activeTransaction3 = [(_UITabOutlineView *)v64 activeTransaction];
  if (activeTransaction3)
  {
    _tabsByIdentifier = [(_UITabOutlineView *)v64 _tabsByIdentifier];
    [activeTransaction3 updateTabs:_tabsByIdentifier];
  }
}

- (id)_existingSectionSnapshotForTabIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(_UITabOutlineView *)self dataSource];
  snapshot = [dataSource snapshot];
  v7 = [snapshot sectionIdentifierForSectionContainingItemIdentifier:identifierCopy];

  if (v7)
  {
    dataSource2 = [(_UITabOutlineView *)self dataSource];
    v9 = [dataSource2 snapshotForSection:v7];

    items = [v9 items];
    v11 = [items count];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)_reconfigureItemsInDataSourceForTabs:(id)tabs animated:(BOOL)animated
{
  animatedCopy = animated;
  v29 = *MEMORY[0x1E69E9840];
  tabsCopy = tabs;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(tabsCopy, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = tabsCopy;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        identifier = [v12 identifier];
        dataSource = [(_UITabOutlineView *)self dataSource];
        v15 = [dataSource indexPathForItemIdentifier:identifier];

        if (v15)
        {
          willDisplayTab = [(_UITabOutlineView *)self willDisplayTab];

          if (v12 == willDisplayTab)
          {
            self->_didUpdateWillDisplayTab = 1;
          }

          else
          {
            [v6 addObject:identifier];
            v17 = [_UITabSidebarContent contentForTab:v12];
            [(NSMutableDictionary *)self->_contentByIdentifier setObject:v17 forKey:identifier];
            activeTransaction = [(_UITabOutlineView *)self activeTransaction];
            [activeTransaction replaceTab:v12 forIdentifier:identifier];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    dataSource2 = [(_UITabOutlineView *)self dataSource];
    snapshot = [dataSource2 snapshot];

    [snapshot reconfigureItemsWithIdentifiers:v6];
    v21 = [(_UITabOutlineView *)self _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
    [v21 increment];
    dataSource3 = [(_UITabOutlineView *)self dataSource];
    [dataSource3 applySnapshot:snapshot animatingDifferences:animatedCopy];

    [v21 complete];
  }
}

- (id)_dataSourceUpdateGroupCompletionCreateIfNeeded:(BOOL)needed
{
  dataSourceUpdateGroupCompletion = self->_dataSourceUpdateGroupCompletion;
  if (dataSourceUpdateGroupCompletion)
  {
    v5 = 1;
  }

  else
  {
    v5 = !needed;
  }

  if (!v5)
  {
    v6 = objc_alloc_init(_UIGroupCompletion);
    v7 = self->_dataSourceUpdateGroupCompletion;
    self->_dataSourceUpdateGroupCompletion = v6;

    objc_initWeak(&location, self);
    v8 = self->_dataSourceUpdateGroupCompletion;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __68___UITabOutlineView__dataSourceUpdateGroupCompletionCreateIfNeeded___block_invoke;
    v10[3] = &unk_1E70F5A28;
    objc_copyWeak(&v11, &location);
    [(_UIGroupCompletion *)v8 addNonIncrementingCompletion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    dataSourceUpdateGroupCompletion = self->_dataSourceUpdateGroupCompletion;
  }

  return dataSourceUpdateGroupCompletion;
}

- (int64_t)_indentationLevelForItemIdentifier:(id)identifier indexPath:(id)path
{
  pathCopy = path;
  identifierCopy = identifier;
  dataSource = [(_UITabOutlineView *)self dataSource];
  v9 = [dataSource sectionIdentifierForIndex:{objc_msgSend(pathCopy, "section")}];

  dataSource2 = [(_UITabOutlineView *)self dataSource];
  v11 = [dataSource2 snapshotForSection:v9];

  v12 = [v11 levelOfItem:identifierCopy];
  section = [pathCopy section];

  if (v12 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 - 1;
  if (section)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (id)_tabForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(_UITabOutlineView *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];
  v8 = [v7 tab];

  return v8;
}

- (id)_actionForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(_UITabOutlineView *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];
  action = [v7 action];

  return action;
}

- (id)_sidebarContentForIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(_UITabOutlineView *)self dataSource];
  v6 = [dataSource itemIdentifierForIndexPath:pathCopy];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];

  return v7;
}

- (BOOL)_isHeaderIndexPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy section] >= 1 && objc_msgSend(pathCopy, "item") == 0;

  return v4;
}

- (BOOL)_isActionIndexPath:(id)path
{
  v3 = [(_UITabOutlineView *)self _tabForIndexPath:path];
  v4 = v3;
  if (v3)
  {
    _isAction = [v3 _isAction];
  }

  else
  {
    _isAction = 1;
  }

  return _isAction;
}

- (BOOL)_canDragTab:(id)tab
{
  tabCopy = tab;
  if ([tabCopy _isAction])
  {
    LOBYTE(v5) = 0;
  }

  else if ([tabCopy _canBeReordered])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (self)
    {
      tabModel = self->_tabModel;
    }

    else
    {
      tabModel = 0;
    }

    v7 = tabModel;
    if ([(_UITabModel *)v7 isEditing]&& [(_UITabOutlineView *)self _hasCustomizablePlacementForTab:tabCopy])
    {
      if (self)
      {
        v8 = self->_tabModel;
      }

      else
      {
        v8 = 0;
      }

      v5 = ![(_UITabModel *)v8 isTabHidden:tabCopy];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_hasCustomizablePlacementForTab:(id)tab
{
  tabCopy = tab;
  _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
  supportsCustomizablePlacements = [_currentPlatformMetrics supportsCustomizablePlacements];

  if (supportsCustomizablePlacements)
  {
    _hasCustomizablePlacement = [tabCopy _hasCustomizablePlacement];
  }

  else
  {
    _hasCustomizablePlacement = 0;
  }

  return _hasCustomizablePlacement;
}

- (void)headerContentConfigurationDidChange:(id *)change
{
  if (change)
  {
    _headerContentConfiguration = [change _headerContentConfiguration];
    if ((a2 != 0) != (_headerContentConfiguration == 0))
    {
      snapshot = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      v5 = [change[72] supplementaryViewForElementKind:@"UICollectionElementKindSectionHeader" atIndexPath:snapshot];
      [v5 setContentConfiguration:_headerContentConfiguration];
    }

    else
    {
      snapshot = [change[73] snapshot];
      [change[73] applySnapshot:snapshot animatingDifferences:1];
    }
  }
}

- (void)footerContentConfigurationDidChange:(id *)change
{
  if (change)
  {
    _footerContentConfiguration = [change _footerContentConfiguration];
    if ((a2 != 0) != (_footerContentConfiguration == 0))
    {
      numberOfSections = [change[72] numberOfSections];
      snapshot = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:numberOfSections - 1];
      v6 = [change[72] supplementaryViewForElementKind:@"UICollectionElementKindSectionFooter" atIndexPath:snapshot];
      [v6 setContentConfiguration:_footerContentConfiguration];
    }

    else
    {
      snapshot = [change[73] snapshot];
      [change[73] applySnapshot:snapshot animatingDifferences:1];
    }
  }
}

- (id)_headerContentConfiguration
{
  if (self)
  {
    self = self->_sidebar;
  }

  return [(UITabBarControllerSidebar *)&self->super.super.super.isa _actualHeaderContentConfiguration];
}

- (id)_footerContentConfiguration
{
  if (self)
  {
    self = self->_sidebar;
  }

  return [(UIEvent *)&self->super.super.super.isa _eventObservers];
}

- (id)_bottomToolbar
{
  if (self->_bottomBarIsToolbar)
  {
    view = [(_UITabSidebarBottomBarWrapperView *)self->_bottomBarView view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)scrollToTarget:(uint64_t)target animated:
{
  v5 = a2;
  if (!self)
  {
    goto LABEL_10;
  }

  v18 = v5;
  if (v5)
  {
    v6 = v5[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7)
  {
    if (v18 && *(v18 + 8) == 1)
    {
      _headerContentConfiguration = [self _headerContentConfiguration];

      if (_headerContentConfiguration)
      {
        v12 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:0];
        v13 = 1;
        goto LABEL_8;
      }

      v5 = v18;
      if (v18[1])
      {
        goto LABEL_10;
      }
    }

    _footerContentConfiguration = [self _footerContentConfiguration];

    v5 = v18;
    if (!_footerContentConfiguration)
    {
      goto LABEL_10;
    }

    collectionView = [self collectionView];
    v17 = [collectionView numberOfSections] - 1;

    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v17];
    v13 = 4;
    goto LABEL_8;
  }

  dataSource = [self dataSource];
  if (v18)
  {
    v9 = v18[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  identifier = [v10 identifier];
  v12 = [dataSource indexPathForItemIdentifier:identifier];

  v13 = 0;
LABEL_8:
  v5 = v18;
  if (v12)
  {
    [self[72] scrollToItemAtIndexPath:v12 atScrollPosition:v13 animated:target];

    v5 = v18;
  }

LABEL_10:
}

- (void)reconfigureItemForTab:(void *)tab
{
  if (tab)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:a2];
    [tab _reconfigureItemsInDataSourceForTabs:v3 animated:1];
  }
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab
{
  tabCopy = tab;
  contentByIdentifier = [(_UITabOutlineView *)self contentByIdentifier];
  identifier = [tabCopy identifier];
  v7 = [contentByIdentifier objectForKey:identifier];
  v8 = [v7 tab];

  if (v8)
  {
    _parentGroup = tabCopy;
    if (_parentGroup)
    {
      do
      {
        v10 = _parentGroup;
        dataSource = [(_UITabOutlineView *)self dataSource];
        identifier2 = [_parentGroup identifier];
        v13 = [dataSource indexPathForItemIdentifier:identifier2];

        collectionView = [(_UITabOutlineView *)self collectionView];
        v15 = [collectionView cellForItemAtIndexPath:v13];

        _parentGroup = [v10 _parentGroup];
      }

      while (_parentGroup && !v15);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_tabModelDidReload:(id)reload
{
  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
}

- (void)_tabModel:(id)model tabContentDidChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  v8 = [(_UITabOutlineView *)self _dataSourceUpdateGroupCompletionCreateIfNeeded:0];
  if (v8)
  {
    updatedTabsDuringApplySnapshot = self->_updatedTabsDuringApplySnapshot;
    if (!updatedTabsDuringApplySnapshot)
    {
      v10 = [MEMORY[0x1E695DFA8] set];
      v11 = self->_updatedTabsDuringApplySnapshot;
      self->_updatedTabsDuringApplySnapshot = v10;

      objc_initWeak(&location, self);
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __51___UITabOutlineView__tabModel_tabContentDidChange___block_invoke;
      v16 = &unk_1E70F5A28;
      objc_copyWeak(&v17, &location);
      [v8 addNonIncrementingCompletion:&v13];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      updatedTabsDuringApplySnapshot = self->_updatedTabsDuringApplySnapshot;
    }

    [(NSMutableSet *)updatedTabsDuringApplySnapshot addObject:changeCopy, v13, v14, v15, v16];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] setWithObject:changeCopy];
    [(_UITabOutlineView *)self _reconfigureItemsInDataSourceForTabs:v12 animated:1];
  }
}

- (void)_tabModel:(id)model didReplaceOldItem:(id)item newItem:(id)newItem
{
  v35[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  newItemCopy = newItem;
  if (([itemCopy _isGroup] & 1) == 0 && !objc_msgSend(newItemCopy, "_isGroup"))
  {
    contentByIdentifier = self->_contentByIdentifier;
    identifier = [itemCopy identifier];
    [(NSMutableDictionary *)contentByIdentifier removeObjectForKey:identifier];

    v11 = self->_contentByIdentifier;
    v12 = [_UITabSidebarContent contentForTab:newItemCopy];
    identifier2 = [newItemCopy identifier];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:identifier2];

    activeTransaction = [(_UITabOutlineView *)self activeTransaction];
    identifier3 = [newItemCopy identifier];
    [activeTransaction replaceTab:newItemCopy forIdentifier:identifier3];

    dataSource = [(_UITabOutlineView *)self dataSource];
    snapshot = [dataSource snapshot];

    v18 = [(_UITabOutlineView *)self _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
    [v18 increment];
    identifier4 = [itemCopy identifier];
    identifier5 = [newItemCopy identifier];
    v21 = identifier4;
    v22 = identifier5;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (!v21 || !v22)
      {

LABEL_12:
        identifier6 = [itemCopy identifier];
        v28 = [snapshot indexOfItemIdentifier:identifier6];

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (([newItemCopy isHidden] & 1) == 0)
          {
            [v18 complete];
            [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
          }

          goto LABEL_17;
        }

        identifier7 = [newItemCopy identifier];
        v34 = identifier7;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        identifier8 = [itemCopy identifier];
        [snapshot insertItemsWithIdentifiers:v30 afterItemWithIdentifier:identifier8];

        identifier9 = [itemCopy identifier];
        v33 = identifier9;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        [snapshot deleteItemsWithIdentifiers:v26];
LABEL_16:

        dataSource2 = [(_UITabOutlineView *)self dataSource];
        [dataSource2 applySnapshot:snapshot animatingDifferences:1];

        [v18 complete];
LABEL_17:

        goto LABEL_18;
      }

      v24 = [v21 isEqual:v22];

      if ((v24 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    identifier9 = [newItemCopy identifier];
    v35[0] = identifier9;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [snapshot reconfigureItemsWithIdentifiers:v26];
    goto LABEL_16;
  }

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
LABEL_18:
}

- (void)_tabModel:(id)model visibilityDidChangeForTab:(id)tab
{
  tabCopy = tab;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
  {
    if (!self->_ignoringSelectionUpdates)
    {
      dataSource = [(_UITabOutlineView *)self dataSource];
      identifier = [tabCopy identifier];
      v8 = [dataSource indexPathForItemIdentifier:identifier];

      collectionView = [(_UITabOutlineView *)self collectionView];
      v10 = [(_UITabOutlineView *)self collectionView:collectionView shouldSelectItemAtIndexPath:v8];

      v11 = [(_UITabModel *)self->_tabModel isTabHidden:tabCopy];
      v12 = 0;
      if (!v11 && v10)
      {
        v12 = v8;
      }

      [(_UITabOutlineView *)self _selectItemAtIndexPath:v12 animated:1 performAction:0];
      activeTransaction = [(_UITabOutlineView *)self activeTransaction];
      [activeTransaction updateTab:tabCopy toHidden:v11];
    }
  }

  else
  {
    [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
    [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
  }
}

- (void)_tabModel:(id)model didChangeSelectedLeaf:(id)leaf previousElement:(id)element
{
  v6 = [(UIView *)self superview:model];
  if (v6)
  {
    v7 = +[UIView areAnimationsEnabled];
  }

  else
  {
    v7 = 0;
  }

  superview = [(UIView *)self superview];

  if (!superview)
  {
    self->_needsScrollToSelectedItemWhenBecomingVisible = 1;
  }

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:v7];
}

- (void)_tabModel:(id)model customizationStoreDidChange:(id)change
{
  collapsedGroupIdentifiers = [change collapsedGroupIdentifiers];
  v6 = [collapsedGroupIdentifiers mutableCopy];
  collapsedGroupIdentifiers = self->_collapsedGroupIdentifiers;
  self->_collapsedGroupIdentifiers = v6;

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
  delegate = [(_UITabOutlineView *)&self->super.super.super.isa delegate];
  [delegate outlineViewDidChangeCustomizationStore:self];
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 58);
    v1 = vars8;
  }

  return WeakRetained;
}

- (BOOL)_showSidebarBarButtonItem
{
  if (self->_sidebarButtonAction)
  {
    return ![(_UITabModel *)self->_tabModel isEditing];
  }

  else
  {
    return 0;
  }
}

- (void)_updateEditBarButtonItem
{
  v56[1] = *MEMORY[0x1E69E9840];
  navigationBar = [(_UITabOutlineView *)self navigationBar];

  if (navigationBar)
  {
    if (self)
    {
      tabModel = self->_tabModel;
    }

    else
    {
      tabModel = 0;
    }

    isEditing = [(_UITabModel *)tabModel isEditing];
    if (self)
    {
      v6 = self->_tabModel;
    }

    else
    {
      v6 = 0;
    }

    isEditable = [(_UITabModel *)v6 isEditable];
    _currentPlatformMetrics = [(_UITabOutlineView *)self _currentPlatformMetrics];
    supportsFloatingSidebar = [_currentPlatformMetrics supportsFloatingSidebar];

    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v11 = sidebar;
    navigationOverflowItems = [(UITabBarControllerSidebar *)v11 navigationOverflowItems];

    LODWORD(v11) = [(_UITabOutlineView *)self _showSidebarBarButtonItem];
    sidebarBarButtonItem = [(_UITabOutlineView *)self sidebarBarButtonItem];
    [sidebarBarButtonItem setHidden:v11 ^ 1];

    sidebarBarButtonItem2 = [(_UITabOutlineView *)self sidebarBarButtonItem];
    v14 = sidebarBarButtonItem2;
    if (supportsFloatingSidebar)
    {
      v55 = sidebarBarButtonItem2;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v16 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v56[0] = sidebarBarButtonItem2;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v15 = MEMORY[0x1E695E0F0];
    }

    if (!isEditing && !isEditable && !navigationOverflowItems)
    {
      goto LABEL_29;
    }

    objc_initWeak(&location, self);
    v37 = _UINSLocalizedStringWithDefaultValue(@"Edit Sidebar", @"Edit Sidebar");
    v17 = [UIImage systemImageNamed:@"checklist"];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __45___UITabOutlineView__updateEditBarButtonItem__block_invoke;
    v40[3] = &unk_1E712C0C8;
    objc_copyWeak(&v41, &location);
    v42 = isEditing;
    v18 = [UIAction actionWithTitle:v37 image:v17 identifier:0 handler:v40];

    if (isEditing)
    {
      v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 primaryAction:v18];
      v20 = v19;
      if (!supportsFloatingSidebar)
      {
        resetBarButtonItem = [(_UITabOutlineView *)self resetBarButtonItem];
        v52 = resetBarButtonItem;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];

        v51 = v20;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        v15 = resetBarButtonItem2 = v15;
        v16 = v28;
LABEL_28:

        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
LABEL_29:
        navigationItem = [(_UITabOutlineView *)self navigationItem];
        [navigationItem setLeftBarButtonItems:v16];

        navigationItem2 = [(_UITabOutlineView *)self navigationItem];
        [navigationItem2 setRightBarButtonItems:v15];

        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __45___UITabOutlineView__updateEditBarButtonItem__block_invoke_2;
        v39[3] = &unk_1E70F3590;
        v39[4] = self;
        [UIView performWithoutAnimation:v39];

        return;
      }

      v54 = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];

      resetBarButtonItem2 = [(_UITabOutlineView *)self resetBarButtonItem];
      v53 = resetBarButtonItem2;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v16 = v21;
    }

    else
    {
      if (!navigationOverflowItems)
      {
        v29 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 primaryAction:v18];
        v20 = v29;
        if (supportsFloatingSidebar)
        {
          v45 = v29;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          v16 = resetBarButtonItem2 = v16;
        }

        else
        {
          v44 = v29;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          v15 = resetBarButtonItem2 = v15;
        }

        goto LABEL_28;
      }

      if (isEditable)
      {
        v48 = v18;
        v49[0] = navigationOverflowItems;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v25 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v24];
        v49[1] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
        v20 = [UIMenu menuWithChildren:v26];
      }

      else
      {
        v50 = navigationOverflowItems;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        v20 = [UIMenu menuWithChildren:v24];
      }

      _currentPlatformMetrics2 = [(_UITabOutlineView *)self _currentPlatformMetrics];
      overflowButtonImageName = [_currentPlatformMetrics2 overflowButtonImageName];
      resetBarButtonItem2 = [UIImage systemImageNamed:overflowButtonImageName];

      v32 = [[UIBarButtonItem alloc] initWithImage:resetBarButtonItem2 menu:v20];
      v33 = v32;
      if (supportsFloatingSidebar)
      {
        sidebarBarButtonItem3 = [(_UITabOutlineView *)self sidebarBarButtonItem];
        v47[0] = sidebarBarButtonItem3;
        v47[1] = v33;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      }

      else
      {
        v46 = v32;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
        sidebarBarButtonItem3 = v15;
      }

      v15 = v33;
    }

    v15 = v23;
    goto LABEL_28;
  }
}

- (void)_performWithoutAffectingSelection:(id)selection
{
  self->_ignoringSelectionUpdates = 1;
  (*(selection + 2))(selection, a2);
  self->_ignoringSelectionUpdates = 0;
}

- (void)_performWithoutAffectingContent:(id)content
{
  self->_ignoringContentUpdates = 1;
  (*(content + 2))(content, a2);
  self->_ignoringContentUpdates = 0;
}

- (void)_performWithWillDisplayTab:(id)tab block:(id)block
{
  objc_storeStrong(&self->_willDisplayTab, tab);
  tabCopy = tab;
  blockCopy = block;
  blockCopy[2](blockCopy, tabCopy);

  willDisplayTab = self->_willDisplayTab;
  self->_willDisplayTab = 0;
}

- (id)activeTransaction
{
  if (self)
  {
    v2 = *(self + 61);
    if (v2)
    {
      return *(v2 + 104);
    }

    else
    {
      return 0;
    }
  }

  return self;
}

- (void)tabModelEditingStateDidChange
{
  if (self)
  {
    if ([*(self + 472) isEditing])
    {
      [self _activateNewSidebarTransaction];
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    else
    {
      activeTransaction = [self activeTransaction];

      if (!activeTransaction)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_tabModelEditingStateDidChange object:self file:@"_UITabOutlineView.m" lineNumber:1858 description:{@"UIKit internal error: Tab outline view should not be exiting edit mode without an active transaction. Model: %@; Outline view: %@", *(self + 472), self}];
      }

      [self _commitCurrentSidebarTransaction];
      v2 = 0;
    }

    v4 = *(self + 616);
    *(self + 616) = v2;
  }
}

- (uint64_t)setAdditionalEditingInsets:(float64_t)insets
{
  if (result)
  {
    v5 = result;
    v6.f64[0] = a2;
    v6.f64[1] = insets;
    v7.f64[0] = a4;
    v7.f64[1] = a5;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(result + 736), v6), vceqq_f64(*(result + 752), v7)))) & 1) == 0)
    {
      *(result + 736) = a2;
      *(result + 744) = insets;
      *(result + 752) = a4;
      *(result + 760) = a5;
      [result _updateEditingInsets];
      result = +[UIView _isInAnimationBlockWithAnimationsEnabled];
      if (result)
      {

        return [v5 layoutIfNeeded];
      }
    }
  }

  return result;
}

- (void)_updateEditingInsets
{
  [(UIView *)self _setSafeAreaInsetsFrozen:0];
  if (self)
  {
    top = self->_additionalEditingInsets.top;
    left = self->_additionalEditingInsets.left;
    bottom = self->_additionalEditingInsets.bottom;
    right = self->_additionalEditingInsets.right;
  }

  else
  {
    left = 0.0;
    bottom = 0.0;
    right = 0.0;
    top = 0.0;
  }

  superview = [(UIView *)self superview];
  if (superview)
  {
    if (left != 0.0 || top != 0.0 || right != 0.0)
    {

LABEL_10:
      superview2 = [(UIView *)self superview];
      [superview2 safeAreaInsets];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [(UIView *)self _setSafeAreaInsetsFrozen:1];
      [(UIView *)self _setSafeAreaInsets:top + v10 updateSubviewsDuringNextLayoutPass:left + v12, bottom + v14, right + v16];
      goto LABEL_11;
    }

    if (bottom != 0.0)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  self->_isNavigationBarSafeAreaDirty = 1;
}

- (void)_activateNewSidebarTransaction
{
  activeTransaction = [(_UITabOutlineView *)self activeTransaction];

  if (activeTransaction)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = currentHandler;
    if (self)
    {
      tabModel = self->_tabModel;
    }

    else
    {
      tabModel = 0;
    }

    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:1940 description:{@"UIKit internal error: Attempting to create a new transaction without while there is already an active transaction. Model: %@; Outline view: %@", tabModel, self}];
  }

  _tabsByIdentifier = [(_UITabOutlineView *)self _tabsByIdentifier];
  v5 = [_UITabSidebarTransaction alloc];
  if (self)
  {
    v6 = [(_UITabSidebarTransaction *)v5 initWithTabs:_tabsByIdentifier sidebar:self->_sidebar];
    sidebar = self->_sidebar;
  }

  else
  {
    v6 = [(_UITabSidebarTransaction *)v5 initWithTabs:_tabsByIdentifier sidebar:0];
    sidebar = 0;
  }

  [(UITabBarControllerSidebar *)sidebar set_activeTransaction:v6];
}

- (void)_commitCurrentSidebarTransaction
{
  activeTransaction = [(_UITabOutlineView *)self activeTransaction];

  if (activeTransaction)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __53___UITabOutlineView__commitCurrentSidebarTransaction__block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [(_UITabOutlineView *)self _performWithoutAffectingContent:v5];
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    [(UITabBarControllerSidebar *)sidebar set_activeTransaction:?];
  }
}

- (id)_tabsByIdentifier
{
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSMutableDictionary count](self->_contentByIdentifier, "count")}];
  contentByIdentifier = self->_contentByIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38___UITabOutlineView__tabsByIdentifier__block_invoke;
  v7[3] = &unk_1E712C0F0;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)contentByIdentifier enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)_updateContinuousSelectionGesture
{
  collectionView = [(_UITabOutlineView *)self collectionView];
  [collectionView contentSize];
  v5 = v4;

  collectionView2 = [(_UITabOutlineView *)self collectionView];
  [collectionView2 frame];
  v8 = v7;
  collectionView3 = [(_UITabOutlineView *)self collectionView];
  [collectionView3 adjustedContentInset];
  v12 = v8 - (v10 + v11);

  v13 = v5 <= v12;
  if (v5 > v12)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = 0.0;
  }

  selectionGestureRecognizer = [(_UITabOutlineView *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setEnabled:v13];

  selectionGestureRecognizer2 = [(_UITabOutlineView *)self selectionGestureRecognizer];
  [selectionGestureRecognizer2 setAllowableMovement:{v14, v14}];
}

- (void)_animateSelection:(id)selection completion:(id)completion
{
  completionCopy = completion;
  selectionCopy = selection;
  _highlightGroupCompletion = [(_UITabOutlineView *)self _highlightGroupCompletion];
  [_highlightGroupCompletion increment];
  v9 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:0.3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50___UITabOutlineView__animateSelection_completion___block_invoke;
  v12[3] = &unk_1E711F7E0;
  v13 = _highlightGroupCompletion;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = _highlightGroupCompletion;
  [UIView _animateUsingSpringBehavior:v9 tracking:0 animations:selectionCopy completion:v12];
}

- (id)_highlightGroupCompletion
{
  v3 = self->_highlightGroupCompletion;
  if (!v3)
  {
    v3 = objc_alloc_init(_UIGroupCompletion);
    [(_UITabOutlineView *)self _setShowLensView:1];
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46___UITabOutlineView__highlightGroupCompletion__block_invoke;
    v5[3] = &unk_1E70F5A28;
    objc_copyWeak(&v6, &location);
    [(_UIGroupCompletion *)v3 addNonIncrementingCompletion:v5];
    objc_storeStrong(&self->_highlightGroupCompletion, v3);
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_setShowLensView:(BOOL)view
{
  viewCopy = view;
  lensView = [(_UITabOutlineView *)self lensView];

  if (lensView)
  {
    if (viewCopy)
    {
      if ([(_UITabOutlineView *)self _isShowingLensView])
      {
LABEL_7:
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __38___UITabOutlineView__setShowLensView___block_invoke;
        v7[3] = &unk_1E70F3590;
        v7[4] = self;
        [UIView animateWithDuration:v7 animations:0.2];
        return;
      }

      traitOverrides = [(UIView *)self traitOverrides];
      [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
    }

    else
    {
      traitOverrides = [(UIView *)self traitOverrides];
      [traitOverrides removeTrait:objc_opt_class()];
    }

    goto LABEL_7;
  }
}

- (BOOL)_isShowingLensView
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

  return v3 == 1;
}

- (void)_updateLensViewFrameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  highlightedIndexPath = [(_UITabOutlineView *)self highlightedIndexPath];
  if (highlightedIndexPath)
  {
    collectionView = [(_UITabOutlineView *)self collectionView];
    v7 = [collectionView cellForItemAtIndexPath:highlightedIndexPath];

    if (v7)
    {
      lensView = [(_UITabOutlineView *)self lensView];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50___UITabOutlineView__updateLensViewFrameAnimated___block_invoke;
      aBlock[3] = &unk_1E70F6228;
      v13 = lensView;
      v14 = v7;
      selfCopy = self;
      v9 = lensView;
      v10 = _Block_copy(aBlock);
      v11 = v10;
      if (animatedCopy)
      {
        [(_UITabOutlineView *)self _animateSelection:v10 completion:0];
      }

      else
      {
        (*(v10 + 2))(v10);
      }
    }
  }
}

- (void)_setHighlightedIndexPath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  lensView = [(_UITabOutlineView *)self lensView];

  if (lensView)
  {
    v8 = self->_highlightedIndexPath;
    v9 = pathCopy;
    v10 = v9;
    if (v8 == v9)
    {

      goto LABEL_10;
    }

    if (v9 && v8)
    {
      v11 = [(NSIndexPath *)v8 isEqual:v9];

      if (v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_highlightedIndexPath, path);
    [(_UITabOutlineView *)self _updateLensViewFrameAnimated:animatedCopy];
  }

LABEL_10:
}

- (void)_selectItemAtIndexPath:(id)path animated:(BOOL)animated performAction:(BOOL)action
{
  actionCopy = action;
  animatedCopy = animated;
  v32[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  collectionView = [(_UITabOutlineView *)self collectionView];
  v10 = collectionView;
  if (!pathCopy)
  {
    indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = [indexPathsForSelectedItems countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(indexPathsForSelectedItems);
          }

          [v10 deselectItemAtIndexPath:*(*(&v26 + 1) + 8 * i) animated:animatedCopy];
        }

        v18 = [indexPathsForSelectedItems countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [(_UITabOutlineView *)self _setHighlightedIndexPath:0 animated:animatedCopy];

    goto LABEL_33;
  }

  if (!actionCopy)
  {
    [collectionView selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
LABEL_19:
    if (![(_UITabOutlineView *)self _isLensActiveOrAnimating])
    {
      [(_UITabOutlineView *)self _setHighlightedIndexPath:pathCopy animated:animatedCopy];
    }

    goto LABEL_33;
  }

  v11 = [(_UITabOutlineView *)self collectionView:collectionView shouldSelectItemAtIndexPath:pathCopy];
  if (v11)
  {
    [v10 selectItemAtIndexPath:pathCopy animated:animatedCopy scrollPosition:0];
  }

  v12 = self->_firstSelectionIndexPath;
  v13 = pathCopy;
  v14 = v13;
  if (v12 == v13)
  {

    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  if (v12)
  {
    v15 = [(NSIndexPath *)v12 isEqual:v13];

    if (v15)
    {
      if (!v11)
      {
        goto LABEL_33;
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  if ([(_UITabOutlineView *)self collectionView:v10 canPerformPrimaryActionForItemAtIndexPath:v14])
  {
    [(_UITabOutlineView *)self collectionView:v10 performPrimaryActionForItemAtIndexPath:v14];
  }

  if ([(_UITabOutlineView *)self _isHeaderIndexPath:v14])
  {
    v21 = [(_UITabOutlineView *)self _tabForIndexPath:v14];
    identifier = [v21 identifier];

    v23 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:identifier];
    if ([v23 isExpanded:identifier])
    {
      v32[0] = identifier;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [v23 collapseItems:v24];
    }

    else
    {
      v31 = identifier;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [v23 expandItems:v24];
    }

    dataSource = [(_UITabOutlineView *)self dataSource];
    [dataSource applySnapshot:v23 toSection:identifier animatingDifferences:1];
  }

  if (v11)
  {
    [(_UITabOutlineView *)self collectionView:v10 didSelectItemAtIndexPath:v14];
  }

LABEL_33:
}

- (void)_handleSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UITabOutlineView *)self _indexPathForGestureRecognizer:?];
  _highlightGroupCompletion = [(_UITabOutlineView *)self _highlightGroupCompletion];
  lensView = [(_UITabOutlineView *)self lensView];
  if ([(_UITabOutlineView *)self _isShowingLensView])
  {
    v7 = 1;
  }

  else
  {
    v7 = ![(_UITabOutlineView *)self _isHeaderIndexPath:v4]&& [(_UITabOutlineView *)self _isActionIndexPath:v4];
  }

  state = [gestureCopy state];
  if ((state - 4) < 2)
  {
    goto LABEL_11;
  }

  if (state == 3)
  {
    [(_UITabOutlineView *)self _selectItemAtIndexPath:v4 animated:v7 performAction:1];
    [(_UITabOutlineView *)self _updateSelectedItemAnimated:v7];
LABEL_11:
    [(_UITabOutlineView *)self _setLensActive:0];
    [_highlightGroupCompletion complete];

    firstSelectionIndexPath = self->_firstSelectionIndexPath;
    self->_firstSelectionIndexPath = 0;

    v4 = 0;
    goto LABEL_12;
  }

  if (state == 1)
  {
    objc_storeStrong(&self->_firstSelectionIndexPath, v4);
    [_highlightGroupCompletion increment];
    [(_UITabOutlineView *)self _setLensActive:1];
  }

LABEL_12:
  [(_UITabOutlineView *)self _setHighlightedIndexPath:v4 animated:v7];
}

- (BOOL)_isLensActiveOrAnimating
{
  lensView = [(_UITabOutlineView *)self lensView];
  v4 = ([lensView isActive] & 1) != 0 || self->_isAnimatingLensActiveState;

  return v4;
}

- (void)_setLensActive:(BOOL)active
{
  self->_isAnimatingLensActiveState = 1;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___UITabOutlineView__setLensActive___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  activeCopy = active;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___UITabOutlineView__setLensActive___block_invoke_2;
  v5[3] = &unk_1E7105398;
  objc_copyWeak(&v6, &location);
  [(_UITabOutlineView *)self _animateSelection:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_indexPathForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  collectionView = [(_UITabOutlineView *)self collectionView];
  [recognizerCopy locationInView:collectionView];
  v7 = v6;

  collectionView2 = [(_UITabOutlineView *)self collectionView];
  [collectionView2 bounds];
  MidX = CGRectGetMidX(v14);

  [collectionView bounds];
  v13.x = MidX;
  v13.y = v7;
  if (CGRectContainsPoint(v15, v13))
  {
    v10 = [collectionView indexPathForItemAtPoint:{MidX, v7}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selectionGestureRecognizer = [(_UITabOutlineView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == beginCopy)
  {
    v7 = [(_UITabOutlineView *)self _indexPathForGestureRecognizer:beginCopy];
    if (v7)
    {
      v6 = ![(_UITabOutlineView *)self isEditing];
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 1;
  }

  return v6;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  selectionGestureRecognizer = [(_UITabOutlineView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == recognizerCopy)
  {
    collectionView = [(_UITabOutlineView *)self collectionView];
    panGestureRecognizer = [collectionView panGestureRecognizer];
    v9 = panGestureRecognizer == gestureRecognizerCopy;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollEdgeAppearance
{
  collectionView = [(_UITabOutlineView *)self collectionView];
  navigationBar = [(_UITabOutlineView *)self navigationBar];
  [navigationBar frame];
  MaxY = CGRectGetMaxY(v15);

  [collectionView contentOffset];
  v6 = fmax(fmin((-v5 - MaxY) / (MaxY + -4.0 - MaxY), 1.0), 0.0);
  navigationItem = [(_UITabOutlineView *)self navigationItem];
  [navigationItem _setManualScrollEdgeAppearanceProgress:v6];

  _bottomToolbar = [(_UITabOutlineView *)self _bottomToolbar];
  if (_bottomToolbar)
  {
    [(UIView *)self->_bottomBarView frame];
    MinY = CGRectGetMinY(v16);
    [collectionView contentSize];
    v11 = v10;
    [collectionView contentOffset];
    [_bottomToolbar _setBackgroundTransitionProgress:{fmax(fmin((v11 - v12 - (MinY + 4.0)) / (MinY - (MinY + 4.0)), 1.0), 0.0)}];
  }
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
  v7 = [(_UITabOutlineView *)self _isHeaderIndexPath:pathCopy];

  if (v7)
  {
    _isSidebarDestination = 0;
  }

  else
  {
    _isSidebarDestination = [v6 _isSidebarDestination];
  }

  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
  {
    if ([v6 allowsHiding])
    {
      v10 = [v6 _isGroup] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }

    v11 = _isSidebarDestination & v10;
  }

  else if (_isSidebarDestination)
  {
    v11 = [(_UITabModel *)self->_tabModel shouldSelectTab:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(_UITabOutlineView *)self _setHighlightedIndexPath:pathCopy animated:1];
  v7 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];

  if ([v7 _isSidebarDestination] && !self->_ignoresSelectionChangeFromFocusUpdate)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61___UITabOutlineView_collectionView_didSelectItemAtIndexPath___block_invoke;
    v8[3] = &unk_1E70F36D0;
    v8[4] = self;
    v9 = v7;
    v10 = a2;
    [(_UITabOutlineView *)self _performWithoutAffectingSelection:v8];
  }
}

- (BOOL)collectionView:(id)view shouldDeselectItemAtIndexPath:(id)path
{
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:path];
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if (-[_UITabModel isEditing](tabModel, "isEditing") && [v5 _isElement])
  {
    allowsHiding = [v5 allowsHiding];
  }

  else
  {
    allowsHiding = 0;
  }

  return allowsHiding;
}

- (void)collectionView:(id)view didDeselectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
  {
    activeTransaction = [(_UITabOutlineView *)self activeTransaction];

    if (!activeTransaction)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:2322 description:@"Cannot edit an item without an active transaction"];
    }

    v9 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    v10 = v9;
    if (v9)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __63___UITabOutlineView_collectionView_didDeselectItemAtIndexPath___block_invoke;
      v12[3] = &unk_1E70F35B8;
      v12[4] = self;
      v13 = v9;
      [(_UITabOutlineView *)self _performWithoutAffectingSelection:v12];
    }
  }
}

- (BOOL)collectionView:(id)view canPerformPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
  {
    v7 = 0;
  }

  else
  {
    v8 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if ([v8 _isAction])
    {
      v7 = 1;
    }

    else
    {
      v9 = [(_UITabOutlineView *)self _actionForIndexPath:pathCopy];
      v7 = v9 != 0;
    }
  }

  return v7;
}

- (void)collectionView:(id)view performPrimaryActionForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UITabOutlineView *)self _actionForIndexPath:?];
  v6 = v5;
  if (v5)
  {
    [v5 performWithSender:0 target:0];
  }

  else
  {
    v7 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if ([v7 _isAction])
    {
      [v7 _performAction];
    }
  }
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(_UITabOutlineView *)self isEditing])
  {
    v6 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if ([v6 allowsHiding])
    {
      _isGroup = 1;
    }

    else
    {
      _isGroup = [v6 _isGroup];
    }
  }

  else
  {
    _isGroup = 1;
  }

  return _isGroup;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)view
{
  if (self->_preferredItemIdentifierForFocusAfterCollapse)
  {
    dataSource = [(_UITabOutlineView *)self dataSource];
    v5 = [dataSource indexPathForItemIdentifier:self->_preferredItemIdentifierForFocusAfterCollapse];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  viewCopy = view;
  nextFocusedIndexPath = [context nextFocusedIndexPath];
  self->_prefersCollectionViewFocused = nextFocusedIndexPath != 0;
  if ([(_UITabOutlineView *)self isEditing]|| !nextFocusedIndexPath)
  {
    self->_ignoresSelectionChangeFromFocusUpdate = 0;
    if (!nextFocusedIndexPath)
    {
      goto LABEL_6;
    }
  }

  else
  {
    indexPathsForSelectedItems = [viewCopy indexPathsForSelectedItems];
    v9 = [indexPathsForSelectedItems containsObject:nextFocusedIndexPath];

    self->_ignoresSelectionChangeFromFocusUpdate = v9;
  }

  preferredItemIdentifierForFocusAfterCollapse = self->_preferredItemIdentifierForFocusAfterCollapse;
  self->_preferredItemIdentifierForFocusAfterCollapse = 0;

LABEL_6:
}

- (void)_adjustScrollViewForKeyboardInfo:(id)info
{
  infoCopy = info;
  window = [(UIView *)self window];

  if (window)
  {
    lastKeyboardAdjustment = self->_lastKeyboardAdjustment;
    collectionView = [(_UITabOutlineView *)self collectionView];
    [collectionView _adjustForAutomaticKeyboardInfo:infoCopy animated:1 lastAdjustment:&lastKeyboardAdjustment];

    self->_lastKeyboardAdjustment = lastKeyboardAdjustment;
  }
}

- (void)_keyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  [(_UITabOutlineView *)self _adjustScrollViewForKeyboardInfo:userInfo];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjuistScrollViewForKeyboardInfo_ object:0];
}

- (void)_keyboardWillHide:(id)hide
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E695DA28];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(_UITabOutlineView *)self performSelector:sel__adjustScrollViewForKeyboardInfo_ withObject:0 afterDelay:v4 inModes:0.0];
}

- (void)_keyboardDidChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  [(_UITabOutlineView *)self _adjustScrollViewForKeyboardInfo:userInfo];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjuistScrollViewForKeyboardInfo_ object:0];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = _UITabOutlineView;
  [(UIView *)&v5 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  self->_ignoresSelectionChangeFromFocusUpdate = 0;
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_prefersCollectionViewFocused)
  {
    collectionView = [(_UITabOutlineView *)self collectionView];
    v6[0] = collectionView;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UITabOutlineView;
    preferredFocusEnvironments = [(UIView *)&v5 preferredFocusEnvironments];
  }

  return preferredFocusEnvironments;
}

- (BOOL)collectionView:(id)view shouldSpringLoadItemAtIndexPath:(id)path withContext:(id)context
{
  pathCopy = path;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
  {
    v8 = 0;
  }

  else
  {
    v9 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if ([v9 isSpringLoaded])
    {
      if ([v9 _isGroup])
      {
        identifier = [v9 identifier];
        v11 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:identifier];

        identifier2 = [v9 identifier];
        LOBYTE(identifier) = [v11 isExpanded:identifier2];

        v8 = identifier ^ 1;
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)hasActiveDrag
{
  if (result)
  {
    collectionView = [result collectionView];
    hasActiveDrag = [collectionView hasActiveDrag];

    return hasActiveDrag;
  }

  return result;
}

- (id)collectionView:(id)view itemsForBeginningDragSession:(id)session atIndexPath:(id)path
{
  sessionCopy = session;
  v8 = MEMORY[0x1E695DF70];
  pathCopy = path;
  v10 = objc_alloc_init(v8);
  v11 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];

  if (![(_UITabOutlineView *)self isEditing])
  {
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v13 = [(UITabBarControllerSidebar *)sidebar _itemsForBeginningDragSession:sessionCopy tab:v11];
    [v10 addObjectsFromArray:v13];
  }

  if (![v10 count] && -[_UITabOutlineView _canDragTab:](self, "_canDragTab:", v11))
  {
    v14 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v15 = [[UIDragItem alloc] initWithItemProvider:v14];
    [(UIDragItem *)v15 setLocalObject:v11];
    [v10 addObject:v15];
    [sessionCopy setLocalContext:self];
  }

  return v10;
}

- (id)collectionView:(id)view itemsForAddingToDragSession:(id)session atIndexPath:(id)path point:(CGPoint)point
{
  sessionCopy = session;
  pathCopy = path;
  if (-[_UITabOutlineView isEditing](self, "isEditing") || ([sessionCopy localContext], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == self))
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v11 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v13 = [(UITabBarControllerSidebar *)sidebar _itemsForAddingToDragSession:sessionCopy tab:v11];
  }

  return v13;
}

- (BOOL)collectionView:(id)view dragSessionIsRestrictedToDraggingApplication:(id)application
{
  localContext = [application localContext];
  LOBYTE(self) = localContext == self;

  return self;
}

- (void)collectionView:(id)view dragSessionWillBegin:(id)begin
{
  beginCopy = begin;
  localContext = [beginCopy localContext];

  if (localContext == self)
  {
    objc_storeStrong(&self->_activeDragSession, begin);
  }
}

- (void)collectionView:(id)view dragSessionDidEnd:(id)end
{
  activeDragSession = self->_activeDragSession;
  self->_activeDragSession = 0;
}

- (id)_collectionView:(id)view dragSessionPropertiesForSession:(id)session
{
  sessionCopy = session;
  localContext = [sessionCopy localContext];

  if (localContext == self)
  {
    v8 = objc_opt_new();
    [v8 set_supportsSystemDrag:0];
  }

  else
  {
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v8 = [(UITabBarControllerSidebar *)sidebar _sessionPropertiesForDragSession:sessionCopy];
  }

  return v8;
}

- (void)collectionView:(id)view dropSessionDidEnter:(id)enter
{
  enterCopy = enter;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if ([(_UITabModel *)tabModel isEditing])
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
LABEL_9:

        goto LABEL_10;
      }

      items2 = [firstObject localObject];
      previewProvider = [firstObject previewProvider];

      if (previewProvider)
      {
        [firstObject setPreviewProvider:0];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)collectionView:(id)view dropSessionDidEnd:(id)end
{
  endCopy = end;
  _tabBarController = [(_UITabOutlineView *)self _tabBarController];
  [(UITabBarController *)_tabBarController _tabDropSessionDidUpdate:endCopy withDestinationTab:0];
}

- (id)collectionView:(id)view targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)path atCurrentIndexPath:(id)indexPath toProposedIndexPath:(id)proposedIndexPath
{
  pathCopy = path;
  proposedIndexPathCopy = proposedIndexPath;
  currentDropContext = [(_UITabOutlineView *)self currentDropContext];

  if (currentDropContext)
  {
    currentDropContext2 = [(_UITabOutlineView *)self currentDropContext];
    proposedIndexPath = [currentDropContext2 proposedIndexPath];
  }

  else
  {
    currentDropContext2 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    if ([(_UITabOutlineView *)self _canMoveTab:currentDropContext2 toDestinationIndexPath:proposedIndexPathCopy])
    {
      v13 = proposedIndexPathCopy;
    }

    else
    {
      v13 = pathCopy;
    }

    proposedIndexPath = v13;
  }

  v14 = proposedIndexPath;

  return v14;
}

- (id)collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  updateCopy = update;
  pathCopy = path;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  isEditing = [(_UITabModel *)tabModel isEditing];
  if (pathCopy)
  {
    localDragSession = [updateCopy localDragSession];
    if (localDragSession)
    {
      localDragSession2 = [updateCopy localDragSession];
      if (self)
      {
        activeDragSession = self->_activeDragSession;
      }

      else
      {
        activeDragSession = 0;
      }

      v14 = localDragSession2 == activeDragSession;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!isEditing && !v14)
  {
    v20 = [(_UITabOutlineView *)self _hitRegionForDropSession:updateCopy destinationIndexPath:pathCopy];
    goto LABEL_22;
  }

  items = [updateCopy items];
  firstObject = [items firstObject];

  localDragSession3 = [updateCopy localDragSession];
  localContext = [localDragSession3 localContext];

  if (localContext != self)
  {
    goto LABEL_13;
  }

  items2 = [updateCopy items];
  if ([items2 count] != 1)
  {
    goto LABEL_19;
  }

  localObject = [firstObject localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_21;
  }

  items2 = [firstObject localObject];
  if ([(_UITabOutlineView *)self _canMoveTab:items2 toDestinationIndexPath:pathCopy])
  {
    v19 = [[UICollectionViewDropProposal alloc] initWithDropOperation:3 intent:1];
  }

  else
  {
LABEL_19:
    v19 = 0;
  }

LABEL_21:
  v20 = [(_UITabOutlineView *)self _hitRegionForDropSession:updateCopy destinationIndexPath:pathCopy];
  if (v19)
  {
    goto LABEL_51;
  }

LABEL_22:
  v24 = v20;
  if ((v20 | 2) == 3)
  {
    v25 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    parent = [v25 parent];
    v27 = parent;
    if (parent)
    {
      _filteredDisplayOrderIdentifiers = [parent _filteredDisplayOrderIdentifiers];
      identifier = [v25 identifier];
      v30 = [_filteredDisplayOrderIdentifiers indexOfObject:identifier];

      v31 = pathCopy;
      v32 = v31;
      if (v24 == 3)
      {
        v33 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v31 inSection:{"item") + 1, objc_msgSend(v31, "section")}];

        ++v30;
        v32 = v33;
      }

      if (self)
      {
        sidebar = self->_sidebar;
      }

      else
      {
        sidebar = 0;
      }

      v35 = [(UITabBarControllerSidebar *)sidebar _operationForInsertingItemsFromSession:updateCopy intoTabGroup:v27 atIndex:v30];
      if (v35)
      {
        v36 = v35;
        v19 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v35 intent:1];
        if (v36 != 1)
        {
          v37 = [_UITabSidebarDropContext contextWithGroup:v27 proposedIndexPath:v32 insertionIndex:v30];
          currentDropContext = self->_currentDropContext;
          self->_currentDropContext = v37;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v19 != 0 || isEditing)
  {
    goto LABEL_49;
  }

  if (!pathCopy)
  {
    v40 = 0;
LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

  v39 = [(_UITabOutlineView *)self _sidebarContentForIndexPath:pathCopy];
  v40 = v39;
  if (!v39)
  {
    goto LABEL_47;
  }

  v41 = [v39 tab];

  if (v41)
  {
    _tabBarController = [(_UITabOutlineView *)self _tabBarController];
    v43 = [v40 tab];
    v44 = [(UITabBarController *)_tabBarController _tab:v43 operationForAcceptingItemsFromDropSession:updateCopy];

    _tabBarController2 = [(_UITabOutlineView *)self _tabBarController];
    group = [v40 tab];
    [(UITabBarController *)_tabBarController2 _tabDropSessionDidUpdate:updateCopy withDestinationTab:group];
  }

  else
  {
    v47 = self ? self->_sidebar : 0;
    v48 = v47;
    _tabBarController2 = [v40 action];
    group = [v40 group];
    v44 = [(UITabBarControllerSidebar *)v48 _sidebarAction:_tabBarController2 group:group operationForAcceptingItemsFromDropSession:updateCopy];
  }

  if (!v44)
  {
    goto LABEL_47;
  }

  v19 = [[UICollectionViewDropProposal alloc] initWithDropOperation:v44 intent:2];
LABEL_48:

LABEL_49:
  if (!v19)
  {
    v19 = [[UICollectionViewDropProposal alloc] initWithDropOperation:0];
  }

LABEL_51:

  return v19;
}

- (void)collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v54 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  currentDropContext = [(_UITabOutlineView *)self currentDropContext];
  activeTabGroup = [currentDropContext activeTabGroup];

  if (activeTabGroup)
  {
    proposedIndexPath = [currentDropContext proposedIndexPath];
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v10 = sidebar;
    session = [coordinatorCopy session];
    activeTabGroup2 = [currentDropContext activeTabGroup];
    -[UITabBarControllerSidebar _insertItemsFromSession:intoTabGroup:atIndex:](v10, session, activeTabGroup2, [currentDropContext insertionIndex]);

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    session2 = [coordinatorCopy session];
    items = [session2 items];

    v15 = [items countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v49;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v49 != v17)
          {
            objc_enumerationMutation(items);
          }

          v19 = [coordinatorCopy dropItem:*(*(&v48 + 1) + 8 * i) toItemAtIndexPath:proposedIndexPath];
        }

        v16 = [items countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v16);
    }

    [(_UITabOutlineView *)self setCurrentDropContext:0];
LABEL_12:

    goto LABEL_17;
  }

  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if (![(_UITabModel *)tabModel isEditing])
  {
    proposal = [coordinatorCopy proposal];
    intent = [proposal intent];

    if (intent != 1)
    {
      proposedIndexPath = [coordinatorCopy destinationIndexPath];
      if (proposedIndexPath)
      {
        collectionView = [(_UITabOutlineView *)self collectionView];
        v24 = [collectionView cellForItemAtIndexPath:proposedIndexPath];

        session3 = [coordinatorCopy session];
        [session3 locationInView:v24];
        v27 = v26;
        v29 = v28;

        v30 = [(_UITabOutlineView *)self _sidebarContentForIndexPath:proposedIndexPath];
        v31 = [v30 tab];

        if (v31)
        {
          _tabBarController = [(_UITabOutlineView *)self _tabBarController];
          group = [v30 tab];
          session4 = [coordinatorCopy session];
          [(UITabBarController *)_tabBarController _tab:group acceptItemsFromDropSession:session4];
        }

        else
        {
          if (self)
          {
            v35 = self->_sidebar;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;
          _tabBarController = [v30 action];
          group = [v30 group];
          session4 = [coordinatorCopy session];
          [(UITabBarControllerSidebar *)v36 _sidebarAction:_tabBarController group:group acceptItemsFromDropSession:session4];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        session5 = [coordinatorCopy session];
        items2 = [session5 items];

        v39 = [items2 countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v45;
          do
          {
            for (j = 0; j != v40; ++j)
            {
              if (*v45 != v41)
              {
                objc_enumerationMutation(items2);
              }

              v43 = [coordinatorCopy dropItem:*(*(&v44 + 1) + 8 * j) intoItemAtIndexPath:proposedIndexPath rect:{v27, v29, 0.0, 0.0}];
            }

            v40 = [items2 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v40);
        }
      }

      goto LABEL_12;
    }
  }

LABEL_17:
}

- (int64_t)_hitRegionForDropSession:(id)session destinationIndexPath:(id)path
{
  if (!path)
  {
    return 0;
  }

  pathCopy = path;
  sessionCopy = session;
  collectionView = [(_UITabOutlineView *)self collectionView];
  v9 = [collectionView cellForItemAtIndexPath:pathCopy];

  [sessionCopy locationInView:v9];
  v11 = v10;
  v13 = v12;

  [v9 bounds];
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v18 = CGRectGetHeight(v28) * 0.2;
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v30 = CGRectInset(v29, 0.0, v18);
    v19 = v30.origin.x;
    v20 = v30.origin.y;
    v21 = v30.size.width;
    v22 = v30.size.height;
    v26.x = v11;
    v26.y = v13;
    if (CGRectContainsPoint(v30, v26))
    {
      v23 = 2;
    }

    else
    {
      v31.origin.x = v19;
      v31.origin.y = v20;
      v31.size.width = v21;
      v31.size.height = v22;
      if (CGRectGetMinY(v31) >= v13)
      {
        v23 = 1;
      }

      else
      {
        v23 = 3;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  pathsCopy = paths;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if (-[_UITabModel isEditing](tabModel, "isEditing") || [pathsCopy count] != 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = [pathsCopy objectAtIndex:0];
    v9 = [(_UITabOutlineView *)self _tabForIndexPath:v8];
    if (v9)
    {
      if (self)
      {
        sidebar = self->_sidebar;
      }

      else
      {
        sidebar = 0;
      }

      v11 = [(UITabBarControllerSidebar *)sidebar _contextMenuConfigurationForTab:v9];
      [v11 _setTab:v9];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)collectionView:(id)view willPerformPreviewActionForMenuWithConfiguration:(id)configuration animator:(id)animator
{
  configurationCopy = configuration;
  animatorCopy = animator;
  _tab = [configurationCopy _tab];
  v10 = _tab;
  if (_tab)
  {
    if ([_tab isEnabled])
    {
      dataSource = [(_UITabOutlineView *)self dataSource];
      _tab2 = [configurationCopy _tab];
      identifier = [_tab2 identifier];
      v14 = [dataSource indexPathForItemIdentifier:identifier];

      if (v14)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __94___UITabOutlineView_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
        v16[3] = &unk_1E70F35B8;
        v16[4] = self;
        v17 = v14;
        v15 = v14;
        [animatorCopy addAnimations:v16];
      }
    }

    else
    {
      [animatorCopy setPreferredCommitStyle:0];
    }
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = cellCopy;
    v10 = v9;
    if (v9)
    {
      v11 = v9[110];
      v12 = v11;
      if (v11)
      {
        self->_didUpdateWillDisplayTab = 0;
        _tab = [v11 _tab];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __71___UITabOutlineView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
        v14[3] = &unk_1E712C118;
        v14[4] = self;
        v15 = v10;
        v16 = v15;
        v17 = pathCopy;
        [(_UITabOutlineView *)self _performWithWillDisplayTab:_tab block:v14];
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

- (void)collectionView:(id)view didEndDisplayingCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = cellCopy;
  if (isKindOfClass)
  {
    if (cellCopy)
    {
      v8 = cellCopy[110];
      if (v8)
      {
        if (self)
        {
          sidebar = self->_sidebar;
        }

        else
        {
          sidebar = 0;
        }

        v10 = sidebar;
        _tab = [v8 _tab];
        [(UITabBarControllerSidebar *)v10 _didEndDisplayingTab:_tab];
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = cellCopy;
  }
}

- (BOOL)_canMoveTab:(id)tab toDestinationIndexPath:(id)path
{
  if (path)
  {
    pathCopy = path;
    tabCopy = tab;
    v8 = [(_UITabOutlineView *)self _tabForIndexPath:pathCopy];
    v9 = [(_UITabOutlineView *)self _isHeaderIndexPath:pathCopy];

    v10 = !v9;
    LODWORD(pathCopy) = [v8 _canBeReordered];
    _parentGroup = [v8 _parentGroup];
    _parentGroup2 = [tabCopy _parentGroup];

    v13 = (_parentGroup == _parentGroup2) & ~[v8 _isAction] & pathCopy & v10;
    dataSource = [(_UITabOutlineView *)self dataSource];
    identifier = [v8 identifier];
    v16 = [dataSource indexPathForItemIdentifier:identifier];

    if (self && (v17 = self->_displayedGroup) != 0)
    {
    }

    else
    {
      LOBYTE(v13) = [v16 section] != 0 && v13;
    }
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

@end