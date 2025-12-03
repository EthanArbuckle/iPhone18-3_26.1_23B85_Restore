@interface _UIFloatingTabBar
- (BOOL)_isEffectivelyEmpty;
- (BOOL)_isValidDropTargetIndexPath:(id)path;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasActiveDrag;
- (BOOL)isSearchTabSelected;
- (BOOL)scrubbingEnabled;
- (BOOL)showsSidebarButton;
- (BOOL)tabDragController:(id)controller canHandleDropSessionForTab:(id)tab;
- (BOOL)tabDragController:(id)controller isDisplayingTab:(id)tab;
- (CACornerRadii)contentCornerRadii;
- (CGAffineTransform)additionalTransform;
- (CGPoint)highlightAnchorPoint;
- (CGPoint)selectionGestureInitialLocation;
- (CGPoint)sidebarButtonOrigin;
- (CGRect)_itemFrameForItemAtIndexPath:(id)path inCoordinateSpace:(id)space;
- (CGRect)contentLayoutFrame;
- (CGRect)frameForExpandedDropTarget;
- (CGSize)_maximumContainerSizeForPagination;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIButton)sidebarButton;
- (_UIFloatingTabBar)initWithCoder:(id)coder;
- (_UIFloatingTabBar)initWithFrame:(CGRect)frame;
- (_UIGroupCompletion)selectionFrameGroupCompletion;
- (_UIShadowProperties)shadowProperties;
- (double)baselineOffsetFromTop;
- (id)_contentTabForRecentTab:(id)tab;
- (id)_currentPlatformMetrics;
- (id)_destinationIndexPathForDropSession:(id)session;
- (id)_indexPathForGestureRecognizer:(id)recognizer;
- (id)_indexPathForItemAtDataSourceIndex:(int64_t)index;
- (id)_indexPathForSelectedItem;
- (id)_indexPathForTabItem:(id)item;
- (id)_tabBarController;
- (id)_tabForItemAtIndexPath:(id)path;
- (id)_targetedPreviewForTab:(id)tab;
- (id)_targetedPreviewForTabAtIndexPath:(id)path;
- (id)_viewForItemAtIndexPath:(id)path;
- (id)currentSelectionTitle;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab;
- (id)tabCustomizationProxy;
- (id)tabDragController:(id)controller dropProposalForSession:(id)session;
- (id)tabDragController:(id)controller tabForBeginningSession:(id)session;
- (int64_t)_indexInDataSourceForItemAtIndexPath:(id)path;
- (int64_t)_pageIndexForItemAtIndexPath:(id)path;
- (int64_t)effectiveUserInterfaceStyle;
- (void)_animateSelection:(id)selection completion:(id)completion;
- (void)_animateSelectionBounds:(id)bounds completion:(id)completion;
- (void)_createDataSource;
- (void)_createViewHierarchy;
- (void)_didTapLeftArrowButton:(id)button;
- (void)_didTapRightArrowButton:(id)button;
- (void)_handleLongPressGestureRecognizer:(id)recognizer;
- (void)_handleSelectionGesture:(id)gesture;
- (void)_invalidateDataSourceAnimated:(BOOL)animated;
- (void)_invalidateFavoriteOrderAnimated:(BOOL)animated;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)_refreshSelectedLeaf;
- (void)_scrollToSelectedItemAnimated:(BOOL)animated;
- (void)_scrollToSelectedItemIfNeeded;
- (void)_selectItemAtIndexPath:(id)path;
- (void)_setHasSelectionHighlight:(BOOL)highlight forItemAtIndexPath:(id)path;
- (void)_setHighlighted:(BOOL)highlighted forItemAtIndexPath:(id)path;
- (void)_setSelectedItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)_tabModel:(id)model favoriteOrderDidReset:(id)reset;
- (void)_tabModel:(id)model tabContentDidChange:(id)change;
- (void)_tabModel:(id)model visibilityDidChangeForTab:(id)tab;
- (void)_tabModelDidReload:(id)reload;
- (void)_updateBackgroundProperties;
- (void)_updateContentAlphaForItemAtIndexPath:(id)path;
- (void)_updateContentAlphaForVisibleCells;
- (void)_updateContentSizeCategory;
- (void)_updateDataSourceFromParserAnimated:(BOOL)animated;
- (void)_updateEditModeGestureRecognizer;
- (void)_updatePaginationIfNeeded;
- (void)_updateSelectedItemAnimated:(BOOL)animated completion:(id)completion;
- (void)_updateSelectedLeaf:(id)leaf previousElement:(id)element;
- (void)_updateSelectionViewFrameAnimated:(BOOL)animated completion:(id)completion;
- (void)_updateSelectionViewHighlightState;
- (void)_updateSelectionViewVisibilityAnimated:(BOOL)animated;
- (void)_updateTabBarPaginationAnimated:(BOOL)animated;
- (void)_updateTransform;
- (void)_validateRecentItemForParser:(id)parser;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)prepareForTransitionToVisibility:(BOOL)visibility;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setAdditionalTransform:(CGAffineTransform *)transform;
- (void)setBounds:(CGRect)bounds;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setFrame:(CGRect)frame;
- (void)setHighlightedIndexPath:(id)path;
- (void)setScrubbingEnabled:(BOOL)enabled;
- (void)setSelectionViewIndexPath:(id)path;
- (void)setShowRecentItem:(BOOL)item;
- (void)setSidebarButtonAction:(id)action;
- (void)setTabModel:(id)model;
- (void)tabDragController:(id)controller acceptItemsIntoTabFromDropSession:(id)session;
- (void)tabDragController:(id)controller hideDraggedTab:(id)tab;
- (void)tabDragController:(id)controller pendingDropTabDidChange:(id)change;
- (void)tabModelEditingStateDidChange;
- (void)transitionDidEnd;
- (void)updateBarForEditingState;
- (void)updateEditingStateIfNeeded;
@end

@implementation _UIFloatingTabBar

- (_UIFloatingTabBar)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBar;
  v3 = [(UIView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBar *)v3 _createViewHierarchy];
    [(_UIFloatingTabBar *)v4 _createDataSource];
  }

  return v4;
}

- (_UIFloatingTabBar)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = _UIFloatingTabBar;
  v3 = [(UIView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(_UIFloatingTabBar *)v3 _createViewHierarchy];
    [(_UIFloatingTabBar *)v4 _createDataSource];
  }

  return v4;
}

- (void)setTabModel:(id)model
{
  modelCopy = model;
  v6 = self->_tabModel;
  v7 = modelCopy;
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

  tabItems = [(_UITabModel *)self->_tabModel tabItems];
  v10 = [tabItems count];

  [(_UITabModel *)self->_tabModel removeObserver:self];
  objc_storeStrong(&self->_tabModel, model);
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
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  tabBarController = [tabModel tabBarController];

  return tabBarController;
}

- (BOOL)showsSidebarButton
{
  if (!self->_sidebarButtonAction || [(_UIFloatingTabBar *)self isEditing])
  {
    return 0;
  }

  tabModel = [(_UIFloatingTabBar *)self tabModel];
  tabItems = [tabModel tabItems];
  v3 = [tabItems count] != 0;

  return v3;
}

- (void)setSidebarButtonAction:(id)action
{
  actionCopy = action;
  if (self->_sidebarButtonAction)
  {
    sidebarButton = [(_UIFloatingTabBar *)self sidebarButton];
    [sidebarButton removeAction:self->_sidebarButtonAction forControlEvents:0x2000];
  }

  objc_storeStrong(&self->_sidebarButtonAction, action);
  v6 = self->_sidebarButtonAction == 0;
  sidebarButton2 = [(_UIFloatingTabBar *)self sidebarButton];
  [sidebarButton2 setShowsMenuAsPrimaryAction:v6];

  if (actionCopy)
  {
    sidebarButton3 = [(_UIFloatingTabBar *)self sidebarButton];
    [sidebarButton3 addAction:actionCopy forControlEvents:0x2000];
  }

  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
}

