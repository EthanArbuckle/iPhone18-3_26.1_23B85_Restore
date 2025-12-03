@interface PXGScrollLayout
- (CGPoint)anchor:(id)anchor visibleRectOriginForProposedVisibleRect:(CGRect)rect forLayout:(id)layout;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXGLayout)contentLayout;
- (PXGScrollLayout)init;
- (PXGScrollLayout)initWithContentLayout:(id)layout;
- (PXGScrollLayoutDelegate)delegate;
- (UIEdgeInsets)hitTestContentInsets;
- (UIEdgeInsets)horizontalScrollIndicatorInsets;
- (UIEdgeInsets)verticalScrollIndicatorInsets;
- (id)axContainingScrollViewForAXGroup:(id)group;
- (id)axSpriteIndexes;
- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)edges;
- (id)focusItemsForScrollViewContainer:(id)container inRect:(CGRect)rect;
- (id)layoutForItemChanges;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)intrinsicScrollRegime;
- (int64_t)scrollableAxis;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_invalidateContentLayout;
- (void)_invalidateLocalContent;
- (void)_updateContentLayout;
- (void)_updateLocalContent;
- (void)alphaDidChange;
- (void)contentSizeDidChange;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index;
- (void)lastScrollDirectionDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)scrollViewContainerDidEndScrolling:(id)scrolling;
- (void)scrollViewContainerDidScroll:(id)scroll;
- (void)scrollViewContainerWillBeginScrolling:(id)scrolling;
- (void)scrollViewContainerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)setAlwaysBounceHorizontal:(BOOL)horizontal;
- (void)setAlwaysBounceVertical:(BOOL)vertical;
- (void)setClipsToBounds:(BOOL)bounds;
- (void)setContentLayout:(id)layout;
- (void)setDelegate:(id)delegate;
- (void)setDraggingPerformsScroll:(BOOL)scroll;
- (void)setFixedHeight:(id)height;
- (void)setFixedWidth:(id)width;
- (void)setHitTestContentInsets:(UIEdgeInsets)insets;
- (void)setHorizontalInterPageSpacing:(double)spacing;
- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setIsScrolling:(BOOL)scrolling;
- (void)setScrollDecelerationRate:(int64_t)rate;
- (void)setScrollViewSpriteZPosition:(float)position;
- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator;
- (void)setShowsVerticalScrollIndicator:(BOOL)indicator;
- (void)setTransfersScrollToContainer:(BOOL)container;
- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)insets;
- (void)setWantsScrollView:(BOOL)view;
- (void)stopScrolling;
- (void)sublayoutNeedsUpdate:(id)update;
- (void)update;
- (void)userInterfaceDirectionDidChange;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXGScrollLayout

- (UIEdgeInsets)hitTestContentInsets
{
  top = self->_hitTestContentInsets.top;
  left = self->_hitTestContentInsets.left;
  bottom = self->_hitTestContentInsets.bottom;
  right = self->_hitTestContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)verticalScrollIndicatorInsets
{
  top = self->_verticalScrollIndicatorInsets.top;
  left = self->_verticalScrollIndicatorInsets.left;
  bottom = self->_verticalScrollIndicatorInsets.bottom;
  right = self->_verticalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)horizontalScrollIndicatorInsets
{
  top = self->_horizontalScrollIndicatorInsets.top;
  left = self->_horizontalScrollIndicatorInsets.left;
  bottom = self->_horizontalScrollIndicatorInsets.bottom;
  right = self->_horizontalScrollIndicatorInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGScrollLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)axContainingScrollViewForAXGroup:(id)group
{
  rootLayout = [(PXGLayout *)self rootLayout];
  v5 = [rootLayout viewForSpriteIndex:{objc_msgSend(rootLayout, "convertSpriteIndex:fromDescendantLayout:", self->_scrollViewSpriteIndex, self)}];
  scrollViewController = [v5 scrollViewController];
  scrollView = [scrollViewController scrollView];

  return scrollView;
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x277CCAA78]);

  return v2;
}

- (id)focusItemsForScrollViewContainer:(id)container inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  scrollViewController = [container scrollViewController];
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  axGroup = [contentLayout axGroup];
  v12 = [axGroup focusItemsForScrollViewController:scrollViewController inRect:{x, y, width, height}];

  return v12;
}

