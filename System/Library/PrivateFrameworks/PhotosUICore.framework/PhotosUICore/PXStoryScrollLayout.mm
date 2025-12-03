@interface PXStoryScrollLayout
- (PXStoryScrollLayout)init;
- (PXStoryScrollLayout)initWithModel:(id)model;
- (int64_t)scrollPositionComparedToEnd;
- (void)_invalidateContentScrollPositionWithReason:(unint64_t)reason;
- (void)_invalidateContentView;
- (void)_invalidatePostUpdateEntities:(unint64_t)entities;
- (void)_invalidateScrollDecelerationRate;
- (void)_invalidateScrollViewZPosition;
- (void)_invalidateWantsScrollView;
- (void)_updateContentScrollPosition;
- (void)_updateContentView;
- (void)_updateModelIsScrolling;
- (void)_updateModelScrollPosition;
- (void)_updateScrollDecelerationRate;
- (void)_updateScrollViewZPosition;
- (void)_updateWantsScrollView;
- (void)contentLayoutDidChange;
- (void)didUpdate;
- (void)isScrollingDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)scrollLayoutDidScroll:(id)scroll;
- (void)scrollLayoutWillBeginScrolling:(id)scrolling;
- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryScrollLayout

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ModelObservationContext_160593 == context)
  {
    if ((change & 0x10000) != 0)
    {
      [(PXStoryScrollLayout *)self _invalidateContentView];
    }

    if ((change & 0x10004) != 0)
    {
      model = [(PXStoryScrollLayout *)self model];
      changesOrigins = [model changesOrigins];
      modelChangeOrigin = [(PXStoryScrollLayout *)self modelChangeOrigin];
      v12 = [changesOrigins containsObject:modelChangeOrigin];

      if ((v12 & 1) == 0)
      {
        [(PXStoryScrollLayout *)self _invalidateContentScrollPositionWithReason:0];
      }
    }

    if ((change & 0x2000) != 0)
    {
      [(PXStoryScrollLayout *)self _invalidateScrollDecelerationRate];
    }

    if ((change & 0x8000000) != 0)
    {
      [(PXStoryScrollLayout *)self _invalidateWantsScrollView];
    }
  }

  else if (StyleManagerObservationContext_160594 == context)
  {
    if ((change & 0x100) != 0)
    {
      model2 = [(PXStoryScrollLayout *)self model];
      styleManager = [model2 styleManager];
      changesOrigin = [styleManager changesOrigin];

      if ((changesOrigin & 4) != 0)
      {
        [(PXStoryScrollLayout *)self _invalidateContentScrollPositionWithReason:0];
      }
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = PXStoryScrollLayout;
    [(PXStoryScrollLayout *)&v16 observable:observableCopy didChange:change context:context];
  }
}

- (void)scrollLayoutWillEndScrolling:(id)scrolling withVelocity:(CGPoint)velocity targetContentOffset:(CGPoint *)offset currentContentOffset:(CGPoint)contentOffset
{
  y = velocity.y;
  x = velocity.x;
  v10 = [(PXStoryScrollLayout *)self targetContentOffsetAdjuster:scrolling];
  [v10 adjustScrollTargetContentOffset:offset withVelocity:{x, y}];

  if ([(PXStoryScrollLayout *)self scrollBeganAtTimelineEnd]&& x > 0.0 && [(PXStoryScrollLayout *)self scrollPositionComparedToEnd]!= -1)
  {
    model = [(PXStoryScrollLayout *)self model];
    [model performChanges:&__block_literal_global_160597];
  }
}

- (void)scrollLayoutDidScroll:(id)scroll
{
  if ([(PXStoryScrollLayout *)self isScrolling])
  {

    [(PXStoryScrollLayout *)self _invalidateModelScrollPosition];
  }
}

- (void)scrollLayoutWillBeginScrolling:(id)scrolling
{
  v4 = [(PXStoryScrollLayout *)self scrollPositionComparedToEnd]== 0;

  [(PXStoryScrollLayout *)self setScrollBeganAtTimelineEnd:v4];
}

- (void)_updateModelScrollPosition
{
  contentLayout = [(PXStoryScrollLayout *)self contentLayout];
  model = [(PXStoryScrollLayout *)self model];
  v7 = MEMORY[0x1E69E9820];
  v8 = contentLayout;
  selfCopy = self;
  v5 = contentLayout;
  v6 = [(PXStoryScrollLayout *)self modelChangeOrigin:v7];
  [model performChanges:&v7 origin:v6];
}

