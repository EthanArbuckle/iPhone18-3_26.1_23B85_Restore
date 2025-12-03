@interface _UIContextMenuListView
- (BOOL)_shouldScrollToSelectedAction;
- (BOOL)_showChildIndicatorOnTrailingEdge;
- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path;
- (CGSize)nativeContentSize;
- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)size;
- (CGSize)visibleContentSize;
- (CGVector)selectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)path;
- (NSDirectionalEdgeInsets)contentMargins;
- (NSDirectionalEdgeInsets)contentMarginsWithoutSelection;
- (NSDirectionalEdgeInsets)headerMargins;
- (NSDirectionalEdgeInsets)menuTitleMargins;
- (NSString)backgroundMaterialGroupName;
- (UIEdgeInsets)contentInsets;
- (_UIContextMenuListView)initWithFrame:(CGRect)frame;
- (double)_clampedCornerRadius;
- (double)closestScrollTruncationDetentToHeight:(double)height;
- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path;
- (id)_dataSourceForCollectionView:(id)view;
- (id)_footerIndexPath;
- (id)_headerIndexPath;
- (id)_platformMetrics;
- (id)_viewAtIndexPath:(id)path;
- (id)cellForElement:(id)element;
- (id)elementAtIndexPath:(id)path;
- (id)indexPathForElement:(id)element;
- (id)indexPathForItemAtPoint:(CGPoint)point;
- (id)preferredFocusEnvironments;
- (void)_collectionView:(id)view typeSelectResultDidUpdate:(id)update;
- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator;
- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size;
- (void)_portalCellIfNeeded:(id)needed;
- (void)_removeAllPortals;
- (void)_setupCellPortalingIfNeeded;
- (void)_sizeClippingAndCollectionViews;
- (void)_tearDownCellPortalingIfNeeded;
- (void)_updateCellPortalingWithCell:(id)cell;
- (void)_updateCellPortalingWithUpdateFocusInContext:(id)context inCollectionView:(id)view;
- (void)_updateCollectionViewAlpha;
- (void)_updateContentMargins;
- (void)_updateCornerRadius;
- (void)_updateGlassBackgroundIfNeeded;
- (void)_updateKeyboardShortcutMetricsForSnapshot:(id)snapshot;
- (void)_updatePlatterHairline;
- (void)_updateScrollInsets;
- (void)_updateShadowAlpha;
- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)dealloc;
- (void)didCompleteInPlaceMenuTransition;
- (void)disableTypeSelectIfNeeded;
- (void)highlightItemAtIndexPath:(id)path forHover:(BOOL)hover playFeedback:(BOOL)feedback;
- (void)layoutSubviews;
- (void)modifierKeyServiceDidChangeCurrentModifierFlags;
- (void)scrollToFirstSignificantAction;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setAllowsFocus:(BOOL)focus;
- (void)setCollectionViewAlpha:(double)alpha;
- (void)setDisplayedMenu:(id)menu;
- (void)setEmphasized:(BOOL)emphasized;
- (void)setPreferredMenuMaterial:(id)material;
- (void)setReversesActionOrder:(BOOL)order;
- (void)setRoundedEdges:(unint64_t)edges;
- (void)setShadowAlpha:(double)alpha;
- (void)setShouldEnableTypeSelect:(BOOL)select;
- (void)setSubmenuTitleViewExpanded:(BOOL)expanded withMaterialGroupName:(id)name associatedCellContentView:(id)view highlighted:(BOOL)highlighted;
- (void)setSuppressGlassBackground:(BOOL)background;
- (void)setVisibleContentSize:(CGSize)size;
- (void)unHighlightItemAtIndexPath:(id)path;
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
  backgroundView = [(_UIContextMenuListView *)self backgroundView];
  [backgroundView setFrame:{v12, v14, v16, v18}];

  clippingView = [(_UIContextMenuListView *)self clippingView];
  [clippingView setFrame:{v12, v14, v16, v18}];

  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];

  if (gradientMaskingConfiguration)
  {
    if ([gradientMaskingConfiguration embedBackgroundForCompositing])
    {
      [gradientMaskingConfiguration gradientMaskEdgeInsets];
      v23 = v14 + v22;
      cvBackgroundView = [(_UIContextMenuListView *)self cvBackgroundView];
      [cvBackgroundView setFrame:{v12, v23, v16, v18}];
    }

    [gradientMaskingConfiguration gradientMaskEdgeInsets];
    v26 = v25;
    [gradientMaskingConfiguration gradientMaskEdgeInsets];
    v28 = v14 - v26;
    v29 = v18 - (-v27 - v26);
    collectionView = [(_UIContextMenuListView *)self collectionView];
    [collectionView setFrame:{v12 + 0.0, v28, v16, v29}];

    borderView = [(_UIContextMenuListView *)self borderView];
    [borderView setFrame:{v12 + -1.0, v14 + -1.0, v16 + 2.0, v18 + 2.0}];
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
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];

  if (!gradientMaskingConfiguration)
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    [collectionView contentSize];
    v7 = v6;

    [(_UIContextMenuListView *)self visibleContentSize];
    v9 = v7 - v8;
    collectionView2 = [(_UIContextMenuListView *)self collectionView];
    [collectionView2 frame];
    v11 = v9 + CGRectGetHeight(v27) - v7;

    v12 = fmax(v11, 0.0);
    collectionView3 = [(_UIContextMenuListView *)self collectionView];
    [collectionView3 contentInset];
    v15 = v14;

    collectionView4 = [(_UIContextMenuListView *)self collectionView];
    [collectionView4 setContentInset:{0.0, 0.0, v12, 0.0}];

    if (v15 != v12)
    {
      displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
      _pinnedFooterElement = [displayedMenu _pinnedFooterElement];

      if (_pinnedFooterElement)
      {
        collectionView5 = [(_UIContextMenuListView *)self collectionView];
        collectionViewLayout = [collectionView5 collectionViewLayout];

        _invalidationContextForRefreshingVisibleElementAttributes = [collectionViewLayout _invalidationContextForRefreshingVisibleElementAttributes];
        _footerIndexPath = [(_UIContextMenuListView *)self _footerIndexPath];
        v26[0] = _footerIndexPath;
        v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
        [_invalidationContextForRefreshingVisibleElementAttributes invalidateSupplementaryElementsOfKind:@"kContextMenuPinnedFooter" atIndexPaths:v23];

        collectionView6 = [(_UIContextMenuListView *)self collectionView];
        collectionViewLayout2 = [collectionView6 collectionViewLayout];
        [collectionViewLayout2 invalidateLayoutWithContext:_invalidationContextForRefreshingVisibleElementAttributes];
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
  traitCollection = [(UIView *)self traitCollection];
  v3 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);

  return v3;
}

- (NSString)backgroundMaterialGroupName
{
  backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  if (!backgroundMaterialGroupName)
  {
    v4 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v4 stringWithFormat:@"context-menu-background-%@", uUIDString];
    v8 = self->_backgroundMaterialGroupName;
    self->_backgroundMaterialGroupName = v7;

    backgroundMaterialGroupName = self->_backgroundMaterialGroupName;
  }

  return backgroundMaterialGroupName;
}