- (void)scrollViewContainerDidEndScrolling:(id)scrolling
{
  [(PXGScrollLayout *)self setIsScrolling:0];
  if (self->_delegateRespondsTo.didEndScrolling)
  {
    delegate = [(PXGScrollLayout *)self delegate];
    [delegate scrollLayoutDidEndScrolling:self];
  }
}

- (void)scrollViewContainerWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  if (self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset)
  {
    y = contentOffset.y;
    x = contentOffset.x;
    v10 = velocity.y;
    v11 = velocity.x;
    delegate = [(PXGScrollLayout *)self delegate];
    [delegate scrollLayoutWillEndScrolling:self withVelocity:offset targetContentOffset:v11 currentContentOffset:{v10, x, y}];
  }
}

- (void)scrollViewContainerDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if (![(PXGScrollLayout *)self isScrolling]&& +[PXGScrollLayout isRunningPPTScrollTest])
  {
    [(PXGScrollLayout *)self scrollViewContainerWillBeginScrolling:scrollCopy];
  }

  if ([(PXGScrollLayout *)self isScrolling])
  {
    [(PXGLayout *)self clearLastVisibleAreaAnchoringInformation];
  }

  if (self->_delegateRespondsTo.didScroll)
  {
    delegate = [(PXGScrollLayout *)self delegate];
    [delegate scrollLayoutDidScroll:self];
  }
}