void __49__PXStoryScrollLayout__updateModelScrollPosition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) pagedScrollContentLayout];

  if (v4 == v5)
  {
    v12 = [*(a1 + 40) pagedScrollContentLayout];
    v11 = v12;
    if (v12)
    {
      [v12 presentedScrollPosition];
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    [v3 scrollToPosition:v15];
    goto LABEL_8;
  }

  v6 = [*(a1 + 40) contentLayout];
  v7 = [*(a1 + 40) styleScrollContentLayout];

  if (v6 == v7)
  {
    v8 = [*(a1 + 40) styleScrollContentLayout];
    v9 = [*(a1 + 40) model];
    v10 = [v9 styleManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__PXStoryScrollLayout__updateModelScrollPosition__block_invoke_2;
    v13[3] = &unk_1E773EC68;
    v14 = v8;
    v11 = v8;
    [v10 performChanges:v13 origin:1];

LABEL_8:
  }
}

void __49__PXStoryScrollLayout__updateModelScrollPosition__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 focusedStyleIndex];
  [*(a1 + 32) focusOffset];
  [v6 setSelectionFocus:v5 + v4];
}

- (void)_updateModelIsScrolling
{
  model = [(PXStoryScrollLayout *)self model];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__PXStoryScrollLayout__updateModelIsScrolling__block_invoke;
  v5[3] = &unk_1E77485B0;
  v5[4] = self;
  modelChangeOrigin = [(PXStoryScrollLayout *)self modelChangeOrigin];
  [model performChanges:v5 origin:modelChangeOrigin];
}

void __46__PXStoryScrollLayout__updateModelIsScrolling__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setIsScrolling:{objc_msgSend(v2, "isScrolling")}];
}

- (void)_invalidatePostUpdateEntities:(unint64_t)entities
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (!entities || needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_11:
      p_postUpdateFlags->needsUpdate = needsUpdate | entities;
      return;
    }

LABEL_10:
    if ((self->_postUpdateFlags.updated & entities) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidatePostUpdateEntities:]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXStoryScrollLayout.m" lineNumber:254 description:{@"invalidating %lu after it already has been updated", entities}];

      abort();
    }

    goto LABEL_11;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_10;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = entities;
  if (!willPerformUpdate && !self->_isUpdating)
  {

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateWantsScrollView
{
  model = [(PXStoryScrollLayout *)self model];
  -[PXStoryScrollLayout setWantsScrollView:](self, "setWantsScrollView:", [model allowsScrolling]);
}

- (void)_invalidateWantsScrollView
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidateWantsScrollView]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrollLayout.m" lineNumber:246 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateScrollViewZPosition
{
  [(PXStoryScrollLayout *)self referenceDepth];
  *&v3 = v3;
  *&v3 = -*&v3;

  [(PXStoryScrollLayout *)self setScrollViewSpriteZPosition:v3];
}

- (void)_invalidateScrollViewZPosition
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidateScrollViewZPosition]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrollLayout.m" lineNumber:238 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateScrollDecelerationRate
{
  model = [(PXStoryScrollLayout *)self model];
  layoutSpec = [model layoutSpec];
  -[PXStoryScrollLayout setScrollDecelerationRate:](self, "setScrollDecelerationRate:", [layoutSpec scrollDecelerationRate]);
}

- (void)_invalidateScrollDecelerationRate
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidateScrollDecelerationRate]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrollLayout.m" lineNumber:230 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentScrollPosition
{
  model = [(PXStoryScrollLayout *)self model];
  viewMode = [model viewMode];

  if (viewMode != 3)
  {
    contentLayout = [(PXStoryScrollLayout *)self contentLayout];
    pagedScrollContentLayout = [(PXStoryScrollLayout *)self pagedScrollContentLayout];

    if (contentLayout == pagedScrollContentLayout)
    {
      if (!self->_scrollPositionUpdateReason)
      {
        pagedScrollContentLayout2 = [(PXStoryScrollLayout *)self pagedScrollContentLayout];
        model2 = [(PXStoryScrollLayout *)self model];
        model3 = model2;
        if (model2)
        {
          [model2 currentScrollPosition];
        }

        else
        {
          memset(v15, 0, sizeof(v15));
        }

        styleManager = [pagedScrollContentLayout2 createAnchorForScrollingToPosition:v15];
        autoInvalidate = [styleManager autoInvalidate];
        goto LABEL_10;
      }
    }

    else
    {
      styleScrollContentLayout = [(PXStoryScrollLayout *)self styleScrollContentLayout];

      if (contentLayout == styleScrollContentLayout)
      {
        pagedScrollContentLayout2 = [(PXStoryScrollLayout *)self styleScrollContentLayout];
        model3 = [(PXStoryScrollLayout *)self model];
        styleManager = [model3 styleManager];
        [styleManager selectionFocus];
        v11 = [pagedScrollContentLayout2 createAnchorForScrollingToStyleFocus:?];
        autoInvalidate2 = [v11 autoInvalidate];

LABEL_10:
      }
    }
  }
}

