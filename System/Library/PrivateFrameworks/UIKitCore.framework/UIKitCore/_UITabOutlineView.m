@interface _UITabOutlineView
- (BOOL)_canDragTab:(id)a3;
- (BOOL)_canMoveTab:(id)a3 toDestinationIndexPath:(id)a4;
- (BOOL)_hasCustomizablePlacementForTab:(id)a3;
- (BOOL)_isActionIndexPath:(id)a3;
- (BOOL)_isHeaderIndexPath:(id)a3;
- (BOOL)_isLensActiveOrAnimating;
- (BOOL)_isShowingLensView;
- (BOOL)_showSidebarBarButtonItem;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 dragSessionIsRestrictedToDraggingApplication:(id)a4;
- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5;
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CACornerRadii)contentCornerRadii;
- (CGPoint)sidebarButtonOrigin;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_UIShadowProperties)shadowProperties;
- (id)_actionForIndexPath:(id)a3;
- (id)_bottomToolbar;
- (id)_collectionView:(id)a3 dragSessionPropertiesForSession:(id)a4;
- (id)_currentPlatformMetrics;
- (id)_currentSidebarImage;
- (id)_dataSourceUpdateGroupCompletionCreateIfNeeded:(BOOL)a3;
- (id)_existingSectionSnapshotForTabIdentifier:(id)a3;
- (id)_footerContentConfiguration;
- (id)_headerContentConfiguration;
- (id)_highlightGroupCompletion;
- (id)_indexPathForGestureRecognizer:(id)a3;
- (id)_leadingSwipeActionsConfigurationForItemAtIndexPath:(id)a3;
- (id)_sidebarContentForIndexPath:(id)a3;
- (id)_tabBarController;
- (id)_tabForIndexPath:(id)a3;
- (id)_tabsByIdentifier;
- (id)_trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a3;
- (id)activeTransaction;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6;
- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5;
- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6;
- (id)delegate;
- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3;
- (id)initWithSidebar:(id *)a1;
- (id)preferredFocusEnvironments;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3;
- (int64_t)_hitRegionForDropSession:(id)a3 destinationIndexPath:(id)a4;
- (int64_t)_indentationLevelForItemIdentifier:(id)a3 indexPath:(id)a4;
- (uint64_t)makeFirstResponderForTab:(void *)a1;
- (uint64_t)setAdditionalEditingInsets:(float64_t)a3;
- (uint64_t)setEditing:(uint64_t)a3 animated:;
- (uint64_t)style;
- (void)_activateNewSidebarTransaction;
- (void)_adjustScrollViewForKeyboardInfo:(id)a3;
- (void)_animateSelection:(id)a3 completion:(id)a4;
- (void)_commitCurrentSidebarTransaction;
- (void)_configureShadowView;
- (void)_createViewHierarchy;
- (void)_handleSelectionGesture:(id)a3;
- (void)_keyboardDidChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_performWithWillDisplayTab:(id)a3 block:(id)a4;
- (void)_performWithoutAffectingContent:(id)a3;
- (void)_performWithoutAffectingSelection:(id)a3;
- (void)_reconfigureItemsInDataSourceForTabs:(id)a3 animated:(BOOL)a4;
- (void)_reloadDataSourceSnapshotAnimated:(BOOL)a3;
- (void)_resetCustomization;
- (void)_selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 performAction:(BOOL)a5;
- (void)_setHighlightedIndexPath:(id)a3 animated:(BOOL)a4;
- (void)_setLensActive:(BOOL)a3;
- (void)_setShowLensView:(BOOL)a3;
- (void)_tabModel:(id)a3 customizationStoreDidChange:(id)a4;
- (void)_tabModel:(id)a3 didChangeSelectedLeaf:(id)a4 previousElement:(id)a5;
- (void)_tabModel:(id)a3 didReplaceOldItem:(id)a4 newItem:(id)a5;
- (void)_tabModel:(id)a3 tabContentDidChange:(id)a4;
- (void)_tabModel:(id)a3 visibilityDidChangeForTab:(id)a4;
- (void)_tabModelDidReload:(id)a3;
- (void)_updateBackgroundEffects;
- (void)_updateConfigurationForCell:(id)a3 inState:(id)a4 content:(id)a5 indexPath:(id)a6;
- (void)_updateContinuousSelectionGesture;
- (void)_updateEditBarButtonItem;
- (void)_updateEditingInsets;
- (void)_updateLensViewFrameAnimated:(BOOL)a3;
- (void)_updateScrollEdgeAppearance;
- (void)_updateSelectedItemAnimated:(BOOL)a3;
- (void)_updateSidebarStyle;
- (void)_updateSnapshot:(id)a3 usingNode:(id)a4;
- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4;
- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4;
- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5;
- (void)didMoveToSuperview;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)footerContentConfigurationDidChange:(id *)a1;
- (void)hasActiveDrag;
- (void)headerContentConfigurationDidChange:(id *)a1;
- (void)layoutSubviews;
- (void)prepareForTransitionToVisibility:(BOOL)a3;
- (void)reconfigureItemForTab:(void *)a1;
- (void)safeAreaInsetsDidChange;
- (void)scrollToTarget:(uint64_t)a3 animated:;
- (void)setDisplayedGroup:(uint64_t)a1;
- (void)setOverrideBackgroundEffect:(id *)a1;
- (void)setPreferredStyle:(void *)result;
- (void)setSidebarButtonAction:(id *)a1;
- (void)setTitle:(id *)a1;
- (void)setTransitionsToTabBar:(uint64_t)a1;
- (void)tabModelEditingStateDidChange;
- (void)updateBottomBarView;
- (void)updateCornerConfiguration;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation _UITabOutlineView

- (void)updateBottomBarView
{
  if (a1)
  {
    v2 = [a1 _bottomToolbar];
    [v2 _setItemsDidChangeBlock:0];

    v3 = *(a1 + 664);
    if (v3)
    {
      [v3 removeInteraction:*(a1 + 728)];
      [*(a1 + 664) removeFromSuperview];
      v4 = *(a1 + 664);
      *(a1 + 664) = 0;

      [a1 setNeedsLayout];
    }

    v5 = *(a1 + 488);
    v6 = [(_UICollectionLayoutAuxillaryItemSolver *)v5 supplementaryFrames];

    if (v6)
    {
      objc_initWeak(&location, a1);
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __40___UITabOutlineView_updateBottomBarView__block_invoke;
      v23 = &unk_1E70F5A28;
      objc_copyWeak(&v24, &location);
      v7 = _Block_copy(&v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v6;
        v9 = [a1 _defaultBarBackdropGroupName];
        [v8 _setBackdropViewLayerGroupName:v9];

        [v8 _setItemsDidChangeBlock:v7];
        *(a1 + 412) = 1;
      }

      else
      {
        *(a1 + 412) = 0;
      }

      v11 = [[_UITabSidebarBottomBarWrapperView alloc] initWithView:v6 intrinsicContentSizeInvalidationHandler:v7];
      v12 = *(a1 + 664);
      *(a1 + 664) = v11;

      v13 = [a1 backgroundView];
      v14 = [v13 contentView];
      [v14 addSubview:*(a1 + 664)];

      [a1 setNeedsLayout];
      v15 = *(a1 + 728);
      if (!v15)
      {
        v16 = [_UIScrollPocketContainerInteraction alloc];
        v17 = [a1 collectionView];
        v18 = [(_UIScrollPocketContainerInteraction *)v16 initWithScrollView:v17 edge:4];
        v19 = *(a1 + 728);
        *(a1 + 728) = v18;

        v15 = *(a1 + 728);
      }

      [*(a1 + 664) addInteraction:{v15, v20, v21, v22, v23}];

      objc_destroyWeak(&v24);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = *(a1 + 728);
      *(a1 + 728) = 0;
    }
  }
}

- (void)updateCornerConfiguration
{
  v2 = self;
  sub_1891EF4CC();
}

- (id)initWithSidebar:(id *)a1
{
  v24[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_11;
  }

  v21.receiver = a1;
  v21.super_class = _UITabOutlineView;
  a1 = objc_msgSendSuper2(&v21, sel_initWithFrame_, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  if (!a1)
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

  objc_storeStrong(a1 + 59, v6);
  a1[61] = v3;
  *(a1 + 449) = 1;
  *(a1 + 448) = 0;
  v8 = [(UIView *)a1 _internalTraitOverrides];
  [v8 _setNSIntegerValue:1 forTraitToken:0x1EFE32590];

  v9 = [(UIView *)a1 _internalTraitOverrides];
  [v9 _setNSIntegerValue:2 forTraitToken:0x1EFE32560];

  v10 = [(UIView *)a1 _internalTraitOverrides];
  v11 = objc_opt_self();
  [v10 setNSIntegerValue:1 forTrait:v11];

  [a1 _createViewHierarchy];
  v24[0] = 0x1EFE323E0;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v13 = [a1 _registerForTraitTokenChanges:v12 withTarget:a1 action:sel__displayScaleTraitChanged];

  v23 = 0x1EFE323B0;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v15 = [a1 _registerForTraitTokenChanges:v14 withTarget:a1 action:sel__userInterfaceStyleTraitChanged];

  v22 = 0x1EFE323C8;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v17 = [a1 _registerForTraitTokenChanges:v16 withTarget:a1 action:sel__updateEditBarButtonItem];

  [v7 addObserver:a1];
  v18 = [v7 tabItems];
  v19 = [v18 count];

  if (v19)
  {
    [a1 _reloadDataSourceSnapshotAnimated:0];
    [a1 _updateSelectedItemAnimated:0];
  }

  if ([v7 isEditing])
  {
    [(_UITabOutlineView *)a1 setEditing:0 animated:?];
  }

LABEL_11:
  return a1;
}

- (uint64_t)setEditing:(uint64_t)a3 animated:
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
      [v4 _reloadDataSourceSnapshotAnimated:a3];
      v7 = [v4 collectionView];
      [v7 setSelectionFollowsFocus:a2 ^ 1];

      if (a3)
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

      v8 = [v4 bottomBarView];
      [v8 setHidden:a2];

      [v4 _updateSelectedItemAnimated:a3];
      return [v4 _updateEditingInsets];
    }
  }

  return result;
}

