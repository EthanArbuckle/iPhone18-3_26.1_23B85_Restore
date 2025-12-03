@interface _UINavigationBarLayout
- (BOOL)isVariableHeight;
- (CGRect)_layoutFrameFor:(id)for withOrder:(int64_t)order;
- (CGRect)topWhitespaceLayoutFrame;
- (NSString)description;
- (_UINavigationBarLayout)init;
- (_UINavigationBarLayout)initWithLayout:(id)layout;
- (double)backgroundViewLayoutFrame;
- (double)layoutHeightRevealingPart:(id *)part;
- (double)layoutHeightStackingPart:(id *)part;
- (double)layoutHeights;
- (double)searchBarLayoutFrame;
- (double)topPaletteLayoutFrame;
- (id)_insertLayoutDataForNavigationBarPart:(int64_t)part;
- (id)copyWithZone:(_NSZone *)zone;
- (id)layoutForMeasuringWidth:(void *)width;
- (int64_t)_topPaletteOrder;
- (uint64_t)contentViewLayoutFrame;
- (uint64_t)removeAllViews;
- (uint64_t)setHidesSearchBarWhenScrolling:(uint64_t)result;
- (void)_addLayoutItem:(id)item;
- (void)_includeContentLayoutDataInLayout:(BOOL)layout;
- (void)_removeLayoutItem:(id)item;
- (void)_reorderLayoutItem:(id)item toOrder:(int64_t)order;
- (void)_reprioritizeLayoutItem:(id)item toPriority:(int64_t)priority;
- (void)_updateContentViewLayoutItem;
- (void)_updateLargeTitleViewLayoutItem;
- (void)_updateLayoutOutputs;
- (void)_updateLayoutParametersForWidth:(double)width;
- (void)_updateRefreshControlLayoutData;
- (void)finalizeStateFromTransition:(id)transition;
- (void)installViewsInNavigationBar:(uint64_t)bar;
- (void)interleaveViewsWithLayout:(void *)layout inNavigationBar:;
- (void)iterateLayoutViews:(uint64_t)views;
- (void)layoutViews;
- (void)prepareToRecordToState:(id)state;
- (void)recordFromStateForTransition:(id)transition;
- (void)recordToStateForTransition:(id)transition;
- (void)removeViewsNotInLayout:(uint64_t)layout;
- (void)restingHeights;
- (void)setBackgroundView:(uint64_t)view;
- (void)setBottomPalette:(uint64_t)palette;
- (void)setContentView:(uint64_t)view;
- (void)setContentViewLayout:(id *)layout;
- (void)setContentViewVisualProvider:(uint64_t)provider;
- (void)setLargeTitleView:(uint64_t)view;
- (void)setLargeTitleViewLayout:(id *)layout;
- (void)setLayoutSize:(double)size;
- (void)setPromptView:(uint64_t)view;
- (void)setRefreshControlHost:(id *)host;
- (void)setSearchBar:(uint64_t)bar;
- (void)setStandardBackgroundViewLayout:(id *)layout;
- (void)setTopPalette:(uint64_t)palette;
- (void)setWeeTitleLabel:(uint64_t)label;
- (void)updateLayout;
@end

@implementation _UINavigationBarLayout

- (BOOL)isVariableHeight
{
  if (result)
  {
    v1 = result;
    [(_UINavigationBarLayout *)result updateLayout];
    [_UIBarInsertLayoutData calculateLayoutHeights:*(v1 + 88)];
    return v2 < v3;
  }

  return result;
}

- (uint64_t)removeAllViews
{
  if (result)
  {
    v1 = result;
    [*(result + 120) removeFromSuperview];
    [*(v1 + 224) stopAnimations];
    hostContainerView = [*(v1 + 224) hostContainerView];
    [hostContainerView removeFromSuperview];

    [*(v1 + 128) removeFromSuperview];
    [*(v1 + 136) removeFromSuperview];
    [*(v1 + 144) removeFromSuperview];
    [*(v1 + 176) removeFromSuperview];
    [*(v1 + 232) removeFromSuperview];
    _viewStackedInNavigationBar = [*(v1 + 240) _viewStackedInNavigationBar];
    [_viewStackedInNavigationBar removeFromSuperview];

    [*(v1 + 256) removeFromSuperview];
    v4 = *(v1 + 264);

    return [v4 removeFromSuperview];
  }

  return result;
}

- (void)restingHeights
{
  if (self)
  {
    selfCopy = self;
    v3 = self[12];
    if (!v3)
    {
      v4 = [_UIBarInsertLayoutData calculateRestingHeightsForLayouts:self[11]];
      v5 = selfCopy[12];
      selfCopy[12] = v4;

      v3 = selfCopy[12];
    }

    self = v3;
    v1 = vars8;
  }

  return self;
}

- (void)_updateLayoutOutputs
{
  v39 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = self->_stackingOrderedLayout;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
  v5 = 0;
  v6 = 0;
  if (v4)
  {
    v7 = *v35;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v13 = *(*(&v34 + 1) + 8 * i);
        if (v6)
        {
          [*(*(&v34 + 1) + 8 * i) collapsingHeight];
          if (v14 > 0.0)
          {
            LOBYTE(v4) = 1;
            goto LABEL_17;
          }
        }

        else if ([*(*(&v34 + 1) + 8 * i) isVariableHeight] && (objc_msgSend(v13, "ignoredForCollapsingBehaviors") & 1) == 0)
        {
          [v13 layoutMinimumHeight];
          v11 = v16;
          [v13 preferredHeight];
          v10 = v17;
          [v13 collapsingHeight];
          v9 = v18;
          v6 = v13;
          v5 = 1;
        }

        else
        {
          [v13 assignedHeight];
          v6 = 0;
          v8 = v8 + v15;
        }
      }

      v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v4);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

LABEL_17:

  if (vabdd_f64(v9, v11) < 0.00000011920929)
  {
    v9 = v11;
  }

  if (_UIBarsApplyChromelessEverywhere())
  {
    clientCanUpdateChromelessTransitionProgress = self->_clientCanUpdateChromelessTransitionProgress;
  }

  else
  {
    clientCanUpdateChromelessTransitionProgress = 0;
  }

  useManualScrollEdgeAppearance = self->_useManualScrollEdgeAppearance;
  if (useManualScrollEdgeAppearance && !clientCanUpdateChromelessTransitionProgress)
  {
    self->_chromelessTransitionProgress = 1.0 - self->_manualScrollEdgeAppearanceProgress;
    apiVersion = self->_apiVersion;
    goto LABEL_25;
  }

  apiVersion = self->_apiVersion;
  if (apiVersion < 1)
  {
    self->_chromelessTransitionProgress = 0.0;
    goto LABEL_45;
  }

  if (v9 <= v11)
  {
    if (!clientCanUpdateChromelessTransitionProgress || (self->_clientUsesManualScrollEdgeAppearanceProgressSPI & v5 & 1) != 0)
    {
      self->_chromelessTransitionProgress = 0.0;
      goto LABEL_25;
    }

    v24 = 1.0 - self->_manualScrollEdgeAppearanceProgress;
  }

  else
  {
    if (v9 >= v10)
    {
      self->_chromelessTransitionProgress = 1.0;
      goto LABEL_25;
    }

    if (!clientCanUpdateChromelessTransitionProgress || (v24 = 1.0, self->_clientUsesManualScrollEdgeAppearanceProgressSPI))
    {
      v24 = (v9 - v11) / (v10 - v11);
    }
  }

  self->_chromelessTransitionProgress = v24;
