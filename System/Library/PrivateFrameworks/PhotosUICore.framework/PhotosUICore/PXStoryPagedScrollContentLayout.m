@interface PXStoryPagedScrollContentLayout
- (CGPoint)_offsetFromFirstPageForScrollingToPosition:(id *)a3 visibleRect:(CGRect)a4;
- (PXStoryPagedScrollContentLayout)init;
- (PXStoryPagedScrollContentLayout)initWithModel:(id)a3;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)createAnchorForScrollingToPosition:(id *)a3;
- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_invalidateContent;
- (void)_invalidateDisplayedTimeline;
- (void)_invalidatePages;
- (void)_invalidatePresentedScrollPosition;
- (void)_updateContent;
- (void)_updateDisplayedTimeline;
- (void)_updatePages;
- (void)_updatePresentedScrollPosition;
- (void)adjustScrollTargetContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)setDisplayedTimeline:(id)a3;
- (void)setInterpageSpacing:(double)a3;
- (void)setNumberOfPages:(int64_t)a3;
- (void)setPresentedScrollPosition:(id *)a3;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXStoryPagedScrollContentLayout

- (void)setPresentedScrollPosition:(id *)a3
{
  var2 = a3->var2;
  *&self->_presentedScrollPosition.firstSegmentIdentifier = *&a3->var0;
  self->_presentedScrollPosition.secondSegmentIdentifier = var2;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ModelObservationContext_193289 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryPagedScrollContentLayout.m" lineNumber:258 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((v6 & 0x10) != 0)
  {
    [(PXStoryPagedScrollContentLayout *)self _invalidateDisplayedTimeline];
    v9 = v11;
  }

  if ((v6 & 0x2000) != 0)
  {
    [(PXStoryPagedScrollContentLayout *)self _invalidatePages];
    v9 = v11;
  }
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = modf(a3 / 10.0, &__y);
  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithHue:v4 saturation:1.0 brightness:1.0 alpha:0.3];
}

- (void)_updatePresentedScrollPosition
{
  [(PXStoryPagedScrollContentLayout *)self visibleRect];
  CGRectGetMinX(v5);
  [(PXStoryPagedScrollContentLayout *)self presentedPageWidth];
  [(PXStoryPagedScrollContentLayout *)self interpageSpacing];
  v3 = [(PXStoryPagedScrollContentLayout *)self displayedTimeline];
  if ([v3 numberOfSegments] > 1)
  {
    PXClamp();
  }

  v4[0] = [v3 firstSegmentIdentifier];
  v4[1] = 0;
  v4[2] = 0;
  [(PXStoryPagedScrollContentLayout *)self setPresentedScrollPosition:v4];
}

- (void)_invalidatePresentedScrollPosition
{
  if (self->_postUpdateFlags.isPerformingUpdate && (self->_postUpdateFlags.updated & 0x400) != 0)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout _invalidatePresentedScrollPosition]"];
    [v2 handleFailureInFunction:v3 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:218 description:{@"invalidating %lu after it already has been updated", 1024}];

    abort();
  }

  self->_postUpdateFlags.needsUpdate |= 0x400uLL;
}

