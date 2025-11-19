@interface _UIFloatingTabBar
- (BOOL)_isEffectivelyEmpty;
- (BOOL)_isValidDropTargetIndexPath:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasActiveDrag;
- (BOOL)isSearchTabSelected;
- (BOOL)scrubbingEnabled;
- (BOOL)showsSidebarButton;
- (BOOL)tabDragController:(id)a3 canHandleDropSessionForTab:(id)a4;
- (BOOL)tabDragController:(id)a3 isDisplayingTab:(id)a4;
- (CACornerRadii)contentCornerRadii;
- (CGAffineTransform)additionalTransform;
- (CGPoint)highlightAnchorPoint;
- (CGPoint)selectionGestureInitialLocation;
- (CGPoint)sidebarButtonOrigin;
- (CGRect)_itemFrameForItemAtIndexPath:(id)a3 inCoordinateSpace:(id)a4;
- (CGRect)contentLayoutFrame;
- (CGRect)frameForExpandedDropTarget;
- (CGSize)_maximumContainerSizeForPagination;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIButton)sidebarButton;
- (_UIFloatingTabBar)initWithCoder:(id)a3;
- (_UIFloatingTabBar)initWithFrame:(CGRect)a3;
- (_UIGroupCompletion)selectionFrameGroupCompletion;
- (_UIShadowProperties)shadowProperties;
- (double)baselineOffsetFromTop;
- (id)_contentTabForRecentTab:(id)a3;
- (id)_currentPlatformMetrics;
- (id)_destinationIndexPathForDropSession:(id)a3;
- (id)_indexPathForGestureRecognizer:(id)a3;
- (id)_indexPathForItemAtDataSourceIndex:(int64_t)a3;
- (id)_indexPathForSelectedItem;
- (id)_indexPathForTabItem:(id)a3;
- (id)_tabBarController;
- (id)_tabForItemAtIndexPath:(id)a3;
- (id)_targetedPreviewForTab:(id)a3;
- (id)_targetedPreviewForTabAtIndexPath:(id)a3;
- (id)_viewForItemAtIndexPath:(id)a3;
- (id)currentSelectionTitle;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3;
- (id)tabCustomizationProxy;
- (id)tabDragController:(id)a3 dropProposalForSession:(id)a4;
- (id)tabDragController:(id)a3 tabForBeginningSession:(id)a4;
- (int64_t)_indexInDataSourceForItemAtIndexPath:(id)a3;
- (int64_t)_pageIndexForItemAtIndexPath:(id)a3;
- (int64_t)effectiveUserInterfaceStyle;
- (void)_animateSelection:(id)a3 completion:(id)a4;
- (void)_animateSelectionBounds:(id)a3 completion:(id)a4;
- (void)_createDataSource;
- (void)_createViewHierarchy;
- (void)_didTapLeftArrowButton:(id)a3;
- (void)_didTapRightArrowButton:(id)a3;
- (void)_handleLongPressGestureRecognizer:(id)a3;
- (void)_handleSelectionGesture:(id)a3;
- (void)_invalidateDataSourceAnimated:(BOOL)a3;
- (void)_invalidateFavoriteOrderAnimated:(BOOL)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)_refreshSelectedLeaf;
- (void)_scrollToSelectedItemAnimated:(BOOL)a3;
- (void)_scrollToSelectedItemIfNeeded;
- (void)_selectItemAtIndexPath:(id)a3;
- (void)_setHasSelectionHighlight:(BOOL)a3 forItemAtIndexPath:(id)a4;
- (void)_setHighlighted:(BOOL)a3 forItemAtIndexPath:(id)a4;
- (void)_setSelectedItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_tabModel:(id)a3 favoriteOrderDidReset:(id)a4;
- (void)_tabModel:(id)a3 tabContentDidChange:(id)a4;
- (void)_tabModel:(id)a3 visibilityDidChangeForTab:(id)a4;
- (void)_tabModelDidReload:(id)a3;
- (void)_updateBackgroundProperties;
- (void)_updateContentAlphaForItemAtIndexPath:(id)a3;
- (void)_updateContentAlphaForVisibleCells;
- (void)_updateContentSizeCategory;
- (void)_updateDataSourceFromParserAnimated:(BOOL)a3;
- (void)_updateEditModeGestureRecognizer;
- (void)_updatePaginationIfNeeded;
- (void)_updateSelectedItemAnimated:(BOOL)a3 completion:(id)a4;
- (void)_updateSelectedLeaf:(id)a3 previousElement:(id)a4;
- (void)_updateSelectionViewFrameAnimated:(BOOL)a3 completion:(id)a4;
- (void)_updateSelectionViewHighlightState;
- (void)_updateSelectionViewVisibilityAnimated:(BOOL)a3;
- (void)_updateTabBarPaginationAnimated:(BOOL)a3;
- (void)_updateTransform;
- (void)_validateRecentItemForParser:(id)a3;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
- (void)prepareForTransitionToVisibility:(BOOL)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setAdditionalTransform:(CGAffineTransform *)a3;
- (void)setBounds:(CGRect)a3;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setHighlightedIndexPath:(id)a3;
- (void)setScrubbingEnabled:(BOOL)a3;
- (void)setSelectionViewIndexPath:(id)a3;
- (void)setShowRecentItem:(BOOL)a3;
- (void)setSidebarButtonAction:(id)a3;
- (void)setTabModel:(id)a3;
- (void)tabDragController:(id)a3 acceptItemsIntoTabFromDropSession:(id)a4;
- (void)tabDragController:(id)a3 hideDraggedTab:(id)a4;
- (void)tabDragController:(id)a3 pendingDropTabDidChange:(id)a4;
- (void)tabModelEditingStateDidChange;
- (void)transitionDidEnd;
- (void)updateBarForEditingState;
- (void)updateEditingStateIfNeeded;
@end

@implementation _UIFloatingTabBar

- (_UIFloatingTabBar)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBar;
  v3 = [(UIView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBar *)v3 _createViewHierarchy];
    [(_UIFloatingTabBar *)v4 _createDataSource];
  }

  return v4;
}

- (_UIFloatingTabBar)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBar;
  v3 = [(UIView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBar *)v3 _createViewHierarchy];
    [(_UIFloatingTabBar *)v4 _createDataSource];
  }

  return v4;
}

- (void)setTabModel:(id)a3
{
  v5 = a3;
  v6 = self->_tabModel;
  v7 = v5;
  v13 = v7;
  if (v6 == v7)
  {

    goto LABEL_11;
  }

  if (v7 && v6)
  {
    v8 = [(_UITabModel *)v6 isEqual:v7];

    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v9 = [(_UITabModel *)self->_tabModel tabItems];
  v10 = [v9 count];

  [(_UITabModel *)self->_tabModel removeObserver:self];
  objc_storeStrong(&self->_tabModel, a3);
  [(_UICollectionLayoutListAttributes *)self->_parser setSeparatorVisualEffect:v13];
  [(_UITabModel *)self->_tabModel addObserver:self];
  [(_UIFloatingTabBar *)self _updateEditModeGestureRecognizer];
  if (v10 || (-[_UITabModel tabItems](v13, "tabItems"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 count], v11, v12))
  {
    [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:0];
    [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
  }

LABEL_11:
}

- (id)_tabBarController
{
  v2 = [(_UIFloatingTabBar *)self tabModel];
  v3 = [v2 tabBarController];

  return v3;
}

- (BOOL)showsSidebarButton
{
  if (!self->_sidebarButtonAction || [(_UIFloatingTabBar *)self isEditing])
  {
    return 0;
  }

  v4 = [(_UIFloatingTabBar *)self tabModel];
  v5 = [v4 tabItems];
  v3 = [v5 count] != 0;

  return v3;
}

- (void)setSidebarButtonAction:(id)a3
{
  v9 = a3;
  if (self->_sidebarButtonAction)
  {
    v5 = [(_UIFloatingTabBar *)self sidebarButton];
    [v5 removeAction:self->_sidebarButtonAction forControlEvents:0x2000];
  }

  objc_storeStrong(&self->_sidebarButtonAction, a3);
  v6 = self->_sidebarButtonAction == 0;
  v7 = [(_UIFloatingTabBar *)self sidebarButton];
  [v7 setShowsMenuAsPrimaryAction:v6];

  if (v9)
  {
    v8 = [(_UIFloatingTabBar *)self sidebarButton];
    [v8 addAction:v9 forControlEvents:0x2000];
  }

  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
}

- (UIButton)sidebarButton
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!self->_sidebarButton && [(_UIFloatingTabBar *)self showsSidebarButton])
  {
    v3 = [(UIView *)self traitCollection];
    v4 = _UIFloatingTabBarGetPlatformMetrics([v3 userInterfaceIdiom]);

    v5 = [v4 sidebarButtonConfiguration];
    v6 = [v4 contentPaletteProvider];
    v7 = [(UIView *)self traitCollection];
    v8 = v6[2](v6, [v7 userInterfaceStyle]);
    v9 = [v8 inactiveColor];
    [v5 setBaseForegroundColor:v9];

    v10 = [(_UIFloatingTabBar *)self sidebarButtonAction];
    v11 = [UIButton buttonWithConfiguration:v5 primaryAction:v10];

    [(UIView *)v11 _setContinuousCornerRadius:*MEMORY[0x1E6979E40]];
    [(UIButton *)v11 setSpringLoaded:1];
    [(UIView *)v11 setAlpha:0.0];
    v20[0] = 0x1EFE323B0;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    v13 = [(UIView *)v11 _registerForTraitTokenChanges:v12 withHandler:&__block_literal_global_698];

    v14 = +[UIHoverHighlightEffect effect];
    v15 = +[UIShape capsuleShape];
    v16 = [UIHoverStyle styleWithEffect:v14 shape:v15];
    [(UIControl *)v11 setHoverStyle:v16];

    [(UIView *)self->_contentView addSubview:v11];
    sidebarButton = self->_sidebarButton;
    self->_sidebarButton = v11;
  }

  v18 = self->_sidebarButton;

  return v18;
}

- (void)setAdditionalTransform:(CGAffineTransform *)a3
{
  p_additionalTransform = &self->_additionalTransform;
  v6 = *&self->_additionalTransform.c;
  *&t1.a = *&self->_additionalTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_additionalTransform.tx;
  v7 = *&a3->c;
  *&v10.a = *&a3->a;
  *&v10.c = v7;
  *&v10.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_additionalTransform->c = *&a3->c;
    *&p_additionalTransform->tx = v9;
    *&p_additionalTransform->a = v8;
    [(_UIFloatingTabBar *)self _updateTransform];
  }
}

- (CACornerRadii)contentCornerRadii
{
  result = [(UIVisualEffectView *)self->_backgroundView _continuousCornerRadius];
  retstr->minXMaxY.width = v5;
  retstr->minXMaxY.height = v5;
  retstr->maxXMaxY.width = v5;
  retstr->maxXMaxY.height = v5;
  retstr->maxXMinY.width = v5;
  retstr->maxXMinY.height = v5;
  retstr->minXMinY.width = v5;
  retstr->minXMinY.height = v5;
  return result;
}