- (UIButton)sidebarButton
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (!self->_sidebarButton && [(_UIFloatingTabBar *)self showsSidebarButton])
  {
    traitCollection = [(UIView *)self traitCollection];
    v4 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

    sidebarButtonConfiguration = [v4 sidebarButtonConfiguration];
    contentPaletteProvider = [v4 contentPaletteProvider];
    traitCollection2 = [(UIView *)self traitCollection];
    v8 = contentPaletteProvider[2](contentPaletteProvider, [traitCollection2 userInterfaceStyle]);
    inactiveColor = [v8 inactiveColor];
    [sidebarButtonConfiguration setBaseForegroundColor:inactiveColor];

    sidebarButtonAction = [(_UIFloatingTabBar *)self sidebarButtonAction];
    v11 = [UIButton buttonWithConfiguration:sidebarButtonConfiguration primaryAction:sidebarButtonAction];

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

- (void)setAdditionalTransform:(CGAffineTransform *)transform
{
  p_additionalTransform = &self->_additionalTransform;
  v6 = *&self->_additionalTransform.c;
  *&t1.a = *&self->_additionalTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_additionalTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_additionalTransform->c = *&transform->c;
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
  contentView = [(_UIFloatingTabBar *)self contentView];
  [(UIView *)sidebarButton convertPoint:contentView toView:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
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
  contentView = [(_UIFloatingTabBar *)self contentView];
  contentView2 = [(_UIFloatingTabBar *)self contentView];
  [contentView2 bounds];
  [contentView convertRect:self toView:?];
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
  _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  dataSource = [(_UIFloatingTabBar *)self dataSource];
  v5 = [dataSource itemIdentifierForIndexPath:_indexPathForSelectedItem];

  if (v5)
  {
    contentTab = [v5 contentTab];
    _compactRepresentation = [contentTab _compactRepresentation];
    if (_compactRepresentation)
    {
      _compactRepresentation2 = [contentTab _compactRepresentation];
      title = [_compactRepresentation2 title];
    }

    else
    {
      title = [contentTab title];
    }
  }

  else
  {
    title = 0;
  }

  return title;
}

- (BOOL)isSearchTabSelected
{
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  selectedLeaf = [tabModel selectedLeaf];

  LOBYTE(tabModel) = [selectedLeaf _isSearchTab];
  return tabModel;
}

- (void)prepareForTransitionToVisibility:(BOOL)visibility
{
  visibilityCopy = visibility;
  obj = self->_backdropCaptureView;
  if (!obj)
  {
    obj = objc_alloc_init(_UIVisualEffectBackdropView);
    contentView = [(_UIFloatingTabBar *)self contentView];
    [contentView bounds];
    [(UIView *)obj setFrame:?];

    [(UIView *)obj setAutoresizingMask:18];
    objc_storeStrong(&self->_backdropCaptureView, obj);
  }

  contentView2 = [(_UIFloatingTabBar *)self contentView];
  [contentView2 insertSubview:obj atIndex:0];

  if (visibilityCopy && (*&self->_needsUpdate & 0x20) != 0)
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
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  shadowProperties = [_currentPlatformMetrics shadowProperties];
  [shadowProperties opacity];
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
  background = [_currentPlatformMetrics background];
  [(UIView *)v10 _setBackground:background];

  backgroundEffects = [_currentPlatformMetrics backgroundEffects];
  [(UIVisualEffectView *)v10 setBackgroundEffects:backgroundEffects];

  [(UIVisualEffectView *)v10 _setCaptureView:v63];
  layer = [(UIView *)v10 layer];
  [layer setShadowPathIsBounds:1];

  layer2 = [(UIView *)v10 layer];
  [layer2 setPunchoutShadow:1];

  layer3 = [(UIView *)v10 layer];
  [layer3 setCornerCurve:*MEMORY[0x1E69796E8]];

  layer4 = [(UIView *)v10 layer];
  [layer4 setCornerRadius:*MEMORY[0x1E6979E40]];

  [_currentPlatformMetrics borderWidth];
  v18 = v17;
  layer5 = [(UIView *)v10 layer];
  [layer5 setBorderWidth:v18];

  borderColor = [_currentPlatformMetrics borderColor];
  cGColor = [borderColor CGColor];
  layer6 = [(UIView *)v10 layer];
  [layer6 setBorderColor:cGColor];

  _backgroundHost = [(UIVisualEffectView *)v10 _backgroundHost];
  contentView = [_backgroundHost contentView];
  layer7 = [contentView layer];
  [layer7 setAllowsEdgeAntialiasing:1];

  [(UIView *)self addSubview:v10];
  objc_storeStrong(&self->_backgroundView, v10);
  [(_UIFloatingTabBar *)self _updateBackgroundProperties];
  v26 = [_UIFloatingTabBarSelectionContainerView alloc];
  v27 = *MEMORY[0x1E695F058];
  v28 = *(MEMORY[0x1E695F058] + 8);
  v29 = *(MEMORY[0x1E695F058] + 16);
  v30 = *(MEMORY[0x1E695F058] + 24);
  v69 = [(_UIFloatingTabBarSelectionContainerView *)v26 initWithFrame:*MEMORY[0x1E695F058], v28, v29, v30];
  contentView2 = [(UIVisualEffectView *)v10 contentView];
  [contentView2 addSubview:v69];

  objc_storeStrong(&self->_selectionContainerView, v69);
  targetPosition = [(_UIFloatingTabBarSelectionContainerView *)v69 targetPosition];
  if (targetPosition)
  {
    objc_initWeak(&location, self);
    v81[0] = targetPosition;
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
  backgroundEffects2 = [_currentPlatformMetrics backgroundEffects];
  v35 = [backgroundEffects2 count] == 0;

  if (!v35)
  {
    [v33 _setOverrideVibrancyTrait:1];
    [v33 _setOverrideUserInterfaceRenderingMode:2];
  }

  contentView3 = [(UIVisualEffectView *)v10 contentView];
  [contentView3 addSubview:v33];

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
  layer8 = [(UIView *)v37 layer];
  [layer8 setAllowsGroupOpacity:0];

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
  panGestureRecognizer = [(UIScrollView *)v37 panGestureRecognizer];
  [v33 addGestureRecognizer:panGestureRecognizer];

  v65 = [[_UIFloatingTabBarPinnedItemsView alloc] initWithFrame:v27, v28, v29, v30];
  [v33 addSubview:v65];
  objc_storeStrong(&self->_pinnedItemsView, v65);
  v67 = [[_UIFloatingTabBarPageButton alloc] initWithDirection:0];
  button = [(_UIFloatingTabBarPageButton *)v67 button];
  [button addTarget:self action:sel__didTapLeftArrowButton_ forControlEvents:0x2000];

  [v33 addSubview:v67];
  objc_storeStrong(&self->_leftArrowButton, v67);
  v66 = [[_UIFloatingTabBarPageButton alloc] initWithDirection:1];
  button2 = [(_UIFloatingTabBarPageButton *)v66 button];
  [button2 addTarget:self action:sel__didTapRightArrowButton_ forControlEvents:0x2000];

  [v33 addSubview:v66];
  objc_storeStrong(&self->_rightArrowButton, v66);
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [collectionView _addScrollViewScrollObserver:self];

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
  traitOverrides = [(UIView *)self traitOverrides];
  v53 = objc_opt_self();
  [traitOverrides setNSIntegerValue:2 forTrait:v53];

  traitOverrides2 = [(UIView *)self traitOverrides];
  v55 = objc_opt_self();
  [traitOverrides2 setNSIntegerValue:1 forTrait:v55];

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
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38___UIFloatingTabBar__createDataSource__block_invoke;
  v10[3] = &unk_1E712A468;
  objc_copyWeak(v11, &location);
  v11[1] = a2;
  v6 = [(UICollectionViewDiffableDataSource *)v4 initWithCollectionView:collectionView cellProvider:v10];
  dataSource = self->_dataSource;
  self->_dataSource = v6;

  v8 = objc_alloc_init(_UIFloatingTabBarParser);
  parser = self->_parser;
  self->_parser = v8;

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

- (void)_invalidateDataSourceAnimated:(BOOL)animated
{
  animatedCopy = animated;
  parser = [(_UIFloatingTabBar *)self parser];
  dragController = [(_UIFloatingTabBar *)self dragController];
  pendingDropTab = [dragController pendingDropTab];
  [(UIBackgroundConfiguration *)parser _setImage:pendingDropTab];

  dragController2 = [(_UIFloatingTabBar *)self dragController];
  pendingFavoriteOrder = [dragController2 pendingFavoriteOrder];
  [(_UIDocumentUnavailableConfiguration *)parser set_tintColor:pendingFavoriteOrder];

  v9 = MEMORY[0x1E695DFD8];
  dragController3 = [(_UIFloatingTabBar *)self dragController];
  pendingDropTab2 = [dragController3 pendingDropTab];
  identifier = [pendingDropTab2 identifier];
  v13 = [v9 setWithObjects:{identifier, 0}];
  [(_UIFloatingTabBarParser *)parser setIgnoredFavoriteOrderItems:v13];

  [(_UIFloatingTabBarParser *)parser reloadItems];
  [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:animatedCopy];
}

- (void)_invalidateFavoriteOrderAnimated:(BOOL)animated
{
  animatedCopy = animated;
  parser = [(_UIFloatingTabBar *)self parser];
  dragController = [(_UIFloatingTabBar *)self dragController];
  pendingDropTab = [dragController pendingDropTab];
  [(UIBackgroundConfiguration *)parser _setImage:pendingDropTab];

  dragController2 = [(_UIFloatingTabBar *)self dragController];
  pendingFavoriteOrder = [dragController2 pendingFavoriteOrder];
  [(_UIDocumentUnavailableConfiguration *)parser set_tintColor:pendingFavoriteOrder];

  v9 = MEMORY[0x1E695DFD8];
  dragController3 = [(_UIFloatingTabBar *)self dragController];
  pendingDropTab2 = [dragController3 pendingDropTab];
  identifier = [pendingDropTab2 identifier];
  v13 = [v9 setWithObjects:{identifier, 0}];
  [(_UIFloatingTabBarParser *)parser setIgnoredFavoriteOrderItems:v13];

  [(_UIFloatingTabBarParser *)parser invalidateFavorites];
  [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:animatedCopy];
}

- (void)_updateDataSourceFromParserAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v20[1] = *MEMORY[0x1E69E9840];
  parser = [(_UIFloatingTabBar *)self parser];
  v6 = objc_alloc_init(off_1E70ECB58);
  [v6 appendSectionsWithIdentifiers:&unk_1EFE2DEA0];
  fixedItems = [(_UIFloatingTabBarParser *)parser fixedItems];
  [v6 appendItemsWithIdentifiers:fixedItems];

  [v6 appendSectionsWithIdentifiers:&unk_1EFE2DEB8];
  items = [(_UIFloatingTabBarParser *)parser items];
  [v6 appendItemsWithIdentifiers:items];

  [(_UIFloatingTabBar *)self _validateRecentItemForParser:parser];
  recentItem = [(_UIFloatingTabBar *)self recentItem];
  if (recentItem)
  {
    isEditing = [(_UIFloatingTabBar *)self isEditing];

    if (!isEditing)
    {
      [v6 appendSectionsWithIdentifiers:&unk_1EFE2DED0];
      recentItem2 = [(_UIFloatingTabBar *)self recentItem];
      v20[0] = recentItem2;
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
  v18 = animatedCopy;
  [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v6 animatingDifferences:animatedCopy completion:v16];
  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  pinnedItems = [(_UIFloatingTabBarParser *)parser pinnedItems];
  [pinnedItemsView setItems:pinnedItems animated:animatedCopy];

  [(_UIFloatingTabBar *)self _updateTabBarPaginationAnimated:animatedCopy];
  [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:animatedCopy completion:0];
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (void)_updateContentSizeCategory
{
  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (id)_viewForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 3)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    item = [pathCopy item];

    contentView = [pinnedItemsView itemViewForItemAtIndex:item];
  }

  else
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self collectionView];
    v8 = [pinnedItemsView cellForItemAtIndexPath:pathCopy];

    contentView = [v8 contentView];
  }

  return contentView;
}

- (id)_tabForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 3)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    item = [pathCopy item];

    [pinnedItemsView tabForSelectionAtItemIndex:item];
  }

  else
  {
    dataSource = [(_UIFloatingTabBar *)self dataSource];
    pinnedItemsView = [dataSource itemIdentifierForIndexPath:pathCopy];

    [pinnedItemsView tabForSelection];
  }
  v8 = ;

  return v8;
}

- (void)_updateTransform
{
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  memset(&v21, 0, sizeof(v21));
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  if ([tabModel isEditing])
  {
    if (_currentPlatformMetrics)
    {
      [_currentPlatformMetrics editModeTransform];
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
    contentFrameDidChangeBlock = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];

    if (contentFrameDidChangeBlock)
    {
      contentView = [(_UIFloatingTabBar *)self contentView];
      contentView2 = [(_UIFloatingTabBar *)self contentView];
      [contentView2 bounds];
      [contentView convertRect:self toView:?];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      contentFrameDidChangeBlock2 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
      contentFrameDidChangeBlock2[2](v10, v12, v14, v16);
    }
  }
}

- (void)_updateBackgroundProperties
{
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  v3 = objc_opt_new();
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  if ([tabModel isEditing])
  {
    editModeBackgroundShadowProvider = [_currentPlatformMetrics editModeBackgroundShadowProvider];

    if (editModeBackgroundShadowProvider)
    {
      editModeBackgroundShadowProvider2 = [_currentPlatformMetrics editModeBackgroundShadowProvider];
      traitCollection = [(UIView *)self traitCollection];
      shadowProperties2 = (*(editModeBackgroundShadowProvider2 + 16))(editModeBackgroundShadowProvider2, [traitCollection userInterfaceStyle]);

      v3 = editModeBackgroundShadowProvider2;
      goto LABEL_7;
    }
  }

  else
  {
  }

  shadowProperties = [_currentPlatformMetrics shadowProperties];

  if (!shadowProperties)
  {
    goto LABEL_8;
  }

  shadowProperties2 = [_currentPlatformMetrics shadowProperties];
LABEL_7:

  v3 = shadowProperties2;
LABEL_8:
  backgroundView = [(_UIFloatingTabBar *)self backgroundView];
  [v3 applyToView:backgroundView];

  borderColor = [_currentPlatformMetrics borderColor];
  cGColor = [borderColor CGColor];
  backgroundView2 = [(_UIFloatingTabBar *)self backgroundView];
  layer = [backgroundView2 layer];
  [layer setBorderColor:cGColor];
}

- (_UIShadowProperties)shadowProperties
{
  backgroundView = [(_UIFloatingTabBar *)self backgroundView];
  v3 = [_UIShadowProperties propertiesFromView:backgroundView];

  return v3;
}