- (void)_invalidateContentScrollPositionWithReason:(unint64_t)reason
{
  [(PXStoryScrollLayout *)self stopScrolling];
  self->_scrollPositionUpdateReason = reason;
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
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidateContentScrollPositionWithReason:]"];
      [currentHandler handleFailureInFunction:v9 file:@"PXStoryScrollLayout.m" lineNumber:211 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentView
{
  model = [(PXStoryScrollLayout *)self model];
  viewMode = [model viewMode];

  styleScrollContentLayout = 0;
  if (viewMode > 3)
  {
    if (viewMode == 4)
    {
      styleScrollContentLayout = [(PXStoryScrollLayout *)self styleScrollContentLayout];
      goto LABEL_10;
    }

    if (viewMode != 5)
    {
      goto LABEL_10;
    }

LABEL_8:
    styleScrollContentLayout = [(PXStoryScrollLayout *)self pagedScrollContentLayout];
    goto LABEL_10;
  }

  if (viewMode == 1 || viewMode == 3)
  {
    goto LABEL_8;
  }

  if (!viewMode)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrollLayout.m" lineNumber:185 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_10:
  v8 = styleScrollContentLayout;
  [(PXStoryScrollLayout *)self setShowsVerticalScrollIndicator:0];
  [(PXStoryScrollLayout *)self setContentLayout:v8];
}

- (void)_invalidateContentView
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout _invalidateContentView]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrollLayout.m" lineNumber:177 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXStoryScrollLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrollLayout.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryScrollLayout.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  isUpdating = self->_isUpdating;
  self->_isUpdating = 1;
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler handleFailureInFunction:v14 file:@"PXStoryScrollLayout.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 4;
    if ((needsUpdate & 4) != 0)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryScrollLayout *)self _updateContentView];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
        [currentHandler2 handleFailureInFunction:v16 file:@"PXStoryScrollLayout.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 1uLL;
    if (v6)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryScrollLayout *)self _updateContentScrollPosition];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler3 handleFailureInFunction:v18 file:@"PXStoryScrollLayout.m" lineNumber:145 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v7 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryScrollLayout *)self _updateScrollDecelerationRate];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler4 handleFailureInFunction:v20 file:@"PXStoryScrollLayout.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v8 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryScrollLayout *)self _updateScrollViewZPosition];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler5 handleFailureInFunction:v22 file:@"PXStoryScrollLayout.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v9 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryScrollLayout *)self _updateWantsScrollView];
      v9 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v9)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler6 handleFailureInFunction:v24 file:@"PXStoryScrollLayout.m" lineNumber:154 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v31.receiver = self;
  v31.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v31 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v11 = self->_postUpdateFlags.needsUpdate;
  if (v11)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler7 handleFailureInFunction:v26 file:@"PXStoryScrollLayout.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v11 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1024;
    if ((v11 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v11 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryScrollLayout *)self _updateModelIsScrolling];
      if (!self->_postUpdateFlags.isPerformingUpdate)
      {
        currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
        v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
        [currentHandler8 handleFailureInFunction:v28 file:@"PXStoryScrollLayout.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
      }
    }

    v12 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800uLL;
    if ((v12 & 0x800) != 0)
    {
      p_postUpdateFlags->needsUpdate = v12 & 0xFFFFFFFFFFFFF7FFLL;
      [(PXStoryScrollLayout *)self _updateModelScrollPosition];
      v12 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v12)
    {
      currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout update]"];
      [currentHandler9 handleFailureInFunction:v30 file:@"PXStoryScrollLayout.m" lineNumber:165 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }

  self->_isUpdating = isUpdating;
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrollLayout.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrollLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXStoryScrollLayout.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (int64_t)scrollPositionComparedToEnd
{
  model = [(PXStoryScrollLayout *)self model];
  if ([model viewMode] != 1)
  {
    v9 = -1;
    goto LABEL_18;
  }

  pagedScrollContentLayout = [(PXStoryScrollLayout *)self pagedScrollContentLayout];
  v5 = pagedScrollContentLayout;
  if (!pagedScrollContentLayout)
  {
    v16 = 0;
    v6 = 0.0;
    v18 = 0;
    goto LABEL_7;
  }

  [pagedScrollContentLayout presentedScrollPosition];
  v6 = v17;
  if (v17 <= 0.5)
  {
LABEL_7:
    v7 = v16;
    v8 = v18;
    goto LABEL_8;
  }

  v6 = 1.0 - v17;
  v7 = v18;
  v8 = v16;
LABEL_8:

  timeline = [model timeline];
  v11 = timeline;
  if (v6 > 0.5)
  {
    v7 = v8;
  }

  if (v7 == [timeline lastSegmentIdentifier])
  {
    v12 = 1.0 - v6;
    if (v6 <= 0.5)
    {
      v12 = v6;
    }

    if (v12 == 0.0 || [v11 numberOfSegments] < 2)
    {
      v9 = 0;
    }

    else
    {
      v14 = [v11 identifierForSegmentAtIndex:{objc_msgSend(v11, "numberOfSegments") - 2}];
      if (v6 < 0.0 && v8 == v14)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }
    }
  }

  else
  {
    v9 = -1;
  }

