@interface _UIContextMenuListView
- (BOOL)_shouldScrollToSelectedAction;
- (BOOL)_showChildIndicatorOnTrailingEdge;
- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4;
- (CGSize)nativeContentSize;
- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)a3;
- (CGSize)visibleContentSize;
- (CGVector)selectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)a3;
- (NSDirectionalEdgeInsets)contentMargins;
- (NSDirectionalEdgeInsets)contentMarginsWithoutSelection;
- (NSDirectionalEdgeInsets)headerMargins;
- (NSDirectionalEdgeInsets)menuTitleMargins;
- (NSString)backgroundMaterialGroupName;
- (UIEdgeInsets)contentInsets;
- (_UIContextMenuListView)initWithFrame:(CGRect)a3;
- (double)_clampedCornerRadius;
- (double)closestScrollTruncationDetentToHeight:(double)a3;
- (id)_collectionView:(id)a3 typeSelectStringForItemAtIndexPath:(id)a4;
- (id)_dataSourceForCollectionView:(id)a3;
- (id)_footerIndexPath;
- (id)_headerIndexPath;
- (id)_platformMetrics;
- (id)_viewAtIndexPath:(id)a3;
- (id)cellForElement:(id)a3;
- (id)elementAtIndexPath:(id)a3;
- (id)indexPathForElement:(id)a3;
- (id)indexPathForItemAtPoint:(CGPoint)a3;
- (id)preferredFocusEnvironments;
- (void)_collectionView:(id)a3 typeSelectResultDidUpdate:(id)a4;
- (void)_collectionView:(id)a3 updateTypeSelectResultForCell:(id)a4 atIndexPath:(id)a5 withItemResult:(id)a6 animator:(id)a7;
- (void)_configureCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 forElement:(id)a6 section:(id)a7 size:(int64_t)a8;
- (void)_portalCellIfNeeded:(id)a3;
- (void)_removeAllPortals;
- (void)_setupCellPortalingIfNeeded;
- (void)_sizeClippingAndCollectionViews;
- (void)_tearDownCellPortalingIfNeeded;
- (void)_updateCellPortalingWithCell:(id)a3;
- (void)_updateCellPortalingWithUpdateFocusInContext:(id)a3 inCollectionView:(id)a4;
- (void)_updateCollectionViewAlpha;
- (void)_updateContentMargins;
- (void)_updateCornerRadius;
- (void)_updateGlassBackgroundIfNeeded;
- (void)_updateKeyboardShortcutMetricsForSnapshot:(id)a3;
- (void)_updatePlatterHairline;
- (void)_updateScrollInsets;
- (void)_updateShadowAlpha;
- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5;
- (void)dealloc;
- (void)didCompleteInPlaceMenuTransition;
- (void)disableTypeSelectIfNeeded;
- (void)highlightItemAtIndexPath:(id)a3 forHover:(BOOL)a4 playFeedback:(BOOL)a5;
- (void)layoutSubviews;
- (void)modifierKeyServiceDidChangeCurrentModifierFlags;
- (void)scrollToFirstSignificantAction;
- (void)scrollViewDidScroll:(id)a3;
- (void)setAllowsFocus:(BOOL)a3;
- (void)setCollectionViewAlpha:(double)a3;
- (void)setDisplayedMenu:(id)a3;
- (void)setEmphasized:(BOOL)a3;
- (void)setPreferredMenuMaterial:(id)a3;
- (void)setReversesActionOrder:(BOOL)a3;
- (void)setRoundedEdges:(unint64_t)a3;
- (void)setShadowAlpha:(double)a3;
- (void)setShouldEnableTypeSelect:(BOOL)a3;
- (void)setSubmenuTitleViewExpanded:(BOOL)a3 withMaterialGroupName:(id)a4 associatedCellContentView:(id)a5 highlighted:(BOOL)a6;
- (void)setSuppressGlassBackground:(BOOL)a3;
- (void)setVisibleContentSize:(CGSize)a3;
- (void)unHighlightItemAtIndexPath:(id)a3;
- (void)willStartInPlaceMenuTransition;
@end

@implementation _UIContextMenuListView

- (NSDirectionalEdgeInsets)contentMargins
{
  top = self->_contentMargins.top;
  leading = self->_contentMargins.leading;
  bottom = self->_contentMargins.bottom;
  trailing = self->_contentMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (void)_sizeClippingAndCollectionViews
{
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_UIContextMenuListView *)self contentInsets];
  v12 = v4 + v11;
  v14 = v6 + v13;
  v16 = v8 - (v11 + v15);
  v18 = v10 - (v13 + v17);
  v19 = [(_UIContextMenuListView *)self backgroundView];
  [v19 setFrame:{v12, v14, v16, v18}];

  v20 = [(_UIContextMenuListView *)self clippingView];
  [v20 setFrame:{v12, v14, v16, v18}];

  v21 = [(_UIContextMenuListView *)self _platformMetrics];
  v32 = [v21 gradientMaskingConfiguration];

  if (v32)
  {
    if ([v32 embedBackgroundForCompositing])
    {
      [v32 gradientMaskEdgeInsets];
      v23 = v14 + v22;
      v24 = [(_UIContextMenuListView *)self cvBackgroundView];
      [v24 setFrame:{v12, v23, v16, v18}];
    }

    [v32 gradientMaskEdgeInsets];
    v26 = v25;
    [v32 gradientMaskEdgeInsets];
    v28 = v14 - v26;
    v29 = v18 - (-v27 - v26);
    v30 = [(_UIContextMenuListView *)self collectionView];
    [v30 setFrame:{v12 + 0.0, v28, v16, v29}];

    v31 = [(_UIContextMenuListView *)self borderView];
    [v31 setFrame:{v12 + -1.0, v14 + -1.0, v16 + 2.0, v18 + 2.0}];
  }

  [(_UIContextMenuListView *)self _updateScrollInsets];
  [(_UIContextMenuListView *)self _updateCornerRadius];
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateScrollInsets
{
  v26[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIContextMenuListView *)self _platformMetrics];
  v4 = [v3 gradientMaskingConfiguration];

  if (!v4)
  {
    v5 = [(_UIContextMenuListView *)self collectionView];
    [v5 contentSize];
    v7 = v6;

    [(_UIContextMenuListView *)self visibleContentSize];
    v9 = v7 - v8;
    v10 = [(_UIContextMenuListView *)self collectionView];
    [v10 frame];
    v11 = v9 + CGRectGetHeight(v27) - v7;

    v12 = fmax(v11, 0.0);
    v13 = [(_UIContextMenuListView *)self collectionView];
    [v13 contentInset];
    v15 = v14;

    v16 = [(_UIContextMenuListView *)self collectionView];
    [v16 setContentInset:{0.0, 0.0, v12, 0.0}];

    if (v15 != v12)
    {
      v17 = [(_UIContextMenuListView *)self displayedMenu];
      v18 = [v17 _pinnedFooterElement];

      if (v18)
      {
        v19 = [(_UIContextMenuListView *)self collectionView];
        v20 = [v19 collectionViewLayout];

        v21 = [v20 _invalidationContextForRefreshingVisibleElementAttributes];
        v22 = [(_UIContextMenuListView *)self _footerIndexPath];
        v26[0] = v22;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        [v21 invalidateSupplementaryElementsOfKind:@"kContextMenuPinnedFooter" atIndexPaths:v23];

        v24 = [(_UIContextMenuListView *)self collectionView];
        v25 = [v24 collectionViewLayout];
        [v25 invalidateLayoutWithContext:v21];
      }
    }
  }
}

- (CGSize)visibleContentSize
{
  width = self->_visibleContentSize.width;
  height = self->_visibleContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)nativeContentSize
{
  width = self->_nativeContentSize.width;
  height = self->_nativeContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_platformMetrics
{
  v2 = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([v2 userInterfaceIdiom]);

  return v3;
}

- (NSString)backgroundMaterialGroupName
{
  backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  if (!backgroundMaterialGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"context-menu-background-%@", v6];
    v8 = self->_backgroundMaterialGroupName;
    self->_backgroundMaterialGroupName = v7;

    backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  }

  return backgroundMaterialGroupName;
}

