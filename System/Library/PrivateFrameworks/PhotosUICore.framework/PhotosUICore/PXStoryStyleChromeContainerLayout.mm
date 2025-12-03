@interface PXStoryStyleChromeContainerLayout
- (PXStoryStyleChromeContainerLayout)init;
- (PXStoryStyleChromeContainerLayout)initWithViewModel:(id)model;
- (void)_invalidateResourcePreloading;
- (void)_invalidateStoryModel;
- (void)_invalidateStyleLayouts;
- (void)_invalidateStyleLayoutsContent;
- (void)_invalidateStyleManager;
- (void)_invalidateVisibilityAnimator;
- (void)_updateResourcePreloading;
- (void)_updateStoryModel;
- (void)_updateStyleLayouts;
- (void)_updateStyleLayoutsContent;
- (void)_updateStyleManager;
- (void)_updateVisibilityAnimator:(BOOL)animator;
- (void)dealloc;
- (void)displayScaleDidChange;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceDepthDidChange;
- (void)referenceSizeDidChange;
- (void)setArtworkPreloadingRecords:(id)records;
- (void)setStoryModel:(id)model;
- (void)setStyleManager:(id)manager;
- (void)update;
@end

@implementation PXStoryStyleChromeContainerLayout

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (StoryViewModelObservationContext == context)
  {
    v11 = observableCopy;
    if ((changeCopy & 0x40) != 0)
    {
      [(PXStoryStyleChromeContainerLayout *)self _invalidateStoryModel];
      observableCopy = v11;
      if ((changeCopy & 0x20) == 0)
      {
LABEL_9:
        if ((changeCopy & 0x8000) == 0)
        {
          goto LABEL_21;
        }

LABEL_15:
        [(PXStoryStyleChromeContainerLayout *)self _invalidateVisibilityAnimator];
LABEL_20:
        observableCopy = v11;
        goto LABEL_21;
      }
    }

    else if ((changeCopy & 0x20) == 0)
    {
      goto LABEL_9;
    }

    [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayoutsContent];
    [(PXStoryStyleChromeContainerLayout *)self _invalidateResourcePreloading];
    observableCopy = v11;
    if ((changeCopy & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (StoryModelObservationContext_218526 == context)
  {
    if ((changeCopy & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    v11 = observableCopy;
    goto LABEL_15;
  }

  if (StyleManagerObservationContext_218527 == context)
  {
    v11 = observableCopy;
    if ((changeCopy & 0x20) != 0)
    {
      [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayouts];
      [(PXStoryStyleChromeContainerLayout *)self _invalidateResourcePreloading];
      observableCopy = v11;
    }

    if ((changeCopy & 0x100) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (VisibilityAnimatorObservationContext != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:307 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if ((changeCopy & 2) != 0)
    {
      v11 = observableCopy;
LABEL_19:
      [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayoutsContent];
      goto LABEL_20;
    }
  }

LABEL_21:
}

- (void)_updateResourcePreloading
{
  styleManager = [(PXStoryStyleChromeContainerLayout *)self styleManager];
  selectionDataSource = [styleManager selectionDataSource];

  viewModel = [(PXStoryStyleChromeContainerLayout *)self viewModel];
  viewLayoutSpec = [viewModel viewLayoutSpec];

  [(PXStoryStyleChromeContainerLayout *)self displayScale];
  v7 = v6;
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(selectionDataSource, "numberOfStyles")}];
  if ([selectionDataSource numberOfStyles] >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [selectionDataSource styleInfoAtIndex:v9];
      v11 = [[_PXStoryStyleChromePreloadingRecord alloc] initWithDisplayScale:v10 styleInfo:viewLayoutSpec viewLayoutSpec:v7];
      [v8 addObject:v11];

      ++v9;
    }

    while (v9 < [selectionDataSource numberOfStyles]);
  }

  v12 = [v8 copy];
  [(PXStoryStyleChromeContainerLayout *)self setArtworkPreloadingRecords:v12];
}

- (void)_invalidateResourcePreloading
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateResourcePreloading]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:261 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
  }
}