- (int64_t)effectiveUserInterfaceStyle
{
  traitCollection = [(UIView *)self->_backgroundView traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  return userInterfaceStyle;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  if (v9 != width || v8 != height)
  {
    [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBar;
  [(UIView *)&v11 setBounds:x, y, width, height];
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  if (v9 != width || v8 != height)
  {
    [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  }

  v11.receiver = self;
  v11.super_class = _UIFloatingTabBar;
  [(UIView *)&v11 setFrame:x, y, width, height];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (self->_largestItemHeight == 0.0)
  {
    height = fits.height;
    v6 = objc_alloc_init(_UIFloatingTabBarItemView);
    [(UIView *)v6 setHidden:1];
    [(_UIFloatingTabBarItemView *)v6 setEditing:0];
    contentView = [(_UIFloatingTabBar *)self contentView];
    [contentView addSubview:v6];

    [(_UIFloatingTabBarItemView *)v6 sizeThatFits:width, height];
    self->_largestItemHeight = v8;
    [(_UIFloatingTabBarItemView *)v6 baselineOffsetFromTop];
    self->_minimumItemBaselineFromTop = v9;
    [(UIView *)v6 removeFromSuperview];
  }

  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [_currentPlatformMetrics backgroundInsets];
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
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  if ([(_UIFloatingTabBar *)self _isEffectivelyEmpty])
  {
    recentItem = [(_UIFloatingTabBar *)self recentItem];
    v6 = recentItem == 0;
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
  leftArrowButton = [(_UIFloatingTabBar *)self leftArrowButton];
  [leftArrowButton sizeThatFits:{v10, v12}];
  v15 = v14;

  sidebarButton = [(_UIFloatingTabBar *)self sidebarButton];
  [sidebarButton sizeThatFits:{v10, v12}];
  v18 = v17;

  showsSidebarButton = [(_UIFloatingTabBar *)self showsSidebarButton];
  v20 = *MEMORY[0x1E695F060];
  v105 = v18;
  if (showsSidebarButton)
  {
    v20 = v18;
  }

  rect2.origin.x = v20;
  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  v106 = v10;
  v107 = v12;
  [pinnedItemsView sizeThatFits:{v10, v12}];
  v23 = v22;

  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [collectionView currentPage];
  v26 = v25;

  v27 = fmax(fmin(v26, 1.0), 0.0);
  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  pages = [collectionView2 pages];
  v30 = fmax(fmin([pages count] - v26 + -1.0, 1.0), 0.0);

  if (_shouldReverseLayoutDirection)
  {
    v31 = v30;
  }

  else
  {
    v31 = v27;
  }

  if (_shouldReverseLayoutDirection)
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
  [_currentPlatformMetrics backgroundInsets];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v99 = v33;
  v43 = rect2.origin.x + v33;
  v101 = v23;
  v44 = v23 + v34 + v43;
  largestPageWidth = self->_largestPageWidth;
  collectionView3 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView3 viewWidthForPageProgress:v26];
  v47 = v42 + v38 + v46 + v44;

  v48 = v40 + v36 + self->_largestItemHeight;
  collectionViewContainer = [(_UIFloatingTabBar *)self collectionViewContainer];
  [collectionViewContainer setFrame:{0.0, 0.0, v47, v48}];

  collectionViewContainer2 = [(_UIFloatingTabBar *)self collectionViewContainer];
  [collectionViewContainer2 _setContinuousCornerRadius:v48 * 0.5];

  selectionContainerView = [(_UIFloatingTabBar *)self selectionContainerView];
  [selectionContainerView setFrame:{0.0, 0.0, v47, v48}];

  selectionContainerView2 = [(_UIFloatingTabBar *)self selectionContainerView];
  v104 = v48 * 0.5;
  [selectionContainerView2 _setContinuousCornerRadius:v48 * 0.5];

  collectionView4 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView4 frame];
  v95 = v54;

  v93 = v42;
  v96 = v34;
  if (_shouldReverseLayoutDirection)
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

  collectionView5 = [(_UIFloatingTabBar *)self collectionView];
  v98 = v57;
  [collectionView5 setFrame:{v57, 0.0, v56, v48}];

  collectionView6 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView6 _setVisibleRectEdgeInsets:{0.0, -(rect2.origin.x + v103 + v44), 0.0, -(rect2.origin.x + v103 + v44)}];

  v60 = rect2.origin.x + v55 - v38 - v44;
  if (_shouldReverseLayoutDirection)
  {
    v60 = 0.0;
  }

  v61 = v38 + v99 + v60;
  pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
  [pinnedItemsView2 setFrame:{v61, 0.0, v101, v48}];

  largestItemHeight = self->_largestItemHeight;
  if (v6)
  {
    v47 = 0.0;
  }

  leftArrowButton2 = [(_UIFloatingTabBar *)self leftArrowButton];
  [leftArrowButton2 setFrame:{v99 - v103, v36, v103, largestItemHeight}];

  leftArrowButton3 = [(_UIFloatingTabBar *)self leftArrowButton];
  [leftArrowButton3 setContentOpacity:v100];

  rightArrowButton = [(_UIFloatingTabBar *)self rightArrowButton];
  [rightArrowButton setFrame:{v47 - v96, v36, v103, largestItemHeight}];

  rightArrowButton2 = [(_UIFloatingTabBar *)self rightArrowButton];
  [rightArrowButton2 setContentOpacity:v102];

  if (_shouldReverseLayoutDirection)
  {
    rightArrowButton3 = [(_UIFloatingTabBar *)self rightArrowButton];
    [rightArrowButton3 frame];
    v69 = v105;
    v70 = CGRectGetMinX(v111) - v105 - v94;
  }

  else
  {
    rightArrowButton3 = [(_UIFloatingTabBar *)self leftArrowButton];
    [rightArrowButton3 frame];
    v70 = v38 + CGRectGetMaxX(v112);
    v69 = v105;
  }

  sidebarButton2 = [(_UIFloatingTabBar *)self sidebarButton];
  [sidebarButton2 setFrame:{v70, v36, v69, largestItemHeight}];

  if ([(_UIFloatingTabBar *)self showsSidebarButton])
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.0;
  }

  sidebarButton3 = [(_UIFloatingTabBar *)self sidebarButton];
  [sidebarButton3 setAlpha:v72];

  v74 = v108 + (v106 - v47) * 0.5;
  v75 = v109 + (v107 - v48) * 0.5;
  backgroundView = [(_UIFloatingTabBar *)self backgroundView];
  [backgroundView frame];
  rect2.origin.x = v77;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  contentView = [(_UIFloatingTabBar *)self contentView];
  [contentView setFrame:{0.0, 0.0, v47, v48}];

  backgroundCaptureView = [(_UIFloatingTabBar *)self backgroundCaptureView];
  [backgroundCaptureView setFrame:{v74, v75, v47, v48}];

  backgroundView2 = [(_UIFloatingTabBar *)self backgroundView];
  [backgroundView2 setFrame:{v74, v75, v47, v48}];

  contentView2 = [(_UIFloatingTabBar *)self contentView];
  [contentView2 _setContinuousCornerRadius:v104];

  backgroundView3 = [(_UIFloatingTabBar *)self backgroundView];
  [backgroundView3 _setContinuousCornerRadius:v104];

  contentFrameDidChangeBlock = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
  if (contentFrameDidChangeBlock)
  {
    v90 = contentFrameDidChangeBlock;
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
      contentFrameDidChangeBlock2 = [(_UIFloatingTabBar *)self contentFrameDidChangeBlock];
      contentFrameDidChangeBlock2[2](v74, v75, v47, v48);
    }
  }

  if ((*&self->_needsUpdate & 2) != 0 || v95 != v98)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:0 completion:0];
  }
}

