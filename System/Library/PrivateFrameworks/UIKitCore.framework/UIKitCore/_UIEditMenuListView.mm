@interface _UIEditMenuListView
+ (double)_resolvedCornerRadiusForRect:(CGRect)a3 userInterfaceIdiom:(int64_t)a4 axis:(int64_t)a5;
+ (double)minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)a3 traitCollection:(id)a4;
- (BOOL)_canSelectItemAtIndexPath:(id)a3;
- (BOOL)_hasDisplayedMenu;
- (BOOL)_hasPasteAuthentication;
- (BOOL)_isPaginationDirtyForContainerSize:(CGSize)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)hasShadow;
- (BOOL)scrubbingEnabled;
- (CGSize)_intrinsicHorizontalContentSizeForTraitCollection:(id)a3 containerSize:(CGSize)a4;
- (CGSize)_intrinsicVerticalContentSizeForContainer:(id)a3 containerSize:(CGSize)a4;
- (CGSize)_titleViewSizeForFittingWidth:(double)a3;
- (CGSize)_verticalMenuContentSizeFittingContainerSize:(CGSize)a3 traits:(id)a4;
- (CGSize)arrowSizeForDirection:(int64_t)a3;
- (CGSize)intrinsicContentSizeForContainer:(id)a3 containerSize:(CGSize)a4;
- (_UIEditMenuListView)initWithDelegate:(id)a3 menu:(id)a4 titleView:(id)a5 preferredElementDisplayMode:(unint64_t)a6;
- (_UIEditMenuListViewDelegate)delegate;
- (double)_collectionViewWidthForPageProgress:(double)a3;
- (double)_minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)a3;
- (double)_resolvedCornerRadiusForRect:(CGRect)a3;
- (id)_indexPathForGestureRecognizer:(id)a3;
- (id)backgroundMaterialGroupName;
- (id)collectionViewLayout;
- (id)effectiveBackgroundView;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_contentSizeCategoryDidChange;
- (void)_createDataSource;
- (void)_createViewHierarchy;
- (void)_didTapLeftDirectionalButton:(id)a3;
- (void)_didTapRightDirectionalButton:(id)a3;
- (void)_handleHoverGesture:(id)a3;
- (void)_handlePanGesture:(id)a3;
- (void)_handleSelectionGesture:(id)a3;
- (void)_highlightItemAtIndexPath:(id)a3;
- (void)_performHandoffFromSourceView:(id)a3;
- (void)_playFeedbackForHandoff;
- (void)_reloadMenuAnimated:(BOOL)a3;
- (void)_selectItemAtIndexPath:(id)a3;
- (void)_unhighlightCurrentlyHighlightedItem;
- (void)_updateArrowEdgeInsets;
- (void)_updateHighlightState;
- (void)_updateMaskingLayerWithFrame:(CGRect)a3;
- (void)_updatePaginationForSnapshot:(id)a3 containerSize:(CGSize)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)layoutSubviews;
- (void)reloadWithMenu:(id)a3 titleView:(id)a4 animated:(BOOL)a5;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5;
- (void)setArrowDirection:(int64_t)a3;
- (void)setAxis:(int64_t)a3;
- (void)setBounds:(CGRect)a3;
- (void)setScrubbingEnabled:(BOOL)a3;
@end

@implementation _UIEditMenuListView

+ (double)minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)a3 traitCollection:(id)a4
{
  v6 = a4;
  v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  v8 = [v6 userInterfaceIdiom];
  [a1 _resolvedCornerRadiusForRect:v8 userInterfaceIdiom:a3 axis:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v10 = v9 * 1.528665;
  v11 = v6;
  v12 = _UIEditMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = v11;
  v14 = _UIEditMenuGetPlatformMetrics([v13 userInterfaceIdiom]);
  v15 = [v14 menuItemTitleFont];
  v16 = [v15 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v13];

  [v12 arrowSize];
  v18 = v17;
  v19 = v13;
  v20 = _UIEditMenuGetPlatformMetrics([v19 userInterfaceIdiom]);
  v21 = [v20 menuItemTitleFont];
  v22 = [v21 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v19];

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
  v33 = [v32 menuItemTitleFont];
  v34 = [v33 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v31];

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
  v45 = [v44 menuItemTitleFont];
  v46 = [v45 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v43];

  [v46 _scaledValueForValue:0 useLanguageAwareScaling:v42];
  v48 = v47;
  [v43 displayScale];
  v50 = v49;

  UIRoundToScale(v48, fmax(v50, 1.0));
  v52 = v51;

  return ceil(v28 * 0.5 + v10 + v52);
}

- (_UIEditMenuListView)initWithDelegate:(id)a3 menu:(id)a4 titleView:(id)a5 preferredElementDisplayMode:(unint64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = _UIEditMenuListView;
  v14 = [(UIView *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v14)
  {
    if (!(v12 | v13))
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:v14 file:@"_UIEditMenuListView.m" lineNumber:149 description:@"Cannot present an edit menu without a valid menu"];
    }

    objc_storeWeak(&v14->_delegate, v11);
    objc_storeStrong(&v14->_displayedMenu, a4);
    objc_storeStrong(&v14->_titleView, a5);
    v14->_preferredElementDisplayMode = a6;
    v14->_arrowDirection = 2;
    v14->_largestPageWidth = 0.0;
    [(_UIEditMenuListView *)v14 _createViewHierarchy];
    [(_UIEditMenuListView *)v14 _createDataSource];
    [(UIView *)v14 _setDisableDictationTouchCancellation:1];
  }

  return v14;
}

- (void)reloadWithMenu:(id)a3 titleView:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16 = a4;
  titleView = self->_titleView;
  if (titleView)
  {
    [(UIView *)titleView removeFromSuperview];
  }

  displayedMenu = self->_displayedMenu;
  self->_displayedMenu = v8;
  v11 = v8;

  objc_storeStrong(&self->_titleView, a4);
  v12 = [(_UIEditMenuListView *)self titleContainerView];
  [v12 setHidden:v16 == 0];

  v13 = v11 == 0;
  v14 = [(_UIEditMenuListView *)self titleSeparatorView];
  [v14 setHidden:v13];

  if (self->_titleView)
  {
    v15 = [(_UIEditMenuListView *)self titleContainerView];
    [v15 addSubview:v16];
  }

  [(_UIEditMenuListView *)self _reloadMenuAnimated:v5];
}

- (BOOL)_hasDisplayedMenu
{
  v2 = [(_UIEditMenuListView *)self displayedMenu];
  v3 = ([v2 metadata] >> 24) & 1;

  return v3;
}

