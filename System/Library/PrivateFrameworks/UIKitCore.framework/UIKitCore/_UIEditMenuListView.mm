@interface _UIEditMenuListView
+ (double)_resolvedCornerRadiusForRect:(CGRect)rect userInterfaceIdiom:(int64_t)idiom axis:(int64_t)axis;
+ (double)minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)axis traitCollection:(id)collection;
- (BOOL)_canSelectItemAtIndexPath:(id)path;
- (BOOL)_hasDisplayedMenu;
- (BOOL)_hasPasteAuthentication;
- (BOOL)_isPaginationDirtyForContainerSize:(CGSize)size;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)hasShadow;
- (BOOL)scrubbingEnabled;
- (CGSize)_intrinsicHorizontalContentSizeForTraitCollection:(id)collection containerSize:(CGSize)size;
- (CGSize)_intrinsicVerticalContentSizeForContainer:(id)container containerSize:(CGSize)size;
- (CGSize)_titleViewSizeForFittingWidth:(double)width;
- (CGSize)_verticalMenuContentSizeFittingContainerSize:(CGSize)size traits:(id)traits;
- (CGSize)arrowSizeForDirection:(int64_t)direction;
- (CGSize)intrinsicContentSizeForContainer:(id)container containerSize:(CGSize)size;
- (_UIEditMenuListView)initWithDelegate:(id)delegate menu:(id)menu titleView:(id)view preferredElementDisplayMode:(unint64_t)mode;
- (_UIEditMenuListViewDelegate)delegate;
- (double)_collectionViewWidthForPageProgress:(double)progress;
- (double)_minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)axis;
- (double)_resolvedCornerRadiusForRect:(CGRect)rect;
- (id)_indexPathForGestureRecognizer:(id)recognizer;
- (id)backgroundMaterialGroupName;
- (id)collectionViewLayout;
- (id)effectiveBackgroundView;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_contentSizeCategoryDidChange;
- (void)_createDataSource;
- (void)_createViewHierarchy;
- (void)_didTapLeftDirectionalButton:(id)button;
- (void)_didTapRightDirectionalButton:(id)button;
- (void)_handleHoverGesture:(id)gesture;
- (void)_handlePanGesture:(id)gesture;
- (void)_handleSelectionGesture:(id)gesture;
- (void)_highlightItemAtIndexPath:(id)path;
- (void)_performHandoffFromSourceView:(id)view;
- (void)_playFeedbackForHandoff;
- (void)_reloadMenuAnimated:(BOOL)animated;
- (void)_selectItemAtIndexPath:(id)path;
- (void)_unhighlightCurrentlyHighlightedItem;
- (void)_updateArrowEdgeInsets;
- (void)_updateHighlightState;
- (void)_updateMaskingLayerWithFrame:(CGRect)frame;
- (void)_updatePaginationForSnapshot:(id)snapshot containerSize:(CGSize)size;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)layoutSubviews;
- (void)reloadWithMenu:(id)menu titleView:(id)view animated:(BOOL)animated;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset;
- (void)setArrowDirection:(int64_t)direction;
- (void)setAxis:(int64_t)axis;
- (void)setBounds:(CGRect)bounds;
- (void)setScrubbingEnabled:(BOOL)enabled;
@end

@implementation _UIEditMenuListView

+ (double)minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)axis traitCollection:(id)collection
{
  collectionCopy = collection;
  v7 = _UIEditMenuGetPlatformMetrics([collectionCopy userInterfaceIdiom]);
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  [self _resolvedCornerRadiusForRect:userInterfaceIdiom userInterfaceIdiom:axis axis:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = v9 * 1.528665;
  v11 = collectionCopy;
  v12 = _UIEditMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = v11;
  v14 = _UIEditMenuGetPlatformMetrics([v13 userInterfaceIdiom]);
  menuItemTitleFont = [v14 menuItemTitleFont];
  v16 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v13];

  [v12 arrowSize];
  v18 = v17;
  v19 = v13;
  v20 = _UIEditMenuGetPlatformMetrics([v19 userInterfaceIdiom]);
  menuItemTitleFont2 = [v20 menuItemTitleFont];
  v22 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v19];

  [v22 _scaledValueForValue:0 useLanguageAwareScaling:v18];
  v24 = v23;
  [v19 displayScale];
  v26 = v25;

  UIRoundToScale(v24, fmax(v26, 1.0));
  v28 = v27;

  [v12 arrowSize];
  v30 = v29;
  v31 = v19;
  v32 = _UIEditMenuGetPlatformMetrics([v31 userInterfaceIdiom]);
  menuItemTitleFont3 = [v32 menuItemTitleFont];
  v34 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v31];

  [v34 _scaledValueForValue:0 useLanguageAwareScaling:v30];
  v36 = v35;
  [v31 displayScale];
  v38 = v37;

  UIRoundToScale(v36, fmax(v38, 1.0));
  v39 = v31;
  v40 = _UIEditMenuGetPlatformMetrics([v39 userInterfaceIdiom]);
  [v40 arrowSideRadius];
  v42 = v41;
  v43 = v39;
  v44 = _UIEditMenuGetPlatformMetrics([v43 userInterfaceIdiom]);
  menuItemTitleFont4 = [v44 menuItemTitleFont];
  v46 = [menuItemTitleFont4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v43];

  [v46 _scaledValueForValue:0 useLanguageAwareScaling:v42];
  v48 = v47;
  [v43 displayScale];
  v50 = v49;

  UIRoundToScale(v48, fmax(v50, 1.0));
  v52 = v51;

  return ceil(v28 * 0.5 + v10 + v52);
}

- (_UIEditMenuListView)initWithDelegate:(id)delegate menu:(id)menu titleView:(id)view preferredElementDisplayMode:(unint64_t)mode
{
  delegateCopy = delegate;
  menuCopy = menu;
  viewCopy = view;
  v17.receiver = self;
  v17.super_class = _UIEditMenuListView;
  v14 = [(UIView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    if (!(menuCopy | viewCopy))
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v14 file:@"_UIEditMenuListView.m" lineNumber:149 description:@"Cannot present an edit menu without a valid menu"];
    }

    objc_storeWeak(&v14->_delegate, delegateCopy);
    objc_storeStrong(&v14->_displayedMenu, menu);
    objc_storeStrong(&v14->_titleView, view);
    v14->_preferredElementDisplayMode = mode;
    v14->_arrowDirection = 2;
    v14->_largestPageWidth = 0.0;
    [(_UIEditMenuListView *)v14 _createViewHierarchy];
    [(_UIEditMenuListView *)v14 _createDataSource];
    [(UIView *)v14 _setDisableDictationTouchCancellation:1];
  }

  return v14;
}

- (void)reloadWithMenu:(id)menu titleView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  menuCopy = menu;
  viewCopy = view;
  titleView = self->_titleView;
  if (titleView)
  {
    [(UIView *)titleView removeFromSuperview];
  }

  displayedMenu = self->_displayedMenu;
  self->_displayedMenu = menuCopy;
  v11 = menuCopy;

  objc_storeStrong(&self->_titleView, view);
  titleContainerView = [(_UIEditMenuListView *)self titleContainerView];
  [titleContainerView setHidden:viewCopy == 0];

  v13 = v11 == 0;
  titleSeparatorView = [(_UIEditMenuListView *)self titleSeparatorView];
  [titleSeparatorView setHidden:v13];

  if (self->_titleView)
  {
    titleContainerView2 = [(_UIEditMenuListView *)self titleContainerView];
    [titleContainerView2 addSubview:viewCopy];
  }

  [(_UIEditMenuListView *)self _reloadMenuAnimated:animatedCopy];
}

- (BOOL)_hasDisplayedMenu
{
  displayedMenu = [(_UIEditMenuListView *)self displayedMenu];
  v3 = ([displayedMenu metadata] >> 24) & 1;

  return v3;
}

