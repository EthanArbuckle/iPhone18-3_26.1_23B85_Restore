@interface PXStoryFadeOverlayLayout
- (PXStoryFadeOverlayLayout)init;
- (PXStoryFadeOverlayLayout)initWithModel:(id)a3;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)alphaDidChange;
- (void)didUpdate;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)update;
- (void)willUpdate;
@end

@implementation PXStoryFadeOverlayLayout

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  if (ModelContext != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXStoryFadeOverlayLayout.m" lineNumber:118 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if ((a4 & 0x400000000000) != 0)
  {
    v11 = v9;
    [(PXStoryFadeOverlayLayout *)self _invalidateContent];
    v9 = v11;
  }
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (self->_fadeSpriteIndex != a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXStoryFadeOverlayLayout.m" lineNumber:106 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = +[PXStorySettings sharedInstance];
  v10 = [v9 wantsHighContrastColors];

  if (v10)
  {
    [MEMORY[0x1E69DC888] orangeColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] blackColor];
  }
  v11 = ;

  return v11;
}

- (void)_updateContent
{
  [(PXStoryFadeOverlayLayout *)self alpha];
  v4 = v3;
  [(PXStoryFadeOverlayLayout *)self referenceSize];
  v6 = v5;
  v8 = v7;
  [(PXStoryFadeOverlayLayout *)self setContentSize:?];
  v9 = [(PXStoryFadeOverlayLayout *)self model];
  v10 = [(PXStoryFadeOverlayLayout *)self localNumberOfSprites];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__PXStoryFadeOverlayLayout__updateContent__block_invoke;
  v13[3] = &unk_1E7744830;
  v11 = v10 << 32;
  v15 = v6;
  v16 = v8;
  v17 = v4;
  v13[4] = self;
  v14 = v9;
  v12 = v9;
  [(PXStoryFadeOverlayLayout *)self modifySpritesInRange:v11 state:v13];
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFadeOverlayLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXStoryFadeOverlayLayout.m" lineNumber:82 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXStoryFadeOverlayLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryFadeOverlayLayout;
  [(PXStoryFadeOverlayLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFadeOverlayLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryFadeOverlayLayout.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFadeOverlayLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXStoryFadeOverlayLayout.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXStoryFadeOverlayLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFadeOverlayLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXStoryFadeOverlayLayout.m" lineNumber:72 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXStoryFadeOverlayLayout;
  [(PXStoryFadeOverlayLayout *)&v9 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXStoryFadeOverlayLayout;
  [(PXStoryFadeOverlayLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXStoryFadeOverlayLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXStoryFadeOverlayLayout.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryFadeOverlayLayout;
  [(PXStoryFadeOverlayLayout *)&v3 alphaDidChange];
  [(PXStoryFadeOverlayLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXStoryFadeOverlayLayout;
  [(PXStoryFadeOverlayLayout *)&v3 referenceSizeDidChange];
  [(PXStoryFadeOverlayLayout *)self _invalidateContent];
}

- (PXStoryFadeOverlayLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryFadeOverlayLayout.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXStoryFadeOverlayLayout init]"}];

  abort();
}

- (PXStoryFadeOverlayLayout)initWithModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryFadeOverlayLayout;
  v6 = [(PXStoryFadeOverlayLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_model, a3);
    [v5 registerChangeObserver:v7 context:ModelContext];
    [(PXStoryFadeOverlayLayout *)v7 setContentSource:v7];
    v7->_fadeSpriteIndex = [(PXStoryFadeOverlayLayout *)v7 addSpriteWithInitialState:&__block_literal_global_207764];
  }

  return v7;
}

double __42__PXStoryFadeOverlayLayout_initWithModel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v4;
  v5 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v5;
  v6 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v6;
  v7 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 32);
  *(v9 + 1) = 5;
  __asm { FMOV            V0.2S, #1.0 }

  *(v9 + 8) = result;
  return result;
}

@end