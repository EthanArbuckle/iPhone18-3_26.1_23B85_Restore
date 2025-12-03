@interface PXGPPTAnimationLayout
- (NSString)configurationDescription;
- (PXGPPTAnimationLayout)init;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_updateContent;
- (void)referenceSizeDidChange;
- (void)setNumberOfColumns:(unsigned int)columns;
- (void)setNumberOfRows:(unsigned int)rows;
- (void)setStyle:(int64_t)style;
- (void)update;
@end

@implementation PXGPPTAnimationLayout

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  colors = self->_colors;
  v5 = index % [(NSArray *)colors count];

  return [(NSArray *)colors objectAtIndexedSubscript:v5];
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout setStyle:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXGPPTAnimationLayout.m" lineNumber:173 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGPPTAnimationLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setNumberOfColumns:(unsigned int)columns
{
  if (self->_numberOfColumns != columns)
  {
    self->_numberOfColumns = columns;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout setNumberOfColumns:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXGPPTAnimationLayout.m" lineNumber:165 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGPPTAnimationLayout *)self setNeedsUpdate];
    }
  }
}

- (void)setNumberOfRows:(unsigned int)rows
{
  if (self->_numberOfRows != rows)
  {
    self->_numberOfRows = rows;
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout setNumberOfRows:]"];
        [currentHandler handleFailureInFunction:v8 file:@"PXGPPTAnimationLayout.m" lineNumber:157 description:{@"invalidating %lu after it already has been updated", 1}];

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

      [(PXGPPTAnimationLayout *)self setNeedsUpdate];
    }
  }
}

- (void)referenceSizeDidChange
{
  v8.receiver = self;
  v8.super_class = PXGPPTAnimationLayout;
  [(PXGPPTAnimationLayout *)&v8 referenceSizeDidChange];
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
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout referenceSizeDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXGPPTAnimationLayout.m" lineNumber:149 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXGPPTAnimationLayout *)self setNeedsUpdate];
  }
}

- (NSString)configurationDescription
{
  [(PXGPPTAnimationLayout *)self updateIfNeeded];
  numberOfSprites = [(PXGPPTAnimationLayout *)self numberOfSprites];
  LODWORD(v4) = numberOfSprites / 0x3E8;
  v5 = &stru_1F1741150;
  if (numberOfSprites <= 0x3E7)
  {
    v4 = numberOfSprites;
  }

  else
  {
    v4 = v4;
  }

  if (numberOfSprites > 0x3E7)
  {
    v5 = @"k";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%li%@_Sprites", v4, v5];
}

- (void)_updateContent
{
  numberOfRows = [(PXGPPTAnimationLayout *)self numberOfRows];
  numberOfColumns = [(PXGPPTAnimationLayout *)self numberOfColumns];
  v5 = numberOfColumns * numberOfRows;
  numberOfSprites = [(PXGPPTAnimationLayout *)self numberOfSprites];
  if (v5 >= numberOfSprites)
  {
    if (v5 > numberOfSprites)
    {
      [(PXGPPTAnimationLayout *)self addSpritesInRange:numberOfSprites | ((v5 - numberOfSprites) << 32) initialState:&__block_literal_global_98161];
    }
  }

  else
  {
    [(PXGPPTAnimationLayout *)self removeSpritesInRange:v5 | ((numberOfSprites - v5) << 32)];
  }

  [(PXGPPTAnimationLayout *)self referenceSize];
  *&v10.f64[0] = v7;
  v10.f64[1] = v8;
  __asm { FMOV            V2.2D, #0.5 }

  v16 = vcvt_f32_f64(vmulq_f64(v10, _Q2));
  v27 = v7;
  if (*&v7 >= v8)
  {
    *&v7 = v8;
  }

  v17 = *&v7 * 0.5;
  v18 = [(PXGPPTAnimationLayout *)self style:v27];
  if (v18 == 1)
  {
    v25 = 6.28318531 / numberOfColumns;
    v30[1] = 3221225472;
    v30[0] = MEMORY[0x1E69E9820];
    v30[2] = __39__PXGPPTAnimationLayout__updateContent__block_invoke_3;
    v30[3] = &__block_descriptor_64_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    v20 = v5 << 32;
    v31 = numberOfColumns;
    v32 = v25;
    v33 = v17 / numberOfRows;
    __asm { FMOV            V0.2S, #10.0 }

    v30[4] = v16;
    v30[5] = _D0;
    v34 = 1065353216;
    v24 = v30;
    goto LABEL_11;
  }

  if (!v18)
  {
    v20 = v5 << 32;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __39__PXGPPTAnimationLayout__updateContent__block_invoke_2;
    v35[3] = &__block_descriptor_76_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    v36 = numberOfColumns;
    *v19.i8 = vcvt_f32_u32(vadd_s32(__PAIR64__(numberOfRows, numberOfColumns), -1));
    _Q0 = vzip1q_s32(v19, v19);
    v22.i64[0] = 0x3F0000003F000000;
    v22.i64[1] = 0x3F0000003F000000;
    v23.i64[0] = 0x4000000040000000;
    v23.i64[1] = 0x4000000040000000;
    v37 = vtrn2q_s32(vrev64q_s32(vmulq_f32(_Q0, v22)), vdivq_f32(v23, _Q0));
    v38 = v17 * 0.75;
    __asm { FMOV            V0.2S, #1.0 }

    v35[4] = v16;
    v35[5] = _Q0.i64[0];
    v39 = 1056964608;
    v24 = v35;
LABEL_11:
    [(PXGPPTAnimationLayout *)self modifySpritesInRange:v20 state:v24];
  }

  [(PXGPPTAnimationLayout *)self setContentSize:v28, v29];
}

float __39__PXGPPTAnimationLayout__updateContent__block_invoke_2(uint64_t a1, unint64_t a2, uint64_t a3, float *a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    do
    {
      v5 = *(a1 + 48);
      v6 = ((a2 / v5) - *(a1 + 60)) * *(a1 + 64);
      v7 = *(a1 + 68);
      *a3 = (COERCE_FLOAT(*(a1 + 32)) + ((((a2 % v5) - *(a1 + 52)) * *(a1 + 56)) * v7));
      *(a3 + 8) = (*(a1 + 36) + (v6 * v7));
      *(a3 + 24) = *(a1 + 40);
      result = *(a1 + 72);
      *a4 = result;
      a4 += 40;
      LODWORD(a2) = a2 + 1;
      a3 += 32;
      LODWORD(v4) = v4 - 1;
    }

    while (v4);
  }

  return result;
}

void __39__PXGPPTAnimationLayout__updateContent__block_invoke_3(uint64_t a1, unint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v7 = a2;
    do
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56) * (v7 / v9);
      v11 = __sincosf_stret(*(a1 + 52) * (v7 % v9));
      *a3 = (COERCE_FLOAT(*(a1 + 32)) + (v11.__cosval * v10));
      *(a3 + 8) = (*(a1 + 36) + (v11.__sinval * v10));
      *(a3 + 24) = *(a1 + 40);
      *a4 = *(a1 + 60);
      a4 += 40;
      ++v7;
      a3 += 32;
      LODWORD(v4) = v4 - 1;
    }

    while (v4);
  }
}