- (CGPoint)sidebarButtonOrigin
{
  sidebarButton = self->_sidebarButton;
  v3 = [(_UIFloatingTabBar *)self contentView];
  [(UIView *)sidebarButton convertPoint:v3 toView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGRect)contentLayoutFrame
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(_UIFloatingTabBar *)self contentView];
  v8 = [(_UIFloatingTabBar *)self contentView];
  [v8 bounds];
  [v7 convertRect:self toView:?];
  v10 = v9;
  v12 = v11;

  v13 = v10;
  v14 = v4;
  v15 = v12;
  v16 = v6;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)currentSelectionTitle
{
  v3 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  v4 = [(_UIFloatingTabBar *)self dataSource];
  v5 = [v4 itemIdentifierForIndexPath:v3];

  if (v5)
  {
    v6 = [v5 contentTab];
    v7 = [v6 _compactRepresentation];
    if (v7)
    {
      v8 = [v6 _compactRepresentation];
      v9 = [v8 title];
    }

    else
    {
      v9 = [v6 title];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isSearchTabSelected
{
  v2 = [(_UIFloatingTabBar *)self tabModel];
  v3 = [v2 selectedLeaf];

  LOBYTE(v2) = [v3 _isSearchTab];
  return v2;
}

- (void)prepareForTransitionToVisibility:(BOOL)a3
{
  v3 = a3;
  obj = self->_backdropCaptureView;
  if (!obj)
  {
    obj = objc_alloc_init(_UIVisualEffectBackdropView);
    v5 = [(_UIFloatingTabBar *)self contentView];
    [v5 bounds];
    [(UIView *)obj setFrame:?];

    [(UIView *)obj setAutoresizingMask:18];
    objc_storeStrong(&self->_backdropCaptureView, obj);
  }

  v6 = [(_UIFloatingTabBar *)self contentView];
  [v6 insertSubview:obj atIndex:0];

  if (v3 && (*&self->_needsUpdate & 0x20) != 0)
  {
    if (![(_UIFloatingTabBar *)self isEditing])
    {
      [(_UIFloatingTabBar *)self _scrollToSelectedItemAnimated:0];
    }

    *&self->_needsUpdate &= ~0x20u;
  }

  self->_isInTransitionAnimation = 1;
}

- (void)transitionDidEnd
{
  [(UIView *)self->_backdropCaptureView removeFromSuperview];
  backdropCaptureView = self->_backdropCaptureView;
  self->_backdropCaptureView = 0;

  self->_isInTransitionAnimation = 0;
}

- (void)_createViewHierarchy
{
  v81[1] = *MEMORY[0x1E69E9840];
  self->_showRecentItem = 1;
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&self->_additionalTransform.a = *MEMORY[0x1E695EFD0];
  *&self->_additionalTransform.c = v4;
  *&self->_additionalTransform.tx = *(v3 + 32);
  v5 = *(MEMORY[0x1E695F050] + 16);
  self->_frameForExpandedDropTarget.origin = *MEMORY[0x1E695F050];
  self->_frameForExpandedDropTarget.size = v5;
  v70 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  v6 = [v70 shadowProperties];
  [v6 opacity];
  v8 = v7;

  if (v8 <= 0.0)
  {
    v63 = 0;
  }

  else
  {
    v9 = objc_alloc_init(_UIVisualEffectBackdropView);
    [(UIView *)self addSubview:v9];
    v63 = v9;
    objc_storeStrong(&self->_backgroundCaptureView, v9);
  }

  v10 = [[UIVisualEffectView alloc] initWithEffect:0];
  v11 = [v70 background];
  [(UIView *)v10 _setBackground:v11];

  v12 = [v70 backgroundEffects];
  [(UIVisualEffectView *)v10 setBackgroundEffects:v12];

  [(UIVisualEffectView *)v10 _setCaptureView:v63];
  v13 = [(UIView *)v10 layer];
  [v13 setShadowPathIsBounds:1];

  v14 = [(UIView *)v10 layer];
  [v14 setPunchoutShadow:1];

  v15 = [(UIView *)v10 layer];
  [v15 setCornerCurve:*MEMORY[0x1E69796E8]];

  v16 = [(UIView *)v10 layer];
  [v16 setCornerRadius:*MEMORY[0x1E6979E40]];

  [v70 borderWidth];
  v18 = v17;
  v19 = [(UIView *)v10 layer];
  [v19 setBorderWidth:v18];

  v20 = [v70 borderColor];
  v21 = [v20 CGColor];
  v22 = [(UIView *)v10 layer];
  [v22 setBorderColor:v21];

  v23 = [(UIVisualEffectView *)v10 _backgroundHost];
  v24 = [v23 contentView];
  v25 = [v24 layer];
  [v25 setAllowsEdgeAntialiasing:1];

  [(UIView *)self addSubview:v10];
  objc_storeStrong(&self->_backgroundView, v10);
  [(_UIFloatingTabBar *)self _updateBackgroundProperties];
  v26 = [_UIFloatingTabBarSelectionContainerView alloc];
  v27 = *MEMORY[0x1E695F058];
  v28 = *(MEMORY[0x1E695F058] + 8);
  v29 = *(MEMORY[0x1E695F058] + 16);
  v30 = *(MEMORY[0x1E695F058] + 24);
  v69 = [(_UIFloatingTabBarSelectionContainerView *)v26 initWithFrame:*MEMORY[0x1E695F058], v28, v29, v30];
  v31 = [(UIVisualEffectView *)v10 contentView];
  [v31 addSubview:v69];

  objc_storeStrong(&self->_selectionContainerView, v69);
  v64 = [(_UIFloatingTabBarSelectionContainerView *)v69 targetPosition];
  if (v64)
  {
    objc_initWeak(&location, self);
    v81[0] = v64;
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
    v75[0] = MEMORY[0x1E69E9820];
    v75[1] = 3221225472;
    v75[2] = __41___UIFloatingTabBar__createViewHierarchy__block_invoke;
    v75[3] = &unk_1E70F5A28;
    objc_copyWeak(&v76, &location);
    [UIView _createTransformerWithInputAnimatableProperties:v32 presentationValueChangedCallback:v75];

    objc_destroyWeak(&v76);
    objc_destroyWeak(&location);
  }

  v33 = objc_opt_new();
  v34 = [v70 backgroundEffects];
  v35 = [v34 count] == 0;

  if (!v35)
  {
    [v33 _setOverrideVibrancyTrait:1];
    [v33 _setOverrideUserInterfaceRenderingMode:2];
  }

  v36 = [(UIVisualEffectView *)v10 contentView];
  [v36 addSubview:v33];

  objc_storeStrong(&self->_contentView, v33);
  obj = [[UIView alloc] initWithFrame:v27, v28, v29, v30];
  [v33 addSubview:obj];
  objc_storeStrong(&self->_collectionViewContainer, obj);
  [(_UIFloatingTabBarSelectionContainerView *)v69 setLiftedContentView:v33];
  v62 = [[_UIFloatingTabBarCollectionViewLayout alloc] initWithFloatingTabBar:self];
  v37 = [(UICollectionView *)[_UIFloatingTabBarCollectionView alloc] initWithFrame:v62 collectionViewLayout:v27, v28, v29, v30];
  [(UICollectionView *)v37 setDelegate:self];
  [(UICollectionView *)v37 setBackgroundColor:0];
  [(UIScrollView *)v37 setPagingEnabled:1];
  [(UICollectionView *)v37 setAllowsSelection:0];
  [(UICollectionView *)v37 setAllowsMultipleSelection:0];
  [(UIScrollView *)v37 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v37 setShowsHorizontalScrollIndicator:0];
  [(UIView *)v37 setClipsToBounds:0];
  [(UIScrollView *)v37 _setAdjustsTargetsOnContentOffsetChanges:0];
  [(UIScrollView *)v37 _setAutoScrollEnabled:0];
  v38 = [(UIView *)v37 layer];
  [v38 setAllowsGroupOpacity:0];

  [(UICollectionView *)v37 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIFloatingTabBar.Cell"];
  [(UICollectionView *)v37 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"UIFloatingTabBar.PlaceholderCell"];
  objc_initWeak(&location, self);
  v73[0] = MEMORY[0x1E69E9820];
  v73[1] = 3221225472;
  v73[2] = __41___UIFloatingTabBar__createViewHierarchy__block_invoke_2;
  v73[3] = &unk_1E70F5A28;
  objc_copyWeak(&v74, &location);
  [(_UIFloatingTabBarCollectionView *)v37 setLayoutSubviewHandler:v73];
  [(UIView *)obj addSubview:v37];
  objc_storeStrong(&self->_collectionView, v37);
  v39 = [(UIScrollView *)v37 panGestureRecognizer];
  [v33 addGestureRecognizer:v39];

  v65 = [[_UIFloatingTabBarPinnedItemsView alloc] initWithFrame:v27, v28, v29, v30];
  [v33 addSubview:v65];
  objc_storeStrong(&self->_pinnedItemsView, v65);
  v67 = [[_UIFloatingTabBarPageButton alloc] initWithDirection:0];
  v40 = [(_UIFloatingTabBarPageButton *)v67 button];
  [v40 addTarget:self action:sel__didTapLeftArrowButton_ forControlEvents:0x2000];

  [v33 addSubview:v67];
  objc_storeStrong(&self->_leftArrowButton, v67);
  v66 = [[_UIFloatingTabBarPageButton alloc] initWithDirection:1];
  v41 = [(_UIFloatingTabBarPageButton *)v66 button];
  [v41 addTarget:self action:sel__didTapRightArrowButton_ forControlEvents:0x2000];

  [v33 addSubview:v66];
  objc_storeStrong(&self->_rightArrowButton, v66);
  v42 = [(_UIFloatingTabBar *)self collectionView];
  [v42 _addScrollViewScrollObserver:self];

  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
  v43 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectionGesture_];
  [(UIGestureRecognizer *)v43 setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)v43 setDelegate:self];
  [v33 addGestureRecognizer:v43];
  objc_storeStrong(&self->_selectionGestureRecognizer, v43);
  v44 = [[UIPointerInteraction alloc] initWithDelegate:self];
  [v33 addInteraction:v44];
  objc_storeStrong(&self->_pointerInteraction, v44);
  v45 = [[_UIFloatingTabBarDragController alloc] initWithDelegate:self view:self];
  dragController = self->_dragController;
  self->_dragController = v45;

  v47 = +[UISpringLoadedInteraction _blinkEffect];
  blinkEffect = self->_blinkEffect;
  self->_blinkEffect = v47;

  v49 = objc_alloc_init(_UIFloatingTabBarSpringLoadedInteractionBehavior);
  [(_UIFloatingTabBarSpringLoadedInteractionBehavior *)v49 setTabBar:self];
  v50 = [UISpringLoadedInteraction alloc];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __41___UIFloatingTabBar__createViewHierarchy__block_invoke_3;
  v71[3] = &unk_1E712A440;
  objc_copyWeak(&v72, &location);
  v51 = [(UISpringLoadedInteraction *)v50 initWithInteractionBehavior:v49 interactionEffect:v49 activationHandler:v71];
  [v33 addInteraction:v51];
  _UIBarsSetAccessibilityLimits(self);
  [(UIView *)self setTintAdjustmentMode:1];
  v52 = [(UIView *)self traitOverrides];
  v53 = objc_opt_self();
  [v52 setNSIntegerValue:2 forTrait:v53];

  v54 = [(UIView *)self traitOverrides];
  v55 = objc_opt_self();
  [v54 setNSIntegerValue:1 forTrait:v55];

  v80 = 0x1EFE323C8;
  v56 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
  v57 = [(UIView *)self _registerForTraitTokenChanges:v56 withTarget:self action:sel_setNeedsLayout];

  v79[0] = 0x1EFE32440;
  v79[1] = 0x1EFE324A0;
  v79[2] = 0x1EFE323C8;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:3];
  v59 = [(UIView *)self _registerForTraitTokenChanges:v58 withTarget:self action:sel__updateContentSizeCategory];

  v78 = 0x1EFE323B0;
  v60 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
  v61 = [(UIView *)self _registerForTraitTokenChanges:v60 withTarget:self action:sel__updateBackgroundProperties];

  objc_destroyWeak(&v72);
  objc_destroyWeak(&v74);
  objc_destroyWeak(&location);
}

- (void)_createDataSource
{
  objc_initWeak(&location, self);
  v4 = [UICollectionViewDiffableDataSource alloc];
  v5 = [(_UIFloatingTabBar *)self collectionView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38___UIFloatingTabBar__createDataSource__block_invoke;
  v10[3] = &unk_1E712A468;
  objc_copyWeak(v11, &location);
  v11[1] = a2;
  v6 = [(UICollectionViewDiffableDataSource *)v4 initWithCollectionView:v5 cellProvider:v10];
  dataSource = self->_dataSource;
  self->_dataSource = v6;

  v8 = objc_alloc_init(_UIFloatingTabBarParser);
  parser = self->_parser;
  self->_parser = v8;

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_invalidateDataSourceAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = [(_UIFloatingTabBar *)self parser];
  v5 = [(_UIFloatingTabBar *)self dragController];
  v6 = [v5 pendingDropTab];
  [(UIBackgroundConfiguration *)v14 _setImage:v6];

  v7 = [(_UIFloatingTabBar *)self dragController];
  v8 = [v7 pendingFavoriteOrder];
  [(_UIDocumentUnavailableConfiguration *)v14 set_tintColor:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [(_UIFloatingTabBar *)self dragController];
  v11 = [v10 pendingDropTab];
  v12 = [v11 identifier];
  v13 = [v9 setWithObjects:{v12, 0}];
  [(_UIFloatingTabBarParser *)v14 setIgnoredFavoriteOrderItems:v13];

  [(_UIFloatingTabBarParser *)v14 reloadItems];
  [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:v3];
}

- (void)_invalidateFavoriteOrderAnimated:(BOOL)a3
{
  v3 = a3;
  v14 = [(_UIFloatingTabBar *)self parser];
  v5 = [(_UIFloatingTabBar *)self dragController];
  v6 = [v5 pendingDropTab];
  [(UIBackgroundConfiguration *)v14 _setImage:v6];

  v7 = [(_UIFloatingTabBar *)self dragController];
  v8 = [v7 pendingFavoriteOrder];
  [(_UIDocumentUnavailableConfiguration *)v14 set_tintColor:v8];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [(_UIFloatingTabBar *)self dragController];
  v11 = [v10 pendingDropTab];
  v12 = [v11 identifier];
  v13 = [v9 setWithObjects:{v12, 0}];
  [(_UIFloatingTabBarParser *)v14 setIgnoredFavoriteOrderItems:v13];

  [(_UIFloatingTabBarParser *)v14 invalidateFavorites];
  [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:v3];
}

- (void)_updateDataSourceFromParserAnimated:(BOOL)a3
{
  v3 = a3;
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = [(_UIFloatingTabBar *)self parser];
  v6 = objc_alloc_init(off_1E70ECB58);
  [v6 appendSectionsWithIdentifiers:&unk_1EFE2DEA0];
  v7 = [(_UIFloatingTabBarParser *)v5 fixedItems];
  [v6 appendItemsWithIdentifiers:v7];

  [v6 appendSectionsWithIdentifiers:&unk_1EFE2DEB8];
  v8 = [(_UIFloatingTabBarParser *)v5 items];
  [v6 appendItemsWithIdentifiers:v8];

  [(_UIFloatingTabBar *)self _validateRecentItemForParser:v5];
  v9 = [(_UIFloatingTabBar *)self recentItem];
  if (v9)
  {
    v10 = [(_UIFloatingTabBar *)self isEditing];

    if (!v10)
    {
      [v6 appendSectionsWithIdentifiers:&unk_1EFE2DED0];
      v11 = [(_UIFloatingTabBar *)self recentItem];
      v20[0] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      [v6 appendItemsWithIdentifiers:v12];
    }
  }

  objc_storeStrong(&self->_lastSnapshot, v6);
  objc_initWeak(&location, self);
  dataSource = self->_dataSource;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __57___UIFloatingTabBar__updateDataSourceFromParserAnimated___block_invoke;
  v16[3] = &unk_1E7101C60;
  objc_copyWeak(&v17, &location);
  v18 = v3;
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v6 animatingDifferences:v3 completion:v16];
  v14 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v15 = [(_UIFloatingTabBarParser *)v5 pinnedItems];
  [v14 setItems:v15 animated:v3];

  [(_UIFloatingTabBar *)self _updateTabBarPaginationAnimated:v3];
  [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:v3 completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_updateContentSizeCategory
{
  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
  v4 = [(_UIFloatingTabBar *)self collectionView];
  v3 = [v4 collectionViewLayout];
  [v3 invalidateLayout];
}

- (id)_viewForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 3)
  {
    v5 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v6 = [v4 item];

    v7 = [v5 itemViewForItemAtIndex:v6];
  }

  else
  {
    v5 = [(_UIFloatingTabBar *)self collectionView];
    v8 = [v5 cellForItemAtIndexPath:v4];

    v7 = [v8 contentView];
  }

  return v7;
}

- (id)_tabForItemAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 3)
  {
    v5 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v6 = [v4 item];

    [v5 tabForSelectionAtItemIndex:v6];
  }

  else
  {
    v7 = [(_UIFloatingTabBar *)self dataSource];
    v5 = [v7 itemIdentifierForIndexPath:v4];

    [v5 tabForSelection];
  }
  v8 = ;

  return v8;
}