- (void)_updateShadowAlpha
{
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  previewShadowSettings = [_platformMetrics previewShadowSettings];

  if (previewShadowSettings && ([previewShadowSettings opacity], v4 > 0.0))
  {
    [previewShadowSettings opacity];
    v6 = v5;
    [(_UIContextMenuListView *)self emphasisAlphaMultiplier];
    v8 = v6 * v7;
    [(_UIContextMenuListView *)self shadowAlpha];
    *&v8 = v8 * ceil(v9);
    clippingView = [(_UIContextMenuListView *)self clippingView];
    layer = [clippingView layer];
    LODWORD(v12) = LODWORD(v8);
    [layer setShadowOpacity:v12];

    color = [previewShadowSettings color];
    cGColor = [color CGColor];
    clippingView2 = [(_UIContextMenuListView *)self clippingView];
    layer2 = [clippingView2 layer];
    [layer2 setShadowColor:cGColor];

    [previewShadowSettings offset];
    v18 = v17;
    v20 = v19;
    clippingView3 = [(_UIContextMenuListView *)self clippingView];
    layer3 = [clippingView3 layer];
    [layer3 setShadowOffset:{v18, v20}];

    [previewShadowSettings radius];
    v24 = v23;
    clippingView4 = [(_UIContextMenuListView *)self clippingView];
    layer4 = [clippingView4 layer];
    [layer4 setShadowRadius:v24];

    clippingView5 = [(_UIContextMenuListView *)self clippingView];
    layer5 = [clippingView5 layer];
    [layer5 setShadowPathIsBounds:1];
  }

  else
  {
    [(_UIContextMenuListView *)self shadowAlpha];
    v30 = v29;
    [(_UIContextMenuListView *)self emphasisAlphaMultiplier];
    v32 = v30 * v31;
    clippingView5 = [(_UIContextMenuListView *)self shadowView];
    [clippingView5 setAlpha:v32];
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
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];
  backgroundMasksCorners = [gradientMaskingConfiguration backgroundMasksCorners];

  if (backgroundMasksCorners)
  {
    backgroundView = [(_UIContextMenuListView *)self backgroundView];
    [backgroundView _setContinuousCornerRadius:v4];

    cvBackgroundView = [(_UIContextMenuListView *)self cvBackgroundView];
    [cvBackgroundView _setContinuousCornerRadius:v4];

    borderView = [(_UIContextMenuListView *)self borderView];
    [borderView _setContinuousCornerRadius:v4 + 1.0];

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
  clippingView = [(_UIContextMenuListView *)self clippingView];
  layer = [clippingView layer];
  [layer setCornerCurve:v13];

  clippingView2 = [(_UIContextMenuListView *)self clippingView];
  layer2 = [clippingView2 layer];
  v25 = v12;
  v26 = v12;
  v27 = v12;
  v28 = v12;
  v29 = v11;
  v30 = v11;
  v31 = v11;
  v32 = v11;
  [layer2 setCornerRadii:&v25];

  layer3 = [(UIView *)self layer];
  [layer3 setCornerCurve:v13];

  layer4 = [(UIView *)self layer];
  v25 = v12;
  v26 = v12;
  v27 = v12;
  v28 = v12;
  v29 = v11;
  v30 = v11;
  v31 = v11;
  v32 = v11;
  [layer4 setCornerRadii:&v25];

  v20 = v4 + -2.0;
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [collectionView contentInset];
  v23 = v20 + v22;
  collectionView2 = [(_UIContextMenuListView *)self collectionView];
  [collectionView2 setScrollIndicatorInsets:{v20, 0.0, v23, 0.0}];
}

- (double)_clampedCornerRadius
{
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  [_platformMetrics menuCornerRadius];
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
  shadowView = [(_UIContextMenuListView *)self shadowView];
  clippingView = [(_UIContextMenuListView *)self clippingView];
  [clippingView frame];
  [shadowView frameWithContentWithFrame:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  shadowView2 = [(_UIContextMenuListView *)self shadowView];
  [shadowView2 setFrame:{v6, v8, v10, v12}];
}

- (id)_footerIndexPath
{
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  _pinnedFooterElement = [displayedMenu _pinnedFooterElement];
  if (_pinnedFooterElement)
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
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];
  self->_portalingFocusedView = gradientMaskingConfiguration != 0;

  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    array = [MEMORY[0x1E695DF70] array];
    portals = self->_portals;
    self->_portals = array;

    v7 = objc_alloc_init(UIView);
    portalContainerView = self->_portalContainerView;
    self->_portalContainerView = v7;

    [(UIView *)self addSubview:self->_portalContainerView];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    outgoingCollectionView = [(_UIContextMenuListView *)self outgoingCollectionView];
    visibleCells = [outgoingCollectionView visibleCells];

    v11 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(visibleCells);
          }

          [(_UIContextMenuListView *)self _updateCellPortalingWithCell:*(*(&v16 + 1) + 8 * v14++)];
        }

        while (v12 != v14);
        v12 = [visibleCells countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }

    clippingView = [(_UIContextMenuListView *)self clippingView];
    [clippingView setClipsToBounds:1];
  }
}

- (void)_updateContentMargins
{
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  metadata = [displayedMenu metadata];

  v5 = (metadata >> 8) & 1;
  if ((metadata & 0x10000) != 0 || [(_UIContextMenuListView *)self position]== 1)
  {
    _showChildIndicatorOnTrailingEdge = [(_UIContextMenuListView *)self _showChildIndicatorOnTrailingEdge];
    v7 = !_showChildIndicatorOnTrailingEdge;
    LODWORD(v5) = !_showChildIndicatorOnTrailingEdge | v5;
  }

  else
  {
    v7 = 0;
    _showChildIndicatorOnTrailingEdge = 0;
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  v10 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v10 menuItemInternalPadding];
  v53 = v12;
  v54 = v11;
  v14 = v13;
  v16 = v15;

  v17 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v17 headerPadding];
  v51 = v19;
  v52 = v18;
  v21 = v20;
  v23 = v22;

  v24 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
  [v24 menuTitlePadding];
  v47 = v26;
  v49 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v14;
  if (v5)
  {
    traitCollection2 = [(UIView *)self traitCollection];
    v33 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
    titleFont = [v33 titleFont];
    v35 = [titleFont _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:traitCollection2];

    v36 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
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

  if (_showChildIndicatorOnTrailingEdge)
  {
    v40 = _UIContextMenuGetPlatformMetrics(userInterfaceIdiom);
    [v40 menuGutterWidth];
    v42 = v41;

    v16 = v16 + v42;
  }

  v43 = [(_UIContextMenuListView *)self _platformMetrics:v47];
  alignMenuHeaderAndItemContents = [v43 alignMenuHeaderAndItemContents];

  if (alignMenuHeaderAndItemContents)
  {
    v45 = v16;
  }

  else
  {
    v45 = v30;
  }

  if (alignMenuHeaderAndItemContents)
  {
    v28 = v31;
    v46 = v16;
  }

  else
  {
    v46 = v23;
  }

  if (alignMenuHeaderAndItemContents)
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
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [collectionView setAlpha:v6];
}

- (void)_tearDownCellPortalingIfNeeded
{
  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    [(_UIContextMenuListView *)self setPortalingFocusedView:0];
    clippingView = [(_UIContextMenuListView *)self clippingView];
    [clippingView setClipsToBounds:0];

    [(_UIContextMenuListView *)self _removeAllPortals];
  }
}

