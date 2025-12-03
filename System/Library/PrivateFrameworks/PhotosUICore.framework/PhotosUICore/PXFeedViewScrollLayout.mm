@interface PXFeedViewScrollLayout
- (PXFeedViewScrollLayout)init;
- (PXFeedViewScrollLayout)initWithViewModel:(id)model displayingFeedContentLayout:(id)layout;
- (UIEdgeInsets)safeAreaInsets;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (void)_invalidateAnchorForVisibleArea;
- (void)_invalidateContentSize;
- (void)_invalidateScrollParameters;
- (void)_updateAnchorForVisibleArea;
- (void)_updateContentSize;
- (void)_updateScrollParameters;
- (void)clearLastVisibleAreaAnchoringInformation;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)update;
@end

@implementation PXFeedViewScrollLayout

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_152974 == context)
  {
    if ((change & 8) != 0)
    {
      [(PXFeedViewScrollLayout *)self _invalidateContentSize];
      [(PXFeedViewScrollLayout *)self _invalidateScrollParameters];
    }

    if ((change & 0xA) != 0)
    {
      [(PXFeedViewScrollLayout *)self _invalidateAnchorForVisibleArea];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXFeedViewScrollLayout;
    [(PXFeedViewScrollLayout *)&v9 observable:observableCopy didChange:change context:context];
  }
}

- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  viewModel = [(PXFeedViewScrollLayout *)self viewModel];
  spec = [viewModel spec];

  scrollBehavior = [spec scrollBehavior];
  contentLayout = [(PXFeedViewScrollLayout *)self contentLayout];
  [contentLayout visibleRect];

  [scrollBehavior axis];
  PXPointValueForAxis();
}

- (void)clearLastVisibleAreaAnchoringInformation
{
  if (self->_isClearingLastVisibleAreaAnchoringInformation)
  {
    v4.receiver = self;
    v4.super_class = PXFeedViewScrollLayout;
    [(PXFeedViewScrollLayout *)&v4 clearLastVisibleAreaAnchoringInformation];
  }

  else
  {
    self->_isClearingLastVisibleAreaAnchoringInformation = 1;
    rootLayout = [(PXFeedViewScrollLayout *)self rootLayout];
    [rootLayout clearLastVisibleAreaAnchoringInformation];

    self->_isClearingLastVisibleAreaAnchoringInformation = 0;
  }
}

- (void)_updateScrollParameters
{
  viewModel = [(PXFeedViewScrollLayout *)self viewModel];
  spec = [viewModel spec];

  scrollBehavior = [spec scrollBehavior];
  decelerationRate = [scrollBehavior decelerationRate];

  if (decelerationRate <= 1)
  {
    [(PXFeedViewScrollLayout *)self setScrollDecelerationRate:decelerationRate];
  }

  -[PXFeedViewScrollLayout setShowsVerticalScrollIndicator:](self, "setShowsVerticalScrollIndicator:", [spec wantsScrollIndicators]);
  -[PXFeedViewScrollLayout setShowsHorizontalScrollIndicator:](self, "setShowsHorizontalScrollIndicator:", [spec wantsScrollIndicators]);
  [spec verticalScrollIndicatorInsets];
  [(PXFeedViewScrollLayout *)self setVerticalScrollIndicatorInsets:?];
  [spec horizontalScrollIndicatorInsets];
  [(PXFeedViewScrollLayout *)self setHorizontalScrollIndicatorInsets:?];
}