LABEL_25:
  if (apiVersion >= 2)
  {
    if (self->_largeTitleView)
    {
      if (v6 == self->_largeTitleLayoutData)
      {
        v22 = v4;
      }

      else
      {
        v22 = 1;
      }

      standardBackgroundViewLayout = self->_standardBackgroundViewLayout;
      if ((v22 & 1) == 0 && !useManualScrollEdgeAppearance)
      {
        [(_UIBarBackgroundLayout *)standardBackgroundViewLayout setUseExplicitGeometry:1];
        [(_UIBarBackgroundLayout *)self->_standardBackgroundViewLayout setBackgroundHeight1:v8 + self->_backgroundExtension];
        [(_UIBarBackgroundLayout *)self->_standardBackgroundViewLayout setBackgroundHeight2:self->_layoutSize.height - v8];
        goto LABEL_45;
      }
    }

    else
    {
      standardBackgroundViewLayout = self->_standardBackgroundViewLayout;
    }

    [(_UIBarBackgroundLayout *)standardBackgroundViewLayout setUseExplicitGeometry:0, v34];
  }

LABEL_45:
  if (self->_largeTitleView && ([(_UIBarInsertLayoutData *)self->_largeTitleLayoutData preferredHeight], v25 > 0.0))
  {
    [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData collapsingHeight];
    v27 = v26;
    [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData preferredHeight];
    v29 = v28;
    if (v27 <= 0.0 || v27 < v28)
    {
      self->_largeTitleExposure = v27 / v28;
      if (fabs(v27 / v28) < 0.00000011920929)
      {
        self->_largeTitleExposure = 0.0;
      }
    }

    else
    {
      self->_largeTitleExposure = 1.0;
    }

    [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData transitionProgress];
    self->_largeTitleTransitionProgress = v32;
    [(_UINavigationBarContentViewLayout *)self->_contentViewLayout setLargeTitleHeight:v27];
    contentViewLayout = self->_contentViewLayout;
    v31 = v29;
  }

  else
  {
    self->_largeTitleExposure = 0.0;
    self->_largeTitleTransitionProgress = 0.0;
    [(_UINavigationBarContentViewLayout *)self->_contentViewLayout setLargeTitleHeight:0.0, v34];
    contentViewLayout = self->_contentViewLayout;
    v31 = 0.0;
  }

  [(_UINavigationBarContentViewLayout *)contentViewLayout setLargeTitleHeightRange:0.0, v31];
  if (self->_refreshControlHost)
  {
    [(_UIBarInsertLayoutData *)self->_refreshControlLayoutData collapsingHeight];
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost setUnobstructedHeight:?];
  }

  if (self->_clientWantsBackgroundHidden)
  {
    self->_computedBackgroundViewAlpha = 0.0;
  }

  else
  {
    requestedBackgroundViewAlpha = self->_requestedBackgroundViewAlpha;
    if (self->_apiVersion < 2)
    {
      if (v6 || self->_useManualScrollEdgeAppearance || self->_backgroundCoversContentOnly)
      {
        requestedBackgroundViewAlpha = requestedBackgroundViewAlpha * (1.0 - self->_chromelessTransitionProgress);
      }

      self->_computedBackgroundViewAlpha = requestedBackgroundViewAlpha;
    }

    else
    {
      self->_computedBackgroundViewAlpha = requestedBackgroundViewAlpha;
      [(_UIBarBackgroundLayout *)self->_standardBackgroundViewLayout setBackgroundTransitionProgress:self->_chromelessTransitionProgress];
    }
  }
}

- (void)_updateContentViewLayoutItem
{
  if (self->_contentView && self->_contentViewLayout)
  {
    if (!self->_contentLayoutData)
    {
      v3 = objc_alloc_init(_UIBarInsertLayoutData);
      [(_UIBarInsertLayoutData *)v3 setIdentifier:@"ContentView"];
      [(_UIBarInsertLayoutData *)v3 setPriority:2000];
      [(_UIBarInsertLayoutData *)v3 setOrder:80];
      contentLayoutData = self->_contentLayoutData;
      self->_contentLayoutData = v3;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  [(_UINavigationBarLayout *)self _includeContentLayoutDataInLayout:v5];
}

- (void)_updateLargeTitleViewLayoutItem
{
  if (self->_largeTitleView && (largeTitleViewLayout = self->_largeTitleViewLayout) != 0)
  {
    [(_UINavigationBarLargeTitleViewLayout *)largeTitleViewLayout setOverlaysContentView:self->_largeTitleViewOverlaysContentView];
    largeTitleLayoutData = self->_largeTitleLayoutData;
    if (!largeTitleLayoutData)
    {
      v5 = objc_alloc_init(_UIBarInsertLayoutData);
      [(_UIBarInsertLayoutData *)v5 setIdentifier:@"LargeTitle"];
      [(_UIBarInsertLayoutData *)v5 setPriority:1800];
      [(_UIBarInsertLayoutData *)v5 setOrder:60];
      v6 = self->_largeTitleLayoutData;
      self->_largeTitleLayoutData = v5;

      [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData setPrefersExpanded:1];
      [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData setCollapsible:1];
      largeTitleLayoutData = self->_largeTitleLayoutData;
    }

    [(_UINavigationBarLayout *)self _addLayoutItem:largeTitleLayoutData];
  }

  else
  {
    v7 = self->_largeTitleLayoutData;

    [(_UINavigationBarLayout *)self _removeLayoutItem:v7];
  }
}

- (void)updateLayout
{
  if (self)
  {
    [self _updateLayoutParametersForWidth:*(self + 312)];
    v2 = *(self + 32);
    if (!v2)
    {
      v2 = *(self + 40);
    }

    v3 = *(self + 80);
    v4 = *(self + 320);
    v5 = v2;
    [_UIBarInsertLayoutData updateLayoutParameters:v3 overflowLayout:v5 forAvailableHeight:v4];
    [_UIBarInsertLayoutData assignVerticalOriginsToItemsInLayouts:*(self + 88)];
    *(self + 104) |= 1u;
    [self _updateLayoutOutputs];
  }
}

- (double)layoutHeights
{
  if (!self)
  {
    return 0.0;
  }

  [_UIBarInsertLayoutData calculateLayoutHeights:*(self + 88)];
  return result;
}

- (_UINavigationBarLayout)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v31.receiver = self;
  v31.super_class = _UINavigationBarLayout;
  v5 = [(_UINavigationBarLayout *)&v31 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_promptView, *(layoutCopy + 15));
    objc_storeStrong(&v6->_contentView, *(layoutCopy + 16));
    objc_storeStrong(&v6->_contentViewVisualProvider, *(layoutCopy + 19));
    objc_storeStrong(&v6->_animationContentClippingView, *(layoutCopy + 17));
    objc_storeStrong(&v6->_contentViewLayout, *(layoutCopy + 20));
    objc_storeStrong(&v6->_largeTitleView, *(layoutCopy + 18));
    objc_storeStrong(&v6->_largeTitleViewLayout, *(layoutCopy + 21));
    objc_storeStrong(&v6->_backgroundView, *(layoutCopy + 22));
    objc_storeStrong(&v6->_standardBackgroundViewLayout, *(layoutCopy + 24));
    objc_storeStrong(&v6->_compactBackgroundViewLayout, *(layoutCopy + 23));
    objc_storeStrong(&v6->_weeTitleLabel, *(layoutCopy + 29));
    objc_storeStrong(&v6->_refreshControlHost, *(layoutCopy + 28));
    objc_storeStrong(&v6->_searchBar, *(layoutCopy + 30));
    objc_storeStrong(&v6->_topPalette, *(layoutCopy + 32));
    objc_storeStrong(&v6->_bottomPalette, *(layoutCopy + 33));
    v6->_largeTitleViewOverlaysContentView = layoutCopy[108];
    v7 = *(layoutCopy + 344);
    *&v6->_largeTitleViewInsets.top = *(layoutCopy + 328);
    *&v6->_largeTitleViewInsets.bottom = v7;
    v6->_backgroundExtension = *(layoutCopy + 25);
    v6->_backgroundCoversContentOnly = layoutCopy[109];
    v6->_hidesSearchBarWhenScrolling = layoutCopy[116];
    v6->_adjustForTabBar = layoutCopy[117];
    v6->_layoutSize = *(layoutCopy + 312);
    v6->_useManualScrollEdgeAppearance = layoutCopy[111];
    v6->_manualScrollEdgeAppearanceProgress = *(layoutCopy + 27);
    v6->_representedSearchLayoutState = *(layoutCopy + 31);
    v6->_clientCanUpdateChromelessTransitionProgress = layoutCopy[113];
    v6->_clientUsesManualScrollEdgeAppearanceProgressSPI = layoutCopy[112];
    v6->_apiVersion = *(layoutCopy + 38);
    v6->_largeTitleExposure = *(layoutCopy + 34);
    v6->_largeTitleTransitionProgress = *(layoutCopy + 35);
    v6->_chromelessTransitionProgress = *(layoutCopy + 36);
    v6->_computedBackgroundViewAlpha = *(layoutCopy + 37);
    array = [MEMORY[0x1E695DF70] array];
    priorityOrderedLayout = v6->_priorityOrderedLayout;
    v6->_priorityOrderedLayout = array;

    array2 = [MEMORY[0x1E695DF70] array];
    stackingOrderedLayout = v6->_stackingOrderedLayout;
    v6->_stackingOrderedLayout = array2;

    v12 = [*(layoutCopy + 1) copy];
    topWhitespaceLayoutData = v6->_topWhitespaceLayoutData;
    v6->_topWhitespaceLayoutData = v12;

    [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_topWhitespaceLayoutData];
    if (v6->_promptView)
    {
      v14 = [*(layoutCopy + 2) copy];
      promptLayoutData = v6->_promptLayoutData;
      v6->_promptLayoutData = v14;

      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_promptLayoutData];
    }

    if (v6->_contentView)
    {
      v16 = [*(layoutCopy + 3) copy];
      contentLayoutData = v6->_contentLayoutData;
      v6->_contentLayoutData = v16;

      [(_UINavigationBarLayout *)v6 _includeContentLayoutDataInLayout:1];
    }

    if (v6->_refreshControlHost)
    {
      v18 = [*(layoutCopy + 5) copy];
      refreshControlLayoutData = v6->_refreshControlLayoutData;
      v6->_refreshControlLayoutData = v18;
    }

    if (v6->_largeTitleView)
    {
      v20 = [*(layoutCopy + 4) copy];
      largeTitleLayoutData = v6->_largeTitleLayoutData;
      v6->_largeTitleLayoutData = v20;

      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_largeTitleLayoutData];
    }

    if (v6->_searchBar)
    {
      v22 = [*(layoutCopy + 6) copy];
      searchBarLayoutData = v6->_searchBarLayoutData;
      v6->_searchBarLayoutData = v22;

      v24 = [*(layoutCopy + 7) copy];
      scopeBarLayoutData = v6->_scopeBarLayoutData;
      v6->_scopeBarLayoutData = v24;

      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_searchBarLayoutData];
      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_scopeBarLayoutData];
    }

    if (v6->_topPalette)
    {
      v26 = [*(layoutCopy + 8) copy];
      topPaletteLayoutData = v6->_topPaletteLayoutData;
      v6->_topPaletteLayoutData = v26;

      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_topPaletteLayoutData];
    }

    if (v6->_bottomPalette)
    {
      v28 = [*(layoutCopy + 9) copy];
      bottomPaletteLayoutData = v6->_bottomPaletteLayoutData;
      v6->_bottomPaletteLayoutData = v28;

      [(_UINavigationBarLayout *)v6 _addLayoutItem:v6->_bottomPaletteLayoutData];
    }

    *&v6->_flags &= ~1u;
  }

  return v6;
}