- (CGSize)_titleViewSizeForFittingWidth:(double)width
{
  titleView = [(_UIEditMenuListView *)self titleView];
  [titleView systemLayoutSizeFittingSize:{width, 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSizeForContainer:(id)container containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  if ([(_UIEditMenuListView *)self axis])
  {
    [(_UIEditMenuListView *)self _intrinsicVerticalContentSizeForContainer:containerCopy containerSize:width, height];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    traitCollection = [containerCopy traitCollection];

    [(_UIEditMenuListView *)self _intrinsicHorizontalContentSizeForTraitCollection:traitCollection containerSize:width, height];
    v9 = v13;
    v11 = v14;
    containerCopy = traitCollection;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_intrinsicHorizontalContentSizeForTraitCollection:(id)collection containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v10 = _UIEditMenuGetPlatformMetrics([collectionCopy userInterfaceIdiom]);
  [v10 horizontalMenuMaximumWidth];
  v12 = v11;
  if (IsAccessibilityCategory && [v10 prefersHorizontalLayoutForLargeContentSize])
  {
    UIRoundToViewScale(self);
    v12 = v13;
  }

  v14 = fmin(width, v12);
  if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
  {
    v15 = [_UIEditMenuListItem itemWithTitle:@" "];
    dataSource = [(_UIEditMenuListView *)self dataSource];
    snapshot = [dataSource snapshot];
    [v15 setSingleItemMenu:{objc_msgSend(snapshot, "numberOfItems") == 1}];

    [_UIEditMenuListViewCell layoutSizeForItem:v15 traitCollection:collectionCopy containerSize:v14, height];
    v19 = v18;
    if ([(_UIEditMenuListView *)self _isPaginationDirtyForContainerSize:v14, height])
    {
      [(_UIEditMenuListView *)self _updatePaginationForSnapshot:0 containerSize:v14, height];
    }

    leftButton = [(_UIEditMenuListView *)self leftButton];
    [leftButton sizeThatFits:{v14, height}];
    v22 = v21;

    collectionView = [(_UIEditMenuListView *)self collectionView];
    pages = [collectionView pages];
    v25 = [pages count];

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    pages2 = [collectionView2 pages];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __87___UIEditMenuListView__intrinsicHorizontalContentSizeForTraitCollection_containerSize___block_invoke;
    v35[3] = &unk_1E7108DB0;
    v35[6] = v22;
    v35[4] = &v36;
    v35[5] = v25 - 1;
    [pages2 enumerateObjectsUsingBlock:v35];

    v28 = v37[3];
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v28 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  titleView = [(_UIEditMenuListView *)self titleView];

  if (titleView)
  {
    if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
    {
      [(_UIEditMenuListView *)self _titleViewSizeForFittingWidth:fmin(v14, v28)];
      v19 = fmin(height, v19 + v30);
    }

    else
    {
      [(_UIEditMenuListView *)self _titleViewSizeForFittingWidth:v14];
      v28 = v31;
      v19 = v32;
    }
  }

  self->_paginationContainerSize.width = v14;
  self->_paginationContainerSize.height = height;

  v33 = v28;
  v34 = v19;
  result.height = v34;
  result.width = v33;
  return result;
}

- (CGSize)_intrinsicVerticalContentSizeForContainer:(id)container containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  traitCollection = [containerCopy traitCollection];
  v9 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  [v9 verticalMenuMaximumHeight];
  v11 = fmin(height, v10);
  if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
  {
    [(_UIEditMenuListView *)self _verticalMenuContentSizeFittingContainerSize:traitCollection traits:width, v11];
    v13 = 250.0;
    if (v14 > 250.0)
    {
      if ([traitCollection userInterfaceIdiom])
      {
        v15 = 343.0;
      }

      else
      {
        [UIViewController _horizontalContentMarginForView:containerCopy];
        v19 = v18;
        _screen = [containerCopy _screen];
        [_screen _referenceBounds];
        v15 = CGRectGetWidth(v31) - (v19 + v19);
      }

      if (width >= v15)
      {
        v13 = v15;
      }

      else
      {
        v13 = width;
      }

      [(_UIEditMenuListView *)self _verticalMenuContentSizeFittingContainerSize:traitCollection traits:v13, v11];
    }

    v16 = fmin(v12, v11);
    v17 = v13;
  }

  else
  {
    v17 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
    v12 = 0.0;
    v13 = 250.0;
  }

  self->_verticalContentHeight = v12;
  titleView = [(_UIEditMenuListView *)self titleView];

  if (titleView)
  {
    [(_UIEditMenuListView *)self _titleViewSizeForFittingWidth:v13];
    v23 = v22;
    v25 = v24;
    _hasDisplayedMenu = [(_UIEditMenuListView *)self _hasDisplayedMenu];
    v27 = fmin(v11, v16 + v25);
    if (_hasDisplayedMenu)
    {
      v16 = v27;
    }

    else
    {
      v16 = v25;
    }

    if (!_hasDisplayedMenu)
    {
      v17 = v23;
    }
  }

  v28 = v17;
  v29 = v16;
  result.height = v29;
  result.width = v28;
  return result;
}

- (CGSize)_verticalMenuContentSizeFittingContainerSize:(CGSize)size traits:(id)traits
{
  height = size.height;
  width = size.width;
  v25 = *MEMORY[0x1E69E9840];
  traitsCopy = traits;
  v9 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  snapshot = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  itemIdentifiers = [snapshot itemIdentifiers];

  v12 = [itemIdentifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(itemIdentifiers);
        }

        [_UIEditMenuListViewCell layoutSizeForItem:*(*(&v20 + 1) + 8 * v15) traitCollection:traitsCopy containerSize:width, height];
        v9 = fmax(v9, v16);
        v8 = v8 + v17;
        ++v15;
      }

      while (v13 != v15);
      v13 = [itemIdentifiers countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = v9;
  v19 = v8;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)axis
{
  v5 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  [v5 minimumRequiredWidthForArrowInRoundedListViewForAxis:axis traitCollection:traitCollection];
  v8 = v7;

  return v8;
}

- (CGSize)arrowSizeForDirection:(int64_t)direction
{
  traitCollection = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v6 = traitCollection;
  v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  menuItemTitleFont = [v7 menuItemTitleFont];
  v9 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

  [v5 arrowSize];
  v11 = v10;
  v12 = v6;
  v13 = _UIEditMenuGetPlatformMetrics([v12 userInterfaceIdiom]);
  menuItemTitleFont2 = [v13 menuItemTitleFont];
  v15 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

  [v15 _scaledValueForValue:0 useLanguageAwareScaling:v11];
  v17 = v16;
  [v12 displayScale];
  v19 = v18;

  UIRoundToScale(v17, fmax(v19, 1.0));
  v21 = v20;

  [v5 arrowSize];
  v23 = v22;
  v24 = v12;
  v25 = _UIEditMenuGetPlatformMetrics([v24 userInterfaceIdiom]);
  menuItemTitleFont3 = [v25 menuItemTitleFont];
  v27 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

  [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
  v29 = v28;
  [v24 displayScale];
  v31 = v30;

  UIRoundToScale(v29, fmax(v31, 1.0));
  v33 = v32;

  if ((direction - 3) >= 2)
  {
    v34 = v21;
  }

  else
  {
    v34 = v33;
  }

  if ((direction - 3) >= 2)
  {
    v35 = v33;
  }

  else
  {
    v35 = v21;
  }

  result.height = v35;
  result.width = v34;
  return result;
}

- (void)_createViewHierarchy
{
  v118[2] = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v5 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
  v6 = _UISolariumEnabled();
  menuBackgroundConfigurator = [v5 menuBackgroundConfigurator];

  if (menuBackgroundConfigurator)
  {
    v8 = objc_opt_new();
    menuBackgroundConfigurator2 = [v5 menuBackgroundConfigurator];
    (menuBackgroundConfigurator2)[2](menuBackgroundConfigurator2, v8);

    [(UIView *)self addSubview:v8];
    customBackgroundPlatterView = self->_customBackgroundPlatterView;
    self->_customBackgroundPlatterView = v8;
  }

  selfCopy = self->_customBackgroundPlatterView;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  v12 = selfCopy;
  v13 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
  v14 = [UIVisualEffectView alloc];
  menuBackgroundEffect = [v13 menuBackgroundEffect];
  v16 = [(UIVisualEffectView *)v14 initWithEffect:menuBackgroundEffect];

  backgroundMaterialGroupName = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  [(UIVisualEffectView *)v16 _setGroupName:backgroundMaterialGroupName];

  v117 = v12;
  [(UIView *)v12 addSubview:v16];
  objc_storeStrong(&self->_backgroundView, v16);
  [v5 arrowSize];
  if (v19 != *MEMORY[0x1E695F060] || v18 != *(MEMORY[0x1E695F060] + 8))
  {
    v20 = objc_opt_new();
    v21 = +[UIColor blackColor];
    -[CAShapeLayer setFillColor:](v20, "setFillColor:", [v21 CGColor]);

    layer = [(UIView *)v16 layer];
    [layer setMask:v20];

    maskLayer = self->_maskLayer;
    self->_maskLayer = v20;
  }

  v24 = objc_opt_new();
  menuContainerView = self->_menuContainerView;
  self->_menuContainerView = v24;

  v26 = v6 ^ 1u;
  [(UIView *)self->_menuContainerView setClipsToBounds:v26];
  contentView = [(UIVisualEffectView *)v16 contentView];
  [contentView addSubview:self->_menuContainerView];

  v28 = [_UIEditMenuCollectionView alloc];
  [(UIView *)self _currentScreenScale];
  v30 = _UIEditMenuViewHorizontalCompositionalLayout(userInterfaceIdiom, v29);
  v31 = [(UICollectionView *)v28 initWithFrame:v30 collectionViewLayout:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];

  [(UICollectionView *)v31 setDelegate:self];
  [(UICollectionView *)v31 setBackgroundColor:0];
  [(UIScrollView *)v31 setShowsVerticalScrollIndicator:0];
  [(UIScrollView *)v31 setShowsHorizontalScrollIndicator:0];
  [(UICollectionView *)v31 setScrollEnabled:v26];
  [(UIScrollView *)v31 setPagingEnabled:1];
  [(UICollectionView *)v31 setAllowsSelection:0];
  [(UICollectionView *)v31 registerClass:objc_opt_class() forCellWithReuseIdentifier:0x1EFB8A5D0];
  [(UICollectionView *)v31 registerClass:objc_opt_class() forSupplementaryViewOfKind:0x1EFB8A5F0 withReuseIdentifier:0x1EFB8A5F0];
  [(UIView *)self->_menuContainerView addSubview:v31];
  objc_storeStrong(&self->_collectionView, v31);
  contentView2 = [(UIVisualEffectView *)v16 contentView];
  panGestureRecognizer = [(UIScrollView *)v31 panGestureRecognizer];
  [contentView2 addGestureRecognizer:panGestureRecognizer];

  v34 = [_UIEditMenuPageButton alloc];
  backgroundMaterialGroupName2 = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  v36 = [(_UIEditMenuPageButton *)v34 initWithDirection:0 backgroundGroupName:backgroundMaterialGroupName2];
  leftButton = self->_leftButton;
  self->_leftButton = v36;

  contentView3 = [(UIVisualEffectView *)v16 contentView];
  [contentView3 addSubview:self->_leftButton];

  v39 = [_UIEditMenuPageButton alloc];
  backgroundMaterialGroupName3 = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  v41 = [(_UIEditMenuPageButton *)v39 initWithDirection:1 backgroundGroupName:backgroundMaterialGroupName3];
  rightButton = self->_rightButton;
  self->_rightButton = v41;

  contentView4 = [(UIVisualEffectView *)v16 contentView];
  [contentView4 addSubview:self->_rightButton];

  v44 = self->_leftButton;
  if (v26)
  {
    [(UIControl *)v44 addTarget:self action:sel__didTapLeftDirectionalButton_ forControlEvents:0x2000];
    v45 = self->_rightButton;
    v47 = sel__didTapRightDirectionalButton_;
    selfCopy3 = self;
  }

  else
  {
    [(UIControl *)v44 addTarget:self action:sel__didTapHandoffButton_ forControlEvents:0x2000];
    v45 = self->_rightButton;
    selfCopy3 = self;
    v47 = sel__didTapHandoffButton_;
  }

  [(UIControl *)v45 addTarget:selfCopy3 action:v47 forControlEvents:0x2000];
  traitCollection2 = [(UIView *)self traitCollection];
  v49 = _UIEditMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  v50 = [UIVisualEffectView alloc];
  separatorEffect = [v49 separatorEffect];
  v52 = [(UIVisualEffectView *)v50 initWithEffect:separatorEffect];

  separatorEffectColor = [v49 separatorEffectColor];
  contentView5 = [(UIView *)v52 contentView];
  [contentView5 setBackgroundColor:separatorEffectColor];

  contentView6 = [(UIView *)v52 contentView];
  layer2 = [contentView6 layer];
  v57 = 1;
  [layer2 setAllowsEdgeAntialiasing:1];

  contentView7 = [(UIView *)v52 contentView];
  [contentView7 setClipsToBounds:0];

  titleSeparatorView = self->_titleSeparatorView;
  self->_titleSeparatorView = v52;

  if (self->_titleView)
  {
    v57 = self->_displayedMenu == 0;
  }

  [(UIView *)self->_titleSeparatorView setHidden:v57];
  v60 = objc_opt_new();
  titleContainerView = self->_titleContainerView;
  self->_titleContainerView = v60;

  [(UIView *)self->_titleContainerView addSubview:self->_titleSeparatorView];
  contentView8 = [(UIVisualEffectView *)v16 contentView];
  [contentView8 addSubview:self->_titleContainerView];

  if (self->_titleView)
  {
    [(UIView *)self->_titleContainerView addSubview:?];
  }

  [v5 shadowOpacity];
  if (v63 > 0.0)
  {
    v64 = v63;
    v65 = objc_alloc_init(_UIDiffuseShadowView);
    traitCollection3 = [(UIView *)self traitCollection];
    v67 = _UIEditMenuGetPlatformMetrics([traitCollection3 userInterfaceIdiom]);
    [v67 shadowRadius];
    v69 = v68;
    v70 = traitCollection3;
    v71 = _UIEditMenuGetPlatformMetrics([v70 userInterfaceIdiom]);
    menuItemTitleFont = [v71 menuItemTitleFont];
    v73 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v70];

    [v73 _scaledValueForValue:0 useLanguageAwareScaling:v69];
    v75 = v74;
    [v70 displayScale];
    v77 = v76;

    UIRoundToScale(v75, fmax(v77, 1.0));
    v79 = v78;

    [(_UIDiffuseShadowView *)v65 setRadius:v79];
    traitCollection4 = [(UIView *)self traitCollection];
    v81 = _UIEditMenuGetPlatformMetrics([traitCollection4 userInterfaceIdiom]);
    [v81 shadowOffset];
    v83 = v82;
    v84 = traitCollection4;
    v85 = _UIEditMenuGetPlatformMetrics([v84 userInterfaceIdiom]);
    menuItemTitleFont2 = [v85 menuItemTitleFont];
    v87 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v84];

    [v87 _scaledValueForValue:0 useLanguageAwareScaling:v83];
    v89 = v88;
    [v84 displayScale];
    v91 = v90;

    UIRoundToScale(v89, fmax(v91, 1.0));
    v93 = v92;

    [v81 shadowOffset];
    v95 = v94;
    v96 = v84;
    v97 = _UIEditMenuGetPlatformMetrics([v96 userInterfaceIdiom]);
    menuItemTitleFont3 = [v97 menuItemTitleFont];
    v99 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v96];

    [v99 _scaledValueForValue:0 useLanguageAwareScaling:v95];
    v101 = v100;
    [v96 displayScale];
    v103 = v102;

    UIRoundToScale(v101, fmax(v103, 1.0));
    v105 = v104;

    [(_UIDiffuseShadowView *)v65 setOffset:v93, v105];
    [(_UIDiffuseShadowView *)v65 setIntensity:v64];
    layer3 = [(UIView *)v65 layer];
    [layer3 setPunchoutShadow:1];

    [(UIView *)self insertSubview:v65 atIndex:0];
    shadowView = self->_shadowView;
    self->_shadowView = v65;
  }

  [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
  v108 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectionGesture_];
  [(UIGestureRecognizer *)v108 setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)v108 setDelegate:self];
  contentView9 = [(UIVisualEffectView *)v16 contentView];
  [contentView9 addGestureRecognizer:v108];

  objc_storeStrong(&self->_selectionGestureRecognizer, v108);
  v110 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGesture_];
  [(UIGestureRecognizer *)v110 setDelegate:self];
  contentView10 = [(UIVisualEffectView *)v16 contentView];
  [contentView10 addGestureRecognizer:v110];

  objc_storeStrong(&self->_hoverGestureRecognizer, v110);
  if (_UISolariumEnabled())
  {
    v112 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handlePanGesture_];
    [(UIPanGestureRecognizer *)v112 setDelegate:self];
    contentView11 = [(UIVisualEffectView *)v16 contentView];
    [contentView11 addGestureRecognizer:v112];

    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = v112;
  }

  v118[0] = objc_opt_class();
  v118[1] = objc_opt_class();
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v116 = [(UIView *)self registerForTraitChanges:v115 withAction:sel__contentSizeCategoryDidChange];
}