- (void)scrollViewContainerWillBeginScrolling:(id)scrolling
{
  [(PXGScrollLayout *)self setIsScrolling:1];
  if (self->_delegateRespondsTo.willBeginScrolling)
  {
    delegate = [(PXGScrollLayout *)self delegate];
    [delegate scrollLayoutWillBeginScrolling:self];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ScrollViewModelObservationContext != context)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGScrollLayout.m" lineNumber:541 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 2) != 0)
  {
    v13 = observableCopy;
    changesOptions = [observableCopy changesOptions];
    v10 = v13;
    if ((changesOptions & 1) == 0)
    {
      [(PXGScrollLayout *)self _invalidateContentLayout];
      v10 = v13;
    }
  }
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_scrollViewSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGScrollLayout.m" lineNumber:521 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  v9 = objc_alloc_init(PXGScrollViewContainerConfiguration);
  scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
  [(PXGScrollViewContainerConfiguration *)v9 setScrollViewModel:scrollViewModel];

  [(PXGScrollViewContainerConfiguration *)v9 setDelegate:self];

  return v9;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (self->_scrollViewSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXGScrollLayout.m" lineNumber:510 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  v9 = objc_opt_class();

  return v9;
}

- (void)_updateLocalContent
{
  [(PXGLayout *)self contentSize];
  PXRectWithOriginAndSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  localNumberOfSprites = [(PXGLayout *)self localNumberOfSprites];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__PXGScrollLayout__updateLocalContent__block_invoke;
  v12[3] = &unk_2782A7DE0;
  v12[4] = self;
  v12[5] = v4;
  v12[6] = v6;
  v12[7] = v8;
  v12[8] = v10;
  [(PXGLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v12];
}

uint64_t __38__PXGScrollLayout__updateLocalContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  v9 = a3 + 32 * v8[218];
  [v8 scrollViewSpriteZPosition];
  v11 = v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v25.origin.x = v12;
  v25.origin.y = v13;
  v25.size.width = v14;
  v25.size.height = v15;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v12;
  v26.origin.y = v13;
  v26.size.width = v14;
  v26.size.height = v15;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v12;
  v27.origin.y = v13;
  v27.size.width = v14;
  v27.size.height = v15;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v12;
  v28.origin.y = v13;
  v28.size.width = v14;
  v28.size.height = v15;
  Height = CGRectGetHeight(v28);
  v19.f64[0] = Width;
  v19.f64[1] = Height;
  *v9 = MidX;
  *(v9 + 8) = MidY;
  *(v9 + 16) = v11;
  *(v9 + 24) = vcvt_f32_f64(v19);
  v20 = (a4 + 160 * *(*(a1 + 32) + 872));
  v20[6] = xmmword_21AE2E2C0;
  v20[7] = unk_21AE2E2D0;
  v20[8] = xmmword_21AE2E2E0;
  v20[9] = unk_21AE2E2F0;
  v20[2] = xmmword_21AE2E280;
  v20[3] = unk_21AE2E290;
  v20[4] = xmmword_21AE2E2A0;
  v20[5] = unk_21AE2E2B0;
  *v20 = PXGSpriteStyleDefault;
  v20[1] = unk_21AE2E270;
  result = [*(a1 + 32) alpha];
  v22 = 0.0;
  if (v23 > 0.0)
  {
    result = [*(a1 + 32) wantsScrollView];
    v22 = 1.0;
    if (!result)
    {
      v22 = 0.0;
    }
  }

  *(a4 + 160 * *(*(a1 + 32) + 872)) = v22;
  *(a5 + 40 * *(*(a1 + 32) + 872)) = 1;
  *(a5 + 40 * *(*(a1 + 32) + 872) + 1) = 10;
  *(a5 + 40 * *(*(a1 + 32) + 872) + 32) = *(*(a1 + 32) + 876);
  *(a5 + 40 * *(*(a1 + 32) + 872) + 34) = 2;
  return result;
}

- (void)_invalidateLocalContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout _invalidateLocalContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGScrollLayout.m" lineNumber:488 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentLayout
{
  isUpdatingContentLayout = self->_isUpdatingContentLayout;
  self->_isUpdatingContentLayout = 1;
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  [(PXGLayout *)self referenceSize];
  v7 = v6;
  v9 = v8;
  fixedWidth = [(PXGScrollLayout *)self fixedWidth];
  fixedHeight = [(PXGScrollLayout *)self fixedHeight];
  if (fixedWidth)
  {
    [fixedWidth doubleValue];
    v7 = v12;
  }

  if (fixedHeight)
  {
    [fixedHeight doubleValue];
    v9 = v13;
  }

  viewEnvironment = [(PXGLayout *)self viewEnvironment];
  [contentLayout setViewEnvironment:viewEnvironment];

  [contentLayout setReferenceSize:{v7, v9}];
  [(PXGLayout *)self referenceDepth];
  [contentLayout setReferenceDepth:?];
  [contentLayout setReferenceOptions:{-[PXGLayout referenceOptions](self, "referenceOptions")}];
  [(PXGLayout *)self displayScale];
  [contentLayout setDisplayScale:?];
  [contentLayout setLastScrollDirection:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
  [(PXGLayout *)self safeAreaInsets];
  [contentLayout setSafeAreaInsets:?];
  [contentLayout setUserInterfaceDirection:{-[PXGLayout userInterfaceDirection](self, "userInterfaceDirection")}];
  scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
  [scrollViewModel contentOffset];
  [(PXGLayout *)self visibleRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  PXPointAdd();
  v56 = v23;
  v57 = v21;
  PXRectWithOriginAndSize();
  [contentLayout setVisibleRect:?];
  v24 = [contentLayout createAnchorFromSuperlayoutWithSublayoutIndex:0 sublayoutPositionEdges:0 ignoringScrollingAnimationAnchors:0];
  autoInvalidate = [v24 autoInvalidate];

  [contentLayout updateIfNeeded];
  [contentLayout visibleRect];
  v27 = v26;
  v29 = v28;
  [contentLayout contentSize];
  v31 = v30;
  v33 = v32;
  [(PXGLayout *)self setContentSize:v7, v9];
  if (PXFloatApproximatelyEqualToFloat())
  {
    v19 = v29;
  }

  if (PXFloatApproximatelyEqualToFloat())
  {
    v17 = v27;
  }

  PXPointSubtract();
  v35 = v34;
  v37 = v36;
  if (-[PXGScrollLayout isScrolling](self, "isScrolling") || ([scrollViewModel contentOffset], v42 = v41, v44 = v43, objc_msgSend(scrollViewModel, "contentSize"), v42 < 0.0))
  {
    v38 = v57;
LABEL_11:
    v39 = v56;
    goto LABEL_12;
  }

  v38 = v57;
  if (v44 < 0.0)
  {
    goto LABEL_11;
  }

  v47 = ceil(v45 - v57);
  v48 = 0.0;
  if (v47 < 0.0)
  {
    v47 = 0.0;
  }

  if (v42 > v47)
  {
    goto LABEL_11;
  }

  v39 = v56;
  v49 = ceil(v46 - v56);
  if (v49 >= 0.0)
  {
    v48 = v49;
  }

  if (v44 <= v48)
  {
    v50 = v31 - v57;
    if (v35 < v31 - v57)
    {
      v50 = v35;
    }

    if (v50 >= 0.0)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0.0;
    }

    v52 = v33 - v56;
    if (v37 < v33 - v56)
    {
      v52 = v37;
    }

    if (v52 >= 0.0)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0.0;
    }

    PXPointSubtract();
    PXPointAdd();
    v39 = v56;
    v38 = v57;
    v17 = v54;
    v19 = v55;
    v37 = v53;
    v35 = v51;
  }

LABEL_12:
  [(PXGLayout *)self changeVisibleRectToProposedVisibleRect:v17, v19, v38, v39, *&v56];
  sublayoutDataStore = [(PXGLayout *)self sublayoutDataStore];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __39__PXGScrollLayout__updateContentLayout__block_invoke;
  v59[3] = &unk_2782A7DB8;
  v59[4] = self;
  v59[5] = a2;
  *&v59[6] = v31;
  *&v59[7] = v33;
  *&v59[8] = v35;
  *&v59[9] = v37;
  [sublayoutDataStore enumerateSublayoutGeometriesUsingBlock:v59];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __39__PXGScrollLayout__updateContentLayout__block_invoke_2;
  v58[3] = &__block_descriptor_64_e37_v16__0___PXGMutableScrollViewModel__8l;
  *&v58[4] = v31;
  *&v58[5] = v33;
  *&v58[6] = v35;
  *&v58[7] = v37;
  [scrollViewModel performChanges:v58 options:1];
  self->_isUpdatingContentLayout = isUpdatingContentLayout;
}

uint64_t __39__PXGScrollLayout__updateContentLayout__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PXGScrollLayout.m" lineNumber:469 description:@"PXGScrollLayout only supports a single sublayout"];
  }

  *(a3 + 32) = *(a1 + 48);
  result = PXPointSubtract();
  *(a3 + 48) = v6;
  *(a3 + 56) = v7;
  *(a3 + 64) = 0;
  return result;
}