- (void)_updateTabBarPaginationAnimated:(BOOL)animated
{
  animatedCopy = animated;
  [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
  if (animatedCopy)
  {
    window = [(UIView *)self window];
    if (window)
    {
      v6 = window;
      contentView = [(_UIFloatingTabBar *)self contentView];
      [contentView frame];
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
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  isEditing = [tabModel isEditing];

  if (isEditing)
  {
    [_currentPlatformMetrics maximumExpandedWidth];
  }

  else
  {
    [_currentPlatformMetrics maximumWidth];
  }

  v7 = v6;
  [UIViewController _horizontalContentMarginForView:self];
  v9 = v8;
  [(UIView *)self bounds];
  v11 = v10;
  v13 = v12 - (v9 + v9);
  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  [pinnedItemsView sizeThatFits:{v13, v11}];
  v16 = v15;

  if ([(_UIFloatingTabBar *)self showsSidebarButton])
  {
    sidebarButton = [(_UIFloatingTabBar *)self sidebarButton];
    [sidebarButton sizeThatFits:{v13, v11}];
    v16 = v16 + v18;
  }

  v19 = 0.65;
  if (isEditing)
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
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    traitCollection = [(UIView *)self traitCollection];
    _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
    lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
    itemIdentifiers = [lastSnapshot itemIdentifiers];

    [(_UIFloatingTabBar *)self _maximumContainerSizeForPagination];
    v7 = v6;
    v9 = v8;
    leftArrowButton = [(_UIFloatingTabBar *)self leftArrowButton];
    v113 = v7;
    [leftArrowButton sizeThatFits:{v7, v9}];
    v12 = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = [itemIdentifiers count];
    v103[1] = v103;
    MEMORY[0x1EEE9AC00](v14);
    v16 = v103 - v15;
    v17 = [[_UIEditMenuListPage alloc] initWithStartIndex:0];
    [v13 addObject:v17];
    isEditing = [(_UIFloatingTabBar *)self isEditing];
    v105 = _currentPlatformMetrics;
    [_currentPlatformMetrics editModeItemMargins];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v27 = objc_alloc_init(_UIFloatingTabBarItemView);
    [(_UIFloatingTabBarItemView *)v27 setSuppressJiggleAnimation:1];
    [(UIView *)v27 setHidden:1];
    [(_UIFloatingTabBarItemView *)v27 setEditing:isEditing];
    contentView = [(_UIFloatingTabBar *)self contentView];
    [contentView addSubview:v27];

    v29 = [itemIdentifiers count];
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
        v35 = [itemIdentifiers objectAtIndex:v30];
        [v13 count];
        [itemIdentifiers count];
        v36 = v113;
        UIRoundToViewScale(self);
        v38 = v37;
        contentTab = [v35 contentTab];

        if (contentTab)
        {
          contentTab2 = [v35 contentTab];
          [(_UIFloatingTabBarItemView *)v27 setItem:contentTab2];

          [(_UIFloatingTabBarItemView *)v27 sizeThatFits:v36, v9];
          v42 = v41;
          v44 = v43;
          [(_UIFloatingTabBarItemView *)v27 baselineOffsetFromTop];
          v46 = v45;
          isCustomizableItem = [(_UIFloatingTabBarItemView *)v27 isCustomizableItem];
          v48 = v111 + v42;
          if (isCustomizableItem && isEditing)
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
          isPlaceholder = [v35 isPlaceholder];
          if (isPlaceholder)
          {
            v44 = 0.0;
          }

          else
          {
            v44 = v108;
          }

          v48 = 80.0;
          if (!isPlaceholder)
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

      while (v30 < [itemIdentifiers count]);
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
      range = [(_UIEditMenuListPage *)v17 range];
      v58 = range - 1;
      if (range != 1)
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

    if (isEditing && ![itemIdentifiers count])
    {
      pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
      items = [pinnedItemsView items];
      v65 = [items count];

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
    v73 = [itemIdentifiers count];
    if (v32 == 0.0 || !v73)
    {
      pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
      items2 = [pinnedItemsView2 items];
      v76 = [items2 count];

      if (v76)
      {
        pinnedItemsView3 = [(_UIFloatingTabBar *)self pinnedItemsView];
        [pinnedItemsView3 sizeThatFits:{v54, v9}];
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
    pages = [collectionView pages];
    v82 = v66;
    v83 = v82;
    if (pages == v82)
    {
    }

    else
    {
      if (v82 && pages)
      {
        v84 = [pages isEqual:v82];

        if (v84)
        {
          goto LABEL_58;
        }
      }

      else
      {
      }

      pages = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
      if (![(_UIFloatingTabBar *)self isEditing]&& pages)
      {
        collectionView2 = [(_UIFloatingTabBar *)self collectionView];
        indexPathsForVisibleItems = [collectionView2 indexPathsForVisibleItems];
        v87 = [indexPathsForVisibleItems containsObject:pages];

        if (v87)
        {
          [(_UIFloatingTabBar *)self _setNeedsScrollToSelectedItem];
        }
      }

      [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
      [(_UIFloatingTabBar *)self _setNeedsPaginationScrollTarget];
    }

LABEL_58:
    v88 = collectionView;
    [collectionView contentInset];
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
    v99 = v98 || isEditing;
    collectionViewContainer = [(_UIFloatingTabBar *)self collectionViewContainer];
    [collectionViewContainer setClipsToBounds:v99];

    contentView2 = [(_UIFloatingTabBar *)self contentView];
    [contentView2 setClipsToBounds:v99];

    selectionContainerView = [(_UIFloatingTabBar *)self selectionContainerView];
    [selectionContainerView setClipsToBounds:v99];

    [(_UIFloatingTabBar *)self setScrubbingEnabled:v97];
    [(_UIFloatingTabBar *)self _setNeedsSelectionAlphaUpdate];
    [(UIView *)v27 removeFromSuperview];
    *(&self->super.super.super.isa + v104) &= ~1u;
  }
}

- (void)_didTapLeftArrowButton:(id)button
{
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  v6 = collectionView;
  if (_shouldReverseLayoutDirection)
  {
    [collectionView incrementTargetPage];
  }

  else
  {
    [collectionView decrementTargetPage];
  }

  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
}

- (void)_didTapRightArrowButton:(id)button
{
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  v6 = collectionView;
  if (_shouldReverseLayoutDirection)
  {
    [collectionView decrementTargetPage];
  }

  else
  {
    [collectionView incrementTargetPage];
  }

  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
}

- (BOOL)scrubbingEnabled
{
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  bounces = [collectionView bounces];

  return bounces ^ 1;
}

- (void)setScrubbingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 10.0;
  }

  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [collectionView setBounces:!enabledCopy];

  selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setAllowableMovement:{v5, v5}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = _UIFloatingTabBar;
  v8 = [(UIView *)&v13 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8 == self || v8 == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(_UIFloatingTabBar *)self isEditing]&& !CGRectIsNull(self->_frameForExpandedDropTarget) && (v15.x = x, v15.y = y, CGRectContainsPoint(self->_frameForExpandedDropTarget, v15)))
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v9 = selfCopy;
  }

  return v9;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == beginCopy)
  {
    tabModel2 = [(_UIFloatingTabBar *)self _indexPathForGestureRecognizer:beginCopy];
    if (tabModel2)
    {
      tabModel = [(_UIFloatingTabBar *)self tabModel];
      isEditing = [tabModel isEditing];

      if ((isEditing & 1) == 0)
      {
        v11 = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:tabModel2];
        isEnabled = [v11 isEnabled];

LABEL_10:
        goto LABEL_11;
      }
    }

LABEL_9:
    isEnabled = 0;
    goto LABEL_10;
  }

  editModeGestureRecognizer = [(_UIFloatingTabBar *)self editModeGestureRecognizer];

  if (editModeGestureRecognizer == beginCopy)
  {
    tabModel2 = [(_UIFloatingTabBar *)self tabModel];
    if ([tabModel2 isEditable] && !-[_UIFloatingTabBar isEditing](self, "isEditing"))
    {
      isEnabled = !self->_isInTransitionAnimation;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  isEnabled = 1;
LABEL_11:

  return isEnabled & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == recognizerCopy)
  {
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    panGestureRecognizer = [collectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      v9 = 1;
    }

    else
    {
      editModeGestureRecognizer = [(_UIFloatingTabBar *)self editModeGestureRecognizer];
      v9 = editModeGestureRecognizer == gestureRecognizerCopy;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_indexPathForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  [recognizerCopy locationInView:pinnedItemsView];
  v7 = v6;
  v9 = v8;

  pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v11 = [pinnedItemsView2 itemIndexForItemAtLocation:{v7, v9}];

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    [recognizerCopy locationInView:collectionView];
    v14 = v13;

    collectionView2 = [(_UIFloatingTabBar *)self collectionView];
    [collectionView2 bounds];
    MidY = CGRectGetMidY(v27);

    collectionView3 = [(_UIFloatingTabBar *)self collectionView];
    [collectionView3 bounds];
    v26.x = v14;
    v26.y = MidY;
    v18 = CGRectContainsPoint(v28, v26);

    if (v18)
    {
      collectionView4 = [(_UIFloatingTabBar *)self collectionView];
      v20 = [collectionView4 indexPathForItemAtPoint:{v14, MidY}];
    }

    else
    {
      v20 = 0;
    }

    v21 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v20];
    collectionView5 = [(_UIFloatingTabBar *)self collectionView];
    targetPage = [collectionView5 targetPage];

    if (v21 != targetPage)
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

- (void)_handleSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UIFloatingTabBar *)self _indexPathForGestureRecognizer:?];
  v5 = v4;
  if (v4)
  {
    highlightedIndexPath = v4;
  }

  else
  {
    highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];
  }

  v7 = highlightedIndexPath;

  v8 = v7;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  if ([collectionView isDecelerating])
  {
    collectionView2 = [(_UIFloatingTabBar *)self collectionView];
    panGestureRecognizer = [collectionView2 panGestureRecognizer];
    v12 = [panGestureRecognizer state] == 5;
  }

  else
  {
    v12 = 1;
  }

  contentView = [(_UIFloatingTabBar *)self contentView];
  [gestureCopy locationInView:contentView];
  v15 = v14;
  v17 = v16;

  state = [gestureCopy state];
  v19 = 0;
  if (state > 2)
  {
    if (state == 3)
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
        _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
        v35 = [_indexPathForSelectedItem isEqual:v8];

        if (!v35)
        {
          v20 = 0;
          v19 = 1;
          shouldReselectHighlightedItemOnLift = 1;
          goto LABEL_39;
        }

        shouldReselectHighlightedItemOnLift = [(_UIFloatingTabBar *)self shouldReselectHighlightedItemOnLift];
      }

      else
      {
        shouldReselectHighlightedItemOnLift = 0;
      }

      v20 = 0;
      v19 = 1;
      goto LABEL_39;
    }

    v19 = state == 4;
    goto LABEL_16;
  }

  if (state == 1)
  {
    if ([(_UIFloatingTabBar *)self scrubbingEnabled])
    {
      v23 = 0.5;
      if (v8)
      {
        contentView2 = [(_UIFloatingTabBar *)self contentView];
        [(_UIFloatingTabBar *)self _itemFrameForItemAtIndexPath:v8 inCoordinateSpace:contentView2];
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
            contentView3 = [(_UIFloatingTabBar *)self contentView];
            [gestureCopy locationInView:contentView3];
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
    selectionFrameGroupCompletion = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
    [selectionFrameGroupCompletion increment];

    if (_UIFlexiGlassEnabled())
    {
      traitCollection = [(UIView *)self traitCollection];
      v42 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

      if (!v42)
      {
        traitOverrides = [(UIView *)self traitOverrides];
        [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
      }
    }

    [(_UIFloatingTabBar *)self setShouldReselectHighlightedItemOnLift:1];
    [(_UIFloatingTabBar *)self setSelectionGestureInitialLocation:v15, v17];
    goto LABEL_38;
  }

  if (state != 2)
  {
LABEL_16:

    shouldReselectHighlightedItemOnLift = 0;
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
  shouldReselectHighlightedItemOnLift = 0;
LABEL_39:
  [(_UIFloatingTabBar *)self setHighlightedIndexPath:v20];
  [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:1 completion:0];
  if (shouldReselectHighlightedItemOnLift)
  {
    [(_UIFloatingTabBar *)self _selectItemAtIndexPath:v8];
  }

  if (v19)
  {
    selectionFrameGroupCompletion2 = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
    [selectionFrameGroupCompletion2 complete];
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  interactionCopy = interaction;
  requestCopy = request;
  view = [interactionCopy view];
  [requestCopy location];
  v11 = v10;
  v13 = v12;
  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  [view convertPoint:pinnedItemsView toView:{v11, v13}];
  v16 = v15;
  v18 = v17;

  pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
  v20 = [pinnedItemsView2 itemIndexForItemAtLocation:{v16, v18}];

  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v33 = [MEMORY[0x1E696AC88] indexPathForItem:v20 inSection:3];
    pinnedItemsView3 = [(_UIFloatingTabBar *)self pinnedItemsView];
    [pinnedItemsView3 itemFrameForItemAtIndex:v20];
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;

    pinnedItemsView4 = [(_UIFloatingTabBar *)self pinnedItemsView];
    view2 = [interactionCopy view];
    [pinnedItemsView4 convertRect:view2 toView:{v59, v61, v63, v65}];
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;

    v56 = [UIPointerRegion regionWithRect:v33 identifier:v69, v71, v73, v75];
    goto LABEL_9;
  }

  view3 = [interactionCopy view];
  [requestCopy location];
  v23 = v22;
  v25 = v24;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [view3 convertPoint:collectionView toView:{v23, v25}];
  v28 = v27;
  v30 = v29;

  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView2 bounds];
  v80.x = v28;
  v80.y = v30;
  LODWORD(collectionView) = CGRectContainsPoint(v81, v80);

  if (!collectionView)
  {
    goto LABEL_8;
  }

  collectionView3 = [(_UIFloatingTabBar *)self collectionView];
  v33 = [collectionView3 indexPathForItemAtPoint:{v28, v30}];

  v34 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v33];
  collectionView4 = [(_UIFloatingTabBar *)self collectionView];
  targetPage = [collectionView4 targetPage];

  if (v34 != targetPage)
  {

LABEL_8:
    v56 = 0;
    v33 = 0;
    goto LABEL_9;
  }

  if (v33)
  {
    collectionView5 = [(_UIFloatingTabBar *)self collectionView];
    v38 = [collectionView5 cellForItemAtIndexPath:v33];

    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    view4 = [interactionCopy view];
    [v38 convertRect:view4 toView:{v40, v42, v44, v46}];
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
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  if ([tabModel isEditing])
  {
    section = [v33 section];

    if (section == 1)
    {
      goto LABEL_13;
    }

    tabModel = v56;
    v56 = 0;
  }

LABEL_13:

  return v56;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  identifier = [region identifier];
  selfCopy = self;
  v7 = [(_UIFloatingTabBar *)selfCopy _viewForItemAtIndexPath:identifier];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  superview = [v7 superview];
  [v7 center];
  [superview convertPoint:selfCopy toView:?];
  v18 = v17;
  v20 = v19;

  v21 = [[UIPreviewTarget alloc] initWithContainer:selfCopy center:v18, v20];
  tabModel = [(_UIFloatingTabBar *)selfCopy tabModel];
  isEditing = [tabModel isEditing];

  if (isEditing)
  {
    v24 = [(_UIFloatingTabBar *)selfCopy _targetedPreviewForTabAtIndexPath:identifier];
    v25 = [v24 retargetedPreviewWithTarget:v21];
LABEL_10:
    v32 = v25;
    v33 = off_1E70EA410;
    goto LABEL_13;
  }

  _indexPathForSelectedItem = [(_UIFloatingTabBar *)selfCopy _indexPathForSelectedItem];
  v27 = identifier;
  v28 = _indexPathForSelectedItem;
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
  [v7 convertRect:selfCopy toView:{v9, v11, v13, v15}];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  view = [(UITargetedPreview *)v32 view];
  [view bounds];
  v45 = [UIPointerShape shapeWithRoundedRect:v37 cornerRadius:v39, v41, v43, CGRectGetHeight(v49) * 0.5];

  v46 = [UIPointerStyle styleWithEffect:v35 shape:v45];

  return v46;
}

- (BOOL)_isValidDropTargetIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (pathCopy && ![pathCopy section])
  {
    item = [v5 item];
    lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
    v6 = item == [lastSnapshot numberOfItemsInSection:&unk_1EFE33DF0];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)tabDragController:(id)controller tabForBeginningSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [sessionCopy locationInView:collectionView];
  v8 = v7;
  v10 = v9;

  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  v12 = [collectionView2 indexPathForItemAtPoint:{v8, v10}];

  if (v12)
  {
    dataSource = [(_UIFloatingTabBar *)self dataSource];
    v14 = [dataSource itemIdentifierForIndexPath:v12];

    tabForSelection = [v14 tabForSelection];
    v16 = [(_UIFloatingTabBar *)self _canDragTab:tabForSelection];

    if (v16)
    {
      tabForSelection2 = [v14 tabForSelection];
    }

    else
    {
      tabForSelection2 = 0;
    }
  }

  else
  {
    tabForSelection2 = 0;
  }

  return tabForSelection2;
}

- (void)tabDragController:(id)controller hideDraggedTab:(id)tab
{
  v8 = [(_UIFloatingTabBar *)self _indexPathForTabItem:tab];
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  v6 = [collectionView cellForItemAtIndexPath:v8];

  contentView = [v6 contentView];
  [contentView setHidden:1];
}

- (BOOL)tabDragController:(id)controller canHandleDropSessionForTab:(id)tab
{
  tabCopy = tab;
  _tabModel = [tabCopy _tabModel];
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  if (_tabModel == tabModel)
  {
    v8 = [tabCopy _isAction] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)tabDragController:(id)controller dropProposalForSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [sessionCopy locationInView:collectionView];

  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView2 bounds];
  CGRectGetMidY(v20);

  v8 = [(_UIFloatingTabBar *)self _destinationIndexPathForDropSession:sessionCopy];
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  isEditing = [tabModel isEditing];

  if (isEditing)
  {
    items = [sessionCopy items];
    firstObject = [items firstObject];

    localObject = [firstObject localObject];
    if ([localObject _tabPlacement] == 6)
    {
      v14 = 1;
    }

    else if (-[_UIFloatingTabBar _isValidDropTargetIndexPath:](self, "_isValidDropTargetIndexPath:", v8) && (-[_UIFloatingTabBar tabModel](self, "tabModel"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isTabHidden:localObject], v15, (v16 & 1) == 0))
    {
      if ([(_UIFloatingTabBar *)self _canDragTab:localObject])
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

    firstObject = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:v8];
    localObject = [(_UIFloatingTabBar *)self _tabBarController];
    v14 = [(UITabBarController *)localObject _tab:firstObject operationForAcceptingItemsFromDropSession:sessionCopy];
  }

LABEL_14:
  v17 = [[UIDropProposal alloc] initWithDropOperation:v14];

  return v17;
}