- (CGSize)_titleViewSizeForFittingWidth:(double)a3
{
  v4 = [(_UIEditMenuListView *)self titleView];
  [v4 systemLayoutSizeFittingSize:{a3, 1.79769313e308}];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)intrinsicContentSizeForContainer:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  if ([(_UIEditMenuListView *)self axis])
  {
    [(_UIEditMenuListView *)self _intrinsicVerticalContentSizeForContainer:v7 containerSize:width, height];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v12 = [v7 traitCollection];

    [(_UIEditMenuListView *)self _intrinsicHorizontalContentSizeForTraitCollection:v12 containerSize:width, height];
    v9 = v13;
    v11 = v14;
    v7 = v12;
  }

  v15 = v9;
  v16 = v11;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_intrinsicHorizontalContentSizeForTraitCollection:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

  v10 = _UIEditMenuGetPlatformMetrics([v7 userInterfaceIdiom]);
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
    v16 = [(_UIEditMenuListView *)self dataSource];
    v17 = [v16 snapshot];
    [v15 setSingleItemMenu:{objc_msgSend(v17, "numberOfItems") == 1}];

    [_UIEditMenuListViewCell layoutSizeForItem:v15 traitCollection:v7 containerSize:v14, height];
    v19 = v18;
    if ([(_UIEditMenuListView *)self _isPaginationDirtyForContainerSize:v14, height])
    {
      [(_UIEditMenuListView *)self _updatePaginationForSnapshot:0 containerSize:v14, height];
    }

    v20 = [(_UIEditMenuListView *)self leftButton];
    [v20 sizeThatFits:{v14, height}];
    v22 = v21;

    v23 = [(_UIEditMenuListView *)self collectionView];
    v24 = [v23 pages];
    v25 = [v24 count];

    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v26 = [(_UIEditMenuListView *)self collectionView];
    v27 = [v26 pages];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __87___UIEditMenuListView__intrinsicHorizontalContentSizeForTraitCollection_containerSize___block_invoke;
    v35[3] = &unk_1E7108DB0;
    v35[6] = v22;
    v35[4] = &v36;
    v35[5] = v25 - 1;
    [v27 enumerateObjectsUsingBlock:v35];

    v28 = v37[3];
    _Block_object_dispose(&v36, 8);
  }

  else
  {
    v28 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  v29 = [(_UIEditMenuListView *)self titleView];

  if (v29)
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

- (CGSize)_intrinsicVerticalContentSizeForContainer:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [v7 traitCollection];
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  [v9 verticalMenuMaximumHeight];
  v11 = fmin(height, v10);
  if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
  {
    [(_UIEditMenuListView *)self _verticalMenuContentSizeFittingContainerSize:v8 traits:width, v11];
    v13 = 250.0;
    if (v14 > 250.0)
    {
      if ([v8 userInterfaceIdiom])
      {
        v15 = 343.0;
      }

      else
      {
        [UIViewController _horizontalContentMarginForView:v7];
        v19 = v18;
        v20 = [v7 _screen];
        [v20 _referenceBounds];
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

      [(_UIEditMenuListView *)self _verticalMenuContentSizeFittingContainerSize:v8 traits:v13, v11];
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
  v21 = [(_UIEditMenuListView *)self titleView];

  if (v21)
  {
    [(_UIEditMenuListView *)self _titleViewSizeForFittingWidth:v13];
    v23 = v22;
    v25 = v24;
    v26 = [(_UIEditMenuListView *)self _hasDisplayedMenu];
    v27 = fmin(v11, v16 + v25);
    if (v26)
    {
      v16 = v27;
    }

    else
    {
      v16 = v25;
    }

    if (!v26)
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

- (CGSize)_verticalMenuContentSizeFittingContainerSize:(CGSize)a3 traits:(id)a4
{
  height = a3.height;
  width = a3.width;
  v25 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v9 = *MEMORY[0x1E695F060];
  v8 = *(MEMORY[0x1E695F060] + 8);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
  v11 = [v10 itemIdentifiers];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v11);
        }

        [_UIEditMenuListViewCell layoutSizeForItem:*(*(&v20 + 1) + 8 * v15) traitCollection:v7 containerSize:width, height];
        v9 = fmax(v9, v16);
        v8 = v8 + v17;
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = v9;
  v19 = v8;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_minimumRequiredWidthForArrowInRoundedListViewForAxis:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(UIView *)self traitCollection];
  [v5 minimumRequiredWidthForArrowInRoundedListViewForAxis:a3 traitCollection:v6];
  v8 = v7;

  return v8;
}

- (CGSize)arrowSizeForDirection:(int64_t)a3
{
  v4 = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
  v6 = v4;
  v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  v8 = [v7 menuItemTitleFont];
  v9 = [v8 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v6];

  [v5 arrowSize];
  v11 = v10;
  v12 = v6;
  v13 = _UIEditMenuGetPlatformMetrics([v12 userInterfaceIdiom]);
  v14 = [v13 menuItemTitleFont];
  v15 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];

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
  v26 = [v25 menuItemTitleFont];
  v27 = [v26 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

  [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
  v29 = v28;
  [v24 displayScale];
  v31 = v30;

  UIRoundToScale(v29, fmax(v31, 1.0));
  v33 = v32;

  if ((a3 - 3) >= 2)
  {
    v34 = v21;
  }

  else
  {
    v34 = v33;
  }

  if ((a3 - 3) >= 2)
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
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = _UIEditMenuGetPlatformMetrics(v4);
  v6 = _UISolariumEnabled();
  v7 = [v5 menuBackgroundConfigurator];

  if (v7)
  {
    v8 = objc_opt_new();
    v9 = [v5 menuBackgroundConfigurator];
    (v9)[2](v9, v8);

    [(UIView *)self addSubview:v8];
    customBackgroundPlatterView = self->_customBackgroundPlatterView;
    self->_customBackgroundPlatterView = v8;
  }

  v11 = self->_customBackgroundPlatterView;
  if (!v11)
  {
    v11 = self;
  }

  v12 = v11;
  v13 = _UIEditMenuGetPlatformMetrics(v4);
  v14 = [UIVisualEffectView alloc];
  v15 = [v13 menuBackgroundEffect];
  v16 = [(UIVisualEffectView *)v14 initWithEffect:v15];

  v17 = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  [(UIVisualEffectView *)v16 _setGroupName:v17];

  v117 = v12;
  [(UIView *)v12 addSubview:v16];
  objc_storeStrong(&self->_backgroundView, v16);
  [v5 arrowSize];
  if (v19 != *MEMORY[0x1E695F060] || v18 != *(MEMORY[0x1E695F060] + 8))
  {
    v20 = objc_opt_new();
    v21 = +[UIColor blackColor];
    -[CAShapeLayer setFillColor:](v20, "setFillColor:", [v21 CGColor]);

    v22 = [(UIView *)v16 layer];
    [v22 setMask:v20];

    maskLayer = self->_maskLayer;
    self->_maskLayer = v20;
  }

  v24 = objc_opt_new();
  menuContainerView = self->_menuContainerView;
  self->_menuContainerView = v24;

  v26 = v6 ^ 1u;
  [(UIView *)self->_menuContainerView setClipsToBounds:v26];
  v27 = [(UIVisualEffectView *)v16 contentView];
  [v27 addSubview:self->_menuContainerView];

  v28 = [_UIEditMenuCollectionView alloc];
  [(UIView *)self _currentScreenScale];
  v30 = _UIEditMenuViewHorizontalCompositionalLayout(v4, v29);
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
  v32 = [(UIVisualEffectView *)v16 contentView];
  v33 = [(UIScrollView *)v31 panGestureRecognizer];
  [v32 addGestureRecognizer:v33];

  v34 = [_UIEditMenuPageButton alloc];
  v35 = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  v36 = [(_UIEditMenuPageButton *)v34 initWithDirection:0 backgroundGroupName:v35];
  leftButton = self->_leftButton;
  self->_leftButton = v36;

  v38 = [(UIVisualEffectView *)v16 contentView];
  [v38 addSubview:self->_leftButton];

  v39 = [_UIEditMenuPageButton alloc];
  v40 = [(_UIEditMenuListView *)self backgroundMaterialGroupName];
  v41 = [(_UIEditMenuPageButton *)v39 initWithDirection:1 backgroundGroupName:v40];
  rightButton = self->_rightButton;
  self->_rightButton = v41;

  v43 = [(UIVisualEffectView *)v16 contentView];
  [v43 addSubview:self->_rightButton];

  v44 = self->_leftButton;
  if (v26)
  {
    [(UIControl *)v44 addTarget:self action:sel__didTapLeftDirectionalButton_ forControlEvents:0x2000];
    v45 = self->_rightButton;
    v47 = sel__didTapRightDirectionalButton_;
    v46 = self;
  }

  else
  {
    [(UIControl *)v44 addTarget:self action:sel__didTapHandoffButton_ forControlEvents:0x2000];
    v45 = self->_rightButton;
    v46 = self;
    v47 = sel__didTapHandoffButton_;
  }

  [(UIControl *)v45 addTarget:v46 action:v47 forControlEvents:0x2000];
  v48 = [(UIView *)self traitCollection];
  v49 = _UIEditMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
  v50 = [UIVisualEffectView alloc];
  v51 = [v49 separatorEffect];
  v52 = [(UIVisualEffectView *)v50 initWithEffect:v51];

  v53 = [v49 separatorEffectColor];
  v54 = [(UIView *)v52 contentView];
  [v54 setBackgroundColor:v53];

  v55 = [(UIView *)v52 contentView];
  v56 = [v55 layer];
  v57 = 1;
  [v56 setAllowsEdgeAntialiasing:1];

  v58 = [(UIView *)v52 contentView];
  [v58 setClipsToBounds:0];

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
  v62 = [(UIVisualEffectView *)v16 contentView];
  [v62 addSubview:self->_titleContainerView];

  if (self->_titleView)
  {
    [(UIView *)self->_titleContainerView addSubview:?];
  }

  [v5 shadowOpacity];
  if (v63 > 0.0)
  {
    v64 = v63;
    v65 = objc_alloc_init(_UIDiffuseShadowView);
    v66 = [(UIView *)self traitCollection];
    v67 = _UIEditMenuGetPlatformMetrics([v66 userInterfaceIdiom]);
    [v67 shadowRadius];
    v69 = v68;
    v70 = v66;
    v71 = _UIEditMenuGetPlatformMetrics([v70 userInterfaceIdiom]);
    v72 = [v71 menuItemTitleFont];
    v73 = [v72 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v70];

    [v73 _scaledValueForValue:0 useLanguageAwareScaling:v69];
    v75 = v74;
    [v70 displayScale];
    v77 = v76;

    UIRoundToScale(v75, fmax(v77, 1.0));
    v79 = v78;

    [(_UIDiffuseShadowView *)v65 setRadius:v79];
    v80 = [(UIView *)self traitCollection];
    v81 = _UIEditMenuGetPlatformMetrics([v80 userInterfaceIdiom]);
    [v81 shadowOffset];
    v83 = v82;
    v84 = v80;
    v85 = _UIEditMenuGetPlatformMetrics([v84 userInterfaceIdiom]);
    v86 = [v85 menuItemTitleFont];
    v87 = [v86 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v84];

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
    v98 = [v97 menuItemTitleFont];
    v99 = [v98 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v96];

    [v99 _scaledValueForValue:0 useLanguageAwareScaling:v95];
    v101 = v100;
    [v96 displayScale];
    v103 = v102;

    UIRoundToScale(v101, fmax(v103, 1.0));
    v105 = v104;

    [(_UIDiffuseShadowView *)v65 setOffset:v93, v105];
    [(_UIDiffuseShadowView *)v65 setIntensity:v64];
    v106 = [(UIView *)v65 layer];
    [v106 setPunchoutShadow:1];

    [(UIView *)self insertSubview:v65 atIndex:0];
    shadowView = self->_shadowView;
    self->_shadowView = v65;
  }

  [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
  v108 = [(UIGestureRecognizer *)[_UIContinuousSelectionGestureRecognizer alloc] initWithTarget:self action:sel__handleSelectionGesture_];
  [(UIGestureRecognizer *)v108 setCancelsTouchesInView:0];
  [(UIGestureRecognizer *)v108 setDelegate:self];
  v109 = [(UIVisualEffectView *)v16 contentView];
  [v109 addGestureRecognizer:v108];

  objc_storeStrong(&self->_selectionGestureRecognizer, v108);
  v110 = [[UIHoverGestureRecognizer alloc] initWithTarget:self action:sel__handleHoverGesture_];
  [(UIGestureRecognizer *)v110 setDelegate:self];
  v111 = [(UIVisualEffectView *)v16 contentView];
  [v111 addGestureRecognizer:v110];

  objc_storeStrong(&self->_hoverGestureRecognizer, v110);
  if (_UISolariumEnabled())
  {
    v112 = [[UIPanGestureRecognizer alloc] initWithTarget:self action:sel__handlePanGesture_];
    [(UIPanGestureRecognizer *)v112 setDelegate:self];
    v113 = [(UIVisualEffectView *)v16 contentView];
    [v113 addGestureRecognizer:v112];

    panGestureRecognizer = self->_panGestureRecognizer;
    self->_panGestureRecognizer = v112;
  }

  v118[0] = objc_opt_class();
  v118[1] = objc_opt_class();
  v115 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:2];
  v116 = [(UIView *)self registerForTraitChanges:v115 withAction:sel__contentSizeCategoryDidChange];
}

- (void)setAxis:(int64_t)a3
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (self->_axis != a3)
  {
    v3 = a3;
    self->_axis = a3;
    v5 = [(UIView *)self traitCollection];
    v6 = [v5 userInterfaceIdiom];

    v7 = [(_UIEditMenuListView *)self collectionView];
    if (v3 == 1)
    {
      v41 = _UIEditMenuGetPlatformMetrics(v6);
      [v41 verticalMenuCornerRadius];
      v14 = v13;
      [(UIView *)self _currentScreenScale];
      v16 = v15;
      v17 = _UIEditMenuGetPlatformMetrics(v6);
      v18 = 1.0;
      if ([v17 useThinSeparators])
      {
        v18 = 1.0 / fmax(v16, 1.0);
      }

      v19 = [off_1E70ECB18 fractionalWidthDimension:1.0];
      v20 = [off_1E70ECB18 absoluteDimension:v18];
      v21 = [off_1E70ECB40 sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = [off_1E70ECB00 layoutAnchorWithEdges:1];
      v23 = _UIEditMenuGetPlatformMetrics(v6);
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
      v3 = 1;
    }

    else
    {
      v8 = 0.0;
      if (v3)
      {
        v10 = 0;
        v12 = 0;
        v3 = 0;
        v11 = 1;
      }

      else
      {
        [(UIView *)self _currentScreenScale];
        v10 = _UIEditMenuViewHorizontalCompositionalLayout(v6, v9);
        v11 = _UISolariumEnabled() ^ 1;
        v12 = 1;
      }
    }

    v34 = [(_UIEditMenuListView *)self rightButton];
    [v34 setHidden:v3];

    v35 = [(_UIEditMenuListView *)self leftButton];
    [v35 setHidden:v3];

    [v7 setScrollEnabled:v11];
    [v7 setPagingEnabled:v12];
    [v7 setShowsVerticalScrollIndicator:v3];
    [v7 setVerticalScrollIndicatorInsets:{v8, 0.0, v8, 0.0}];
    [v7 setCollectionViewLayout:v10];
    [v7 setContentInset:{0.0, 0.0, 0.0, 0.0}];
    [(_UIEditMenuListView *)self _setNeedsPaginationUpdate];
    [(UIView *)self setNeedsLayout];
    v36 = [(_UIEditMenuListView *)self dataSource];
    v37 = [v36 snapshot];

    v38 = [v37 sectionIdentifiers];
    [v37 reloadSectionsWithIdentifiers:v38];

    v39 = [(_UIEditMenuListView *)self dataSource];
    [v39 applySnapshotUsingReloadData:v37];

    [v7 resetTargetPage];
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

- (void)_reloadMenuAnimated:(BOOL)a3
{
  v3 = a3;
  v38[1] = *MEMORY[0x1E69E9840];
  [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:0];
  v6 = v5;
  v7 = [(_UIEditMenuListView *)self displayedMenu];
  v8 = [(_UIEditMenuListView *)self _hasPasteAuthentication];
  v9 = [(_UIEditMenuListView *)self preferredElementDisplayMode];
  v10 = v7;
  v11 = objc_opt_new();
  v12 = [v10 identifier];
  v38[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
  [v11 appendSectionsWithIdentifiers:v13];

  if (v10)
  {
    _UIEditMenuAppendMenuToSnapshot(v10, v11, v8, v9);
    v14 = [v11 itemIdentifiers];
    v15 = [v14 count];

    if (v15 == 1)
    {
      v16 = [v11 itemIdentifiers];
      v17 = [v16 firstObject];

      [v17 setOverrideMinimumWidth:v6 + v6];
      [v17 setSingleItemMenu:1];
    }
  }

  v18 = [(UIView *)self window];

  if (v18 && v3)
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
      v24 = [(_UIEditMenuListView *)self shadowView];
      v25 = [v24 layer];
      v26 = __43___UIEditMenuListView__reloadMenuAnimated___block_invoke(@"shadowPath", [v25 shadowPath]);
      [(UIView *)self addAnimation:v26 forKey:@"shadowPath"];
    }

    v27 = [(_UIEditMenuListView *)self maskLayer];
    v28 = [(_UIEditMenuListView *)self maskLayer];
    v29 = __43___UIEditMenuListView__reloadMenuAnimated___block_invoke(@"path", [v28 path]);
    [v27 addAnimation:v29 forKey:@"path"];

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
  if (v3)
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshot:v11 animatingDifferences:1];
  }

  else
  {
    [(UICollectionViewDiffableDataSource *)dataSource applySnapshotUsingReloadData:v11];
  }

  v31 = [(_UIEditMenuListView *)self collectionView];
  v32 = [v31 pages];
  v33 = [v32 count];

  if (v33)
  {
    v34 = [(_UIEditMenuListView *)self collectionView];
    [v34 scrollToTargetPageAnimated:0];
  }

  v35 = [(_UIEditMenuListView *)self displayedMenu];
  v36 = [v35 accessibilityIdentifier];
  [self setAccessibilityIdentifier:v36];
}

- (BOOL)_hasPasteAuthentication
{
  v2 = self;
  v3 = [(_UIEditMenuListView *)self delegate];
  LOBYTE(v2) = [v3 wantsPasteTouchAuthenticationInEditMenuListView:v2];

  return v2;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(_UIEditMenuListView *)self delegate];
  [v3 contentSizeCategoryDidChangeInEditMenuListView:self];

  v4 = [(UIView *)self traitCollection];
  v5 = _UIEditMenuGetPlatformMetrics([v4 userInterfaceIdiom]);
  [v5 shadowRadius];
  v7 = v6;
  v8 = v4;
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  v10 = [v9 menuItemTitleFont];
  v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

  [v11 _scaledValueForValue:0 useLanguageAwareScaling:v7];
  v13 = v12;
  [v8 displayScale];
  v15 = v14;

  UIRoundToScale(v13, fmax(v15, 1.0));
  v17 = v16;

  [(_UIDiffuseShadowView *)self->_shadowView setRadius:v17];
  v18 = [(UIView *)self traitCollection];
  v19 = _UIEditMenuGetPlatformMetrics([v18 userInterfaceIdiom]);
  [v19 shadowOffset];
  v21 = v20;
  v22 = v18;
  v23 = _UIEditMenuGetPlatformMetrics([v22 userInterfaceIdiom]);
  v24 = [v23 menuItemTitleFont];
  v25 = [v24 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v22];

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
  v36 = [v35 menuItemTitleFont];
  v37 = [v36 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v34];

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
  v3 = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIEditMenuListView *)self backgroundView];
  }

  v6 = v5;

  return v6;
}