- (void)_updateShadowAlpha
{
  v3 = [(_UIContextMenuListView *)self _platformMetrics];
  v33 = [v3 previewShadowSettings];

  if (v33 && ([v33 opacity], v4 > 0.0))
  {
    [v33 opacity];
    v6 = v5;
    [(_UIContextMenuListView *)self emphasisAlphaMultiplier];
    v8 = v6 * v7;
    [(_UIContextMenuListView *)self shadowAlpha];
    *&v8 = v8 * ceil(v9);
    v10 = [(_UIContextMenuListView *)self clippingView];
    v11 = [v10 layer];
    LODWORD(v12) = LODWORD(v8);
    [v11 setShadowOpacity:v12];

    v13 = [v33 color];
    v14 = [v13 CGColor];
    v15 = [(_UIContextMenuListView *)self clippingView];
    v16 = [v15 layer];
    [v16 setShadowColor:v14];

    [v33 offset];
    v18 = v17;
    v20 = v19;
    v21 = [(_UIContextMenuListView *)self clippingView];
    v22 = [v21 layer];
    [v22 setShadowOffset:{v18, v20}];

    [v33 radius];
    v24 = v23;
    v25 = [(_UIContextMenuListView *)self clippingView];
    v26 = [v25 layer];
    [v26 setShadowRadius:v24];

    v27 = [(_UIContextMenuListView *)self clippingView];
    v28 = [v27 layer];
    [v28 setShadowPathIsBounds:1];
  }

  else
  {
    [(_UIContextMenuListView *)self shadowAlpha];
    v30 = v29;
    [(_UIContextMenuListView *)self emphasisAlphaMultiplier];
    v32 = v30 * v31;
    v27 = [(_UIContextMenuListView *)self shadowView];
    [v27 setAlpha:v32];
  }
}

- (id)_headerIndexPath
{
  if ([(_UIContextMenuListView *)self position]== 1)
  {
    v2 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_updateCornerRadius
{
  [(_UIContextMenuListView *)self _clampedCornerRadius];
  v4 = v3;
  v5 = [(_UIContextMenuListView *)self _platformMetrics];
  v6 = [v5 gradientMaskingConfiguration];
  v7 = [v6 backgroundMasksCorners];

  if (v7)
  {
    v8 = [(_UIContextMenuListView *)self backgroundView];
    [v8 _setContinuousCornerRadius:v4];

    v9 = [(_UIContextMenuListView *)self cvBackgroundView];
    [v9 _setContinuousCornerRadius:v4];

    v10 = [(_UIContextMenuListView *)self borderView];
    [v10 _setContinuousCornerRadius:v4 + 1.0];

    v11 = v4;
    v12 = v4;
  }

  else
  {
    v12 = 0.0;
    if (([(_UIContextMenuListView *)self roundedEdges]& 1) != 0)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0.0;
    }

    if (([(_UIContextMenuListView *)self roundedEdges]& 4) != 0)
    {
      v12 = v4;
    }
  }

  v13 = *MEMORY[0x1E69796E8];
  v14 = [(_UIContextMenuListView *)self clippingView];
  v15 = [v14 layer];
  [v15 setCornerCurve:v13];

  v16 = [(_UIContextMenuListView *)self clippingView];
  v17 = [v16 layer];
  v25 = v12;
  v26 = v12;
  v27 = v12;
  v28 = v12;
  v29 = v11;
  v30 = v11;
  v31 = v11;
  v32 = v11;
  [v17 setCornerRadii:&v25];

  v18 = [(UIView *)self layer];
  [v18 setCornerCurve:v13];

  v19 = [(UIView *)self layer];
  v25 = v12;
  v26 = v12;
  v27 = v12;
  v28 = v12;
  v29 = v11;
  v30 = v11;
  v31 = v11;
  v32 = v11;
  [v19 setCornerRadii:&v25];

  v20 = v4 + -2.0;
  v21 = [(_UIContextMenuListView *)self collectionView];
  [v21 contentInset];
  v23 = v20 + v22;
  v24 = [(_UIContextMenuListView *)self collectionView];
  [v24 setScrollIndicatorInsets:{v20, 0.0, v23, 0.0}];
}

- (double)_clampedCornerRadius
{
  v3 = [(_UIContextMenuListView *)self _platformMetrics];
  [v3 menuCornerRadius];
  v5 = v4;

  [(UIView *)self bounds];

  return _UIClampedCornerRadius(15, v5, v6, v7, v8, v9);
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = _UIContextMenuListView;
  [(UIView *)&v14 layoutSubviews];
  [(_UIContextMenuListView *)self _sizeClippingAndCollectionViews];
  v3 = [(_UIContextMenuListView *)self shadowView];
  v4 = [(_UIContextMenuListView *)self clippingView];
  [v4 frame];
  [v3 frameWithContentWithFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [(_UIContextMenuListView *)self shadowView];
  [v13 setFrame:{v6, v8, v10, v12}];
}

- (id)_footerIndexPath
{
  v2 = [(_UIContextMenuListView *)self displayedMenu];
  v3 = [v2 _pinnedFooterElement];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AC88] indexPathWithIndex:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_setupCellPortalingIfNeeded
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(_UIContextMenuListView *)self _platformMetrics];
  v4 = [v3 gradientMaskingConfiguration];
  self->_portalingFocusedView = v4 != 0;

  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    portals = self->_portals;
    self->_portals = v5;

    v7 = objc_alloc_init(UIView);
    portalContainerView = self->_portalContainerView;
    self->_portalContainerView = v7;

    [(UIView *)self addSubview:self->_portalContainerView];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = [(_UIContextMenuListView *)self outgoingCollectionView];
    v10 = [v9 visibleCells];

    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(_UIContextMenuListView *)self _updateCellPortalingWithCell:*(*(&v16 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    v15 = [(_UIContextMenuListView *)self clippingView];
    [v15 setClipsToBounds:1];
  }
}

- (void)_updateContentMargins
{
  v3 = [(_UIContextMenuListView *)self displayedMenu];
  v4 = [v3 metadata];

  v5 = (v4 >> 8) & 1;
  if ((v4 & 0x10000) != 0 || [(_UIContextMenuListView *)self position]== 1)
  {
    v6 = [(_UIContextMenuListView *)self _showChildIndicatorOnTrailingEdge];
    v7 = !v6;
    LODWORD(v5) = !v6 | v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = [(UIView *)self traitCollection];
  v9 = [v8 userInterfaceIdiom];

  v10 = _UIContextMenuGetPlatformMetrics(v9);
  [v10 menuItemInternalPadding];
  v53 = v12;
  v54 = v11;
  v14 = v13;
  v16 = v15;

  v17 = _UIContextMenuGetPlatformMetrics(v9);
  [v17 headerPadding];
  v51 = v19;
  v52 = v18;
  v21 = v20;
  v23 = v22;

  v24 = _UIContextMenuGetPlatformMetrics(v9);
  [v24 menuTitlePadding];
  v47 = v26;
  v49 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v14;
  if (v5)
  {
    v32 = [(UIView *)self traitCollection];
    v33 = _UIContextMenuGetPlatformMetrics([v32 userInterfaceIdiom]);
    v34 = [v33 titleFont];
    v35 = [v34 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v32];

    v36 = _UIContextMenuGetPlatformMetrics(v9);
    [v36 leadingIndentationWidth];
    v38 = v37;

    [v35 _scaledValueForValue:v38];
    UIRoundToViewScale(self);
    v31 = v14 + v39;
    if (v7)
    {
      v14 = v14 + v39;
    }
  }

  if (v6)
  {
    v40 = _UIContextMenuGetPlatformMetrics(v9);
    [v40 menuGutterWidth];
    v42 = v41;

    v16 = v16 + v42;
  }

  v43 = [(_UIContextMenuListView *)self _platformMetrics:v47];
  v44 = [v43 alignMenuHeaderAndItemContents];

  if (v44)
  {
    v45 = v16;
  }

  else
  {
    v45 = v30;
  }

  if (v44)
  {
    v28 = v31;
    v46 = v16;
  }

  else
  {
    v46 = v23;
  }

  if (v44)
  {
    v21 = v31;
  }

  [(_UIContextMenuListView *)self setContentMargins:v54, v31, v53, v16];
  [(_UIContextMenuListView *)self setContentMarginsWithoutSelection:v54, v14, v53, v16];
  [(_UIContextMenuListView *)self setHeaderMargins:v52, v21, v51, v46];

  [(_UIContextMenuListView *)self setMenuTitleMargins:v50, v28, v48, v45];
}

- (void)_updateCollectionViewAlpha
{
  [(_UIContextMenuListView *)self collectionViewAlpha];
  v4 = v3;
  [(_UIContextMenuListView *)self emphasisAlphaMultiplier];
  v6 = v4 * v5;
  v7 = [(_UIContextMenuListView *)self collectionView];
  [v7 setAlpha:v6];
}

- (void)_tearDownCellPortalingIfNeeded
{
  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    [(_UIContextMenuListView *)self setPortalingFocusedView:0];
    v3 = [(_UIContextMenuListView *)self clippingView];
    [v3 setClipsToBounds:0];

    [(_UIContextMenuListView *)self _removeAllPortals];
  }
}

- (_UIContextMenuListView)initWithFrame:(CGRect)a3
{
  v35[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = _UIContextMenuListView;
  v3 = [(UIView *)&v32 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(UIView *)v3 layer];
    [v5 setAllowsGroupOpacity:0];

    v6 = [(_UIContextMenuListView *)v4 _platformMetrics];
    [(_UIContextMenuListView *)v4 _updateGlassBackgroundIfNeeded];
    v7 = [UIView alloc];
    [(UIView *)v4 bounds];
    v8 = [(UIView *)v7 initWithFrame:?];
    [(_UIContextMenuListView *)v4 setClippingView:v8];

    v9 = [(_UIContextMenuListView *)v4 clippingView];
    [v9 setClipsToBounds:1];

    v10 = [(_UIContextMenuListView *)v4 clippingView];
    [(UIView *)v4 addSubview:v10];

    v11 = [(UIView *)v4 traitCollection];
    v12 = _UIContextMenuGetPlatformMetrics([v11 userInterfaceIdiom]);
    v13 = [UIVisualEffectView alloc];
    v14 = [v12 menuBackgroundEffect];
    v15 = [(UIVisualEffectView *)v13 initWithEffect:v14];

    v16 = [v12 menuBackgroundColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(_UIContextMenuListView *)v4 setBackgroundView:v15];
    v17 = [(_UIContextMenuListView *)v4 backgroundMaterialGroupName];
    v18 = [(_UIContextMenuListView *)v4 backgroundView];
    [v18 _setGroupName:v17];

    v19 = [(_UIContextMenuListView *)v4 clippingView];
    v20 = [(_UIContextMenuListView *)v4 backgroundView];
    [v19 addSubview:v20];

    [(_UIContextMenuListView *)v4 setCollectionViewAlpha:1.0];
    [(_UIContextMenuListView *)v4 setEmphasized:1];
    [(_UIContextMenuListView *)v4 setAllowsFocus:1];
    [(_UIContextMenuListView *)v4 setRoundedEdges:5];
    [(_UIContextMenuListView *)v4 _setupCellPortalingIfNeeded];
    v21 = objc_opt_self();
    v35[0] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    v23 = [(UIView *)v4 registerForTraitChanges:v22 withAction:sel__updatePlatterHairline];

    v24 = objc_opt_self();
    v34 = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];
    v26 = [(UIView *)v4 registerForTraitChanges:v25 withAction:sel__updateContentMargins];

    v27 = objc_opt_self();
    v33[0] = v27;
    v28 = objc_opt_self();
    v33[1] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v30 = [(UIView *)v4 registerForTraitChanges:v29 withHandler:&__block_literal_global_446];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[_UIContextMenuModifierKeyService sharedService];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _UIContextMenuListView;
  [(UIView *)&v4 dealloc];
}

- (void)setShouldEnableTypeSelect:(BOOL)a3
{
  v3 = a3;
  self->_shouldEnableTypeSelect = a3;
  v4 = [(_UIContextMenuListView *)self collectionView];
  [v4 _setTypeSelectShouldAvoidBecomingFirstResponder:v3];
}

- (void)disableTypeSelectIfNeeded
{
  v2 = [(_UIContextMenuListView *)self collectionView];
  [v2 _disableTypeSelectIfNeeded];
}

- (void)setShadowAlpha:(double)a3
{
  if (self->_shadowAlpha != a3)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_shadowAlpha = a3;
    if (a3 > 0.0)
    {
      v6 = [(_UIContextMenuListView *)self shadowView];
      if (v6)
      {
      }

      else
      {
        v7 = [(_UIContextMenuListView *)self _platformMetrics];
        v8 = [v7 prefersGlassAppearance];

        if ((v8 & 1) == 0)
        {
          v9[0] = MEMORY[0x1E69E9820];
          v9[1] = 3221225472;
          v9[2] = __41___UIContextMenuListView_setShadowAlpha___block_invoke;
          v9[3] = &unk_1E70F3590;
          v9[4] = self;
          [UIView performWithoutAnimation:v9];
        }
      }
    }

    [(_UIContextMenuListView *)self _updateShadowAlpha];
  }
}