- (BOOL)tabDragController:(id)controller isDisplayingTab:(id)tab
{
  tabCopy = tab;
  parser = [(_UIFloatingTabBar *)self parser];
  itemIdentifiers = [(_UIFloatingTabBarParser *)parser itemIdentifiers];
  identifier = [tabCopy identifier];

  LOBYTE(tabCopy) = [itemIdentifiers containsObject:identifier];
  return tabCopy;
}

- (void)tabDragController:(id)controller acceptItemsIntoTabFromDropSession:(id)session
{
  sessionCopy = session;
  v5 = [(_UIFloatingTabBar *)self _destinationIndexPathForDropSession:?];
  if (v5)
  {
    v6 = [(_UIFloatingTabBar *)self _tabForItemAtIndexPath:v5];
    _tabBarController = [(_UIFloatingTabBar *)self _tabBarController];
    [(UITabBarController *)_tabBarController _tab:v6 acceptItemsFromDropSession:sessionCopy];
  }
}

- (void)tabDragController:(id)controller pendingDropTabDidChange:(id)change
{
  changeCopy = change;
  parser = [(_UIFloatingTabBar *)self parser];
  v7 = parser;
  if (parser)
  {
    v8 = *(parser + 72);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9 != changeCopy)
  {

    [(_UIFloatingTabBar *)self _invalidateFavoriteOrderAnimated:1];
  }
}