- (void)prepareForTransitionToVisibility:(BOOL)a3
{
  self->_isInTransitionAnimation = 1;
  if (a3)
  {
    if (self->_needsScrollToSelectedItemWhenBecomingVisible && ![(_UITabOutlineView *)self isEditing])
    {
      v4 = [(_UITabOutlineView *)self collectionView];
      v5 = [v4 indexPathsForSelectedItems];
      v6 = [v5 firstObject];

      if (v6)
      {
        v7 = [(_UITabOutlineView *)self collectionView];
        [v7 scrollToItemAtIndexPath:v6 atScrollPosition:0 animated:0];
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

  v5 = [(CACornerRadii *)self layer];
  if (v5)
  {
    v6 = v5;
    [v5 cornerRadii];
    v5 = v6;
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
  v3 = [(_UITabOutlineView *)self navigationItem];
  v4 = [v3 leftBarButtonItem];
  [v4 frameInView:self];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setOverrideBackgroundEffect:(id *)a1
{
  v4 = a2;
  if (a1 && a1[66] != v4)
  {
    v5 = v4;
    objc_storeStrong(a1 + 66, a2);
    [a1 _updateBackgroundEffects];
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
  v2 = [(_UITabOutlineView *)self shadowView];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 416);
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
  v66 = [(_UITabOutlineView *)self _currentPlatformMetrics];
  v4 = [v66 sidebarPrefersMacAppearance];
  v5 = [v66 supportsFloatingSidebar];
  v6 = objc_alloc_init(_UIVisualEffectBackdropView);
  [(_UIVisualEffectBackdropView *)v6 setRenderMode:1];
  [(UIView *)self addSubview:v6];
  v63 = v6;
  objc_storeStrong(&self->_backgroundCaptureView, v6);
  if (v5 & 1 | ((v4 & 1) == 0))
  {
    v7 = objc_alloc_init(_UIDuoShadowView);
    shadowView = self->_shadowView;
    self->_shadowView = v7;
    v9 = v7;

    [(UIView *)self addSubview:v9];
  }

  v10 = [[UIVisualEffectView alloc] initWithEffect:0];
  v11 = [v66 sidebarBackgroundEffects];
  [(UIVisualEffectView *)v10 setBackgroundEffects:v11];

  v12 = [(UIVisualEffectView *)v10 contentView];
  [v12 setClipsToBounds:1];

  [(UIVisualEffectView *)v10 _setCaptureView:v63];
  [(UIView *)self addSubview:v10];
  objc_storeStrong(&self->_backgroundView, v10);
  [(_UITabOutlineView *)self _updateSidebarStyle];
  if (v4)
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
    v15 = [(_UITabOutlineView *)self _defaultBarBackdropGroupName];
    [(UINavigationBar *)obj _setBackdropViewLayerGroupName:v15];

    [(UINavigationBar *)obj _setBarPosition:3];
    v16 = self->_wantsHostedTabBarMetricsForNavigationBar && self->_resolvedStyle == 0;
    [(UINavigationBar *)obj _setWantsHostedTabBarMetrics:v16];
    v94[0] = v13;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:1];
    [(UINavigationBar *)obj setItems:v17];

    v18 = [(UIVisualEffectView *)v10 contentView];
    [v18 addSubview:obj];

    objc_storeStrong(&self->_navigationBar, obj);
  }

  [(UIView *)self setPreservesSuperviewLayoutMargins:1];
  [(UIView *)self setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  [(UIView *)v10 setPreservesSuperviewLayoutMargins:1];
  [(UIView *)v10 setLayoutMargins:0.0, 0.0, 0.0, 0.0];
  v19 = [(UIVisualEffectView *)v10 contentView];
  [v19 setPreservesSuperviewLayoutMargins:1];

  v20 = [(UIVisualEffectView *)v10 contentView];
  [v20 setLayoutMargins:{0.0, 0.0, 0.0, 0.0}];

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
  v25 = [(UIVisualEffectView *)v10 contentView];
  if (obj)
  {
    [v25 insertSubview:v23 belowSubview:self->_navigationBar];
  }

  else
  {
    [v25 addSubview:v23];
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
  v34 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [v34 setCanReorderItemHandler:v76];

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_12;
  v74[3] = &unk_1E712C058;
  objc_copyWeak(v75, &location);
  v75[1] = a2;
  v35 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [v35 setWillReorderHandler:v74];

  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_13;
  v72[3] = &unk_1E712C058;
  objc_copyWeak(v73, &location);
  v73[1] = a2;
  v36 = [(UICollectionViewDiffableDataSource *)self->_dataSource reorderingHandlers];
  [v36 setDidReorderHandler:v72];

  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  collapsedGroupIdentifiers = self->_collapsedGroupIdentifiers;
  self->_collapsedGroupIdentifiers = v37;

  v39 = self->_tabModel;
  v40 = [(_UITabModel *)v39 customizationStore];
  v64 = [v40 collapsedGroupIdentifiers];

  if ([v64 count])
  {
    [(NSMutableSet *)self->_collapsedGroupIdentifiers unionSet:v64];
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_14;
  v70[3] = &unk_1E712C080;
  objc_copyWeak(&v71, &location);
  v41 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [v41 setWillExpandItemHandler:v70];

  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = __41___UITabOutlineView__createViewHierarchy__block_invoke_16;
  v68[3] = &unk_1E712C080;
  objc_copyWeak(&v69, &location);
  v42 = [(UICollectionViewDiffableDataSource *)self->_dataSource sectionSnapshotHandlers];
  [v42 setWillCollapseItemHandler:v68];

  v61 = [(_UITabOutlineView *)self _currentSidebarImage];
  v43 = [[UIBarButtonItem alloc] initWithImage:v61 style:0 target:0 action:0];
  [(UIBarButtonItem *)v43 setSpringLoaded:1];
  objc_storeStrong(&self->_sidebarBarButtonItem, v43);
  v44 = _UINSLocalizedStringWithDefaultValue(@"Reset", @"Reset");
  v45 = [[UIBarButtonItem alloc] initWithTitle:v44 style:0 target:self action:sel__resetCustomization];
  objc_storeStrong(&self->_resetBarButtonItem, v45);
  [(_UITabOutlineView *)self _updateEditBarButtonItem];
  if ([v66 sidebarSupportsAnimatedSelections])
  {
    v46 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectionGesture_];
    [(UIGestureRecognizer *)v46 setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)v46 setDelegate:self];
    [(UIView *)self addGestureRecognizer:v46];
    objc_storeStrong(&self->_selectionGestureRecognizer, v46);
    v47 = objc_opt_new();
    v48 = [(UIVisualEffectView *)v10 contentView];
    [(_UITabSidebarLensView *)v47 setLiftedContainerView:v48];

    v49 = [(UIVisualEffectView *)v10 contentView];
    [v49 addSubview:v47];

    lensView = self->_lensView;
    self->_lensView = v47;
  }

  v51 = [MEMORY[0x1E696AD88] defaultCenter];
  v52 = [(UIView *)self _screen];
  [v51 addObserver:self selector:sel__keyboardWillShow_ name:@"UIKeyboardPrivateWillShowNotification" object:v52];
  [v51 addObserver:self selector:sel__keyboardWillHide_ name:@"UIKeyboardPrivateWillHideNotification" object:v52];
  [v51 addObserver:self selector:sel__keyboardDidChangeFrame_ name:@"UIKeyboardPrivateDidChangeFrameNotification" object:v52];
  if (obj)
  {
    v53 = [_UIScrollPocketContainerInteraction alloc];
    v54 = [(_UITabOutlineView *)self collectionView];
    v55 = [(_UIScrollPocketContainerInteraction *)v53 initWithScrollView:v54 edge:1];
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
  v2 = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([v2 userInterfaceIdiom]);

  return v3;
}

- (void)_configureShadowView
{
  if (self->_shadowView)
  {
    v8 = [(_UITabOutlineView *)self _currentPlatformMetrics];
    v3 = [(UIView *)self traitCollection];
    if (_UISolariumEnabled())
    {
      v4 = 0;
    }

    else
    {
      v4 = objc_opt_new();
      [v4 setRadius:0.0];
      [v3 displayScale];
      v5 = 1.0;
      [v4 setOffset:{1.0 / v6, 0.0}];
      if ([v3 userInterfaceStyle] == 2)
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
    v4 = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v3, 0}];
  }

  else
  {
LABEL_6:
    v4 = [(_UITabOutlineView *)self _currentPlatformMetrics];
    v5 = [v4 sidebarBackgroundEffects];
  }

  v7 = v5;

LABEL_8:
  v6 = [(_UITabOutlineView *)self backgroundView];
  [v6 setBackgroundEffects:v7];
}

- (void)_resetCustomization
{
  v3 = [(_UITabOutlineView *)self activeTransaction];
  if (self)
  {
    v4 = [(_UITabModel *)self->_tabModel tabItems];
    [v3 resetCustomizationForTabs:v4];

    tabModel = self->_tabModel;
  }

  else
  {
    v7 = [0 tabItems];
    [v3 resetCustomizationForTabs:v7];

    tabModel = 0;
  }

  v6 = [(_UITabModel *)tabModel customizationStore];
  [v6 reset];

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
}

- (void)_updateConfigurationForCell:(id)a3 inState:(id)a4 content:(id)a5 indexPath:(id)a6
{
  v34 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v34;
  if (v34)
  {
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_13:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:768 description:{@"Invalid parameter not satisfying: %@", @"state != nil"}];

    v14 = v34;
    if (!v34)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:767 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

  v14 = 0;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (!v14)
  {
LABEL_14:
    v17 = 0;
LABEL_15:
    v22 = [v12 tab];

    if (v22)
    {
      v23 = [(_UITabOutlineView *)self _isHeaderIndexPath:v13];
      if ([v12 isEmptyGroup])
      {
        v24 = [v12 tab];
        v25 = [v24 _isSidebarDestination];

        if (v25)
        {
          v23 |= 2uLL;
        }
      }

      v26 = [UITabSidebarItemRequest alloc];
      v27 = [v12 tab];
      v28 = [(UITabSidebarItemRequest *)v26 _initWithTab:v27 cell:v34 attributes:v23];
    }

    else
    {
      v29 = [v12 action];

      if (!v29)
      {
LABEL_26:
        [(_UITabSidebarCell *)v34 setSidebarItem:?];
        goto LABEL_27;
      }

      v30 = [UITabSidebarItemRequest alloc];
      v27 = [v12 action];
      v28 = [(UITabSidebarItemRequest *)v30 _initWithAction:v27 cell:v34];
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
      [(_UITabSidebarCell *)v34 setSidebarItem:v33];

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
  if ((*(v34 + 876) & 1) == 0)
  {
    v17 = v15;
    goto LABEL_15;
  }

  v17 = [(_UITabSidebarCell *)v34 updatedSidebarItemForCurrentConfigurationState];

  if (self)
  {
    v18 = self->_sidebar;
  }

  else
  {
    v18 = 0;
  }

  v19 = [(UITabBarControllerSidebar *)v18 _updatedSidebarItem:v17];
  if (v19 != v17)
  {
    [(_UITabSidebarCell *)v34 setSidebarItem:v19];
  }

LABEL_27:
}

- (id)_leadingSwipeActionsConfigurationForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:v4];
  if (v5 && ![(_UITabOutlineView *)self _isHeaderIndexPath:v4])
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

- (id)_trailingSwipeActionsConfigurationForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:v4];
  if (v5 && ![(_UITabOutlineView *)self _isHeaderIndexPath:v4])
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

- (void)willMoveToSuperview:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UITabOutlineView;
  [(UIView *)&v5 didMoveToSuperview];
  if (a3)
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (self && self->_resolvedStyle == 1)
  {
    v6 = [(_UITabOutlineView *)self collectionView];
    [v6 contentSize];
    v8 = v7;

    v9 = [(_UITabOutlineView *)self collectionView];
    [v9 contentInset];
    v11 = v10;
    v12 = [(_UITabOutlineView *)self collectionView];
    [v12 contentInset];
    v14 = v8 + v11 + v13;

    v15 = [(_UITabOutlineView *)self navigationBar];
    [v15 frame];
    v17 = v14 + v16;

    v18 = [(_UITabOutlineView *)self bottomBarView];
    [v18 frame];
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
  v16 = [(_UITabOutlineView *)self shadowView];
  [v16 setFrame:{v4, v6, v8, maximumSidebarHeight}];

  v17 = [(_UITabOutlineView *)self backgroundView];
  [v17 setFrame:{v4, v6, v8, maximumSidebarHeight}];

  v18 = [(_UITabOutlineView *)self backgroundCaptureView];
  [v18 setFrame:{v4, v6, v8, maximumSidebarHeight}];

  v19 = [(_UITabOutlineView *)self navigationBar];
  [v19 sizeThatFits:{v8, maximumSidebarHeight}];
  v21 = v20;
  v23 = v22;

  if (v23 == 0.0)
  {
    v24 = [(_UITabOutlineView *)self navigationBar];
    [v24 layoutIfNeeded];

    v25 = [(_UITabOutlineView *)self navigationBar];
    [v25 sizeThatFits:{v8, maximumSidebarHeight}];
    v21 = v26;
    v23 = v27;
  }

  [(UIView *)self safeAreaInsets];
  v29 = v28;
  v30 = [(_UITabOutlineView *)self navigationBar];
  [v30 setFrame:{0.0, v29, v21, v23}];

  if (self->_isNavigationBarSafeAreaDirty)
  {
    v31 = [(_UITabOutlineView *)self navigationBar];
    [v31 safeAreaInsetsDidChange];

    self->_isNavigationBarSafeAreaDirty = 0;
  }

  v32 = [(_UITabOutlineView *)self navigationBar];

  v33 = [(_UITabOutlineView *)self bottomBarView];
  v36 = v33;
  if (v33)
  {
    LODWORD(v34) = 1148846080;
    LODWORD(v35) = 1112014848;
    [v33 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:44.0 verticalFittingPriority:{v34, v35}];
    v38 = v37;
    v39 = maximumSidebarHeight - v37;
    v40 = [(_UITabOutlineView *)self _bottomToolbar];
    v41 = [v40 items];
    v42 = [v41 count];

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

  if (v32)
  {
    v47 = v50 + v23;
  }

  else
  {
    v47 = v50;
  }

  v48 = [(_UITabOutlineView *)self collectionView];
  [v48 setSafeAreaInsets:{v47, v52, v15, v51}];

  v49 = [(_UITabOutlineView *)self collectionView];
  [v49 setFrame:{v4, v6, v8, maximumSidebarHeight}];

  [(_UITabOutlineView *)self _updateScrollEdgeAppearance];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = _UITabOutlineView;
  [(UIView *)&v3 safeAreaInsetsDidChange];
  self->_isNavigationBarSafeAreaDirty = 1;
}

- (void)setDisplayedGroup:(uint64_t)a1
{
  v4 = a2;
  if (a1 && *(a1 + 480) != v4)
  {
    v8 = v4;
    if (v4)
    {
      v5 = [v4 _tabModel];
      v6 = *(a1 + 472);

      if (v5 != v6)
      {
        v7 = [MEMORY[0x1E696AAA8] currentHandler];
        [v7 handleFailureInMethod:sel_setDisplayedGroup_ object:a1 file:@"_UITabOutlineView.m" lineNumber:945 description:@"Trying to display a group that is not part of the tab model."];
      }
    }

    objc_storeStrong((a1 + 480), a2);
    [a1 _reloadDataSourceSnapshotAnimated:0];
    [a1 _updateSelectedItemAnimated:0];
    v4 = v8;
  }
}

- (void)setSidebarButtonAction:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    v4 = [v3 copy];

    objc_storeStrong(a1 + 65, v4);
    v5 = [a1 _currentSidebarImage];
    [v4 setImage:v5];

    v6 = [a1 sidebarBarButtonItem];
    [v6 setPrimaryAction:v4];
    [v6 setHidden:{objc_msgSend(a1, "_showSidebarBarButtonItem") ^ 1}];
    [a1 setNeedsLayout];

    v3 = v4;
  }
}

- (void)setTitle:(id *)a1
{
  v10 = a2;
  if (a1)
  {
    v4 = a1[64];
    v5 = v10;
    v6 = v5;
    if (v4 == v5)
    {
    }

    else
    {
      if (v5 && v4)
      {
        v7 = [v4 isEqual:v5];

        if (v7)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      objc_storeStrong(a1 + 64, a2);
      v8 = [a1 _currentPlatformMetrics];
      v9 = [v8 showsSidebarTitle];

      if (!v9)
      {
        goto LABEL_12;
      }

      v4 = [a1 navigationItem];
      [v4 setTitle:v6];
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
        v3 = [result _currentPlatformMetrics];
        v4 = [v3 supportsFloatingSidebar];

        a2 = v4 & 1;
      }

      v2[53] = a2;

      return [v2 _updateSidebarStyle];
    }
  }

  return result;
}

- (void)_updateSidebarStyle
{
  v12 = [(_UITabOutlineView *)self _currentPlatformMetrics];
  v3 = [(UIView *)self traitCollection];
  v4 = _UISidebarGetPlatformMetrics([v3 userInterfaceIdiom]);

  v5 = [(_UITabOutlineView *)self backgroundView];
  v6 = [v5 layer];

  if (self && self->_resolvedStyle == 1)
  {
    v7 = [v4 floatingBackground];
    [v12 sidebarBorderWidth];
    [v6 setBorderWidth:?];
    v8 = [v12 sidebarBorderColor];
    [v6 setBorderColor:{objc_msgSend(v8, "CGColor")}];
  }

  else
  {
    v7 = [v4 abuttedBackground];
    [v6 setBorderWidth:0.0];
  }

  v9 = [(_UITabOutlineView *)self backgroundView];
  [v9 _setBackground:v7];

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

- (void)setTransitionsToTabBar:(uint64_t)a1
{
  if (a1 && *(a1 + 449) != a2)
  {
    *(a1 + 449) = a2;
    v3 = [a1 _currentSidebarImage];
    [*(a1 + 648) setImage:v3];
  }
}

- (uint64_t)makeFirstResponderForTab:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  v4 = [a1 dataSource];
  v5 = [v3 identifier];

  v6 = [v4 indexPathForItemIdentifier:v5];

  if (v6)
  {
    v7 = [a1 collectionView];
    v8 = [v7 cellForItemAtIndexPath:v6];

    if (v8)
    {
      v9 = [v8 contentView];
      v10 = [v9 becomeFirstResponder];
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

- (void)_updateSelectedItemAnimated:(BOOL)a3
{
  v36 = a3;
  v46 = *MEMORY[0x1E69E9840];
  if (!self->_ignoringSelectionUpdates)
  {
    v4 = &OBJC_IVAR___UIScrollView__knobPointerLongPressGestureRecognizer;
    if ([(_UITabModel *)self->_tabModel isEditing])
    {
      v5 = [(_UITabOutlineView *)self dataSource];
      v6 = [v5 snapshot];

      v34 = v6;
      v7 = [v6 itemIdentifiers];
      v8 = [(_UITabOutlineView *)self collectionView];
      v35 = [v8 indexPathsForSelectedItems];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v7;
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
          v14 = [(_UITabOutlineView *)self contentByIdentifier];
          v15 = [v14 objectForKey:v13];
          v16 = [v15 tab];

          v17 = [*(&self->super.super.super.isa + v4[473]) isTabHidden:v16];
          if (v16)
          {
            v18 = v17;
            v19 = v4;
            v20 = [(_UITabOutlineView *)self dataSource];
            v21 = [v20 indexPathForItemIdentifier:v13];

            v22 = [(_UITabOutlineView *)self collectionView];
            v23 = [(_UITabOutlineView *)self collectionView:v22 shouldSelectItemAtIndexPath:v21];

            v24 = [(_UITabOutlineView *)self _hasCustomizablePlacementForTab:v16];
            if ((v18 & 1) == 0 && (v23 || v24))
            {
              v25 = [(_UITabOutlineView *)self collectionView];
              [v25 selectItemAtIndexPath:v21 animated:v36 scrollPosition:0];
              v4 = v19;
              goto LABEL_14;
            }

            v4 = v19;
            if ([v35 containsObject:v21])
            {
              v25 = [(_UITabOutlineView *)self collectionView];
              [v25 deselectItemAtIndexPath:v21 animated:v36];
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
    v26 = [(_UITabOutlineView *)self dataSource];
    v27 = [objb identifier];
    v28 = [v26 indexPathForItemIdentifier:v27];

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

        v32 = [(_UITabOutlineView *)self dataSource];
        v33 = [objc identifier];
        v28 = [v32 indexPathForItemIdentifier:v33];

        v29 = objc;
      }

      while (objc && !v28);
    }

    obja = v29;
    [(_UITabOutlineView *)self _selectItemAtIndexPath:v28 animated:v36 performAction:0];
  }
}

- (void)_updateSnapshot:(id)a3 usingNode:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifier];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = v7;
  v9 = [v7 children];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 identifier];
        v29 = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
        [v6 appendItems:v16 intoParentItem:v8];

        [(_UITabOutlineView *)self _updateSnapshot:v6 usingNode:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  v17 = [v23 actions];

  if (v17)
  {
    v18 = [v23 actions];
    [v6 appendItems:v18 intoParentItem:v8];
  }

  v19 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:v8];
  if ([(_UITabOutlineView *)self isEditing])
  {
    [(_UITabOutlineView *)self editingCollapsedGroupIdentifiers];
  }

  else
  {
    [(_UITabOutlineView *)self collapsedGroupIdentifiers];
  }
  v20 = ;
  v21 = [v20 containsObject:v8];

  if ((v21 & 1) == 0)
  {
    v28 = v8;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    [v6 expandItems:v22];
  }
}

- (void)_reloadDataSourceSnapshotAnimated:(BOOL)a3
{
  v166 = *MEMORY[0x1E69E9840];
  if (self->_ignoringContentUpdates)
  {
    return;
  }

  v3 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Root-%p", self];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v5, 0}];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  v131 = v7;
  v119 = v5;
  [v7 setObject:v8 forKeyedSubscript:v5];
  v9 = [(_UITabModel *)self->_tabModel isEditing];
  v10 = [(_UITabModel *)self->_tabModel tabItems];
  v11 = self->_displayedGroup;
  v12 = [(_UITabGroup *)v11 _tabModel];
  tabModel = self->_tabModel;

  v120 = v3;
  v116 = v11;
  if (v12 == tabModel)
  {
    v14 = [(_UITabOutlineView *)self activeTransaction];
    v15 = [(_UITabGroup *)v11 identifier];
    v16 = [v14 currentDisplayOrderForGroupWithIdentifier:v15];

    v17 = [(_UITabGroup *)v11 _orderedChildrenForDisplayOrder:v16];

    v10 = v17;
  }

  v18 = [_UITabOutlineParser alloc];
  v19 = [(_UITabOutlineView *)self activeTransaction];
  v117 = v10;
  v20 = [(_UITabOutlineParser *)v18 initWithTabs:v10 includeAllowsHidingItems:v9 transaction:v19];

  v21 = [(_UITabModel *)self->_tabModel customizationStore];
  v22 = [v21 allGroupIdentifiers];

  v23 = [(_UITabOutlineParser *)v20 collapsedByDefaultGroupIdentifiers];
  v24 = [v23 mutableCopy];

  v115 = v22;
  [v24 minusSet:v22];
  v132 = self;
  v114 = v24;
  [(NSMutableSet *)self->_collapsedGroupIdentifiers unionSet:v24];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  v122 = v20;
  v25 = [(_UITabOutlineParser *)v20 rootItems];
  v26 = [v25 countByEnumeratingWithState:&v153 objects:v165 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v153 + 1) + 8 * i);
        v31 = [v30 identifier];
        v164 = v31;
        v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v164 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)v8 appendItems:v32];

        if ([v30 isGroup])
        {
          [(_UITabOutlineView *)v132 _updateSnapshot:v8 usingNode:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v153 objects:v165 count:16];
    }

    while (v27);
  }

  v118 = v8;

  v151 = 0u;
  v152 = 0u;
  v149 = 0u;
  v150 = 0u;
  v33 = [(_UITabOutlineParser *)v122 groupItems];
  v34 = [v33 countByEnumeratingWithState:&v149 objects:v163 count:16];
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
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v149 + 1) + 8 * j);
        v39 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
        v40 = [v38 identifier];
        v162 = v40;
        v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v162 count:1];
        [(NSDiffableDataSourceSectionSnapshot *)v39 appendItems:v41];

        [(_UITabOutlineView *)v132 _updateSnapshot:v39 usingNode:v38];
        [v6 addObject:v40];
        [v131 setObject:v39 forKeyedSubscript:v40];
      }

      v35 = [v33 countByEnumeratingWithState:&v149 objects:v163 count:16];
    }

    while (v35);
  }

  v113 = [(_UITabOutlineView *)v132 _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
  [v113 increment];
  v42 = [(_UITabOutlineView *)v132 dataSource];
  v43 = [v42 snapshot];

  v44 = [v43 sectionIdentifiers];
  v45 = [v6 differenceFromArray:v44 withOptions:4];
  v112 = v44;
  v123 = v43;
  v121 = v45;
  if (![v44 count])
  {
    [v43 appendSectionsWithIdentifiers:v6];
LABEL_43:
    v46 = &OBJC_IVAR____UIStateMachine__state;
    goto LABEL_44;
  }

  v46 = &OBJC_IVAR____UIStateMachine__state;
  if ([v45 hasChanges])
  {
    v47 = [MEMORY[0x1E695DF70] array];
    v145 = 0u;
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v48 = [v45 removals];
    v49 = [v48 countByEnumeratingWithState:&v145 objects:v161 count:16];
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
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v145 + 1) + 8 * k);
          if ([v53 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v54 = [v53 object];
            [v47 addObject:v54];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v145 objects:v161 count:16];
      }

      while (v50);
    }

    v129 = v47;
    [v123 deleteSectionsWithIdentifiers:v47];
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v55 = [v121 insertions];
    v56 = [v55 countByEnumeratingWithState:&v141 objects:v160 count:16];
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
            objc_enumerationMutation(v55);
          }

          v60 = *(*(&v141 + 1) + 8 * m);
          v61 = [v60 object];
          v62 = [v6 objectAtIndex:{objc_msgSend(v60, "index") - 1}];
          if ([v60 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            v159 = v61;
            v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v159 count:1];
            [v123 insertSectionsWithIdentifiers:v63 afterSectionWithIdentifier:v62];
          }

          else
          {
            [v123 moveSectionWithIdentifier:v61 afterSectionWithIdentifier:v62];
          }
        }

        v57 = [v55 countByEnumeratingWithState:&v141 objects:v160 count:16];
      }

      while (v57);
    }

    v43 = v123;
    v45 = v121;
    goto LABEL_43;
  }