- (void)layoutSubviews
{
  v245.receiver = self;
  v245.super_class = _UIEditMenuListView;
  [(UIView *)&v245 layoutSubviews];
  v3 = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([v3 userInterfaceIdiom]);

  [(UIView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  v13 = [(_UIEditMenuListView *)self shadowView];
  [v13 setFrame:{v6, v8, v10, v12}];

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

  v19 = [(_UIEditMenuListView *)self axis];
  v20 = *(&self->super._viewFlags + 2);
  v21 = [(_UIEditMenuListView *)self arrowDirection];
  v22 = [(_UIEditMenuListView *)self arrowDirection];
  v23 = [(_UIEditMenuListView *)self axis];
  v24 = v22 - 5;
  v232 = v20;
  v25 = !v23 && v24 > 0xFFFFFFFFFFFFFFFDLL || v23 == 1 && v24 < 0xFFFFFFFFFFFFFFFELL;
  v241 = v25;
  v27 = v19;
  [(UIView *)self anchorPoint];
  [(UIView *)self center];
  v29 = v28;
  v31 = v30;
  v32 = [(UIView *)self superview];
  [(UIView *)self convertPoint:v32 fromView:v29, v31];
  v223 = v33;

  [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:[(_UIEditMenuListView *)self axis]];
  v222 = v34;
  v35 = [(UIView *)self traitCollection];
  v36 = [v35 userInterfaceIdiom];
  [(UIView *)self _currentScreenScale];
  v38 = v37;
  v39 = _UIEditMenuGetPlatformMetrics(v36);
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

  v42 = [(_UIEditMenuListView *)self leftButton];
  [v42 sizeThatFits:{remainder.size.width, remainder.size.height}];
  v44 = v43;
  v234 = v45;

  v46 = [(UIView *)self traitCollection];
  v47 = _UIEditMenuGetPlatformMetrics([v46 userInterfaceIdiom]);
  v48 = v46;
  v49 = _UIEditMenuGetPlatformMetrics([v48 userInterfaceIdiom]);
  v50 = [v49 menuItemTitleFont];
  v51 = [v50 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v48];

  [v47 arrowSize];
  v53 = v52;
  v54 = v48;
  v55 = _UIEditMenuGetPlatformMetrics([v54 userInterfaceIdiom]);
  v56 = [v55 menuItemTitleFont];
  v57 = [v56 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v54];

  [v57 _scaledValueForValue:0 useLanguageAwareScaling:v53];
  v59 = v58;
  [v54 displayScale];
  v61 = v60;

  UIRoundToScale(v59, fmax(v61, 1.0));
  [v47 arrowSize];
  v63 = v62;
  v64 = v54;
  v65 = _UIEditMenuGetPlatformMetrics([v64 userInterfaceIdiom]);
  v66 = [v65 menuItemTitleFont];
  v67 = [v66 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v64];

  [v67 _scaledValueForValue:0 useLanguageAwareScaling:v63];
  v69 = v68;
  [v64 displayScale];
  v71 = v70;

  UIRoundToScale(v69, fmax(v71, 1.0));
  v73 = v72;

  v74 = [(_UIEditMenuListView *)self arrowDirection];
  if (v74 == 1)
  {
    v75 = v73;
  }

  else
  {
    v75 = 0.0;
  }

  if (v74 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v76 = v73;
  }

  if (v74 == 3)
  {
    v77 = v73;
  }

  else
  {
    v77 = 0.0;
  }

  if (v74 == 3)
  {
    v75 = 0.0;
    v76 = 0.0;
  }

  if (v74 == 4)
  {
    v77 = 0.0;
  }

  v228 = v77;
  if (v74 == 4)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = v75;
  }

  if (v74 == 4)
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
  if (v74 == 4)
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
  v82 = [(_UIEditMenuListView *)self titleView];

  if (v82)
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

  v88 = v21 - 3;
  v89 = v27;
  v230 = v44;
  v218 = v41;
  if (v27)
  {
    v90 = [(_UIEditMenuListView *)self axis];
    v91 = v239;
    if (v90 == 1)
    {
      v92 = v239;
    }

    else
    {
      v92 = 0.0;
    }

    if (v90 == 1)
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
    v100 = [(_UIEditMenuListView *)self collectionView];
    [v100 currentPage];
    v102 = v101;

    v103 = _UISolariumEnabled();
    v104 = [(_UIEditMenuListView *)self collectionView];
    v105 = [v104 pages];
    v106 = [v105 count];

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
  v146 = [(_UIEditMenuListView *)self menuContainerView];
  [v146 setFrame:{v142, v143, v144, v145}];

  v147 = [(_UIEditMenuListView *)self titleView];

  if (v147)
  {
    v148 = slice.origin.y;
    v149 = slice.size.height;
    v150 = [(_UIEditMenuListView *)self titleContainerView];
    [v150 setFrame:{v139, v148, v242, v149}];

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
    v155 = [(_UIEditMenuListView *)self titleView];
    [v155 setFrame:{v152, 0.0, v153, v154}];

    if ([(_UIEditMenuListView *)self _hasDisplayedMenu])
    {
      v156 = [(_UIEditMenuListView *)self titleSeparatorView];

      if (v156)
      {
        v157 = [(_UIEditMenuListView *)self arrowDirection];
        v158 = slice.origin.x;
        v159 = slice.origin.y;
        v160 = slice.size.width;
        v161 = slice.size.height;
        if (v157 == 1)
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

  v170 = [(_UIEditMenuListView *)self collectionView];
  [v170 setFrame:{v166, 0.0, v168, rect}];

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

  v180 = [(_UIEditMenuListView *)self titleContainerView];
  [v180 frame];
  IsEmpty = CGRectIsEmpty(v258);

  if (!IsEmpty)
  {
    v182 = [(_UIEditMenuListView *)self titleContainerView];
    [v182 frame];
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

  v183 = [(_UIEditMenuListView *)self arrowDirection];
  v184 = [(_UIEditMenuListView *)self axis];
  v185 = 0.0;
  if (v184 == (v183 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    v186 = 0.0;
LABEL_110:
    v187 = 0.0;
LABEL_111:
    v188 = 0.0;
    goto LABEL_112;
  }

  switch(v183)
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
  v193 = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  [v193 setFrame:{v189, v190, v191, v192}];

  [(_UIEditMenuListView *)self _resolvedCornerRadiusForRect:v189, v190, v191, v192];
  v195 = v194;
  v196 = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  [v196 _setContinuousCornerRadius:v195];

  [(UIView *)self bounds];
  v198 = v197;
  v200 = v199;
  v202 = v201;
  v204 = v203;
  v205 = [(_UIEditMenuListView *)self backgroundView];
  v206 = [v205 superview];
  [(UIView *)self convertRect:v206 toView:v198, v200, v202, v204];
  v208 = v207;
  v210 = v209;
  v212 = v211;
  v214 = v213;
  v215 = [(_UIEditMenuListView *)self backgroundView];
  [v215 setFrame:{v208, v210, v212, v214}];

  if (v89)
  {
    verticalContentHeight = self->_verticalContentHeight;
    v217 = [(_UIEditMenuListView *)self collectionView];
    [v217 bounds];
    [(_UIEditMenuListView *)self setScrubbingEnabled:verticalContentHeight <= CGRectGetHeight(v261)];
  }
}

- (BOOL)scrubbingEnabled
{
  v2 = [(_UIEditMenuListView *)self collectionView];
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

  v6 = [(_UIEditMenuListView *)self collectionView];
  [v6 setBounces:!v3];

  v7 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
  [v7 setAllowableMovement:{v5, v5}];
}

- (id)collectionViewLayout
{
  v2 = [(_UIEditMenuListView *)self collectionView];
  v3 = [v2 collectionViewLayout];

  return v3;
}

- (double)_collectionViewWidthForPageProgress:(double)a3
{
  if ([(_UIEditMenuListView *)self _hasDisplayedMenu]&& ![(_UIEditMenuListView *)self axis])
  {
    v38 = [(UIView *)self traitCollection];
    v39 = _UIEditMenuGetPlatformMetrics([v38 userInterfaceIdiom]);
    [v39 sectionInsets];
    v41 = v40;
    v43 = v42;

    v44 = [(_UIEditMenuListView *)self collectionView];
    [v44 viewWidthForPageProgress:a3];
    v46 = v45;

    return v41 + v43 + v46;
  }

  else
  {
    v5 = [(_UIEditMenuListView *)self arrowDirection];
    v6 = [(UIView *)self traitCollection];
    v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
    v8 = v6;
    v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
    v10 = [v9 menuItemTitleFont];
    v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

    [v7 arrowSize];
    v13 = v12;
    v14 = v8;
    v15 = _UIEditMenuGetPlatformMetrics([v14 userInterfaceIdiom]);
    v16 = [v15 menuItemTitleFont];
    v17 = [v16 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v14];

    [v17 _scaledValueForValue:0 useLanguageAwareScaling:v13];
    v19 = v18;
    [v14 displayScale];
    v21 = v20;

    UIRoundToScale(v19, fmax(v21, 1.0));
    [v7 arrowSize];
    v23 = v22;
    v24 = v14;
    v25 = _UIEditMenuGetPlatformMetrics([v24 userInterfaceIdiom]);
    v26 = [v25 menuItemTitleFont];
    v27 = [v26 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

    [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
    v29 = v28;
    [v24 displayScale];
    v31 = v30;

    UIRoundToScale(v29, fmax(v31, 1.0));
    v33 = v32;

    v34 = 0.0;
    if (v5 == 4)
    {
      v35 = 0.0;
      v34 = v33;
    }

    else if (v5 == 3)
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

- (BOOL)_isPaginationDirtyForContainerSize:(CGSize)a3
{
  if (*&self->_needsUpdate)
  {
    return 1;
  }

  if (self->_paginationContainerSize.height == a3.height)
  {
    return self->_paginationContainerSize.width != a3.width;
  }

  return 1;
}

- (void)_updatePaginationForSnapshot:(id)a3 containerSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v94[16] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(_UIEditMenuListView *)self axis];
  v9 = [(_UIEditMenuListView *)self collectionView];
  v10 = v9;
  if (v8)
  {
    v11 = MEMORY[0x1E695E0F0];
    [v9 setPages:MEMORY[0x1E695E0F0]];
    v12 = [(_UIEditMenuListView *)self collectionViewLayout];
    [v12 setPages:v11];

    *&self->_needsUpdate &= ~1u;
    self->_paginationContainerSize = *MEMORY[0x1E695F060];
  }

  else
  {
    if (!v7)
    {
      v7 = [(UICollectionViewDiffableDataSource *)self->_dataSource snapshot];
    }

    [(UIButton *)self->_leftButton sizeThatFits:width, height];
    v14 = v13;
    [(_UIEditMenuListView *)self _minimumRequiredWidthForArrowInRoundedListViewForAxis:[(_UIEditMenuListView *)self axis]];
    v16 = v15;
    v84 = [(UIView *)self traitCollection];
    v17 = [v7 itemIdentifiers];
    v18 = [MEMORY[0x1E695DF70] array];
    v83 = v10;
    if ([v17 count])
    {
      v81 = v16;
      v82 = v7;
      v19 = [v17 count];
      *&v80[1] = v80;
      MEMORY[0x1EEE9AC00](v19);
      v21 = v80 - v20;
      v22 = [[_UIEditMenuListPage alloc] initWithStartIndex:0];
      [v18 addObject:v22];
      v23 = [v17 count];
      v80[0] = v14;
      if (v23)
      {
        v24 = 0;
        v25 = 0.0;
        v26 = v14 + 0.0;
        v27 = v14 + v14 + 0.0;
        do
        {
          v28 = [v17 objectAtIndex:{v24, *&v80[0]}];
          [_UIEditMenuListViewCell layoutSizeForItem:v28 traitCollection:v84 containerSize:width, height];
          v30 = fmin(v29, width);
          if ([v18 count] > 1 || (-[_UIEditMenuListPage width](v22, "width"), UIRoundToViewScale(self), v31 = 0.0, v32 = v26, v33 > width))
          {
            v32 = v27;
            v31 = v26;
          }

          if (v24 >= [v17 count] - 1)
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

            [v18 addObject:v39];
            v22 = v39;
          }

          [(_UIEditMenuListPage *)v22 appendItemWithWidth:v35];
          [(_UIEditMenuListPage *)v22 width];
          v25 = fmax(v40, v25);

          ++v24;
        }

        while (v24 < [v17 count]);
      }

      else
      {
        v25 = 0.0;
      }

      if ([v18 count] <= 1)
      {
        v7 = v82;
        v10 = v83;
        v16 = v81;
      }

      else
      {
        v41 = [v18 lastObject];
        [v18 objectAtIndex:{objc_msgSend(v18, "count") - 2}];
        v42 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        v43 = *&v21[8 * [v41 range] - 8];
        [v41 width];
        v45 = v44;
        [*&v42 width];
        v47 = v46 * 0.5;
        [*&v42 range];
        v49 = v48;
        [v41 width];
        v51 = v43 + v50;
        v52 = width - v80[0];
        if (v45 < v47 && v49 >= 2 && v51 < v52)
        {
          v80[0] = v42;
          [*&v42 removeLastItemWithWidth:{v43, v52}];
          v55 = v41;
          [v41 prependItemWithWidth:v43];
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v56 = v18;
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

          v7 = v82;
          v41 = v55;
          v42 = v80[0];
        }

        else
        {
          v7 = v82;
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
    if ([v18 count] == 1)
    {
      v63 = [v18 firstObject];
      [v63 enforceMinimumWidth:v62];
    }

    if ([v18 count])
    {
      [(UIScrollView *)self->_collectionView contentInset];
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v70 = [v18 lastObject];
      [v70 width];
      v72 = v25 - v71;

      [v10 setContentInset:{v65, v67, v69, v72}];
    }

    [v10 setPages:v18];
    v73 = [(_UIEditMenuListView *)self collectionViewLayout];
    [v73 setPages:v18];

    self->_largestPageWidth = fmax(v62, v25);
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v74 = [(_UIEditMenuListView *)self collectionView];
    v75 = [v74 visibleCells];

    v76 = [v75 countByEnumeratingWithState:&v85 objects:v93 count:16];
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
            objc_enumerationMutation(v75);
          }

          [*(*(&v85 + 1) + 8 * j) setMaximumContentWidth:self->_largestPageWidth];
        }

        v77 = [v75 countByEnumeratingWithState:&v85 objects:v93 count:16];
      }

      while (v77);
    }

    -[_UIEditMenuListView setScrubbingEnabled:](self, "setScrubbingEnabled:", [v18 count] == 1);
    [(UIView *)self setNeedsLayout];
    *&self->_needsUpdate &= ~1u;

    v10 = v83;
  }
}

- (void)_didTapLeftDirectionalButton:(id)a3
{
  v3 = *(&self->super._viewFlags + 2);
  v4 = [(_UIEditMenuListView *)self collectionView];
  v5 = v4;
  if ((v3 & 0x400000) != 0)
  {
    [v4 incrementTargetPage];
  }

  else
  {
    [v4 decrementTargetPage];
  }
}

- (void)_didTapRightDirectionalButton:(id)a3
{
  v3 = *(&self->super._viewFlags + 2);
  v4 = [(_UIEditMenuListView *)self collectionView];
  v5 = v4;
  if ((v3 & 0x400000) != 0)
  {
    [v4 decrementTargetPage];
  }

  else
  {
    [v4 incrementTargetPage];
  }
}

- (void)_performHandoffFromSourceView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(_UIEditMenuListView *)self effectiveBackgroundView];
  }

  v6 = v4;
  v5 = [(_UIEditMenuListView *)self delegate];
  [v5 editMenuListViewDidActivateHandoff:self source:v6];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
  v5 = [v4 state];

  if (v5)
  {
    v6 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
    [v6 setEnabled:0];

    v7 = [(_UIEditMenuListView *)self selectionGestureRecognizer];
    [v7 setEnabled:1];
  }

  [(_UIEditMenuListView *)self _updateHighlightState];
  if (![(_UIEditMenuListView *)self axis])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)scrollViewWillEndDragging:(id)a3 withVelocity:(CGPoint)a4 targetContentOffset:(CGPoint *)a5
{
  v7 = [(_UIEditMenuListView *)self collectionView:a3];
  [v7 pageProgressForContentOffset:1 clamped:{a5->x, a5->y}];
  v9 = v8;

  v10 = [(_UIEditMenuListView *)self collectionView];
  [v10 setTargetPage:llround(v9)];
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v40 = a4;
  v6 = [(UIView *)self traitCollection];
  v7 = _UIEditMenuGetPlatformMetrics([v6 userInterfaceIdiom]);
  v8 = v6;
  v9 = _UIEditMenuGetPlatformMetrics([v8 userInterfaceIdiom]);
  v10 = [v9 menuItemTitleFont];
  v11 = [v10 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v8];

  [v7 arrowSize];
  v13 = v12;
  v14 = v8;
  v15 = _UIEditMenuGetPlatformMetrics([v14 userInterfaceIdiom]);
  v16 = [v15 menuItemTitleFont];
  v17 = [v16 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v14];

  [v17 _scaledValueForValue:0 useLanguageAwareScaling:v13];
  v19 = v18;
  [v14 displayScale];
  v21 = v20;

  UIRoundToScale(v19, fmax(v21, 1.0));
  [v7 arrowSize];
  v23 = v22;
  v24 = v14;
  v25 = _UIEditMenuGetPlatformMetrics([v24 userInterfaceIdiom]);
  v26 = [v25 menuItemTitleFont];
  v27 = [v26 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v24];

  [v27 _scaledValueForValue:0 useLanguageAwareScaling:v23];
  v29 = v28;
  [v24 displayScale];
  v31 = v30;

  UIRoundToScale(v29, fmax(v31, 1.0));
  v33 = v32;

  v34 = [(_UIEditMenuListView *)self arrowDirection];
  v35 = [(_UIEditMenuListView *)self axis];
  v36 = 0.0;
  if (v35 == (v34 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    v37 = 0.0;
LABEL_3:
    v38 = 0.0;
LABEL_4:
    v39 = 0.0;
    goto LABEL_5;
  }

  switch(v34)
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
  [v40 setArrowEdgeInsets:{v37, v38, v39, v36}];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(_UIEditMenuListView *)self maskLayer];
  if (v8 && (v9 = v8, -[_UIEditMenuListView maskLayer](self, "maskLayer"), v10 = objc_claimAutoreleasedReturnValue(), BoundingBox = CGPathGetBoundingBox([v10 path]), v16.x = x, v16.y = y, v11 = CGRectContainsPoint(BoundingBox, v16), v10, v9, !v11))
  {
    v12 = 0;
  }

  else
  {
    v14.receiver = self;
    v14.super_class = _UIEditMenuListView;
    v12 = [(UIView *)&v14 hitTest:v7 withEvent:x, y];
  }

  return v12;
}

- (id)_indexPathForGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(_UIEditMenuListView *)self leftButton];
  if (_isGestureRecognizerLocationInsideView(v4, v5))
  {
    v6 = [(_UIEditMenuListView *)self leftButton];
    [v6 alpha];
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

  v11 = [(_UIEditMenuListView *)self rightButton];
  if (_isGestureRecognizerLocationInsideView(v4, v11))
  {
    v12 = [(_UIEditMenuListView *)self rightButton];
    [v12 alpha];
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

  v16 = [(_UIEditMenuListView *)self menuContainerView];
  isGestureRecognizerLocationInsideView = _isGestureRecognizerLocationInsideView(v4, v16);

  if (isGestureRecognizerLocationInsideView)
  {
    v18 = [(_UIEditMenuListView *)self collectionView];
    [v4 locationInView:v18];
    v20 = v19;
    v22 = v21;

    v23 = [(_UIEditMenuListView *)self collectionView];
    v15 = [v23 indexPathForItemAtPoint:{v20, v22}];

    v24 = [(_UIEditMenuListView *)self collectionView];
    v25 = [v24 cellForItemAtIndexPath:v15];

    v26 = [v25 securePasteButtonSlotView];

    if (v26)
    {
      v27 = [v25 securePasteButtonSlotView];
      v28 = [(_UIEditMenuListView *)self collectionView];
      [v27 convertPoint:v28 fromView:{v20, v22}];
      v30 = v29;
      v32 = v31;

      if (([v27 pointInside:0 withEvent:{v30, v32}] & 1) == 0)
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

- (void)_handleSelectionGesture:(id)a3
{
  v20 = a3;
  v4 = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:?];
  v5 = [(_UIEditMenuListView *)self collectionView];
  if ([v5 isDecelerating])
  {
    v6 = [(_UIEditMenuListView *)self collectionView];
    v7 = [v6 panGestureRecognizer];
    v8 = [v7 state] == 5;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v20 state];
  v10 = v4;
  if ((v9 - 1) < 2)
  {
    goto LABEL_17;
  }

  if (v9 != 3)
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
    v14 = [v13 menuElement];

    if ([(_UIEditMenuListView *)self _hasPasteAuthentication])
    {
      v15 = [(UIGestureRecognizer *)v20 _activeTouchesEvent];
      if (v15)
      {
        v16 = v15;
        v17 = [v14 _acceptBoolMenuVisit:0 commandVisit:&__block_literal_global_483 actionVisit:&__block_literal_global_487_0];

        if (v17)
        {
          v18 = [(UIGestureRecognizer *)v20 _activeTouchesEvent];
          v19 = [v18 _authenticationMessage];
          [UIPasteboard _attemptAuthenticationWithMessage:v19];
        }
      }
    }

    [(_UIEditMenuListView *)self _selectItemAtIndexPath:v4];
  }

LABEL_19:
}

- (void)_handleHoverGesture:(id)a3
{
  v4 = a3;
  v7 = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:v4];
  v5 = [v4 state];

  if ((v5 - 1) >= 2)
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

- (void)_handlePanGesture:(id)a3
{
  v4 = a3;
  v5 = [(_UIEditMenuListView *)self customBackgroundPlatterView];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(_UIEditMenuListView *)self backgroundView];
  }

  v8 = v7;

  [v4 translationInView:self];
  v10 = v9;
  v12 = v11;
  v13 = [v4 state];
  v14 = [(UIView *)self _shouldReverseLayoutDirection];
  v15 = v10 > 0.0;
  if (v14)
  {
    v15 = v10 < 0.0;
  }

  if (v15)
  {
    v10 = 0.0;
    [v4 setTranslation:self inView:{0.0, v12}];
  }

  [v8 bounds];
  v16 = fmin(CGRectGetWidth(v34), 120.0);
  if (v14)
  {
    v17 = v16;
  }

  else
  {
    v17 = -v16;
  }

  if (v13 == 3 && fabs(v10) > 44.0)
  {
    [v4 velocityInView:self];
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
  if (v13 == 2 && v21)
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
  if (v13 == 2)
  {
    UIRoundToViewScale(self);
    v19 = v28;
  }

  self->_additionalWidthFromInteraction = v19;
  [(UIView *)self setNeedsLayout];
  if ((v13 - 3) > 1)
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

  if ([v4 state] == 3)
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
    v6 = [(_UIEditMenuListView *)self panGestureRecognizer];
    [v6 locationInView:self];
    v8 = v7;
    v10 = v9;

    v11 = [(_UIEditMenuListView *)self feedbackGenerator];
    [v11 impactOccurredWithIntensity:0.45 atLocation:{v8, v10}];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(_UIEditMenuListView *)self selectionGestureRecognizer];

  if (v5 == v4)
  {
    v8 = [(UIView *)self layer];
    v9 = [v8 presentationLayer];
    [v9 opacity];
    v11 = v10;

    if (v11 < 0.9)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v12 = [(_UIEditMenuListView *)self _indexPathForGestureRecognizer:v4];
    v7 = v12 != 0;
LABEL_8:

    goto LABEL_9;
  }

  v6 = [(_UIEditMenuListView *)self panGestureRecognizer];

  if (v6 == v4)
  {
    v12 = [(_UIEditMenuListView *)self collectionView];
    v13 = [v12 pages];
    v7 = [v13 count] > 1;

    goto LABEL_8;
  }

  v7 = 1;
LABEL_9:

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_UIEditMenuListView *)self selectionGestureRecognizer];

  if (v8 == v7)
  {
    v10 = [(_UIEditMenuListView *)self collectionView];
    v11 = [v10 panGestureRecognizer];
    if (v11 == v6)
    {
      v9 = 1;
    }

    else
    {
      v12 = [(_UIEditMenuListView *)self panGestureRecognizer];
      v9 = v12 == v6;
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
  v3 = [(_UIEditMenuListView *)self collectionView];
  v4 = [v3 isDragging];

  v9 = [(_UIEditMenuListView *)self scrubbedIndexPath];
  v5 = [(_UIEditMenuListView *)self hoveredIndexPath];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v9;
  }

  v7 = v6;
  v8 = v7;
  if (v4)
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

- (BOOL)_canSelectItemAtIndexPath:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UIEditMenuListView.m" lineNumber:1244 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];
  }

  v6 = [(_UIEditMenuListView *)self dataSource];
  v7 = [v6 itemIdentifierForIndexPath:v5];
  v8 = [v7 menuElement];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 primaryActionHandler];
    v10 = v9 != 0;
  }

  else if ([v8 _isLeaf])
  {
    v10 = ([v8 attributes] & 1) == 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (void)_selectItemAtIndexPath:(id)a3
{
  v5 = a3;
  v20 = v5;
  if (!v5)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIEditMenuListView.m" lineNumber:1258 description:{@"Invalid parameter not satisfying: %@", @"indexPath"}];

    v5 = 0;
  }

  if ([(_UIEditMenuListView *)self _canSelectItemAtIndexPath:v5])
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
    v7 = [v20 isEqual:v6];

    if (v7)
    {
      v8 = [(_UIEditMenuListView *)self leftButton];
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
      v10 = [v20 isEqual:v9];

      if (!v10)
      {
        v12 = [(_UIEditMenuListView *)self dataSource];
        v13 = [v12 itemIdentifierForIndexPath:v20];
        v11 = [v13 menuElement];

        v14 = [(_UIEditMenuListView *)self collectionView];
        v15 = [v14 cellForItemAtIndexPath:v20];

        if (v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = [(_UIEditMenuListView *)self effectiveBackgroundView];
        }

        v17 = v16;
        v18 = [(_UIEditMenuListView *)self delegate];
        [v18 editMenuListView:self didSelectMenuElement:v11 source:v17];

        goto LABEL_13;
      }

      v8 = [(_UIEditMenuListView *)self rightButton];
    }

    v11 = v8;
    [v8 sendActionsForControlEvents:0x2000];
LABEL_13:
  }
}