- (void)setCollectionViewAlpha:(double)a3
{
  if (self->_collectionViewAlpha != a3)
  {
    self->_collectionViewAlpha = a3;
    [(_UIContextMenuListView *)self _updateCollectionViewAlpha];
  }
}

- (void)setRoundedEdges:(unint64_t)a3
{
  if (self->_roundedEdges != a3)
  {
    self->_roundedEdges = a3;
    [(_UIContextMenuListView *)self _updateCornerRadius];
  }
}

- (CGVector)selectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self collectionView];
  v6 = [v5 _autoScrollAssistantForIndexPath:v4];

  v7 = [v6 scrollView];

  v8 = [(_UIContextMenuListView *)self collectionView];

  if (v7 == v8)
  {
    [(_UIContextMenuListView *)self visibleContentSize];
    v10 = v13;
    v12 = v14;
  }

  else
  {
    [v7 frame];
    v10 = v9;
    v12 = v11;
  }

  [v7 contentSize];
  if (v15 <= v12)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 10.0;
  }

  [v7 contentSize];
  if (v17 <= v10)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 10.0;
  }

  v19 = v18;
  v20 = v16;
  result.dy = v20;
  result.dx = v19;
  return result;
}

- (void)setReversesActionOrder:(BOOL)a3
{
  if (self->_reversesActionOrder != a3)
  {
    self->_reversesActionOrder = a3;
    v4 = [(_UIContextMenuListView *)self displayedMenu];

    if (v4)
    {
      v5 = [(_UIContextMenuListView *)self displayedMenu];
      v15 = _UIContextMenuCollectionViewDataSourceSnapshot(v5, self->_reversesActionOrder);

      v6 = [(_UIContextMenuListView *)self collectionViewDataSource];
      [v6 applySnapshotUsingReloadData:v15];

      v7 = [(_UIContextMenuListView *)self displayedMenu];
      v8 = [v7 _hasGlobalHeader];
      v9 = [(_UIContextMenuListView *)self displayedMenu];
      v10 = [v9 _pinnedFooterElement];
      v11 = [(_UIContextMenuListView *)self position];
      v12 = [(UIView *)self traitCollection];
      v13 = _UIContextMenuCollectionViewLayout(v15, v8, v10 != 0, v11, v12);
      v14 = [(_UIContextMenuListView *)self collectionView];
      [v14 setCollectionViewLayout:v13];
    }
  }
}

- (void)setEmphasized:(BOOL)a3
{
  if (self->_emphasized != a3)
  {
    v3 = a3;
    self->_emphasized = a3;
    v5 = [(_UIContextMenuListView *)self collectionView];
    v6 = [v5 panGestureRecognizer];
    [v6 setEnabled:v3];

    v7 = 1.0;
    if (!self->_emphasized)
    {
      v8 = [(_UIContextMenuListView *)self parentHierarchyStyle];
      v7 = 0.8;
      if (v8 == 1)
      {
        v7 = 0.5;
      }
    }

    [(_UIContextMenuListView *)self setEmphasisAlphaMultiplier:v7];
    [(_UIContextMenuListView *)self _updateCollectionViewAlpha];

    [(_UIContextMenuListView *)self _updateShadowAlpha];
  }
}

- (void)setSubmenuTitleViewExpanded:(BOOL)a3 withMaterialGroupName:(id)a4 associatedCellContentView:(id)a5 highlighted:(BOOL)a6
{
  v8 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(_UIContextMenuListView *)self _headerIndexPath];
  if (v12)
  {
    v13 = [(_UIContextMenuListView *)self collectionView];
    v14 = [v13 supplementaryViewForElementKind:@"kContextMenuSubmenuTitleHeader" atIndexPath:v12];

    v41 = 0;
    v42 = &v41;
    v43 = 0x4010000000;
    v44 = "";
    v45 = 0u;
    v46 = 0u;
    [(_UIContextMenuListView *)self contentMargins];
    *&v45 = v15;
    *(&v45 + 1) = v16;
    *&v46 = v17;
    *(&v46 + 1) = v18;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __114___UIContextMenuListView_setSubmenuTitleViewExpanded_withMaterialGroupName_associatedCellContentView_highlighted___block_invoke;
    v33[3] = &unk_1E711AC10;
    v39 = a6;
    v33[4] = self;
    v34 = v12;
    v40 = v8;
    v19 = v14;
    v35 = v19;
    v20 = v11;
    v36 = v20;
    v38 = &v41;
    v37 = v10;
    [UIView performWithoutAnimation:v33];
    v21 = [v19 contentView];
    v22 = [v21 options];

    if (v8)
    {
      v23 = v22 & 0xFFFFFFFFFFFFFEBFLL | 0x40;
    }

    else
    {
      v23 = [v20 options] & 0x100 | v22 & 0xFFFFFFFFFFFFFFBFLL;
    }

    v24 = [v19 contentView];
    [v24 setOptions:v23];

    v25 = [v19 obscuringMaterialView];
    v26 = v25;
    v27 = 1.0;
    if (v8)
    {
      v27 = 0.0;
    }

    [v25 setAlpha:v27];

    v28 = v42;
    [v19 directionalLayoutMargins];
    v30.f64[1] = v29;
    v32.f64[1] = v31;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v28[2], v32), vceqq_f64(v28[3], v30)))) & 1) == 0)
    {
      [v19 setDirectionalLayoutMargins:{v42[4], v42[5], v42[6], v42[7]}];
      [v19 layoutIfNeeded];
    }

    _Block_object_dispose(&v41, 8);
  }
}

