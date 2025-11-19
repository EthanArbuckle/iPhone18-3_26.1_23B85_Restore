@interface PXFeedTitleLayout
- (PXFeedTitleLayout)init;
- (PXFeedTitleLayout)initWithViewModel:(id)a3;
- (id)axSpriteIndexes;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_invalidateAttributes;
- (void)_invalidateTitle;
- (void)_updateAttributes;
- (void)_updateTitle;
- (void)displayScaleDidChange;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)update;
@end

@implementation PXFeedTitleLayout

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (ViewModelObservationContext_179046 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXFeedTitleLayout.m" lineNumber:163 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v11 = v9;
  if ((v6 & 8) != 0)
  {
    [(PXFeedTitleLayout *)self _invalidateAttributes];
    [(PXFeedTitleLayout *)self _invalidateTitleContentVersion];
    v9 = v11;
  }

  if ((v6 & 0x10) != 0)
  {
    [(PXFeedTitleLayout *)self _invalidateTitleContentVersion];
    v9 = v11;
  }
}

- (id)axSpriteIndexes
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC90]);

  return v2;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = [(PXFeedTitleLayout *)self viewModel:*&a3];
  v5 = [v4 subtitle];

  return v5;
}

- (void)_updateTitle
{
  v3 = [(PXFeedTitleLayout *)self viewModel];
  [(PXFeedTitleLayout *)self displayScale];
  v4 = [v3 spec];
  [v4 subtitleInsets];
  v6 = v5;
  v8 = v7;

  v9 = [v3 subtitle];
  [(PXFeedTitleLayout *)self referenceSize];
  [v9 boundingRectWithSize:1 options:self->_subtitleAttributes attributes:0 context:{v10 - (v6 + v8), 1.79769313e308}];
  [(PXFeedTitleLayout *)self displayScale];
  PXSizeCeilingToPixel();
}

float32x2_t __33__PXFeedTitleLayout__updateTitle__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v17.origin.x = v6;
  v17.origin.y = v7;
  v17.size.width = v8;
  v17.size.height = v9;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = v6;
  v18.origin.y = v7;
  v18.size.width = v8;
  v18.size.height = v9;
  MidY = CGRectGetMidY(v18);
  v19.origin.x = v6;
  v19.origin.y = v7;
  v19.size.width = v8;
  v19.size.height = v9;
  Width = CGRectGetWidth(v19);
  v20.origin.x = v6;
  v20.origin.y = v7;
  v20.size.width = v8;
  v20.size.height = v9;
  Height = CGRectGetHeight(v20);
  v13.f64[0] = Width;
  v13.f64[1] = Height;
  *v5 = MidX;
  *&v5[1] = MidY;
  v5[2] = 0;
  v5[3] = vcvt_f32_f64(v13);
  v14 = *(a3 + 32);
  v14[4].i16[0] = *(*(a1 + 32) + 876);
  *v13.f64 = *(a1 + 72);
  result = vmul_n_f32(*(*(a3 + 16) + 24), *v13.f64);
  v14[1] = result;
  return result;
}

- (void)_invalidateTitle
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedTitleLayout _invalidateTitle]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedTitleLayout.m" lineNumber:104 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXFeedTitleLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAttributes
{
  v10[2] = *MEMORY[0x1E69E9840];
  v3 = [(PXFeedTitleLayout *)self viewModel];
  v4 = [v3 spec];

  v9[0] = *MEMORY[0x1E69DB650];
  v5 = [v4 subtitleColor];
  v10[0] = v5;
  v9[1] = *MEMORY[0x1E69DB648];
  v6 = [v4 subtitleFont];
  v10[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];
  subtitleAttributes = self->_subtitleAttributes;
  self->_subtitleAttributes = v7;

  [(PXFeedTitleLayout *)self _invalidateTitleContentVersion];
}

- (void)_invalidateAttributes
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedTitleLayout _invalidateAttributes]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedTitleLayout.m" lineNumber:86 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXFeedTitleLayout *)self setNeedsUpdate];
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
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedTitleLayout update]"];
      [v6 handleFailureInFunction:v7 file:@"PXFeedTitleLayout.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXFeedTitleLayout *)self _updateAttributes];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v8 = [MEMORY[0x1E696AAA8] currentHandler];
        v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedTitleLayout update]"];
        [v8 handleFailureInFunction:v9 file:@"PXFeedTitleLayout.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXFeedTitleLayout *)self _updateTitle];
      v5 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFeedTitleLayout update]"];
      [v10 handleFailureInFunction:v11 file:@"PXFeedTitleLayout.m" lineNumber:81 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v12.receiver = self;
  v12.super_class = PXFeedTitleLayout;
  [(PXFeedTitleLayout *)&v12 update];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedTitleLayout;
  [(PXFeedTitleLayout *)&v3 displayScaleDidChange];
  [(PXFeedTitleLayout *)self _invalidateTitleContentVersion];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXFeedTitleLayout;
  [(PXFeedTitleLayout *)&v3 referenceSizeDidChange];
  [(PXFeedTitleLayout *)self _invalidateTitleContentVersion];
}

- (PXFeedTitleLayout)initWithViewModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXFeedTitleLayout;
  v6 = [(PXFeedTitleLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_viewModel, a3);
    [(PXFeedViewModel *)v7->_viewModel registerChangeObserver:v7 context:ViewModelObservationContext_179046];
    v7->_titleSpriteIndex = [(PXFeedTitleLayout *)v7 addSpriteWithInitialState:&__block_literal_global_179077];
    [(PXFeedTitleLayout *)v7 setContentSource:v7];
    [(PXFeedTitleLayout *)v7 _invalidateTitle];
    [(PXFeedTitleLayout *)v7 _invalidateAttributes];
  }

  return v7;
}

__n128 __39__PXFeedTitleLayout_initWithViewModel___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v4 = *(off_1E7722048 + 5);
  v3[4] = *(off_1E7722048 + 4);
  v3[5] = v4;
  v5 = *(off_1E7722048 + 3);
  v3[2] = *(off_1E7722048 + 2);
  v3[3] = v5;
  v6 = *(off_1E7722048 + 9);
  v3[8] = *(off_1E7722048 + 8);
  v3[9] = v6;
  v7 = *(off_1E7722048 + 7);
  v3[6] = *(off_1E7722048 + 6);
  v3[7] = v7;
  v8 = *(off_1E7722048 + 1);
  *v3 = *off_1E7722048;
  v3[1] = v8;
  v9 = *(a3 + 32);
  *(v9 + 32) = *(off_1E7722040 + 4);
  result = *off_1E7722040;
  v11 = *(off_1E7722040 + 1);
  *v9 = *off_1E7722040;
  *(v9 + 16) = v11;
  *(*(a3 + 32) + 1) = 3;
  return result;
}

- (PXFeedTitleLayout)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFeedTitleLayout.m" lineNumber:39 description:{@"%s is not available as initializer", "-[PXFeedTitleLayout init]"}];

  abort();
}

@end