- (void)_updateTransform
{
  v3 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  memset(&v21, 0, sizeof(v21));
  v4 = [(_UIFloatingTabBar *)self tabModel];
  if ([v4 isEditing])
  {
    if (v3)
    {
      [v3 editModeTransform];
    }

    else
    {
      memset(&v21, 0, sizeof(v21));
    }
  }

  else
  {
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    *&v21.a = *MEMORY[0x1E695EFD0];
    *&v21.c = v5;
    *&v21.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  memset(&v20, 0, sizeof(v20));
  [(_UIFloatingTabBar *)self additionalTransform];
  v18 = v21;
  CGAffineTransformConcat(&v20, &v18, &t2);
  [(UIView *)self transform];
  v18 = v20;
  if (!CGAffineTransformEqualToTransform(&v18, &t2))
  {
    t2 = v20;
    [(UIView *)self setTransform:&t2];
    v6 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];

    if (v6)
    {
      v7 = [(_UIFloatingTabBar *)self contentView];
      v8 = [(_UIFloatingTabBar *)self contentView];
      [v8 bounds];
      [v7 convertRect:self toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
      v17[2](v10, v12, v14, v16);
    }
  }
}

- (void)_updateBackgroundProperties
{
  v15 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  v3 = objc_opt_new();
  v4 = [(_UIFloatingTabBar *)self tabModel];
  if ([v4 isEditing])
  {
    v5 = [v15 editModeBackgroundShadowProvider];

    if (v5)
    {
      v6 = [v15 editModeBackgroundShadowProvider];
      v7 = [(UIView *)self traitCollection];
      v8 = (*(v6 + 16))(v6, [v7 userInterfaceStyle]);

      v3 = v6;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v9 = [v15 shadowProperties];

  if (!v9)
  {
    goto LABEL_8;
  }

  v8 = [v15 shadowProperties];
LABEL_7:

  v3 = v8;
LABEL_8:
  v10 = [(_UIFloatingTabBar *)self backgroundView];
  [v3 applyToView:v10];

  v11 = [v15 borderColor];
  v12 = [v11 CGColor];
  v13 = [(_UIFloatingTabBar *)self backgroundView];
  v14 = [v13 layer];
  [v14 setBorderColor:v12];
}

- (_UIShadowProperties)shadowProperties
{
  v2 = [(_UIFloatingTabBar *)self backgroundView];
  v3 = [_UIShadowProperties propertiesFromView:v2];

  return v3;
}

- (int64_t)effectiveUserInterfaceStyle
{
  v2 = [(UIView *)self->_backgroundView traitCollection];
  v3 = [v2 userInterfaceStyle];

  return v3;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self bounds];
  if (v9 != width || v8 != height)
  {
    [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBar;
  [(UIView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  if (v9 != width || v8 != height)
  {
    [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBar;
  [(UIView *)&v11 setFrame:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (self->_largestItemHeight == 0.0)
  {
    height = a3.height;
    v6 = objc_alloc_init(_UIFloatingTabBarItemView);
    [(UIView *)v6 setHidden:1];
    [(_UIFloatingTabBarItemView *)v6 setEditing:0];
    v7 = [(_UIFloatingTabBar *)self contentView];
    [v7 addSubview:v6];

    [(_UIFloatingTabBarItemView *)v6 sizeThatFits:width, height];
    self->_largestItemHeight = v8;
    [(_UIFloatingTabBarItemView *)v6 baselineOffsetFromTop];
    self->_minimumItemBaselineFromTop = v9;
    [(UIView *)v6 removeFromSuperview];
  }

  v10 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [v10 backgroundInsets];
  v12 = v11;
  v14 = v13;

  v15 = self->_largestItemHeight + v12 + v14;
  v16 = width;
  result.height = v15;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  *&rect2.origin.y = self;
  *&rect2.size.width = _UIFloatingTabBar;
  [(CGFloat *)&rect2.origin.y layoutSubviews];
  [(_UIFloatingTabBar *)self _updatePaginationIfNeeded];
  v3 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  v4 = [(UIView *)self _shouldReverseLayoutDirection];
  if ([(_UIFloatingTabBar *)self _isEffectivelyEmpty])
  {
    v5 = [(_UIFloatingTabBar *)self recentItem];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  [(UIView *)self bounds];
  v108 = v7;
  v109 = v8;
  v10 = v9;
  v12 = v11;
  v13 = [(_UIFloatingTabBar *)self leftArrowButton];
  [v13 sizeThatFits:{v10, v12}];
  v15 = v14;

  v16 = [(_UIFloatingTabBar *)self sidebarButton];
  [v16 sizeThatFits:{v10, v12}];
  v18 = v17;

  v19 = [(_UIFloatingTabBar *)self showsSidebarButton];
  v20 = *MEMORY[0x1E695F060];
  v105 = v18;
  if (v19)
  {
    v20 = v18;
  }

  rect2.origin.x = v20;
  v21 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v106 = v10;
  v107 = v12;
  [v21 sizeThatFits:{v10, v12}];
  v23 = v22;

  v24 = [(_UIFloatingTabBar *)self collectionView];
  [v24 currentPage];
  v26 = v25;

  v27 = fmax(fmin(v26, 1.0), 0.0);
  v28 = [(_UIFloatingTabBar *)self collectionView];
  v29 = [v28 pages];
  v30 = fmax(fmin([v29 count] - v26 + -1.0, 1.0), 0.0);

  if (v4)
  {
    v31 = v30;
  }

  else
  {
    v31 = v27;
  }

  if (v4)
  {
    v32 = v27;
  }

  else
  {
    v32 = v30;
  }

  v100 = v31;
  v33 = v15 * v31;
  v102 = v32;
  v103 = v15;
  v34 = v15 * v32;
  [v3 backgroundInsets];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v99 = v33;
  v43 = rect2.origin.x + v33;
  v101 = v23;
  v44 = v23 + v34 + v43;
  largestPageWidth = self->_largestPageWidth;
  v45 = [(_UIFloatingTabBar *)self collectionView];
  [v45 viewWidthForPageProgress:v26];
  v47 = v42 + v38 + v46 + v44;

  v48 = v40 + v36 + self->_largestItemHeight;
  v49 = [(_UIFloatingTabBar *)self collectionViewContainer];
  [v49 setFrame:{0.0, 0.0, v47, v48}];

  v50 = [(_UIFloatingTabBar *)self collectionViewContainer];
  [v50 _setContinuousCornerRadius:v48 * 0.5];

  v51 = [(_UIFloatingTabBar *)self selectionContainerView];
  [v51 setFrame:{0.0, 0.0, v47, v48}];

  v52 = [(_UIFloatingTabBar *)self selectionContainerView];
  v104 = v48 * 0.5;
  [v52 _setContinuousCornerRadius:v48 * 0.5];

  v53 = [(_UIFloatingTabBar *)self collectionView];
  [v53 frame];
  v95 = v54;

  v93 = v42;
  v96 = v34;
  if (v4)
  {
    v55 = v47 - v42;
    v56 = largestPageWidth;
    v57 = v55 - largestPageWidth - v34 - rect2.origin.x;
  }

  else
  {
    v57 = v38 + v43;
    v55 = v47 - v42;
    v56 = largestPageWidth;
  }

  v58 = [(_UIFloatingTabBar *)self collectionView];
  v98 = v57;
  [v58 setFrame:{v57, 0.0, v56, v48}];

  v59 = [(_UIFloatingTabBar *)self collectionView];
  [v59 _setVisibleRectEdgeInsets:{0.0, -(rect2.origin.x + v103 + v44), 0.0, -(rect2.origin.x + v103 + v44)}];

  v60 = rect2.origin.x + v55 - v38 - v44;
  if (v4)
  {
    v60 = 0.0;
  }

  v61 = v38 + v99 + v60;
  v62 = [(_UIFloatingTabBar *)self pinnedItemsView];
  [v62 setFrame:{v61, 0.0, v101, v48}];

  largestItemHeight = self->_largestItemHeight;
  if (v6)
  {
    v47 = 0.0;
  }

  v64 = [(_UIFloatingTabBar *)self leftArrowButton];
  [v64 setFrame:{v99 - v103, v36, v103, largestItemHeight}];

  v65 = [(_UIFloatingTabBar *)self leftArrowButton];
  [v65 setContentOpacity:v100];

  v66 = [(_UIFloatingTabBar *)self rightArrowButton];
  [v66 setFrame:{v47 - v96, v36, v103, largestItemHeight}];

  v67 = [(_UIFloatingTabBar *)self rightArrowButton];
  [v67 setContentOpacity:v102];

  if (v4)
  {
    v68 = [(_UIFloatingTabBar *)self rightArrowButton];
    [v68 frame];
    v69 = v105;
    v70 = CGRectGetMinX(v111) - v105 - v94;
  }

  else
  {
    v68 = [(_UIFloatingTabBar *)self leftArrowButton];
    [v68 frame];
    v70 = v38 + CGRectGetMaxX(v112);
    v69 = v105;
  }

  v71 = [(_UIFloatingTabBar *)self sidebarButton];
  [v71 setFrame:{v70, v36, v69, largestItemHeight}];

  if ([(_UIFloatingTabBar *)self showsSidebarButton])
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  v73 = [(_UIFloatingTabBar *)self sidebarButton];
  [v73 setAlpha:v72];

  v74 = v108 + (v106 - v47) * 0.5;
  v75 = v109 + (v107 - v48) * 0.5;
  v76 = [(_UIFloatingTabBar *)self backgroundView];
  [v76 frame];
  rect2.origin.x = v77;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  v84 = [(_UIFloatingTabBar *)self contentView];
  [v84 setFrame:{0.0, 0.0, v47, v48}];

  v85 = [(_UIFloatingTabBar *)self backgroundCaptureView];
  [v85 setFrame:{v74, v75, v47, v48}];

  v86 = [(_UIFloatingTabBar *)self backgroundView];
  [v86 setFrame:{v74, v75, v47, v48}];

  v87 = [(_UIFloatingTabBar *)self contentView];
  [v87 _setContinuousCornerRadius:v104];

  v88 = [(_UIFloatingTabBar *)self backgroundView];
  [v88 _setContinuousCornerRadius:v104];

  v89 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
  if (v89)
  {
    v90 = v89;
    v113.origin.x = v108 + (v106 - v47) * 0.5;
    v113.origin.y = v109 + (v107 - v48) * 0.5;
    v113.size.width = v47;
    v113.size.height = v48;
    v114.origin.x = rect2.origin.x;
    v114.origin.y = v79;
    v114.size.width = v81;
    v114.size.height = v83;
    v91 = CGRectEqualToRect(v113, v114);

    if (!v91)
    {
      v92 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
      v92[2](v74, v75, v47, v48);
    }
  }

  if ((*&self->_needsUpdate & 2) != 0 || v95 != v98)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:0 completion:0];
  }
}

- (void)_updateTabBarPaginationAnimated:(BOOL)a3
{
  v3 = a3;
  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  if (v3)
  {
    v5 = [(UIView *)self window];
    if (v5)
    {
      v6 = v5;
      v7 = [(_UIFloatingTabBar *)self contentView];
      [v7 frame];
      IsEmpty = CGRectIsEmpty(v10);

      if (!IsEmpty)
      {
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __53___UIFloatingTabBar__updateTabBarPaginationAnimated___block_invoke;
        v9[3] = &unk_1E70F3590;
        v9[4] = self;
        [(_UIFloatingTabBar *)self _animateSelection:v9 completion:0];
      }
    }
  }
}

- (CGSize)_maximumContainerSizeForPagination
{
  v3 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  v4 = [(_UIFloatingTabBar *)self tabModel];
  v5 = [v4 isEditing];

  if (v5)
  {
    [v3 maximumExpandedWidth];
  }

  else
  {
    [v3 maximumWidth];
  }

  v7 = v6;
  [UIViewController _horizontalContentMarginForView:self];
  v9 = v8;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12 - (v9 + v9);
  v14 = [(_UIFloatingTabBar *)self pinnedItemsView];
  [v14 sizeThatFits:{v13, v11}];
  v16 = v15;

  if ([(_UIFloatingTabBar *)self showsSidebarButton])
  {
    v17 = [(_UIFloatingTabBar *)self sidebarButton];
    [v17 sizeThatFits:{v13, v11}];
    v16 = v16 + v18;
  }

  v19 = 0.65;
  if (v5)
  {
    v19 = 0.95;
  }

  v20 = fmin(v7, v19 * v13) - v16;

  v21 = v20;
  v22 = v11;
  result.height = v22;
  result.width = v21;
  return result;
}

- (void)_updatePaginationIfNeeded
{
  v119 = *MEMORY[0x1E69E9840];
  if (*&self->_needsUpdate)
  {
    v104 = 408;
    v107 = [(_UIFloatingTabBar *)self collectionView];
    v106 = [(UIView *)self traitCollection];
    v3 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
    v4 = [(_UIFloatingTabBar *)self lastSnapshot];
    v5 = [v4 itemIdentifiers];

    [(_UIFloatingTabBar *)self _maximumContainerSizeForPagination];
    v7 = v6;
    v9 = v8;
    v10 = [(_UIFloatingTabBar *)self leftArrowButton];
    v113 = v7;
    [v10 sizeThatFits:{v7, v9}];
    v12 = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [v5 count];
    v103[1] = v103;
    MEMORY[0x1EEE9AC00](v14);
    v16 = v103 - v15;
    v17 = [[_UIEditMenuListPage alloc] initWithStartIndex:0];
    [v13 addObject:v17];
    v18 = [(_UIFloatingTabBar *)self isEditing];
    v105 = v3;
    [v3 editModeItemMargins];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = objc_alloc_init(_UIFloatingTabBarItemView);
    [(_UIFloatingTabBarItemView *)v27 setSuppressJiggleAnimation:1];
    [(UIView *)v27 setHidden:1];
    [(_UIFloatingTabBarItemView *)v27 setEditing:v18];
    v28 = [(_UIFloatingTabBar *)self contentView];
    [v28 addSubview:v27];

    v29 = [v5 count];
    v112 = v12;
    if (v29)
    {
      v30 = 0;
      v31 = *(MEMORY[0x1E695F060] + 8);
      v109 = *MEMORY[0x1E695F060];
      v108 = v31;
      v111 = v22 + v26;
      v110 = v20 + v24;
      v32 = 0.0;
      v33 = v9;
      v34 = v9;
      do
      {
        v35 = [v5 objectAtIndex:v30];
        [v13 count];
        [v5 count];
        v36 = v113;
        UIRoundToViewScale(self);
        v38 = v37;
        v39 = [v35 contentTab];

        if (v39)
        {
          v40 = [v35 contentTab];
          [(_UIFloatingTabBarItemView *)v27 setItem:v40];

          [(_UIFloatingTabBarItemView *)v27 sizeThatFits:v36, v9];
          v42 = v41;
          v44 = v43;
          [(_UIFloatingTabBarItemView *)v27 baselineOffsetFromTop];
          v46 = v45;
          v47 = [(_UIFloatingTabBarItemView *)v27 isCustomizableItem];
          v48 = v111 + v42;
          if (v47 && v18)
          {
            v44 = v110 + v44;
          }

          else
          {
            v48 = v42;
          }
        }

        else
        {
          v49 = [v35 isPlaceholder];
          if (v49)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v108;
          }

          v48 = 80.0;
          if (!v49)
          {
            v48 = v109;
          }

          v46 = v9;
        }

        v50 = fmin(v48, v38);
        *&v16[8 * v30] = v50;
        [(_UIEditMenuListPage *)v17 width];
        UIRoundToViewScale(self);
        if (v51 > v38)
        {
          v52 = [[_UIEditMenuListPage alloc] initWithStartIndex:v30];

          [v13 addObject:v52];
          v17 = v52;
        }

        [(_UIEditMenuListPage *)v17 appendItemWithWidth:v50];
        v32 = fmax(v32, v44);
        v33 = fmin(v33, v46);

        ++v30;
        v9 = v34;
      }

      while (v30 < [v5 count]);
    }

    else
    {
      v32 = 0.0;
      v33 = v9;
    }

    v53 = [v13 count];
    v54 = v113;
    if (v53 >= 2)
    {
      UIRoundToViewScale(self);
      v56 = v55;
      v57 = [(_UIEditMenuListPage *)v17 range];
      v58 = v57 - 1;
      if (v57 != 1)
      {
        v59 = 0.0;
        do
        {
          v60 = *&v16[8 * v58];
          [(_UIEditMenuListPage *)v17 width];
          UIRoundToViewScale(self);
          if (v61 >= v56)
          {
            break;
          }

          v59 = v59 + v60;
          [(_UIEditMenuListPage *)v17 prependItemWithWidth:v60];
          --v58;
        }

        while (v58);
        if (v59 > 0.0)
        {
          v62 = [v13 objectAtIndex:{objc_msgSend(v13, "count") - 2}];
          [v62 setOverlapWidth:v59];
        }
      }
    }

    if (v18 && ![v5 count])
    {
      v63 = [(_UIFloatingTabBar *)self pinnedItemsView];
      v64 = [v63 items];
      v65 = [v64 count];

      if (!v65)
      {
        [(_UIEditMenuListPage *)v17 appendItemWithWidth:80.0];
      }
    }

    v117 = 0u;
    v116 = 0u;
    v115 = 0u;
    v114 = 0u;
    v66 = v13;
    v67 = [v66 countByEnumeratingWithState:&v114 objects:v118 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v115;
      v70 = 0.0;
      do
      {
        for (i = 0; i != v68; ++i)
        {
          if (*v115 != v69)
          {
            objc_enumerationMutation(v66);
          }

          [*(*(&v114 + 1) + 8 * i) width];
          v70 = fmax(v72, v70);
        }

        v68 = [v66 countByEnumeratingWithState:&v114 objects:v118 count:16];
      }

      while (v68);
    }

    else
    {
      v70 = 0.0;
    }

    self->_largestPageWidth = v70;
    v73 = [v5 count];
    if (v32 == 0.0 || !v73)
    {
      v74 = [(_UIFloatingTabBar *)self pinnedItemsView];
      v75 = [v74 items];
      v76 = [v75 count];

      if (v76)
      {
        v77 = [(_UIFloatingTabBar *)self pinnedItemsView];
        [v77 sizeThatFits:{v54, v9}];
        v32 = v78;
      }

      else
      {
        [(_UIFloatingTabBarItemView *)v27 sizeThatFits:v54, v9];
        v32 = v79;
      }

      [(_UIFloatingTabBarItemView *)v27 baselineOffsetFromTop];
      v33 = v80;
    }

    self->_largestItemHeight = v32;
    self->_minimumItemBaselineFromTop = v33;
    v81 = [v107 pages];
    v82 = v66;
    v83 = v82;
    if (v81 == v82)
    {
    }

    else
    {
      if (v82 && v81)
      {
        v84 = [v81 isEqual:v82];

        if (v84)
        {
          goto LABEL_58;
        }
      }

      else
      {
      }

      v81 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
      if (![(_UIFloatingTabBar *)self isEditing]&& v81)
      {
        v85 = [(_UIFloatingTabBar *)self collectionView];
        v86 = [v85 indexPathsForVisibleItems];
        v87 = [v86 containsObject:v81];

        if (v87)
        {
          [(_UIFloatingTabBar *)self _setNeedsScrollToSelectedItem];
        }
      }

      [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
      [(_UIFloatingTabBar *)self _setNeedsPaginationScrollTarget];
    }

LABEL_58:
    v88 = v107;
    [v107 contentInset];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    [(_UIEditMenuListPage *)v17 width];
    [v88 setContentInset:{v90, v92, v94, v70 - v95}];
    [v88 setPages:v83];
    v96 = [v83 count];
    v97 = v96 < 2;
    v98 = v96 > 1;
    [v88 setScrollEnabled:v98];
    v99 = v98 || v18;
    v100 = [(_UIFloatingTabBar *)self collectionViewContainer];
    [v100 setClipsToBounds:v99];

    v101 = [(_UIFloatingTabBar *)self contentView];
    [v101 setClipsToBounds:v99];

    v102 = [(_UIFloatingTabBar *)self selectionContainerView];
    [v102 setClipsToBounds:v99];

    [(_UIFloatingTabBar *)self setScrubbingEnabled:v97];
    [(_UIFloatingTabBar *)self _setNeedsSelectionAlphaUpdate];
    [(UIView *)v27 removeFromSuperview];
    *(&self->super.super.super.isa + v104) &= ~1u;
  }
}

- (void)_didTapLeftArrowButton:(id)a3
{
  v4 = [(UIView *)self _shouldReverseLayoutDirection];
  v5 = [(_UIFloatingTabBar *)self collectionView];
  v6 = v5;
  if (v4)
  {
    [v5 incrementTargetPage];
  }

  else
  {
    [v5 decrementTargetPage];
  }

  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
}

- (void)_didTapRightArrowButton:(id)a3
{
  v4 = [(UIView *)self _shouldReverseLayoutDirection];
  v5 = [(_UIFloatingTabBar *)self collectionView];
  v6 = v5;
  if (v4)
  {
    [v5 decrementTargetPage];
  }

  else
  {
    [v5 incrementTargetPage];
  }

  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
}

- (BOOL)scrubbingEnabled
{
  v2 = [(_UIFloatingTabBar *)self collectionView];
  v3 = [v2 bounces];

  return v3 ^ 1;
}

- (void)setScrubbingEnabled:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 10.0;
  }

  v6 = [(_UIFloatingTabBar *)self collectionView];
  [v6 setBounces:!v3];

  v7 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [v7 setAllowableMovement:{v5, v5}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = _UIFloatingTabBar;
  v8 = [(UIView *)&v13 hitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8 == self || v8 == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UIFloatingTabBar *)self isEditing]&& !CGRectIsNull(self->_frameForExpandedDropTarget) && (v15.x = x, v15.y = y, CGRectContainsPoint(self->_frameForExpandedDropTarget, v15)))
    {
      v11 = self;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];

  if (v5 == v4)
  {
    v8 = [(_UIFloatingTabBar *)self _indexPathForGestureRecognizer:v4];
    if (v8)
    {
      v9 = [(_UIFloatingTabBar *)self tabModel];
      v10 = [v9 isEditing];

      if ((v10 & 1) == 0)
      {
        v11 = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:v8];
        v7 = [v11 isEnabled];

LABEL_10:
        goto LABEL_11;
      }
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v6 = [(_UIFloatingTabBar *)self editModeGestureRecognizer];

  if (v6 == v4)
  {
    v8 = [(_UIFloatingTabBar *)self tabModel];
    if ([v8 isEditable] && !-[_UIFloatingTabBar isEditing](self, "isEditing"))
    {
      v7 = !self->_isInTransitionAnimation;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = 1;
LABEL_11:

  return v7 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(_UIFloatingTabBar *)self collectionView];
    v11 = [v10 panGestureRecognizer];
    if (v11 == v6)
    {
      v9 = 1;
    }

    else
    {
      v12 = [(_UIFloatingTabBar *)self editModeGestureRecognizer];
      v9 = v12 == v6;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_indexPathForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self pinnedItemsView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v11 = [v10 itemIndexForItemAtLocation:{v7, v9}];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [(_UIFloatingTabBar *)self collectionView];
    [v4 locationInView:v12];
    v14 = v13;

    v15 = [(_UIFloatingTabBar *)self collectionView];
    [v15 bounds];
    MidY = CGRectGetMidY(v27);

    v17 = [(_UIFloatingTabBar *)self collectionView];
    [v17 bounds];
    v26.x = v14;
    v26.y = MidY;
    v18 = CGRectContainsPoint(v28, v26);

    if (v18)
    {
      v19 = [(_UIFloatingTabBar *)self collectionView];
      v20 = [v19 indexPathForItemAtPoint:{v14, MidY}];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v20];
    v22 = [(_UIFloatingTabBar *)self collectionView];
    v23 = [v22 targetPage];

    if (v21 != v23)
    {

      v20 = 0;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AC88] indexPathForItem:v11 inSection:3];
  }

  return v20;
}

- (void)_handleSelectionGesture:(id)a3
{
  v45 = a3;
  v4 = [(_UIFloatingTabBar *)self _indexPathForGestureRecognizer:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(_UIFloatingTabBar *)self highlightedIndexPath];
  }

  v7 = v6;

  v8 = v7;
  v9 = [(_UIFloatingTabBar *)self collectionView];
  if ([v9 isDecelerating])
  {
    v10 = [(_UIFloatingTabBar *)self collectionView];
    v11 = [v10 panGestureRecognizer];
    v12 = [v11 state] == 5;
  }

  else
  {
    v12 = 1;
  }

  v13 = [(_UIFloatingTabBar *)self contentView];
  [v45 locationInView:v13];
  v15 = v14;
  v17 = v16;

  v18 = [v45 state];
  v19 = 0;
  if (v18 > 2)
  {
    if (v18 == 3)
    {

      if (v8)
      {
        v33 = v12;
      }

      else
      {
        v33 = 0;
      }

      if (v33)
      {
        v34 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
        v35 = [v34 isEqual:v8];

        if (!v35)
        {
          v20 = 0;
          v19 = 1;
          v22 = 1;
          goto LABEL_39;
        }

        v22 = [(_UIFloatingTabBar *)self shouldReselectHighlightedItemOnLift];
      }

      else
      {
        v22 = 0;
      }

      v20 = 0;
      v19 = 1;
      goto LABEL_39;
    }

    v19 = v18 == 4;
    goto LABEL_16;
  }

  if (v18 == 1)
  {
    if ([(_UIFloatingTabBar *)self scrubbingEnabled])
    {
      v23 = 0.5;
      if (v8)
      {
        v24 = [(_UIFloatingTabBar *)self contentView];
        [(_UIFloatingTabBar *)self _itemFrameForItemAtIndexPath:v8 inCoordinateSpace:v24];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        v47.origin.x = v26;
        v47.origin.y = v28;
        v47.size.width = v30;
        v47.size.height = v32;
        if (CGRectIsNull(v47))
        {
          v20 = v8;
        }

        else
        {
          v48.origin.x = v26;
          v48.origin.y = v28;
          v48.size.width = v30;
          v48.size.height = v32;
          v20 = v8;
          if (!CGRectIsEmpty(v48))
          {
            v36 = [(_UIFloatingTabBar *)self contentView];
            [v45 locationInView:v36];
            v38 = v37;

            v49.origin.x = v26;
            v49.origin.y = v28;
            v49.size.width = v30;
            v49.size.height = v32;
            v39 = v38 - CGRectGetMinX(v49);
            v50.origin.x = v26;
            v50.origin.y = v28;
            v50.size.width = v30;
            v50.size.height = v32;
            v20 = v8;
            v23 = v39 / CGRectGetWidth(v50);
          }
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {

      v20 = 0;
      v23 = 0.5;
    }

    [(_UIFloatingTabBar *)self setHighlightAnchorPoint:v23, 0.5];
    v40 = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
    [v40 increment];

    if (_UIFlexiGlassEnabled())
    {
      v41 = [(UIView *)self traitCollection];
      v42 = [v41 valueForNSIntegerTrait:objc_opt_class()];

      if (!v42)
      {
        v43 = [(UIView *)self traitOverrides];
        [v43 setNSIntegerValue:1 forTrait:objc_opt_class()];
      }
    }

    [(_UIFloatingTabBar *)self setShouldReselectHighlightedItemOnLift:1];
    [(_UIFloatingTabBar *)self setSelectionGestureInitialLocation:v15, v17];
    goto LABEL_38;
  }

  if (v18 != 2)
  {
LABEL_16:

    v22 = 0;
    v20 = 0;
    goto LABEL_39;
  }

  v20 = v8;
  if (![(_UIFloatingTabBar *)self scrubbingEnabled])
  {

    v20 = 0;
  }

  [(_UIFloatingTabBar *)self selectionGestureInitialLocation];
  if (vabdd_f64(v15, v21) >= 4.0)
  {
    [(_UIFloatingTabBar *)self setShouldReselectHighlightedItemOnLift:0];
  }

LABEL_38:
  v19 = 0;
  v22 = 0;
LABEL_39:
  [(_UIFloatingTabBar *)self setHighlightedIndexPath:v20];
  [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:1 completion:0];
  if (v22)
  {
    [(_UIFloatingTabBar *)self _selectItemAtIndexPath:v8];
  }

  if (v19)
  {
    v44 = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
    [v44 complete];
  }
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 view];
  [v8 location];
  v11 = v10;
  v13 = v12;
  v14 = [(_UIFloatingTabBar *)self pinnedItemsView];
  [v9 convertPoint:v14 toView:{v11, v13}];
  v16 = v15;
  v18 = v17;

  v19 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v20 = [v19 itemIndexForItemAtLocation:{v16, v18}];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x1E696AC88] indexPathForItem:v20 inSection:3];
    v57 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [v57 itemFrameForItemAtIndex:v20];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v67 = [v7 view];
    [v66 convertRect:v67 toView:{v59, v61, v63, v65}];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v56 = [UIPointerRegion regionWithRect:v33 identifier:v69, v71, v73, v75];
    goto LABEL_9;
  }

  v21 = [v7 view];
  [v8 location];
  v23 = v22;
  v25 = v24;
  v26 = [(_UIFloatingTabBar *)self collectionView];
  [v21 convertPoint:v26 toView:{v23, v25}];
  v28 = v27;
  v30 = v29;

  v31 = [(_UIFloatingTabBar *)self collectionView];
  [v31 bounds];
  v80.x = v28;
  v80.y = v30;
  LODWORD(v26) = CGRectContainsPoint(v81, v80);

  if (!v26)
  {
    goto LABEL_8;
  }

  v32 = [(_UIFloatingTabBar *)self collectionView];
  v33 = [v32 indexPathForItemAtPoint:{v28, v30}];

  v34 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v33];
  v35 = [(_UIFloatingTabBar *)self collectionView];
  v36 = [v35 targetPage];

  if (v34 != v36)
  {

LABEL_8:
    v56 = 0;
    v33 = 0;
    goto LABEL_9;
  }

  if (v33)
  {
    v37 = [(_UIFloatingTabBar *)self collectionView];
    v38 = [v37 cellForItemAtIndexPath:v33];

    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = [v7 view];
    [v38 convertRect:v47 toView:{v40, v42, v44, v46}];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v56 = [UIPointerRegion regionWithRect:v33 identifier:v49, v51, v53, v55];
  }

  else
  {
    v56 = 0;
  }

LABEL_9:
  v76 = [(_UIFloatingTabBar *)self tabModel];
  if ([v76 isEditing])
  {
    v77 = [v33 section];

    if (v77 == 1)
    {
      goto LABEL_13;
    }

    v76 = v56;
    v56 = 0;
  }

LABEL_13:

  return v56;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v5 = [a4 identifier];
  v6 = self;
  v7 = [(_UIFloatingTabBar *)v6 _viewForItemAtIndexPath:v5];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v7 superview];
  [v7 center];
  [v16 convertPoint:v6 toView:?];
  v18 = v17;
  v20 = v19;

  v21 = [[UIPreviewTarget alloc] initWithContainer:v6 center:v18, v20];
  v22 = [(_UIFloatingTabBar *)v6 tabModel];
  v23 = [v22 isEditing];

  if (v23)
  {
    v24 = [(_UIFloatingTabBar *)v6 _targetedPreviewForTabAtIndexPath:v5];
    v25 = [v24 retargetedPreviewWithTarget:v21];
LABEL_10:
    v32 = v25;
    v33 = off_1E70EA410;
    goto LABEL_13;
  }

  v26 = [(_UIFloatingTabBar *)v6 _indexPathForSelectedItem];
  v27 = v5;
  v28 = v26;
  v29 = v28;
  if (v27 == v28)
  {

    goto LABEL_9;
  }

  if (v27 && v28)
  {
    v30 = [v27 isEqual:v28];

    if (!v30)
    {
      goto LABEL_12;
    }

LABEL_9:
    v31 = [UITargetedPreview alloc];
    v24 = objc_opt_new();
    v25 = [(UITargetedPreview *)v31 initWithView:v7 parameters:v24 target:v21];
    goto LABEL_10;
  }

LABEL_12:
  v34 = [UITargetedPreview alloc];
  v24 = objc_opt_new();
  v32 = [(UITargetedPreview *)v34 initWithView:v7 parameters:v24 target:v21];
  v33 = off_1E70EA3F8;
LABEL_13:

  v35 = [(__objc2_class *)*v33 effectWithPreview:v32];
  [v7 convertRect:v6 toView:{v9, v11, v13, v15}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(UITargetedPreview *)v32 view];
  [v44 bounds];
  v45 = [UIPointerShape shapeWithRoundedRect:v37 cornerRadius:v39, v41, v43, CGRectGetHeight(v49) * 0.5];

  v46 = [UIPointerStyle styleWithEffect:v35 shape:v45];

  return v46;
}

- (BOOL)_isValidDropTargetIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 section])
  {
    v7 = [v5 item];
    v8 = [(_UIFloatingTabBar *)self lastSnapshot];
    v6 = v7 == [v8 numberOfItemsInSection:&unk_1EFE33DF0];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)tabDragController:(id)a3 tabForBeginningSession:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self collectionView];
  [v5 locationInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(_UIFloatingTabBar *)self collectionView];
  v12 = [v11 indexPathForItemAtPoint:{v8, v10}];

  if (v12)
  {
    v13 = [(_UIFloatingTabBar *)self dataSource];
    v14 = [v13 itemIdentifierForIndexPath:v12];

    v15 = [v14 tabForSelection];
    v16 = [(_UIFloatingTabBar *)self _canDragTab:v15];

    if (v16)
    {
      v17 = [v14 tabForSelection];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)tabDragController:(id)a3 hideDraggedTab:(id)a4
{
  v8 = [(_UIFloatingTabBar *)self _indexPathForTabItem:a4];
  v5 = [(_UIFloatingTabBar *)self collectionView];
  v6 = [v5 cellForItemAtIndexPath:v8];

  v7 = [v6 contentView];
  [v7 setHidden:1];
}

- (BOOL)tabDragController:(id)a3 canHandleDropSessionForTab:(id)a4
{
  v5 = a4;
  v6 = [v5 _tabModel];
  v7 = [(_UIFloatingTabBar *)self tabModel];
  if (v6 == v7)
  {
    v8 = [v5 _isAction] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)tabDragController:(id)a3 dropProposalForSession:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self collectionView];
  [v5 locationInView:v6];

  v7 = [(_UIFloatingTabBar *)self collectionView];
  [v7 bounds];
  CGRectGetMidY(v20);

  v8 = [(_UIFloatingTabBar *)self _destinationIndexPathForDropSession:v5];
  v9 = [(_UIFloatingTabBar *)self tabModel];
  v10 = [v9 isEditing];

  if (v10)
  {
    v11 = [v5 items];
    v12 = [v11 firstObject];

    v13 = [v12 localObject];
    if ([v13 _tabPlacement] == 6)
    {
      v14 = 1;
    }

    else if (-[_UIFloatingTabBar _isValidDropTargetIndexPath:](self, "_isValidDropTargetIndexPath:", v8) && (-[_UIFloatingTabBar tabModel](self, "tabModel"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isTabHidden:v13], v15, (v16 & 1) == 0))
    {
      if ([(_UIFloatingTabBar *)self _canDragTab:v13])
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    if (!v8)
    {
      v14 = 0;
      goto LABEL_14;
    }

    v12 = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:v8];
    v13 = [(_UIFloatingTabBar *)self _tabBarController];
    v14 = [(UITabBarController *)v13 _tab:v12 operationForAcceptingItemsFromDropSession:v5];
  }

LABEL_14:
  v17 = [[UIDropProposal alloc] initWithDropOperation:v14];

  return v17;
}