- (id)_targetedPreviewForTab:(id)tab
{
  v4 = [(_UIFloatingTabBar *)self _indexPathForTabItem:tab];
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

- (id)_targetedPreviewForTabAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:pathCopy];
  v6 = [(_UIFloatingTabBar *)self _viewForItemAtIndexPath:pathCopy];

  if (v6 && (-[_UIFloatingTabBar collectionView](self, "collectionView"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 targetPage], v7, v5 == v8))
  {
    contentView = [(_UIFloatingTabBar *)self contentView];
    [v6 center];
    v11 = v10;
    v13 = v12;
    superview = [v6 superview];
    [contentView convertPoint:superview fromView:{v11, v13}];
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
    contentView2 = [(_UIFloatingTabBar *)self contentView];
    v32 = [(UIPreviewTarget *)v30 initWithContainer:contentView2 center:v16, v18];

    v33 = [[UITargetedDragPreview alloc] initWithView:v6 parameters:v19 target:v32];
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)_destinationIndexPathForDropSession:(id)session
{
  sessionCopy = session;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [sessionCopy locationInView:collectionView];
  v7 = v6;
  [collectionView bounds];
  MidY = CGRectGetMidY(v89);
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  isEditing = [tabModel isEditing];

  if ((isEditing & 1) == 0)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    [sessionCopy locationInView:pinnedItemsView];
    v13 = v12;
    v15 = v14;

    pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v17 = [pinnedItemsView2 itemIndexForItemAtLocation:{v13, v15}];

    if (v17 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v18 = [MEMORY[0x1E696AC88] indexPathForItem:v17 inSection:3];
      if (v18)
      {
        goto LABEL_35;
      }
    }
  }

  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  [collectionView2 bounds];
  v88.x = v7;
  v88.y = MidY;
  v20 = CGRectContainsPoint(v90, v88);

  if (v20)
  {
    collectionView3 = [(_UIFloatingTabBar *)self collectionView];
    v18 = [collectionView3 indexPathForItemAtPoint:{v7, MidY}];
  }

  else
  {
    v18 = 0;
  }

  tabModel2 = [(_UIFloatingTabBar *)self tabModel];
  isEditing2 = [tabModel2 isEditing];

  if (!isEditing2)
  {
    goto LABEL_35;
  }

  if (!v18)
  {
    pages = [collectionView pages];
    v25 = [pages objectAtIndex:{objc_msgSend(collectionView, "targetPage")}];

    contentView = [(_UIFloatingTabBar *)self contentView];
    [sessionCopy locationInView:contentView];
    v28 = v27;

    contentView2 = [(_UIFloatingTabBar *)self contentView];
    [contentView2 bounds];
    v30 = v28 < CGRectGetMidX(v91);

    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v86 = v25;
    range = [v25 range];
    if (v30 == _shouldReverseLayoutDirection)
    {
      v35 = v32;
      dragController = [(_UIFloatingTabBar *)self dragController];
      pendingFavoriteOrder = [dragController pendingFavoriteOrder];
      v38 = [pendingFavoriteOrder indexOfObject:0x1EFB191F0];

      if (v38 == 0x7FFFFFFFFFFFFFFFLL || ([MEMORY[0x1E696AC88] indexPathForItem:v38 inSection:1], v65 = objc_claimAutoreleasedReturnValue(), v66 = -[_UIFloatingTabBar _indexInDataSourceForItemAtIndexPath:](self, "_indexInDataSourceForItemAtIndexPath:", v65), v65, v66 < range) || v66 - range >= v35)
      {
        v84 = v35;
        traitCollection = [(UIView *)self traitCollection];
        v40 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

        [(_UIFloatingTabBar *)self _maximumContainerSizeForPagination];
        v42 = v41;
        v44 = v43;
        leftArrowButton = [(_UIFloatingTabBar *)self leftArrowButton];
        [(UIView *)self bounds];
        [leftArrowButton sizeThatFits:{v46, v47}];

        lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
        [lastSnapshot numberOfItems];

        v85 = v40;
        [v40 editModeItemMargins];
        v50 = v49;
        v52 = v51;
        v53 = [_UIFloatingTabBarItemView alloc];
        v54 = [(_UIFloatingTabBarItemView *)v53 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        [(UIView *)v54 setHidden:1];
        [(_UIFloatingTabBarItemView *)v54 setSuppressJiggleAnimation:1];
        [(_UIFloatingTabBarItemView *)v54 setEditing:1];
        items = [sessionCopy items];
        firstObject = [items firstObject];
        localObject = [firstObject localObject];
        [(_UIFloatingTabBarItemView *)v54 setItem:localObject];

        contentView3 = [(_UIFloatingTabBar *)self contentView];
        [contentView3 addSubview:v54];

        [(_UIFloatingTabBarItemView *)v54 sizeThatFits:v42, v44];
        v60 = v59;
        if ([collectionView targetPage] < 1)
        {
          v64 = 0.0;
        }

        else
        {
          pages2 = [collectionView pages];
          v62 = [pages2 objectAtIndex:{objc_msgSend(collectionView, "targetPage") - 1}];

          [v62 overlapWidth];
          v64 = v63;
        }

        v70 = range + v84 - 1;
        if (v70 < range)
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

            pages3 = [collectionView pages];
            [pages3 count];

            v75 = v70 + 1;
            UIRoundToViewScale(self);
            v77 = v76;
            [v86 width];
            if (v71 + v78 - v64 - v72 <= v77)
            {
              break;
            }

            v79 = [collectionView cellForItemAtIndexPath:v73];
            [v79 bounds];
            v72 = v72 + v80;

            --v70;
            if (v75 - 2 < range)
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
        range2 = [v86 range];
        [v86 range];
        v69 = [(_UIFloatingTabBar *)self _indexPathForItemAtDataSourceIndex:range2 + v68 - 1];
        v18 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v69 inSection:{"item") + 1, 1}];
      }

      if (!v18)
      {
        lastSnapshot2 = [(_UIFloatingTabBar *)self lastSnapshot];
        v34 = [lastSnapshot2 numberOfItemsInSection:&unk_1EFE33DC0];

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
      v18 = [(_UIFloatingTabBar *)self _indexPathForItemAtDataSourceIndex:range];
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

- (void)setHighlightedIndexPath:(id)path
{
  pathCopy = path;
  highlightedIndexPath = self->_highlightedIndexPath;
  v10 = pathCopy;
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

  objc_storeStrong(&self->_highlightedIndexPath, path);
  v9 = v10;
  if (v10)
  {
    [(_UIFloatingTabBar *)self _setHighlighted:1 forItemAtIndexPath:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_setHasSelectionHighlight:(BOOL)highlight forItemAtIndexPath:(id)path
{
  highlightCopy = highlight;
  pathCopy = path;
  if ([pathCopy section] == 3)
  {
    if (highlightCopy)
    {
      item = [pathCopy item];
    }

    else
    {
      item = 0x7FFFFFFFFFFFFFFFLL;
    }

    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    [pinnedItemsView setSelectionViewIndex:item];
  }

  else
  {
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    pinnedItemsView = [collectionView cellForItemAtIndexPath:pathCopy];

    [pinnedItemsView setHasSelectionHighlight:highlightCopy];
  }
}

- (void)_setHighlighted:(BOOL)highlighted forItemAtIndexPath:(id)path
{
  highlightedCopy = highlighted;
  pathCopy = path;
  if ([pathCopy section] == 3)
  {
    if (highlightedCopy)
    {
      item = [pathCopy item];
    }

    else
    {
      item = 0x7FFFFFFFFFFFFFFFLL;
    }

    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    [pinnedItemsView setHighlightedIndex:item];
  }

  else
  {
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    pinnedItemsView = [collectionView cellForItemAtIndexPath:pathCopy];

    [pinnedItemsView setHighlighted:highlightedCopy];
  }
}

- (void)tabModelEditingStateDidChange
{
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  isEditing = [tabModel isEditing];

  tabModel2 = [(_UIFloatingTabBar *)self tabModel];
  customizationStore = [tabModel2 customizationStore];

  if (isEditing)
  {
    excludedItems = [customizationStore excludedItems];
    v7 = excludedItems;
    if (excludedItems)
    {
      v8 = excludedItems;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    v16 = v8;

    parser = [(_UIFloatingTabBar *)self parser];
    currentFavoriteOrder = [(_UIFloatingTabBarParser *)parser currentFavoriteOrder];

    dragController = [(_UIFloatingTabBar *)self dragController];
    [dragController beginEditingWithFavoriteOrder:currentFavoriteOrder excludedItems:v16];
  }

  else
  {
    parser2 = [(_UIFloatingTabBar *)self parser];
    sourceTabIdentifiers = [(_UIFloatingTabBarParser *)parser2 sourceTabIdentifiers];

    dragController2 = [(_UIFloatingTabBar *)self dragController];
    pendingFavoriteOrder = [dragController2 pendingFavoriteOrder];

    dragController3 = [(_UIFloatingTabBar *)self dragController];
    dragController = [dragController3 excludedItems];

    parser3 = [(_UIFloatingTabBar *)self parser];
    v16 = [(_UIFloatingTabBarParser *)parser3 validateFavoriteOrder:sourceTabIdentifiers];

    parser4 = [(_UIFloatingTabBar *)self parser];
    currentFavoriteOrder = [(_UIFloatingTabBarParser *)parser4 validateFavoriteOrder:pendingFavoriteOrder];

    [customizationStore saveFavoriteOrderCustomization:currentFavoriteOrder defaultIdentifiers:v16 excludedIdentifiers:dragController];
    dragController4 = [(_UIFloatingTabBar *)self dragController];
    [dragController4 endEditing];

    if ([customizationStore hasFavoriteOrderCustomization])
    {
      v30 = [currentFavoriteOrder count];
      parser5 = [(_UIFloatingTabBar *)self parser];
      fixedItems = [(_UIFloatingTabBarParser *)parser5 fixedItems];
      v22 = [fixedItems count];
      parser6 = [(_UIFloatingTabBar *)self parser];
      pinnedItems = [(_UIFloatingTabBarParser *)parser6 pinnedItems];
      v25 = [pinnedItems count];

      v26 = +[_UITabAnalytics sharedInstance];
      tabModel3 = [(_UIFloatingTabBar *)self tabModel];
      tabBarController = [tabModel3 tabBarController];
      if (v26)
      {
        ++v26[2];
        v26[3] = v22 + v30 + v25;
        [(_UITabAnalytics *)v26 _sendCustomizationEvent:tabBarController];
      }
    }

    [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
  }
}

- (void)updateEditingStateIfNeeded
{
  if ((*&self->_needsUpdate & 0x40) != 0)
  {
    isEditing = [(_UIFloatingTabBar *)self isEditing];

    [(_UIFloatingTabBar *)self setEditing:isEditing animated:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if (self->_editing != editing || (*&self->_needsUpdate & 0x40) != 0)
  {
    self->_editing = editing;
    window = [(UIView *)self window];

    needsUpdate = self->_needsUpdate;
    if (window)
    {
      *&self->_needsUpdate = needsUpdate & 0xBF;
      [(_UIFloatingTabBar *)self _setNeedsPaginationUpdate];
      [(_UIFloatingTabBar *)self _updatePaginationIfNeeded];
      _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
      collectionView = [(_UIFloatingTabBar *)self collectionView];
      [collectionView setEditing:editingCopy];

      pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
      [pinnedItemsView setEditing:editingCopy];

      recentItem = [(_UIFloatingTabBar *)self recentItem];

      if (recentItem)
      {
        [(_UIFloatingTabBar *)self _updateDataSourceFromParserAnimated:animatedCopy];
      }

      else
      {
        collectionView2 = [(_UIFloatingTabBar *)self collectionView];
        collectionViewLayout = [collectionView2 collectionViewLayout];
        [collectionViewLayout invalidateLayout];

        [(UIView *)self setNeedsLayout];
        [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41___UIFloatingTabBar_setEditing_animated___block_invoke;
      v17[3] = &unk_1E70F8A10;
      v17[4] = self;
      v18 = editingCopy;
      v19 = animatedCopy;
      v15 = _Block_copy(v17);
      v16 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.5];
      if (animatedCopy)
      {
        [UIView _animateUsingSpringBehavior:v16 tracking:0 animations:v15 completion:0];
      }

      else
      {
        [UIView performWithoutAnimation:v15];
      }

      [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:animatedCopy completion:0];
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
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  isEditable = [tabModel isEditable];

  if (isEditable && !self->_editModeGestureRecognizer)
  {
    v5 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:sel__handleLongPressGestureRecognizer_];
    editModeGestureRecognizer = self->_editModeGestureRecognizer;
    self->_editModeGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)self->_editModeGestureRecognizer setMinimumPressDuration:0.5];
    [(UIGestureRecognizer *)self->_editModeGestureRecognizer setDelegate:self];
    contentView = [(_UIFloatingTabBar *)self contentView];
    [contentView addGestureRecognizer:self->_editModeGestureRecognizer];
  }

  v8 = self->_editModeGestureRecognizer;

  [(UIGestureRecognizer *)v8 setEnabled:isEditable];
}

- (void)_handleLongPressGestureRecognizer:(id)recognizer
{
  selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setEnabled:0];

  selectionGestureRecognizer2 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  [selectionGestureRecognizer2 setEnabled:1];

  tabModel = [(_UIFloatingTabBar *)self tabModel];
  [tabModel setEditing:1];
}

- (void)setShowRecentItem:(BOOL)item
{
  if (self->_showRecentItem != item)
  {
    self->_showRecentItem = item;
    [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
  }
}

- (void)_validateRecentItemForParser:(id)parser
{
  parserCopy = parser;
  recentItem = [(_UIFloatingTabBar *)self recentItem];
  tabForSelection = [recentItem tabForSelection];

  _tabModel = [tabForSelection _tabModel];
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  if (_tabModel != tabModel || ([(_UIFloatingTabBarParser *)parserCopy containsTab:tabForSelection]& 1) != 0 || [(_UIFloatingTabBarParser *)parserCopy containsDescendantOfTab:tabForSelection])
  {

LABEL_5:
    recentItem = self->_recentItem;
    self->_recentItem = 0;

    goto LABEL_6;
  }

  isHidden = [tabForSelection isHidden];

  if (isHidden)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (id)_contentTabForRecentTab:(id)tab
{
  tabCopy = tab;
  _parentGroup = [tabCopy _parentGroup];

  if (_parentGroup)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = tabCopy;
    if (v6)
    {
      v7 = v6;
      do
      {
        [v5 addObject:v7];
        _parentGroup2 = [v7 _parentGroup];

        v7 = _parentGroup2;
      }

      while (_parentGroup2);
    }

    v9 = [v5 indexOfObjectWithOptions:2 passingTest:&__block_literal_global_124_4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 objectAtIndex:v9];
    }
  }

  return 0;
}

- (void)_tabModelDidReload:(id)reload
{
  reloadCopy = reload;
  _isEffectivelyEmpty = [(_UIFloatingTabBar *)self _isEffectivelyEmpty];
  tabItems = [reloadCopy tabItems];

  v7 = [tabItems count] != 0;
  [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:v7 & ~_isEffectivelyEmpty];

  [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:v7 & ~_isEffectivelyEmpty completion:0];
}

- (void)_tabModel:(id)model tabContentDidChange:(id)change
{
  v21[1] = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v6 = [(_UIFloatingTabBar *)self _indexPathForTabItem:changeCopy];
  v7 = [changeCopy _tabPlacement] - 4;
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
      pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
      [pinnedItemsView reloadItemViewForTab:changeCopy];
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
      dataSource = [(_UIFloatingTabBar *)self dataSource];
      snapshot = [dataSource snapshot];

      itemIdentifiers = [(NSDiffableDataSourceSnapshot *)snapshot itemIdentifiers];
      pinnedItemsView = [itemIdentifiers objectAtIndex:v11];

      v21[0] = pinnedItemsView;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [(NSDiffableDataSourceSnapshot *)snapshot reconfigureItemsWithIdentifiers:v15];

      lastSnapshot = self->_lastSnapshot;
      self->_lastSnapshot = snapshot;
      v17 = snapshot;

      dataSource2 = [(_UIFloatingTabBar *)self dataSource];
      [dataSource2 applySnapshot:v17 animatingDifferences:1];
    }

    goto LABEL_12;
  }

  [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:1];
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  selectedLeaf = [tabModel selectedLeaf];

  if (selectedLeaf == changeCopy)
  {
    [(_UIFloatingTabBar *)self _updateSelectedLeaf:changeCopy previousElement:changeCopy];
  }

LABEL_13:
}

- (void)_tabModel:(id)model visibilityDidChangeForTab:(id)tab
{
  tabCopy = tab;
  v6 = [(_UIFloatingTabBar *)self _indexPathForTabItem:tabCopy];
  v7 = v6 != 0;

  tabModel = [(_UIFloatingTabBar *)self tabModel];
  v9 = [tabModel isTabHidden:tabCopy];

  if (((v7 ^ v9) & 1) == 0)
  {
    [(_UIFloatingTabBar *)self _invalidateDataSourceAnimated:1];
    if ((v9 & 1) == 0)
    {

      [(_UIFloatingTabBar *)self _refreshSelectedLeaf];
    }
  }
}

- (void)_tabModel:(id)model favoriteOrderDidReset:(id)reset
{
  v5 = [(_UIFloatingTabBar *)self parser:model];
  sourceTabIdentifiers = [(_UIFloatingTabBarParser *)v5 sourceTabIdentifiers];

  dragController = [(_UIFloatingTabBar *)self dragController];
  [dragController resetFavoriteOrderWithDefaultOrder:sourceTabIdentifiers];

  [(_UIFloatingTabBar *)self _invalidateFavoriteOrderAnimated:1];
}

- (void)_refreshSelectedLeaf
{
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  selectedLeaf = [tabModel selectedLeaf];

  [(_UIFloatingTabBar *)self _updateSelectedLeaf:selectedLeaf previousElement:selectedLeaf];
}

- (void)_updateSelectedLeaf:(id)leaf previousElement:(id)element
{
  leafCopy = leaf;
  elementCopy = element;
  window = [(UIView *)self window];
  if (window)
  {
    v8 = !self->_isInTransitionAnimation;
  }

  else
  {
    v8 = 0;
  }

  showRecentItem = [(_UIFloatingTabBar *)self showRecentItem];
  recentItem = [(_UIFloatingTabBar *)self recentItem];
  v11 = [(_UIFloatingTabBar *)self _indexPathForTabItem:leafCopy];
  if (showRecentItem)
  {
    parser = [(_UIFloatingTabBar *)self parser];
    itemIdentifiers = [(_UIFloatingTabBarParser *)parser itemIdentifiers];
    identifier = [leafCopy identifier];
    if (([itemIdentifiers containsObject:identifier] & 1) != 0 || v11 && !-[_UIFloatingTabBar _isRecentItemIndexPath:](self, "_isRecentItemIndexPath:", v11))
    {
    }

    else
    {
      tabForSelection = [recentItem tabForSelection];

      if (tabForSelection != leafCopy)
      {
        if (leafCopy && ([leafCopy isHidden] & 1) == 0)
        {
          v16 = [[_UIFloatingTabBarListItem alloc] initWithTab:leafCopy];
          v21 = [(_UIFloatingTabBar *)self _contentTabForRecentTab:leafCopy];
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

    if (recentItem)
    {
      tabForSelection2 = [recentItem tabForSelection];
      v18 = [tabForSelection2 _isAncestorOfTab:leafCopy];

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

  else if (recentItem)
  {
    goto LABEL_17;
  }

  if (elementCopy != leafCopy)
  {
    [(_UIFloatingTabBar *)self _scrollToSelectedItemAnimated:v8];
    [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:v8 completion:0];
  }

LABEL_21:
  window2 = [(UIView *)self window];

  if (!window2)
  {
    *&self->_needsUpdate |= 0x20u;
  }
}

- (id)resolvedPopoverPresentationControllerSourceItemForTab:(id)tab
{
  v4 = [(_UIFloatingTabBar *)self _indexPathForTabItem:tab];
  if (v4)
  {
    v5 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:v4];
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    targetPage = [collectionView targetPage];

    if ([v4 section] == 3)
    {
      pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
      v9 = [pinnedItemsView itemViewForItemAtIndex:{objc_msgSend(v4, "item")}];

      goto LABEL_16;
    }

    if (v5 == targetPage)
    {
      v10 = [(_UIFloatingTabBar *)self _viewForItemAtIndexPath:v4];
      goto LABEL_15;
    }

    _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
    v12 = v5 > targetPage;
    if (!_shouldReverseLayoutDirection)
    {
      v12 = v5 < targetPage;
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

- (void)_updateSelectedItemAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  if (_indexPathForSelectedItem)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewFrameAnimated:animatedCopy completion:completionCopy];
    [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:animatedCopy];
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }
}

- (void)_setSelectedItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  itemCopy = item;
  completionCopy = completion;
  if ([(_UITabModel *)self->_tabModel shouldSelectTab:itemCopy])
  {
    selectedItem = [(_UITabModel *)self->_tabModel selectedItem];
    v10 = itemCopy;
    v11 = v10;
    if (selectedItem == v10)
    {

      [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
    }

    else
    {
      if (!v10 || !selectedItem)
      {

        [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
LABEL_11:
        [(_UIFloatingTabBar *)self _updateSelectedItemAnimated:animatedCopy completion:completionCopy];
        goto LABEL_12;
      }

      v12 = [selectedItem isEqual:v10];

      [(_UITabModel *)self->_tabModel selectTab:v11 notifyOnReselection:1];
      if ((v12 & 1) == 0)
      {
        goto LABEL_11;
      }
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1, 0);
  }

LABEL_12:
}

- (void)_selectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2072 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  if ([pathCopy section] != 3)
  {
    dataSource = [(_UIFloatingTabBar *)self dataSource];
    v7 = [dataSource itemIdentifierForIndexPath:pathCopy];

    tabForSelection = [v7 tabForSelection];
    tabForSelection2 = [v7 tabForSelection];
    _isElement = [tabForSelection2 _isElement];

    if (_isElement)
    {
      objc_initWeak(&location, self);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44___UIFloatingTabBar__selectItemAtIndexPath___block_invoke;
      v14[3] = &unk_1E7105398;
      objc_copyWeak(&v15, &location);
      [(_UIFloatingTabBar *)self _setSelectedItem:tabForSelection animated:1 completion:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2100 description:@"Non-UITabElement tabs are currently not supported"];
    }

    goto LABEL_10;
  }

  pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
  v7 = [pinnedItemsView tabForSelectionAtItemIndex:{objc_msgSend(pathCopy, "item")}];

  if (![v7 _isElement])
  {
    tabForSelection = [MEMORY[0x1E696AAA8] currentHandler];
    [tabForSelection handleFailureInMethod:a2 object:self file:@"_UIFloatingTabBar.m" lineNumber:2079 description:@"Non-UITabElement tabs are currently not supported"];
LABEL_10:

    goto LABEL_11;
  }

  [(_UIFloatingTabBar *)self _setSelectedItem:v7 animated:1 completion:0];
LABEL_11:
}

- (BOOL)_isEffectivelyEmpty
{
  parser = [(_UIFloatingTabBar *)self parser];
  itemIdentifiers = [(_UIFloatingTabBarParser *)parser itemIdentifiers];
  v4 = [itemIdentifiers count] == 0;

  return v4;
}

- (id)_indexPathForTabItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    v12 = 0;
    goto LABEL_10;
  }

  lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
  itemIdentifiers = [lastSnapshot itemIdentifiers];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42___UIFloatingTabBar__indexPathForTabItem___block_invoke;
  v15[3] = &unk_1E70F8890;
  v7 = itemCopy;
  v16 = v7;
  v8 = [itemIdentifiers indexOfObjectPassingTest:v15];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    v10 = [pinnedItemsView itemIndexForTab:v7];

    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:3];
      goto LABEL_9;
    }

    _parentGroup = [v7 _parentGroup];
    v12 = [(_UIFloatingTabBar *)self _indexPathForTabItem:_parentGroup];
  }

  else
  {
    _parentGroup = [itemIdentifiers objectAtIndex:v8];
    dataSource = [(_UIFloatingTabBar *)self dataSource];
    v12 = [dataSource indexPathForItemIdentifier:_parentGroup];
  }

LABEL_9:
LABEL_10:

  return v12;
}

- (id)_indexPathForSelectedItem
{
  tabModel = [(_UIFloatingTabBar *)self tabModel];
  selectedLeaf = [tabModel selectedLeaf];

  if (!selectedLeaf || ([selectedLeaf _isMoreTab] & 1) != 0 || -[_UIFloatingTabBar _isEffectivelyEmpty](self, "_isEffectivelyEmpty") && (-[_UIFloatingTabBar recentItem](self, "recentItem"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_UIFloatingTabBar *)self _indexPathForTabItem:selectedLeaf];
  }

  return v5;
}

- (CGRect)_itemFrameForItemAtIndexPath:(id)path inCoordinateSpace:(id)space
{
  spaceCopy = space;
  pathCopy = path;
  if ([pathCopy section] == 3)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    item = [pathCopy item];

    [pinnedItemsView itemFrameForItemAtIndex:item];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
    v19 = pinnedItemsView2;
    v20 = v11;
    v21 = v13;
    v22 = v15;
    v23 = v17;
  }

  else
  {
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    v19 = [collectionView cellForItemAtIndexPath:pathCopy];

    if (!v19)
    {
      v26 = *MEMORY[0x1E695F050];
      v28 = *(MEMORY[0x1E695F050] + 8);
      v30 = *(MEMORY[0x1E695F050] + 16);
      v32 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_6;
    }

    [v19 bounds];
    pinnedItemsView2 = v19;
  }

  [pinnedItemsView2 convertRect:spaceCopy toCoordinateSpace:{v20, v21, v22, v23}];
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

- (void)_updateSelectionViewFrameAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  if (_indexPathForSelectedItem)
  {
    v8 = _indexPathForSelectedItem;
    highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];

    if (highlightedIndexPath)
    {
      highlightedIndexPath2 = [(_UIFloatingTabBar *)self highlightedIndexPath];

      v8 = highlightedIndexPath2;
    }

    [(_UIFloatingTabBar *)self setSelectionViewIndexPath:v8];
    selectionContainerView = [(_UIFloatingTabBar *)self selectionContainerView];
    [(_UIFloatingTabBar *)self _itemFrameForItemAtIndexPath:v8 inCoordinateSpace:selectionContainerView];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if (highlightedIndexPath)
    {
      selectionContainerView2 = [(_UIFloatingTabBar *)self selectionContainerView];
      targetPosition = [selectionContainerView2 targetPosition];

      if (targetPosition)
      {
        contentView = [(_UIFloatingTabBar *)self contentView];
        [(_UIFloatingTabBar *)self highlightAnchorPoint];
        v90 = v23;
        selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
        [selectionGestureRecognizer locationInView:contentView];
        v91 = v25;

        v107.origin.x = v13;
        v107.origin.y = v15;
        v107.size.width = v17;
        v107.size.height = v19;
        Width = CGRectGetWidth(v107);
        collectionView = [(_UIFloatingTabBar *)self collectionView];
        [collectionView bounds];
        v92 = v17;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
        collectionView2 = [(_UIFloatingTabBar *)self collectionView];
        [contentView convertRect:collectionView2 fromView:{v29, v31, v33, v35}];
        v88 = v38;
        v89 = v37;
        r1 = v39;
        v41 = v40;

        pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
        [pinnedItemsView bounds];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;
        pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
        [contentView convertRect:pinnedItemsView2 fromView:{v44, v46, v48, v50}];
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
      collectionView3 = [(_UIFloatingTabBar *)self collectionView];
      [collectionView3 bounds];
      v67 = CGRectGetMidY(v113);

      if (MidY != v67)
      {
        [(_UIFloatingTabBar *)self _setNeedsSelectionAlphaUpdate];
        [(_UIFloatingTabBar *)self _setNeedsSelectionFrameUpdate];
LABEL_24:

        goto LABEL_25;
      }
    }

    v68 = highlightedIndexPath != 0;
    v69 = animatedCopy & ~self->_isInTransitionAnimation;
    traitCollection = [(UIView *)self traitCollection];
    v71 = [traitCollection valueForNSIntegerTrait:objc_opt_class()];

    traitCollection2 = [(UIView *)self traitCollection];
    v73 = [traitCollection2 valueForNSIntegerTrait:objc_opt_class()] != 0;

    selectionContainerView3 = [(_UIFloatingTabBar *)self selectionContainerView];
    targetPosition2 = [selectionContainerView3 targetPosition];
    v76 = targetPosition2 == 0;

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
      selectionContainerView4 = [(_UIFloatingTabBar *)self selectionContainerView];
      [selectionContainerView4 selectionViewFrame];
      v116.origin.x = v13;
      v116.origin.y = v15;
      v116.size.width = v17;
      v116.size.height = v19;
      v80 = CGRectEqualToRect(v114, v116);

      if (!v80)
      {
        traitOverrides = [(UIView *)self traitOverrides];
        [traitOverrides setNSIntegerValue:1 forTrait:objc_opt_class()];
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
    v100 = completionCopy;
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
  [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:animatedCopy];
LABEL_25:
}

- (void)_updateSelectionViewHighlightState
{
  selectionContainerView = [(_UIFloatingTabBar *)self selectionContainerView];
  targetPosition = [selectionContainerView targetPosition];

  if (targetPosition)
  {
    traitCollection = [(UIView *)self traitCollection];
    v6 = objc_opt_self();
    v7 = [traitCollection valueForNSIntegerTrait:v6];

    highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];

    [targetPosition value];
    v10 = v9;
    [targetPosition presentationValue];
    if (v7 == 1 && !highlightedIndexPath && vabdd_f64(v10, v11) < 8.0)
    {
      selectionFrameGroupCompletion = [(_UIFloatingTabBar *)self selectionFrameGroupCompletion];
      [selectionFrameGroupCompletion increment];
      v13 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.35];
      v16 = selectionFrameGroupCompletion;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __55___UIFloatingTabBar__updateSelectionViewHighlightState__block_invoke;
      v17[3] = &unk_1E70F3590;
      v17[4] = self;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __55___UIFloatingTabBar__updateSelectionViewHighlightState__block_invoke_2;
      v15[3] = &unk_1E70F3FD8;
      v14 = selectionFrameGroupCompletion;
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
  dragController = [(_UIFloatingTabBar *)self dragController];
  hasActiveDrag = [dragController hasActiveDrag];

  return hasActiveDrag;
}

- (double)baselineOffsetFromTop
{
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [_currentPlatformMetrics backgroundInsets];
  v5 = v4;
  [_currentPlatformMetrics titleMargins];
  v7 = v5 + v6 + self->_minimumItemBaselineFromTop;

  return v7;
}

- (int64_t)_indexInDataSourceForItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  if ([pathCopy section] >= 1)
  {
    lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
    item += [lastSnapshot numberOfItemsInSection:&unk_1EFE33DA8];
  }

  if ([pathCopy section] > 1)
  {
    lastSnapshot2 = [(_UIFloatingTabBar *)self lastSnapshot];
    item += [lastSnapshot2 numberOfItemsInSection:&unk_1EFE33DC0];
  }

  return item;
}

- (id)_indexPathForItemAtDataSourceIndex:(int64_t)index
{
  lastSnapshot = [(_UIFloatingTabBar *)self lastSnapshot];
  itemIdentifiers = [lastSnapshot itemIdentifiers];
  v7 = [itemIdentifiers count];

  if (v7 <= index)
  {
    v12 = 0;
  }

  else
  {
    lastSnapshot2 = [(_UIFloatingTabBar *)self lastSnapshot];
    itemIdentifiers2 = [lastSnapshot2 itemIdentifiers];
    v10 = [itemIdentifiers2 objectAtIndex:index];

    dataSource = [(_UIFloatingTabBar *)self dataSource];
    v12 = [dataSource indexPathForItemIdentifier:v10];
  }

  return v12;
}

- (int64_t)_pageIndexForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(_UIFloatingTabBar *)self _indexInDataSourceForItemAtIndexPath:pathCopy];
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  pages = [collectionView pages];
  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  v9 = [pages objectAtIndexedSubscript:{objc_msgSend(collectionView2, "targetPage")}];
  range = [v9 range];
  v12 = v11;

  if (v5 < range || v5 - range >= v12)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0x7FFFFFFFFFFFFFFFLL;
    collectionView3 = [(_UIFloatingTabBar *)self collectionView];
    pages2 = [collectionView3 pages];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50___UIFloatingTabBar__pageIndexForItemAtIndexPath___block_invoke;
    v18[3] = &unk_1E711B058;
    v18[4] = &v19;
    v18[5] = v5;
    [pages2 enumerateObjectsUsingBlock:v18];

    targetPage = v20[3];
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    collectionView4 = [(_UIFloatingTabBar *)self collectionView];
    targetPage = [collectionView4 targetPage];
  }

  return targetPage;
}

- (void)_scrollToSelectedItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  v5 = [_indexPathForSelectedItem section] == 3;
  v6 = _indexPathForSelectedItem;
  if (!v5)
  {
    if (*&self->_needsUpdate)
    {
      [(_UIFloatingTabBar *)self _setNeedsScrollToSelectedItem];
    }

    else
    {
      if (_indexPathForSelectedItem)
      {
        v7 = [(_UIFloatingTabBar *)self _pageIndexForItemAtIndexPath:_indexPathForSelectedItem];
        v6 = _indexPathForSelectedItem;
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_9;
        }

        collectionView = [(_UIFloatingTabBar *)self collectionView];
        [collectionView setTargetPage:v7];

        collectionView2 = [(_UIFloatingTabBar *)self collectionView];
        [collectionView2 scrollToTargetPageAnimated:animatedCopy];
      }

      [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:animatedCopy];
    }

    v6 = _indexPathForSelectedItem;
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
    collectionView = [(_UIFloatingTabBar *)self collectionView];
    [collectionView scrollToTargetPageAnimated:0];

    *&self->_needsUpdate &= ~0x10u;
  }
}

- (void)_updateSelectionViewVisibilityAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _indexPathForSelectedItem = [(_UIFloatingTabBar *)self _indexPathForSelectedItem];
  v6 = [(_UIFloatingTabBar *)self _indexInDataSourceForItemAtIndexPath:_indexPathForSelectedItem];
  if (_indexPathForSelectedItem)
  {
    v7 = v6;
    if ([_indexPathForSelectedItem section] == 3)
    {
      v8 = 1;
    }

    else
    {
      collectionView = [(_UIFloatingTabBar *)self collectionView];
      pages = [collectionView pages];
      collectionView2 = [(_UIFloatingTabBar *)self collectionView];
      v12 = [pages objectAtIndexedSubscript:{objc_msgSend(collectionView2, "targetPage")}];
      range = [v12 range];
      v15 = v14;

      v8 = v7 >= range && v7 - range < v15;
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
  if (animatedCopy)
  {
    [(_UIFloatingTabBar *)self _animateSelection:v17 completion:0];
  }

  else
  {
    (*(v17 + 2))(v17);
  }

  *&self->_needsUpdate &= ~4u;
}

- (void)setSelectionViewIndexPath:(id)path
{
  pathCopy = path;
  v6 = self->_selectionViewIndexPath;
  v7 = pathCopy;
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

  objc_storeStrong(&self->_selectionViewIndexPath, path);
  v9 = v10;
  if (v10)
  {
    [(_UIFloatingTabBar *)self _setHasSelectionHighlight:1 forItemAtIndexPath:v10];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)_animateSelection:(id)selection completion:(id)completion
{
  completionCopy = completion;
  selectionCopy = selection;
  v8 = _UIFlexiGlassEnabled();
  highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];

  if (v8)
  {
    if (highlightedIndexPath)
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

  else if (highlightedIndexPath)
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
  [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:selectionCopy completion:completionCopy];
}

- (void)_animateSelectionBounds:(id)bounds completion:(id)completion
{
  completionCopy = completion;
  boundsCopy = bounds;
  v8 = _UIFlexiGlassEnabled();
  highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];

  if (v8)
  {
    v10 = 0.85;
    if (!highlightedIndexPath)
    {
      v11 = 0.6;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (highlightedIndexPath)
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
  [UIView _animateUsingSpringBehavior:v12 tracking:0 animations:boundsCopy completion:completionCopy];
}

- (void)_observeScrollViewDidScroll:(id)scroll
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
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  indexPathsForVisibleItems = [collectionView indexPathsForVisibleItems];

  v5 = [indexPathsForVisibleItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(indexPathsForVisibleItems);
        }

        [(_UIFloatingTabBar *)self _updateContentAlphaForItemAtIndexPath:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [indexPathsForVisibleItems countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_updateContentAlphaForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIFloatingTabBar *)self collectionView];
  v5 = [collectionView layoutAttributesForItemAtIndexPath:pathCopy];

  LOBYTE(collectionView) = [(UIView *)self _shouldReverseLayoutDirection];
  collectionView2 = [(_UIFloatingTabBar *)self collectionView];
  [v5 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  collectionViewContainer = [(_UIFloatingTabBar *)self collectionViewContainer];
  [collectionView2 convertRect:collectionViewContainer toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (collectionView)
  {
    pinnedItemsView = [(_UIFloatingTabBar *)self pinnedItemsView];
    [pinnedItemsView frame];
    MaxX = CGRectGetMaxX(v41);

    if ([(_UIFloatingTabBar *)self showsSidebarButton])
    {
      [(_UIFloatingTabBar *)self sidebarButton];
    }

    else
    {
      [(_UIFloatingTabBar *)self rightArrowButton];
    }
    pinnedItemsView2 = ;
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

    pinnedItemsView2 = [(_UIFloatingTabBar *)self pinnedItemsView];
  }

  v28 = pinnedItemsView2;
  [pinnedItemsView2 frame];
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
  _currentPlatformMetrics = [(_UIFloatingTabBar *)self _currentPlatformMetrics];
  [_currentPlatformMetrics contentAlphaDistanceThreshold];
  v34 = v33;

  v46.origin.x = v17;
  v46.origin.y = v19;
  v46.size.width = v21;
  v46.size.height = v23;
  v35 = fmax(fmin(1.0 - fmax(v30, v31) / fmin(v34, CGRectGetWidth(v46)), 1.0), 0.0);
  collectionView3 = [(_UIFloatingTabBar *)self collectionView];
  v37 = [collectionView3 cellForItemAtIndexPath:pathCopy];

  contentView = [v37 contentView];
  [contentView setAlpha:v35];
}

- (void)scrollViewDidScroll:(id)scroll
{
  selectionGestureRecognizer = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
  state = [selectionGestureRecognizer state];

  if (state)
  {
    selectionGestureRecognizer2 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
    [selectionGestureRecognizer2 setEnabled:0];

    selectionGestureRecognizer3 = [(_UIFloatingTabBar *)self selectionGestureRecognizer];
    [selectionGestureRecognizer3 setEnabled:1];
  }
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49___UIFloatingTabBar_scrollViewWillBeginDragging___block_invoke;
  v3[3] = &unk_1E70F3590;
  v3[4] = self;
  [(_UIFloatingTabBar *)self _animateSelection:v3 completion:0];
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = [(_UIFloatingTabBar *)self collectionView:dragging];
  [v7 pageProgressForContentOffset:1 clamped:{offset->x, offset->y}];
  v9 = v8;

  collectionView = [(_UIFloatingTabBar *)self collectionView];
  [collectionView setTargetPage:llround(v9)];
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(_UIFloatingTabBar *)self _updateSelectionViewVisibilityAnimated:1];
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  pathCopy = path;
  cellCopy = cell;
  highlightedIndexPath = [(_UIFloatingTabBar *)self highlightedIndexPath];
  [cellCopy setHighlighted:{objc_msgSend(pathCopy, "isEqual:", highlightedIndexPath)}];

  selectionViewIndexPath = [(_UIFloatingTabBar *)self selectionViewIndexPath];
  v10 = [pathCopy isEqual:selectionViewIndexPath];

  [cellCopy setHasSelectionHighlight:v10];
}

- (id)_currentPlatformMetrics
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIFloatingTabBarGetPlatformMetrics([traitCollection userInterfaceIdiom]);

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
    selfCopy = self;
    if (v3)
    {
      v7.receiver = v3;
      v7.super_class = _UIFloatingTabBarCustomizationProxy;
      v5 = [(UIView *)&v7 init];
      v3 = v5;
      if (v5)
      {
        objc_storeWeak(v5 + 1, selfCopy);
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