LABEL_44:
  v64 = v132;
  if ([v45 hasChanges])
  {
    v65 = [(_UITabOutlineView *)v132 dataSource];
    [v65 applySnapshot:v43 animatingDifferences:v120];
  }

  v66 = v132->_contentByIdentifier;
  v67 = [(_UITabOutlineParser *)v122 contentByIdentifier];
  contentByIdentifier = v132->_contentByIdentifier;
  v132->_contentByIdentifier = v67;

  v69 = [(_UITabOutlineParser *)v122 allGroupIdentifiers];
  allGroupIdentifiers = v132->_allGroupIdentifiers;
  v132->_allGroupIdentifiers = v69;

  v71 = *(&v132->super.super.super.isa + v46[706]);
  if (v71)
  {
    v72 = v71;
    v73 = [_UITabSidebarContent contentForTab:v72];
    v74 = v132->_contentByIdentifier;
    v75 = *(&v132->super.super.super.isa + v46[706]);
    v76 = [v75 identifier];
    [(NSMutableDictionary *)v74 setObject:v73 forKeyedSubscript:v76];
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
        v83 = [(_UITabOutlineView *)v132 dataSource];
        [v83 applySnapshot:v82 toSection:v81 animatingDifferences:v120];
      }

      v78 = [obj countByEnumeratingWithState:&v137 objects:v158 count:16];
    }

    while (v78);
  }

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v84 = [(_UITabOutlineView *)v132 collectionView];
  v85 = [v84 preparedCells];

  v130 = [v85 countByEnumeratingWithState:&v133 objects:v157 count:16];
  v86 = 0;
  if (v130)
  {
    v128 = *v134;
    v124 = v66;
    v125 = v85;
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

        v92 = v132->_contentByIdentifier;
        v93 = [v91 identifier];
        v94 = [(NSMutableDictionary *)v92 objectForKeyedSubscript:v93];

        v95 = [v94 tab];
        v96 = [v91 identifier];
        v97 = [(NSMutableDictionary *)v66 objectForKeyedSubscript:v96];

        if (v95 && ([v94 isCompatibleWithContent:v97] & 1) == 0)
        {
          if (v86)
          {
            v100 = [v95 identifier];
            [v86 addObject:v100];
          }

          else
          {
            v105 = MEMORY[0x1E695DF70];
            v100 = [v95 identifier];
            v86 = [v105 arrayWithObject:v100];
          }

LABEL_73:

          goto LABEL_74;
        }

        if (v88 && (*(v88 + 876) & 1) != 0)
        {
          v127 = v86;
          v98 = [v91 identifier];
          v99 = v98;
          if (v98)
          {
            v100 = v98;
          }

          else
          {
            v101 = *(v88 + 880);
            v102 = [v101 action];
            v100 = [v102 identifier];
          }

          v103 = [(_UITabOutlineView *)v132 dataSource];
          v104 = [v103 indexPathForItemIdentifier:v100];

          [v88 setIndentationLevel:{-[_UITabOutlineView _indentationLevelForItemIdentifier:indexPath:](v132, "_indentationLevelForItemIdentifier:indexPath:", v100, v104)}];
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
          v64 = v132;
          v107 = v113;
          if ([v86 count])
          {
            v108 = [(_UITabOutlineView *)v132 dataSource];
            v109 = [v108 snapshot];

            [v109 reconfigureItemsWithIdentifiers:v86];
            v85 = [(_UITabOutlineView *)v132 dataSource];
            [v85 applySnapshot:v109 animatingDifferences:v120];
            v123 = v109;
            goto LABEL_82;
          }
        }

        else
        {
          v64 = v132;
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
  v110 = [(_UITabOutlineView *)v64 activeTransaction];
  if (v110)
  {
    v111 = [(_UITabOutlineView *)v64 _tabsByIdentifier];
    [v110 updateTabs:v111];
  }
}

- (id)_existingSectionSnapshotForTabIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self dataSource];
  v6 = [v5 snapshot];
  v7 = [v6 sectionIdentifierForSectionContainingItemIdentifier:v4];

  if (v7)
  {
    v8 = [(_UITabOutlineView *)self dataSource];
    v9 = [v8 snapshotForSection:v7];

    v10 = [v9 items];
    v11 = [v10 count];

    if (v11)
    {
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:

  return v9;
}

- (void)_reconfigureItemsInDataSourceForTabs:(id)a3 animated:(BOOL)a4
{
  v23 = a4;
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
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
        v13 = [v12 identifier];
        v14 = [(_UITabOutlineView *)self dataSource];
        v15 = [v14 indexPathForItemIdentifier:v13];

        if (v15)
        {
          v16 = [(_UITabOutlineView *)self willDisplayTab];

          if (v12 == v16)
          {
            self->_didUpdateWillDisplayTab = 1;
          }

          else
          {
            [v6 addObject:v13];
            v17 = [_UITabSidebarContent contentForTab:v12];
            [(NSMutableDictionary *)self->_contentByIdentifier setObject:v17 forKey:v13];
            v18 = [(_UITabOutlineView *)self activeTransaction];
            [v18 replaceTab:v12 forIdentifier:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    v19 = [(_UITabOutlineView *)self dataSource];
    v20 = [v19 snapshot];

    [v20 reconfigureItemsWithIdentifiers:v6];
    v21 = [(_UITabOutlineView *)self _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
    [v21 increment];
    v22 = [(_UITabOutlineView *)self dataSource];
    [v22 applySnapshot:v20 animatingDifferences:v23];

    [v21 complete];
  }
}

- (id)_dataSourceUpdateGroupCompletionCreateIfNeeded:(BOOL)a3
{
  dataSourceUpdateGroupCompletion = self->_dataSourceUpdateGroupCompletion;
  if (dataSourceUpdateGroupCompletion)
  {
    v5 = 1;
  }

  else
  {
    v5 = !a3;
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

- (int64_t)_indentationLevelForItemIdentifier:(id)a3 indexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITabOutlineView *)self dataSource];
  v9 = [v8 sectionIdentifierForIndex:{objc_msgSend(v6, "section")}];

  v10 = [(_UITabOutlineView *)self dataSource];
  v11 = [v10 snapshotForSection:v9];

  v12 = [v11 levelOfItem:v7];
  v13 = [v6 section];

  if (v12 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 - 1;
  if (v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  return v16;
}

- (id)_tabForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];
  v8 = [v7 tab];

  return v8;
}

- (id)_actionForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];
  v8 = [v7 action];

  return v8;
}

- (id)_sidebarContentForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self dataSource];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  v7 = [(NSMutableDictionary *)self->_contentByIdentifier objectForKey:v6];

  return v7;
}