- (BOOL)tabDragController:(id)a3 isDisplayingTab:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self parser];
  v7 = [(_UIFloatingTabBarParser *)v6 itemIdentifiers];
  v8 = [v5 identifier];

  LOBYTE(v5) = [v7 containsObject:v8];
  return v5;
}

- (void)tabDragController:(id)a3 acceptItemsIntoTabFromDropSession:(id)a4
{
  v8 = a4;
  v5 = [(_UIFloatingTabBar *)self _destinationIndexPathForDropSession:?];
  if (v5)
  {
    v6 = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:v5];
    v7 = [(_UIFloatingTabBar *)self _tabBarController];
    [(UITabBarController *)v7 _tab:v6 acceptItemsFromDropSession:v8];
  }
}

- (void)tabDragController:(id)a3 pendingDropTabDidChange:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self parser];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 != v5)
  {

    [(_UIFloatingTabBar *)self _invalidateFavoriteOrderAnimated:1];
  }
}

- (id)_targetedPreviewForTab:(id)a3
{
  v4 = [(_UIFloatingTabBar *)self _indexPathForTabItem:a3];
  if (v4)
  {
    v5 = [(_UIFloatingTabBar *)self _targetedPreviewForTabAtIndexPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_targetedPreviewForTabAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v4];
  v6 = [(_UIFloatingTabBar *)self _viewForItemAtIndexPath:v4];

  if (v6 && (-[_UIFloatingTabBar collectionView](self, "collectionView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 targetPage], v7, v5 == v8))
  {
    v9 = [(_UIFloatingTabBar *)self contentView];
    [v6 center];
    v11 = v10;
    v13 = v12;
    v14 = [v6 superview];
    [v9 convertPoint:v14 fromView:{v11, v13}];
    v16 = v15;
    v18 = v17;

    v19 = objc_opt_new();
    [v19 setHidesSourceViewDuringDropAnimation:1];
    v20 = +[UIColor secondarySystemBackgroundColor];
    [v19 setBackgroundColor:v20];

    [v6 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v6 bounds];
    v29 = [UIBezierPath _bezierPathWithPillRect:v22 cornerRadius:v24, v26, v28, CGRectGetHeight(v36) * 0.5];
    [v19 setVisiblePath:v29];

    v30 = [UIDragPreviewTarget alloc];
    v31 = [(_UIFloatingTabBar *)self contentView];
    v32 = [(UIPreviewTarget *)v30 initWithContainer:v31 center:v16, v18];

    v33 = [[UITargetedDragPreview alloc] initWithView:v6 parameters:v19 target:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_destinationIndexPathForDropSession:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self collectionView];
  [v4 locationInView:v5];
  v7 = v6;
  [v5 bounds];
  MidY = CGRectGetMidY(v89);
  v9 = [(_UIFloatingTabBar *)self tabModel];
  v10 = [v9 isEditing];

  if ((v10 & 1) == 0)
  {
    v11 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [v4 locationInView:v11];
    v13 = v12;
    v15 = v14;

    v16 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v17 = [v16 itemIndexForItemAtLocation:{v13, v15}];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:3];
      if (v18)
      {
        goto LABEL_35;
      }
    }
  }

  v19 = [(_UIFloatingTabBar *)self collectionView];
  [v19 bounds];
  v88.x = v7;
  v88.y = MidY;
  v20 = CGRectContainsPoint(v90, v88);

  if (v20)
  {
    v21 = [(_UIFloatingTabBar *)self collectionView];
    v18 = [v21 indexPathForItemAtPoint:{v7, MidY}];
  }

  else
  {
    v18 = 0;
  }

  v22 = [(_UIFloatingTabBar *)self tabModel];
  v23 = [v22 isEditing];

  if (!v23)
  {
    goto LABEL_35;
  }

  if (!v18)
  {
    v24 = [v5 pages];
    v25 = [v24 objectAtIndex:{objc_msgSend(v5, "targetPage")}];

    v26 = [(_UIFloatingTabBar *)self contentView];
    [v4 locationInView:v26];
    v28 = v27;

    v29 = [(_UIFloatingTabBar *)self contentView];
    [v29 bounds];
    v30 = v28 < CGRectGetMidX(v91);

    v31 = [(UIView *)self _shouldReverseLayoutDirection];
    v86 = v25;
    v33 = [v25 range];
    if (v30 == v31)
    {
      v35 = v32;
      v36 = [(_UIFloatingTabBar *)self dragController];
      v37 = [v36 pendingFavoriteOrder];
      v38 = [v37 indexOfObject:0x1EFB191F0];

      if (v38 == 0x7FFFFFFFFFFFFFFFLL || ([MEMORY[0x1E696AC88] indexPathForItem:v38 inSection:1], v65 = objc_claimAutoreleasedReturnValue(), v66 = -[_UIFloatingTabBar _indexInDataSourceForItemAtIndexPath:](self, "_indexInDataSourceForItemAtIndexPath:", v65), v65, v66 < v33) || v66 - v33 >= v35)
      {
        v84 = v35;
        v39 = [(UIView *)self traitCollection];
        v40 = _UIFloatingTabBarGetPlatformMetrics([v39 userInterfaceIdiom]);

        [(_UIFloatingTabBar *)self _maximumContainerSizeForPagination];
        v42 = v41;
        v44 = v43;
        v45 = [(_UIFloatingTabBar *)self leftArrowButton];
        [(UIView *)self bounds];
        [v45 sizeThatFits:{v46, v47}];

        v48 = [(_UIFloatingTabBar *)self lastSnapshot];
        [v48 numberOfItems];

        v85 = v40;
        [v40 editModeItemMargins];
        v50 = v49;
        v52 = v51;
        v53 = [_UIFloatingTabBarItemView alloc];
        v54 = [(_UIFloatingTabBarItemView *)v53 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        [(UIView *)v54 setHidden:1];
        [(_UIFloatingTabBarItemView *)v54 setSuppressJiggleAnimation:1];
        [(_UIFloatingTabBarItemView *)v54 setEditing:1];
        v55 = [v4 items];
        v56 = [v55 firstObject];
        v57 = [v56 localObject];
        [(_UIFloatingTabBarItemView *)v54 setItem:v57];

        v58 = [(_UIFloatingTabBar *)self contentView];
        [v58 addSubview:v54];

        [(_UIFloatingTabBarItemView *)v54 sizeThatFits:v42, v44];
        v60 = v59;
        if ([v5 targetPage] < 1)
        {
          v64 = 0.0;
        }

        else
        {
          v61 = [v5 pages];
          v62 = [v61 objectAtIndex:{objc_msgSend(v5, "targetPage") - 1}];

          [v62 overlapWidth];
          v64 = v63;
        }

        v70 = v33 + v84 - 1;
        if (v70 < v33)
        {
LABEL_24:
          v18 = 0;
        }

        else
        {
          v71 = v50 + v52 + v60;
          v72 = 0.0;
          while (1)
          {
            v73 = [(_UIFloatingTabBar *)self _indexPathForItemAtDataSourceIndex:v70];
            if ([v73 section] != 1)
            {
              v18 = 0;
              goto LABEL_27;
            }

            v74 = [v5 pages];
            [v74 count];

            v75 = v70 + 1;
            UIRoundToViewScale(self);
            v77 = v76;
            [v86 width];
            if (v71 + v78 - v64 - v72 <= v77)
            {
              break;
            }

            v79 = [v5 cellForItemAtIndexPath:v73];
            [v79 bounds];
            v72 = v72 + v80;

            --v70;
            if (v75 - 2 < v33)
            {
              goto LABEL_24;
            }
          }

          v18 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v73 inSection:{"item") + 1, 1}];
LABEL_27:
        }

        v69 = v85;
        [(UIView *)v54 removeFromSuperview];
      }

      else
      {
        v67 = [v86 range];
        [v86 range];
        v69 = [(_UIFloatingTabBar *)self _indexPathForItemAtDataSourceIndex:v67 + v68 - 1];
        v18 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v69 inSection:{"item") + 1, 1}];
      }

      if (!v18)
      {
        v81 = [(_UIFloatingTabBar *)self lastSnapshot];
        v34 = [v81 numberOfItemsInSection:&unk_1EFE33DC0];

LABEL_32:
        v18 = [MEMORY[0x1E696AC88] indexPathForItem:v34 inSection:1];

        if (!v18)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v18 = [(_UIFloatingTabBar *)self _indexPathForItemAtDataSourceIndex:v33];
      if (!v18)
      {
        v34 = 0;
        goto LABEL_32;
      }
    }
  }

LABEL_33:
  if (![v18 section])
  {
    v82 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:1];

    v18 = v82;
  }

LABEL_35:

  return v18;
}