- (void)setAxis:(int64_t)axis
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (self->_axis != axis)
  {
    axisCopy = axis;
    self->_axis = axis;
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceIdiom = [traitCollection userInterfaceIdiom];

    collectionView = [(_UIEditMenuListView *)self collectionView];
    if (axisCopy == 1)
    {
      v41 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
      [v41 verticalMenuCornerRadius];
      v14 = v13;
      [(UIView *)self _currentScreenScale];
      v16 = v15;
      v17 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
      v18 = 1.0;
      if ([v17 useThinSeparators])
      {
        v18 = 1.0 / fmax(v16, 1.0);
      }

      v19 = [off_1E70ECB18 fractionalWidthDimension:1.0];
      v20 = [off_1E70ECB18 absoluteDimension:v18];
      v21 = [off_1E70ECB40 sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = [off_1E70ECB00 layoutAnchorWithEdges:1];
      v23 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
      LODWORD(v19) = [v23 showsSeparatorBetweenItems];

      v40 = v22;
      if (v19)
      {
        v24 = [off_1E70ECB50 supplementaryItemWithLayoutSize:v21 elementKind:0x1EFB8A5F0 containerAnchor:v22];
        [v24 setZIndex:-1];
        v43[0] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      }

      else
      {
        v25 = MEMORY[0x1E695E0F0];
      }

      v8 = v14 * 0.5;
      v26 = [off_1E70ECB18 fractionalWidthDimension:1.0];
      v27 = [off_1E70ECB18 estimatedDimension:44.0];
      v28 = [off_1E70ECB40 sizeWithWidthDimension:v26 heightDimension:v27];

      v29 = [off_1E70ECB30 itemWithLayoutSize:v28 supplementaryItems:v25];
      v42 = v29;
      v11 = 1;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      v31 = [off_1E70ECB28 horizontalGroupWithLayoutSize:v28 subitems:v30];

      v32 = [off_1E70ECB38 sectionWithGroup:v31];
      [v32 setContentInsetsReference:1];
      v33 = objc_opt_new();
      [v33 setScrollDirection:0];
      [v33 setContentInsetsReference:1];
      v10 = [(UICollectionViewCompositionalLayout *)[_UIEditMenuListViewLayout alloc] initWithSection:v32 configuration:v33];

      v12 = 0;
      axisCopy = 1;
    }

    else
    {
      v8 = 0.0;
      if (axisCopy)
      {
        v10 = 0;
        v12 = 0;
        axisCopy = 0;
        v11 = 1;
      }

      else
      {
        [(UIView *)self _currentScreenScale];
        v10 = _UIEditMenuViewHorizontalCompositionalLayout(userInterfaceIdiom, v9);
        v11 = _UISolariumEnabled() ^ 1;
        v12 = 1;
      }
    }

    rightButton = [(_UIEditMenuListView *)self rightButton];
    [rightButton setHidden:axisCopy];

    leftButton = [(_UIEditMenuListView *)self leftButton];
    [leftButton setHidden:axisCopy];

    [collectionView setScrollEnabled:v11];
    [collectionView setPagingEnabled:v12];
    [collectionView setShowsVerticalScrollIndicator:axisCopy];
    [collectionView setVerticalScrollIndicatorInsets:{v8, 0.0, v8, 0.0}];
    [collectionView setCollectionViewLayout:v10];
    [collectionView setContentInset:{0.0, 0.0, 0.0, 0.0}];
    [(_UIEditMenuListView *)self _setNeedsPaginationUpdate];
    [(UIView *)self setNeedsLayout];
    dataSource = [(_UIEditMenuListView *)self dataSource];
    snapshot = [dataSource snapshot];

    sectionIdentifiers = [snapshot sectionIdentifiers];
    [snapshot reloadSectionsWithIdentifiers:sectionIdentifiers];

    dataSource2 = [(_UIEditMenuListView *)self dataSource];
    [dataSource2 applySnapshotUsingReloadData:snapshot];

    [collectionView resetTargetPage];
    [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
  }
}

- (void)_createDataSource
{
  objc_initWeak(&location, self);
  v3 = [UICollectionViewDiffableDataSource alloc];
  collectionView = self->_collectionView;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40___UIEditMenuListView__createDataSource__block_invoke;
  v9[3] = &unk_1E7108DD8;
  objc_copyWeak(&v10, &location);
  v5 = [(UICollectionViewDiffableDataSource *)v3 initWithCollectionView:collectionView cellProvider:v9];
  dataSource = self->_dataSource;
  self->_dataSource = v5;

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40___UIEditMenuListView__createDataSource__block_invoke_2;
  v7[3] = &unk_1E7108E00;
  objc_copyWeak(&v8, &location);
  [(UICollectionViewDiffableDataSource *)self->_dataSource setSupplementaryViewProvider:v7];
  [(_UIEditMenuListView *)self _reloadMenuAnimated:0];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_reloadMenuAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v38[1] = *MEMORY[0x1E69E9840];
  [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:0];
  v6 = v5;
  displayedMenu = [(_UIEditMenuListView *)self displayedMenu];
  _hasPasteAuthentication = [(_UIEditMenuListView *)self _hasPasteAuthentication];
  preferredElementDisplayMode = [(_UIEditMenuListView *)self preferredElementDisplayMode];
  v10 = displayedMenu;
  v11 = objc_opt_new();
  identifier = [v10 identifier];
  v38[0] = identifier;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [v11 appendSectionsWithIdentifiers:v13];

  if (v10)
  {
    _UIEditMenuAppendMenuToSnapshot(v10, v11, _hasPasteAuthentication, preferredElementDisplayMode);
    itemIdentifiers = [v11 itemIdentifiers];
    v15 = [itemIdentifiers count];

    if (v15 == 1)
    {
      itemIdentifiers2 = [v11 itemIdentifiers];
      firstObject = [itemIdentifiers2 firstObject];

      [firstObject setOverrideMinimumWidth:v6 + v6];
      [firstObject setSingleItemMenu:1];
    }
  }

  window = [(UIView *)self window];

  if (window && animatedCopy)
  {
    width = self->_paginationContainerSize.width;
    height = self->_paginationContainerSize.height;
    if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
    {
      [(UIView *)self bounds];
      width = v22;
      height = v23;
    }

    [(_UIEditMenuListView *)self _updatePaginationForSnapshot:v11 containerSize:width, height];
    if ([(_UIEditMenuListView *)self hasShadow])
    {
      shadowView = [(_UIEditMenuListView *)self shadowView];
      layer = [shadowView layer];
      v26 = __43___UIEditMenuListView__reloadMenuAnimated___block_invoke(@"shadowPath", [layer shadowPath]);
      [(UIView *)self addAnimation:v26 forKey:@"shadowPath"];
    }

    maskLayer = [(_UIEditMenuListView *)self maskLayer];
    maskLayer2 = [(_UIEditMenuListView *)self maskLayer];
    v29 = __43___UIEditMenuListView__reloadMenuAnimated___block_invoke(@"path", [maskLayer2 path]);
    [maskLayer addAnimation:v29 forKey:@"path"];

    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __43___UIEditMenuListView__reloadMenuAnimated___block_invoke_2;
    v37[3] = &unk_1E70F3590;
    v37[4] = self;
    [UIView animateWithDuration:0 delay:v37 options:0 animations:0.25 completion:0.0];
  }

  else
  {
    [(_UIEditMenuListView *)self _setNeedsPaginationUpdate];
  }

  dataSource = self->_dataSource;
  if (animatedCopy)
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v11 animatingDifferences:1];
  }

  else
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v11];
  }

  collectionView = [(_UIEditMenuListView *)self collectionView];
  pages = [collectionView pages];
  v33 = [pages count];

  if (v33)
  {
    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    [collectionView2 scrollToTargetPageAnimated:0];
  }

  displayedMenu2 = [(_UIEditMenuListView *)self displayedMenu];
  accessibilityIdentifier = [displayedMenu2 accessibilityIdentifier];
  [self setAccessibilityIdentifier:accessibilityIdentifier];
}

- (BOOL)_hasPasteAuthentication
{
  selfCopy = self;
  delegate = [(_UIEditMenuListView *)self delegate];
  LOBYTE(selfCopy) = [delegate wantsPasteTouchAuthenticationInEditMenuListView:selfCopy];

  return selfCopy;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UIView *)self bounds];
  v10.origin.x = x;
  v10.origin.y = y;
  v10.size.width = width;
  v10.size.height = height;
  if (!CGRectEqualToRect(v9, v10) && ![(_UIEditMenuListView *)self axis])
  {
    [(_UIEditMenuListView *)self _setNeedsPaginationUpdate];
  }

  v8.receiver = self;
  v8.super_class = _UIEditMenuListView;
  [(UIView *)&v8 setBounds:x, y, width, height];
}

- (void)_contentSizeCategoryDidChange
{
  [(_UIEditMenuListView *)self _setNeedsPaginationUpdate];
  delegate = [(_UIEditMenuListView *)self delegate];
  [delegate contentSizeCategoryDidChangeInEditMenuListView:self];

  traitCollection = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  [v5 shadowRadius];
  v7 = v6;
  v8 = traitCollection;
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  menuItemTitleFont = [v9 menuItemTitleFont];
  v11 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

  [v11 _scaledValueForValue:0 useLanguageAwareScaling:v7];
  v13 = v12;
  [v8 displayScale];
  v15 = v14;

  UIRoundToScale(v13, fmax(v15, 1.0));
  v17 = v16;

  [(_UIDiffuseShadowView *)self->_shadowView setRadius:v17];
  traitCollection2 = [(UIView *)self traitCollection];
  v19 = _UIEditMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
  [v19 shadowOffset];
  v21 = v20;
  v22 = traitCollection2;
  v23 = _UIEditMenuGetPlatformMetrics([v22 userInterfaceIdiom]);
  menuItemTitleFont2 = [v23 menuItemTitleFont];
  v25 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v22];

  [v25 _scaledValueForValue:0 useLanguageAwareScaling:v21];
  v27 = v26;
  [v22 displayScale];
  v29 = v28;

  UIRoundToScale(v27, fmax(v29, 1.0));
  v31 = v30;

  [v19 shadowOffset];
  v33 = v32;
  v34 = v22;
  v35 = _UIEditMenuGetPlatformMetrics([v34 userInterfaceIdiom]);
  menuItemTitleFont3 = [v35 menuItemTitleFont];
  v37 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v34];

  [v37 _scaledValueForValue:0 useLanguageAwareScaling:v33];
  v39 = v38;
  [v34 displayScale];
  v41 = v40;

  UIRoundToScale(v39, fmax(v41, 1.0));
  v43 = v42;

  [(_UIDiffuseShadowView *)self->_shadowView setOffset:v31, v43];

  [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
}