- (BOOL)_isHeaderIndexPath:(id)a3
{
  v3 = a3;
  v4 = [v3 section] >= 1 && objc_msgSend(v3, "item") == 0;

  return v4;
}

- (BOOL)_isActionIndexPath:(id)a3
{
  v3 = [(_UITabOutlineView *)self _tabForIndexPath:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _isAction];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)_canDragTab:(id)a3
{
  v4 = a3;
  if ([v4 _isAction])
  {
    LOBYTE(v5) = 0;
  }

  else if ([v4 _canBeReordered])
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
    if ([(_UITabModel *)v7 isEditing]&& [(_UITabOutlineView *)self _hasCustomizablePlacementForTab:v4])
    {
      if (self)
      {
        v8 = self->_tabModel;
      }

      else
      {
        v8 = 0;
      }

      v5 = ![(_UITabModel *)v8 isTabHidden:v4];
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_hasCustomizablePlacementForTab:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self _currentPlatformMetrics];
  v6 = [v5 supportsCustomizablePlacements];

  if (v6)
  {
    v7 = [v4 _hasCustomizablePlacement];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)headerContentConfigurationDidChange:(id *)a1
{
  if (a1)
  {
    v6 = [a1 _headerContentConfiguration];
    if ((a2 != 0) != (v6 == 0))
    {
      v4 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
      v5 = [a1[72] supplementaryViewForElementKind:@"UICollectionElementKindSectionHeader" atIndexPath:v4];
      [v5 setContentConfiguration:v6];
    }

    else
    {
      v4 = [a1[73] snapshot];
      [a1[73] applySnapshot:v4 animatingDifferences:1];
    }
  }
}

- (void)footerContentConfigurationDidChange:(id *)a1
{
  if (a1)
  {
    v7 = [a1 _footerContentConfiguration];
    if ((a2 != 0) != (v7 == 0))
    {
      v4 = [a1[72] numberOfSections];
      v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:v4 - 1];
      v6 = [a1[72] supplementaryViewForElementKind:@"UICollectionElementKindSectionFooter" atIndexPath:v5];
      [v6 setContentConfiguration:v7];
    }

    else
    {
      v5 = [a1[73] snapshot];
      [a1[73] applySnapshot:v5 animatingDifferences:1];
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
    v4 = [(_UITabSidebarBottomBarWrapperView *)self->_bottomBarView view];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)scrollToTarget:(uint64_t)a3 animated:
{
  v5 = a2;
  if (!a1)
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
      v14 = [a1 _headerContentConfiguration];

      if (v14)
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

    v15 = [a1 _footerContentConfiguration];

    v5 = v18;
    if (!v15)
    {
      goto LABEL_10;
    }

    v16 = [a1 collectionView];
    v17 = [v16 numberOfSections] - 1;

    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0x7FFFFFFFFFFFFFFFLL inSection:v17];
    v13 = 4;
    goto LABEL_8;
  }

  v8 = [a1 dataSource];
  if (v18)
  {
    v9 = v18[2];
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  v11 = [v10 identifier];
  v12 = [v8 indexPathForItemIdentifier:v11];

  v13 = 0;
LABEL_8:
  v5 = v18;
  if (v12)
  {
    [a1[72] scrollToItemAtIndexPath:v12 atScrollPosition:v13 animated:a3];

    v5 = v18;
  }

LABEL_10:
}

- (void)reconfigureItemForTab:(void *)a1
{
  if (a1)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:a2];
    [a1 _reconfigureItemsInDataSourceForTabs:v3 animated:1];
  }
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self contentByIdentifier];
  v6 = [v4 identifier];
  v7 = [v5 objectForKey:v6];
  v8 = [v7 tab];

  if (v8)
  {
    v9 = v4;
    if (v9)
    {
      do
      {
        v10 = v9;
        v11 = [(_UITabOutlineView *)self dataSource];
        v12 = [v9 identifier];
        v13 = [v11 indexPathForItemIdentifier:v12];

        v14 = [(_UITabOutlineView *)self collectionView];
        v15 = [v14 cellForItemAtIndexPath:v13];

        v9 = [v10 _parentGroup];
      }

      while (v9 && !v15);
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

- (void)_tabModelDidReload:(id)a3
{
  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
}

- (void)_tabModel:(id)a3 tabContentDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    [(NSMutableSet *)updatedTabsDuringApplySnapshot addObject:v7, v13, v14, v15, v16];
  }

  else
  {
    v12 = [MEMORY[0x1E695DFD8] setWithObject:v7];
    [(_UITabOutlineView *)self _reconfigureItemsInDataSourceForTabs:v12 animated:1];
  }
}