- (void)_updateStyleLayoutsContent
{
  [(PXStoryStyleChromeContainerLayout *)self referenceSize];
  [(PXStoryStyleChromeContainerLayout *)self storyModel];
  layoutSpec = [objc_claimAutoreleasedReturnValue() layoutSpec];
  viewModel = [(PXStoryStyleChromeContainerLayout *)self viewModel];
  [viewModel viewLayoutSpec];
  objc_claimAutoreleasedReturnValue();

  [layoutSpec styleSwitcherViewportSpacing];
  [layoutSpec styleSwitcherChromeInset];
  PXEdgeInsetsInsetRect();
}

uint64_t __63__PXStoryStyleChromeContainerLayout__updateStyleLayoutsContent__block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) >= 1)
  {
    v4 = 0;
    v5 = a2 + 16;
    do
    {
      *(v5 - 16) = CGRectOffset(*(a1 + 64), *(a1 + 48) * (v4 - *(a1 + 56)), 0.0);
      v5 += 32;
      ++v4;
    }

    while (*(a1 + 40) > v4);
  }

  v6 = *(a1 + 32);
  v7 = v6[128];
  v8 = v6[129];

  return [v6 setFrames:a2 forSublayoutsInRange:{v7, v8}];
}

void __63__PXStoryStyleChromeContainerLayout__updateStyleLayoutsContent__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 56);
  v6 = a3;
  [v6 setAlpha:v5];
  v7 = [*(a1 + 32) styleInfoAtIndex:a2];
  [v6 setStyleInfo:v7];

  [v6 setViewLayoutSpec:*(a1 + 40)];
  [v6 setReferenceDepth:*(a1 + 64)];
  [v6 setReferenceSize:{*(a1 + 88), *(a1 + 96)}];
  v8 = [*(a1 + 48) colorGradingRepository];
  [v6 setColorGradingRepository:v8];
}

- (void)_invalidateStyleLayoutsContent
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateStyleLayoutsContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:219 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
  }
}

- (void)_updateVisibilityAnimator:(BOOL)animator
{
  animatorCopy = animator;
  storyModel = [(PXStoryStyleChromeContainerLayout *)self storyModel];
  v6 = 0.0;
  if ([storyModel viewMode] == 4)
  {
    viewModel = [(PXStoryStyleChromeContainerLayout *)self viewModel];
    v6 = ([viewModel wantsRelatedOverlayVisible] ^ 1);
  }

  visibilityAnimator = [(PXStoryStyleChromeContainerLayout *)self visibilityAnimator];
  v9 = visibilityAnimator;
  if (animatorCopy)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__PXStoryStyleChromeContainerLayout__updateVisibilityAnimator___block_invoke;
    v11[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v11[4] = v6;
    [visibilityAnimator performChangesUsingDefaultOpacityAnimation:v11];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__PXStoryStyleChromeContainerLayout__updateVisibilityAnimator___block_invoke_2;
    v10[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v10[4] = v6;
    [visibilityAnimator performChangesWithoutAnimation:v10];
  }
}

- (void)_invalidateVisibilityAnimator
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateVisibilityAnimator]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:201 description:{@"invalidating %lu after it already has been updated", 32}];

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

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
  }
}

- (void)_updateStyleLayouts
{
  p_styleSublayoutRange = &self->_styleSublayoutRange;
  if (self->_styleSublayoutRange.length)
  {
    [(PXGAbsoluteCompositeLayout *)self removeSublayoutsInRange:p_styleSublayoutRange->location];
  }

  styleManager = [(PXStoryStyleChromeContainerLayout *)self styleManager];
  selectionDataSource = [styleManager selectionDataSource];
  p_styleSublayoutRange->length = [selectionDataSource numberOfStyles];

  if (p_styleSublayoutRange->length)
  {
    v6 = 0;
    do
    {
      v7 = [PXStoryStyleChromeLayout alloc];
      viewModel = [(PXStoryStyleChromeContainerLayout *)self viewModel];
      v9 = [(PXStoryStyleChromeLayout *)v7 initWithViewModel:viewModel];
      [(PXStoryStyleChromeContainerLayout *)self addSublayout:v9];

      ++v6;
    }

    while (p_styleSublayoutRange->length > v6);
  }

  [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayoutsContent];
}

- (void)_invalidateStyleLayouts
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateStyleLayouts]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:186 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
  }
}