- (void)setHighlightedIndexPath:(id)a3
{
  v5 = a3;
  highlightedIndexPath = self->_highlightedIndexPath;
  v10 = v5;
  v7 = highlightedIndexPath;
  if (v7 == v10)
  {

LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if (v10 && v7)
  {
    v8 = [(NSIndexPath *)v10 isEqual:v7];

    v9 = v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (self->_highlightedIndexPath)
  {
    [(_UIFloatingTabBar *)self _setHighlighted:0 forItemAtIndexPath:?];
  }

  objc_storeStrong(&self->_highlightedIndexPath, a3);
  v9 = v10;
  if (v10)
  {
    [(_UIFloatingTabBar *)self _setHighlighted:1 forItemAtIndexPath:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_setHasSelectionHighlight:(BOOL)a3 forItemAtIndexPath:(id)a4
{
  v4 = a3;
  v9 = a4;
  if ([v9 section] == 3)
  {
    if (v4)
    {
      v6 = [v9 item];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [v8 setSelectionViewIndex:v6];
  }

  else
  {
    v7 = [(_UIFloatingTabBar *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v9];

    [v8 setHasSelectionHighlight:v4];
  }
}

- (void)_setHighlighted:(BOOL)a3 forItemAtIndexPath:(id)a4
{
  v4 = a3;
  v9 = a4;
  if ([v9 section] == 3)
  {
    if (v4)
    {
      v6 = [v9 item];
    }

    else
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v8 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [v8 setHighlightedIndex:v6];
  }

  else
  {
    v7 = [(_UIFloatingTabBar *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v9];

    [v8 setHighlighted:v4];
  }
}

- (void)tabModelEditingStateDidChange
{
  v3 = [(_UIFloatingTabBar *)self tabModel];
  v4 = [v3 isEditing];

  v5 = [(_UIFloatingTabBar *)self tabModel];
  v31 = [v5 customizationStore];

  if (v4)
  {
    v6 = [v31 excludedItems];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    v16 = v8;

    v29 = [(_UIFloatingTabBar *)self parser];
    v18 = [(_UIFloatingTabBarParser *)v29 currentFavoriteOrder];

    v14 = [(_UIFloatingTabBar *)self dragController];
    [v14 beginEditingWithFavoriteOrder:v18 excludedItems:v16];
  }

  else
  {
    v9 = [(_UIFloatingTabBar *)self parser];
    v10 = [(_UIFloatingTabBarParser *)v9 sourceTabIdentifiers];

    v11 = [(_UIFloatingTabBar *)self dragController];
    v12 = [v11 pendingFavoriteOrder];

    v13 = [(_UIFloatingTabBar *)self dragController];
    v14 = [v13 excludedItems];

    v15 = [(_UIFloatingTabBar *)self parser];
    v16 = [(_UIFloatingTabBarParser *)v15 validateFavoriteOrder:v10];

    v17 = [(_UIFloatingTabBar *)self parser];
    v18 = [(_UIFloatingTabBarParser *)v17 validateFavoriteOrder:v12];

    [v31 saveFavoriteOrderCustomization:v18 defaultIdentifiers:v16 excludedIdentifiers:v14];
    v19 = [(_UIFloatingTabBar *)self dragController];
    [v19 endEditing];

    if ([v31 hasFavoriteOrderCustomization])
    {
      v30 = [v18 count];
      v20 = [(_UIFloatingTabBar *)self parser];
      v21 = [(_UIFloatingTabBarParser *)v20 fixedItems];
      v22 = [v21 count];
      v23 = [(_UIFloatingTabBar *)self parser];
      v24 = [(_UIFloatingTabBarParser *)v23 pinnedItems];
      v25 = [v24 count];

      v26 = +[_UITabAnalytics sharedInstance];
      v27 = [(_UIFloatingTabBar *)self tabModel];
      v28 = [v27 tabBarController];
      if (v26)
      {
        ++v26[2];
        v26[3] = v22 + v30 + v25;
        [(_UITabAnalytics *)v26 _sendCustomizationEvent:v28];
      }
    }

    [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
  }
}

- (void)updateEditingStateIfNeeded
{
  if ((*&self->_needsUpdate & 0x40) != 0)
  {
    v4 = [(_UIFloatingTabBar *)self isEditing];

    [(_UIFloatingTabBar *)self setEditing:v4 animated:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (self->_editing != a3 || (*&self->_needsUpdate & 0x40) != 0)
  {
    self->_editing = a3;
    v7 = [(UIView *)self window];

    needsUpdate = self->_needsUpdate;
    if (v7)
    {
      *&self->_needsUpdate = needsUpdate & 0xBF;
      [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
      [(_UIFloatingTabBar *)self _updatePaginationIfNeeded];
      v9 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
      v10 = [(_UIFloatingTabBar *)self collectionView];
      [v10 setEditing:v5];

      v11 = [(_UIFloatingTabBar *)self pinnedItemsView];
      [v11 setEditing:v5];

      v12 = [(_UIFloatingTabBar *)self recentItem];

      if (v12)
      {
        [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:v4];
      }

      else
      {
        v13 = [(_UIFloatingTabBar *)self collectionView];
        v14 = [v13 collectionViewLayout];
        [v14 invalidateLayout];

        [(UIView *)self setNeedsLayout];
        [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41___UIFloatingTabBar_setEditing_animated___block_invoke;
      v17[3] = &unk_1E70F8A10;
      v17[4] = self;
      v18 = v5;
      v19 = v4;
      v15 = _Block_copy(v17);
      v16 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.5];
      if (v4)
      {
        [UIView _animateUsingSpringBehavior:v16 tracking:0 animations:v15 completion:0];
      }

      else
      {
        [UIView performWithoutAnimation:v15];
      }

      [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:v4 completion:0];
    }

    else
    {
      *&self->_needsUpdate = needsUpdate | 0x40;
    }
  }
}

- (void)updateBarForEditingState
{
  [(_UIFloatingTabBar *)self _updateTransform];

  [(_UIFloatingTabBar *)self _updateBackgroundProperties];
}

- (void)_updateEditModeGestureRecognizer
{
  v3 = [(_UIFloatingTabBar *)self tabModel];
  v4 = [v3 isEditable];

  if (v4 && !self->_editModeGestureRecognizer)
  {
    v5 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleLongPressGestureRecognizer_];
    editModeGestureRecognizer = self->_editModeGestureRecognizer;
    self->_editModeGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)self->_editModeGestureRecognizer setMinimumPressDuration:0.5];
    [(UIGestureRecognizer *)self->_editModeGestureRecognizer setDelegate:self];
    v7 = [(_UIFloatingTabBar *)self contentView];
    [v7 addGestureRecognizer:self->_editModeGestureRecognizer];
  }

  v8 = self->_editModeGestureRecognizer;

  [(UIGestureRecognizer *)v8 setEnabled:v4];
}

- (void)_handleLongPressGestureRecognizer:(id)a3
{
  v4 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [v4 setEnabled:0];

  v5 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [v5 setEnabled:1];

  v6 = [(_UIFloatingTabBar *)self tabModel];
  [v6 setEditing:1];
}

- (void)setShowRecentItem:(BOOL)a3
{
  if (self->_showRecentItem != a3)
  {
    self->_showRecentItem = a3;
    [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
  }
}

- (void)_validateRecentItemForParser:(id)a3
{
  v10 = a3;
  v4 = [(_UIFloatingTabBar *)self recentItem];
  v5 = [v4 tabForSelection];

  v6 = [v5 _tabModel];
  v7 = [(_UIFloatingTabBar *)self tabModel];
  if (v6 != v7 || ([(_UIFloatingTabBarParser *)v10 containsTab:v5]& 1) != 0 || [(_UIFloatingTabBarParser *)v10 containsDescendantOfTab:v5])
  {

LABEL_5:
    recentItem = self->_recentItem;
    self->_recentItem = 0;

    goto LABEL_6;
  }

  v9 = [v5 isHidden];

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_contentTabForRecentTab:(id)a3
{
  v3 = a3;
  v4 = [v3 _parentGroup];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = v3;
    if (v6)
    {
      v7 = v6;
      do
      {
        [v5 addObject:v7];
        v8 = [v7 _parentGroup];

        v7 = v8;
      }

      while (v8);
    }

    v9 = [v5 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_124_4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 objectAtIndex:v9];
    }
  }

  return 0;
}

- (void)_tabModelDidReload:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self _isEffectivelyEmpty];
  v6 = [v4 tabItems];

  v7 = [v6 count] != 0;
  [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:v7 & ~v5];

  [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:v7 & ~v5 completion:0];
}

- (void)_tabModel:(id)a3 tabContentDidChange:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self _indexPathForTabItem:v5];
  v7 = [v5 _tabPlacement] - 4;
  if (v7 > 2)
  {
    v8 = 1;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = qword_18A683708[v7];
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  if ([v6 section] == v8 || objc_msgSend(v6, "section") == 2)
  {
    [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
    if ([v6 section] == 3)
    {
      v9 = [(_UIFloatingTabBar *)self pinnedItemsView];
      [v9 reloadItemViewForTab:v5];
    }

    else
    {
      v10 = [(_UIFloatingTabBar *)self _indexInDataSourceForItemAtIndexPath:v6];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_12:
        [(_UIFloatingTabBar *)self _updateTabBarPaginationAnimated:1];
        [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:1 completion:0];
        goto LABEL_13;
      }

      v11 = v10;
      v12 = [(_UIFloatingTabBar *)self dataSource];
      v13 = [v12 snapshot];

      v14 = [(NSDiffableDataSourceSnapshot *)v13 itemIdentifiers];
      v9 = [v14 objectAtIndex:v11];

      v21[0] = v9;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(NSDiffableDataSourceSnapshot *)v13 reconfigureItemsWithIdentifiers:v15];

      lastSnapshot = self->_lastSnapshot;
      self->_lastSnapshot = v13;
      v17 = v13;

      v18 = [(_UIFloatingTabBar *)self dataSource];
      [v18 applySnapshot:v17 animatingDifferences:1];
    }

    goto LABEL_12;
  }

  [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:1];
  v19 = [(_UIFloatingTabBar *)self tabModel];
  v20 = [v19 selectedLeaf];

  if (v20 == v5)
  {
    [(_UIFloatingTabBar *)self _updateSelectedLeaf:v5 previousElement:v5];
  }

LABEL_13:
}

- (void)_tabModel:(id)a3 visibilityDidChangeForTab:(id)a4
{
  v5 = a4;
  v6 = [(_UIFloatingTabBar *)self _indexPathForTabItem:v5];
  v7 = v6 != 0;

  v8 = [(_UIFloatingTabBar *)self tabModel];
  v9 = [v8 isTabHidden:v5];

  if (((v7 ^ v9) & 1) == 0)
  {
    [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:1];
    if ((v9 & 1) == 0)
    {

      [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
    }
  }
}

- (void)_tabModel:(id)a3 favoriteOrderDidReset:(id)a4
{
  v5 = [(_UIFloatingTabBar *)self parser:a3];
  v7 = [(_UIFloatingTabBarParser *)v5 sourceTabIdentifiers];

  v6 = [(_UIFloatingTabBar *)self dragController];
  [v6 resetFavoriteOrderWithDefaultOrder:v7];

  [(_UIFloatingTabBar *)self _invalidateFavoriteOrderAnimated:1];
}

- (void)_refreshSelectedLeaf
{
  v3 = [(_UIFloatingTabBar *)self tabModel];
  v4 = [v3 selectedLeaf];

  [(_UIFloatingTabBar *)self _updateSelectedLeaf:v4 previousElement:v4];
}

- (void)_updateSelectedLeaf:(id)a3 previousElement:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(UIView *)self window];
  if (v7)
  {
    v8 = !self->_isInTransitionAnimation;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(_UIFloatingTabBar *)self showRecentItem];
  v10 = [(_UIFloatingTabBar *)self recentItem];
  v11 = [(_UIFloatingTabBar *)self _indexPathForTabItem:v22];
  if (v9)
  {
    v12 = [(_UIFloatingTabBar *)self parser];
    v13 = [(_UIFloatingTabBarParser *)v12 itemIdentifiers];
    v14 = [v22 identifier];
    if (([v13 containsObject:v14] & 1) != 0 || v11 && !-[_UIFloatingTabBar _isRecentItemIndexPath:](self, "_isRecentItemIndexPath:", v11))
    {
    }

    else
    {
      v15 = [v10 tabForSelection];

      if (v15 != v22)
      {
        if (v22 && ([v22 isHidden] & 1) == 0)
        {
          v16 = [[_UIFloatingTabBarListItem alloc] initWithTab:v22];
          v21 = [(_UIFloatingTabBar *)self _contentTabForRecentTab:v22];
          [(_UIFloatingTabBarListItem *)v16 setContentTab:v21];
        }

        else
        {
          v16 = 0;
        }

        recentItem = self->_recentItem;
        self->_recentItem = v16;
        goto LABEL_18;
      }
    }

    if (v10)
    {
      v17 = [v10 tabForSelection];
      v18 = [v17 _isAncestorOfTab:v22];

      if (v18)
      {
LABEL_17:
        recentItem = self->_recentItem;
        self->_recentItem = 0;
LABEL_18:

        [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:v8];
        [(_UIFloatingTabBar *)self _scrollToSelectedItemAnimated:v8];
        goto LABEL_21;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_17;
  }

  if (v6 != v22)
  {
    [(_UIFloatingTabBar *)self _scrollToSelectedItemAnimated:v8];
    [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:v8 completion:0];
  }

LABEL_21:
  v20 = [(UIView *)self window];

  if (!v20)
  {
    *&self->_needsUpdate |= 0x20u;
  }
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)a3
{
  v4 = [(_UIFloatingTabBar *)self _indexPathForTabItem:a3];
  if (v4)
  {
    v5 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v4];
    v6 = [(_UIFloatingTabBar *)self collectionView];
    v7 = [v6 targetPage];

    if ([v4 section] == 3)
    {
      v8 = [(_UIFloatingTabBar *)self pinnedItemsView];
      v9 = [v8 itemViewForItemAtIndex:{objc_msgSend(v4, "item")}];

      goto LABEL_16;
    }

    if (v5 == v7)
    {
      v10 = [(_UIFloatingTabBar *)self _viewForItemAtIndexPath:v4];
      goto LABEL_15;
    }

    v11 = [(UIView *)self _shouldReverseLayoutDirection];
    v12 = v5 > v7;
    if (!v11)
    {
      v12 = v5 < v7;
    }

    if (v12)
    {
      [(_UIFloatingTabBar *)self leftArrowButton];
    }

    else
    {
      [(_UIFloatingTabBar *)self rightArrowButton];
    }
  }

  else if ([(_UIFloatingTabBar *)self showsSidebarButton])
  {
    [(_UIFloatingTabBar *)self sidebarButton];
  }

  else
  {
    [(_UIFloatingTabBar *)self contentView];
  }
  v10 = ;
LABEL_15:
  v9 = v10;
LABEL_16:

  return v9;
}

- (void)_updateSelectedItemAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v7 = a4;
  v6 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  if (v6)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:v4 completion:v7];
    [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:v4];
  }

  else if (v7)
  {
    v7[2](v7, 1, 0);
  }
}

- (void)_setSelectedItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v13 = a3;
  v8 = a5;
  if ([(_UITabModel *)self->_tabModel shouldSelectTab:v13])
  {
    v9 = [(_UITabModel *)self->_tabModel selectedItem];
    v10 = v13;
    v11 = v10;
    if (v9 == v10)
    {

      [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
    }

    else
    {
      if (!v10 || !v9)
      {

        [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
LABEL_11:
        [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:v6 completion:v8];
        goto LABEL_12;
      }

      v12 = [v9 isEqual:v10];

      [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  if (v8)
  {
    v8[2](v8, 1, 0);
  }

LABEL_12:
}

- (void)_selectItemAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2072 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if ([v5 section] != 3)
  {
    v8 = [(_UIFloatingTabBar *)self dataSource];
    v7 = [v8 itemIdentifierForIndexPath:v5];

    v9 = [v7 tabForSelection];
    v10 = [v7 tabForSelection];
    v11 = [v10 _isElement];

    if (v11)
    {
      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44___UIFloatingTabBar__selectItemAtIndexPath___block_invoke;
      v14[3] = &unk_1E7105398;
      objc_copyWeak(&v15, &location);
      [(_UIFloatingTabBar *)self _setSelectedItem:v9 animated:1 completion:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2100 description:@"Non-UITabElement tabs are currently not supported"];
    }

    goto LABEL_10;
  }

  v6 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v7 = [v6 tabForSelectionAtItemIndex:{objc_msgSend(v5, "item")}];

  if (![v7 _isElement])
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2079 description:@"Non-UITabElement tabs are currently not supported"];
LABEL_10:

    goto LABEL_11;
  }

  [(_UIFloatingTabBar *)self _setSelectedItem:v7 animated:1 completion:0];
LABEL_11:
}

- (BOOL)_isEffectivelyEmpty
{
  v2 = [(_UIFloatingTabBar *)self parser];
  v3 = [(_UIFloatingTabBarParser *)v2 itemIdentifiers];
  v4 = [v3 count] == 0;

  return v4;
}

- (id)_indexPathForTabItem:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_10;
  }

  v5 = [(_UIFloatingTabBar *)self lastSnapshot];
  v6 = [v5 itemIdentifiers];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42___UIFloatingTabBar__indexPathForTabItem___block_invoke;
  v15[3] = &unk_1E70F8890;
  v7 = v4;
  v16 = v7;
  v8 = [v6 indexOfObjectPassingTest:v15];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v10 = [v9 itemIndexForTab:v7];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:3];
      goto LABEL_9;
    }

    v11 = [v7 _parentGroup];
    v12 = [(_UIFloatingTabBar *)self _indexPathForTabItem:v11];
  }

  else
  {
    v11 = [v6 objectAtIndex:v8];
    v13 = [(_UIFloatingTabBar *)self dataSource];
    v12 = [v13 indexPathForItemIdentifier:v11];
  }