- (void)_tabModel:(id)a3 didReplaceOldItem:(id)a4 newItem:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  if (([v7 _isGroup] & 1) == 0 && !objc_msgSend(v8, "_isGroup"))
  {
    contentByIdentifier = self->_contentByIdentifier;
    v10 = [v7 identifier];
    [(NSMutableDictionary *)contentByIdentifier removeObjectForKey:v10];

    v11 = self->_contentByIdentifier;
    v12 = [_UITabSidebarContent contentForTab:v8];
    v13 = [v8 identifier];
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v13];

    v14 = [(_UITabOutlineView *)self activeTransaction];
    v15 = [v8 identifier];
    [v14 replaceTab:v8 forIdentifier:v15];

    v16 = [(_UITabOutlineView *)self dataSource];
    v17 = [v16 snapshot];

    v18 = [(_UITabOutlineView *)self _dataSourceUpdateGroupCompletionCreateIfNeeded:1];
    [v18 increment];
    v19 = [v7 identifier];
    v20 = [v8 identifier];
    v21 = v19;
    v22 = v20;
    v23 = v22;
    if (v21 == v22)
    {
    }

    else
    {
      if (!v21 || !v22)
      {

LABEL_12:
        v27 = [v7 identifier];
        v28 = [v17 indexOfItemIdentifier:v27];

        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (([v8 isHidden] & 1) == 0)
          {
            [v18 complete];
            [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
          }

          goto LABEL_17;
        }

        v29 = [v8 identifier];
        v34 = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
        v31 = [v7 identifier];
        [v17 insertItemsWithIdentifiers:v30 afterItemWithIdentifier:v31];

        v25 = [v7 identifier];
        v33 = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        [v17 deleteItemsWithIdentifiers:v26];
LABEL_16:

        v32 = [(_UITabOutlineView *)self dataSource];
        [v32 applySnapshot:v17 animatingDifferences:1];

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

    v25 = [v8 identifier];
    v35[0] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v17 reconfigureItemsWithIdentifiers:v26];
    goto LABEL_16;
  }

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
LABEL_18:
}

- (void)_tabModel:(id)a3 visibilityDidChangeForTab:(id)a4
{
  v14 = a4;
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
      v6 = [(_UITabOutlineView *)self dataSource];
      v7 = [v14 identifier];
      v8 = [v6 indexPathForItemIdentifier:v7];

      v9 = [(_UITabOutlineView *)self collectionView];
      v10 = [(_UITabOutlineView *)self collectionView:v9 shouldSelectItemAtIndexPath:v8];

      v11 = [(_UITabModel *)self->_tabModel isTabHidden:v14];
      v12 = 0;
      if (!v11 && v10)
      {
        v12 = v8;
      }

      [(_UITabOutlineView *)self _selectItemAtIndexPath:v12 animated:1 performAction:0];
      v13 = [(_UITabOutlineView *)self activeTransaction];
      [v13 updateTab:v14 toHidden:v11];
    }
  }

  else
  {
    [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
    [(_UITabOutlineView *)self _updateSelectedItemAnimated:1];
  }
}

- (void)_tabModel:(id)a3 didChangeSelectedLeaf:(id)a4 previousElement:(id)a5
{
  v6 = [(UIView *)self superview:a3];
  if (v6)
  {
    v7 = +[UIView areAnimationsEnabled];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(UIView *)self superview];

  if (!v8)
  {
    self->_needsScrollToSelectedItemWhenBecomingVisible = 1;
  }

  [(_UITabOutlineView *)self _updateSelectedItemAnimated:v7];
}