- (id)effectiveBackgroundView
{
  customBackgroundPlatterView = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  v4 = customBackgroundPlatterView;
  if (customBackgroundPlatterView)
  {
    backgroundView = customBackgroundPlatterView;
  }

  else
  {
    backgroundView = [(_UIEditMenuListView *)self backgroundView];
  }

  v6 = backgroundView;

  return v6;
}

- (void)layoutSubviews
{
  v245.receiver = self;
  v245.super_class = _UIEditMenuListView;
  [(UIView *)&v245 layoutSubviews];
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  shadowView = [(_UIEditMenuListView *)self shadowView];
  [shadowView setFrame:{v6, v8, v10, v12}];

  v14 = *(MEMORY[0x1E695F060] + 8);
  v15 = self->_paginationContainerSize.width == *MEMORY[0x1E695F060];
  v16 = self->_paginationContainerSize.height == v14;
  if (v15 && v16)
  {
    height = v12;
  }

  else
  {
    height = self->_paginationContainerSize.height;
  }

  if (v15 && v16)
  {
    width = v10;
  }

  else
  {
    width = self->_paginationContainerSize.width;
  }

  if ([(_UIEditMenuListView *)self _isPaginationDirtyForContainerSize:width, height, *MEMORY[0x1E695F060], v14])
  {
    [(_UIEditMenuListView *)self _updatePaginationForSnapshot:0 containerSize:width, height];
  }

  axis = [(_UIEditMenuListView *)self axis];
  v20 = *(&self->super._viewFlags + 2);
  arrowDirection = [(_UIEditMenuListView *)self arrowDirection];
  arrowDirection2 = [(_UIEditMenuListView *)self arrowDirection];
  axis2 = [(_UIEditMenuListView *)self axis];
  v24 = arrowDirection2 - 5;
  v232 = v20;
  v25 = !axis2 && v24 > 0xFFFFFFFFFFFFFFFDLL || axis2 == 1 && v24 < 0xFFFFFFFFFFFFFFFELL;
  v241 = v25;
  v27 = axis;
  [(UIView *)self anchorPoint];
  [(UIView *)self center];
  v29 = v28;
  v31 = v30;
  superview = [(UIView *)self superview];
  [(UIView *)self convertPoint:superview fromView:v29, v31];
  v223 = v33;

  [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:[(_UIEditMenuListView *)self axis]];
  v222 = v34;
  traitCollection2 = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection2 userInterfaceIdiom];
  [(UIView *)self _currentScreenScale];
  v38 = v37;
  v39 = _UIEditMenuGetPlatformMetrics(userInterfaceIdiom);
  v40 = 1.0;
  if ([v39 useThinSeparators])
  {
    v40 = 1.0 / fmax(v38, 1.0);
  }

  v225 = v40;
  if ([v4 pageButtonHasInlineAppearance])
  {
    v41 = v40;
  }

  else
  {
    v41 = 0.0;
  }

  leftButton = [(_UIEditMenuListView *)self leftButton];
  [leftButton sizeThatFits:{remainder.size.width, remainder.size.height}];
  v44 = v43;
  v234 = v45;

  traitCollection3 = [(UIView *)self traitCollection];
  v47 = _UIEditMenuGetPlatformMetrics([traitCollection3 userInterfaceIdiom]);
  v48 = traitCollection3;
  v49 = _UIEditMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
  menuItemTitleFont = [v49 menuItemTitleFont];
  v51 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v48];

  [v47 arrowSize];
  v53 = v52;
  v54 = v48;
  v55 = _UIEditMenuGetPlatformMetrics([v54 userInterfaceIdiom]);
  menuItemTitleFont2 = [v55 menuItemTitleFont];
  v57 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v54];

  [v57 _scaledValueForValue:0 useLanguageAwareScaling:v53];
  v59 = v58;
  [v54 displayScale];
  v61 = v60;

  UIRoundToScale(v59, fmax(v61, 1.0));
  [v47 arrowSize];
  v63 = v62;
  v64 = v54;
  v65 = _UIEditMenuGetPlatformMetrics([v64 userInterfaceIdiom]);
  menuItemTitleFont3 = [v65 menuItemTitleFont];
  v67 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v64];

  [v67 _scaledValueForValue:0 useLanguageAwareScaling:v63];
  v69 = v68;
  [v64 displayScale];
  v71 = v70;

  UIRoundToScale(v69, fmax(v71, 1.0));
  v73 = v72;

  arrowDirection3 = [(_UIEditMenuListView *)self arrowDirection];
  if (arrowDirection3 == 1)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0.0;
  }

  if (arrowDirection3 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v76 = v73;
  }

  if (arrowDirection3 == 3)
  {
    v77 = v73;
  }

  else
  {
    v77 = 0.0;
  }

  if (arrowDirection3 == 3)
  {
    v75 = 0.0;
    v76 = 0.0;
  }

  if (arrowDirection3 == 4)
  {
    v77 = 0.0;
  }

  v228 = v77;
  if (arrowDirection3 == 4)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = v75;
  }

  if (arrowDirection3 == 4)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = v76;
  }

  v239 = v79;
  v80 = *(MEMORY[0x1E695F058] + 16);
  v224 = v73;
  if (arrowDirection3 == 4)
  {
    v81 = v73;
  }

  else
  {
    v81 = 0.0;
  }

  v227 = v81;
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v80;
  titleView = [(_UIEditMenuListView *)self titleView];

  if (titleView)
  {
    [(_UIEditMenuListView *)self _titleViewSizeForFittingWidth:remainder.size.width];
    v84 = v83;
    v86 = v85;
    if ([(_UIEditMenuListView *)self arrowDirection]== 1)
    {
      v87 = CGRectMaxYEdge;
    }

    else
    {
      v87 = CGRectMinYEdge;
    }

    CGRectDivide(remainder, &slice, &remainder, v86, v87);
    slice.size.width = v84;
  }

  v88 = arrowDirection - 3;
  v89 = v27;
  v230 = v44;
  v218 = v41;
  if (v27)
  {
    axis3 = [(_UIEditMenuListView *)self axis];
    v91 = v239;
    if (axis3 == 1)
    {
      v92 = v239;
    }

    else
    {
      v92 = 0.0;
    }

    if (axis3 == 1)
    {
      v93 = v78;
    }

    else
    {
      v93 = 0.0;
    }

    v94 = remainder.size.width;
    v226 = 0.0;
    v95 = remainder.origin.x + 0.0;
    v96 = v93 + remainder.origin.y;
    rect = remainder.size.height - (v92 + v93);
    v229 = CGRectGetWidth(remainder);
    v220 = 0.0;
    v221 = 0.0;
    v97 = 0.0;
    v98 = 0.0;
    v99 = v232;
  }

  else
  {
    collectionView = [(_UIEditMenuListView *)self collectionView];
    [collectionView currentPage];
    v102 = v101;

    v103 = _UISolariumEnabled();
    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    pages = [collectionView2 pages];
    v106 = [pages count];

    v95 = 0.0;
    v99 = v232;
    if ((*&v232 & 0x400000) != 0)
    {
      v107 = 1.0;
    }

    else
    {
      v107 = 0.0;
    }

    if ((*&v232 & 0x400000) != 0)
    {
      v108 = 0.0;
    }

    else
    {
      v108 = 1.0;
    }

    if (v106 < 2)
    {
      v108 = 0.0;
      v107 = 0.0;
    }

    v109 = fmax(fmin(v102, 1.0), 0.0);
    v110 = fmax(fmin((v106 - 1) - v102, 1.0), 0.0);
    if ((v232 & 0x400000) != 0)
    {
      v111 = v110;
    }

    else
    {
      v111 = v109;
    }

    if ((v232 & 0x400000) != 0)
    {
      v110 = v109;
    }

    if ((v103 & 1) == 0)
    {
      v108 = v110;
      v107 = v111;
    }

    v226 = (v44 - v41) * v107;
    v98 = -v226;
    v97 = -(v108 * (v44 - v41));
    v220 = v107;
    v221 = v108;
    v112 = v108 + v107;
    [v4 pageButtonOverlapAmount];
    v114 = v112 * v113;
    [(_UIEditMenuListView *)self _collectionViewWidthForPageProgress:v102];
    v116 = v115;
    MinY = CGRectGetMinY(remainder);
    v94 = v116 - v114;
    rect = CGRectGetHeight(remainder);
    largestPageWidth = self->_largestPageWidth;
    [v4 sectionInsets];
    v120 = largestPageWidth + v119;
    [v4 sectionInsets];
    v229 = v120 + v121 - v114;
    v96 = MinY;
    v91 = v239;
  }

  additionalWidthFromInteraction = self->_additionalWidthFromInteraction;
  v123 = v94 + additionalWidthFromInteraction;
  v124 = v95 + v98;
  v236 = v123;
  v237 = v96;
  v240 = v96 + 0.0;
  v125 = v123 - (v97 + v98);
  v126 = v78 + remainder.origin.y;
  if (v241)
  {
    v127 = remainder.size.height - (v78 + v91);
  }

  else
  {
    v127 = remainder.size.height;
  }

  if (v241)
  {
    v128 = remainder.size.width - (v228 + v227);
  }

  else
  {
    v128 = remainder.size.width;
  }

  if (v241)
  {
    y = v126;
  }

  else
  {
    y = remainder.origin.y;
  }

  if (v241)
  {
    x = v228 + remainder.origin.x;
  }

  else
  {
    x = remainder.origin.x;
  }

  v242 = v125;
  UIRoundToViewScale(self);
  v132 = v131;
  if (v88 >= 2)
  {
    v133 = v223 - v222;
    if (v131 <= v223 - v222)
    {
      v246.origin.x = v124;
      v246.origin.y = v240;
      v246.size.width = v242;
      v246.size.height = rect;
      v133 = v132;
      if (v132 < v223 + v222 - CGRectGetWidth(v246))
      {
        v247.origin.x = v124;
        v247.origin.y = v240;
        v247.size.width = v242;
        v247.size.height = rect;
        v133 = v223 + v222 - CGRectGetWidth(v247);
      }
    }
  }

  else
  {
    v133 = v131;
  }

  v248.origin.x = x;
  v248.origin.y = y;
  v248.size.width = v128;
  v248.size.height = v127;
  MinX = CGRectGetMinX(v248);
  v249.origin.x = x;
  v249.origin.y = y;
  v249.size.width = v128;
  v249.size.height = v127;
  MaxX = CGRectGetMaxX(v249);
  v250.origin.x = v124;
  v250.origin.y = v240;
  v250.size.width = v242;
  v250.size.height = rect;
  v136 = CGRectGetWidth(v250);
  v137 = dbl_18A67B710[(*&v99 & 0x400000) == 0] * additionalWidthFromInteraction;
  v138 = rect;
  v139 = v137 + fmax(MinX, fmin(v133, MaxX - v136));
  [v4 pageButtonAlignmentOffset];
  v141 = v140;
  v251.origin.x = v226 + v139;
  v251.origin.y = v237;
  v251.size.width = v236;
  v251.size.height = rect;
  v252 = CGRectInset(v251, v141, 0.0);
  v142 = v252.origin.x;
  v143 = v252.origin.y;
  v144 = v252.size.width;
  v145 = v252.size.height;
  menuContainerView = [(_UIEditMenuListView *)self menuContainerView];
  [menuContainerView setFrame:{v142, v143, v144, v145}];

  titleView2 = [(_UIEditMenuListView *)self titleView];

  if (titleView2)
  {
    v148 = slice.origin.y;
    v149 = slice.size.height;
    titleContainerView = [(_UIEditMenuListView *)self titleContainerView];
    [titleContainerView setFrame:{v139, v148, v242, v149}];

    v253.origin.x = v139;
    v253.origin.y = v148;
    v253.size.width = v242;
    v253.size.height = v149;
    v151 = CGRectGetWidth(v253);
    v152 = (v151 - CGRectGetWidth(slice)) * 0.5;
    slice.origin.x = v152;
    slice.origin.y = 0.0;
    v153 = slice.size.width;
    v154 = slice.size.height;
    titleView3 = [(_UIEditMenuListView *)self titleView];
    [titleView3 setFrame:{v152, 0.0, v153, v154}];

    if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
    {
      titleSeparatorView = [(_UIEditMenuListView *)self titleSeparatorView];

      if (titleSeparatorView)
      {
        arrowDirection4 = [(_UIEditMenuListView *)self arrowDirection];
        v158 = slice.origin.x;
        v159 = slice.origin.y;
        v160 = slice.size.width;
        v161 = slice.size.height;
        if (arrowDirection4 == 1)
        {
          MaxY = CGRectGetMinY(*&v158);
        }

        else
        {
          MaxY = CGRectGetMaxY(*&v158);
        }

        v163 = MaxY;
        v164 = [(_UIEditMenuListView *)self titleSeparatorView:*&v218];
        [v164 setFrame:{0.0, v163, v242, v225}];
      }
    }
  }

  if ((v99 & 0x400000) != 0)
  {
    v168 = v229;
    [v4 pageButtonAlignmentOffset];
    v166 = v236 - v229 - v169;
    v167 = v234;
  }

  else
  {
    [v4 pageButtonAlignmentOffset];
    v166 = -v165;
    v167 = v234;
    v168 = v229;
  }

  collectionView3 = [(_UIEditMenuListView *)self collectionView];
  [collectionView3 setFrame:{v166, 0.0, v168, rect}];

  if (!v89)
  {
    [v4 pageButtonAlignmentOffset];
    v172 = v171;
    [v4 pageButtonVisibilityMultiplier];
    v235 = v173;
    if ([v4 pageButtonHasInlineAppearance])
    {
      v254.origin.x = v139;
      v254.origin.y = v240;
      v254.size.width = v242;
      v254.size.height = rect;
      v174 = CGRectGetMinY(v254);
      v175 = v219 + v230;
      v255.origin.x = v139;
      v255.origin.y = v240;
      v255.size.width = v242;
      v176 = v174;
      v255.size.height = rect;
      v167 = CGRectGetHeight(v255);
    }

    else
    {
      v176 = round(v240 + (rect - v167) * 0.5);
      v175 = v230;
    }

    v256.origin.x = v226 + v139;
    v256.origin.y = v237;
    v256.size.width = v236;
    v256.size.height = rect;
    v177 = v172;
    v178 = v172 + v225 + CGRectGetMinX(v256) - v230;
    v231 = *MEMORY[0x1E695EFF8];
    v233 = *(MEMORY[0x1E695EFF8] + 8);
    [(UIButton *)self->_leftButton setBounds:?];
    [(UIView *)self->_leftButton setCenter:v175 * 0.5 + v178, v176 + v167 * 0.5];
    [(UIView *)self->_leftButton setAlpha:fmax(fmin(v220 * v235, 1.0), 0.0)];
    v257.origin.x = v226 + v139;
    v257.origin.y = v237;
    v257.size.width = v236;
    v257.size.height = rect;
    v179 = CGRectGetMaxX(v257) - v177;
    [(UIButton *)self->_rightButton setBounds:v231, v233, v175, v167];
    v138 = rect;
    [(UIView *)self->_rightButton setCenter:v175 * 0.5 + v179, v176 + v167 * 0.5];
    [(UIView *)self->_rightButton setAlpha:fmax(fmin(v221 * v235, 1.0), 0.0)];
  }

  titleContainerView2 = [(_UIEditMenuListView *)self titleContainerView];
  [titleContainerView2 frame];
  IsEmpty = CGRectIsEmpty(v258);

  if (!IsEmpty)
  {
    titleContainerView3 = [(_UIEditMenuListView *)self titleContainerView];
    [titleContainerView3 frame];
    v262.origin.x = v139;
    v262.origin.y = v240;
    v262.size.width = v242;
    v262.size.height = v138;
    v260 = CGRectUnion(v259, v262);
    v139 = v260.origin.x;
    v240 = v260.origin.y;
    v242 = v260.size.width;
    v138 = v260.size.height;
  }

  arrowDirection5 = [(_UIEditMenuListView *)self arrowDirection];
  axis4 = [(_UIEditMenuListView *)self axis];
  v185 = 0.0;
  if (axis4 == (arrowDirection5 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    v186 = 0.0;
LABEL_110:
    v187 = 0.0;
LABEL_111:
    v188 = 0.0;
    goto LABEL_112;
  }

  switch(arrowDirection5)
  {
    case 4:
      v186 = 0.0;
      v187 = 0.0;
      v188 = 0.0;
      v185 = v224;
      break;
    case 3:
      v186 = 0.0;
      v187 = v224;
      goto LABEL_111;
    case 1:
      v186 = v224;
      goto LABEL_110;
    default:
      v186 = 0.0;
      v187 = 0.0;
      v188 = v224;
      break;
  }

LABEL_112:
  v189 = v139 + v187;
  v190 = v240 + v186;
  v191 = v242 - (v187 + v185);
  v192 = v138 - (v186 + v188);
  [(_UIEditMenuListView *)self _updateMaskingLayerWithFrame:v189, v240 + v186, v191, v192];
  customBackgroundPlatterView = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  [customBackgroundPlatterView setFrame:{v189, v190, v191, v192}];

  [(_UIEditMenuListView *)self _resolvedCornerRadiusForRect:v189, v190, v191, v192];
  v195 = v194;
  customBackgroundPlatterView2 = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  [customBackgroundPlatterView2 _setContinuousCornerRadius:v195];

  [(UIView *)self bounds];
  v198 = v197;
  v200 = v199;
  v202 = v201;
  v204 = v203;
  backgroundView = [(_UIEditMenuListView *)self backgroundView];
  superview2 = [backgroundView superview];
  [(UIView *)self convertRect:superview2 toView:v198, v200, v202, v204];
  v208 = v207;
  v210 = v209;
  v212 = v211;
  v214 = v213;
  backgroundView2 = [(_UIEditMenuListView *)self backgroundView];
  [backgroundView2 setFrame:{v208, v210, v212, v214}];

  if (v89)
  {
    verticalContentHeight = self->_verticalContentHeight;
    collectionView4 = [(_UIEditMenuListView *)self collectionView];
    [collectionView4 bounds];
    [(_UIEditMenuListView *)self setScrubbingEnabled:verticalContentHeight <= CGRectGetHeight(v261)];
  }
}