- (void)_highlightItemAtIndexPath:(id)a3
{
  v13 = a3;
  if (([(NSIndexPath *)self->_highlightedIndexPath isEqual:?]& 1) == 0)
  {
    [(_UIEditMenuListView *)self _unhighlightCurrentlyHighlightedItem];
    if ([(_UIEditMenuListView *)self _canSelectItemAtIndexPath:v13])
    {
      objc_storeStrong(&self->_highlightedIndexPath, a3);
      v5 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
      v6 = [v13 isEqual:v5];

      if (v6)
      {
        v7 = 584;
LABEL_7:
        [*(&self->super.super.super.isa + v7) setHighlighted:1];
        goto LABEL_9;
      }

      v8 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
      v9 = [v13 isEqual:v8];

      if (v9)
      {
        v7 = 592;
        goto LABEL_7;
      }

      v10 = [(_UIEditMenuListView *)self collectionView];
      v11 = [v10 cellForItemAtIndexPath:v13];

      [v11 setHighlighted:1];
      v12 = [(_UIEditMenuListView *)self collectionViewLayout];
      [v12 setIndexPathForHighlightedItem:v13];
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
      v10 = [(_UIEditMenuListView *)self collectionView];
      v11 = [v10 cellForItemAtIndexPath:v9];

      [v11 setHighlighted:0];
      v12 = [(_UIEditMenuListView *)self collectionViewLayout];
      [v12 setIndexPathForHighlightedItem:0];

      goto LABEL_9;
    }

    v6 = 592;
  }

  [*(&self->super.super.super.isa + v6) setHighlighted:0];
LABEL_9:
  v13 = self->_highlightedIndexPath;
  self->_highlightedIndexPath = 0;
}