- (void)_tabModel:(id)a3 customizationStoreDidChange:(id)a4
{
  v5 = [a4 collapsedGroupIdentifiers];
  v6 = [v5 mutableCopy];
  collapsedGroupIdentifiers = self->_collapsedGroupIdentifiers;
  self->_collapsedGroupIdentifiers = v6;

  [(_UITabOutlineView *)self _reloadDataSourceSnapshotAnimated:1];
  v8 = [(_UITabOutlineView *)&self->super.super.super.isa delegate];
  [v8 outlineViewDidChangeCustomizationStore:self];
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
  v3 = [(_UITabOutlineView *)self navigationBar];

  if (v3)
  {
    if (self)
    {
      tabModel = self->_tabModel;
    }

    else
    {
      tabModel = 0;
    }

    v5 = [(_UITabModel *)tabModel isEditing];
    if (self)
    {
      v6 = self->_tabModel;
    }

    else
    {
      v6 = 0;
    }

    v7 = [(_UITabModel *)v6 isEditable];
    v8 = [(_UITabOutlineView *)self _currentPlatformMetrics];
    v9 = [v8 supportsFloatingSidebar];

    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v11 = sidebar;
    v38 = [(UITabBarControllerSidebar *)v11 navigationOverflowItems];

    LODWORD(v11) = [(_UITabOutlineView *)self _showSidebarBarButtonItem];
    v12 = [(_UITabOutlineView *)self sidebarBarButtonItem];
    [v12 setHidden:v11 ^ 1];

    v13 = [(_UITabOutlineView *)self sidebarBarButtonItem];
    v14 = v13;
    if (v9)
    {
      v55 = v13;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v16 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v56[0] = v13;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:1];
      v15 = MEMORY[0x1E695E0F0];
    }

    if (!v5 && !v7 && !v38)
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
    v42 = v5;
    v18 = [UIAction actionWithTitle:v37 image:v17 identifier:0 handler:v40];

    if (v5)
    {
      v19 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 primaryAction:v18];
      v20 = v19;
      if (!v9)
      {
        v27 = [(_UITabOutlineView *)self resetBarButtonItem];
        v52 = v27;
        v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];

        v51 = v20;
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
        v15 = v22 = v15;
        v16 = v28;
LABEL_28:

        objc_destroyWeak(&v41);
        objc_destroyWeak(&location);
LABEL_29:
        v35 = [(_UITabOutlineView *)self navigationItem];
        [v35 setLeftBarButtonItems:v16];

        v36 = [(_UITabOutlineView *)self navigationItem];
        [v36 setRightBarButtonItems:v15];

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

      v22 = [(_UITabOutlineView *)self resetBarButtonItem];
      v53 = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
      v16 = v21;
    }

    else
    {
      if (!v38)
      {
        v29 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:2 primaryAction:v18];
        v20 = v29;
        if (v9)
        {
          v45 = v29;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
          v16 = v22 = v16;
        }

        else
        {
          v44 = v29;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
          v15 = v22 = v15;
        }

        goto LABEL_28;
      }

      if (v7)
      {
        v48 = v18;
        v49[0] = v38;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
        v25 = [UIMenu menuWithTitle:&stru_1EFB14550 image:0 identifier:0 options:1 children:v24];
        v49[1] = v25;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
        v20 = [UIMenu menuWithChildren:v26];
      }

      else
      {
        v50 = v38;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
        v20 = [UIMenu menuWithChildren:v24];
      }

      v30 = [(_UITabOutlineView *)self _currentPlatformMetrics];
      v31 = [v30 overflowButtonImageName];
      v22 = [UIImage systemImageNamed:v31];

      v32 = [[UIBarButtonItem alloc] initWithImage:v22 menu:v20];
      v33 = v32;
      if (v9)
      {
        v34 = [(_UITabOutlineView *)self sidebarBarButtonItem];
        v47[0] = v34;
        v47[1] = v33;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
      }

      else
      {
        v46 = v32;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
        v34 = v15;
      }

      v15 = v33;
    }

    v15 = v23;
    goto LABEL_28;
  }
}

- (void)_performWithoutAffectingSelection:(id)a3
{
  self->_ignoringSelectionUpdates = 1;
  (*(a3 + 2))(a3, a2);
  self->_ignoringSelectionUpdates = 0;
}

- (void)_performWithoutAffectingContent:(id)a3
{
  self->_ignoringContentUpdates = 1;
  (*(a3 + 2))(a3, a2);
  self->_ignoringContentUpdates = 0;
}

- (void)_performWithWillDisplayTab:(id)a3 block:(id)a4
{
  objc_storeStrong(&self->_willDisplayTab, a3);
  v9 = a3;
  v7 = a4;
  v7[2](v7, v9);

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
  if (a1)
  {
    if ([*(a1 + 472) isEditing])
    {
      [a1 _activateNewSidebarTransaction];
      v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    }

    else
    {
      v3 = [a1 activeTransaction];

      if (!v3)
      {
        v5 = [MEMORY[0x1E696AAA8] currentHandler];
        [v5 handleFailureInMethod:sel_tabModelEditingStateDidChange object:a1 file:@"_UITabOutlineView.m" lineNumber:1858 description:{@"UIKit internal error: Tab outline view should not be exiting edit mode without an active transaction. Model: %@; Outline view: %@", *(a1 + 472), a1}];
      }

      [a1 _commitCurrentSidebarTransaction];
      v2 = 0;
    }

    v4 = *(a1 + 616);
    *(a1 + 616) = v2;
  }
}

- (uint64_t)setAdditionalEditingInsets:(float64_t)a3
{
  if (result)
  {
    v5 = result;
    v6.f64[0] = a2;
    v6.f64[1] = a3;
    v7.f64[0] = a4;
    v7.f64[1] = a5;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(result + 736), v6), vceqq_f64(*(result + 752), v7)))) & 1) == 0)
    {
      *(result + 736) = a2;
      *(result + 744) = a3;
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

  v7 = [(UIView *)self superview];
  if (v7)
  {
    if (left != 0.0 || top != 0.0 || right != 0.0)
    {

LABEL_10:
      v8 = [(UIView *)self superview];
      [v8 safeAreaInsets];
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
  v4 = [(_UITabOutlineView *)self activeTransaction];

  if (v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = v8;
    if (self)
    {
      tabModel = self->_tabModel;
    }

    else
    {
      tabModel = 0;
    }

    [v8 handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:1940 description:{@"UIKit internal error: Attempting to create a new transaction without while there is already an active transaction. Model: %@; Outline view: %@", tabModel, self}];
  }

  v11 = [(_UITabOutlineView *)self _tabsByIdentifier];
  v5 = [_UITabSidebarTransaction alloc];
  if (self)
  {
    v6 = [(_UITabSidebarTransaction *)v5 initWithTabs:v11 sidebar:self->_sidebar];
    sidebar = self->_sidebar;
  }

  else
  {
    v6 = [(_UITabSidebarTransaction *)v5 initWithTabs:v11 sidebar:0];
    sidebar = 0;
  }

  [(UITabBarControllerSidebar *)sidebar set_activeTransaction:v6];
}

- (void)_commitCurrentSidebarTransaction
{
  v3 = [(_UITabOutlineView *)self activeTransaction];

  if (v3)
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
  v3 = [(_UITabOutlineView *)self collectionView];
  [v3 contentSize];
  v5 = v4;

  v6 = [(_UITabOutlineView *)self collectionView];
  [v6 frame];
  v8 = v7;
  v9 = [(_UITabOutlineView *)self collectionView];
  [v9 adjustedContentInset];
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

  v15 = [(_UITabOutlineView *)self selectionGestureRecognizer];
  [v15 setEnabled:v13];

  v16 = [(_UITabOutlineView *)self selectionGestureRecognizer];
  [v16 setAllowableMovement:{v14, v14}];
}

- (void)_animateSelection:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITabOutlineView *)self _highlightGroupCompletion];
  [v8 increment];
  v9 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:0.3];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50___UITabOutlineView__animateSelection_completion___block_invoke;
  v12[3] = &unk_1E711F7E0;
  v13 = v8;
  v14 = v6;
  v10 = v6;
  v11 = v8;
  [UIView _animateUsingSpringBehavior:v9 tracking:0 animations:v7 completion:v12];
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

- (void)_setShowLensView:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITabOutlineView *)self lensView];

  if (v5)
  {
    if (v3)
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

      v6 = [(UIView *)self traitOverrides];
      [v6 setNSIntegerValue:1 forTrait:objc_opt_class()];
    }

    else
    {
      v6 = [(UIView *)self traitOverrides];
      [v6 removeTrait:objc_opt_class()];
    }

    goto LABEL_7;
  }
}

- (BOOL)_isShowingLensView
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 valueForNSIntegerTrait:objc_opt_class()];

  return v3 == 1;
}

- (void)_updateLensViewFrameAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UITabOutlineView *)self highlightedIndexPath];
  if (v5)
  {
    v6 = [(_UITabOutlineView *)self collectionView];
    v7 = [v6 cellForItemAtIndexPath:v5];

    if (v7)
    {
      v8 = [(_UITabOutlineView *)self lensView];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __50___UITabOutlineView__updateLensViewFrameAnimated___block_invoke;
      aBlock[3] = &unk_1E70F6228;
      v13 = v8;
      v14 = v7;
      v15 = self;
      v9 = v8;
      v10 = _Block_copy(aBlock);
      v11 = v10;
      if (v3)
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

- (void)_setHighlightedIndexPath:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v12 = a3;
  v7 = [(_UITabOutlineView *)self lensView];

  if (v7)
  {
    v8 = self->_highlightedIndexPath;
    v9 = v12;
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

    objc_storeStrong(&self->_highlightedIndexPath, a3);
    [(_UITabOutlineView *)self _updateLensViewFrameAnimated:v4];
  }

LABEL_10:
}

- (void)_selectItemAtIndexPath:(id)a3 animated:(BOOL)a4 performAction:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(_UITabOutlineView *)self collectionView];
  v10 = v9;
  if (!v8)
  {
    v16 = [v9 indexPathsForSelectedItems];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v16);
          }

          [v10 deselectItemAtIndexPath:*(*(&v26 + 1) + 8 * i) animated:v6];
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v18);
    }

    [(_UITabOutlineView *)self _setHighlightedIndexPath:0 animated:v6];

    goto LABEL_33;
  }

  if (!v5)
  {
    [v9 selectItemAtIndexPath:v8 animated:v6 scrollPosition:0];
LABEL_19:
    if (![(_UITabOutlineView *)self _isLensActiveOrAnimating])
    {
      [(_UITabOutlineView *)self _setHighlightedIndexPath:v8 animated:v6];
    }

    goto LABEL_33;
  }

  v11 = [(_UITabOutlineView *)self collectionView:v9 shouldSelectItemAtIndexPath:v8];
  if (v11)
  {
    [v10 selectItemAtIndexPath:v8 animated:v6 scrollPosition:0];
  }

  v12 = self->_firstSelectionIndexPath;
  v13 = v8;
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
    v22 = [v21 identifier];

    v23 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:v22];
    if ([v23 isExpanded:v22])
    {
      v32[0] = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      [v23 collapseItems:v24];
    }

    else
    {
      v31 = v22;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
      [v23 expandItems:v24];
    }

    v25 = [(_UITabOutlineView *)self dataSource];
    [v25 applySnapshot:v23 toSection:v22 animatingDifferences:1];
  }

  if (v11)
  {
    [(_UITabOutlineView *)self collectionView:v10 didSelectItemAtIndexPath:v14];
  }

LABEL_33:
}