- (BOOL)scrubbingEnabled
{
  collectionView = [(_UIEditMenuListView *)self collectionView];
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

  collectionView = [(_UIEditMenuListView *)self collectionView];
  [collectionView setBounces:!enabledCopy];

  selectionGestureRecognizer = [(_UIEditMenuListView *)self selectionGestureRecognizer];
  [selectionGestureRecognizer setAllowableMovement:{v5, v5}];
}

- (id)collectionViewLayout
{
  collectionView = [(_UIEditMenuListView *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  return collectionViewLayout;
}

- (double)_collectionViewWidthForPageProgress:(double)progress
{
  if ([(_UIEditMenuListView *)self _hasDisplayedMenu]&& ![(_UIEditMenuListView *)self axis])
  {
    traitCollection = [(UIView *)self traitCollection];
    v39 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    [v39 sectionInsets];
    v41 = v40;
    v43 = v42;

    collectionView = [(_UIEditMenuListView *)self collectionView];
    [collectionView viewWidthForPageProgress:progress];
    v46 = v45;

    return v41 + v43 + v46;
  }

  else
  {
    arrowDirection = [(_UIEditMenuListView *)self arrowDirection];
    traitCollection2 = [(UIView *)self traitCollection];
    v7 = _UIEditMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
    v8 = traitCollection2;
    v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
    menuItemTitleFont = [v9 menuItemTitleFont];
    v11 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

    [v7 arrowSize];
    v13 = v12;
    v14 = v8;
    v15 = _UIEditMenuGetPlatformMetrics([v14 userInterfaceIdiom]);
    menuItemTitleFont2 = [v15 menuItemTitleFont];
    v17 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v14];

    [v17 _scaledValueForValue:0 useLanguageAwareScaling:v13];
    v19 = v18;
    [v14 displayScale];
    v21 = v20;

    UIRoundToScale(v19, fmax(v21, 1.0));
    [v7 arrowSize];
    v23 = v22;
    v24 = v14;
    v25 = _UIEditMenuGetPlatformMetrics([v24 userInterfaceIdiom]);
    menuItemTitleFont3 = [v25 menuItemTitleFont];
    v27 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

    [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
    v29 = v28;
    [v24 displayScale];
    v31 = v30;

    UIRoundToScale(v29, fmax(v31, 1.0));
    v33 = v32;

    v34 = 0.0;
    if (arrowDirection == 4)
    {
      v35 = 0.0;
      v34 = v33;
    }

    else if (arrowDirection == 3)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0.0;
    }

    [(UIView *)self bounds];
    return v36 - (v35 + v34);
  }
}

- (BOOL)_isPaginationDirtyForContainerSize:(CGSize)size
{
  if (*&self->_needsUpdate)
  {
    return 1;
  }

  if (self->_paginationContainerSize.height == size.height)
  {
    return self->_paginationContainerSize.width != size.width;
  }

  return 1;
}

- (void)_updatePaginationForSnapshot:(id)snapshot containerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v94[16] = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  axis = [(_UIEditMenuListView *)self axis];
  collectionView = [(_UIEditMenuListView *)self collectionView];
  v10 = collectionView;
  if (axis)
  {
    v11 = MEMORY[0x1E695E0F0];
    [collectionView setPages:MEMORY[0x1E695E0F0]];
    collectionViewLayout = [(_UIEditMenuListView *)self collectionViewLayout];
    [collectionViewLayout setPages:v11];

    *&self->_needsUpdate &= ~1u;
    self->_paginationContainerSize = *MEMORY[0x1E695F060];
  }

  else
  {
    if (!snapshotCopy)
    {
      snapshotCopy = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    }

    [(UIButton *)self->_leftButton sizeThatFits:width, height];
    v14 = v13;
    [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:[(_UIEditMenuListView *)self axis]];
    v16 = v15;
    traitCollection = [(UIView *)self traitCollection];
    itemIdentifiers = [snapshotCopy itemIdentifiers];
    array = [MEMORY[0x1E695DF70] array];
    v83 = v10;
    if ([itemIdentifiers count])
    {
      v81 = v16;
      v82 = snapshotCopy;
      v19 = [itemIdentifiers count];
      *&v80[1] = v80;
      MEMORY[0x1EEE9AC00](v19);
      v21 = v80 - v20;
      v22 = [[_UIEditMenuListPage alloc] initWithStartIndex:0];
      [array addObject:v22];
      v23 = [itemIdentifiers count];
      v80[0] = v14;
      if (v23)
      {
        v24 = 0;
        v25 = 0.0;
        v26 = v14 + 0.0;
        v27 = v14 + v14 + 0.0;
        do
        {
          v28 = [itemIdentifiers objectAtIndex:{v24, *&v80[0]}];
          [_UIEditMenuListViewCell layoutSizeForItem:v28 traitCollection:traitCollection containerSize:width, height];
          v30 = fmin(v29, width);
          if ([array count] > 1 || (-[_UIEditMenuListPage width](v22, "width"), UIRoundToViewScale(self), v31 = 0.0, v32 = v26, v33 > width))
          {
            v32 = v27;
            v31 = v26;
          }

          if (v24 >= [itemIdentifiers count] - 1)
          {
            v34 = v31;
          }

          else
          {
            v34 = v32;
          }

          v35 = fmin(v30, width - v34);
          *&v21[8 * v24] = v35;
          [(_UIEditMenuListPage *)v22 width];
          UIRoundToViewScale(self);
          v37 = v36;
          UIRoundToViewScale(self);
          if (v37 > v38)
          {
            v39 = [[_UIEditMenuListPage alloc] initWithStartIndex:v24];

            [array addObject:v39];
            v22 = v39;
          }

          [(_UIEditMenuListPage *)v22 appendItemWithWidth:v35];
          [(_UIEditMenuListPage *)v22 width];
          v25 = fmax(v40, v25);

          ++v24;
        }

        while (v24 < [itemIdentifiers count]);
      }

      else
      {
        v25 = 0.0;
      }

      if ([array count] <= 1)
      {
        snapshotCopy = v82;
        v10 = v83;
        v16 = v81;
      }

      else
      {
        lastObject = [array lastObject];
        [array objectAtIndex:{objc_msgSend(array, "count") - 2}];
        v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v43 = *&v21[8 * [lastObject range] - 8];
        [lastObject width];
        v45 = v44;
        [*&v42 width];
        v47 = v46 * 0.5;
        [*&v42 range];
        v49 = v48;
        [lastObject width];
        v51 = v43 + v50;
        v52 = width - v80[0];
        if (v45 < v47 && v49 >= 2 && v51 < v52)
        {
          v80[0] = v42;
          [*&v42 removeLastItemWithWidth:{v43, v52}];
          v55 = lastObject;
          [lastObject prependItemWithWidth:v43];
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v56 = array;
          v57 = [v56 countByEnumeratingWithState:&v89 objects:v94 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v90;
            v16 = v81;
            do
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v90 != v59)
                {
                  objc_enumerationMutation(v56);
                }

                [*(*(&v89 + 1) + 8 * i) width];
                v25 = fmax(v25, v61);
              }

              v58 = [v56 countByEnumeratingWithState:&v89 objects:v94 count:16];
            }

            while (v58);
          }

          else
          {
            v16 = v81;
          }

          snapshotCopy = v82;
          lastObject = v55;
          v42 = v80[0];
        }

        else
        {
          snapshotCopy = v82;
          v16 = v81;
        }

        v10 = v83;
      }
    }

    else
    {
      v25 = 0.0;
    }

    v62 = v16 + v16;
    if ([array count] == 1)
    {
      firstObject = [array firstObject];
      [firstObject enforceMinimumWidth:v62];
    }

    if ([array count])
    {
      [(UIScrollView *)self->_collectionView contentInset];
      v65 = v64;
      v67 = v66;
      v69 = v68;
      lastObject2 = [array lastObject];
      [lastObject2 width];
      v72 = v25 - v71;

      [v10 setContentInset:{v65, v67, v69, v72}];
    }

    [v10 setPages:array];
    collectionViewLayout2 = [(_UIEditMenuListView *)self collectionViewLayout];
    [collectionViewLayout2 setPages:array];

    self->_largestPageWidth = fmax(v62, v25);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    visibleCells = [collectionView2 visibleCells];

    v76 = [visibleCells countByEnumeratingWithState:&v85 objects:v93 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v86;
      do
      {
        for (j = 0; j != v77; ++j)
        {
          if (*v86 != v78)
          {
            objc_enumerationMutation(visibleCells);
          }

          [*(*(&v85 + 1) + 8 * j) setMaximumContentWidth:self->_largestPageWidth];
        }

        v77 = [visibleCells countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v77);
    }

    -[_UIEditMenuListView setScrubbingEnabled:](self, "setScrubbingEnabled:", [array count] == 1);
    [(UIView *)self setNeedsLayout];
    *&self->_needsUpdate &= ~1u;

    v10 = v83;
  }
}

