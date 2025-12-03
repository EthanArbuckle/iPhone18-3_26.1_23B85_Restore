@interface PXStoryScrubberScrollLayout
- (CGPoint)_offsetFromFirstPageForScrollingToPosition:(id *)position visibleRect:(CGRect)rect;
- (PXStoryScrubberScrollLayout)init;
- (PXStoryScrubberScrollLayout)initWithViewModel:(id)model model:(id)a4;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)createAnchorForScrollingToPosition:(id *)position;
- (void)_invalidateContent;
- (void)_invalidateCurrentScrollPosition;
- (void)_invalidateDisplayedTimeline;
- (void)_invalidateModelScrubberPosition;
- (void)_invalidatePages;
- (void)_invalidatePresentedScrubberPosition;
- (void)_updateContent;
- (void)_updateCurrentScrollPosition;
- (void)_updateDisplayedTimeline;
- (void)_updateModelScrubberPosition;
- (void)_updatePages;
- (void)_updatePresentedScrubberPosition;
- (void)adjustScrollTargetContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity;
- (void)didUpdate;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)scrollLayoutDidEndScrolling:(id)scrolling;
- (void)scrollLayoutWillBeginScrolling:(id)scrolling;
- (void)setDisplayedTimeline:(id)timeline;
- (void)setNumberOfPages:(int64_t)pages;
- (void)setPresentedScrubberPosition:(id *)position;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXStoryScrubberScrollLayout

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (ModelObservationContext_132899 != context)
  {
    if (ViewModelObservationContext_132900 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberScrollLayout.m" lineNumber:330 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 0x20) != 0)
    {
      [(PXStoryScrubberScrollLayout *)self _invalidateContent];
      [(PXStoryScrubberScrollLayout *)self _invalidateCurrentScrollPosition];
    }

    if ((changeCopy & 0x40) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if ((changeCopy & 0x10) != 0)
  {
    [(PXStoryScrubberScrollLayout *)self _invalidateDisplayedTimeline];
    if ((changeCopy & 0x2000) == 0)
    {
LABEL_12:
      if ((changeCopy & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else if ((changeCopy & 0x2000) == 0)
  {
    goto LABEL_12;
  }

  [(PXStoryScrubberScrollLayout *)self _invalidatePages];
  if ((changeCopy & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  model = [(PXStoryScrubberScrollLayout *)self model];
  changesOrigins = [model changesOrigins];
  modelChangeOrigin = [(PXStoryScrubberScrollLayout *)self modelChangeOrigin];
  v12 = [changesOrigins containsObject:modelChangeOrigin];

  if ((v12 & 1) == 0)
  {
    [(PXStoryScrubberScrollLayout *)self _invalidateCurrentScrollPosition];
  }

LABEL_18:
  if ((changeCopy & 0x2000) != 0)
  {
LABEL_6:
    [(PXStoryScrubberScrollLayout *)self _invalidateContent];
  }

LABEL_7:
}

- (void)scrollLayoutDidEndScrolling:(id)scrolling
{
  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  [viewModel performChanges:&__block_literal_global_42];
}

- (void)scrollLayoutWillBeginScrolling:(id)scrolling
{
  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  [viewModel performChanges:&__block_literal_global_132908];
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = modf(index / 10.0, &__y);
  v5 = MEMORY[0x1E69DC888];

  return [v5 colorWithHue:v4 saturation:1.0 brightness:1.0 alpha:0.3];
}

- (void)adjustScrollTargetContentOffset:(CGPoint *)offset withVelocity:(CGPoint)velocity
{
  v5 = [(PXStoryScrubberScrollLayout *)self viewModel:velocity.x];
  viewLayoutSpec = [v5 viewLayoutSpec];

  [viewLayoutSpec scrubberRegularAssetSize];
  v7 = v6;
  [viewLayoutSpec scrubberRegularAssetPadding];
  offset->x = (v7 + v8) * round(offset->x / (v7 + v8));
}

- (void)_updateModelScrubberPosition
{
  v10 = 0uLL;
  v11 = 0;
  [(PXStoryScrubberScrollLayout *)self presentedScrubberPosition];
  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__PXStoryScrubberScrollLayout__updateModelScrubberPosition__block_invoke;
  v7[3] = &__block_descriptor_56_e35_v16__0___PXStoryMutableViewModel__8l;
  v8 = v10;
  v9 = v11;
  [viewModel performChanges:v7];

  model = [(PXStoryScrubberScrollLayout *)self model];
  v5 = [(PXStoryScrubberScrollLayout *)self modelChangeOrigin:MEMORY[0x1E69E9820]];
  [model performChanges:&v6 origin:v5];
}

uint64_t __59__PXStoryScrubberScrollLayout__updateModelScrubberPosition__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  return [a2 setScrubberPosition:&v3];
}

void __59__PXStoryScrubberScrollLayout__updateModelScrubberPosition__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) viewModel];
  v4 = [v3 isScrubbing];

  if (v4)
  {
    v5 = (a1 + 40);
    if (*(a1 + 48) > 0.5)
    {
      v5 = (a1 + 56);
    }

    [v6 skipToBeginningOfSegmentWithIdentifier:*v5];
  }
}

- (void)_invalidateModelScrubberPosition
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidateModelScrubberPosition]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:241 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePresentedScrubberPosition
{
  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  [viewLayoutSpec scrubberRegularAssetSize];
  [viewLayoutSpec scrubberRegularAssetPadding];
  [(PXStoryScrubberScrollLayout *)self visibleRect];
  CGRectGetMinX(v7);
  displayedTimeline = [(PXStoryScrubberScrollLayout *)self displayedTimeline];
  if ([displayedTimeline numberOfSegments] > 1)
  {
    PXClamp();
  }

  v6[0] = [displayedTimeline firstSegmentIdentifier];
  v6[1] = 0;
  v6[2] = 0;
  [(PXStoryScrubberScrollLayout *)self setPresentedScrubberPosition:v6];
}

- (void)_invalidatePresentedScrubberPosition
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidatePresentedScrubberPosition]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:217 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (CGPoint)_offsetFromFirstPageForScrollingToPosition:(id *)position visibleRect:(CGRect)rect
{
  v6 = [(PXStoryScrubberScrollLayout *)self displayedTimeline:rect.origin.x];
  v7 = MEMORY[0x1E695EFF8];
  v8 = *(MEMORY[0x1E695EFF8] + 8);
  v9 = [v6 indexOfSegmentWithIdentifier:position->var0];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = *v7;
  }

  else
  {
    v11 = v9;
    viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
    viewLayoutSpec = [viewModel viewLayoutSpec];

    [viewLayoutSpec scrubberRegularAssetSize];
    v15 = v14;
    [viewLayoutSpec scrubberRegularAssetPadding];
    v16 = position->var1 + v11;
    v18 = v15 + v17;
    [(PXStoryScrubberScrollLayout *)self safeAreaInsets];
    v10 = v19 + v16 * v18;
  }

  v20 = v10;
  v21 = v8;
  result.y = v21;
  result.x = v20;
  return result;
}

- (id)createAnchorForScrollingToPosition:(id *)position
{
  objc_initWeak(&location, self);
  v5 = [(PXStoryScrubberScrollLayout *)self spriteReferenceForSpriteIndex:self->_firstPageSpriteIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXStoryScrubberScrollLayout_createAnchorForScrollingToPosition___block_invoke;
  v8[3] = &unk_1E7742130;
  objc_copyWeak(&v9, &location);
  v10 = *position;
  v6 = [(PXStoryScrubberScrollLayout *)self createAnchorForScrollingSpriteForSpriteReference:v5 toScrollPosition:9 padding:v8 customOffset:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

double __66__PXStoryScrubberScrollLayout_createAnchorForScrollingToPosition___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  [WeakRetained _offsetFromFirstPageForScrollingToPosition:&v14 visibleRect:{a2, a3, a4, a5}];
  v12 = v11;

  return v12;
}

- (void)_updateCurrentScrollPosition
{
  v9 = 0uLL;
  v10 = 0;
  model = [(PXStoryScrubberScrollLayout *)self model];
  v4 = model;
  if (model)
  {
    [model currentScrollPosition];
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  if ([viewModel isScrubbing])
  {
    goto LABEL_11;
  }

  [(PXStoryScrubberScrollLayout *)self presentedScrubberPosition];
  if (v9 != v7 || *(&v9 + 1) != *(&v7 + 1))
  {

    goto LABEL_10;
  }

  if (v10 != v8)
  {
LABEL_10:
    v7 = v9;
    v8 = v10;
    viewModel = [(PXStoryScrubberScrollLayout *)self createAnchorForScrollingToPosition:&v7];
    autoInvalidate = [viewModel autoInvalidate];
LABEL_11:
  }
}

- (void)_invalidateCurrentScrollPosition
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidateCurrentScrollPosition]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:184 description:{@"invalidating %lu after it already has been updated", 16}];

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

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  viewModel = [(PXStoryScrubberScrollLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  viewModel2 = [(PXStoryScrubberScrollLayout *)self viewModel];
  mainModel = [viewModel2 mainModel];
  layoutSpec = [mainModel layoutSpec];

  [viewLayoutSpec scrubberRegularAssetSize];
  v9 = v8;
  v11 = v10;
  [layoutSpec scrubberCurrentAssetSize];
  v13 = v12;
  [viewLayoutSpec scrubberRegularAssetPadding];
  v15 = v14;
  [viewLayoutSpec scrubberCurrentAssetPadding];
  v17 = v16;
  localNumberOfSprites = [(PXStoryScrubberScrollLayout *)self localNumberOfSprites];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __45__PXStoryScrubberScrollLayout__updateContent__block_invoke;
  v20[3] = &unk_1E774B270;
  *&v20[5] = v9;
  v20[6] = v11;
  v20[4] = self;
  [(PXStoryScrubberScrollLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v20];
  v19 = v17 + v15 * -2.0 + ([(PXStoryScrubberScrollLayout *)self numberOfPages]- 1) * (v9 + v15);
  [(PXStoryScrubberScrollLayout *)self visibleRect];
  [(PXStoryScrubberScrollLayout *)self setContentSize:CGRectGetWidth(v21) + v19, v13];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:157 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePages
{
  displayedTimeline = [(PXStoryScrubberScrollLayout *)self displayedTimeline];
  -[PXStoryScrubberScrollLayout setNumberOfPages:](self, "setNumberOfPages:", [displayedTimeline numberOfSegments]);
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidatePages]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:149 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (void)_updateDisplayedTimeline
{
  model = [(PXStoryScrubberScrollLayout *)self model];
  timeline = [model timeline];
  [(PXStoryScrubberScrollLayout *)self setDisplayedTimeline:timeline];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout _invalidateDisplayedTimeline]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryScrubberScrollLayout.m" lineNumber:141 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryScrubberScrollLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryScrubberScrollLayout;
  [(PXStoryScrubberScrollLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberScrollLayout.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXStoryScrubberScrollLayout.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryScrubberScrollLayout *)self _updateDisplayedTimeline];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
        [currentHandler2 handleFailureInFunction:v13 file:@"PXStoryScrubberScrollLayout.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryScrubberScrollLayout *)self _updatePages];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler3 handleFailureInFunction:v15 file:@"PXStoryScrubberScrollLayout.m" lineNumber:119 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXStoryScrubberScrollLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler4 handleFailureInFunction:v17 file:@"PXStoryScrubberScrollLayout.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryScrubberScrollLayout *)self _updatePresentedScrubberPosition];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler5 handleFailureInFunction:v19 file:@"PXStoryScrubberScrollLayout.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v8 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXStoryScrubberScrollLayout *)self _updateCurrentScrollPosition];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler6 handleFailureInFunction:v21 file:@"PXStoryScrubberScrollLayout.m" lineNumber:128 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v9 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryScrubberScrollLayout *)self _updateModelScrubberPosition];
      v9 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v9)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout update]"];
      [currentHandler7 handleFailureInFunction:v23 file:@"PXStoryScrubberScrollLayout.m" lineNumber:131 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v24.receiver = self;
  v24.super_class = PXStoryScrubberScrollLayout;
  [(PXStoryScrubberScrollLayout *)&v24 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryScrubberScrollLayout;
  [(PXStoryScrubberScrollLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryScrubberScrollLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXStoryScrubberScrollLayout.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)setPresentedScrubberPosition:(id *)position
{
  if (self->_presentedScrubberPosition.firstSegmentIdentifier != position->var0 || (self->_presentedScrubberPosition.secondSegmentMixFactor == position->var1 ? (v3 = self->_presentedScrubberPosition.secondSegmentIdentifier == position->var2) : (v3 = 0), !v3))
  {
    v4 = *&position->var0;
    self->_presentedScrubberPosition.secondSegmentIdentifier = position->var2;
    *&self->_presentedScrubberPosition.firstSegmentIdentifier = v4;
    [(PXStoryScrubberScrollLayout *)self _invalidateModelScrubberPosition];
  }
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberScrollLayout;
  [(PXStoryScrubberScrollLayout *)&v3 visibleRectDidChange];
  [(PXStoryScrubberScrollLayout *)self _invalidatePresentedScrubberPosition];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryScrubberScrollLayout;
  [(PXStoryScrubberScrollLayout *)&v3 referenceSizeDidChange];
  [(PXStoryScrubberScrollLayout *)self _invalidateContent];
}

- (void)setNumberOfPages:(int64_t)pages
{
  if (self->_numberOfPages != pages)
  {
    self->_numberOfPages = pages;
    [(PXStoryScrubberScrollLayout *)self _invalidateContent];
  }
}

- (void)setDisplayedTimeline:(id)timeline
{
  timelineCopy = timeline;
  v6 = timelineCopy;
  if (self->_displayedTimeline != timelineCopy)
  {
    v8 = timelineCopy;
    v7 = [(PXStoryTimeline *)timelineCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedTimeline, timeline);
      [(PXStoryScrubberScrollLayout *)self _invalidatePages];
      [(PXStoryScrubberScrollLayout *)self _invalidateCurrentScrollPosition];
      v6 = v8;
    }
  }
}

- (PXStoryScrubberScrollLayout)initWithViewModel:(id)model model:(id)a4
{
  modelCopy = model;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PXStoryScrubberScrollLayout;
  v9 = [(PXStoryScrubberScrollLayout *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_model, a4);
    objc_storeStrong(&v10->_viewModel, model);
    [modelCopy registerChangeObserver:v10 context:ViewModelObservationContext_132900];
    [v8 registerChangeObserver:v10 context:ModelObservationContext_132899];
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 initWithFormat:@"changeOrigin-%@-%p", v13, v10];
    modelChangeOrigin = v10->_modelChangeOrigin;
    v10->_modelChangeOrigin = v14;

    [(PXStoryScrubberScrollLayout *)v10 setContentSource:v10];
    v10->_firstPageSpriteIndex = 0;
    [(PXStoryScrubberScrollLayout *)v10 addSpriteCount:1 withInitialState:0];
    [(PXStoryScrubberScrollLayout *)v10 _invalidateDisplayedTimeline];
  }

  return v10;
}

- (PXStoryScrubberScrollLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberScrollLayout.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXStoryScrubberScrollLayout init]"}];

  abort();
}

@end