void __39__PXGScrollLayout__updateContentLayout__block_invoke_2(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setContentSize:{v3, v4}];
  [v5 setContentOffset:{a1[6], a1[7]}];
}

- (void)_invalidateContentLayout
{
  if (!self->_isUpdatingContentLayout)
  {
    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        return;
      }

LABEL_6:
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout _invalidateContentLayout]"];
        [currentHandler handleFailureInFunction:v7 file:@"PXGScrollLayout.m" lineNumber:408 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = self->_updateFlags.willPerformUpdate;
    p_updateFlags->needsUpdate = 1;
    if (!willPerformUpdate)
    {

      [(PXGLayout *)self setNeedsUpdate];
    }
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGScrollLayout;
  [(PXGLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGScrollLayout.m" lineNumber:403 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  numberOfDescendantAnchors = [(PXGLayout *)self numberOfDescendantAnchors];
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (numberOfDescendantAnchors < 1)
  {
    self->_updateFlags.willPerformUpdate = 0;
    if (!needsUpdate)
    {
      goto LABEL_17;
    }

    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
    if (self->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_5;
    }
  }

  else
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      if (self->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout update]"];
        [currentHandler handleFailureInFunction:v15 file:@"PXGScrollLayout.m" lineNumber:387 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      p_updateFlags->needsUpdate = needsUpdate | 1;
      self->_updateFlags.willPerformUpdate = 0;
      p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
LABEL_5:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGScrollLayout.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
      goto LABEL_10;
    }

    needsUpdate |= 1uLL;
    p_updateFlags->needsUpdate = needsUpdate;
    self->_updateFlags.willPerformUpdate = 0;
    p_isPerformingUpdate = &self->_updateFlags.isPerformingUpdate;
  }

LABEL_10:
  self->_updateFlags.isPerformingUpdate = 1;
  self->_updateFlags.updated = 1;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    [(PXGScrollLayout *)self _updateContentLayout];
    if (!self->_updateFlags.isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout update]"];
      [currentHandler3 handleFailureInFunction:v11 file:@"PXGScrollLayout.m" lineNumber:394 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }
  }

  v9 = p_updateFlags->needsUpdate;
  self->_updateFlags.updated |= 2uLL;
  if ((v9 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXGScrollLayout *)self _updateLocalContent];
    v9 = p_updateFlags->needsUpdate;
  }

  *p_isPerformingUpdate = 0;
  if (v9)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout update]"];
    [currentHandler4 handleFailureInFunction:v13 file:@"PXGScrollLayout.m" lineNumber:397 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_17:
  v16.receiver = self;
  v16.super_class = PXGScrollLayout;
  [(PXGLayout *)&v16 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGScrollLayout;
  [(PXGLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGScrollLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXGScrollLayout.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (id)layoutForItemChanges
{
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  layoutForItemChanges = [contentLayout layoutForItemChanges];

  return layoutForItemChanges;
}

- (CGPoint)anchor:(id)anchor visibleRectOriginForProposedVisibleRect:(CGRect)rect forLayout:(id)layout
{
  y = rect.origin.y;
  x = rect.origin.x;
  if (self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset)
  {
    height = rect.size.height;
    width = rect.size.width;
    layoutCopy = layout;
    contentLayout = [(PXGScrollLayout *)self contentLayout];
    [contentLayout convertRect:layoutCopy fromLayout:{x, y, width, height}];
    v12 = *MEMORY[0x277CBF348];
    v13 = *(MEMORY[0x277CBF348] + 8);
    PXPointSubtract();
    v16 = [(PXGScrollLayout *)self delegate:v14];
    [v16 scrollLayoutWillEndScrolling:self withVelocity:&v21 targetContentOffset:v12 currentContentOffset:{v13, *MEMORY[0x277D3CFB0], *(MEMORY[0x277D3CFB0] + 8)}];

    PXPointSubtract();
    [layoutCopy convertPoint:contentLayout fromLayout:?];
    x = v17;
    y = v18;
  }

  v19 = x;
  v20 = y;
  result.y = v20;
  result.x = v19;
  return result;
}

- (int64_t)scrollableAxis
{
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  v4 = contentLayout;
  if (contentLayout)
  {
    scrollableAxis = [contentLayout scrollableAxis];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PXGScrollLayout;
    scrollableAxis = [(PXGLayout *)&v8 scrollableAxis];
  }

  v6 = scrollableAxis;

  return v6;
}

- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)edges
{
  v6.receiver = self;
  v6.super_class = PXGScrollLayout;
  v4 = [(PXGLayout *)&v6 createAnchorForVisibleAreaIgnoringEdges:edges];
  [v4 setDelegate:self];

  return v4;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  *objectReference = reference;
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  if (contentLayout)
  {
    v10 = [(PXGLayout *)self indexOfSublayout:contentLayout];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (int64_t)intrinsicScrollRegime
{
  scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
  scrollRegime = [scrollViewModel scrollRegime];

  return scrollRegime;
}

- (void)sublayoutNeedsUpdate:(id)update
{
  v4.receiver = self;
  v4.super_class = PXGScrollLayout;
  [(PXGLayout *)&v4 sublayoutNeedsUpdate:update];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 alphaDidChange];
  [(PXGScrollLayout *)self _invalidateLocalContent];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 contentSizeDidChange];
  [(PXGScrollLayout *)self _invalidateLocalContent];
}

- (void)userInterfaceDirectionDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 userInterfaceDirectionDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 safeAreaInsetsDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)lastScrollDirectionDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 lastScrollDirectionDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 displayScaleDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 referenceSizeDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)viewEnvironmentDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 viewEnvironmentDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXGScrollLayout;
  [(PXGLayout *)&v3 visibleRectDidChange];
  [(PXGScrollLayout *)self _invalidateContentLayout];
}