- (_UINavigationBarLayout)init
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarLayout;
  v2 = [(_UINavigationBarLayout *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    priorityOrderedLayout = v2->_priorityOrderedLayout;
    v2->_priorityOrderedLayout = array;

    array2 = [MEMORY[0x1E695DF70] array];
    stackingOrderedLayout = v2->_stackingOrderedLayout;
    v2->_stackingOrderedLayout = array2;

    [(_UINavigationBarLayout *)v2 _updateWhitespaceLayoutItems];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithLayout:self];
}

- (void)_addLayoutItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    v7 = itemCopy;
    active = [itemCopy active];
    v5 = v7;
    if ((active & 1) == 0)
    {
      [v7 setActive:1];
      [(NSMutableArray *)self->_priorityOrderedLayout insertObject:v7 atIndex:[(NSMutableArray *)self->_priorityOrderedLayout indexOfObject:v7 inSortedRange:0 options:[(NSMutableArray *)self->_priorityOrderedLayout count] usingComparator:1024, &__block_literal_global_497]];
      [(NSMutableArray *)self->_stackingOrderedLayout insertObject:v7 atIndex:[(NSMutableArray *)self->_stackingOrderedLayout indexOfObject:v7 inSortedRange:0 options:[(NSMutableArray *)self->_stackingOrderedLayout count] usingComparator:1024, &__block_literal_global_2_16]];
      v5 = v7;
      *&self->_flags &= ~1u;
    }
  }
}

- (void)_removeLayoutItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy)
  {
    v7 = itemCopy;
    active = [itemCopy active];
    v5 = v7;
    if (active)
    {
      [v7 setActive:0];
      [(NSMutableArray *)self->_priorityOrderedLayout removeObjectIdenticalTo:v7];
      [(NSMutableArray *)self->_stackingOrderedLayout removeObjectIdenticalTo:v7];
      v5 = v7;
      *&self->_flags &= ~1u;
    }
  }
}

- (void)_reprioritizeLayoutItem:(id)item toPriority:(int64_t)priority
{
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v10 = itemCopy;
    priority = [itemCopy priority];
    v7 = v10;
    if (priority != priority)
    {
      active = [v10 active];
      v7 = v10;
      if (active)
      {
        [(NSMutableArray *)self->_priorityOrderedLayout removeObjectIdenticalTo:v10];
        [v10 setPriority:priority];
        [(NSMutableArray *)self->_priorityOrderedLayout insertObject:v10 atIndex:[(NSMutableArray *)self->_priorityOrderedLayout indexOfObject:v10 inSortedRange:0 options:[(NSMutableArray *)self->_priorityOrderedLayout count] usingComparator:1024, &__block_literal_global_4_11]];
        v7 = v10;
        *&self->_flags &= ~1u;
      }
    }
  }
}

- (void)_reorderLayoutItem:(id)item toOrder:(int64_t)order
{
  itemCopy = item;
  v7 = itemCopy;
  if (itemCopy)
  {
    v10 = itemCopy;
    order = [itemCopy order];
    v7 = v10;
    if (order != order)
    {
      active = [v10 active];
      v7 = v10;
      if (active)
      {
        [(NSMutableArray *)self->_stackingOrderedLayout removeObjectIdenticalTo:v10];
        [v10 setOrder:order];
        [(NSMutableArray *)self->_stackingOrderedLayout insertObject:v10 atIndex:[(NSMutableArray *)self->_stackingOrderedLayout indexOfObject:v10 inSortedRange:0 options:[(NSMutableArray *)self->_stackingOrderedLayout count] usingComparator:1024, &__block_literal_global_6_13]];
        v7 = v10;
        *&self->_flags &= ~1u;
      }
    }
  }
}