- (void)setPreferredMenuMaterial:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self _platformMetrics];
  v6 = _UIContextMenuListViewResolvedMaterial(v4, [v5 prefersGlassAppearance]);

  preferredMenuMaterial = self->_preferredMenuMaterial;
  self->_preferredMenuMaterial = v6;

  [(_UIContextMenuListView *)self _updateGlassBackgroundIfNeeded];
}

- (void)setSuppressGlassBackground:(BOOL)a3
{
  if (self->_suppressGlassBackground != a3)
  {
    self->_suppressGlassBackground = a3;
    [(_UIContextMenuListView *)self _updateGlassBackgroundIfNeeded];
  }
}

- (void)_updateGlassBackgroundIfNeeded
{
  v3 = [(_UIContextMenuListView *)self preferredMenuMaterial];
  if (v3 || (-[UIView _background](self, "_background"), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || (-[_UIContextMenuListView _platformMetrics](self, "_platformMetrics"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 prefersGlassAppearance], v5, v6) && (_UIContextMenuListViewResolvedMaterial(0, 1), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v3;
    if ([(_UIContextMenuListView *)self suppressGlassBackground]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v4 = [v7 _identityGlass];
      [(UIView *)self _setBackground:v4];
    }

    else
    {
      [(UIView *)self _setBackground:v7];
    }
  }
}

- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(_UIContextMenuListView *)self collectionView];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = "";
  [v6 contentSize];
  v22 = v7;
  v23 = v8;
  if (![(_UIContextMenuListView *)self hasValidContentSize])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66___UIContextMenuListView_preferredContentSizeWithinContainerSize___block_invoke;
    v12[3] = &unk_1E711AC38;
    v16 = width;
    v17 = height;
    v14 = self;
    v15 = &v18;
    v13 = v6;
    [UIView performWithoutAnimation:v12];
  }

  v9 = v19[4];
  if (v19[5] < height)
  {
    height = v19[5];
  }

  v19[5] = height;
  _Block_object_dispose(&v18, 8);

  v10 = v9;
  v11 = height;
  result.height = v11;
  result.width = v10;
  return result;
}

- (double)closestScrollTruncationDetentToHeight:(double)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(_UIContextMenuListView *)self collectionView];
  [v5 contentSize];
  if (v6 > a3)
  {
    v7 = [(_UIContextMenuListView *)self reversesActionOrder];
    v8 = a3 + -50.0;
    if (v7)
    {
      [v5 contentSize];
      v8 = v9 - v8;
    }

    [v5 bounds];
    v11 = v10;
    v12 = [v5 _collectionViewData];
    v13 = [(UICollectionViewData *)v12 layoutAttributesForElementsInRect:v8, v11, 100.0];

    if ([v13 count])
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        v18 = 1.79769313e308;
        v19 = a3;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v21 = *(*(&v25 + 1) + 8 * i);
            if (![v21 representedElementCategory])
            {
              [v21 frame];
              MidY = CGRectGetMidY(v31);
              if (v7)
              {
                [v5 contentSize];
                MidY = v23 - MidY;
              }

              if (MidY < a3 && a3 - MidY < v18)
              {
                v19 = MidY;
                v18 = a3 - MidY;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      else
      {
        v19 = a3;
      }

      a3 = v19;
    }
  }

  return a3;
}

- (void)setVisibleContentSize:(CGSize)a3
{
  if (a3.width != self->_visibleContentSize.width || a3.height != self->_visibleContentSize.height)
  {
    self->_visibleContentSize = a3;
    [(_UIContextMenuListView *)self _updateScrollInsets];
  }
}