- (void)stopScrolling
{
  scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
  [scrollViewModel performChanges:&__block_literal_global_756 options:5];
}

- (void)setTransfersScrollToContainer:(BOOL)container
{
  if (self->_transfersScrollToContainer != container)
  {
    v9 = v3;
    v10 = v4;
    self->_transfersScrollToContainer = container;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__PXGScrollLayout_setTransfersScrollToContainer___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    containerCopy = container;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setIsScrolling:(BOOL)scrolling
{
  if (self->_isScrolling != scrolling)
  {
    self->_isScrolling = scrolling;
    [(PXGScrollLayout *)self isScrollingDidChange];
  }
}

- (void)setScrollDecelerationRate:(int64_t)rate
{
  if (self->_scrollDecelerationRate != rate)
  {
    v7[7] = v3;
    v7[8] = v4;
    self->_scrollDecelerationRate = rate;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__PXGScrollLayout_setScrollDecelerationRate___block_invoke;
    v7[3] = &__block_descriptor_40_e37_v16__0___PXGMutableScrollViewModel__8l;
    v7[4] = rate;
    [scrollViewModel performChanges:v7 options:1];
  }
}

- (void)setDraggingPerformsScroll:(BOOL)scroll
{
  if (self->_draggingPerformsScroll != scroll)
  {
    v9 = v3;
    v10 = v4;
    self->_draggingPerformsScroll = scroll;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__PXGScrollLayout_setDraggingPerformsScroll___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    scrollCopy = scroll;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setHorizontalInterPageSpacing:(double)spacing
{
  if (self->_horizontalInterPageSpacing != spacing)
  {
    self->_horizontalInterPageSpacing = spacing;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __49__PXGScrollLayout_setHorizontalInterPageSpacing___block_invoke;
    v5[3] = &__block_descriptor_40_e37_v16__0___PXGMutableScrollViewModel__8l;
    *&v5[4] = spacing;
    [scrollViewModel performChanges:v5];
  }
}

- (void)setHitTestContentInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_hitTestContentInsets = &self->_hitTestContentInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_hitTestContentInsets->top = top;
    p_hitTestContentInsets->left = left;
    p_hitTestContentInsets->bottom = bottom;
    p_hitTestContentInsets->right = right;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PXGScrollLayout_setHitTestContentInsets___block_invoke;
    v10[3] = &__block_descriptor_64_e37_v16__0___PXGMutableScrollViewModel__8l;
    *&v10[4] = top;
    *&v10[5] = left;
    *&v10[6] = bottom;
    *&v10[7] = right;
    [scrollViewModel performChanges:v10];
  }
}

- (void)setVerticalScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_verticalScrollIndicatorInsets = &self->_verticalScrollIndicatorInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_verticalScrollIndicatorInsets->top = top;
    p_verticalScrollIndicatorInsets->left = left;
    p_verticalScrollIndicatorInsets->bottom = bottom;
    p_verticalScrollIndicatorInsets->right = right;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __52__PXGScrollLayout_setVerticalScrollIndicatorInsets___block_invoke;
    v10[3] = &__block_descriptor_64_e37_v16__0___PXGMutableScrollViewModel__8l;
    *&v10[4] = top;
    *&v10[5] = left;
    *&v10[6] = bottom;
    *&v10[7] = right;
    [scrollViewModel performChanges:v10];
  }
}

- (void)setHorizontalScrollIndicatorInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  p_horizontalScrollIndicatorInsets = &self->_horizontalScrollIndicatorInsets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_horizontalScrollIndicatorInsets->top = top;
    p_horizontalScrollIndicatorInsets->left = left;
    p_horizontalScrollIndicatorInsets->bottom = bottom;
    p_horizontalScrollIndicatorInsets->right = right;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__PXGScrollLayout_setHorizontalScrollIndicatorInsets___block_invoke;
    v10[3] = &__block_descriptor_64_e37_v16__0___PXGMutableScrollViewModel__8l;
    *&v10[4] = top;
    *&v10[5] = left;
    *&v10[6] = bottom;
    *&v10[7] = right;
    [scrollViewModel performChanges:v10];
  }
}

- (void)setAlwaysBounceVertical:(BOOL)vertical
{
  if (self->_alwaysBounceVertical != vertical)
  {
    v9 = v3;
    v10 = v4;
    self->_alwaysBounceVertical = vertical;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__PXGScrollLayout_setAlwaysBounceVertical___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    verticalCopy = vertical;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setAlwaysBounceHorizontal:(BOOL)horizontal
{
  if (self->_alwaysBounceHorizontal != horizontal)
  {
    v9 = v3;
    v10 = v4;
    self->_alwaysBounceHorizontal = horizontal;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__PXGScrollLayout_setAlwaysBounceHorizontal___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    horizontalCopy = horizontal;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setShowsVerticalScrollIndicator:(BOOL)indicator
{
  if (self->_showsVerticalScrollIndicator != indicator)
  {
    v9 = v3;
    v10 = v4;
    self->_showsVerticalScrollIndicator = indicator;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __51__PXGScrollLayout_setShowsVerticalScrollIndicator___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    indicatorCopy = indicator;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setShowsHorizontalScrollIndicator:(BOOL)indicator
{
  if (self->_showsHorizontalScrollIndicator != indicator)
  {
    v9 = v3;
    v10 = v4;
    self->_showsHorizontalScrollIndicator = indicator;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__PXGScrollLayout_setShowsHorizontalScrollIndicator___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    indicatorCopy = indicator;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setClipsToBounds:(BOOL)bounds
{
  if (self->_clipsToBounds != bounds)
  {
    v9 = v3;
    v10 = v4;
    self->_clipsToBounds = bounds;
    scrollViewModel = [(PXGScrollLayout *)self scrollViewModel];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__PXGScrollLayout_setClipsToBounds___block_invoke;
    v7[3] = &__block_descriptor_33_e37_v16__0___PXGMutableScrollViewModel__8l;
    boundsCopy = bounds;
    [scrollViewModel performChanges:v7];
  }
}

- (void)setScrollViewSpriteZPosition:(float)position
{
  if (self->_scrollViewSpriteZPosition != position)
  {
    self->_scrollViewSpriteZPosition = position;
    [(PXGScrollLayout *)self _invalidateLocalContent];
  }
}

- (void)setWantsScrollView:(BOOL)view
{
  if (self->_wantsScrollView != view)
  {
    self->_wantsScrollView = view;
    [(PXGScrollLayout *)self _invalidateLocalContent];
  }
}

- (void)setFixedHeight:(id)height
{
  heightCopy = height;
  v6 = heightCopy;
  if (self->_fixedHeight != heightCopy)
  {
    v8 = heightCopy;
    v7 = [(NSNumber *)heightCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fixedHeight, height);
      [(PXGScrollLayout *)self _invalidateContentLayout];
      v6 = v8;
    }
  }
}

- (void)setFixedWidth:(id)width
{
  widthCopy = width;
  v6 = widthCopy;
  if (self->_fixedWidth != widthCopy)
  {
    v8 = widthCopy;
    v7 = [(NSNumber *)widthCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_fixedWidth, width);
      [(PXGScrollLayout *)self _invalidateContentLayout];
      v6 = v8;
    }
  }
}

- (void)insertSublayout:(id)sublayout atIndex:(int64_t)index
{
  v6.receiver = self;
  v6.super_class = PXGScrollLayout;
  [(PXGLayout *)&v6 insertSublayout:sublayout atIndex:?];
  if (!index)
  {
    [(PXGScrollLayout *)self _invalidateContentLayout];
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    self->_delegateRespondsTo.willBeginScrolling = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateRespondsTo.didScroll = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_delegate);
    self->_delegateRespondsTo.willEndScrollingWithVelocityTargetContentOffsetCurrentContentOffset = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&self->_delegate);
    p_delegateRespondsTo->didEndScrolling = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setContentLayout:(id)layout
{
  layoutCopy = layout;
  contentLayout = [(PXGScrollLayout *)self contentLayout];
  if (contentLayout != layoutCopy)
  {
    [contentLayout removeFromSuperlayout];
    if (layoutCopy)
    {
      [(PXGScrollLayout *)self insertSublayout:layoutCopy atIndex:0];
    }

    [(PXGScrollLayout *)self contentLayoutDidChange];
  }
}

- (PXGLayout)contentLayout
{
  if ([(PXGLayout *)self numberOfSublayouts]< 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(PXGLayout *)self sublayoutAtIndex:0 loadIfNeeded:0];
  }

  return v3;
}

- (PXGScrollLayout)initWithContentLayout:(id)layout
{
  layoutCopy = layout;
  v5 = [(PXGScrollLayout *)self init];
  [(PXGScrollLayout *)v5 setContentLayout:layoutCopy];

  return v5;
}

- (PXGScrollLayout)init
{
  v7.receiver = self;
  v7.super_class = PXGScrollLayout;
  v2 = [(PXGLayout *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_wantsScrollView = 1;
    v2->_scrollViewSpriteZPosition = -1.0;
    v2->_transfersScrollToContainer = 1;
    v4 = objc_alloc_init(PXGScrollViewModel);
    scrollViewModel = v3->_scrollViewModel;
    v3->_scrollViewModel = v4;

    [(PXGScrollViewModel *)v3->_scrollViewModel registerChangeObserver:v3 context:ScrollViewModelObservationContext];
    [(PXGLayout *)v3 setContentSource:v3];
    [(PXGScrollLayout *)v3 setClipsToBounds:1];
    [(PXGScrollLayout *)v3 setShowsVerticalScrollIndicator:1];
    [(PXGScrollLayout *)v3 setShowsHorizontalScrollIndicator:1];
    v3->_scrollViewSpriteIndex = 0;
    [(PXGLayout *)v3 addSpritesInRange:0x100000000 initialState:0];
  }

  return v3;
}

@end