- (void)setPromptView:(uint64_t)view
{
  v4 = a2;
  if (view && *(view + 120) != v4)
  {
    v9 = v4;
    objc_storeStrong((view + 120), a2);
    v5 = *(view + 16);
    if (*(view + 120))
    {
      if (!v5)
      {
        _promptOrder = [view _promptOrder];
        v7 = objc_alloc_init(_UIBarInsertLayoutData);
        [(_UIBarInsertLayoutData *)v7 setIdentifier:@"Prompt"];
        [(_UIBarInsertLayoutData *)v7 setPriority:900];
        [(_UIBarInsertLayoutData *)v7 setOrder:_promptOrder];
        v8 = *(view + 16);
        *(view + 16) = v7;

        v5 = *(view + 16);
      }

      [view _addLayoutItem:v5];
    }

    else
    {
      [view _removeLayoutItem:v5];
    }

    v4 = v9;
  }
}

- (void)_includeContentLayoutDataInLayout:(BOOL)layout
{
  if (layout && !self->_largeTitleViewOverlaysContentView)
  {
    [(_UINavigationBarLayout *)self _addLayoutItem:self->_contentLayoutData];
  }

  else
  {
    [(_UINavigationBarLayout *)self _removeLayoutItem:self->_contentLayoutData];
  }
}

- (void)setContentView:(uint64_t)view
{
  v4 = a2;
  v5 = v4;
  if (view)
  {
    if (*(view + 136) && *(view + 128) != v4)
    {
      if (os_variant_has_internal_diagnostics())
      {
        v11 = __UIFaultDebugAssertLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Surprise!", buf, 2u);
        }
      }

      else
      {
        v10 = *(__UILogGetCategoryCachedImpl("Assert", &setContentView____s_category) + 8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *v12 = 0;
          _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Surprise!", v12, 2u);
        }
      }
    }

    v6 = *(view + 128);
    if (v5)
    {
      if (v6 == v5)
      {
        if (*(view + 160))
        {
          goto LABEL_10;
        }
      }

      else
      {
        objc_storeStrong((view + 128), a2);
        v6 = *(view + 128);
      }

      layout = [v6 layout];
      v8 = *(view + 160);
      *(view + 160) = layout;
    }

    else
    {
      *(view + 128) = 0;

      v9 = *(view + 160);
      *(view + 160) = 0;

      [*(view + 136) removeFromSuperview];
      v8 = *(view + 136);
      *(view + 136) = 0;
    }

LABEL_10:
    [view _updateContentViewLayoutItem];
  }
}

- (void)setContentViewLayout:(id *)layout
{
  v4 = a2;
  if (layout)
  {
    objc_storeStrong(layout + 20, a2);
    [layout _updateContentViewLayoutItem];
  }
}

- (void)setLargeTitleView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    v5 = *(view + 144);
    v8 = v4;
    if (v4)
    {
      if (v5 == v4)
      {
        if (*(view + 168))
        {
          goto LABEL_8;
        }
      }

      else
      {
        objc_storeStrong((view + 144), a2);
        v5 = *(view + 144);
      }

      layout = [v5 layout];
      v7 = *(view + 168);
      *(view + 168) = layout;
    }

    else
    {
      *(view + 144) = 0;

      v7 = *(view + 168);
      *(view + 168) = 0;
    }

LABEL_8:
    [view _updateLargeTitleViewLayoutItem];
    v4 = v8;
  }
}

- (void)setLargeTitleViewLayout:(id *)layout
{
  v4 = a2;
  if (layout)
  {
    objc_storeStrong(layout + 21, a2);
    [layout _updateLargeTitleViewLayoutItem];
  }
}

- (void)setBackgroundView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    v6 = *(view + 176);
    v5 = (view + 176);
    if (v6 != v4)
    {
      v7 = v4;
      objc_storeStrong(v5, a2);
      v4 = v7;
    }
  }
}

- (void)setStandardBackgroundViewLayout:(id *)layout
{
  v4 = a2;
  if (layout && layout[24] != v4)
  {
    v5 = v4;
    objc_storeStrong(layout + 24, a2);
    [layout _updateLayoutOutputs];
    v4 = v5;
  }
}

- (void)setRefreshControlHost:(id *)host
{
  v4 = a2;
  if (host)
  {
    v5 = host[28];
    if (v5 != v4)
    {
      v7 = v4;
      [v5 setDelegate:0];
      [host[28] stopAnimations];
      hostContainerView = [host[28] hostContainerView];
      [hostContainerView removeFromSuperview];

      objc_storeStrong(host + 28, a2);
      [host _updateRefreshControlLayoutData];
      v4 = v7;
    }
  }
}

- (void)_updateRefreshControlLayoutData
{
  refreshControlLayoutData = self->_refreshControlLayoutData;
  if (self->_refreshControlHost)
  {
    if (!refreshControlLayoutData)
    {
      v4 = objc_alloc_init(_UIBarInsertLayoutData);
      [(_UIBarInsertLayoutData *)v4 setIdentifier:@"RefreshControl"];
      [(_UIBarInsertLayoutData *)v4 setPriority:1600];
      [(_UIBarInsertLayoutData *)v4 setOrder:70];
      v5 = self->_refreshControlLayoutData;
      self->_refreshControlLayoutData = v4;

      [(_UIBarInsertLayoutData *)self->_refreshControlLayoutData setIgnoredForCollapsingBehaviors:1];
      refreshControlLayoutData = self->_refreshControlLayoutData;
    }

    [(_UINavigationBarLayout *)self _addLayoutItem:refreshControlLayoutData];
    [(_UIBarInsertLayoutData *)self->_refreshControlLayoutData setMinimumHeight:0.0];
    [(_UINavigationControllerRefreshControlHost *)self->_refreshControlHost restingHeightOfRefreshControl];
    [(_UIBarInsertLayoutData *)self->_refreshControlLayoutData setPreferredHeight:?];
    v6 = self->_refreshControlLayoutData;

    [(_UIBarInsertLayoutData *)v6 setCollapsible:1];
  }

  else
  {

    [(_UINavigationBarLayout *)self _removeLayoutItem:refreshControlLayoutData];
  }
}

- (void)setWeeTitleLabel:(uint64_t)label
{
  v4 = a2;
  if (label)
  {
    v6 = *(label + 232);
    v5 = (label + 232);
    if (v6 != v4)
    {
      v7 = v4;
      objc_storeStrong(v5, a2);
      v4 = v7;
    }
  }
}

- (void)setSearchBar:(uint64_t)bar
{
  v4 = a2;
  if (bar && *(bar + 240) != v4)
  {
    v11 = v4;
    objc_storeStrong((bar + 240), a2);
    v5 = *(bar + 48);
    if (*(bar + 240))
    {
      if (!v5)
      {
        if (*(bar + 116))
        {
          v6 = 1700;
        }

        else
        {
          v6 = 1900;
        }

        v7 = objc_alloc_init(_UIBarInsertLayoutData);
        [(_UIBarInsertLayoutData *)v7 setIdentifier:@"SearchBar"];
        [(_UIBarInsertLayoutData *)v7 setPriority:v6];
        [(_UIBarInsertLayoutData *)v7 setOrder:50];
        v8 = *(bar + 48);
        *(bar + 48) = v7;

        [*(bar + 48) setCollapsible:*(bar + 116)];
        v9 = objc_alloc_init(_UIBarInsertLayoutData);
        [(_UIBarInsertLayoutData *)v9 setIdentifier:@"ActiveSearchScopeBar"];
        [(_UIBarInsertLayoutData *)v9 setPriority:1500];
        [(_UIBarInsertLayoutData *)v9 setOrder:40];
        v10 = *(bar + 56);
        *(bar + 56) = v9;

        [*(bar + 56) setCollapsible:1];
        v5 = *(bar + 48);
      }

      [bar _addLayoutItem:v5];
      [bar _addLayoutItem:*(bar + 56)];
    }

    else
    {
      [bar _removeLayoutItem:v5];
      [bar _removeLayoutItem:*(bar + 56)];
    }

    v4 = v11;
  }
}