LABEL_18:
  return v9;
}

- (void)contentLayoutDidChange
{
  v6.receiver = self;
  v6.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v6 contentLayoutDidChange];
  [(PXStoryScrollLayout *)self _invalidateScrollDecelerationRate];
  contentLayout = [(PXStoryScrollLayout *)self contentLayout];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    contentLayout2 = [(PXStoryScrollLayout *)self contentLayout];
    [(PXStoryScrollLayout *)self setTargetContentOffsetAdjuster:contentLayout2];
  }

  else
  {
    [(PXStoryScrollLayout *)self setTargetContentOffsetAdjuster:0];
  }
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v3 referenceSizeDidChange];
  [(PXStoryScrollLayout *)self _invalidateScrollViewZPosition];
}

- (void)isScrollingDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrollLayout;
  [(PXStoryScrollLayout *)&v3 isScrollingDidChange];
  [(PXStoryScrollLayout *)self _invalidateModelIsScrolling];
}

- (PXStoryScrollLayout)initWithModel:(id)model
{
  modelCopy = model;
  v19.receiver = self;
  v19.super_class = PXStoryScrollLayout;
  v6 = [(PXStoryScrollLayout *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, model);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_160593];
    styleManager = [(PXStoryModel *)v7->_model styleManager];
    [styleManager registerChangeObserver:v7 context:StyleManagerObservationContext_160594];

    v9 = [[PXStoryPagedScrollContentLayout alloc] initWithModel:v7->_model];
    pagedScrollContentLayout = v7->_pagedScrollContentLayout;
    v7->_pagedScrollContentLayout = v9;

    v11 = [[PXStoryStyleScrollContentLayout alloc] initWithModel:v7->_model];
    styleScrollContentLayout = v7->_styleScrollContentLayout;
    v7->_styleScrollContentLayout = v11;

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 initWithFormat:@"changeOrigin-%@-%p", v15, v7];
    modelChangeOrigin = v7->_modelChangeOrigin;
    v7->_modelChangeOrigin = v16;

    [(PXStoryScrollLayout *)v7 setShowsHorizontalScrollIndicator:0];
    [(PXStoryScrollLayout *)v7 setShowsVerticalScrollIndicator:0];
    [(PXStoryScrollLayout *)v7 setContentLayout:v7->_pagedScrollContentLayout];
    [(PXStoryScrollLayout *)v7 setDelegate:v7];
    [(PXStoryScrollLayout *)v7 _invalidateContentView];
    [(PXStoryScrollLayout *)v7 _invalidateScrollDecelerationRate];
    [(PXStoryScrollLayout *)v7 _invalidateWantsScrollView];
  }

  return v7;
}

- (PXStoryScrollLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrollLayout.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXStoryScrollLayout init]"}];

  abort();
}

@end