- (void)_didTapLeftDirectionalButton:(id)button
{
  v3 = *(&self->super._viewFlags + 2);
  collectionView = [(_UIEditMenuListView *)self collectionView];
  v5 = collectionView;
  if ((v3 & 0x400000) != 0)
  {
    [collectionView incrementTargetPage];
  }

  else
  {
    [collectionView decrementTargetPage];
  }
}

- (void)_didTapRightDirectionalButton:(id)button
{
  v3 = *(&self->super._viewFlags + 2);
  collectionView = [(_UIEditMenuListView *)self collectionView];
  v5 = collectionView;
  if ((v3 & 0x400000) != 0)
  {
    [collectionView decrementTargetPage];
  }

  else
  {
    [collectionView incrementTargetPage];
  }
}

- (void)_performHandoffFromSourceView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    viewCopy = [(_UIEditMenuListView *)self effectiveBackgroundView];
  }

  v6 = viewCopy;
  delegate = [(_UIEditMenuListView *)self delegate];
  [delegate editMenuListViewDidActivateHandoff:self source:v6];
}

- (void)scrollViewDidScroll:(id)scroll
{
  selectionGestureRecognizer = [(_UIEditMenuListView *)self selectionGestureRecognizer];
  state = [selectionGestureRecognizer state];

  if (state)
  {
    selectionGestureRecognizer2 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
    [selectionGestureRecognizer2 setEnabled:0];

    selectionGestureRecognizer3 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
    [selectionGestureRecognizer3 setEnabled:1];
  }

  [(_UIEditMenuListView *)self _updateHighlightState];
  if (![(_UIEditMenuListView *)self axis])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)scrollViewWillEndDragging:(id)dragging withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset
{
  v7 = [(_UIEditMenuListView *)self collectionView:dragging];
  [v7 pageProgressForContentOffset:1 clamped:{offset->x, offset->y}];
  v9 = v8;

  collectionView = [(_UIEditMenuListView *)self collectionView];
  [collectionView setTargetPage:llround(v9)];
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  traitCollection = [(UIView *)self traitCollection];
  v7 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v8 = traitCollection;
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  menuItemTitleFont = [v9 menuItemTitleFont];
  v11 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

  [v7 arrowSize];
  v13 = v12;
  v14 = v8;
  v15 = _UIEditMenuGetPlatformMetrics([v14 userInterfaceIdiom]);
  menuItemTitleFont2 = [v15 menuItemTitleFont];
  v17 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v14];

  [v17 _scaledValueForValue:0 useLanguageAwareScaling:v13];
  v19 = v18;
  [v14 displayScale];
  v21 = v20;

  UIRoundToScale(v19, fmax(v21, 1.0));
  [v7 arrowSize];
  v23 = v22;
  v24 = v14;
  v25 = _UIEditMenuGetPlatformMetrics([v24 userInterfaceIdiom]);
  menuItemTitleFont3 = [v25 menuItemTitleFont];
  v27 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

  [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
  v29 = v28;
  [v24 displayScale];
  v31 = v30;

  UIRoundToScale(v29, fmax(v31, 1.0));
  v33 = v32;

  arrowDirection = [(_UIEditMenuListView *)self arrowDirection];
  axis = [(_UIEditMenuListView *)self axis];
  v36 = 0.0;
  if (axis == (arrowDirection - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    v37 = 0.0;
LABEL_3:
    v38 = 0.0;
LABEL_4:
    v39 = 0.0;
    goto LABEL_5;
  }

  switch(arrowDirection)
  {
    case 4:
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      v36 = v33;
      break;
    case 3:
      v37 = 0.0;
      v38 = v33;
      goto LABEL_4;
    case 1:
      v37 = v33;
      goto LABEL_3;
    default:
      v37 = 0.0;
      v38 = 0.0;
      v39 = v33;
      break;
  }

LABEL_5:
  [cellCopy setArrowEdgeInsets:{v37, v38, v39, v36}];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  maskLayer = [(_UIEditMenuListView *)self maskLayer];
  if (maskLayer && (v9 = maskLayer, -[_UIEditMenuListView maskLayer](self, "maskLayer"), v10 = objc_claimAutoreleasedReturnValue(), BoundingBox = CGPathGetBoundingBox([v10 path]), v16.x = x, v16.y = y, v11 = CGRectContainsPoint(BoundingBox, v16), v10, v9, !v11))
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIEditMenuListView;
    v12 = [(UIView *)&v14 hitTest:eventCopy withEvent:x, y];
  }

  return v12;
}