- (int64_t)_topPaletteOrder
{
  if (self->_adjustForTabBar)
  {
    return 65;
  }

  else
  {
    return 90;
  }
}

- (void)setTopPalette:(uint64_t)palette
{
  v4 = a2;
  if (palette && *(palette + 256) != v4)
  {
    v15 = v4;
    objc_storeStrong((palette + 256), a2);
    v5 = *(palette + 256);
    if (v5)
    {
      _layoutPriority = [v5 _layoutPriority];
      v7 = 900;
      if (_layoutPriority == 2)
      {
        v7 = 1802;
      }

      if (_layoutPriority == 1)
      {
        v8 = 1702;
      }

      else
      {
        v8 = v7;
      }

      _topPaletteOrder = [palette _topPaletteOrder];
      v10 = *(palette + 64);
      if (!v10)
      {
        v11 = objc_alloc_init(_UIBarInsertLayoutData);
        [(_UIBarInsertLayoutData *)v11 setIdentifier:@"TopPalette"];
        [(_UIBarInsertLayoutData *)v11 setPriority:v8];
        [(_UIBarInsertLayoutData *)v11 setOrder:_topPaletteOrder];
        v12 = *(palette + 64);
        *(palette + 64) = v11;

        v10 = *(palette + 64);
      }

      active = [v10 active];
      v14 = *(palette + 64);
      if (active)
      {
        [palette _reprioritizeLayoutItem:v14 toPriority:v8];
        [palette _reorderLayoutItem:*(palette + 64) toOrder:_topPaletteOrder];
      }

      else
      {
        [palette _addLayoutItem:v14];
      }
    }

    else
    {
      [palette _removeLayoutItem:*(palette + 64)];
    }

    v4 = v15;
  }
}

- (void)setBottomPalette:(uint64_t)palette
{
  v4 = a2;
  if (palette && *(palette + 264) != v4)
  {
    v14 = v4;
    objc_storeStrong((palette + 264), a2);
    v5 = *(palette + 264);
    if (v5)
    {
      _layoutPriority = [v5 _layoutPriority];
      v7 = 700;
      if (_layoutPriority == 2)
      {
        v7 = 1801;
      }

      if (_layoutPriority == 1)
      {
        v8 = 1701;
      }

      else
      {
        v8 = v7;
      }

      v9 = *(palette + 72);
      if (!v9)
      {
        v10 = objc_alloc_init(_UIBarInsertLayoutData);
        [(_UIBarInsertLayoutData *)v10 setIdentifier:@"BottomPalette"];
        [(_UIBarInsertLayoutData *)v10 setPriority:v8];
        [(_UIBarInsertLayoutData *)v10 setOrder:30];
        v11 = *(palette + 72);
        *(palette + 72) = v10;

        v9 = *(palette + 72);
      }

      active = [v9 active];
      v13 = *(palette + 72);
      if (active)
      {
        [palette _reprioritizeLayoutItem:v13 toPriority:v8];
      }

      else
      {
        [palette _addLayoutItem:v13];
      }
    }

    else
    {
      [palette _removeLayoutItem:*(palette + 72)];
    }

    v4 = v14;
  }
}

- (uint64_t)setHidesSearchBarWhenScrolling:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    if (*(result + 116) != a2)
    {
      *(result + 116) = a2;
      if (*(result + 240))
      {
        [*(result + 48) setCollapsible:a2];
        v3 = *(v2 + 48);
        if (*(v2 + 116))
        {
          v4 = 1700;
        }

        else
        {
          v4 = 1900;
        }

        return [v2 _reprioritizeLayoutItem:v3 toPriority:v4];
      }
    }
  }

  return result;
}

- (void)_updateLayoutParametersForWidth:(double)width
{
  promptView = self->_promptView;
  promptLayoutData = self->_promptLayoutData;
  if (promptView)
  {
    [(_UINavigationBarModernPromptView *)promptView updateLayoutData:promptLayoutData layoutWidth:width];
  }

  else if (promptLayoutData)
  {
    [(_UIBarInsertLayoutData *)self->_promptLayoutData setFixedHeight:0.0];
  }

  if (self->_contentView)
  {
    contentViewLayout = self->_contentViewLayout;
    if (!contentViewLayout)
    {
      layout = [(_UINavigationBarContentView *)self->_contentView layout];
      v9 = self->_contentViewLayout;
      self->_contentViewLayout = layout;

      if (self->_contentViewLayout)
      {
        [(_UINavigationBarLayout *)self _includeContentLayoutDataInLayout:1];
        contentViewLayout = self->_contentViewLayout;
      }

      else
      {
        contentViewLayout = 0;
      }
    }

    [(_UINavigationBarContentViewLayout *)contentViewLayout updateLayoutData:self->_contentLayoutData layoutWidth:width];
  }

  else
  {
    contentLayoutData = self->_contentLayoutData;
    if (contentLayoutData)
    {
      [(_UIBarInsertLayoutData *)contentLayoutData setFixedHeight:0.0];
    }
  }

  if (self->_refreshControlHost)
  {
    [(_UINavigationBarLayout *)self _updateRefreshControlLayoutData];
  }

  else
  {
    refreshControlLayoutData = self->_refreshControlLayoutData;
    if (refreshControlLayoutData)
    {
      [(_UIBarInsertLayoutData *)refreshControlLayoutData setFixedHeight:0.0];
    }
  }

  searchBar = self->_searchBar;
  searchBarLayoutData = self->_searchBarLayoutData;
  if (searchBar)
  {
    [(UISearchBar *)searchBar _updateNavigationBarLayoutInsertDataForSearchBar:searchBarLayoutData collapsibleScopeBar:self->_scopeBarLayoutData forLayoutState:self->_representedSearchLayoutState];
  }

  else if (searchBarLayoutData)
  {
    [(_UIBarInsertLayoutData *)self->_searchBarLayoutData setFixedHeight:0.0];
    [(_UIBarInsertLayoutData *)self->_scopeBarLayoutData setFixedHeight:0.0];
  }

  if (self->_largeTitleView)
  {
    largeTitleViewLayout = self->_largeTitleViewLayout;
    if (!largeTitleViewLayout)
    {
      layout2 = [(_UINavigationBarLargeTitleView *)self->_largeTitleView layout];
      v16 = self->_largeTitleViewLayout;
      self->_largeTitleViewLayout = layout2;

      if (self->_largeTitleViewLayout)
      {
        [(_UINavigationBarLayout *)self _addLayoutItem:self->_largeTitleLayoutData];
        largeTitleViewLayout = self->_largeTitleViewLayout;
      }

      else
      {
        largeTitleViewLayout = 0;
      }
    }

    [(_UINavigationBarLargeTitleViewLayout *)largeTitleViewLayout updateLayoutData:self->_largeTitleLayoutData layoutWidth:width];
    if (self->_largeTitleViewOverlaysContentView && self->_contentViewLayout)
    {
      [(_UIBarInsertLayoutData *)self->_contentLayoutData minimumHeight];
      [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData setMinimumHeight:?];
      [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData setCollapsible:0];
      largeTitleLayoutData = self->_largeTitleLayoutData;
      v19 = 0.0;
    }

    else
    {
      [(_UIBarInsertLayoutData *)self->_largeTitleLayoutData setCollapsible:1];
      largeTitleLayoutData = self->_largeTitleLayoutData;
      v19 = 14.0;
    }

    [(_UIBarInsertLayoutData *)largeTitleLayoutData setBottomInsetForTransitionProgress:v19];
  }

  else
  {
    v17 = self->_largeTitleLayoutData;
    if (v17)
    {
      [(_UIBarInsertLayoutData *)v17 setFixedHeight:0.0];
    }
  }

  topPalette = self->_topPalette;
  if (topPalette)
  {
    [(_UINavigationBarPalette *)topPalette updateLayoutData:self->_topPaletteLayoutData layoutWidth:width];
  }

  bottomPalette = self->_bottomPalette;
  if (bottomPalette)
  {
    [(_UINavigationBarPalette *)bottomPalette updateLayoutData:self->_bottomPaletteLayoutData layoutWidth:width];
  }

  restingHeights = self->_restingHeights;
  self->_restingHeights = 0;
}