- (void)_updateContent
{
  [(PXStoryPagedScrollContentLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  [(PXStoryPagedScrollContentLayout *)self interpageSpacing];
  v8 = v7;
  v9 = [(PXStoryPagedScrollContentLayout *)self localNumberOfSprites];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__PXStoryPagedScrollContentLayout__updateContent__block_invoke;
  v10[3] = &unk_1E774B270;
  *&v10[5] = v4;
  *&v10[6] = v6;
  v10[4] = self;
  [(PXStoryPagedScrollContentLayout *)self modifySpritesInRange:v9 << 32 state:v10];
  [(PXStoryPagedScrollContentLayout *)self setPresentedPageWidth:v4];
  [(PXStoryPagedScrollContentLayout *)self setContentSize:-(v8 - [(PXStoryPagedScrollContentLayout *)self numberOfPages]* (v4 + v8)), v6];
}

- (void)_invalidateContent
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:200 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXStoryPagedScrollContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePages
{
  v3 = [(PXStoryPagedScrollContentLayout *)self displayedTimeline];
  -[PXStoryPagedScrollContentLayout setNumberOfPages:](self, "setNumberOfPages:", [v3 numberOfSegments]);

  v5 = [(PXStoryPagedScrollContentLayout *)self model];
  v4 = [v5 layoutSpec];
  [v4 interpageSpacing];
  [(PXStoryPagedScrollContentLayout *)self setInterpageSpacing:?];
}

- (void)_invalidatePages
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout _invalidatePages]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:191 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXStoryPagedScrollContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateDisplayedTimeline
{
  v4 = [(PXStoryPagedScrollContentLayout *)self model];
  v3 = [v4 timeline];
  [(PXStoryPagedScrollContentLayout *)self setDisplayedTimeline:v3];
}

- (void)_invalidateDisplayedTimeline
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout _invalidateDisplayedTimeline]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:183 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryPagedScrollContentLayout *)self setNeedsUpdate];
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryPagedScrollContentLayout *)self _updateDisplayedTimeline];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v11 = [MEMORY[0x1E696AAA8] currentHandler];
        v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
        [v11 handleFailureInFunction:v12 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryPagedScrollContentLayout *)self _updatePages];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryPagedScrollContentLayout *)self _updateContent];
      v6 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v6)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
      [v15 handleFailureInFunction:v16 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:173 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXStoryPagedScrollContentLayout;
  [(PXStoryPagedScrollContentLayout *)&v21 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v8 = self->_postUpdateFlags.needsUpdate;
  if (v8)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
      [v17 handleFailureInFunction:v18 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:175 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v8 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1024;
    if ((v8 & 0x400) != 0)
    {
      p_postUpdateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFBFFLL;
      [(PXStoryPagedScrollContentLayout *)self _updatePresentedScrollPosition];
      v8 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v8)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryPagedScrollContentLayout update]"];
      [v19 handleFailureInFunction:v20 file:@"PXStoryPagedScrollContentLayout.m" lineNumber:179 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (unsigned)spriteIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v7 = a3;
  v8 = [(PXStoryPagedScrollContentLayout *)self displayedTimeline];
  objc_opt_class();
  v9 = -1;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
  {
    v15 = 0;
    v16 = 0.0;
    v17 = 0;
    if (v7)
    {
      [v7 scrollPosition];
      v10 = v16;
    }

    else
    {
      v10 = 0.0;
    }

    v11 = 1.0 - v10;
    if (v10 <= 0.5)
    {
      v11 = v10;
    }

    if (v11 != 0.0)
    {
      PXAssertGetLog();
    }

    v12 = &v15;
    if (v10 > 0.5)
    {
      v12 = &v17;
    }

    v9 = [v8 indexOfSegmentWithIdentifier:*v12];
  }

  v13 = v7;
  *a5 = v7;

  return v9;
}

- (void)adjustScrollTargetContentOffset:(CGPoint *)a3 withVelocity:(CGPoint)a4
{
  [(PXStoryPagedScrollContentLayout *)self presentedPageWidth];
  [(PXStoryPagedScrollContentLayout *)self interpageSpacing];
  PXFloatRoundInDirection();
}

- (CGPoint)_offsetFromFirstPageForScrollingToPosition:(id *)a3 visibleRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = MEMORY[0x1E695EFF8];
  v11 = [(PXStoryPagedScrollContentLayout *)self displayedTimeline];
  var1 = a3->var1;
  v13 = 1.0 - var1;
  if (var1 <= 0.5)
  {
    v13 = a3->var1;
  }

  if (v13 != 0.0)
  {
    PXAssertGetLog();
  }

  v14 = v10[1];
  p_var2 = &a3->var2;
  if (var1 <= 0.5)
  {
    p_var2 = a3;
  }

  v16 = [v11 indexOfSegmentWithIdentifier:p_var2->var0];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = *v10;
  }

  else
  {
    v18 = v16;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    v19 = CGRectGetWidth(v26);
    [(PXStoryPagedScrollContentLayout *)self interpageSpacing];
    v21 = v19 + v20;
    [(PXStoryPagedScrollContentLayout *)self safeAreaInsets];
    v17 = v22 + v18 * v21;
  }

  v23 = v17;
  v24 = v14;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)createAnchorForScrollingToPosition:(id *)a3
{
  objc_initWeak(&location, self);
  v5 = [(PXStoryPagedScrollContentLayout *)self spriteReferenceForSpriteIndex:self->_firstPageSpriteIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__PXStoryPagedScrollContentLayout_createAnchorForScrollingToPosition___block_invoke;
  v8[3] = &unk_1E7742130;
  objc_copyWeak(&v9, &location);
  v10 = *a3;
  v6 = [(PXStoryPagedScrollContentLayout *)self createAnchorForScrollingSpriteForSpriteReference:v5 toScrollPosition:8 padding:v8 customOffset:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

double __70__PXStoryPagedScrollContentLayout_createAnchorForScrollingToPosition___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  [WeakRetained _offsetFromFirstPageForScrollingToPosition:&v14 visibleRect:{a2, a3, a4, a5}];
  v12 = v11;

  return v12;
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryPagedScrollContentLayout;
  [(PXStoryPagedScrollContentLayout *)&v3 visibleRectDidChange];
  [(PXStoryPagedScrollContentLayout *)self _invalidatePresentedScrollPosition];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryPagedScrollContentLayout;
  [(PXStoryPagedScrollContentLayout *)&v3 referenceSizeDidChange];
  [(PXStoryPagedScrollContentLayout *)self _invalidateContent];
}

- (void)setInterpageSpacing:(double)a3
{
  if (self->_interpageSpacing != a3)
  {
    self->_interpageSpacing = a3;
    [(PXStoryPagedScrollContentLayout *)self _invalidateContent];
  }
}

- (void)setNumberOfPages:(int64_t)a3
{
  if (self->_numberOfPages != a3)
  {
    self->_numberOfPages = a3;
    [(PXStoryPagedScrollContentLayout *)self _invalidateContent];
  }
}

- (void)setDisplayedTimeline:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_displayedTimeline != v5)
  {
    v8 = v5;
    v7 = [(PXStoryTimeline *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedTimeline, a3);
      [(PXStoryPagedScrollContentLayout *)self _invalidatePages];
      v6 = v8;
    }
  }
}

- (PXStoryPagedScrollContentLayout)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryPagedScrollContentLayout;
  v6 = [(PXStoryPagedScrollContentLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    [(PXStoryModel *)v7->_model registerChangeObserver:v7 context:ModelObservationContext_193289];
    [(PXStoryPagedScrollContentLayout *)v7 setContentSource:v7];
    v7->_firstPageSpriteIndex = 0;
    [(PXStoryPagedScrollContentLayout *)v7 addSpriteCount:1 withInitialState:0];
    [(PXStoryPagedScrollContentLayout *)v7 _invalidateDisplayedTimeline];
  }

  return v7;
}

- (PXStoryPagedScrollContentLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryPagedScrollContentLayout.m" lineNumber:55 description:{@"%s is not available as initializer", "-[PXStoryPagedScrollContentLayout init]"}];

  abort();
}

@end