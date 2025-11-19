@interface PXStoryStyleScrollContentLayout
- (PXStoryStyleScrollContentLayout)init;
- (PXStoryStyleScrollContentLayout)initWithModel:(id)a3;
- (id)createAnchorForScrollingToStyleFocus:(double)a3;
- (void)_invalidateContent;
- (void)_invalidateFocusedStyle;
- (void)_updateContent;
- (void)_updateFocusedStyle;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXStoryStyleScrollContentLayout

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (StyleManagerObservationContext_220266 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryStyleScrollContentLayout.m" lineNumber:147 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((v6 & 0x20) != 0)
  {
    v11 = v9;
    [(PXStoryStyleScrollContentLayout *)self _invalidateContent];
    v9 = v11;
  }
}

- (void)_updateFocusedStyle
{
  [(PXStoryStyleScrollContentLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXStoryStyleScrollContentLayout *)self referenceSize];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMidX(v14);
  v11 = [(PXStoryStyleScrollContentLayout *)self model];
  v12 = [v11 styleManager];
  v13 = [v12 selectionDataSource];
  [v13 numberOfStyles];

  PXClamp();
}

- (void)_invalidateFocusedStyle
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_postUpdateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout _invalidateFocusedStyle]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:105 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXStoryStyleScrollContentLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  [(PXStoryStyleScrollContentLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  v7 = [(PXStoryStyleScrollContentLayout *)self localNumberOfSprites];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__PXStoryStyleScrollContentLayout__updateContent__block_invoke;
  v11[3] = &unk_1E774B270;
  *&v11[5] = v4;
  *&v11[6] = v6;
  v11[4] = self;
  [(PXStoryStyleScrollContentLayout *)self modifySpritesInRange:v7 << 32 state:v11];
  v8 = [(PXStoryStyleScrollContentLayout *)self model];
  v9 = [v8 styleManager];
  v10 = [v9 selectionDataSource];
  -[PXStoryStyleScrollContentLayout setContentSize:](self, "setContentSize:", v4 * [v10 numberOfStyles], v6);
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
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:89 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryStyleScrollContentLayout *)self setNeedsUpdate];
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
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryStyleScrollContentLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout update]"];
      [v9 handleFailureInFunction:v10 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:79 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v15.receiver = self;
  v15.super_class = PXStoryStyleScrollContentLayout;
  [(PXStoryStyleScrollContentLayout *)&v15 update];
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  v6 = self->_postUpdateFlags.needsUpdate;
  if (v6)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout update]"];
      [v11 handleFailureInFunction:v12 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];

      v6 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 1;
    if (v6)
    {
      p_postUpdateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryStyleScrollContentLayout *)self _updateFocusedStyle];
      v6 = p_postUpdateFlags->needsUpdate;
    }

    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v6)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryStyleScrollContentLayout update]"];
      [v13 handleFailureInFunction:v14 file:@"PXStoryStyleScrollContentLayout.m" lineNumber:85 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleScrollContentLayout;
  [(PXStoryStyleScrollContentLayout *)&v3 visibleRectDidChange];
  [(PXStoryStyleScrollContentLayout *)self _invalidateFocusedStyle];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryStyleScrollContentLayout;
  [(PXStoryStyleScrollContentLayout *)&v3 referenceSizeDidChange];
  [(PXStoryStyleScrollContentLayout *)self _invalidateContent];
}

- (id)createAnchorForScrollingToStyleFocus:(double)a3
{
  v5 = [(PXStoryStyleScrollContentLayout *)self spriteReferenceForSpriteIndex:self->_firstPageSpriteIndex];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__PXStoryStyleScrollContentLayout_createAnchorForScrollingToStyleFocus___block_invoke;
  v8[3] = &__block_descriptor_40_e64__CGPoint_dd_48__0_CGRect__CGPoint_dd__CGSize_dd__8__PXGLayout_40l;
  *&v8[4] = a3;
  v6 = [(PXStoryStyleScrollContentLayout *)self createAnchorForScrollingSpriteForSpriteReference:v5 toScrollPosition:9 padding:v8 customOffset:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];

  return v6;
}

- (PXStoryStyleScrollContentLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryStyleScrollContentLayout.m" lineNumber:51 description:{@"%s is not available as initializer", "-[PXStoryStyleScrollContentLayout init]"}];

  abort();
}

- (PXStoryStyleScrollContentLayout)initWithModel:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PXStoryStyleScrollContentLayout;
  v6 = [(PXStoryStyleScrollContentLayout *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    v8 = [(PXStoryModel *)v7->_model styleManager];
    [v8 registerChangeObserver:v7 context:StyleManagerObservationContext_220266];

    v7->_firstPageSpriteIndex = 0;
    [(PXStoryStyleScrollContentLayout *)v7 addSpriteCount:1 withInitialState:0];
  }

  return v7;
}

@end