- (id)_indexPathForGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  leftButton = [(_UIEditMenuListView *)self leftButton];
  if (_isGestureRecognizerLocationInsideView(recognizerCopy, leftButton))
  {
    leftButton2 = [(_UIEditMenuListView *)self leftButton];
    [leftButton2 alpha];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = MEMORY[0x1E696AC88];
      v10 = 0;
LABEL_8:
      v15 = [v9 indexPathWithIndex:v10];
      goto LABEL_17;
    }
  }

  else
  {
  }

  rightButton = [(_UIEditMenuListView *)self rightButton];
  if (_isGestureRecognizerLocationInsideView(recognizerCopy, rightButton))
  {
    rightButton2 = [(_UIEditMenuListView *)self rightButton];
    [rightButton2 alpha];
    v14 = v13;

    if (v14 > 0.0)
    {
      v9 = MEMORY[0x1E696AC88];
      v10 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  menuContainerView = [(_UIEditMenuListView *)self menuContainerView];
  isGestureRecognizerLocationInsideView = _isGestureRecognizerLocationInsideView(recognizerCopy, menuContainerView);

  if (isGestureRecognizerLocationInsideView)
  {
    collectionView = [(_UIEditMenuListView *)self collectionView];
    [recognizerCopy locationInView:collectionView];
    v20 = v19;
    v22 = v21;

    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    v15 = [collectionView2 indexPathForItemAtPoint:{v20, v22}];

    collectionView3 = [(_UIEditMenuListView *)self collectionView];
    v25 = [collectionView3 cellForItemAtIndexPath:v15];

    securePasteButtonSlotView = [v25 securePasteButtonSlotView];

    if (securePasteButtonSlotView)
    {
      securePasteButtonSlotView2 = [v25 securePasteButtonSlotView];
      collectionView4 = [(_UIEditMenuListView *)self collectionView];
      [securePasteButtonSlotView2 convertPoint:collectionView4 fromView:{v20, v22}];
      v30 = v29;
      v32 = v31;

      if (([securePasteButtonSlotView2 pointInside:0 withEvent:{v30, v32}] & 1) == 0)
      {

        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15;
}

- (void)_handleSelectionGesture:(id)gesture
{
  gestureCopy = gesture;
  v4 = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:?];
  collectionView = [(_UIEditMenuListView *)self collectionView];
  if ([collectionView isDecelerating])
  {
    collectionView2 = [(_UIEditMenuListView *)self collectionView];
    panGestureRecognizer = [collectionView2 panGestureRecognizer];
    v8 = [panGestureRecognizer state] == 5;
  }

  else
  {
    v8 = 1;
  }

  state = [gestureCopy state];
  v10 = v4;
  if ((state - 1) < 2)
  {
    goto LABEL_17;
  }

  if (state != 3)
  {
    v10 = 0;
LABEL_17:
    [(_UIEditMenuListView *)self setScrubbedIndexPath:v10];
LABEL_18:
    [(_UIEditMenuListView *)self _updateHighlightState];
    goto LABEL_19;
  }

  [(_UIEditMenuListView *)self setScrubbedIndexPath:0];
  if (v4)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = [(_UIEditMenuListView *)self _canSelectItemAtIndexPath:v4];
  [(_UIEditMenuListView *)self _updateHighlightState];
  if (v12)
  {
    v13 = [(UICollectionViewDiffableDataSource *)self->_dataSource itemIdentifierForIndexPath:v4];
    menuElement = [v13 menuElement];

    if ([(_UIEditMenuListView *)self _hasPasteAuthentication])
    {
      _activeTouchesEvent = [(UIGestureRecognizer *)gestureCopy _activeTouchesEvent];
      if (_activeTouchesEvent)
      {
        v16 = _activeTouchesEvent;
        v17 = [menuElement _acceptBoolMenuVisit:0 commandVisit:&__block_literal_global_483 actionVisit:&__block_literal_global_487_0];

        if (v17)
        {
          _activeTouchesEvent2 = [(UIGestureRecognizer *)gestureCopy _activeTouchesEvent];
          _authenticationMessage = [_activeTouchesEvent2 _authenticationMessage];
          [UIPasteboard _attemptAuthenticationWithMessage:_authenticationMessage];
        }
      }
    }

    [(_UIEditMenuListView *)self _selectItemAtIndexPath:v4];
  }

LABEL_19:
}

- (void)_handleHoverGesture:(id)gesture
{
  gestureCopy = gesture;
  v7 = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:gestureCopy];
  state = [gestureCopy state];

  if ((state - 1) >= 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  [(_UIEditMenuListView *)self setHoveredIndexPath:v6];
  [(_UIEditMenuListView *)self _updateHighlightState];
}

- (void)_handlePanGesture:(id)gesture
{
  gestureCopy = gesture;
  customBackgroundPlatterView = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  v6 = customBackgroundPlatterView;
  if (customBackgroundPlatterView)
  {
    backgroundView = customBackgroundPlatterView;
  }

  else
  {
    backgroundView = [(_UIEditMenuListView *)self backgroundView];
  }

  v8 = backgroundView;

  [gestureCopy translationInView:self];
  v10 = v9;
  v12 = v11;
  state = [gestureCopy state];
  _shouldReverseLayoutDirection = [(UIView *)self _shouldReverseLayoutDirection];
  v15 = v10 > 0.0;
  if (_shouldReverseLayoutDirection)
  {
    v15 = v10 < 0.0;
  }

  if (v15)
  {
    v10 = 0.0;
    [gestureCopy setTranslation:self inView:{0.0, v12}];
  }

  [v8 bounds];
  v16 = fmin(CGRectGetWidth(v34), 120.0);
  if (_shouldReverseLayoutDirection)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v16;
  }

  if (state == 3 && fabs(v10) > 44.0)
  {
    [gestureCopy velocityInView:self];
    v10 = v10 + v18 * 0.25;
  }

  v19 = 0.0;
  v20 = fmax(fmin(v10 / v17, 1.0), 0.0);
  v21 = v20 < 1.0;
  if (v20 < 1.0)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 1.57079633;
  }

  v23 = v20 * 1.57079633 * 0.8;
  v24 = 0.35;
  if (state == 2 && v21)
  {
    v24 = 0.1;
    v25 = v23;
  }

  else
  {
    v25 = v22;
  }

  v26 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:v24, v22];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __41___UIEditMenuListView__handlePanGesture___block_invoke;
  v33[3] = &unk_1E70F32F0;
  v33[4] = self;
  *&v33[5] = v25;
  [UIView _animateUsingSpringBehavior:v26 tracking:0 animations:v33 completion:0];
  v27 = fabs(v10);
  if (state == 2)
  {
    UIRoundToViewScale(self);
    v19 = v28;
  }

  self->_additionalWidthFromInteraction = v19;
  [(UIView *)self setNeedsLayout];
  if ((state - 3) > 1)
  {
    [(UIView *)self layoutIfNeeded];
  }

  else
  {
    v29 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:0.8 response:0.3];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __41___UIEditMenuListView__handlePanGesture___block_invoke_2;
    v32[3] = &unk_1E70F3590;
    v32[4] = self;
    [UIView _animateUsingSpringBehavior:v29 tracking:0 animations:v32 completion:0];
  }

  v30 = fabs(v16);
  v31 = v27 >= v30;
  if (self->_shouldHandoffOnLift == v31)
  {
    if (v27 < v30)
    {
      goto LABEL_32;
    }
  }

  else
  {
    self->_shouldHandoffOnLift = v31;
    if (v27 < v30)
    {
      goto LABEL_32;
    }

    [(_UIEditMenuListView *)self _playFeedbackForHandoff];
  }

  if ([gestureCopy state] == 3)
  {
    [(_UIEditMenuListView *)self _playFeedbackForHandoff];
    [(_UIEditMenuListView *)self _performHandoffFromSourceView:0];
  }

LABEL_32:
}

- (void)_playFeedbackForHandoff
{
  if (!self->_feedbackGenerator)
  {
    v3 = [(UIFeedbackGenerator *)[UIImpactFeedbackGenerator alloc] initWithView:self];
    feedbackGenerator = self->_feedbackGenerator;
    self->_feedbackGenerator = v3;
  }

  v5 = CACurrentMediaTime();
  if (v5 - self->_lastFeedbackTime >= 0.35)
  {
    self->_lastFeedbackTime = v5;
    panGestureRecognizer = [(_UIEditMenuListView *)self panGestureRecognizer];
    [panGestureRecognizer locationInView:self];
    v8 = v7;
    v10 = v9;

    feedbackGenerator = [(_UIEditMenuListView *)self feedbackGenerator];
    [feedbackGenerator impactOccurredWithIntensity:0.45 atLocation:{v8, v10}];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selectionGestureRecognizer = [(_UIEditMenuListView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == beginCopy)
  {
    layer = [(UIView *)self layer];
    presentationLayer = [layer presentationLayer];
    [presentationLayer opacity];
    v11 = v10;

    if (v11 < 0.9)
    {
      v7 = 0;
      goto LABEL_9;
    }

    collectionView = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:beginCopy];
    v7 = collectionView != 0;
LABEL_8:

    goto LABEL_9;
  }

  panGestureRecognizer = [(_UIEditMenuListView *)self panGestureRecognizer];

  if (panGestureRecognizer == beginCopy)
  {
    collectionView = [(_UIEditMenuListView *)self collectionView];
    pages = [collectionView pages];
    v7 = [pages count] > 1;

    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  gestureRecognizerCopy = gestureRecognizer;
  recognizerCopy = recognizer;
  selectionGestureRecognizer = [(_UIEditMenuListView *)self selectionGestureRecognizer];

  if (selectionGestureRecognizer == recognizerCopy)
  {
    collectionView = [(_UIEditMenuListView *)self collectionView];
    panGestureRecognizer = [collectionView panGestureRecognizer];
    if (panGestureRecognizer == gestureRecognizerCopy)
    {
      v9 = 1;
    }

    else
    {
      panGestureRecognizer2 = [(_UIEditMenuListView *)self panGestureRecognizer];
      v9 = panGestureRecognizer2 == gestureRecognizerCopy;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateHighlightState
{
  collectionView = [(_UIEditMenuListView *)self collectionView];
  isDragging = [collectionView isDragging];

  scrubbedIndexPath = [(_UIEditMenuListView *)self scrubbedIndexPath];
  hoveredIndexPath = [(_UIEditMenuListView *)self hoveredIndexPath];
  if (hoveredIndexPath)
  {
    v6 = hoveredIndexPath;
  }

  else
  {
    v6 = scrubbedIndexPath;
  }

  v7 = v6;
  v8 = v7;
  if (isDragging)
  {
    [(_UIEditMenuListView *)self highlightedIndexPath];
  }

  else if (v7)
  {
    [(_UIEditMenuListView *)self _highlightItemAtIndexPath:v7];
    goto LABEL_9;
  }

  [(_UIEditMenuListView *)self _unhighlightCurrentlyHighlightedItem];
LABEL_9:
}

- (BOOL)_canSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuListView.m" lineNumber:1244 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  dataSource = [(_UIEditMenuListView *)self dataSource];
  v7 = [dataSource itemIdentifierForIndexPath:pathCopy];
  menuElement = [v7 menuElement];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    primaryActionHandler = [menuElement primaryActionHandler];
    v10 = primaryActionHandler != 0;
  }

  else if ([menuElement _isLeaf])
  {
    v10 = ([menuElement attributes] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_selectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v20 = pathCopy;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIEditMenuListView.m" lineNumber:1258 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    pathCopy = 0;
  }

  if ([(_UIEditMenuListView *)self _canSelectItemAtIndexPath:pathCopy])
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
    v7 = [v20 isEqual:v6];

    if (v7)
    {
      leftButton = [(_UIEditMenuListView *)self leftButton];
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
      v10 = [v20 isEqual:v9];

      if (!v10)
      {
        dataSource = [(_UIEditMenuListView *)self dataSource];
        v13 = [dataSource itemIdentifierForIndexPath:v20];
        menuElement = [v13 menuElement];

        collectionView = [(_UIEditMenuListView *)self collectionView];
        v15 = [collectionView cellForItemAtIndexPath:v20];

        if (v15)
        {
          effectiveBackgroundView = v15;
        }

        else
        {
          effectiveBackgroundView = [(_UIEditMenuListView *)self effectiveBackgroundView];
        }

        v17 = effectiveBackgroundView;
        delegate = [(_UIEditMenuListView *)self delegate];
        [delegate editMenuListView:self didSelectMenuElement:menuElement source:v17];

        goto LABEL_13;
      }

      leftButton = [(_UIEditMenuListView *)self rightButton];
    }

    menuElement = leftButton;
    [leftButton sendActionsForControlEvents:0x2000];
LABEL_13:
  }
}

- (void)_highlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (([(NSIndexPath *)self->_highlightedIndexPath isEqual:?]& 1) == 0)
  {
    [(_UIEditMenuListView *)self _unhighlightCurrentlyHighlightedItem];
    if ([(_UIEditMenuListView *)self _canSelectItemAtIndexPath:pathCopy])
    {
      objc_storeStrong(&self->_highlightedIndexPath, path);
      v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
      v6 = [pathCopy isEqual:v5];

      if (v6)
      {
        v7 = 584;
LABEL_7:
        [*(&self->super.super.super.isa + v7) setHighlighted:1];
        goto LABEL_9;
      }

      v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
      v9 = [pathCopy isEqual:v8];

      if (v9)
      {
        v7 = 592;
        goto LABEL_7;
      }

      collectionView = [(_UIEditMenuListView *)self collectionView];
      v11 = [collectionView cellForItemAtIndexPath:pathCopy];

      [v11 setHighlighted:1];
      collectionViewLayout = [(_UIEditMenuListView *)self collectionViewLayout];
      [collectionViewLayout setIndexPathForHighlightedItem:pathCopy];
    }
  }

LABEL_9:
}

- (void)_unhighlightCurrentlyHighlightedItem
{
  highlightedIndexPath = self->_highlightedIndexPath;
  if (!highlightedIndexPath)
  {
    return;
  }

  v4 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  v5 = [(NSIndexPath *)highlightedIndexPath isEqual:v4];

  if (v5)
  {
    v6 = 584;
  }

  else
  {
    v7 = self->_highlightedIndexPath;
    v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
    LODWORD(v7) = [(NSIndexPath *)v7 isEqual:v8];

    if (!v7)
    {
      v9 = self->_highlightedIndexPath;
      collectionView = [(_UIEditMenuListView *)self collectionView];
      v11 = [collectionView cellForItemAtIndexPath:v9];

      [v11 setHighlighted:0];
      collectionViewLayout = [(_UIEditMenuListView *)self collectionViewLayout];
      [collectionViewLayout setIndexPathForHighlightedItem:0];

      goto LABEL_9;
    }

    v6 = 592;
  }

  [*(&self->super.super.super.isa + v6) setHighlighted:0];
LABEL_9:
  v13 = self->_highlightedIndexPath;
  self->_highlightedIndexPath = 0;
}

- (void)setArrowDirection:(int64_t)direction
{
  if (self->_arrowDirection != direction)
  {
    self->_arrowDirection = direction;
    [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
  }
}

- (void)_updateArrowEdgeInsets
{
  v53 = *MEMORY[0x1E69E9840];
  traitCollection = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  v5 = traitCollection;
  v6 = _UIEditMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  menuItemTitleFont = [v6 menuItemTitleFont];
  v8 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];

  [v4 arrowSize];
  v10 = v9;
  v11 = v5;
  v12 = _UIEditMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  menuItemTitleFont2 = [v12 menuItemTitleFont];
  v14 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v11];

  [v14 _scaledValueForValue:0 useLanguageAwareScaling:v10];
  v16 = v15;
  [v11 displayScale];
  v18 = v17;

  UIRoundToScale(v16, fmax(v18, 1.0));
  [v4 arrowSize];
  v20 = v19;
  v21 = v11;
  v22 = _UIEditMenuGetPlatformMetrics([v21 userInterfaceIdiom]);
  menuItemTitleFont3 = [v22 menuItemTitleFont];
  v24 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v21];

  [v24 _scaledValueForValue:0 useLanguageAwareScaling:v20];
  v26 = v25;
  [v21 displayScale];
  v28 = v27;

  UIRoundToScale(v26, fmax(v28, 1.0));
  v30 = v29;

  arrowDirection = [(_UIEditMenuListView *)self arrowDirection];
  axis = [(_UIEditMenuListView *)self axis];
  v33 = (arrowDirection - 5) < 0xFFFFFFFFFFFFFFFELL;
  if (arrowDirection == 1)
  {
    v34 = v30;
  }

  else
  {
    v34 = 0.0;
  }

  if (arrowDirection == 1)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v30;
  }

  if (arrowDirection == 3)
  {
    v34 = 0.0;
    v36 = v30;
  }

  else
  {
    v36 = 0.0;
  }

  if (arrowDirection == 3)
  {
    v35 = 0.0;
  }

  if (arrowDirection == 4)
  {
    v34 = 0.0;
    v36 = 0.0;
    v35 = 0.0;
    v37 = v30;
  }

  else
  {
    v37 = 0.0;
  }

  if (axis == v33)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v34;
  }

  if (axis == v33)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36;
  }

  if (axis == v33)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v35;
  }

  if (axis == v33)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v37;
  }

  [(_UIEditMenuPageButton *)self->_leftButton setArrowEdgeInsets:v38, v39, v40, v41, v37];
  [(_UIEditMenuPageButton *)self->_rightButton setArrowEdgeInsets:v38, v39, v40, v41];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  collectionView = [(_UIEditMenuListView *)self collectionView];
  visibleCells = [collectionView visibleCells];

  v44 = [visibleCells countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v49;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v49 != v46)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v48 + 1) + 8 * i) setArrowEdgeInsets:{v38, v39, v40, v41}];
      }

      v45 = [visibleCells countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v45);
  }

  [(UIView *)self setNeedsLayout];
}