- (void)setLayoutSize:(double)size
{
  if (self)
  {
    UIFloorToScale(size, 6.0);
    v6 = *(self + 312) == a2 && *(self + 320) == v5;
    if (!v6 || (*(self + 104) & 1) == 0)
    {
      *(self + 312) = a2;
      *(self + 320) = v5;

      [(_UINavigationBarLayout *)self updateLayout];
    }
  }
}

- (CGRect)topWhitespaceLayoutFrame
{
  [(_UIBarInsertLayoutData *)self->_topWhitespaceLayoutData layoutFrameInWidth:self->_layoutSize.width];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_layoutFrameFor:(id)for withOrder:(int64_t)order
{
  forCopy = for;
  if ([forCopy active])
  {
    [forCopy layoutFrameInWidth:self->_layoutSize.width];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = [_UIBarInsertLayoutData layoutPriorToItemWithOrder:order inLayouts:self->_stackingOrderedLayout];
    [v15 maxY];
    v10 = v16;
    v8 = 0.0;

    v12 = 0.0;
    v14 = 0.0;
  }

  v17 = v8;
  v18 = v10;
  v19 = v12;
  v20 = v14;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (uint64_t)contentViewLayoutFrame
{
  if (result)
  {
    v1 = result;
    if (*(result + 108) == 1)
    {
      [*(result + 32) verticalOrigin];
      return [*(v1 + 24) collapsingHeight];
    }

    else
    {
      return [result _layoutFrameFor:*(result + 24) withOrder:80];
    }
  }

  return result;
}

- (double)searchBarLayoutFrame
{
  if (!self)
  {
    return 0.0;
  }

  [self _layoutFrameFor:*(self + 48) withOrder:50];
  v3 = v2;
  traitCollection = [*(self + 240) traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 6)
  {
    superview = [*(self + 240) superview];
    [superview safeAreaInsets];
    v8 = v7;
    effectiveUserInterfaceLayoutDirection = [*(self + 240) effectiveUserInterfaceLayoutDirection];
    v10 = 0.0;
    if (!effectiveUserInterfaceLayoutDirection)
    {
      v10 = v8;
    }

    v3 = v3 + v10;
  }

  if ([*(self + 56) active])
  {
    [*(self + 56) collapsingHeight];
  }

  return v3;
}

- (double)topPaletteLayoutFrame
{
  if (!self)
  {
    return 0.0;
  }

  v2 = self[8];
  if (v2)
  {
    order = [v2 order];
    v4 = self[8];
  }

  else
  {
    v4 = 0;
    order = 90;
  }

  [self _layoutFrameFor:v4 withOrder:order];
  return result;
}

- (double)backgroundViewLayoutFrame
{
  if (self)
  {
    return *MEMORY[0x1E695F058];
  }

  else
  {
    return 0.0;
  }
}

- (void)layoutViews
{
  if (self)
  {
    if (*(self + 120))
    {
      [self _layoutFrameFor:*(self + 16) withOrder:{objc_msgSend(self, "_promptOrder")}];
      [*(self + 120) setFrame:?];
    }

    if (*(self + 256))
    {
      v2 = *(self + 64);
      if (v2)
      {
        order = [v2 order];
        v4 = *(self + 64);
      }

      else
      {
        v4 = 0;
        order = 90;
      }

      [self _layoutFrameFor:v4 withOrder:order];
      [*(self + 256) setFrame:?];
    }

    if (*(self + 128))
    {
      [(_UINavigationBarLayout *)self contentViewLayoutFrame];
      v9 = v5;
      v10 = v6;
      v11 = v7;
      v12 = v8;
      v13 = *(self + 136);
      if (v13)
      {
        [v13 frame];
        [*(self + 136) setFrame:?];
        superview = [*(self + 136) superview];
        [superview safeAreaInsets];
        v16 = v15;
        v18 = v17;
        v65.origin.x = v9;
        v65.origin.y = v10;
        v65.size.width = v11;
        v65.size.height = v12;
        MinX = CGRectGetMinX(v65);
        if (MinX >= v16)
        {
          v16 = MinX;
        }

        v66.origin.x = v9;
        v66.origin.y = v10;
        v66.size.width = v11;
        v66.size.height = v12;
        MaxX = CGRectGetMaxX(v66);
        [superview bounds];
        v21 = CGRectGetMaxX(v67) - v18;
        if (MaxX < v21)
        {
          v21 = MaxX;
        }

        v22 = v21 - v16;
        v23 = *(self + 136);
        superview2 = [v23 superview];
        [v23 convertRect:superview2 fromView:{v16, v10, v22, v12}];
        [*(self + 128) setFrame:?];
      }

      else
      {
        [*(self + 128) setFrame:{v5, v6, v7, v8}];
      }
    }

    if (*(self + 224))
    {
      [self _layoutFrameFor:*(self + 40) withOrder:70];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [*(self + 224) fullHeightOfRefreshControl];
      v32 = v31;
      hostContainerView = [*(self + 224) hostContainerView];
      [hostContainerView setFrame:{v26, v28, v30, v32}];
    }

    if (*(self + 144))
    {
      [self _layoutFrameFor:*(self + 32) withOrder:60];
      [*(self + 144) setFrame:?];
    }

    if (*(self + 240) && !+[UIView _hasInProcessProgressAnimator])
    {
      searchBarLayoutFrame = [(_UINavigationBarLayout *)self searchBarLayoutFrame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      _viewStackedInNavigationBar = [*(self + 240) _viewStackedInNavigationBar];
      [_viewStackedInNavigationBar setFrame:{searchBarLayoutFrame, v36, v38, v40}];
    }

    if (*(self + 264))
    {
      [self _layoutFrameFor:*(self + 72) withOrder:30];
      [*(self + 264) setFrame:?];
    }

    if (*(self + 232))
    {
      v42 = *MEMORY[0x1E695F058];
      v43 = *(MEMORY[0x1E695F058] + 8);
      v44 = *(MEMORY[0x1E695F058] + 24);
      [*(self + 144) frame];
      recta = v45;
      v47 = v46;
      v49 = v48;
      v51 = v50;
      [*(self + 144) directionalLayoutMargins];
      v53 = v52;
      v55 = *(self + 312) - v52 - v54;
      [*(self + 232) sizeThatFits:{v55, v44}];
      v57 = v56;
      [*(self + 232) setBounds:{v42, v43, v55, v56}];
      v68.origin.x = recta;
      v68.origin.y = v47;
      v68.size.width = v49;
      v68.size.height = v51;
      MaxY = CGRectGetMaxY(v68);
      [*(self + 144) restingHeightOfTitleView];
      v60 = MaxY - v59;
      [*(self + 232) _firstLineBaseline];
      v62 = *(self + 232);

      [v62 setCenter:{v53 + v55 * 0.5, v57 * 0.5 + v60 - v61}];
    }
  }
}

- (void)installViewsInNavigationBar:(uint64_t)bar
{
  v22 = *MEMORY[0x1E69E9840];
  if (bar)
  {
    v3 = *(bar + 240);
    v4 = a2;
    _viewStackedInNavigationBar = [v3 _viewStackedInNavigationBar];
    v14[0] = *(bar + 176);
    v14[1] = [*(bar + 224) hostContainerView];
    v15 = *(bar + 256);
    v7 = *(bar + 136);
    v6 = *(bar + 144);
    v16 = _viewStackedInNavigationBar;
    v17 = v6;
    v9 = *(bar + 120);
    v8 = *(bar + 128);
    if (!v7)
    {
      v7 = *(bar + 128);
    }

    v18 = v7;
    v19 = v9;
    v20 = *(bar + 232);
    assistant = [v8 assistant];
    previewContainer = [assistant previewContainer];

    layout = [*(bar + 128) layout];
    [layout setActive:1 contentView:*(bar + 128)];

    [v4 _ensureViewsAreInstalledInRelativeOrder:v14 viewCount:10 insertionStartIndex:0];
    if (*(bar + 136))
    {
      superview = [*(bar + 128) superview];
      v13 = *(bar + 136);

      if (superview != v13)
      {
        [*(bar + 136) addSubview:*(bar + 128)];
      }
    }

    [_viewStackedInNavigationBar setTranslatesAutoresizingMaskIntoConstraints:1];
  }
}

- (void)interleaveViewsWithLayout:(void *)layout inNavigationBar:
{
  v18[15] = *MEMORY[0x1E69E9840];
  v5 = a2;
  layoutCopy = layout;
  if (self)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_interleaveViewsWithLayout_inNavigationBar_ object:self file:@"_UINavigationBarLayout.m" lineNumber:1050 description:@"otherLayout==nil"];
    }

    v17[2] = [*(self + 224) hostContainerView];
    v17[3] = [*(v5 + 28) hostContainerView];
    v7 = v18;
    v19.val[0] = *(self + 256);
    v19.val[1] = *(v5 + 16);
    vst2q_f64(v7, v19);
    v18[4] = [*(self + 240) _viewStackedInNavigationBar];
    _viewStackedInNavigationBar = [*(v5 + 30) _viewStackedInNavigationBar];
    v9 = *(self + 136);
    v10 = *(self + 144);
    v18[5] = _viewStackedInNavigationBar;
    v18[6] = v10;
    v18[7] = *(v5 + 18);
    if (!v9)
    {
      v9 = *(self + 128);
    }

    v18[8] = v9;
    v11 = *(v5 + 17);
    if (!v11)
    {
      v11 = *(v5 + 16);
    }

    v13 = *(self + 120);
    v12 = *(self + 128);
    v18[9] = v11;
    v18[10] = v13;
    v14 = *(self + 232);
    v18[11] = *(v5 + 15);
    v18[12] = v14;
    v18[13] = *(v5 + 29);
    assistant = [v12 assistant];
    v18[14] = [assistant previewContainer];

    [layoutCopy _ensureViewsAreInstalledInRelativeOrder:v17 viewCount:19 insertionStartIndex:0];
  }
}