LABEL_9:
LABEL_10:

  return v12;
}

- (id)_indexPathForSelectedItem
{
  v3 = [(_UIFloatingTabBar *)self tabModel];
  v4 = [v3 selectedLeaf];

  if (!v4 || ([v4 _isMoreTab] & 1) != 0 || -[_UIFloatingTabBar _isEffectivelyEmpty](self, "_isEffectivelyEmpty") && (-[_UIFloatingTabBar recentItem](self, "recentItem"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UIFloatingTabBar *)self _indexPathForTabItem:v4];
  }

  return v5;
}

- (CGRect)_itemFrameForItemAtIndexPath:(id)a3 inCoordinateSpace:(id)a4
{
  v6 = a4;
  v7 = a3;
  if ([v7 section] == 3)
  {
    v8 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v9 = [v7 item];

    [v8 itemFrameForItemAtIndex:v9];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v19 = v18;
    v20 = v11;
    v21 = v13;
    v22 = v15;
    v23 = v17;
  }

  else
  {
    v24 = [(_UIFloatingTabBar *)self collectionView];
    v19 = [v24 cellForItemAtIndexPath:v7];

    if (!v19)
    {
      v26 = *MEMORY[0x1E695F050];
      v28 = *(MEMORY[0x1E695F050] + 8);
      v30 = *(MEMORY[0x1E695F050] + 16);
      v32 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_6;
    }

    [v19 bounds];
    v18 = v19;
  }

  [v18 convertRect:v6 toCoordinateSpace:{v20, v21, v22, v23}];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
LABEL_6:

  v33 = v26;
  v34 = v28;
  v35 = v30;
  v36 = v32;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

- (void)_updateSelectionViewFrameAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  if (v7)
  {
    v8 = v7;
    v9 = [(_UIFloatingTabBar *)self highlightedIndexPath];

    if (v9)
    {
      v10 = [(_UIFloatingTabBar *)self highlightedIndexPath];

      v8 = v10;
    }

    [(_UIFloatingTabBar *)self setSelectionViewIndexPath:v8];
    v11 = [(_UIFloatingTabBar *)self selectionContainerView];
    [(_UIFloatingTabBar *)self _itemFrameForItemAtIndexPath:v8 inCoordinateSpace:v11];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (v9)
    {
      v20 = [(_UIFloatingTabBar *)self selectionContainerView];
      v21 = [v20 targetPosition];

      if (v21)
      {
        v22 = [(_UIFloatingTabBar *)self contentView];
        [(_UIFloatingTabBar *)self highlightAnchorPoint];
        v90 = v23;
        v24 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
        [v24 locationInView:v22];
        v91 = v25;

        v107.origin.x = v13;
        v107.origin.y = v15;
        v107.size.width = v17;
        v107.size.height = v19;
        Width = CGRectGetWidth(v107);
        v27 = [(_UIFloatingTabBar *)self collectionView];
        [v27 bounds];
        v92 = v17;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v36 = [(_UIFloatingTabBar *)self collectionView];
        [v22 convertRect:v36 fromView:{v29, v31, v33, v35}];
        v88 = v38;
        v89 = v37;
        r1 = v39;
        v41 = v40;

        v42 = [(_UIFloatingTabBar *)self pinnedItemsView];
        [v42 bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v51 = [(_UIFloatingTabBar *)self pinnedItemsView];
        [v22 convertRect:v51 fromView:{v44, v46, v48, v50}];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v108.origin.y = v88;
        v108.origin.x = v89;
        v108.size.width = r1;
        v108.size.height = v41;
        v115.origin.x = v53;
        v115.origin.y = v55;
        v115.size.width = v57;
        v115.size.height = v59;
        v109 = CGRectUnion(v108, v115);
        height = v109.size.height;
        v109.origin.x = v90 * Width + v109.origin.x;
        x = v109.origin.x;
        v109.origin.y = v109.origin.y + 0.0;
        y = v109.origin.y;
        v109.size.width = v109.size.width - ((1.0 - v90) * Width + v90 * Width);
        v62 = v109.size.width;
        MinX = CGRectGetMinX(v109);
        v110.origin.x = x;
        v110.origin.y = y;
        v17 = v92;
        v110.size.width = v62;
        v110.size.height = height;
        v13 = fmax(MinX, fmin(v91, CGRectGetMaxX(v110))) - v92 * v90;
      }
    }

    v111.origin.x = v13;
    v111.origin.y = v15;
    v111.size.width = v17;
    v111.size.height = v19;
    if (!CGRectIsNull(v111))
    {
      v112.origin.x = v13;
      v112.origin.y = v15;
      v112.size.width = v17;
      v112.size.height = v19;
      MidY = CGRectGetMidY(v112);
      v66 = [(_UIFloatingTabBar *)self collectionView];
      [v66 bounds];
      v67 = CGRectGetMidY(v113);

      if (MidY != v67)
      {
        [(_UIFloatingTabBar *)self _setNeedsSelectionAlphaUpdate];
        [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
LABEL_24:

        goto LABEL_25;
      }
    }

    v68 = v9 != 0;
    v69 = v4 & ~self->_isInTransitionAnimation;
    v70 = [(UIView *)self traitCollection];
    v71 = [v70 valueForNSIntegerTrait:objc_opt_class()];

    v72 = [(UIView *)self traitCollection];
    v73 = [v72 valueForNSIntegerTrait:objc_opt_class()] != 0;

    v74 = [(_UIFloatingTabBar *)self selectionContainerView];
    v75 = [v74 targetPosition];
    v76 = v75 == 0;

    [(_UIFloatingTabBar *)self _updateSelectionViewHighlightState];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke;
    aBlock[3] = &unk_1E70F3B20;
    aBlock[4] = self;
    *&aBlock[5] = v13;
    *&aBlock[6] = v15;
    *&aBlock[7] = v17;
    *&aBlock[8] = v19;
    v77 = _Block_copy(aBlock);
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_2;
    v102[3] = &unk_1E712A4B0;
    v102[4] = self;
    *&v102[5] = v13;
    *&v102[6] = v15;
    *&v102[7] = v17;
    *&v102[8] = v19;
    v103 = v68;
    v104 = v73;
    v105 = v76;
    v78 = _Block_copy(v102);
    if (v69 == 1 && !v71)
    {
      v79 = [(_UIFloatingTabBar *)self selectionContainerView];
      [v79 selectionViewFrame];
      v116.origin.x = v13;
      v116.origin.y = v15;
      v116.size.width = v17;
      v116.size.height = v19;
      v80 = CGRectEqualToRect(v114, v116);

      if (!v80)
      {
        v81 = [(UIView *)self traitOverrides];
        [v81 setNSIntegerValue:1 forTrait:objc_opt_class()];
      }
    }

    v82 = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion:*&r1];
    objc_initWeak(&location, self);
    v98[0] = MEMORY[0x1E69E9820];
    v98[1] = 3221225472;
    v98[2] = __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_3;
    v98[3] = &unk_1E711F7E0;
    v83 = v82;
    v99 = v83;
    v100 = v6;
    v84 = _Block_copy(v98);
    [v83 increment];
    if (v69)
    {
      [(_UIFloatingTabBar *)self _animateSelection:v77 completion:v84];
      [v83 increment];
      v96[0] = MEMORY[0x1E69E9820];
      v96[1] = 3221225472;
      v96[2] = __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_4;
      v96[3] = &unk_1E70F3FD8;
      v97 = v83;
      [(_UIFloatingTabBar *)self _animateSelectionBounds:v78 completion:v96];
      v85 = &v97;
    }

    else
    {
      if (+[UIView _isInAnimationBlock])
      {
        v77[2](v77);
        v78[2](v78);
        v84[2](v84, 1, 0);
LABEL_21:
        needsUpdate = self->_needsUpdate;
        *&self->_needsUpdate = needsUpdate & 0xFD;
        if ((needsUpdate & 4) != 0)
        {
          [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:v69];
        }

        objc_destroyWeak(&location);
        goto LABEL_24;
      }

      v93[0] = MEMORY[0x1E69E9820];
      v93[1] = 3221225472;
      v93[2] = __66___UIFloatingTabBar__updateSelectionViewFrameAnimated_completion___block_invoke_5;
      v93[3] = &unk_1E70F77D0;
      v94 = v77;
      v95 = v78;
      [UIView _animateByRetargetingAnimations:v93 completion:v84];
      v85 = &v94;
    }

    goto LABEL_21;
  }

  [(_UIFloatingTabBar *)self setSelectionViewIndexPath:0];
  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:v4];
LABEL_25:
}