- (void)setDisplayedMenu:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_displayedMenu, a3);
  [(_UIContextMenuListView *)self setHasValidContentSize:0];
  [(_UIContextMenuListView *)self setHighlightedIndexPath:0];
  v6 = [(_UIContextMenuListView *)self selectionView];
  [v6 setAlpha:0.0];

  v7 = [(_UIContextMenuListView *)self collectionViewDataSource];
  [(_UIContextMenuListView *)self setOutgoingCollectionViewDataSource:v7];

  [(_UIContextMenuListView *)self _updateContentMargins];
  v8 = [(_UIContextMenuListView *)self displayedMenu];
  v9 = _UIContextMenuCollectionViewDataSourceSnapshot(v8, [(_UIContextMenuListView *)self reversesActionOrder]);

  if ([(_UIContextMenuListView *)self allowsAlternates])
  {
    v10 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [(_UIContextMenuListView *)self setElementsWithAlternates:v10];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v11 = [v9 itemIdentifiers];
    v12 = [v11 countByEnumeratingWithState:&v79 objects:v83 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v80;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v80 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          if ([v16 _isLeaf])
          {
            v17 = [v16 _leafAlternates];
            v18 = [v17 count];

            if (v18)
            {
              v19 = [(_UIContextMenuListView *)self elementsWithAlternates];
              [v19 addPointer:v16];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [(_UIContextMenuListView *)self setElementsWithAlternates:0];
  }

  [(_UIContextMenuListView *)self _updateKeyboardShortcutMetricsForSnapshot:v9];
  v20 = [(_UIContextMenuListView *)self displayedMenu];
  v21 = [v20 _hasGlobalHeader];
  v22 = [(_UIContextMenuListView *)self displayedMenu];
  v23 = [v22 _pinnedFooterElement];
  v24 = [(_UIContextMenuListView *)self position];
  v25 = [(UIView *)self traitCollection];
  v26 = _UIContextMenuCollectionViewLayout(v9, v21, v23 != 0, v24, v25);

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v85);
  v28 = [(UIView *)self window];
  [v28 bounds];
  Height = CGRectGetHeight(v86);

  if (Height < 44.0)
  {
    Height = 44.0;
  }

  v30 = [[UICollectionView alloc] initWithFrame:v26 collectionViewLayout:0.0, 0.0, Width, Height];
  [(UICollectionView *)v30 setAllowsSelection:1];
  [(UICollectionView *)v30 setAllowsMultipleSelection:1];
  v31 = +[UIColor clearColor];
  [(UICollectionView *)v30 setBackgroundColor:v31];

  [(UICollectionView *)v30 setAlwaysBounceVertical:0];
  [(UICollectionView *)v30 setAlwaysBounceHorizontal:0];
  [(UIView *)v30 setClipsToBounds:0];
  v32 = [(_UIContextMenuListView *)self _platformMetrics];
  v33 = [v32 gradientMaskingConfiguration];
  v34 = [(UIView *)v30 layer];
  [v34 setAllowsGroupOpacity:v33 != 0];

  [(UICollectionView *)v30 setDelegate:self];
  [(UICollectionView *)v30 setRemembersLastFocusedIndexPath:1];
  [(UICollectionView *)v30 _setTypeSelectShouldAvoidBecomingFirstResponder:[(_UIContextMenuListView *)self shouldEnableTypeSelect]];
  v35 = [v5 _pinnedFooterElement];

  if (v35)
  {
    v36 = +[UIScrollEdgeEffectStyle hardStyle];
    v37 = [(UIScrollView *)v30 bottomEdgeEffect];
    [v37 setStyle:v36];
  }

  v38 = [(_UIContextMenuListView *)self _platformMetrics];
  v39 = [v38 gradientMaskingConfiguration];

  if (v39)
  {
    [(UICollectionView *)v30 setAllowsSelection:1];
    [(UIView *)v30 setClipsToBounds:0];
    [(UIScrollView *)v30 setContentInsetAdjustmentBehavior:2];
    [v39 gradientMaskEdgeInsets];
    [(UICollectionView *)v30 setContentInset:?];
    [v39 gradientMaskLengths];
    [(UIScrollView *)v30 _setGradientMaskLengths:?];
    [v39 gradientMaskEdgeInsets];
    [(UIScrollView *)v30 _setGradientMaskEdgeInsets:?];
    if ([v39 embedBackgroundForCompositing])
    {
      [(_UIContextMenuListView *)self _clampedCornerRadius];
      v41 = v40;
      v42 = [(UIView *)self traitCollection];
      v43 = _UIContextMenuGetPlatformMetrics([v42 userInterfaceIdiom]);
      v44 = [UIVisualEffectView alloc];
      v45 = [v43 menuBackgroundEffect];
      v46 = [(UIVisualEffectView *)v44 initWithEffect:v45];

      v47 = [v43 menuBackgroundColor];
      [(UIView *)v46 setBackgroundColor:v47];

      [(UIVisualEffectView *)v46 _setContinuousCornerRadius:v41];
      v48 = [(_UIContextMenuListView *)self backgroundMaterialGroupName];
      [(UIVisualEffectView *)v46 _setGroupName:v48];

      v49 = [UIView alloc];
      [(UIView *)v30 bounds];
      v50 = [(UIView *)v49 initWithFrame:?];
      [(UIView *)v50 addSubview:v46];
      [v39 gradientMaskEdgeInsets];
      v52 = v51;
      [v39 gradientMaskEdgeInsets];
      [(UIView *)v50 bounds];
      [(UIView *)v46 setFrame:v53 + 0.0, v52 + v54];
      [(_UIContextMenuListView *)self setCvBackgroundView:v46];
      [(UICollectionView *)v30 setBackgroundView:v50];
    }

    v55 = [(_UIContextMenuListView *)self borderView];

    if (!v55)
    {
      v56 = objc_alloc_init(UIView);
      [(_UIContextMenuListView *)self setBorderView:v56];

      v57 = [(_UIContextMenuListView *)self borderView];
      v58 = [(_UIContextMenuListView *)self clippingView];
      [(UIView *)self insertSubview:v57 belowSubview:v58];
    }

    [(UIView *)self bounds];
    v60 = v59 + -1.0;
    v62 = v61 + -1.0;
    v64 = v63 + 2.0;
    v66 = v65 + 2.0;
    v67 = [(_UIContextMenuListView *)self borderView];
    [v67 setFrame:{v60, v62, v64, v66}];

    [(_UIContextMenuListView *)self _updatePlatterHairline];
  }

  [(UICollectionView *)v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuSmallCell"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuMediumCell"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuLargeCell"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuLoadingCell"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuCustomViewCell"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuHeader" withReuseIdentifier:@"kContextMenuHeader"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuPinnedFooter" withReuseIdentifier:@"kContextMenuPinnedFooter"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuSubmenuTitleHeader" withReuseIdentifier:@"kContextMenuSubmenuTitleHeader"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuSectionSeparator" withReuseIdentifier:@"kContextMenuSectionSeparator"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientMaskSectionSeparator" withReuseIdentifier:@"kContextMenuGradientMaskSectionSeparator"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientStyleHeader" withReuseIdentifier:@"kContextMenuGradientStyleHeader"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientStyleFooter" withReuseIdentifier:@"kContextMenuGradientStyleFooter"];
  [(UICollectionView *)v30 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuThinSectionSeparator" withReuseIdentifier:@"kContextMenuThinSectionSeparator"];
  v68 = [(_UIContextMenuListView *)self _dataSourceForCollectionView:v30];
  [(_UIContextMenuListView *)self setCollectionViewDataSource:v68];

  v69 = [(_UIContextMenuListView *)self collectionViewDataSource];
  [v69 applySnapshotUsingReloadData:v9];

  [(_UIContextMenuListView *)self setCollectionView:v30];
  v70 = [(_UIContextMenuListView *)self _platformMetrics];
  v71 = [v70 gradientMaskingConfiguration];

  v72 = [(_UIContextMenuListView *)self clippingView];
  if (v71)
  {
    v73 = [(_UIContextMenuListView *)self outgoingCollectionView];
    if (!v73)
    {
      v74 = [(_UIContextMenuListView *)self backgroundView];
      [v72 insertSubview:v30 aboveSubview:v74];

      v75 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v73 = [(_UIContextMenuListView *)self backgroundView];
  }

  v75 = v73;
  [v72 insertSubview:v30 aboveSubview:v73];
LABEL_29:

  [(_UIContextMenuListView *)self _updateCollectionViewAlpha];
  v76 = [(_UIContextMenuListView *)self allowsAlternates];
  v77 = +[_UIContextMenuModifierKeyService sharedService];
  v78 = v77;
  if (v76)
  {
    [v77 addObserver:self];
  }

  else
  {
    [v77 removeObserver:self];
  }
}

- (void)willStartInPlaceMenuTransition
{
  v3 = [(_UIContextMenuListView *)self collectionView];
  [(_UIContextMenuListView *)self setOutgoingCollectionView:v3];

  [(_UIContextMenuListView *)self _setupCellPortalingIfNeeded];
}

- (void)didCompleteInPlaceMenuTransition
{
  [(_UIContextMenuListView *)self setOutgoingCollectionView:0];
  [(_UIContextMenuListView *)self setOutgoingCollectionViewDataSource:0];

  [(_UIContextMenuListView *)self _tearDownCellPortalingIfNeeded];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = [(_UIContextMenuListView *)self _platformMetrics];
  v5 = [v4 wantsContinuousHighlight];

  if (v5)
  {
    v6 = [(_UIContextMenuListView *)self highlightedIndexPath];
    if (v6)
    {
      v7 = [(_UIContextMenuListView *)self _viewAtIndexPath:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [v7 backgroundView];
        [v8 frame];
        [v7 convertRect:self toView:?];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;

        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 3221225472;
        v17[2] = __46___UIContextMenuListView_scrollViewDidScroll___block_invoke;
        v17[3] = &unk_1E70F3B20;
        v17[4] = self;
        v17[5] = v10;
        v17[6] = v12;
        v17[7] = v14;
        v17[8] = v16;
        [UIView _animateByRetargetingAnimations:v17 completion:0];
      }
    }
  }
}

- (id)preferredFocusEnvironments
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [(_UIContextMenuListView *)self displayedMenu];
  v4 = [v3 metadata];
  if ([(_UIContextMenuListView *)self typeSelectActive])
  {
    v13.receiver = self;
    v13.super_class = _UIContextMenuListView;
    v5 = [(UIView *)&v13 preferredFocusEnvironments];
    goto LABEL_10;
  }

  v6 = [(_UIContextMenuListView *)self highlightedIndexPath];

  if (v6)
  {
    v7 = [(_UIContextMenuListView *)self highlightedIndexPath];
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:v7];
  }

  else
  {
    if ((v4 & 0x100) == 0 || ([v3 options] & 0x20) == 0)
    {
      goto LABEL_9;
    }

    v10 = [(_UIContextMenuListView *)self displayedMenu];
    v11 = [v10 selectedElements];
    v7 = [v11 firstObject];

    v12 = [(_UIContextMenuListView *)self indexPathForElement:v7];
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:v12];
  }

  if (v8)
  {
    v14[0] = v8;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    goto LABEL_10;
  }

LABEL_9:
  v5 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v5;
}