- (void)removeViewsNotInLayout:(uint64_t)layout
{
  v3 = a2;
  if (layout)
  {
    v18 = v3;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_removeViewsNotInLayout_ object:layout file:@"_UINavigationBarLayout.m" lineNumber:1088 description:@"otherLayout==nil"];
    }

    hostContainerView = [*(layout + 224) hostContainerView];
    hostContainerView2 = [v18[28] hostContainerView];

    if (hostContainerView != hostContainerView2)
    {
      [*(layout + 224) stopAnimations];
      hostContainerView3 = [*(layout + 224) hostContainerView];
      [hostContainerView3 removeFromSuperview];
    }

    v7 = *(layout + 120);
    v8 = v18;
    if (v7 != v18[15])
    {
      [v7 removeFromSuperview];
      v8 = v18;
    }

    v9 = *(layout + 128);
    if (v9 != v8[16])
    {
      [v9 removeFromSuperview];
      [*(layout + 136) removeFromSuperview];
      v8 = v18;
    }

    v10 = *(layout + 144);
    if (v10 != v8[18])
    {
      [v10 removeFromSuperview];
      v8 = v18;
    }

    v11 = *(layout + 176);
    if (v11 != v8[22])
    {
      [v11 removeFromSuperview];
      v8 = v18;
    }

    v12 = *(layout + 232);
    if (v12 != v8[29])
    {
      [v12 removeFromSuperview];
      v8 = v18;
    }

    v13 = *(layout + 240);
    if (v13 != v8[30])
    {
      _viewStackedInNavigationBar = [v13 _viewStackedInNavigationBar];
      [_viewStackedInNavigationBar removeFromSuperview];

      v8 = v18;
    }

    v15 = *(layout + 256);
    if (v15 != v8[32])
    {
      [v15 removeFromSuperview];
      v8 = v18;
    }

    v16 = *(layout + 264);
    if (v16 != v8[33])
    {
      [v16 removeFromSuperview];
    }

    v3 = v18;
  }
}

- (void)iterateLayoutViews:(uint64_t)views
{
  v3 = a2;
  if (views)
  {
    v26 = v3;
    if (!v3)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_iterateLayoutViews_ object:views file:@"_UINavigationBarLayout.m" lineNumber:1118 description:@"Block has to be non-nil or this method is pointless"];
    }

    v4 = *(views + 120);
    if (v4)
    {
      v5 = *(views + 16);
      v6 = v4;
      [views _layoutFrameFor:v5 withOrder:{objc_msgSend(views, "_promptOrder")}];
      v26[2](v26, v6);
    }

    v7 = *(views + 256);
    if (v7)
    {
      v8 = *(views + 64);
      if (v8)
      {
        order = [v8 order];
        v10 = *(views + 64);
      }

      else
      {
        v10 = 0;
        order = 90;
      }

      [views _layoutFrameFor:v10 withOrder:order];
      v26[2](v26, v7);
    }

    v11 = *(views + 128);
    if (v11)
    {
      v12 = v11;
      [(_UINavigationBarLayout *)views contentViewLayoutFrame];
      v26[2](v26, v12);
    }

    hostContainerView = [*(views + 224) hostContainerView];
    if (hostContainerView)
    {
      [views _layoutFrameFor:*(views + 40) withOrder:70];
      v26[2](v26, hostContainerView);
    }

    v14 = *(views + 144);
    if (v14)
    {
      v15 = *(views + 32);
      v16 = v14;
      [views _layoutFrameFor:v15 withOrder:60];
      v26[2](v26, v16);
    }

    _viewStackedInNavigationBar = [*(views + 240) _viewStackedInNavigationBar];
    if (_viewStackedInNavigationBar)
    {
      searchBarLayoutFrame = [(_UINavigationBarLayout *)views searchBarLayoutFrame];
      (v26[2])(v26, _viewStackedInNavigationBar, searchBarLayoutFrame);
    }

    v19 = *(views + 264);
    if (v19)
    {
      v20 = *(views + 72);
      v21 = v19;
      [views _layoutFrameFor:v20 withOrder:30];
      v26[2](v26, v21);
    }

    v22 = *(views + 232);
    v3 = v26;
    if (v22)
    {
      v23 = v22;
      searchBarLayoutFrame2 = [(_UINavigationBarLayout *)views searchBarLayoutFrame];
      (v26[2])(v26, v23, searchBarLayoutFrame2);

      v3 = v26;
    }
  }
}

- (id)layoutForMeasuringWidth:(void *)width
{
  widthCopy = width;
  if (width)
  {
    v3 = width[21];
    if (v3 && (v5 = [v3 twoLineMode], a2 != 0.0) && v5 == 1)
    {
      widthCopy = [widthCopy copy];
      [(_UINavigationBarLayout *)widthCopy setLayoutSize:a2, 0.0];
    }

    else
    {
      [(_UINavigationBarLayout *)widthCopy updateLayout];
      widthCopy = widthCopy;
    }
  }

  return widthCopy;
}