- (_UIContextMenuListView)initWithFrame:(CGRect)frame
{
  v35[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = _UIContextMenuListView;
  v3 = [(UIView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(UIView *)v3 layer];
    [layer setAllowsGroupOpacity:0];

    _platformMetrics = [(_UIContextMenuListView *)v4 _platformMetrics];
    [(_UIContextMenuListView *)v4 _updateGlassBackgroundIfNeeded];
    v7 = [UIView alloc];
    [(UIView *)v4 bounds];
    v8 = [(UIView *)v7 initWithFrame:?];
    [(_UIContextMenuListView *)v4 setClippingView:v8];

    clippingView = [(_UIContextMenuListView *)v4 clippingView];
    [clippingView setClipsToBounds:1];

    clippingView2 = [(_UIContextMenuListView *)v4 clippingView];
    [(UIView *)v4 addSubview:clippingView2];

    traitCollection = [(UIView *)v4 traitCollection];
    v12 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
    v13 = [UIVisualEffectView alloc];
    menuBackgroundEffect = [v12 menuBackgroundEffect];
    v15 = [(UIVisualEffectView *)v13 initWithEffect:menuBackgroundEffect];

    menuBackgroundColor = [v12 menuBackgroundColor];
    [(UIView *)v15 setBackgroundColor:menuBackgroundColor];

    [(_UIContextMenuListView *)v4 setBackgroundView:v15];
    backgroundMaterialGroupName = [(_UIContextMenuListView *)v4 backgroundMaterialGroupName];
    backgroundView = [(_UIContextMenuListView *)v4 backgroundView];
    [backgroundView _setGroupName:backgroundMaterialGroupName];

    clippingView3 = [(_UIContextMenuListView *)v4 clippingView];
    backgroundView2 = [(_UIContextMenuListView *)v4 backgroundView];
    [clippingView3 addSubview:backgroundView2];

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

- (void)setShouldEnableTypeSelect:(BOOL)select
{
  selectCopy = select;
  self->_shouldEnableTypeSelect = select;
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [collectionView _setTypeSelectShouldAvoidBecomingFirstResponder:selectCopy];
}

- (void)disableTypeSelectIfNeeded
{
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [collectionView _disableTypeSelectIfNeeded];
}

- (void)setShadowAlpha:(double)alpha
{
  if (self->_shadowAlpha != alpha)
  {
    v9[9] = v3;
    v9[10] = v4;
    self->_shadowAlpha = alpha;
    if (alpha > 0.0)
    {
      shadowView = [(_UIContextMenuListView *)self shadowView];
      if (shadowView)
      {
      }

      else
      {
        _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
        prefersGlassAppearance = [_platformMetrics prefersGlassAppearance];

        if ((prefersGlassAppearance & 1) == 0)
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

- (void)setCollectionViewAlpha:(double)alpha
{
  if (self->_collectionViewAlpha != alpha)
  {
    self->_collectionViewAlpha = alpha;
    [(_UIContextMenuListView *)self _updateCollectionViewAlpha];
  }
}

- (void)setRoundedEdges:(unint64_t)edges
{
  if (self->_roundedEdges != edges)
  {
    self->_roundedEdges = edges;
    [(_UIContextMenuListView *)self _updateCornerRadius];
  }
}

- (CGVector)selectionGestureAllowableMovementForGestureBeginningAtIndexPath:(id)path
{
  pathCopy = path;
  collectionView = [(_UIContextMenuListView *)self collectionView];
  v6 = [collectionView _autoScrollAssistantForIndexPath:pathCopy];

  scrollView = [v6 scrollView];

  collectionView2 = [(_UIContextMenuListView *)self collectionView];

  if (scrollView == collectionView2)
  {
    [(_UIContextMenuListView *)self visibleContentSize];
    v10 = v13;
    v12 = v14;
  }

  else
  {
    [scrollView frame];
    v10 = v9;
    v12 = v11;
  }

  [scrollView contentSize];
  if (v15 <= v12)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 10.0;
  }

  [scrollView contentSize];
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

- (void)setReversesActionOrder:(BOOL)order
{
  if (self->_reversesActionOrder != order)
  {
    self->_reversesActionOrder = order;
    displayedMenu = [(_UIContextMenuListView *)self displayedMenu];

    if (displayedMenu)
    {
      displayedMenu2 = [(_UIContextMenuListView *)self displayedMenu];
      v15 = _UIContextMenuCollectionViewDataSourceSnapshot(displayedMenu2, self->_reversesActionOrder);

      collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
      [collectionViewDataSource applySnapshotUsingReloadData:v15];

      displayedMenu3 = [(_UIContextMenuListView *)self displayedMenu];
      _hasGlobalHeader = [displayedMenu3 _hasGlobalHeader];
      displayedMenu4 = [(_UIContextMenuListView *)self displayedMenu];
      _pinnedFooterElement = [displayedMenu4 _pinnedFooterElement];
      position = [(_UIContextMenuListView *)self position];
      traitCollection = [(UIView *)self traitCollection];
      v13 = _UIContextMenuCollectionViewLayout(v15, _hasGlobalHeader, _pinnedFooterElement != 0, position, traitCollection);
      collectionView = [(_UIContextMenuListView *)self collectionView];
      [collectionView setCollectionViewLayout:v13];
    }
  }
}

- (void)setEmphasized:(BOOL)emphasized
{
  if (self->_emphasized != emphasized)
  {
    emphasizedCopy = emphasized;
    self->_emphasized = emphasized;
    collectionView = [(_UIContextMenuListView *)self collectionView];
    panGestureRecognizer = [collectionView panGestureRecognizer];
    [panGestureRecognizer setEnabled:emphasizedCopy];

    v7 = 1.0;
    if (!self->_emphasized)
    {
      parentHierarchyStyle = [(_UIContextMenuListView *)self parentHierarchyStyle];
      v7 = 0.8;
      if (parentHierarchyStyle == 1)
      {
        v7 = 0.5;
      }
    }

    [(_UIContextMenuListView *)self setEmphasisAlphaMultiplier:v7];
    [(_UIContextMenuListView *)self _updateCollectionViewAlpha];

    [(_UIContextMenuListView *)self _updateShadowAlpha];
  }
}

- (void)setSubmenuTitleViewExpanded:(BOOL)expanded withMaterialGroupName:(id)name associatedCellContentView:(id)view highlighted:(BOOL)highlighted
{
  expandedCopy = expanded;
  nameCopy = name;
  viewCopy = view;
  _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
  if (_headerIndexPath)
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    v14 = [collectionView supplementaryViewForElementKind:@"kContextMenuSubmenuTitleHeader" atIndexPath:_headerIndexPath];

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
    highlightedCopy = highlighted;
    v33[4] = self;
    v34 = _headerIndexPath;
    v40 = expandedCopy;
    v19 = v14;
    v35 = v19;
    v20 = viewCopy;
    v36 = v20;
    v38 = &v41;
    v37 = nameCopy;
    [UIView performWithoutAnimation:v33];
    contentView = [v19 contentView];
    options = [contentView options];

    if (expandedCopy)
    {
      v23 = options & 0xFFFFFFFFFFFFFEBFLL | 0x40;
    }

    else
    {
      v23 = [v20 options] & 0x100 | options & 0xFFFFFFFFFFFFFFBFLL;
    }

    contentView2 = [v19 contentView];
    [contentView2 setOptions:v23];

    obscuringMaterialView = [v19 obscuringMaterialView];
    v26 = obscuringMaterialView;
    v27 = 1.0;
    if (expandedCopy)
    {
      v27 = 0.0;
    }

    [obscuringMaterialView setAlpha:v27];

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

- (void)setPreferredMenuMaterial:(id)material
{
  materialCopy = material;
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  v6 = _UIContextMenuListViewResolvedMaterial(materialCopy, [_platformMetrics prefersGlassAppearance]);

  preferredMenuMaterial = self->_preferredMenuMaterial;
  self->_preferredMenuMaterial = v6;

  [(_UIContextMenuListView *)self _updateGlassBackgroundIfNeeded];
}

- (void)setSuppressGlassBackground:(BOOL)background
{
  if (self->_suppressGlassBackground != background)
  {
    self->_suppressGlassBackground = background;
    [(_UIContextMenuListView *)self _updateGlassBackgroundIfNeeded];
  }
}

- (void)_updateGlassBackgroundIfNeeded
{
  preferredMenuMaterial = [(_UIContextMenuListView *)self preferredMenuMaterial];
  if (preferredMenuMaterial || (-[UIView _background](self, "_background"), (preferredMenuMaterial = objc_claimAutoreleasedReturnValue()) != 0) || (-[_UIContextMenuListView _platformMetrics](self, "_platformMetrics"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 prefersGlassAppearance], v5, v6) && (_UIContextMenuListViewResolvedMaterial(0, 1), (preferredMenuMaterial = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = preferredMenuMaterial;
    if ([(_UIContextMenuListView *)self suppressGlassBackground]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      _identityGlass = [v7 _identityGlass];
      [(UIView *)self _setBackground:_identityGlass];
    }

    else
    {
      [(UIView *)self _setBackground:v7];
    }
  }
}

- (CGSize)preferredContentSizeWithinContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  collectionView = [(_UIContextMenuListView *)self collectionView];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3010000000;
  v22 = 0;
  v23 = 0;
  v21 = "";
  [collectionView contentSize];
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
    selfCopy = self;
    v15 = &v18;
    v13 = collectionView;
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

- (double)closestScrollTruncationDetentToHeight:(double)height
{
  v30 = *MEMORY[0x1E69E9840];
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [collectionView contentSize];
  if (v6 > height)
  {
    reversesActionOrder = [(_UIContextMenuListView *)self reversesActionOrder];
    v8 = height + -50.0;
    if (reversesActionOrder)
    {
      [collectionView contentSize];
      v8 = v9 - v8;
    }

    [collectionView bounds];
    v11 = v10;
    _collectionViewData = [collectionView _collectionViewData];
    v13 = [(UICollectionViewData *)_collectionViewData layoutAttributesForElementsInRect:v8, v11, 100.0];

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
        heightCopy2 = height;
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
              if (reversesActionOrder)
              {
                [collectionView contentSize];
                MidY = v23 - MidY;
              }

              if (MidY < height && height - MidY < v18)
              {
                heightCopy2 = MidY;
                v18 = height - MidY;
              }
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v16);
      }

      else
      {
        heightCopy2 = height;
      }

      height = heightCopy2;
    }
  }

  return height;
}

- (void)setVisibleContentSize:(CGSize)size
{
  if (size.width != self->_visibleContentSize.width || size.height != self->_visibleContentSize.height)
  {
    self->_visibleContentSize = size;
    [(_UIContextMenuListView *)self _updateScrollInsets];
  }
}

- (void)setDisplayedMenu:(id)menu
{
  v84 = *MEMORY[0x1E69E9840];
  menuCopy = menu;
  objc_storeStrong(&self->_displayedMenu, menu);
  [(_UIContextMenuListView *)self setHasValidContentSize:0];
  [(_UIContextMenuListView *)self setHighlightedIndexPath:0];
  selectionView = [(_UIContextMenuListView *)self selectionView];
  [selectionView setAlpha:0.0];

  collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
  [(_UIContextMenuListView *)self setOutgoingCollectionViewDataSource:collectionViewDataSource];

  [(_UIContextMenuListView *)self _updateContentMargins];
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  v9 = _UIContextMenuCollectionViewDataSourceSnapshot(displayedMenu, [(_UIContextMenuListView *)self reversesActionOrder]);

  if ([(_UIContextMenuListView *)self allowsAlternates])
  {
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    [(_UIContextMenuListView *)self setElementsWithAlternates:weakObjectsPointerArray];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    itemIdentifiers = [v9 itemIdentifiers];
    v12 = [itemIdentifiers countByEnumeratingWithState:&v79 objects:v83 count:16];
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
            objc_enumerationMutation(itemIdentifiers);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          if ([v16 _isLeaf])
          {
            _leafAlternates = [v16 _leafAlternates];
            v18 = [_leafAlternates count];

            if (v18)
            {
              elementsWithAlternates = [(_UIContextMenuListView *)self elementsWithAlternates];
              [elementsWithAlternates addPointer:v16];
            }
          }
        }

        v13 = [itemIdentifiers countByEnumeratingWithState:&v79 objects:v83 count:16];
      }

      while (v13);
    }
  }

  else
  {
    [(_UIContextMenuListView *)self setElementsWithAlternates:0];
  }

  [(_UIContextMenuListView *)self _updateKeyboardShortcutMetricsForSnapshot:v9];
  displayedMenu2 = [(_UIContextMenuListView *)self displayedMenu];
  _hasGlobalHeader = [displayedMenu2 _hasGlobalHeader];
  displayedMenu3 = [(_UIContextMenuListView *)self displayedMenu];
  _pinnedFooterElement = [displayedMenu3 _pinnedFooterElement];
  position = [(_UIContextMenuListView *)self position];
  traitCollection = [(UIView *)self traitCollection];
  v26 = _UIContextMenuCollectionViewLayout(v9, _hasGlobalHeader, _pinnedFooterElement != 0, position, traitCollection);

  [(UIView *)self bounds];
  Width = CGRectGetWidth(v85);
  window = [(UIView *)self window];
  [window bounds];
  Height = CGRectGetHeight(v86);

  if (Height < 44.0)
  {
    Height = 44.0;
  }

  height = [[UICollectionView alloc] initWithFrame:v26 collectionViewLayout:0.0, 0.0, Width, Height];
  [(UICollectionView *)height setAllowsSelection:1];
  [(UICollectionView *)height setAllowsMultipleSelection:1];
  v31 = +[UIColor clearColor];
  [(UICollectionView *)height setBackgroundColor:v31];

  [(UICollectionView *)height setAlwaysBounceVertical:0];
  [(UICollectionView *)height setAlwaysBounceHorizontal:0];
  [(UIView *)height setClipsToBounds:0];
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];
  layer = [(UIView *)height layer];
  [layer setAllowsGroupOpacity:gradientMaskingConfiguration != 0];

  [(UICollectionView *)height setDelegate:self];
  [(UICollectionView *)height setRemembersLastFocusedIndexPath:1];
  [(UICollectionView *)height _setTypeSelectShouldAvoidBecomingFirstResponder:[(_UIContextMenuListView *)self shouldEnableTypeSelect]];
  _pinnedFooterElement2 = [menuCopy _pinnedFooterElement];

  if (_pinnedFooterElement2)
  {
    v36 = +[UIScrollEdgeEffectStyle hardStyle];
    bottomEdgeEffect = [(UIScrollView *)height bottomEdgeEffect];
    [bottomEdgeEffect setStyle:v36];
  }

  _platformMetrics2 = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration2 = [_platformMetrics2 gradientMaskingConfiguration];

  if (gradientMaskingConfiguration2)
  {
    [(UICollectionView *)height setAllowsSelection:1];
    [(UIView *)height setClipsToBounds:0];
    [(UIScrollView *)height setContentInsetAdjustmentBehavior:2];
    [gradientMaskingConfiguration2 gradientMaskEdgeInsets];
    [(UICollectionView *)height setContentInset:?];
    [gradientMaskingConfiguration2 gradientMaskLengths];
    [(UIScrollView *)height _setGradientMaskLengths:?];
    [gradientMaskingConfiguration2 gradientMaskEdgeInsets];
    [(UIScrollView *)height _setGradientMaskEdgeInsets:?];
    if ([gradientMaskingConfiguration2 embedBackgroundForCompositing])
    {
      [(_UIContextMenuListView *)self _clampedCornerRadius];
      v41 = v40;
      traitCollection2 = [(UIView *)self traitCollection];
      v43 = _UIContextMenuGetPlatformMetrics([traitCollection2 userInterfaceIdiom]);
      v44 = [UIVisualEffectView alloc];
      menuBackgroundEffect = [v43 menuBackgroundEffect];
      v46 = [(UIVisualEffectView *)v44 initWithEffect:menuBackgroundEffect];

      menuBackgroundColor = [v43 menuBackgroundColor];
      [(UIView *)v46 setBackgroundColor:menuBackgroundColor];

      [(UIVisualEffectView *)v46 _setContinuousCornerRadius:v41];
      backgroundMaterialGroupName = [(_UIContextMenuListView *)self backgroundMaterialGroupName];
      [(UIVisualEffectView *)v46 _setGroupName:backgroundMaterialGroupName];

      v49 = [UIView alloc];
      [(UIView *)height bounds];
      v50 = [(UIView *)v49 initWithFrame:?];
      [(UIView *)v50 addSubview:v46];
      [gradientMaskingConfiguration2 gradientMaskEdgeInsets];
      v52 = v51;
      [gradientMaskingConfiguration2 gradientMaskEdgeInsets];
      [(UIView *)v50 bounds];
      [(UIView *)v46 setFrame:v53 + 0.0, v52 + v54];
      [(_UIContextMenuListView *)self setCvBackgroundView:v46];
      [(UICollectionView *)height setBackgroundView:v50];
    }

    borderView = [(_UIContextMenuListView *)self borderView];

    if (!borderView)
    {
      v56 = objc_alloc_init(UIView);
      [(_UIContextMenuListView *)self setBorderView:v56];

      borderView2 = [(_UIContextMenuListView *)self borderView];
      clippingView = [(_UIContextMenuListView *)self clippingView];
      [(UIView *)self insertSubview:borderView2 belowSubview:clippingView];
    }

    [(UIView *)self bounds];
    v60 = v59 + -1.0;
    v62 = v61 + -1.0;
    v64 = v63 + 2.0;
    v66 = v65 + 2.0;
    borderView3 = [(_UIContextMenuListView *)self borderView];
    [borderView3 setFrame:{v60, v62, v64, v66}];

    [(_UIContextMenuListView *)self _updatePlatterHairline];
  }

  [(UICollectionView *)height registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuSmallCell"];
  [(UICollectionView *)height registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuMediumCell"];
  [(UICollectionView *)height registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuLargeCell"];
  [(UICollectionView *)height registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuLoadingCell"];
  [(UICollectionView *)height registerClass:objc_opt_class() forCellWithReuseIdentifier:@"kContextMenuCustomViewCell"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuHeader" withReuseIdentifier:@"kContextMenuHeader"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuPinnedFooter" withReuseIdentifier:@"kContextMenuPinnedFooter"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuSubmenuTitleHeader" withReuseIdentifier:@"kContextMenuSubmenuTitleHeader"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuSectionSeparator" withReuseIdentifier:@"kContextMenuSectionSeparator"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientMaskSectionSeparator" withReuseIdentifier:@"kContextMenuGradientMaskSectionSeparator"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientStyleHeader" withReuseIdentifier:@"kContextMenuGradientStyleHeader"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuGradientStyleFooter" withReuseIdentifier:@"kContextMenuGradientStyleFooter"];
  [(UICollectionView *)height registerClass:objc_opt_class() forSupplementaryViewOfKind:@"kContextMenuThinSectionSeparator" withReuseIdentifier:@"kContextMenuThinSectionSeparator"];
  v68 = [(_UIContextMenuListView *)self _dataSourceForCollectionView:height];
  [(_UIContextMenuListView *)self setCollectionViewDataSource:v68];

  collectionViewDataSource2 = [(_UIContextMenuListView *)self collectionViewDataSource];
  [collectionViewDataSource2 applySnapshotUsingReloadData:v9];

  [(_UIContextMenuListView *)self setCollectionView:height];
  _platformMetrics3 = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration3 = [_platformMetrics3 gradientMaskingConfiguration];

  clippingView2 = [(_UIContextMenuListView *)self clippingView];
  if (gradientMaskingConfiguration3)
  {
    outgoingCollectionView = [(_UIContextMenuListView *)self outgoingCollectionView];
    if (!outgoingCollectionView)
    {
      backgroundView = [(_UIContextMenuListView *)self backgroundView];
      [clippingView2 insertSubview:height aboveSubview:backgroundView];

      v75 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    outgoingCollectionView = [(_UIContextMenuListView *)self backgroundView];
  }

  v75 = outgoingCollectionView;
  [clippingView2 insertSubview:height aboveSubview:outgoingCollectionView];
LABEL_29:

  [(_UIContextMenuListView *)self _updateCollectionViewAlpha];
  allowsAlternates = [(_UIContextMenuListView *)self allowsAlternates];
  v77 = +[_UIContextMenuModifierKeyService sharedService];
  v78 = v77;
  if (allowsAlternates)
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
  collectionView = [(_UIContextMenuListView *)self collectionView];
  [(_UIContextMenuListView *)self setOutgoingCollectionView:collectionView];

  [(_UIContextMenuListView *)self _setupCellPortalingIfNeeded];
}

- (void)didCompleteInPlaceMenuTransition
{
  [(_UIContextMenuListView *)self setOutgoingCollectionView:0];
  [(_UIContextMenuListView *)self setOutgoingCollectionViewDataSource:0];

  [(_UIContextMenuListView *)self _tearDownCellPortalingIfNeeded];
}

- (void)scrollViewDidScroll:(id)scroll
{
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  wantsContinuousHighlight = [_platformMetrics wantsContinuousHighlight];

  if (wantsContinuousHighlight)
  {
    highlightedIndexPath = [(_UIContextMenuListView *)self highlightedIndexPath];
    if (highlightedIndexPath)
    {
      v7 = [(_UIContextMenuListView *)self _viewAtIndexPath:highlightedIndexPath];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        backgroundView = [v7 backgroundView];
        [backgroundView frame];
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
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  metadata = [displayedMenu metadata];
  if ([(_UIContextMenuListView *)self typeSelectActive])
  {
    v13.receiver = self;
    v13.super_class = _UIContextMenuListView;
    preferredFocusEnvironments = [(UIView *)&v13 preferredFocusEnvironments];
    goto LABEL_10;
  }

  highlightedIndexPath = [(_UIContextMenuListView *)self highlightedIndexPath];

  if (highlightedIndexPath)
  {
    highlightedIndexPath2 = [(_UIContextMenuListView *)self highlightedIndexPath];
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:highlightedIndexPath2];
  }

  else
  {
    if ((metadata & 0x100) == 0 || ([displayedMenu options] & 0x20) == 0)
    {
      goto LABEL_9;
    }

    displayedMenu2 = [(_UIContextMenuListView *)self displayedMenu];
    selectedElements = [displayedMenu2 selectedElements];
    highlightedIndexPath2 = [selectedElements firstObject];

    v12 = [(_UIContextMenuListView *)self indexPathForElement:highlightedIndexPath2];
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:v12];
  }

  if (v8)
  {
    v14[0] = v8;
    preferredFocusEnvironments = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    goto LABEL_10;
  }

LABEL_9:
  preferredFocusEnvironments = MEMORY[0x1E695E0F0];
LABEL_10:

  return preferredFocusEnvironments;
}

- (void)collectionView:(id)view didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  [(_UIContextMenuListView *)self _updateCellPortalingWithUpdateFocusInContext:contextCopy inCollectionView:view];
  nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
  nextFocusedItem = [contextCopy nextFocusedItem];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  nextFocusedItem2 = [contextCopy nextFocusedItem];
  v10 = [UIFocusSystem environment:self containsEnvironment:nextFocusedItem2];

  if (v10)
  {
    [(_UIContextMenuListView *)self _headerIndexPath];
    nextFocusedIndexPath = nextFocusedItem = nextFocusedIndexPath;
LABEL_4:
  }

  if (nextFocusedIndexPath || [(_UIContextMenuListView *)self parentHierarchyStyle]== 1)
  {
    [(_UIContextMenuListView *)self highlightItemAtIndexPath:nextFocusedIndexPath forHover:0];
  }
}

- (BOOL)collectionView:(id)view canFocusItemAtIndexPath:(id)path
{
  v5 = [(_UIContextMenuListView *)self elementAtIndexPath:path];
  if ([v5 _canBeHighlighted])
  {
    allowsFocus = [(_UIContextMenuListView *)self allowsFocus];
  }

  else
  {
    allowsFocus = 0;
  }

  return allowsFocus;
}

- (void)setAllowsFocus:(BOOL)focus
{
  self->_allowsFocus = focus;
  _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
  v5 = [(_UIContextMenuListView *)self _viewAtIndexPath:_headerIndexPath];

  if (v5)
  {
    [v5 setAllowsFocus:{-[_UIContextMenuListView allowsFocus](self, "allowsFocus")}];
  }
}

- (id)_collectionView:(id)view typeSelectStringForItemAtIndexPath:(id)path
{
  v5 = [(_UIContextMenuListView *)self elementAtIndexPath:path];
  if ([v5 _canBeHighlighted] && -[_UIContextMenuListView allowsFocus](self, "allowsFocus"))
  {
    title = [v5 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)_collectionView:(id)view updateTypeSelectResultForCell:(id)cell atIndexPath:(id)path withItemResult:(id)result animator:(id)animator
{
  v60[1] = *MEMORY[0x1E69E9840];
  cellCopy = cell;
  pathCopy = path;
  resultCopy = result;
  animatorCopy = animator;
  [(_UIContextMenuListView *)self setTypeSelectActive:resultCopy != 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    actionView = [cellCopy actionView];
    v16 = [(_UIContextMenuListView *)self elementAtIndexPath:pathCopy];
    title = [v16 title];
    attributedTitle = [v16 attributedTitle];
    v43 = title;
    v19 = [title length];
    if (v19 || [attributedTitle length])
    {
      v39 = v16;
      v40 = actionView;
      v41 = animatorCopy;
      v42 = pathCopy;
      _primaryContentColorForCurrentState = [actionView _primaryContentColorForCurrentState];
      v21 = +[_UITypeSelectInteraction _defaultSecondaryColorTransformer];
      v22 = (v21)[2](v21, _primaryContentColorForCurrentState);

      unmatchingRanges = [resultCopy unmatchingRanges];
      if (attributedTitle)
      {
        v24 = *off_1E70EC920;
      }

      else
      {
        v25 = objc_alloc(MEMORY[0x1E696AAB0]);
        v24 = *off_1E70EC920;
        v59 = *off_1E70EC920;
        v60[0] = _primaryContentColorForCurrentState;
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
        attributedTitle = [v25 initWithString:v43 attributes:v26];
      }

      v27 = [attributedTitle mutableCopy];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke;
      v55[3] = &unk_1E711AC88;
      v28 = _primaryContentColorForCurrentState;
      v56 = v28;
      v29 = v27;
      v57 = v29;
      v30 = unmatchingRanges;
      v58 = v30;
      [attributedTitle enumerateAttribute:v24 inRange:0 options:v19 usingBlock:{0, v55}];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __108___UIContextMenuListView__collectionView_updateTypeSelectResultForCell_atIndexPath_withItemResult_animator___block_invoke_3;
      aBlock[3] = &unk_1E711ACB0;
      v48 = resultCopy;
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
      actionView = v40;
      v45 = v36;
      v46 = v35;
      v37 = v35;
      animatorCopy = v41;
      [v41 addAnimations:v44];

      pathCopy = v42;
      v16 = v39;
    }
  }
}

- (void)_collectionView:(id)view typeSelectResultDidUpdate:(id)update
{
  viewCopy = view;
  updateCopy = update;
  if (updateCopy)
  {
    if (![(_UIContextMenuListView *)self typeSelectActive])
    {
      _focusSystem = [(UIView *)self _focusSystem];
      v8 = [_focusSystem _focusedItemIsContainedInEnvironment:self includeSelf:1];

      if ((v8 & 1) == 0)
      {
        preferredItem = [updateCopy preferredItem];
        v10 = preferredItem;
        if (preferredItem)
        {
          indexPath = [preferredItem indexPath];
          [(_UIContextMenuListView *)self highlightItemAtIndexPath:indexPath];
          v12 = [viewCopy cellForItemAtIndexPath:indexPath];
          _focusSystem2 = [viewCopy _focusSystem];
          [_focusSystem2 _updateFocusImmediatelyToEnvironment:v12];
        }
      }
    }
  }
}

- (void)scrollToFirstSignificantAction
{
  highlightedIndexPath = [(_UIContextMenuListView *)self highlightedIndexPath];
  if (highlightedIndexPath && (v4 = highlightedIndexPath, -[_UIContextMenuListView highlightedIndexPath](self, "highlightedIndexPath"), v5 = objc_claimAutoreleasedReturnValue(), -[_UIContextMenuListView _headerIndexPath](self, "_headerIndexPath"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqual:v6], v6, v5, v4, (v7 & 1) == 0))
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    highlightedIndexPath2 = [(_UIContextMenuListView *)self highlightedIndexPath];
    [collectionView scrollToItemAtIndexPath:highlightedIndexPath2 atScrollPosition:2 animated:0];
  }

  else
  {
    if ([(_UIContextMenuListView *)self _shouldScrollToSelectedAction])
    {
      displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
      selectedElements = [displayedMenu selectedElements];
      collectionView = [selectedElements firstObject];

      collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
      highlightedIndexPath2 = [collectionViewDataSource indexPathForItemIdentifier:collectionView];

      collectionView2 = [(_UIContextMenuListView *)self collectionView];
      [collectionView2 scrollToItemAtIndexPath:highlightedIndexPath2 atScrollPosition:2 animated:0];
    }

    else
    {
      if (![(_UIContextMenuListView *)self reversesActionOrder])
      {
        return;
      }

      collectionView3 = [(_UIContextMenuListView *)self collectionView];
      v14 = [collectionView3 numberOfSections] - 1;

      collectionView4 = [(_UIContextMenuListView *)self collectionView];
      v16 = [collectionView4 numberOfItemsInSection:v14] - 1;

      collectionView = [MEMORY[0x1E696AC88] indexPathForItem:v16 inSection:v14];
      highlightedIndexPath2 = [(_UIContextMenuListView *)self collectionView];
      collectionView2 = [(_UIContextMenuListView *)self _platformMetrics];
      [collectionView2 sectionInsets];
      [highlightedIndexPath2 _scrollToItemAtIndexPath:collectionView atScrollPosition:4 additionalInsets:0 animated:?];
    }
  }
}

- (BOOL)_shouldScrollToSelectedAction
{
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  v3 = (([displayedMenu options] & 0x20) != 0 || objc_msgSend(displayedMenu, "forceAutomaticSelection")) && (objc_msgSend(displayedMenu, "metadata") & 0x10100) == 256;

  return v3;
}

- (id)indexPathForItemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(UIView *)self bounds];
  v23.x = x;
  v23.y = y;
  if (CGRectContainsPoint(v26, v23))
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    v7 = [collectionView visibleSupplementaryViewsOfKind:@"kContextMenuSubmenuTitleHeader"];
    firstObject = [v7 firstObject];

    if (firstObject && ([firstObject convertPoint:self fromView:{x, y}], v10 = v9, v12 = v11, objc_msgSend(firstObject, "bounds"), v24.x = v10, v24.y = v12, CGRectContainsPoint(v27, v24)))
    {
      _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
    }

    else
    {
      _headerIndexPath = 0;
    }

    v14 = [collectionView visibleSupplementaryViewsOfKind:@"kContextMenuPinnedFooter"];
    firstObject2 = [v14 firstObject];

    if (firstObject2)
    {
      [firstObject2 convertPoint:self fromView:{x, y}];
      v17 = v16;
      v19 = v18;
      [firstObject2 bounds];
      v25.x = v17;
      v25.y = v19;
      if (CGRectContainsPoint(v28, v25))
      {
        _footerIndexPath = [(_UIContextMenuListView *)self _footerIndexPath];

        _headerIndexPath = _footerIndexPath;
      }
    }

    if (!_headerIndexPath)
    {
      [collectionView convertPoint:self fromView:{x, y}];
      _headerIndexPath = [collectionView indexPathForItemAtPoint:?];
    }
  }

  else
  {
    _headerIndexPath = 0;
  }

  return _headerIndexPath;
}

- (id)elementAtIndexPath:(id)path
{
  pathCopy = path;
  _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
  v6 = [pathCopy isEqual:_headerIndexPath];

  if (v6)
  {
    displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  }

  else
  {
    _footerIndexPath = [(_UIContextMenuListView *)self _footerIndexPath];
    v9 = [pathCopy isEqual:_footerIndexPath];

    if (v9)
    {
      displayedMenu2 = [(_UIContextMenuListView *)self displayedMenu];
      [displayedMenu2 _pinnedFooterElement];
    }

    else
    {
      displayedMenu2 = [(_UIContextMenuListView *)self collectionViewDataSource];
      [displayedMenu2 itemIdentifierForIndexPath:pathCopy];
    }
    displayedMenu = ;
  }

  return displayedMenu;
}

- (id)indexPathForElement:(id)element
{
  elementCopy = element;
  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  v6 = [elementCopy isEqual:displayedMenu];

  if (v6)
  {
    _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
LABEL_5:
    v11 = _headerIndexPath;
    goto LABEL_7;
  }

  displayedMenu2 = [(_UIContextMenuListView *)self displayedMenu];
  _pinnedFooterElement = [displayedMenu2 _pinnedFooterElement];
  v10 = [elementCopy isEqual:_pinnedFooterElement];

  if (v10)
  {
    _headerIndexPath = [(_UIContextMenuListView *)self _footerIndexPath];
    goto LABEL_5;
  }

  collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
  v11 = [collectionViewDataSource indexPathForItemIdentifier:elementCopy];

LABEL_7:

  return v11;
}

- (id)cellForElement:(id)element
{
  elementCopy = element;
  collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
  v6 = [collectionViewDataSource indexPathForItemIdentifier:elementCopy];

  if (v6)
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    v8 = [collectionView cellForItemAtIndexPath:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unHighlightItemAtIndexPath:(id)path
{
  pathCopy = path;
  [(_UIContextMenuListView *)self setHighlightedIndexPath:0];
  traitCollection = [(UIView *)self traitCollection];
  v6 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
  allowsItemHighlighting = [v6 allowsItemHighlighting];

  if (allowsItemHighlighting)
  {
    v8 = [(_UIContextMenuListView *)self _viewAtIndexPath:pathCopy];
    [v8 setHighlighted:0];
  }

  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  wantsContinuousHighlight = [_platformMetrics wantsContinuousHighlight];

  if (wantsContinuousHighlight)
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

- (void)highlightItemAtIndexPath:(id)path forHover:(BOOL)hover playFeedback:(BOOL)feedback
{
  hoverCopy = hover;
  pathCopy = path;
  highlightedIndexPath = [(_UIContextMenuListView *)self highlightedIndexPath];
  v9 = [highlightedIndexPath isEqual:pathCopy];

  if ((v9 & 1) == 0)
  {
    highlightedIndexPath2 = [(_UIContextMenuListView *)self highlightedIndexPath];

    if (highlightedIndexPath2)
    {
      highlightedIndexPath3 = [(_UIContextMenuListView *)self highlightedIndexPath];
      [(_UIContextMenuListView *)self unHighlightItemAtIndexPath:highlightedIndexPath3];
    }

    if (!pathCopy)
    {
      goto LABEL_18;
    }

    v12 = [(_UIContextMenuListView *)self elementAtIndexPath:pathCopy];
    _canBeHighlighted = [v12 _canBeHighlighted];

    if (_canBeHighlighted)
    {
      [(_UIContextMenuListView *)self setHighlightedIndexPath:pathCopy];
      traitCollection = [(UIView *)self traitCollection];
      v15 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
      allowsItemHighlighting = [v15 allowsItemHighlighting];

      if (allowsItemHighlighting)
      {
        v17 = [(_UIContextMenuListView *)self _viewAtIndexPath:pathCopy];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
          [v18 setHighlighted:1 forHover:hoverCopy];
          _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
          wantsContinuousHighlight = [_platformMetrics wantsContinuousHighlight];

          if (wantsContinuousHighlight)
          {
            backgroundView = [v18 backgroundView];
            [backgroundView setHidden:1];
            [backgroundView frame];
            v23 = v22;
            v25 = v24;
            v27 = v26;
            v29 = v28;
            collectionView = [(_UIContextMenuListView *)self collectionView];
            [v18 convertRect:collectionView toView:{v23, v25, v27, v29}];
            v32 = v31;
            v34 = v33;
            v36 = v35;
            v38 = v37;

            v51 = backgroundView;
            layer = [backgroundView layer];
            [layer cornerRadius];
            v41 = v40;

            selectionView = [(_UIContextMenuListView *)self selectionView];
            window = [selectionView window];

            if (!window)
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
            selectionView2 = [(_UIContextMenuListView *)self selectionView];
            IsEffectivelyInvisible = _UIPointerViewIsEffectivelyInvisible(selectionView2);

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

- (id)_viewAtIndexPath:(id)path
{
  pathCopy = path;
  _headerIndexPath = [(_UIContextMenuListView *)self _headerIndexPath];
  v6 = [pathCopy isEqual:_headerIndexPath];

  if (v6)
  {
    collectionView = [(_UIContextMenuListView *)self collectionView];
    v8 = [collectionView supplementaryViewForElementKind:@"kContextMenuSubmenuTitleHeader" atIndexPath:pathCopy];
  }

  else
  {
    _footerIndexPath = [(_UIContextMenuListView *)self _footerIndexPath];
    v10 = [pathCopy isEqual:_footerIndexPath];

    collectionView2 = [(_UIContextMenuListView *)self collectionView];
    collectionView = collectionView2;
    if (v10)
    {
      v12 = [collectionView2 visibleSupplementaryViewsOfKind:@"kContextMenuPinnedFooter"];
      firstObject = [v12 firstObject];

      goto LABEL_7;
    }

    v8 = [collectionView2 cellForItemAtIndexPath:pathCopy];
  }

  firstObject = v8;
LABEL_7:

  return firstObject;
}

- (id)_dataSourceForCollectionView:(id)view
{
  viewCopy = view;
  objc_initWeak(&location, self);
  v5 = [UICollectionViewDiffableDataSource alloc];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55___UIContextMenuListView__dataSourceForCollectionView___block_invoke;
  v10[3] = &unk_1E711ACD8;
  objc_copyWeak(&v11, &location);
  v6 = [(UICollectionViewDiffableDataSource *)v5 initWithCollectionView:viewCopy cellProvider:v10];
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

- (void)_configureCell:(id)cell inCollectionView:(id)view atIndexPath:(id)path forElement:(id)element section:(id)section size:(int64_t)size
{
  cellCopy = cell;
  viewCopy = view;
  pathCopy = path;
  elementCopy = element;
  sectionCopy = section;
  actionView = [cellCopy actionView];
  if ([sectionCopy layout] == 1)
  {
    _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
    [_platformMetrics enableFloatingFocusStyle];
  }

  else if (size > 1)
  {
    _platformMetrics2 = [(_UIContextMenuListView *)self _platformMetrics];
    [_platformMetrics2 prefersLeadingImageCellLayout];
  }

  [actionView setLayoutClass:objc_opt_class()];
  v50 = cellCopy;
  [cellCopy _setFocusStyle:{objc_msgSend(actionView, "focusStyle")}];
  isMultiColorPalette = [sectionCopy isMultiColorPalette];
  v20 = elementCopy;
  v21 = v20;
  if ([(_UIContextMenuListView *)self allowsAlternates])
  {
    v22 = +[_UIContextMenuModifierKeyService sharedService];
    v21 = _UIMenuElementAlternateForModifierFlags(v20, [v22 currentModifierFlags]);
  }

  image = [v21 image];
  subtitle = [v21 subtitle];
  v55 = subtitle;
  if ([v21 _isLeaf])
  {
    v25 = v21;
    if (![subtitle length] && (dyld_program_sdk_at_least() & 1) == 0)
    {
      [v25 discoverabilityTitle];
      v27 = v26 = image;

      v55 = v27;
      image = v26;
    }

    v51 = [v25 attributes] & 1;
    attributes = [v25 attributes];
    _keyboardShortcut = [v25 _keyboardShortcut];
    state = [v25 state];
    if (state == 1)
    {
      selectedImage = [v25 selectedImage];

      if (selectedImage)
      {
        selectedImage2 = [v25 selectedImage];

        isMultiColorPalette = 2;
        image = selectedImage2;
      }
    }

    v32 = 0;
  }

  else
  {
    v33 = v20;
    attributes = [v33 options];
    LODWORD(state) = [v33 _shouldShowSelectionState];

    _keyboardShortcut = 0;
    v51 = 0;
    v32 = 16;
    state = state;
  }

  attributedTitle = [v21 attributedTitle];

  if (attributedTitle)
  {
    attributedTitle2 = [v21 attributedTitle];
    [actionView setAttributedTitle:attributedTitle2];
  }

  else
  {
    attributedTitle2 = [v21 title];
    [actionView setTitle:attributedTitle2];
  }

  [actionView setSubtitle:v55];
  _accessoryAction = [v20 _accessoryAction];

  if (_accessoryAction)
  {
    _accessoryAction2 = [v20 _accessoryAction];
    [actionView setAccessoryAction:_accessoryAction2];
  }

  else
  {
    [actionView setImage:image];
  }

  v49 = image;
  if (_keyboardShortcut && [(_UIContextMenuListView *)self allowsKeyboardShortcuts])
  {
    [actionView setKeyboardShortcut:_keyboardShortcut];
    if (self->_explicitModifierLabelWidth > 0.0 || self->_explicitInputLabelWidth > 0.0)
    {
      [actionView setKeyboardShortcutModifiersWidth:? inputWidth:?];
    }
  }

  else
  {
    [actionView setKeyboardShortcut:0];
  }

  v38 = attributes & 2;
  accessibilityIdentifier = [v20 accessibilityIdentifier];
  [actionView setAccessibilityIdentifier:accessibilityIdentifier];

  displayedMenu = [(_UIContextMenuListView *)self displayedMenu];
  metadata = [displayedMenu metadata];

  if ((metadata & 0x10000) != 0 && [(_UIContextMenuListView *)self _showChildIndicatorOnTrailingEdge])
  {
    v32 |= 0x20uLL;
  }

  if ([sectionCopy hasImageInLargeCell])
  {
    v42 = v38 | v51 | v32 | 0x100;
  }

  else
  {
    v42 = v38 | v51 | v32;
  }

  [actionView setSelectedIconBehavior:isMultiColorPalette];
  layout = [actionView layout];
  useContentShapeForSelectionHighlight = [layout useContentShapeForSelectionHighlight];

  if (useContentShapeForSelectionHighlight)
  {
    v46 = pathCopy;
    v45 = viewCopy;
    if ((state - 1) <= 1)
    {
      [viewCopy selectItemAtIndexPath:pathCopy animated:0 scrollPosition:0];
    }
  }

  else
  {
    v47 = v42 | 4;
    if (state != 1)
    {
      v47 = v42;
    }

    if (state == 2)
    {
      v42 |= 8uLL;
    }

    else
    {
      v42 = v47;
    }

    v46 = pathCopy;
    v45 = viewCopy;
  }

  if ([(_UIContextMenuListView *)self allowsBackgroundViewInteraction])
  {
    v48 = v42;
  }

  else
  {
    v48 = v42 | 0x80;
  }

  [actionView setOptions:v48];
  [actionView setNumberOfTitleLines:{objc_msgSend(sectionCopy, "actionLineLimit")}];
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
      [actionView setPasteVariant:?];
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

  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  cascadedLayoutShowsChevronOnTrailingEdge = [_platformMetrics cascadedLayoutShowsChevronOnTrailingEdge];

  return cascadedLayoutShowsChevronOnTrailingEdge;
}

- (void)_updatePlatterHairline
{
  _platformMetrics = [(_UIContextMenuListView *)self _platformMetrics];
  gradientMaskingConfiguration = [_platformMetrics gradientMaskingConfiguration];

  v4 = gradientMaskingConfiguration;
  if (gradientMaskingConfiguration)
  {
    platterHairlineColorProvider = [gradientMaskingConfiguration platterHairlineColorProvider];
    traitCollection = [(UIView *)self traitCollection];
    v7 = (platterHairlineColorProvider)[2](platterHairlineColorProvider, traitCollection);

    if (v7)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 0.0;
    }

    cGColor = [v7 CGColor];
    borderView = [(_UIContextMenuListView *)self borderView];
    layer = [borderView layer];
    [layer setBorderColor:cGColor];

    borderView2 = [(_UIContextMenuListView *)self borderView];
    layer2 = [borderView2 layer];
    [layer2 setBorderWidth:v8];

    v4 = gradientMaskingConfiguration;
  }
}

- (void)_updateCellPortalingWithCell:(id)cell
{
  cellCopy = cell;
  if (-[_UIContextMenuListView portalingFocusedView](self, "portalingFocusedView") && [cellCopy isFocused])
  {
    [(_UIContextMenuListView *)self _portalCellIfNeeded:cellCopy];
  }
}

- (void)_updateCellPortalingWithUpdateFocusInContext:(id)context inCollectionView:(id)view
{
  contextCopy = context;
  viewCopy = view;
  if ([(_UIContextMenuListView *)self portalingFocusedView])
  {
    nextFocusedIndexPath = [contextCopy nextFocusedIndexPath];
    if (nextFocusedIndexPath)
    {
      v8 = [viewCopy cellForItemAtIndexPath:nextFocusedIndexPath];
      [(_UIContextMenuListView *)self _portalCellIfNeeded:v8];
    }
  }
}

- (void)_portalCellIfNeeded:(id)needed
{
  v22 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  portals = [(_UIContextMenuListView *)self portals];
  v6 = [(_UIPortalView *)portals countByEnumeratingWithState:&v17 objects:v21 count:16];
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
        objc_enumerationMutation(portals);
      }

      sourceView = [*(*(&v17 + 1) + 8 * v9) sourceView];
      v11 = [sourceView isEqual:neededCopy];

      if (v11)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [(_UIPortalView *)portals countByEnumeratingWithState:&v17 objects:v21 count:16];
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

    portals = [[_UIPortalView alloc] initWithSourceView:neededCopy];
    [(_UIPortalView *)portals setHidesSourceView:1];
    [(_UIPortalView *)portals setMatchesPosition:1];
    [(_UIPortalView *)portals setMatchesTransform:1];
    [(_UIPortalView *)portals setMatchesAlpha:1];
    [(_UIPortalView *)portals setAllowsHitTesting:0];
    layer = [neededCopy layer];
    flipsHorizontalAxis = [layer flipsHorizontalAxis];
    portalLayer = [(_UIPortalView *)portals portalLayer];
    [portalLayer setFlipsHorizontalAxis:flipsHorizontalAxis];

    portals2 = [(_UIContextMenuListView *)self portals];
    [portals2 addObject:portals];

    portalContainerView = [(_UIContextMenuListView *)self portalContainerView];
    [portalContainerView addSubview:portals];
  }
}

- (void)_removeAllPortals
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  portals = [(_UIContextMenuListView *)self portals];
  v4 = [portals countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(portals);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [portals countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  portals2 = [(_UIContextMenuListView *)self portals];
  [portals2 removeAllObjects];
}

- (void)_updateKeyboardShortcutMetricsForSnapshot:(id)snapshot
{
  v46 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  if ([(_UIContextMenuListView *)self allowsKeyboardShortcuts]&& [(UIView *)self effectiveUserInterfaceLayoutDirection]== UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [snapshotCopy sectionIdentifiers];
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
            v10 = [snapshotCopy itemIdentifiersInSectionWithIdentifier:v9];
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
                      elementsWithAlternates = [(_UIContextMenuListView *)self elementsWithAlternates];

                      if (elementsWithAlternates)
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

                    _keyboardShortcut = [v16 _keyboardShortcut];

                    if (_keyboardShortcut)
                    {
                      if (!v6)
                      {
                        traitCollection = [(UIView *)self traitCollection];
                        v23 = _UIContextMenuGetPlatformMetrics([traitCollection userInterfaceIdiom]);
                        v6 = objc_opt_new();
                        itemKeyboardShortcutColor = [v23 itemKeyboardShortcutColor];
                        [v6 setTextColor:itemKeyboardShortcutColor];

                        titleFont = [v23 titleFont];
                        [v6 setFont:titleFont];

                        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
                        [(UIView *)self addSubview:v6];
                      }

                      _keyboardShortcut2 = [v16 _keyboardShortcut];
                      [v6 setShortcut:_keyboardShortcut2];

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
    elementsWithAlternates = [(_UIContextMenuListView *)self elementsWithAlternates];

    if (elementsWithAlternates)
    {
      collectionViewDataSource = [(_UIContextMenuListView *)self collectionViewDataSource];
      snapshot = [collectionViewDataSource snapshot];

      itemIdentifiers = [snapshot itemIdentifiers];
      [snapshot reconfigureItemsWithIdentifiers:itemIdentifiers];

      [(_UIContextMenuListView *)self _updateKeyboardShortcutMetricsForSnapshot:snapshot];
      collectionViewDataSource2 = [(_UIContextMenuListView *)self collectionViewDataSource];
      [collectionViewDataSource2 applySnapshot:snapshot animatingDifferences:0];
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