- (void)_handleSelectionGesture:(id)a3
{
  v10 = a3;
  v4 = [(_UITabOutlineView *)self _indexPathForGestureRecognizer:?];
  v5 = [(_UITabOutlineView *)self _highlightGroupCompletion];
  v6 = [(_UITabOutlineView *)self lensView];
  if ([(_UITabOutlineView *)self _isShowingLensView])
  {
    v7 = 1;
  }

  else
  {
    v7 = ![(_UITabOutlineView *)self _isHeaderIndexPath:v4]&& [(_UITabOutlineView *)self _isActionIndexPath:v4];
  }

  v8 = [v10 state];
  if ((v8 - 4) < 2)
  {
    goto LABEL_11;
  }

  if (v8 == 3)
  {
    [(_UITabOutlineView *)self _selectItemAtIndexPath:v4 animated:v7 performAction:1];
    [(_UITabOutlineView *)self _updateSelectedItemAnimated:v7];
LABEL_11:
    [(_UITabOutlineView *)self _setLensActive:0];
    [v5 complete];

    firstSelectionIndexPath = self->_firstSelectionIndexPath;
    self->_firstSelectionIndexPath = 0;

    v4 = 0;
    goto LABEL_12;
  }

  if (v8 == 1)
  {
    objc_storeStrong(&self->_firstSelectionIndexPath, v4);
    [v5 increment];
    [(_UITabOutlineView *)self _setLensActive:1];
  }

LABEL_12:
  [(_UITabOutlineView *)self _setHighlightedIndexPath:v4 animated:v7];
}

- (BOOL)_isLensActiveOrAnimating
{
  v3 = [(_UITabOutlineView *)self lensView];
  v4 = ([v3 isActive] & 1) != 0 || self->_isAnimatingLensActiveState;

  return v4;
}

- (void)_setLensActive:(BOOL)a3
{
  self->_isAnimatingLensActiveState = 1;
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36___UITabOutlineView__setLensActive___block_invoke;
  v7[3] = &unk_1E70F35E0;
  v7[4] = self;
  v8 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36___UITabOutlineView__setLensActive___block_invoke_2;
  v5[3] = &unk_1E7105398;
  objc_copyWeak(&v6, &location);
  [(_UITabOutlineView *)self _animateSelection:v7 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (id)_indexPathForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;

  v8 = [(_UITabOutlineView *)self collectionView];
  [v8 bounds];
  MidX = CGRectGetMidX(v14);

  [v5 bounds];
  v13.x = MidX;
  v13.y = v7;
  if (CGRectContainsPoint(v15, v13))
  {
    v10 = [v5 indexPathForItemAtPoint:{MidX, v7}];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UITabOutlineView *)self selectionGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(_UITabOutlineView *)self _indexPathForGestureRecognizer:v4];
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

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UITabOutlineView *)self selectionGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(_UITabOutlineView *)self collectionView];
    v11 = [v10 panGestureRecognizer];
    v9 = v11 == v6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateScrollEdgeAppearance
{
  v13 = [(_UITabOutlineView *)self collectionView];
  v3 = [(_UITabOutlineView *)self navigationBar];
  [v3 frame];
  MaxY = CGRectGetMaxY(v15);

  [v13 contentOffset];
  v6 = fmax(fmin((-v5 - MaxY) / (MaxY + -4.0 - MaxY), 1.0), 0.0);
  v7 = [(_UITabOutlineView *)self navigationItem];
  [v7 _setManualScrollEdgeAppearanceProgress:v6];

  v8 = [(_UITabOutlineView *)self _bottomToolbar];
  if (v8)
  {
    [(UIView *)self->_bottomBarView frame];
    MinY = CGRectGetMinY(v16);
    [v13 contentSize];
    v11 = v10;
    [v13 contentOffset];
    [v8 _setBackgroundTransitionProgress:{fmax(fmin((v11 - v12 - (MinY + 4.0)) / (MinY - (MinY + 4.0)), 1.0), 0.0)}];
  }
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(_UITabOutlineView *)self _tabForIndexPath:v5];
  v7 = [(_UITabOutlineView *)self _isHeaderIndexPath:v5];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v6 _isSidebarDestination];
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

    v11 = v8 & v10;
  }

  else if (v8)
  {
    v11 = [(_UITabModel *)self->_tabModel shouldSelectTab:v6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [(_UITabOutlineView *)self _setHighlightedIndexPath:v6 animated:1];
  v7 = [(_UITabOutlineView *)self _tabForIndexPath:v6];

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

- (BOOL)collectionView:(id)a3 shouldDeselectItemAtIndexPath:(id)a4
{
  v5 = [(_UITabOutlineView *)self _tabForIndexPath:a4];
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
    v7 = [v5 allowsHiding];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)collectionView:(id)a3 didDeselectItemAtIndexPath:(id)a4
{
  v6 = a4;
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
    v8 = [(_UITabOutlineView *)self activeTransaction];

    if (!v8)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"_UITabOutlineView.m" lineNumber:2322 description:@"Cannot edit an item without an active transaction"];
    }

    v9 = [(_UITabOutlineView *)self _tabForIndexPath:v6];
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

- (BOOL)collectionView:(id)a3 canPerformPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = a4;
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
    v8 = [(_UITabOutlineView *)self _tabForIndexPath:v5];
    if ([v8 _isAction])
    {
      v7 = 1;
    }

    else
    {
      v9 = [(_UITabOutlineView *)self _actionForIndexPath:v5];
      v7 = v9 != 0;
    }
  }

  return v7;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v8 = a4;
  v5 = [(_UITabOutlineView *)self _actionForIndexPath:?];
  v6 = v5;
  if (v5)
  {
    [v5 performWithSender:0 target:0];
  }

  else
  {
    v7 = [(_UITabOutlineView *)self _tabForIndexPath:v8];
    if ([v7 _isAction])
    {
      [v7 _performAction];
    }
  }
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(_UITabOutlineView *)self isEditing])
  {
    v6 = [(_UITabOutlineView *)self _tabForIndexPath:v5];
    if ([v6 allowsHiding])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 _isGroup];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)indexPathForPreferredFocusedViewInCollectionView:(id)a3
{
  if (self->_preferredItemIdentifierForFocusAfterCollapse)
  {
    v4 = [(_UITabOutlineView *)self dataSource];
    v5 = [v4 indexPathForItemIdentifier:self->_preferredItemIdentifierForFocusAfterCollapse];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v11 = a3;
  v7 = [a4 nextFocusedIndexPath];
  self->_prefersCollectionViewFocused = v7 != 0;
  if ([(_UITabOutlineView *)self isEditing]|| !v7)
  {
    self->_ignoresSelectionChangeFromFocusUpdate = 0;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = [v11 indexPathsForSelectedItems];
    v9 = [v8 containsObject:v7];

    self->_ignoresSelectionChangeFromFocusUpdate = v9;
  }

  preferredItemIdentifierForFocusAfterCollapse = self->_preferredItemIdentifierForFocusAfterCollapse;
  self->_preferredItemIdentifierForFocusAfterCollapse = 0;

LABEL_6:
}

- (void)_adjustScrollViewForKeyboardInfo:(id)a3
{
  v4 = a3;
  v5 = [(UIView *)self window];

  if (v5)
  {
    lastKeyboardAdjustment = self->_lastKeyboardAdjustment;
    v6 = [(_UITabOutlineView *)self collectionView];
    [v6 _adjustForAutomaticKeyboardInfo:v4 animated:1 lastAdjustment:&lastKeyboardAdjustment];

    self->_lastKeyboardAdjustment = lastKeyboardAdjustment;
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  [(_UITabOutlineView *)self _adjustScrollViewForKeyboardInfo:v4];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjuistScrollViewForKeyboardInfo_ object:0];
}

- (void)_keyboardWillHide:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E695DA28];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [(_UITabOutlineView *)self performSelector:sel__adjustScrollViewForKeyboardInfo_ withObject:0 afterDelay:v4 inModes:0.0];
}

- (void)_keyboardDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  [(_UITabOutlineView *)self _adjustScrollViewForKeyboardInfo:v4];

  v5 = objc_opt_class();

  [v5 cancelPreviousPerformRequestsWithTarget:self selector:sel__adjuistScrollViewForKeyboardInfo_ object:0];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UITabOutlineView;
  [(UIView *)&v5 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  self->_ignoresSelectionChangeFromFocusUpdate = 0;
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (self->_prefersCollectionViewFocused)
  {
    v2 = [(_UITabOutlineView *)self collectionView];
    v6[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = _UITabOutlineView;
    v3 = [(UIView *)&v5 preferredFocusEnvironments];
  }

  return v3;
}

- (BOOL)collectionView:(id)a3 shouldSpringLoadItemAtIndexPath:(id)a4 withContext:(id)a5
{
  v6 = a4;
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
    v9 = [(_UITabOutlineView *)self _tabForIndexPath:v6];
    if ([v9 isSpringLoaded])
    {
      if ([v9 _isGroup])
      {
        v10 = [v9 identifier];
        v11 = [(_UITabOutlineView *)self _existingSectionSnapshotForTabIdentifier:v10];

        v12 = [v9 identifier];
        LOBYTE(v10) = [v11 isExpanded:v12];

        v8 = v10 ^ 1;
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
    v1 = [result collectionView];
    v2 = [v1 hasActiveDrag];

    return v2;
  }

  return result;
}

- (id)collectionView:(id)a3 itemsForBeginningDragSession:(id)a4 atIndexPath:(id)a5
{
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v9 = a5;
  v10 = objc_alloc_init(v8);
  v11 = [(_UITabOutlineView *)self _tabForIndexPath:v9];

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

    v13 = [(UITabBarControllerSidebar *)sidebar _itemsForBeginningDragSession:v7 tab:v11];
    [v10 addObjectsFromArray:v13];
  }

  if (![v10 count] && -[_UITabOutlineView _canDragTab:](self, "_canDragTab:", v11))
  {
    v14 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    v15 = [[UIDragItem alloc] initWithItemProvider:v14];
    [(UIDragItem *)v15 setLocalObject:v11];
    [v10 addObject:v15];
    [v7 setLocalContext:self];
  }

  return v10;
}

- (id)collectionView:(id)a3 itemsForAddingToDragSession:(id)a4 atIndexPath:(id)a5 point:(CGPoint)a6
{
  v8 = a4;
  v9 = a5;
  if (-[_UITabOutlineView isEditing](self, "isEditing") || ([v8 localContext], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == self))
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v11 = [(_UITabOutlineView *)self _tabForIndexPath:v9];
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v13 = [(UITabBarControllerSidebar *)sidebar _itemsForAddingToDragSession:v8 tab:v11];
  }

  return v13;
}

- (BOOL)collectionView:(id)a3 dragSessionIsRestrictedToDraggingApplication:(id)a4
{
  v5 = [a4 localContext];
  LOBYTE(self) = v5 == self;

  return self;
}

- (void)collectionView:(id)a3 dragSessionWillBegin:(id)a4
{
  v7 = a4;
  v6 = [v7 localContext];

  if (v6 == self)
  {
    objc_storeStrong(&self->_activeDragSession, a4);
  }
}