- (double)layoutHeightRevealingPart:(id *)part
{
  v19 = *MEMORY[0x1E69E9840];
  if (!part)
  {
    return 0.0;
  }

  v3 = [part _insertLayoutDataForNavigationBarPart:a2];
  v4 = 0.0;
  if ([v3 active])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = part[10];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          priority = [v10 priority];
          if (priority >= [v3 priority])
          {
            [v10 preferredHeight];
          }

          else
          {
            [v10 layoutMinimumHeight];
          }

          v4 = v4 + v12;
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (double)layoutHeightStackingPart:(id *)part
{
  v19 = *MEMORY[0x1E69E9840];
  if (!part)
  {
    return 0.0;
  }

  v3 = [part _insertLayoutDataForNavigationBarPart:a2];
  v4 = 0.0;
  if ([v3 active])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = part[11];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          order = [v10 order];
          if (order >= [v3 order])
          {
            [v10 preferredHeight];
            v4 = v4 + v12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (id)_insertLayoutDataForNavigationBarPart:(int64_t)part
{
  v4 = 0;
  if (part > 4)
  {
    if (part > 6)
    {
      if (part == 7)
      {
        p_bottomPaletteLayoutData = &self->_bottomPaletteLayoutData;
      }

      else
      {
        if (part != 8)
        {
          goto LABEL_21;
        }

        p_bottomPaletteLayoutData = &self->_refreshControlLayoutData;
      }
    }

    else if (part == 5)
    {
      scopeBarLayoutData = self->_scopeBarLayoutData;
      p_scopeBarLayoutData = &self->_scopeBarLayoutData;
      active = [(_UIBarInsertLayoutData *)scopeBarLayoutData active];
      p_bottomPaletteLayoutData = p_scopeBarLayoutData - 1;
      if (active)
      {
        p_bottomPaletteLayoutData = p_scopeBarLayoutData;
      }
    }

    else
    {
      p_bottomPaletteLayoutData = &self->_topPaletteLayoutData;
    }
  }

  else if (part > 2)
  {
    if (part == 3)
    {
      p_bottomPaletteLayoutData = &self->_promptLayoutData;
    }

    else
    {
      p_bottomPaletteLayoutData = &self->_searchBarLayoutData;
    }
  }

  else if (part == 1)
  {
    p_bottomPaletteLayoutData = &self->_contentLayoutData;
  }

  else
  {
    if (part != 2)
    {
      goto LABEL_21;
    }

    p_bottomPaletteLayoutData = &self->_largeTitleLayoutData;
  }

  v4 = *p_bottomPaletteLayoutData;
LABEL_21:

  return v4;
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = _UINavigationBarLayout;
  v3 = [(_UINavigationBarLayout *)&v18 description];
  v4 = [v3 mutableCopy];

  v5 = NSStringFromCGSize(self->_layoutSize);
  [v4 appendFormat:@" layoutSize=%@ priority=%p order=%p", v5, self->_priorityOrderedLayout, self->_stackingOrderedLayout];

  if (self->_promptView)
  {
    [v4 appendFormat:@" prompt{view=%p data=%p}", self->_promptView, self->_promptLayoutData];
  }

  contentView = self->_contentView;
  if (contentView)
  {
    [v4 appendFormat:@" content{view=%p data=%p layout=%p}", contentView, self->_contentLayoutData, self->_contentViewLayout];
    if (self->_animationContentClippingView)
    {
      [v4 appendString:@"[CLIPPED]"];
    }
  }

  if (self->_refreshControlHost)
  {
    [v4 appendFormat:@" refreshControl{host=%p layout=%p}", self->_refreshControlHost, self->_refreshControlLayoutData];
  }

  largeTitleView = self->_largeTitleView;
  if (largeTitleView)
  {
    largeTitleLayoutData = self->_largeTitleLayoutData;
    largeTitleViewLayout = self->_largeTitleViewLayout;
    largeTitleExposure = self->_largeTitleExposure;
    largeTitleTransitionProgress = self->_largeTitleTransitionProgress;
    v12 = NSStringFromDirectionalEdgeInsets(self->_largeTitleViewInsets);
    [v4 appendFormat:@" largeTitle{view=%p data=%p layout=%p exposure=%f progress=%f insets=%@}", largeTitleView, largeTitleLayoutData, largeTitleViewLayout, *&largeTitleExposure, *&largeTitleTransitionProgress, v12];
  }

  searchBar = self->_searchBar;
  if (searchBar)
  {
    if (self->_hidesSearchBarWhenScrolling)
    {
      v14 = @" hidesWhenScrolling";
    }

    else
    {
      v14 = &stru_1EFB14550;
    }

    [v4 appendFormat:@" searchBar{view=%p data=%p%@ scopeBarData=%p}", searchBar, self->_searchBarLayoutData, v14, self->_scopeBarLayoutData];
  }

  backgroundView = self->_backgroundView;
  if (backgroundView)
  {
    if (self->_backgroundCoversContentOnly)
    {
      v16 = @" coversContentOnly";
    }

    else
    {
      v16 = &stru_1EFB14550;
    }

    [v4 appendFormat:@" background{view=%p extension=%f%@}", backgroundView, *&self->_backgroundExtension, v16];
  }

  if (self->_weeTitleLabel)
  {
    [v4 appendFormat:@" weeTitleView=%p", self->_weeTitleLabel];
  }

  if (self->_topPalette)
  {
    [v4 appendFormat:@" topPalette{view=%p data=%p}", self->_topPalette, self->_topPaletteLayoutData];
  }

  if (self->_bottomPalette)
  {
    [v4 appendFormat:@" bottomPalette{view=%p data=%p}", self->_bottomPalette, self->_bottomPaletteLayoutData];
  }

  if (self->_useManualScrollEdgeAppearance)
  {
    [v4 appendFormat:@" manualScrollEdgeProgress=%f", 1.0 - self->_manualScrollEdgeAppearanceProgress];
  }

  else if (self->_largeTitleView)
  {
    [v4 appendFormat:@" chromelessScrollEdgeProgress=%f", *&self->_chromelessTransitionProgress];
  }

  return v4;
}

- (void)recordFromStateForTransition:(id)transition
{
  contentView = self->_contentView;
  transitionCopy = transition;
  [(_UINavigationBarContentView *)contentView recordFromStateForTransition:transitionCopy];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView recordFromStateForTransition:transitionCopy];
}

- (void)prepareToRecordToState:(id)state
{
  contentView = self->_contentView;
  stateCopy = state;
  [(_UINavigationBarContentView *)contentView prepareToRecordToState:stateCopy];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView prepareToRecordToState:stateCopy];
}

- (void)recordToStateForTransition:(id)transition
{
  contentView = self->_contentView;
  transitionCopy = transition;
  [(_UINavigationBarContentView *)contentView recordToStateForTransition:transitionCopy];
  [(_UINavigationBarLargeTitleView *)self->_largeTitleView recordToStateForTransition:transitionCopy];
}

- (void)finalizeStateFromTransition:(id)transition
{
  [(_UINavigationBarContentView *)self->_contentView adoptLayout:self->_contentViewLayout];
  largeTitleView = self->_largeTitleView;
  largeTitleViewLayout = self->_largeTitleViewLayout;

  [(_UINavigationBarLargeTitleView *)largeTitleView adoptLayout:largeTitleViewLayout];
}

- (void)setContentViewVisualProvider:(uint64_t)provider
{
  if (provider)
  {
    objc_storeStrong((provider + 152), a2);
  }
}

@end