- (void)collectionView:(id)a3 didUpdateFocusInContext:(id)a4 withAnimationCoordinator:(id)a5
{
  v11 = a4;
  [(_UIContextMenuListView *)self _updateCellPortalingWithUpdateFocusInContext:v11 inCollectionView:a3];
  v7 = [v11 nextFocusedIndexPath];
  v8 = [v11 nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v9 = [v11 nextFocusedItem];
  v10 = [UIFocusSystem environment:self containsEnvironment:v9];

  if (v10)
  {
    [(_UIContextMenuListView *)self _headerIndexPath];
    v7 = v8 = v7;
LABEL_4:
  }

  if (v7 || [(_UIContextMenuListView *)self parentHierarchyStyle]== 1)
  {
    [(_UIContextMenuListView *)self highlightItemAtIndexPath:v7 forHover:0];
  }
}

- (BOOL)collectionView:(id)a3 canFocusItemAtIndexPath:(id)a4
{
  v5 = [(_UIContextMenuListView *)self elementAtIndexPath:a4];
  if ([v5 _canBeHighlighted])
  {
    v6 = [(_UIContextMenuListView *)self allowsFocus];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setAllowsFocus:(BOOL)a3
{
  self->_allowsFocus = a3;
  v4 = [(_UIContextMenuListView *)self _headerIndexPath];
  v5 = [(_UIContextMenuListView *)self _viewAtIndexPath:v4];

  if (v5)
  {
    [v5 setAllowsFocus:{-[_UIContextMenuListView allowsFocus](self, "allowsFocus")}];
  }
}

- (id)_collectionView:(id)a3 typeSelectStringForItemAtIndexPath:(id)a4
{
  v5 = [(_UIContextMenuListView *)self elementAtIndexPath:a4];
  if ([v5 _canBeHighlighted] && -[_UIContextMenuListView allowsFocus](self, "allowsFocus"))
  {
    v6 = [v5 title];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_collectionView:(id)a3 updateTypeSelectResultForCell:(id)a4 atIndexPath:(id)a5 withItemResult:(id)a6 animator:(id)a7
{
  v60[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  [(_UIContextMenuListView *)self setTypeSelectActive:v13 != 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [v11 actionView];
    v16 = [(_UIContextMenuListView *)self elementAtIndexPath:v12];
    v17 = [v16 title];
    v18 = [v16 attributedTitle];
    v43 = v17;
    v19 = [v17 length];
    if (v19 || [v18 length])
    {
      v39 = v16;
      v40 = v15;
      v41 = v14;
      v42 = v12;
      v20 = [v15 _primaryContentColorForCurrentState];
      v21 = +[_UITypeSelectInteraction _defaultSecondaryColorTransformer];
      v22 = (v21)[2](v21, v20);

      v23 = [v13 unmatchingRanges];
      if (v18)
      {
        v24 = *off_1E70EC920;
      }

      else
      {
        v25 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = *off_1E70EC920;
        v59 = *off_1E70EC920;
        v60[0] = v20;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
        v18 = [v25 initWithString:v43 attributes:v26];
      }

      v27 = [v18 mutableCopy];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke;
      v55[3] = &unk_1E711AC88;
      v28 = v20;
      v56 = v28;
      v29 = v27;
      v57 = v29;
      v30 = v23;
      v58 = v30;
      [v18 enumerateAttribute:v24 inRange:0 options:v19 usingBlock:{0, v55}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_3;
      aBlock[3] = &unk_1E711ACB0;
      v48 = v13;
      v49 = v30;
      v54 = v19;
      v50 = v22;
      v51 = v28;
      v31 = v40;
      v52 = v31;
      v53 = v29;
      v38 = v29;
      v32 = v28;
      v33 = v22;
      v34 = v30;
      v35 = _Block_copy(aBlock);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_4;
      v44[3] = &unk_1E70F37C0;
      v36 = v31;
      v15 = v40;
      v45 = v36;
      v46 = v35;
      v37 = v35;
      v14 = v41;
      [v41 addAnimations:v44];

      v12 = v42;
      v16 = v39;
    }
  }
}

- (void)_collectionView:(id)a3 typeSelectResultDidUpdate:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v6)
  {
    if (![(_UIContextMenuListView *)self typeSelectActive])
    {
      v7 = [(UIView *)self _focusSystem];
      v8 = [v7 _focusedItemIsContainedInEnvironment:self includeSelf:1];

      if ((v8 & 1) == 0)
      {
        v9 = [v6 preferredItem];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 indexPath];
          [(_UIContextMenuListView *)self highlightItemAtIndexPath:v11];
          v12 = [v14 cellForItemAtIndexPath:v11];
          v13 = [v14 _focusSystem];
          [v13 _updateFocusImmediatelyToEnvironment:v12];
        }
      }
    }
  }
}

- (void)scrollToFirstSignificantAction
{
  v3 = [(_UIContextMenuListView *)self highlightedIndexPath];
  if (v3 && (v4 = v3, -[_UIContextMenuListView highlightedIndexPath](self, "highlightedIndexPath"), v5 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuListView _headerIndexPath](self, "_headerIndexPath"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v4, (v7 & 1) == 0))
  {
    v17 = [(_UIContextMenuListView *)self collectionView];
    v11 = [(_UIContextMenuListView *)self highlightedIndexPath];
    [v17 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:0];
  }

  else
  {
    if ([(_UIContextMenuListView *)self _shouldScrollToSelectedAction])
    {
      v8 = [(_UIContextMenuListView *)self displayedMenu];
      v9 = [v8 selectedElements];
      v17 = [v9 firstObject];

      v10 = [(_UIContextMenuListView *)self collectionViewDataSource];
      v11 = [v10 indexPathForItemIdentifier:v17];

      v12 = [(_UIContextMenuListView *)self collectionView];
      [v12 scrollToItemAtIndexPath:v11 atScrollPosition:2 animated:0];
    }

    else
    {
      if (![(_UIContextMenuListView *)self reversesActionOrder])
      {
        return;
      }

      v13 = [(_UIContextMenuListView *)self collectionView];
      v14 = [v13 numberOfSections] - 1;

      v15 = [(_UIContextMenuListView *)self collectionView];
      v16 = [v15 numberOfItemsInSection:v14] - 1;

      v17 = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:v14];
      v11 = [(_UIContextMenuListView *)self collectionView];
      v12 = [(_UIContextMenuListView *)self _platformMetrics];
      [v12 sectionInsets];
      [v11 _scrollToItemAtIndexPath:v17 atScrollPosition:4 additionalInsets:0 animated:?];
    }
  }
}

- (BOOL)_shouldScrollToSelectedAction
{
  v2 = [(_UIContextMenuListView *)self displayedMenu];
  v3 = (([v2 options] & 0x20) != 0 || objc_msgSend(v2, "forceAutomaticSelection")) && (objc_msgSend(v2, "metadata") & 0x10100) == 256;

  return v3;
}

- (id)indexPathForItemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(UIView *)self bounds];
  v23.x = x;
  v23.y = y;
  if (CGRectContainsPoint(v26, v23))
  {
    v6 = [(_UIContextMenuListView *)self collectionView];
    v7 = [v6 visibleSupplementaryViewsOfKind:@"kContextMenuSubmenuTitleHeader"];
    v8 = [v7 firstObject];

    if (v8 && ([v8 convertPoint:self fromView:{x, y}], v10 = v9, v12 = v11, objc_msgSend(v8, "bounds"), v24.x = v10, v24.y = v12, CGRectContainsPoint(v27, v24)))
    {
      v13 = [(_UIContextMenuListView *)self _headerIndexPath];
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 visibleSupplementaryViewsOfKind:@"kContextMenuPinnedFooter"];
    v15 = [v14 firstObject];

    if (v15)
    {
      [v15 convertPoint:self fromView:{x, y}];
      v17 = v16;
      v19 = v18;
      [v15 bounds];
      v25.x = v17;
      v25.y = v19;
      if (CGRectContainsPoint(v28, v25))
      {
        v20 = [(_UIContextMenuListView *)self _footerIndexPath];

        v13 = v20;
      }
    }

    if (!v13)
    {
      [v6 convertPoint:self fromView:{x, y}];
      v13 = [v6 indexPathForItemAtPoint:?];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)elementAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self _headerIndexPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(_UIContextMenuListView *)self displayedMenu];
  }

  else
  {
    v8 = [(_UIContextMenuListView *)self _footerIndexPath];
    v9 = [v4 isEqual:v8];

    if (v9)
    {
      v10 = [(_UIContextMenuListView *)self displayedMenu];
      [v10 _pinnedFooterElement];
    }

    else
    {
      v10 = [(_UIContextMenuListView *)self collectionViewDataSource];
      [v10 itemIdentifierForIndexPath:v4];
    }
    v7 = ;
  }

  return v7;
}

- (id)indexPathForElement:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self displayedMenu];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(_UIContextMenuListView *)self _headerIndexPath];
LABEL_5:
    v11 = v7;
    goto LABEL_7;
  }

  v8 = [(_UIContextMenuListView *)self displayedMenu];
  v9 = [v8 _pinnedFooterElement];
  v10 = [v4 isEqual:v9];

  if (v10)
  {
    v7 = [(_UIContextMenuListView *)self _footerIndexPath];
    goto LABEL_5;
  }

  v12 = [(_UIContextMenuListView *)self collectionViewDataSource];
  v11 = [v12 indexPathForItemIdentifier:v4];

LABEL_7:

  return v11;
}