- (void)_invalidateScrollParameters
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout _invalidateScrollParameters]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedViewScrollLayout.m" lineNumber:125 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXFeedViewScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentSize
{
  [(PXFeedViewScrollLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  viewModel = [(PXFeedViewScrollLayout *)self viewModel];
  spec = [viewModel spec];

  if (spec)
  {
    [spec sizeThatFits:{v4, v6}];
    v4 = v8;
    v6 = v9;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  [(PXFeedViewScrollLayout *)self setFixedWidth:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  [(PXFeedViewScrollLayout *)self setFixedHeight:v11];
}

- (void)_invalidateContentSize
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout _invalidateContentSize]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedViewScrollLayout.m" lineNumber:113 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXFeedViewScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAnchorForVisibleArea
{
  rootLayout = [(PXFeedViewScrollLayout *)self rootLayout];
  createAnchorForVisibleArea = [rootLayout createAnchorForVisibleArea];
  autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
}

- (void)_invalidateAnchorForVisibleArea
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout _invalidateAnchorForVisibleArea]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXFeedViewScrollLayout.m" lineNumber:104 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXFeedViewScrollLayout *)self setNeedsUpdate];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout update]"];
      [currentHandler handleFailureInFunction:v8 file:@"PXFeedViewScrollLayout.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 4;
    if ((needsUpdate & 4) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
      [(PXFeedViewScrollLayout *)self _updateAnchorForVisibleArea];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout update]"];
        [currentHandler2 handleFailureInFunction:v10 file:@"PXFeedViewScrollLayout.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v5)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFELL;
      [(PXFeedViewScrollLayout *)self _updateContentSize];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout update]"];
      [currentHandler3 handleFailureInFunction:v12 file:@"PXFeedViewScrollLayout.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v6 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXFeedViewScrollLayout *)self _updateScrollParameters];
      v6 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v6)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedViewScrollLayout update]"];
      [currentHandler4 handleFailureInFunction:v14 file:@"PXFeedViewScrollLayout.m" lineNumber:99 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v15.receiver = self;
  v15.super_class = PXFeedViewScrollLayout;
  [(PXFeedViewScrollLayout *)&v15 update];
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  feedContentLayout = [(PXFeedViewScrollLayout *)self feedContentLayout];
  v6 = [feedContentLayout itemPlacementControllerForItemReference:referenceCopy];

  return v6;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  contentLayout = [(PXFeedViewScrollLayout *)self contentLayout];
  if (contentLayout)
  {
    v9 = [(PXFeedViewScrollLayout *)self indexOfSublayout:contentLayout];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = referenceCopy;
  *objectReference = referenceCopy;

  return v9;
}

- (UIEdgeInsets)safeAreaInsets
{
  viewModel = [(PXFeedViewScrollLayout *)self viewModel];
  spec = [viewModel spec];
  if ([spec wantsSafeAreaInsets])
  {
    v17.receiver = self;
    v17.super_class = PXFeedViewScrollLayout;
    [(PXFeedViewScrollLayout *)&v17 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = *off_1E7721FA8;
    v8 = *(off_1E7721FA8 + 1);
    v10 = *(off_1E7721FA8 + 2);
    v12 = *(off_1E7721FA8 + 3);
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedViewScrollLayout;
  [(PXFeedViewScrollLayout *)&v3 referenceSizeDidChange];
  [(PXFeedViewScrollLayout *)self _invalidateContentSize];
}

- (PXFeedViewScrollLayout)initWithViewModel:(id)model displayingFeedContentLayout:(id)layout
{
  modelCopy = model;
  layoutCopy = layout;
  v12.receiver = self;
  v12.super_class = PXFeedViewScrollLayout;
  v9 = [(PXFeedViewScrollLayout *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_viewModel, model);
    [(PXFeedViewModel *)v10->_viewModel registerChangeObserver:v10 context:ViewModelObservationContext_152974];
    objc_storeStrong(&v10->_feedContentLayout, layout);
    [(PXFeedViewScrollLayout *)v10 setContentLayout:layoutCopy];
    [(PXFeedViewScrollLayout *)v10 setDelegate:v10];
    [(PXFeedViewScrollLayout *)v10 _invalidateScrollParameters];
  }

  return v10;
}

- (PXFeedViewScrollLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFeedViewScrollLayout.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXFeedViewScrollLayout init]"}];

  abort();
}

@end