- (void)setArrowDirection:(int64_t)a3
{
  if (self->_arrowDirection != a3)
  {
    self->_arrowDirection = a3;
    [(_UIEditMenuListView *)self _updateArrowEdgeInsets];
  }
}

- (void)_updateArrowEdgeInsets
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [(UIView *)self traitCollection];
  v4 = _UIEditMenuGetPlatformMetrics([v3 userInterfaceIdiom]);
  v5 = v3;
  v6 = _UIEditMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  v7 = [v6 menuItemTitleFont];
  v8 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];

  [v4 arrowSize];
  v10 = v9;
  v11 = v5;
  v12 = _UIEditMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
  v13 = [v12 menuItemTitleFont];
  v14 = [v13 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v11];

  [v14 _scaledValueForValue:0 useLanguageAwareScaling:v10];
  v16 = v15;
  [v11 displayScale];
  v18 = v17;

  UIRoundToScale(v16, fmax(v18, 1.0));
  [v4 arrowSize];
  v20 = v19;
  v21 = v11;
  v22 = _UIEditMenuGetPlatformMetrics([v21 userInterfaceIdiom]);
  v23 = [v22 menuItemTitleFont];
  v24 = [v23 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v21];

  [v24 _scaledValueForValue:0 useLanguageAwareScaling:v20];
  v26 = v25;
  [v21 displayScale];
  v28 = v27;

  UIRoundToScale(v26, fmax(v28, 1.0));
  v30 = v29;

  v31 = [(_UIEditMenuListView *)self arrowDirection];
  v32 = [(_UIEditMenuListView *)self axis];
  v33 = (v31 - 5) < 0xFFFFFFFFFFFFFFFELL;
  if (v31 == 1)
  {
    v34 = v30;
  }

  else
  {
    v34 = 0.0;
  }

  if (v31 == 1)
  {
    v35 = 0.0;
  }

  else
  {
    v35 = v30;
  }

  if (v31 == 3)
  {
    v34 = 0.0;
    v36 = v30;
  }

  else
  {
    v36 = 0.0;
  }

  if (v31 == 3)
  {
    v35 = 0.0;
  }

  if (v31 == 4)
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

  if (v32 == v33)
  {
    v38 = 0.0;
  }

  else
  {
    v38 = v34;
  }

  if (v32 == v33)
  {
    v39 = 0.0;
  }

  else
  {
    v39 = v36;
  }

  if (v32 == v33)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = v35;
  }

  if (v32 == v33)
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
  v42 = [(_UIEditMenuListView *)self collectionView];
  v43 = [v42 visibleCells];

  v44 = [v43 countByEnumeratingWithState:&v48 objects:v52 count:16];
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
          objc_enumerationMutation(v43);
        }

        [*(*(&v48 + 1) + 8 * i) setArrowEdgeInsets:{v38, v39, v40, v41}];
      }

      v45 = [v43 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v45);
  }

  [(UIView *)self setNeedsLayout];
}