- (id)cellForElement:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self collectionViewDataSource];
  v6 = [v5 indexPathForItemIdentifier:v4];

  if (v6)
  {
    v7 = [(_UIContextMenuListView *)self collectionView];
    v8 = [v7 cellForItemAtIndexPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unHighlightItemAtIndexPath:(id)a3
{
  v4 = a3;
  [(_UIContextMenuListView *)self setHighlightedIndexPath:0];
  v5 = [(UIView *)self traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([v5 userInterfaceIdiom]);
  v7 = [v6 allowsItemHighlighting];

  if (v7)
  {
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:v4];
    [v8 setHighlighted:0];
  }

  v9 = [(_UIContextMenuListView *)self _platformMetrics];
  v10 = [v9 wantsContinuousHighlight];

  if (v10)
  {
    v11 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __53___UIContextMenuListView_unHighlightItemAtIndexPath___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v12 completion:0];
  }
}

- (void)highlightItemAtIndexPath:(id)a3 forHover:(BOOL)a4 playFeedback:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  v8 = [(_UIContextMenuListView *)self highlightedIndexPath];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    v10 = [(_UIContextMenuListView *)self highlightedIndexPath];

    if (v10)
    {
      v11 = [(_UIContextMenuListView *)self highlightedIndexPath];
      [(_UIContextMenuListView *)self unHighlightItemAtIndexPath:v11];
    }

    if (!v7)
    {
      goto LABEL_18;
    }

    v12 = [(_UIContextMenuListView *)self elementAtIndexPath:v7];
    v13 = [v12 _canBeHighlighted];

    if (v13)
    {
      [(_UIContextMenuListView *)self setHighlightedIndexPath:v7];
      v14 = [(UIView *)self traitCollection];
      v15 = _UIContextMenuGetPlatformMetrics([v14 userInterfaceIdiom]);
      v16 = [v15 allowsItemHighlighting];

      if (v16)
      {
        v17 = [(_UIContextMenuListView *)self _viewAtIndexPath:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          [v18 setHighlighted:1 forHover:v5];
          v19 = [(_UIContextMenuListView *)self _platformMetrics];
          v20 = [v19 wantsContinuousHighlight];

          if (v20)
          {
            v21 = [v18 backgroundView];
            [v21 setHidden:1];
            [v21 frame];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            v30 = [(_UIContextMenuListView *)self collectionView];
            [v18 convertRect:v30 toView:{v23, v25, v27, v29}];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;

            v51 = v21;
            v39 = [v21 layer];
            [v39 cornerRadius];
            v41 = v40;

            v42 = [(_UIContextMenuListView *)self selectionView];
            v43 = [v42 window];

            if (!v43)
            {
              v55[0] = MEMORY[0x1E69E9820];
              v55[1] = 3221225472;
              v55[2] = __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke;
              v55[3] = &unk_1E70F3B20;
              v55[4] = self;
              v55[5] = v32;
              v55[6] = v34;
              v55[7] = v36;
              v55[8] = v38;
              [UIView performWithoutAnimation:v55];
            }

            v44 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.18];
            v45 = [UIViewSpringAnimationBehavior behaviorWithDampingRatio:1.0 response:0.3];
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke_2;
            aBlock[3] = &unk_1E7116870;
            aBlock[4] = self;
            aBlock[5] = v32;
            aBlock[6] = v34;
            aBlock[7] = v36;
            aBlock[8] = v38;
            aBlock[9] = v41;
            v46 = _Block_copy(aBlock);
            v47 = [(_UIContextMenuListView *)self selectionView];
            IsEffectivelyInvisible = _UIPointerViewIsEffectivelyInvisible(v47);

            if (IsEffectivelyInvisible)
            {
              [UIView performWithoutAnimation:v46];
            }

            else
            {
              [UIView _animateUsingSpringBehavior:v44 tracking:0 animations:v46 completion:0];
            }

            v49 = v44;
            v52[0] = MEMORY[0x1E69E9820];
            v52[1] = 3221225472;
            v52[2] = __73___UIContextMenuListView_highlightItemAtIndexPath_forHover_playFeedback___block_invoke_3;
            v52[3] = &unk_1E70F35B8;
            v52[4] = self;
            v53 = v51;
            v50 = v51;
            [UIView _animateUsingSpringBehavior:v45 tracking:0 animations:v52 completion:0];
          }
        }

        else
        {
          [v17 setHighlighted:1];
        }

        [v17 layoutIfNeeded];
      }

LABEL_18:
      [(UIView *)self setNeedsFocusUpdate];
    }
  }
}

- (id)_viewAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(_UIContextMenuListView *)self _headerIndexPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(_UIContextMenuListView *)self collectionView];
    v8 = [v7 supplementaryViewForElementKind:@"kContextMenuSubmenuTitleHeader" atIndexPath:v4];
  }

  else
  {
    v9 = [(_UIContextMenuListView *)self _footerIndexPath];
    v10 = [v4 isEqual:v9];

    v11 = [(_UIContextMenuListView *)self collectionView];
    v7 = v11;
    if (v10)
    {
      v12 = [v11 visibleSupplementaryViewsOfKind:@"kContextMenuPinnedFooter"];
      v13 = [v12 firstObject];

      goto LABEL_7;
    }

    v8 = [v11 cellForItemAtIndexPath:v4];
  }

  v13 = v8;
LABEL_7:

  return v13;
}

- (id)_dataSourceForCollectionView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [UICollectionViewDiffableDataSource alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___UIContextMenuListView__dataSourceForCollectionView___block_invoke;
  v10[3] = &unk_1E711ACD8;
  objc_copyWeak(&v11, &location);
  v6 = [(UICollectionViewDiffableDataSource *)v5 initWithCollectionView:v4 cellProvider:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55___UIContextMenuListView__dataSourceForCollectionView___block_invoke_2;
  v8[3] = &unk_1E7108E00;
  objc_copyWeak(&v9, &location);
  [(UICollectionViewDiffableDataSource *)v6 setSupplementaryViewProvider:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

- (void)_configureCell:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5 forElement:(id)a6 section:(id)a7 size:(int64_t)a8
{
  v14 = a3;
  v53 = a4;
  v52 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [v14 actionView];
  if ([v16 layout] == 1)
  {
    v18 = [(_UIContextMenuListView *)self _platformMetrics];
    [v18 enableFloatingFocusStyle];
  }

  else if (a8 > 1)
  {
    v19 = [(_UIContextMenuListView *)self _platformMetrics];
    [v19 prefersLeadingImageCellLayout];
  }

  [v17 setLayoutClass:objc_opt_class()];
  v50 = v14;
  [v14 _setFocusStyle:{objc_msgSend(v17, "focusStyle")}];
  v54 = [v16 isMultiColorPalette];
  v20 = v15;
  v21 = v20;
  if ([(_UIContextMenuListView *)self allowsAlternates])
  {
    v22 = +[_UIContextMenuModifierKeyService sharedService];
    v21 = _UIMenuElementAlternateForModifierFlags(v20, [v22 currentModifierFlags]);
  }

  v23 = [v21 image];
  v24 = [v21 subtitle];
  v55 = v24;
  if ([v21 _isLeaf])
  {
    v25 = v21;
    if (![v24 length] && (dyld_program_sdk_at_least() & 1) == 0)
    {
      [v25 discoverabilityTitle];
      v27 = v26 = v23;

      v55 = v27;
      v23 = v26;
    }

    v51 = [v25 attributes] & 1;
    v28 = [v25 attributes];
    v56 = [v25 _keyboardShortcut];
    v29 = [v25 state];
    if (v29 == 1)
    {
      v30 = [v25 selectedImage];

      if (v30)
      {
        v31 = [v25 selectedImage];

        v54 = 2;
        v23 = v31;
      }
    }

    v32 = 0;
  }

  else
  {
    v33 = v20;
    v28 = [v33 options];
    LODWORD(v29) = [v33 _shouldShowSelectionState];

    v56 = 0;
    v51 = 0;
    v32 = 16;
    v29 = v29;
  }

  v34 = [v21 attributedTitle];

  if (v34)
  {
    v35 = [v21 attributedTitle];
    [v17 setAttributedTitle:v35];
  }

  else
  {
    v35 = [v21 title];
    [v17 setTitle:v35];
  }

  [v17 setSubtitle:v55];
  v36 = [v20 _accessoryAction];

  if (v36)
  {
    v37 = [v20 _accessoryAction];
    [v17 setAccessoryAction:v37];
  }

  else
  {
    [v17 setImage:v23];
  }

  v49 = v23;
  if (v56 && [(_UIContextMenuListView *)self allowsKeyboardShortcuts])
  {
    [v17 setKeyboardShortcut:v56];
    if (self->_explicitModifierLabelWidth > 0.0 || self->_explicitInputLabelWidth > 0.0)
    {
      [v17 setKeyboardShortcutModifiersWidth:? inputWidth:?];
    }
  }

  else
  {
    [v17 setKeyboardShortcut:0];
  }

  v38 = v28 & 2;
  v39 = [v20 accessibilityIdentifier];
  [v17 setAccessibilityIdentifier:v39];

  v40 = [(_UIContextMenuListView *)self displayedMenu];
  v41 = [v40 metadata];

  if ((v41 & 0x10000) != 0 && [(_UIContextMenuListView *)self _showChildIndicatorOnTrailingEdge])
  {
    v32 |= 0x20uLL;
  }

  if ([v16 hasImageInLargeCell])
  {
    v42 = v38 | v51 | v32 | 0x100;
  }

  else
  {
    v42 = v38 | v51 | v32;
  }

  [v17 setSelectedIconBehavior:v54];
  v43 = [v17 layout];
  v44 = [v43 useContentShapeForSelectionHighlight];

  if (v44)
  {
    v46 = v52;
    v45 = v53;
    if ((v29 - 1) <= 1)
    {
      [v53 selectItemAtIndexPath:v52 animated:0 scrollPosition:0];
    }
  }

  else
  {
    v47 = v42 | 4;
    if (v29 != 1)
    {
      v47 = v42;
    }

    if (v29 == 2)
    {
      v42 |= 8uLL;
    }

    else
    {
      v42 = v47;
    }

    v46 = v52;
    v45 = v53;
  }

  if ([(_UIContextMenuListView *)self allowsBackgroundViewInteraction])
  {
    v48 = v42;
  }

  else
  {
    v48 = v42 | 0x80;
  }

  [v17 setOptions:v48];
  [v17 setNumberOfTitleLines:{objc_msgSend(v16, "actionLineLimit")}];
  if ([v20 _isLeaf])
  {
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__154;
    v63 = __Block_byref_object_dispose__154;
    v64 = 0;
    v57[4] = &v59;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __94___UIContextMenuListView__configureCell_inCollectionView_atIndexPath_forElement_section_size___block_invoke;
    v58[3] = &unk_1E711A0B0;
    v58[4] = &v59;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __94___UIContextMenuListView__configureCell_inCollectionView_atIndexPath_forElement_section_size___block_invoke_2;
    v57[3] = &unk_1E711A0D8;
    [v20 _acceptMenuVisit:0 commandVisit:v58 actionVisit:v57 deferredElementVisit:0];
    if (v60[5])
    {
      [v17 setPasteVariant:?];
    }

    _Block_object_dispose(&v59, 8);
  }
}

- (BOOL)_showChildIndicatorOnTrailingEdge
{
  if ([(_UIContextMenuListView *)self parentHierarchyStyle]== 2)
  {
    return 1;
  }

  v4 = [(_UIContextMenuListView *)self _platformMetrics];
  v5 = [v4 cascadedLayoutShowsChevronOnTrailingEdge];

  return v5;
}

- (void)_updatePlatterHairline
{
  v3 = [(_UIContextMenuListView *)self _platformMetrics];
  v14 = [v3 gradientMaskingConfiguration];

  v4 = v14;
  if (v14)
  {
    v5 = [v14 platterHairlineColorProvider];
    v6 = [(UIView *)self traitCollection];
    v7 = (v5)[2](v5, v6);

    if (v7)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = [v7 CGColor];
    v10 = [(_UIContextMenuListView *)self borderView];
    v11 = [v10 layer];
    [v11 setBorderColor:v9];

    v12 = [(_UIContextMenuListView *)self borderView];
    v13 = [v12 layer];
    [v13 setBorderWidth:v8];

    v4 = v14;
  }
}

- (void)_updateCellPortalingWithCell:(id)a3
{
  v4 = a3;
  if (-[_UIContextMenuListView portalingFocusedView](self, "portalingFocusedView") && [v4 isFocused])
  {
    [(_UIContextMenuListView *)self _portalCellIfNeeded:v4];
  }
}

- (void)_updateCellPortalingWithUpdateFocusInContext:(id)a3 inCollectionView:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    v7 = [v9 nextFocusedIndexPath];
    if (v7)
    {
      v8 = [v6 cellForItemAtIndexPath:v7];
      [(_UIContextMenuListView *)self _portalCellIfNeeded:v8];
    }
  }
}

- (void)_portalCellIfNeeded:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(_UIContextMenuListView *)self portals];
  v6 = [(_UIPortalView *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v18 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v17 + 1) + 8 * v9) sourceView];
      v11 = [v10 isEqual:v4];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(_UIPortalView *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v5 = [[_UIPortalView alloc] initWithSourceView:v4];
    [(_UIPortalView *)v5 setHidesSourceView:1];
    [(_UIPortalView *)v5 setMatchesPosition:1];
    [(_UIPortalView *)v5 setMatchesTransform:1];
    [(_UIPortalView *)v5 setMatchesAlpha:1];
    [(_UIPortalView *)v5 setAllowsHitTesting:0];
    v12 = [v4 layer];
    v13 = [v12 flipsHorizontalAxis];
    v14 = [(_UIPortalView *)v5 portalLayer];
    [v14 setFlipsHorizontalAxis:v13];

    v15 = [(_UIContextMenuListView *)self portals];
    [v15 addObject:v5];

    v16 = [(_UIContextMenuListView *)self portalContainerView];
    [v16 addSubview:v5];
  }
}