- (void)_updateMaskingLayerWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (!CGRectIsEmpty(frame))
  {
    maskLayer = [(_UIEditMenuListView *)self maskLayer];

    if (maskLayer)
    {
      traitCollection = [(UIView *)self traitCollection];
      v9 = _UIEditMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
      [(_UIEditMenuListView *)self _resolvedCornerRadiusForRect:x, y, width, height];
      v11 = [UIBezierPath _bezierPathWithPillRect:x cornerRadius:y, width, height, v10];
      [v9 arrowSize];
      if (v13 != *MEMORY[0x1E695F060] || v12 != *(MEMORY[0x1E695F060] + 8))
      {
        superview = [(UIView *)self superview];
        [(UIView *)self center];
        [superview convertPoint:self toView:?];
        v93 = v17;
        v94 = v16;

        arrowDirection = [(_UIEditMenuListView *)self arrowDirection];
        v19 = traitCollection;
        v20 = _UIEditMenuGetPlatformMetrics([v19 userInterfaceIdiom]);
        v21 = v19;
        v22 = _UIEditMenuGetPlatformMetrics([v21 userInterfaceIdiom]);
        menuItemTitleFont = [v22 menuItemTitleFont];
        v24 = [menuItemTitleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v21];

        [v20 arrowSize];
        v26 = v25;
        v27 = v21;
        v28 = _UIEditMenuGetPlatformMetrics([v27 userInterfaceIdiom]);
        menuItemTitleFont2 = [v28 menuItemTitleFont];
        v30 = [menuItemTitleFont2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v27];

        [v30 _scaledValueForValue:0 useLanguageAwareScaling:v26];
        v32 = v31;
        [v27 displayScale];
        v34 = v33;

        UIRoundToScale(v32, fmax(v34, 1.0));
        v96 = v35;

        [v20 arrowSize];
        v37 = v36;
        v38 = v27;
        v39 = _UIEditMenuGetPlatformMetrics([v38 userInterfaceIdiom]);
        menuItemTitleFont3 = [v39 menuItemTitleFont];
        v41 = [menuItemTitleFont3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v38];

        [v41 _scaledValueForValue:0 useLanguageAwareScaling:v37];
        v43 = v42;
        [v38 displayScale];
        v45 = v44;

        UIRoundToScale(v43, fmax(v45, 1.0));
        v95 = v46;

        v47 = v38;
        v48 = _UIEditMenuGetPlatformMetrics([v47 userInterfaceIdiom]);
        [v48 arrowSideRadius];
        v50 = v49;
        v51 = v47;
        v52 = _UIEditMenuGetPlatformMetrics([v51 userInterfaceIdiom]);
        menuItemTitleFont4 = [v52 menuItemTitleFont];
        v54 = [menuItemTitleFont4 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v51];

        [v54 _scaledValueForValue:0 useLanguageAwareScaling:v50];
        v56 = v55;
        [v51 displayScale];
        v58 = v57;

        UIRoundToScale(v56, fmax(v58, 1.0));
        v60 = v59;

        v61 = v51;
        v62 = _UIEditMenuGetPlatformMetrics([v61 userInterfaceIdiom]);
        [v62 arrowTipRadius];
        v64 = v63;
        v65 = v61;
        v66 = _UIEditMenuGetPlatformMetrics([v65 userInterfaceIdiom]);
        menuItemTitleFont5 = [v66 menuItemTitleFont];
        v68 = [menuItemTitleFont5 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v65];

        [v68 _scaledValueForValue:0 useLanguageAwareScaling:v64];
        v70 = v69;
        [v65 displayScale];
        v72 = v71;

        UIRoundToScale(v70, fmax(v72, 1.0));
        v74 = v73;

        v75 = v11;
        v76 = x;
        v77 = y;
        v78 = width;
        v79 = height;
        if ((arrowDirection - 3) > 1)
        {
          if (arrowDirection == 2)
          {
            MaxY = CGRectGetMaxY(*&v76);
            v100.origin.x = x;
            v100.origin.y = y;
            v100.size.width = width;
            v100.size.height = height;
            v84 = v95 + CGRectGetMaxY(v100);
            v85 = -5.0;
          }

          else
          {
            MaxY = CGRectGetMinY(*&v76);
            v102.origin.x = x;
            v102.origin.y = y;
            v102.size.width = width;
            v102.size.height = height;
            v84 = CGRectGetMinY(v102) - v95;
            v85 = 5.0;
          }

          v89 = v94 + v96 * 0.5;
          v90 = v94 - v96 * 0.5;
          v91 = MaxY + 0.0;
          if (arrowDirection == 2)
          {
            _appendBezierPathForPoints(v75, v60, v74, v94 + v96 * 0.5, MaxY, v94 - v96 * 0.5, MaxY, v89 + v60, v91, v90 - v60, MaxY + 0.0, v94, v84, 0.0, v85);
          }

          else
          {
            _appendBezierPathForPoints(v75, v60, v74, v94 - v96 * 0.5, MaxY, v89, MaxY, v90 - v60, v91, v89 + v60, MaxY + 0.0, v94, v84, 0.0, v85);
          }
        }

        else
        {
          if (arrowDirection == 4)
          {
            MaxX = CGRectGetMaxX(*&v76);
            v99.origin.x = x;
            v99.origin.y = y;
            v99.size.width = width;
            v99.size.height = height;
            v81 = v95 + CGRectGetMaxX(v99);
            v82 = -5.0;
          }

          else
          {
            MaxX = CGRectGetMinX(*&v76);
            v101.origin.x = x;
            v101.origin.y = y;
            v101.size.width = width;
            v101.size.height = height;
            v81 = CGRectGetMinX(v101) - v95;
            v82 = 5.0;
          }

          v86 = v93 - v96 * 0.5;
          v87 = v93 + v96 * 0.5;
          v88 = MaxX + 0.0;
          if (arrowDirection == 4)
          {
            _appendBezierPathForPoints(v75, v60, v74, MaxX, v93 - v96 * 0.5, MaxX, v93 + v96 * 0.5, v88, v86 - v60, MaxX + 0.0, v87 + v60, v81, v93, v82, 0.0);
          }

          else
          {
            _appendBezierPathForPoints(v75, v60, v74, MaxX, v93 + v96 * 0.5, MaxX, v86, v88, v87 + v60, MaxX + 0.0, v86 - v60, v81, v93, v82, 0.0);
          }
        }
      }

      -[CAShapeLayer setPath:](self->_maskLayer, "setPath:", [v11 CGPath]);
      if ([(_UIEditMenuListView *)self hasShadow])
      {
        shadowView = [(_UIEditMenuListView *)self shadowView];
        [shadowView setPath:v11];
      }
    }
  }
}

- (double)_resolvedCornerRadiusForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = objc_opt_class();
  traitCollection = [(UIView *)self traitCollection];
  [v8 _resolvedCornerRadiusForRect:objc_msgSend(traitCollection userInterfaceIdiom:"userInterfaceIdiom") axis:{-[_UIEditMenuListView axis](self, "axis"), x, y, width, height}];
  v11 = v10;

  return v11;
}

+ (double)_resolvedCornerRadiusForRect:(CGRect)rect userInterfaceIdiom:(int64_t)idiom axis:(int64_t)axis
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = _UIEditMenuGetPlatformMetrics(idiom);
  v11 = v10;
  if (axis)
  {
    [v10 verticalMenuCornerRadius];
  }

  else
  {
    [v10 horizontalMenuCornerRadius];
  }

  v13 = v12;
  if (v12 == 1.79769313e308)
  {
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v14 = CGRectGetHeight(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    v13 = fmin(v14, CGRectGetWidth(v17)) * 0.5;
  }

  return v13;
}

- (BOOL)hasShadow
{
  shadowView = [(_UIEditMenuListView *)self shadowView];
  v3 = shadowView != 0;

  return v3;
}

- (id)backgroundMaterialGroupName
{
  backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  if (!backgroundMaterialGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringWithFormat:@"edit-menu-background-%@", uUIDString];
    v8 = self->_backgroundMaterialGroupName;
    self->_backgroundMaterialGroupName = v7;

    backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  }

  return backgroundMaterialGroupName;
}

- (_UIEditMenuListViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end