- (void)_updateSelectionViewHighlightState
{
  v3 = [(_UIFloatingTabBar *)self selectionContainerView];
  v4 = [v3 targetPosition];

  if (v4)
  {
    v5 = [(UIView *)self traitCollection];
    v6 = objc_opt_self();
    v7 = [v5 valueForNSIntegerTrait:v6];

    v8 = [(_UIFloatingTabBar *)self highlightedIndexPath];

    [v4 value];
    v10 = v9;
    [v4 presentationValue];
    if (v7 == 1 && !v8 && vabdd_f64(v10, v11) < 8.0)
    {
      v12 = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
      [v12 increment];
      v13 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.35];
      v16 = v12;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55___UIFloatingTabBar__updateSelectionViewHighlightState__block_invoke;
      v17[3] = &unk_1E70F3590;
      v17[4] = self;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55___UIFloatingTabBar__updateSelectionViewHighlightState__block_invoke_2;
      v15[3] = &unk_1E70F3FD8;
      v14 = v12;
      [UIView _animateUsingSpringBehavior:v13 tracking:0 animations:v17 completion:v15];
    }
  }
}

- (_UIGroupCompletion)selectionFrameGroupCompletion
{
  selectionFrameGroupCompletion = self->_selectionFrameGroupCompletion;
  if (!selectionFrameGroupCompletion)
  {
    v4 = objc_alloc_init(_UIGroupCompletion);
    v5 = self->_selectionFrameGroupCompletion;
    self->_selectionFrameGroupCompletion = v4;

    objc_initWeak(&location, self);
    v6 = self->_selectionFrameGroupCompletion;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___UIFloatingTabBar_selectionFrameGroupCompletion__block_invoke;
    v8[3] = &unk_1E70F5A28;
    objc_copyWeak(&v9, &location);
    [(_UIGroupCompletion *)v6 addNonIncrementingCompletion:v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    selectionFrameGroupCompletion = self->_selectionFrameGroupCompletion;
  }

  return selectionFrameGroupCompletion;
}

- (BOOL)hasActiveDrag
{
  v2 = [(_UIFloatingTabBar *)self dragController];
  v3 = [v2 hasActiveDrag];

  return v3;
}

- (double)baselineOffsetFromTop
{
  v3 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [v3 backgroundInsets];
  v5 = v4;
  [v3 titleMargins];
  v7 = v5 + v6 + self->_minimumItemBaselineFromTop;

  return v7;
}

- (int64_t)_indexInDataSourceForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  if ([v4 section] >= 1)
  {
    v6 = [(_UIFloatingTabBar *)self lastSnapshot];
    v5 += [v6 numberOfItemsInSection:&unk_1EFE33DA8];
  }

  if ([v4 section] > 1)
  {
    v7 = [(_UIFloatingTabBar *)self lastSnapshot];
    v5 += [v7 numberOfItemsInSection:&unk_1EFE33DC0];
  }

  return v5;
}

