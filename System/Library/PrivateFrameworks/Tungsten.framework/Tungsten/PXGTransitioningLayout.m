@interface PXGTransitioningLayout
- (CGRect)contentFrameOverride;
- (PXGTransitioningLayout)init;
- (PXGTransitioningLayout)initWithContentLayout:(id)a3;
- (UIEdgeInsets)safeAreaInsets;
- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)a3;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (void)_invalidateSublayoutPositions;
- (void)_updateSublayoutPositions;
- (void)referenceSizeDidChange;
- (void)setContentFrameOverride:(CGRect)a3;
- (void)update;
@end

@implementation PXGTransitioningLayout

- (CGRect)contentFrameOverride
{
  x = self->_contentFrameOverride.origin.x;
  y = self->_contentFrameOverride.origin.y;
  width = self->_contentFrameOverride.size.width;
  height = self->_contentFrameOverride.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateSublayoutPositions
{
  [(PXGTransitioningLayout *)self contentFrameOverride];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (CGRectIsNull(v12))
  {
    [(PXGLayout *)self referenceSize];
    PXRectWithOriginAndSize();
    x = v7;
    y = v8;
    width = v9;
    height = v10;
  }

  [(PXGAbsoluteCompositeLayout *)self setFrame:0 forSublayoutAtIndex:x, y, width, height];
}

- (void)_invalidateSublayoutPositions
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGTransitioningLayout _invalidateSublayoutPositions]"];
      [v6 handleFailureInFunction:v7 file:@"PXGTransitioningLayout.m" lineNumber:98 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXGLayout *)self setNeedsUpdate];
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
      v5 = [MEMORY[0x277CCA890] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGTransitioningLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXGTransitioningLayout.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGTransitioningLayout *)self _updateSublayoutPositions];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGTransitioningLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXGTransitioningLayout.m" lineNumber:93 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXGTransitioningLayout;
  [(PXGCompositeLayout *)&v9 update];
}

- (id)createAnchorForVisibleAreaIgnoringEdges:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXGTransitioningLayout;
  v4 = [(PXGLayout *)&v7 createAnchorForVisibleAreaIgnoringEdges:a3];
  v5 = [(PXGTransitioningLayout *)self contentLayout];
  if ([v5 conformsToProtocol:&unk_282C8A118])
  {
    [v4 setDelegate:v5];
  }

  return v4;
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v7 = a3;
  v8 = [(PXGTransitioningLayout *)self contentLayout];
  v9 = [(PXGLayout *)self indexOfSublayout:v8];

  v10 = v7;
  *a5 = v7;
  return v9;
}

- (UIEdgeInsets)safeAreaInsets
{
  v3 = [(PXGTransitioningLayout *)self contentLayout];
  v4 = [v3 scrollableAxis];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PXGTransitioningLayout;
    [(PXGLayout *)&v9 safeAreaInsets];
  }

  else
  {
    v5 = *MEMORY[0x277D3CF90];
    v6 = *(MEMORY[0x277D3CF90] + 8);
    v7 = *(MEMORY[0x277D3CF90] + 16);
    v8 = *(MEMORY[0x277D3CF90] + 24);
  }

  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGTransitioningLayout;
  [(PXGCompositeLayout *)&v3 referenceSizeDidChange];
  [(PXGTransitioningLayout *)self _invalidateSublayoutPositions];
}

- (void)setContentFrameOverride:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentFrameOverride = &self->_contentFrameOverride;
  if (!CGRectEqualToRect(a3, self->_contentFrameOverride))
  {
    p_contentFrameOverride->origin.x = x;
    p_contentFrameOverride->origin.y = y;
    p_contentFrameOverride->size.width = width;
    p_contentFrameOverride->size.height = height;

    [(PXGTransitioningLayout *)self _invalidateSublayoutPositions];
  }
}

- (PXGTransitioningLayout)initWithContentLayout:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGTransitioningLayout.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"contentLayout != nil"}];
  }

  v12.receiver = self;
  v12.super_class = PXGTransitioningLayout;
  v7 = [(PXGAbsoluteCompositeLayout *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contentLayout, a3);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v8->_contentFrameOverride.origin = *MEMORY[0x277CBF398];
    v8->_contentFrameOverride.size = v9;
    [(PXGLayout *)v8 addSublayout:v6];
    [(PXGTransitioningLayout *)v8 _invalidateSublayoutPositions];
  }

  return v8;
}

- (PXGTransitioningLayout)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGTransitioningLayout.m" lineNumber:24 description:{@"%s is not available as initializer", "-[PXGTransitioningLayout init]"}];

  abort();
}

@end