- (void)_updateStyleManager
{
  storyModel = [(PXStoryStyleChromeContainerLayout *)self storyModel];
  styleManager = [storyModel styleManager];
  [(PXStoryStyleChromeContainerLayout *)self setStyleManager:styleManager];
}

- (void)_invalidateStyleManager
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateStyleManager]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:178 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
  }
}

- (void)_updateStoryModel
{
  viewModel = [(PXStoryStyleChromeContainerLayout *)self viewModel];
  mainModel = [viewModel mainModel];
  [(PXStoryStyleChromeContainerLayout *)self setStoryModel:mainModel];
}

- (void)_invalidateStoryModel
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout _invalidateStoryModel]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:170 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryStyleChromeContainerLayout *)self setNeedsUpdate];
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
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:146 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryStyleChromeContainerLayout *)self _updateStoryModel];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
        [currentHandler2 handleFailureInFunction:v13 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:150 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXStoryStyleChromeContainerLayout *)self _updateStyleManager];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler3 handleFailureInFunction:v15 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x80uLL;
    if ((v6 & 0x80) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFF7FLL;
      [(PXStoryStyleChromeContainerLayout *)self _updateResourcePreloading];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler4 handleFailureInFunction:v17 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:156 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXStoryStyleChromeContainerLayout *)self _updateStyleLayouts];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler5 handleFailureInFunction:v19 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x20uLL;
    if ((v8 & 0x20) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFDFLL;
      [(PXStoryStyleChromeContainerLayout *)self _updateVisibilityAnimator:1];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler6 handleFailureInFunction:v21 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v9 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x40uLL;
    if ((v9 & 0x40) != 0)
    {
      p_updateFlags->needsUpdate = v9 & 0xFFFFFFFFFFFFFFBFLL;
      [(PXStoryStyleChromeContainerLayout *)self _updateStyleLayoutsContent];
      v9 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v9)
    {
      currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleChromeContainerLayout update]"];
      [currentHandler7 handleFailureInFunction:v23 file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:165 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v24.receiver = self;
  v24.super_class = PXStoryStyleChromeContainerLayout;
  [(PXGCompositeLayout *)&v24 update];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeContainerLayout;
  [(PXGCompositeLayout *)&v3 displayScaleDidChange];
  [(PXStoryStyleChromeContainerLayout *)self _invalidateResourcePreloading];
}

- (void)referenceDepthDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeContainerLayout;
  [(PXGCompositeLayout *)&v3 referenceDepthDidChange];
  [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayoutsContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeContainerLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayoutsContent];
}

- (void)dealloc
{
  [(NSSet *)self->_artworkPreloadingRecords enumerateObjectsUsingBlock:&__block_literal_global_13_218590];
  v3.receiver = self;
  v3.super_class = PXStoryStyleChromeContainerLayout;
  [(PXGCompositeLayout *)&v3 dealloc];
}

void __44__PXStoryStyleChromeContainerLayout_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 styleInfo];
  v3 = [v2 viewLayoutSpec];
  [v2 displayScale];
  v5 = v4;

  [PXStoryStyleChromeLayout stopCachingResourcesForStyleInfo:v6 viewLayoutSpec:v3 displayScale:v5];
}

- (void)setArtworkPreloadingRecords:(id)records
{
  recordsCopy = records;
  v5 = recordsCopy;
  if (self->_artworkPreloadingRecords != recordsCopy && ([(NSSet *)recordsCopy isEqual:?]& 1) == 0)
  {
    v6 = self->_artworkPreloadingRecords;
    v7 = [(NSSet *)v5 copy];
    artworkPreloadingRecords = self->_artworkPreloadingRecords;
    self->_artworkPreloadingRecords = v7;

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __65__PXStoryStyleChromeContainerLayout_setArtworkPreloadingRecords___block_invoke;
    v18[3] = &unk_1E7746DA0;
    v9 = v5;
    v19 = v9;
    v10 = [(NSSet *)v6 objectsPassingTest:v18];
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __65__PXStoryStyleChromeContainerLayout_setArtworkPreloadingRecords___block_invoke_2;
    v16 = &unk_1E7746DA0;
    v17 = v6;
    v11 = v6;
    v12 = [(NSSet *)v9 objectsPassingTest:&v13];
    [v12 enumerateObjectsUsingBlock:{&__block_literal_global_218594, v13, v14, v15, v16}];
    [v10 enumerateObjectsUsingBlock:&__block_literal_global_11_218595];
  }
}