- (id)_indexPathForItemAtDataSourceIndex:(int64_t)a3
{
  v5 = [(_UIFloatingTabBar *)self lastSnapshot];
  v6 = [v5 itemIdentifiers];
  v7 = [v6 count];

  if (v7 <= a3)
  {
    v12 = 0;
  }

  else
  {
    v8 = [(_UIFloatingTabBar *)self lastSnapshot];
    v9 = [v8 itemIdentifiers];
    v10 = [v9 objectAtIndex:a3];

    v11 = [(_UIFloatingTabBar *)self dataSource];
    v12 = [v11 indexPathForItemIdentifier:v10];
  }

  return v12;
}

- (int64_t)_pageIndexForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIFloatingTabBar *)self _indexInDataSourceForItemAtIndexPath:v4];
  v6 = [(_UIFloatingTabBar *)self collectionView];
  v7 = [v6 pages];
  v8 = [(_UIFloatingTabBar *)self collectionView];
  v9 = [v7 objectAtIndexedSubscript:{objc_msgSend(v8, "targetPage")}];
  v10 = [v9 range];
  v12 = v11;

  if (v5 < v10 || v5 - v10 >= v12)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    v15 = [(_UIFloatingTabBar *)self collectionView];
    v16 = [v15 pages];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50___UIFloatingTabBar__pageIndexForItemAtIndexPath___block_invoke;
    v18[3] = &unk_1E711B058;
    v18[4] = &v19;
    v18[5] = v5;
    [v16 enumerateObjectsUsingBlock:v18];

    v14 = v20[3];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v13 = [(_UIFloatingTabBar *)self collectionView];
    v14 = [v13 targetPage];
  }

  return v14;
}

- (void)_scrollToSelectedItemAnimated:(BOOL)a3
{
  v3 = a3;
  v10 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  v5 = [v10 section] == 3;
  v6 = v10;
  if (!v5)
  {
    if (*&self->_needsUpdate)
    {
      [(_UIFloatingTabBar *)self _setNeedsScrollToSelectedItem];
    }

    else
    {
      if (v10)
      {
        v7 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v10];
        v6 = v10;
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }

        v8 = [(_UIFloatingTabBar *)self collectionView];
        [v8 setTargetPage:v7];

        v9 = [(_UIFloatingTabBar *)self collectionView];
        [v9 scrollToTargetPageAnimated:v3];
      }

      [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:v3];
    }

    v6 = v10;
  }

LABEL_9:
}

- (void)_scrollToSelectedItemIfNeeded
{
  needsUpdate = self->_needsUpdate;
  if ((needsUpdate & 8) != 0)
  {
    [(_UIFloatingTabBar *)self _scrollToSelectedItemAnimated:0];
    needsUpdate = *&self->_needsUpdate & 0xE7;
    *&self->_needsUpdate = needsUpdate;
  }

  if ((needsUpdate & 0x10) != 0)
  {
    v4 = [(_UIFloatingTabBar *)self collectionView];
    [v4 scrollToTargetPageAnimated:0];

    *&self->_needsUpdate &= ~0x10u;
  }
}

- (void)_updateSelectionViewVisibilityAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  v6 = [(_UIFloatingTabBar *)self _indexInDataSourceForItemAtIndexPath:v5];
  if (v5)
  {
    v7 = v6;
    if ([v5 section] == 3)
    {
      v8 = 1;
    }

    else
    {
      v9 = [(_UIFloatingTabBar *)self collectionView];
      v10 = [v9 pages];
      v11 = [(_UIFloatingTabBar *)self collectionView];
      v12 = [v10 objectAtIndexedSubscript:{objc_msgSend(v11, "targetPage")}];
      v13 = [v12 range];
      v15 = v14;

      v8 = v7 >= v13 && v7 - v13 < v15;
    }
  }

  else
  {
    v8 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60___UIFloatingTabBar__updateSelectionViewVisibilityAnimated___block_invoke;
  v19[3] = &unk_1E70F35E0;
  v19[4] = self;
  v20 = v8;
  v17 = _Block_copy(v19);
  v18 = v17;
  if (v3)
  {
    [(_UIFloatingTabBar *)self _animateSelection:v17 completion:0];
  }

  else
  {
    (*(v17 + 2))(v17);
  }

  *&self->_needsUpdate &= ~4u;
}

- (void)setSelectionViewIndexPath:(id)a3
{
  v5 = a3;
  v6 = self->_selectionViewIndexPath;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if (v7 && v6)
  {
    v8 = [(NSIndexPath *)v6 isEqual:v7];

    v9 = v10;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (self->_selectionViewIndexPath)
  {
    [(_UIFloatingTabBar *)self _setHasSelectionHighlight:0 forItemAtIndexPath:?];
  }

  objc_storeStrong(&self->_selectionViewIndexPath, a3);
  v9 = v10;
  if (v10)
  {
    [(_UIFloatingTabBar *)self _setHasSelectionHighlight:1 forItemAtIndexPath:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_animateSelection:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _UIFlexiGlassEnabled();
  v9 = [(_UIFloatingTabBar *)self highlightedIndexPath];

  if (v8)
  {
    if (v9)
    {
      v10 = 0.85;
      v11 = 0.2;
    }

    else
    {
      v10 = 0.9;
      v11 = 0.4;
    }
  }

  else if (v9)
  {
    v10 = 0.9;
    v11 = 0.3;
  }

  else
  {
    v11 = 0.45;
    v10 = 1.0;
  }

  v12 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v10 response:v11];
  [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:v7 completion:v6];
}

- (void)_animateSelectionBounds:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _UIFlexiGlassEnabled();
  v9 = [(_UIFloatingTabBar *)self highlightedIndexPath];

  if (v8)
  {
    v10 = 0.85;
    if (!v9)
    {
      v11 = 0.6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v9)
  {
    v10 = 0.9;
LABEL_6:
    v11 = 0.3;
    goto LABEL_8;
  }

  v11 = 0.45;
  v10 = 1.0;
LABEL_8:
  v12 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:v10 response:v11];
  [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:v7 completion:v6];
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];

  [(UIView *)self setNeedsLayout];
}

- (void)_updateContentAlphaForVisibleCells
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_UIFloatingTabBar *)self collectionView];
  v4 = [v3 indexPathsForVisibleItems];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_UIFloatingTabBar *)self _updateContentAlphaForItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateContentAlphaForItemAtIndexPath:(id)a3
{
  v39 = a3;
  v4 = [(_UIFloatingTabBar *)self collectionView];
  v5 = [v4 layoutAttributesForItemAtIndexPath:v39];

  LOBYTE(v4) = [(UIView *)self _shouldReverseLayoutDirection];
  v6 = [(_UIFloatingTabBar *)self collectionView];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(_UIFloatingTabBar *)self collectionViewContainer];
  [v6 convertRect:v15 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (v4)
  {
    v24 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [v24 frame];
    MaxX = CGRectGetMaxX(v41);

    if ([(_UIFloatingTabBar *)self showsSidebarButton])
    {
      [(_UIFloatingTabBar *)self sidebarButton];
    }

    else
    {
      [(_UIFloatingTabBar *)self rightArrowButton];
    }
    v26 = ;
  }

  else
  {
    if ([(_UIFloatingTabBar *)self showsSidebarButton])
    {
      [(_UIFloatingTabBar *)self sidebarButton];
    }

    else
    {
      [(_UIFloatingTabBar *)self leftArrowButton];
    }
    v27 = ;
    [v27 frame];
    MaxX = CGRectGetMaxX(v42);

    v26 = [(_UIFloatingTabBar *)self pinnedItemsView];
  }

  v28 = v26;
  [v26 frame];
  MinX = CGRectGetMinX(v43);

  v44.origin.x = v17;
  v44.origin.y = v19;
  v44.size.width = v21;
  v44.size.height = v23;
  v30 = MaxX - CGRectGetMinX(v44);
  v45.origin.x = v17;
  v45.origin.y = v19;
  v45.size.width = v21;
  v45.size.height = v23;
  v31 = CGRectGetMaxX(v45) - MinX;
  v32 = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [v32 contentAlphaDistanceThreshold];
  v34 = v33;

  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  v35 = fmax(fmin(1.0 - fmax(v30, v31) / fmin(v34, CGRectGetWidth(v46)), 1.0), 0.0);
  v36 = [(_UIFloatingTabBar *)self collectionView];
  v37 = [v36 cellForItemAtIndexPath:v39];

  v38 = [v37 contentView];
  [v38 setAlpha:v35];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  v5 = [v4 state];

  if (v5)
  {
    v6 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
    [v6 setEnabled:0];

    v7 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
    [v7 setEnabled:1];
  }
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___UIFloatingTabBar_scrollViewWillBeginDragging___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(_UIFloatingTabBar *)self _animateSelection:v3 completion:0];
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = [(_UIFloatingTabBar *)self collectionView:a3];
  [v7 pageProgressForContentOffset:1 clamped:{a5->x, a5->y}];
  v9 = v8;

  v10 = [(_UIFloatingTabBar *)self collectionView];
  [v10 setTargetPage:llround(v9)];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(_UIFloatingTabBar *)self highlightedIndexPath];
  [v8 setHighlighted:{objc_msgSend(v7, "isEqual:", v9)}];

  v11 = [(_UIFloatingTabBar *)self selectionViewIndexPath];
  v10 = [v7 isEqual:v11];

  [v8 setHasSelectionHighlight:v10];
}

- (id)_currentPlatformMetrics
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([v2 userInterfaceIdiom]);

  return v3;
}

- (CGAffineTransform)additionalTransform
{
  v3 = *&self[15].d;
  *&retstr->a = *&self[15].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[15].ty;
  return self;
}

- (CGRect)frameForExpandedDropTarget
{
  x = self->_frameForExpandedDropTarget.origin.x;
  y = self->_frameForExpandedDropTarget.origin.y;
  width = self->_frameForExpandedDropTarget.size.width;
  height = self->_frameForExpandedDropTarget.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)selectionGestureInitialLocation
{
  x = self->_selectionGestureInitialLocation.x;
  y = self->_selectionGestureInitialLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)highlightAnchorPoint
{
  x = self->_highlightAnchorPoint.x;
  y = self->_highlightAnchorPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)tabCustomizationProxy
{
  if ([(_UIFloatingTabBar *)self isEditing])
  {
    v3 = [_UIFloatingTabBarCustomizationProxy alloc];
    v4 = self;
    if (v3)
    {
      v7.receiver = v3;
      v7.super_class = _UIFloatingTabBarCustomizationProxy;
      v5 = [(UIView *)&v7 init];
      v3 = v5;
      if (v5)
      {
        objc_storeWeak(v5 + 1, v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end