void __39__PXGPPTAnimationLayout__updateContent__block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    v5 = a3[3];
    v4 = a3[4];
    v6 = a3[2];
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v32 = *off_1E7722048;
    v30 = *(off_1E7722048 + 5);
    v31 = *(off_1E7722048 + 1);
    v28 = *(off_1E7722048 + 3);
    v29 = *(off_1E7722048 + 4);
    v26 = *(off_1E7722048 + 9);
    v27 = *(off_1E7722048 + 2);
    v25 = *(off_1E7722048 + 8);
    v23 = *(off_1E7722048 + 6);
    v24 = *(off_1E7722048 + 7);
    v21 = *(off_1E7722040 + 1);
    v22 = *off_1E7722040;
    __asm { FMOV            V14.2S, #10.0 }

    v16 = *(off_1E7722040 + 4);
    do
    {
      v34.origin.x = v7;
      v34.origin.y = v8;
      v34.size.width = v9;
      v34.size.height = v10;
      MidX = CGRectGetMidX(v34);
      v35.origin.x = v7;
      v35.origin.y = v8;
      v35.size.width = v9;
      v35.size.height = v10;
      MidY = CGRectGetMidY(v35);
      v36.origin.x = v7;
      v36.origin.y = v8;
      v36.size.width = v9;
      v36.size.height = v10;
      Width = CGRectGetWidth(v36);
      v37.origin.x = v7;
      v37.origin.y = v8;
      v37.size.width = v9;
      v37.size.height = v10;
      Height = CGRectGetHeight(v37);
      v20.f64[0] = Width;
      v20.f64[1] = Height;
      *v6 = MidX;
      *&v6[1] = MidY;
      v6[2] = 0;
      v6[3] = vcvt_f32_f64(v20);
      *v5 = v32;
      v5[1] = v31;
      v5[4] = v29;
      v5[5] = v30;
      v5[2] = v27;
      v5[3] = v28;
      v5[8] = v25;
      v5[9] = v26;
      v5[6] = v23;
      v5[7] = v24;
      *(v4 + 32) = v16;
      *v4 = v22;
      *(v4 + 16) = v21;
      *(v4 + 1) = 5;
      *(v4 + 8) = _D14;
      v6 += 4;
      v5 += 10;
      v4 += 40;
      LODWORD(v3) = v3 - 1;
    }

    while (v3);
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
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXGPPTAnimationLayout.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGPPTAnimationLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXGPPTAnimationLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXGPPTAnimationLayout.m" lineNumber:50 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXGPPTAnimationLayout;
  [(PXGPPTAnimationLayout *)&v9 update];
}

- (PXGPPTAnimationLayout)init
{
  v9.receiver = self;
  v9.super_class = PXGPPTAnimationLayout;
  v2 = [(PXGPPTAnimationLayout *)&v9 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:101];
    for (i = 0; i != 101; ++i)
    {
      v5 = [MEMORY[0x1E69DC888] colorWithHue:i / 101.0 saturation:1.0 brightness:1.0 alpha:1.0];
      [v3 addObject:v5];
    }

    v6 = [v3 copy];
    colors = v2->_colors;
    v2->_colors = v6;

    [(PXGPPTAnimationLayout *)v2 setContentSource:v2];
  }

  return v2;
}

@end