- (void)_removeAllPortals
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(_UIContextMenuListView *)self portals];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = [(_UIContextMenuListView *)self portals];
  [v8 removeAllObjects];
}

- (void)_updateKeyboardShortcutMetricsForSnapshot:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v32 = a3;
  if ([(_UIContextMenuListView *)self allowsKeyboardShortcuts]&& [(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [v32 sectionIdentifiers];
    v4 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v41;
      v31 = *v41;
      do
      {
        v8 = 0;
        v33 = v5;
        do
        {
          if (*v41 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v40 + 1) + 8 * v8);
          if ([v9 layout] != 1)
          {
            v35 = v8;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v10 = [v32 itemIdentifiersInSectionWithIdentifier:v9];
            v11 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v37;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v37 != v13)
                  {
                    objc_enumerationMutation(v10);
                  }

                  v15 = *(*(&v36 + 1) + 8 * i);
                  if ([v15 _isLeaf])
                  {
                    v16 = v15;
                    if ([(_UIContextMenuListView *)self allowsAlternates])
                    {
                      v17 = [(_UIContextMenuListView *)self elementsWithAlternates];

                      if (v17)
                      {
                        v18 = +[_UIContextMenuModifierKeyService sharedService];
                        v19 = _UIMenuElementAlternateForModifierFlags(v16, [v18 currentModifierFlags]);

                        if ([v19 _isLeaf])
                        {
                          v20 = v19;

                          v16 = v20;
                        }
                      }
                    }

                    v21 = [v16 _keyboardShortcut];

                    if (v21)
                    {
                      if (!v6)
                      {
                        v22 = [(UIView *)self traitCollection];
                        v23 = _UIContextMenuGetPlatformMetrics([v22 userInterfaceIdiom]);
                        v6 = objc_opt_new();
                        v24 = [v23 itemKeyboardShortcutColor];
                        [v6 setTextColor:v24];

                        v25 = [v23 titleFont];
                        [v6 setFont:v25];

                        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
                        [(UIView *)self addSubview:v6];
                      }

                      v26 = [v16 _keyboardShortcut];
                      [v6 setShortcut:v26];

                      [v6 setNeedsLayout];
                      [v6 layoutIfNeeded];
                      explicitModifierLabelWidth = self->_explicitModifierLabelWidth;
                      [v6 modifiersLabelWidth];
                      if (explicitModifierLabelWidth >= v28)
                      {
                        v28 = explicitModifierLabelWidth;
                      }

                      self->_explicitModifierLabelWidth = v28;
                      explicitInputLabelWidth = self->_explicitInputLabelWidth;
                      [v6 inputLabelWidth];
                      if (explicitInputLabelWidth >= v30)
                      {
                        v30 = explicitInputLabelWidth;
                      }

                      self->_explicitInputLabelWidth = v30;
                    }
                  }
                }

                v12 = [v10 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v12);
            }

            v7 = v31;
            v5 = v33;
            v8 = v35;
          }

          ++v8;
        }

        while (v8 != v5);
        v5 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v5);
    }

    else
    {
      v6 = 0;
    }

    [v6 removeFromSuperview];
  }
}

- (void)modifierKeyServiceDidChangeCurrentModifierFlags
{
  if ([(_UIContextMenuListView *)self allowsAlternates])
  {
    v3 = [(_UIContextMenuListView *)self elementsWithAlternates];

    if (v3)
    {
      v4 = [(_UIContextMenuListView *)self collectionViewDataSource];
      v7 = [v4 snapshot];

      v5 = [v7 itemIdentifiers];
      [v7 reconfigureItemsWithIdentifiers:v5];

      [(_UIContextMenuListView *)self _updateKeyboardShortcutMetricsForSnapshot:v7];
      v6 = [(_UIContextMenuListView *)self collectionViewDataSource];
      [v6 applySnapshot:v7 animatingDifferences:0];
    }
  }
}

- (NSDirectionalEdgeInsets)contentMarginsWithoutSelection
{
  top = self->_contentMarginsWithoutSelection.top;
  leading = self->_contentMarginsWithoutSelection.leading;
  bottom = self->_contentMarginsWithoutSelection.bottom;
  trailing = self->_contentMarginsWithoutSelection.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)headerMargins
{
  top = self->_headerMargins.top;
  leading = self->_headerMargins.leading;
  bottom = self->_headerMargins.bottom;
  trailing = self->_headerMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)menuTitleMargins
{
  top = self->_menuTitleMargins.top;
  leading = self->_menuTitleMargins.leading;
  bottom = self->_menuTitleMargins.bottom;
  trailing = self->_menuTitleMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end