- (void)_updateMaskingLayerWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectIsEmpty(a3))
  {
    v8 = [(_UIEditMenuListView *)self maskLayer];

    if (v8)
    {
      v97 = [(UIView *)self traitCollection];
      v9 = _UIEditMenuGetPlatformMetrics([v97 userInterfaceIdiom]);
      [(_UIEditMenuListView *)self _resolvedCornerRadiusForRect:x, y, width, height];
      v11 = [UIBezierPath _bezierPathWithPillRect:x cornerRadius:y, width, height, v10];
      [v9 arrowSize];
      if (v13 != *MEMORY[0x1E695F060] || v12 != *(MEMORY[0x1E695F060] + 8))
      {
        v15 = [(UIView *)self superview];
        [(UIView *)self center];
        [v15 convertPoint:self toView:?];
        v93 = v17;
        v94 = v16;

        v18 = [(_UIEditMenuListView *)self arrowDirection];
        v19 = v97;
        v20 = _UIEditMenuGetPlatformMetrics([v19 userInterfaceIdiom]);
        v21 = v19;
        v22 = _UIEditMenuGetPlatformMetrics([v21 userInterfaceIdiom]);
        v23 = [v22 menuItemTitleFont];
        v24 = [v23 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v21];

        [v20 arrowSize];
        v26 = v25;
        v27 = v21;
        v28 = _UIEditMenuGetPlatformMetrics([v27 userInterfaceIdiom]);
        v29 = [v28 menuItemTitleFont];
        v30 = [v29 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v27];

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
        v40 = [v39 menuItemTitleFont];
        v41 = [v40 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v38];

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
        v53 = [v52 menuItemTitleFont];
        v54 = [v53 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v51];

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
        v67 = [v66 menuItemTitleFont];
        v68 = [v67 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v65];

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
        if ((v18 - 3) > 1)
        {
          if (v18 == 2)
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
          if (v18 == 2)
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
          if (v18 == 4)
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
          if (v18 == 4)
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
        v92 = [(_UIEditMenuListView *)self shadowView];
        [v92 setPath:v11];
      }
    }
  }
}

- (double)_resolvedCornerRadiusForRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = objc_opt_class();
  v9 = [(UIView *)self traitCollection];
  [v8 _resolvedCornerRadiusForRect:objc_msgSend(v9 userInterfaceIdiom:"userInterfaceIdiom") axis:{-[_UIEditMenuListView axis](self, "axis"), x, y, width, height}];
  v11 = v10;

  return v11;
}

+ (double)_resolvedCornerRadiusForRect:(CGRect)a3 userInterfaceIdiom:(int64_t)a4 axis:(int64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = _UIEditMenuGetPlatformMetrics(a4);
  v11 = v10;
  if (a5)
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
  v2 = [(_UIEditMenuListView *)self shadowView];
  v3 = v2 != 0;

  return v3;
}

- (id)backgroundMaterialGroupName
{
  backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  if (!backgroundMaterialGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"edit-menu-background-%@", v6];
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