void __65__PXStoryStyleChromeContainerLayout_setArtworkPreloadingRecords___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 styleInfo];
  v3 = [v2 viewLayoutSpec];
  [v2 displayScale];
  v5 = v4;

  [PXStoryStyleChromeLayout stopCachingResourcesForStyleInfo:v6 viewLayoutSpec:v3 displayScale:v5];
}

void __65__PXStoryStyleChromeContainerLayout_setArtworkPreloadingRecords___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v6 = [v2 styleInfo];
  v3 = [v2 viewLayoutSpec];
  [v2 displayScale];
  v5 = v4;

  [PXStoryStyleChromeLayout startCachingResourcesForStyleInfo:v6 viewLayoutSpec:v3 displayScale:v5];
}

- (void)setStyleManager:(id)manager
{
  managerCopy = manager;
  v6 = managerCopy;
  if (self->_styleManager != managerCopy)
  {
    v8 = managerCopy;
    v7 = [(PXStoryStyleManager *)managerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryStyleManager *)self->_styleManager unregisterChangeObserver:self context:StyleManagerObservationContext_218527];
      objc_storeStrong(&self->_styleManager, manager);
      [(PXStoryStyleManager *)self->_styleManager registerChangeObserver:self context:StyleManagerObservationContext_218527];
      [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleLayouts];
      v6 = v8;
    }
  }
}

- (void)setStoryModel:(id)model
{
  modelCopy = model;
  v6 = modelCopy;
  if (self->_storyModel != modelCopy)
  {
    v8 = modelCopy;
    v7 = [(PXStoryModel *)modelCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      [(PXStoryModel *)self->_storyModel unregisterChangeObserver:self context:StoryModelObservationContext_218526];
      objc_storeStrong(&self->_storyModel, model);
      [(PXStoryModel *)self->_storyModel registerChangeObserver:self context:StoryModelObservationContext_218526];
      [(PXStoryStyleChromeContainerLayout *)self _invalidateStyleManager];
      [(PXStoryStyleChromeContainerLayout *)self _invalidateVisibilityAnimator];
      v6 = v8;
    }
  }
}

- (PXStoryStyleChromeContainerLayout)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryStyleChromeContainerLayout.m" lineNumber:76 description:{@"%s is not available as initializer", "-[PXStoryStyleChromeContainerLayout init]"}];

  abort();
}

- (PXStoryStyleChromeContainerLayout)initWithViewModel:(id)model
{
  modelCopy = model;
  v15.receiver = self;
  v15.super_class = PXStoryStyleChromeContainerLayout;
  v6 = [(PXGAbsoluteCompositeLayout *)&v15 init];
  if (v6)
  {
    v7 = [[off_1E7721500 alloc] initWithElementSize:32];
    framesArrayStore = v6->_framesArrayStore;
    v6->_framesArrayStore = v7;

    objc_storeStrong(&v6->_viewModel, model);
    [(PXStoryViewModel *)v6->_viewModel registerChangeObserver:v6 context:StoryViewModelObservationContext];
    v9 = [[off_1E77217D0 alloc] initWithValue:0.0];
    visibilityAnimator = v6->_visibilityAnimator;
    v6->_visibilityAnimator = v9;

    [(PXNumberAnimator *)v6->_visibilityAnimator registerChangeObserver:v6 context:VisibilityAnimatorObservationContext];
    v6->_styleSublayoutRange.location = 0;
    v6->_styleSublayoutRange.length = 0;
    v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    artworkPreloadingRecords = v6->_artworkPreloadingRecords;
    v6->_artworkPreloadingRecords = v11;

    mainModel = [modelCopy mainModel];
    [(PXStoryStyleChromeContainerLayout *)v6 setStoryModel:mainModel];

    [(PXStoryStyleChromeContainerLayout *)v6 _updateVisibilityAnimator:0];
  }

  return v6;
}

@end