- (void)collectionView:(id)a3 dragSessionDidEnd:(id)a4
{
  activeDragSession = self->_activeDragSession;
  self->_activeDragSession = 0;
}

- (id)_collectionView:(id)a3 dragSessionPropertiesForSession:(id)a4
{
  v5 = a4;
  v6 = [v5 localContext];

  if (v6 == self)
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

    v8 = [(UITabBarControllerSidebar *)sidebar _sessionPropertiesForDragSession:v5];
  }

  return v8;
}

- (void)collectionView:(id)a3 dropSessionDidEnter:(id)a4
{
  v12 = a4;
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
    v6 = [v12 items];
    v7 = [v6 firstObject];

    v8 = [v12 items];
    if ([v8 count] == 1)
    {
      v9 = [v7 localObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
LABEL_9:

        goto LABEL_10;
      }

      v8 = [v7 localObject];
      v11 = [v7 previewProvider];

      if (v11)
      {
        [v7 setPreviewProvider:0];
      }
    }

    goto LABEL_9;
  }

LABEL_10:
}

- (void)collectionView:(id)a3 dropSessionDidEnd:(id)a4
{
  v5 = a4;
  v6 = [(_UITabOutlineView *)self _tabBarController];
  [(UITabBarController *)v6 _tabDropSessionDidUpdate:v5 withDestinationTab:0];
}

- (id)collectionView:(id)a3 targetIndexPathForMoveOfItemFromOriginalIndexPath:(id)a4 atCurrentIndexPath:(id)a5 toProposedIndexPath:(id)a6
{
  v8 = a4;
  v9 = a6;
  v10 = [(_UITabOutlineView *)self currentDropContext];

  if (v10)
  {
    v11 = [(_UITabOutlineView *)self currentDropContext];
    v12 = [v11 proposedIndexPath];
  }

  else
  {
    v11 = [(_UITabOutlineView *)self _tabForIndexPath:v8];
    if ([(_UITabOutlineView *)self _canMoveTab:v11 toDestinationIndexPath:v9])
    {
      v13 = v9;
    }

    else
    {
      v13 = v8;
    }

    v12 = v13;
  }

  v14 = v12;

  return v14;
}

- (id)collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  v10 = [(_UITabModel *)tabModel isEditing];
  if (v8)
  {
    v11 = [v7 localDragSession];
    if (v11)
    {
      v12 = [v7 localDragSession];
      if (self)
      {
        activeDragSession = self->_activeDragSession;
      }

      else
      {
        activeDragSession = 0;
      }

      v14 = v12 == activeDragSession;
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

  if (!v10 && !v14)
  {
    v20 = [(_UITabOutlineView *)self _hitRegionForDropSession:v7 destinationIndexPath:v8];
    goto LABEL_22;
  }

  v15 = [v7 items];
  v16 = [v15 firstObject];

  v17 = [v7 localDragSession];
  v18 = [v17 localContext];

  if (v18 != self)
  {
    goto LABEL_13;
  }

  v21 = [v7 items];
  if ([v21 count] != 1)
  {
    goto LABEL_19;
  }

  v22 = [v16 localObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_13:
    v19 = 0;
    goto LABEL_21;
  }

  v21 = [v16 localObject];
  if ([(_UITabOutlineView *)self _canMoveTab:v21 toDestinationIndexPath:v8])
  {
    v19 = [[UICollectionViewDropProposal alloc] initWithDropOperation:3 intent:1];
  }

  else
  {
LABEL_19:
    v19 = 0;
  }

LABEL_21:
  v20 = [(_UITabOutlineView *)self _hitRegionForDropSession:v7 destinationIndexPath:v8];
  if (v19)
  {
    goto LABEL_51;
  }

LABEL_22:
  v24 = v20;
  if ((v20 | 2) == 3)
  {
    v25 = [(_UITabOutlineView *)self _tabForIndexPath:v8];
    v26 = [v25 parent];
    v27 = v26;
    if (v26)
    {
      v28 = [v26 _filteredDisplayOrderIdentifiers];
      v29 = [v25 identifier];
      v30 = [v28 indexOfObject:v29];

      v31 = v8;
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

      v35 = [(UITabBarControllerSidebar *)sidebar _operationForInsertingItemsFromSession:v7 intoTabGroup:v27 atIndex:v30];
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

  if (v19 != 0 || v10)
  {
    goto LABEL_49;
  }

  if (!v8)
  {
    v40 = 0;
LABEL_47:
    v19 = 0;
    goto LABEL_48;
  }

  v39 = [(_UITabOutlineView *)self _sidebarContentForIndexPath:v8];
  v40 = v39;
  if (!v39)
  {
    goto LABEL_47;
  }

  v41 = [v39 tab];

  if (v41)
  {
    v42 = [(_UITabOutlineView *)self _tabBarController];
    v43 = [v40 tab];
    v44 = [(UITabBarController *)v42 _tab:v43 operationForAcceptingItemsFromDropSession:v7];

    v45 = [(_UITabOutlineView *)self _tabBarController];
    v46 = [v40 tab];
    [(UITabBarController *)v45 _tabDropSessionDidUpdate:v7 withDestinationTab:v46];
  }

  else
  {
    v47 = self ? self->_sidebar : 0;
    v48 = v47;
    v45 = [v40 action];
    v46 = [v40 group];
    v44 = [(UITabBarControllerSidebar *)v48 _sidebarAction:v45 group:v46 operationForAcceptingItemsFromDropSession:v7];
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

- (void)collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_UITabOutlineView *)self currentDropContext];
  v7 = [v6 activeTabGroup];

  if (v7)
  {
    v8 = [v6 proposedIndexPath];
    if (self)
    {
      sidebar = self->_sidebar;
    }

    else
    {
      sidebar = 0;
    }

    v10 = sidebar;
    v11 = [v5 session];
    v12 = [v6 activeTabGroup];
    -[UITabBarControllerSidebar _insertItemsFromSession:intoTabGroup:atIndex:](v10, v11, v12, [v6 insertionIndex]);

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = [v5 session];
    v14 = [v13 items];

    v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = [v5 dropItem:*(*(&v48 + 1) + 8 * i) toItemAtIndexPath:v8];
        }

        v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
    v21 = [v5 proposal];
    v22 = [v21 intent];

    if (v22 != 1)
    {
      v8 = [v5 destinationIndexPath];
      if (v8)
      {
        v23 = [(_UITabOutlineView *)self collectionView];
        v24 = [v23 cellForItemAtIndexPath:v8];

        v25 = [v5 session];
        [v25 locationInView:v24];
        v27 = v26;
        v29 = v28;

        v30 = [(_UITabOutlineView *)self _sidebarContentForIndexPath:v8];
        v31 = [v30 tab];

        if (v31)
        {
          v32 = [(_UITabOutlineView *)self _tabBarController];
          v33 = [v30 tab];
          v34 = [v5 session];
          [(UITabBarController *)v32 _tab:v33 acceptItemsFromDropSession:v34];
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
          v32 = [v30 action];
          v33 = [v30 group];
          v34 = [v5 session];
          [(UITabBarControllerSidebar *)v36 _sidebarAction:v32 group:v33 acceptItemsFromDropSession:v34];
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v37 = [v5 session];
        v38 = [v37 items];

        v39 = [v38 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
                objc_enumerationMutation(v38);
              }

              v43 = [v5 dropItem:*(*(&v44 + 1) + 8 * j) intoItemAtIndexPath:v8 rect:{v27, v29, 0.0, 0.0}];
            }

            v40 = [v38 countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v40);
        }
      }

      goto LABEL_12;
    }
  }

LABEL_17:
}

- (int64_t)_hitRegionForDropSession:(id)a3 destinationIndexPath:(id)a4
{
  if (!a4)
  {
    return 0;
  }

  v6 = a4;
  v7 = a3;
  v8 = [(_UITabOutlineView *)self collectionView];
  v9 = [v8 cellForItemAtIndexPath:v6];

  [v7 locationInView:v9];
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

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = a4;
  if (self)
  {
    tabModel = self->_tabModel;
  }

  else
  {
    tabModel = 0;
  }

  if (-[_UITabModel isEditing](tabModel, "isEditing") || [v6 count] != 1)
  {
    v11 = 0;
  }

  else
  {
    v8 = [v6 objectAtIndex:0];
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

- (void)collectionView:(id)a3 willPerformPreviewActionForMenuWithConfiguration:(id)a4 animator:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v7 _tab];
  v10 = v9;
  if (v9)
  {
    if ([v9 isEnabled])
    {
      v11 = [(_UITabOutlineView *)self dataSource];
      v12 = [v7 _tab];
      v13 = [v12 identifier];
      v14 = [v11 indexPathForItemIdentifier:v13];

      if (v14)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __94___UITabOutlineView_collectionView_willPerformPreviewActionForMenuWithConfiguration_animator___block_invoke;
        v16[3] = &unk_1E70F35B8;
        v16[4] = self;
        v17 = v14;
        v15 = v14;
        [v8 addAnimations:v16];
      }
    }

    else
    {
      [v8 setPreferredCommitStyle:0];
    }
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v10 = v9;
    if (v9)
    {
      v11 = v9[110];
      v12 = v11;
      if (v11)
      {
        self->_didUpdateWillDisplayTab = 0;
        v13 = [v11 _tab];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __71___UITabOutlineView_collectionView_willDisplayCell_forItemAtIndexPath___block_invoke;
        v14[3] = &unk_1E712C118;
        v14[4] = self;
        v15 = v10;
        v16 = v15;
        v17 = v8;
        [(_UITabOutlineView *)self _performWithWillDisplayTab:v13 block:v14];
      }
    }

    else
    {
      v12 = 0;
    }
  }
}

- (void)collectionView:(id)a3 didEndDisplayingCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = v12;
  if (isKindOfClass)
  {
    if (v12)
    {
      v8 = v12[110];
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
        v11 = [v8 _tab];
        [(UITabBarControllerSidebar *)v10 _didEndDisplayingTab:v11];
      }
    }

    else
    {
      v8 = 0;
    }

    v7 = v12;
  }
}

- (BOOL)_canMoveTab:(id)a3 toDestinationIndexPath:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(_UITabOutlineView *)self _tabForIndexPath:v6];
    v9 = [(_UITabOutlineView *)self _isHeaderIndexPath:v6];

    v10 = !v9;
    LODWORD(v6) = [v8 _canBeReordered];
    v11 = [v8 _parentGroup];
    v12 = [v7 _parentGroup];

    v13 = (v11 == v12) & ~[v8 _isAction] & v6 & v10;
    v14 = [(_UITabOutlineView *)self dataSource];
    v15 = [v8 identifier];
    v16 = [v14 indexPathForItemIdentifier:v15];

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