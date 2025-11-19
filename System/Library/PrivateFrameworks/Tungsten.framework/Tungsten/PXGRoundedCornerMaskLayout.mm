@interface PXGRoundedCornerMaskLayout
- (PXGRoundedCornerMaskLayout)initWithCornerRadius:(double)a3 continuousCorners:(BOOL)a4 maskColor:(id)a5;
- (UIEdgeInsets)insets;
- (void)_invalidateContent;
- (void)_invalidatePath;
- (void)_updateContent;
- (void)_updatePath;
- (void)contentSizeDidChange;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)setContinuousCorners:(BOOL)a3;
- (void)setCornerRadius:(double)a3;
- (void)setInsets:(UIEdgeInsets)a3;
- (void)setLeftMaskWidth:(double)a3;
- (void)setMaskColor:(id)a3;
- (void)setMaskScale:(double)a3;
- (void)setRightMaskWidth:(double)a3;
- (void)setTopLeftPath:(id)a3;
- (void)update;
@end

@implementation PXGRoundedCornerMaskLayout

- (UIEdgeInsets)insets
{
  top = self->_insets.top;
  left = self->_insets.left;
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateContent
{
  [(PXGLayout *)self contentSize];
  PXRectWithOriginAndSize();
  [(PXGRoundedCornerMaskLayout *)self insets];
  PXEdgeInsetsInsetRect();
  v4 = v3;
  v6 = v5;
  v22 = v8;
  v23 = v7;
  [(PXGRoundedCornerMaskLayout *)self maskScale];
  v24 = v9;
  [(PXGLayout *)self displayScale];
  v10 = [(PXGRoundedCornerMaskLayout *)self topLeftPath];
  [v10 bounds];
  v12 = v11;
  v14 = v13;

  PXSizeScale();
  v16 = v15;
  v18 = v17;
  [(PXGLayout *)self referenceDepth];
  v20 = -v19;
  v21 = [(PXGLayout *)self userInterfaceDirection];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __44__PXGRoundedCornerMaskLayout__updateContent__block_invoke;
  v26[3] = &unk_2782AA2F0;
  v27 = v21 == 1;
  v26[5] = v16;
  v26[6] = v18;
  v26[7] = v4;
  v26[8] = v6;
  v26[9] = v23;
  v26[10] = v22;
  *&v26[11] = v20;
  v26[12] = v12;
  v26[13] = v14;
  v26[4] = self;
  [(PXGLayout *)self modifySpritesInRange:0x400000000 state:v26];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __44__PXGRoundedCornerMaskLayout__updateContent__block_invoke_2;
  v25[3] = &unk_2782AA318;
  v25[4] = self;
  v25[5] = v24;
  v25[6] = v4;
  v25[7] = v6;
  v25[8] = v23;
  v25[9] = v22;
  *&v25[10] = v20;
  [(PXGLayout *)self modifySpritesInRange:*&self->_sideMaskSpriteIndexRange state:v25];
}

void __44__PXGRoundedCornerMaskLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 16;
  v12 = -1;
  do
  {
    if (*(a1 + 112) == 1)
    {
      PXEdgesFlippedHorizontally();
    }

    PXRectWithSizeAlignedToRectEdges();
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
    v17 = *(a1 + 88);
    MidX = CGRectGetMidX(v25);
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    MidY = CGRectGetMidY(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v24 = CGRectGetWidth(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v20 = CGRectGetHeight(v28);
    v21.f64[0] = v24;
    v21.f64[1] = v20;
    *(v11 - 16) = MidX;
    *(v11 - 8) = MidY;
    *v11 = v17;
    *(v11 + 8) = vcvt_f32_f64(v21);
    v11 += 32;
    v22 = (a4 + v8);
    *v22 = PXGSpriteStyleDefault;
    v22[1] = unk_21AE2E270;
    v22[4] = xmmword_21AE2E2A0;
    v22[5] = unk_21AE2E2B0;
    v22[2] = xmmword_21AE2E280;
    v22[3] = unk_21AE2E290;
    v22[8] = xmmword_21AE2E2E0;
    v22[9] = unk_21AE2E2F0;
    v22[6] = xmmword_21AE2E2C0;
    v22[7] = unk_21AE2E2D0;
    *&v20 = v12 * -1.57079633;
    *(a4 + 4 * v9 + 56) = LODWORD(v20);
    v23 = (a5 + v9);
    v23->i8[1] = 11;
    v23[1] = vcvt_f32_f64(*(a1 + 96));
    v9 += 40;
    ++v12;
    v23[4].i16[0] = *(*(a1 + 32) + 880);
    v8 += 160;
    ++v10;
  }

  while (v9 != 160);
}

float32x2_t __44__PXGRoundedCornerMaskLayout__updateContent__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  [*(a1 + 32) leftMaskWidth];
  v9 = v8 * *(a1 + 40);
  [*(a1 + 32) rightMaskWidth];
  v11 = v10 * *(a1 + 40);
  v12 = *(a1 + 48) - v9;
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  v31.origin.y = 0.0;
  v31.origin.x = v12;
  v31.size.width = v9;
  v31.size.height = v13;
  MidX = CGRectGetMidX(v31);
  v32.origin.y = 0.0;
  v32.origin.x = v12;
  v32.size.width = v9;
  v32.size.height = v13;
  MidY = CGRectGetMidY(v32);
  v33.origin.y = 0.0;
  v33.origin.x = v12;
  v33.size.width = v9;
  v33.size.height = v13;
  Width = CGRectGetWidth(v33);
  v34.origin.y = 0.0;
  v34.origin.x = v12;
  v34.size.width = v9;
  v34.size.height = v13;
  Height = CGRectGetHeight(v34);
  v18.f64[0] = Width;
  v18.f64[1] = Height;
  *a3 = MidX;
  *(a3 + 8) = MidY;
  *(a3 + 16) = v14;
  *(a3 + 24) = vcvt_f32_f64(v18);
  v19 = *(a1 + 48);
  v18.f64[0] = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 72);
  v35.origin.x = CGRectGetMaxX(*(&v18 - 8));
  x = v35.origin.x;
  v23 = *(a1 + 72);
  *&MidY = *(a1 + 80);
  v35.origin.y = 0.0;
  v35.size.width = v11;
  v35.size.height = v23;
  v24 = CGRectGetMidX(v35);
  v36.origin.y = 0.0;
  v36.origin.x = x;
  v36.size.width = v11;
  v36.size.height = v23;
  v25 = CGRectGetMidY(v36);
  v37.origin.y = 0.0;
  v37.origin.x = x;
  v37.size.width = v11;
  v37.size.height = v23;
  v30 = CGRectGetWidth(v37);
  v38.origin.y = 0.0;
  v38.origin.x = x;
  v38.size.width = v11;
  v38.size.height = v23;
  v26 = CGRectGetHeight(v38);
  v27.f64[0] = v30;
  v27.f64[1] = v26;
  result = vcvt_f32_f64(v27);
  *(a3 + 32) = v24;
  *(a3 + 40) = v25;
  *(a3 + 48) = *&MidY;
  *(a3 + 56) = result;
  *(a5 + 32) = *(*(a1 + 32) + 880);
  *(a5 + 72) = *(*(a1 + 32) + 880);
  return result;
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
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGRoundedCornerMaskLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXGRoundedCornerMaskLayout.m" lineNumber:180 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXGLayout *)self setNeedsUpdate];
  }
}

- (void)_updatePath
{
  v10 = +[PXGCornerMaskPathLibrary sharedLibrary];
  [(PXGRoundedCornerMaskLayout *)self cornerRadius];
  v4 = v3;
  v5 = [(PXGRoundedCornerMaskLayout *)self continuousCorners];
  [(PXGLayout *)self displayScale];
  v7 = v6;
  v8 = [(PXGRoundedCornerMaskLayout *)self maskColor];
  v9 = [v10 pathForCornerRadius:v5 continuousCorners:v8 screenScale:v4 maskColor:v7];
  [(PXGRoundedCornerMaskLayout *)self setTopLeftPath:v9];
}

- (void)_invalidatePath
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGRoundedCornerMaskLayout _invalidatePath]"];
      [v6 handleFailureInFunction:v7 file:@"PXGRoundedCornerMaskLayout.m" lineNumber:172 description:{@"invalidating %lu after it already has been updated", 1}];

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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGRoundedCornerMaskLayout update]"];
      [v6 handleFailureInFunction:v7 file:@"PXGRoundedCornerMaskLayout.m" lineNumber:160 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGRoundedCornerMaskLayout *)self _updatePath];
      if (!p_updateFlags->isPerformingUpdate)
      {
        v8 = [MEMORY[0x277CCA890] currentHandler];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGRoundedCornerMaskLayout update]"];
        [v8 handleFailureInFunction:v9 file:@"PXGRoundedCornerMaskLayout.m" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXGRoundedCornerMaskLayout *)self _updateContent];
      v5 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v5)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGRoundedCornerMaskLayout update]"];
      [v10 handleFailureInFunction:v11 file:@"PXGRoundedCornerMaskLayout.m" lineNumber:167 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v12.receiver = self;
  v12.super_class = PXGRoundedCornerMaskLayout;
  [(PXGLayout *)&v12 update];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGRoundedCornerMaskLayout;
  [(PXGLayout *)&v3 contentSizeDidChange];
  [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXGRoundedCornerMaskLayout;
  [(PXGLayout *)&v3 displayScaleDidChange];
  [(PXGRoundedCornerMaskLayout *)self _invalidatePath];
  [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGRoundedCornerMaskLayout;
  [(PXGLayout *)&v3 referenceSizeDidChange];
  [(PXGLayout *)self referenceSize];
  [(PXGLayout *)self setContentSize:?];
}

- (void)setContinuousCorners:(BOOL)a3
{
  if (self->_continuousCorners != a3)
  {
    self->_continuousCorners = a3;
    ++self->_mediaVersion;
    [(PXGRoundedCornerMaskLayout *)self _invalidatePath];
  }
}

- (void)setTopLeftPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topLeftPath != v4)
  {
    v9 = v4;
    v6 = [(PXGPath *)v4 isEqual:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(PXGPath *)v9 copy];
      topLeftPath = self->_topLeftPath;
      self->_topLeftPath = v7;

      [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
      v5 = v9;
    }
  }
}

- (void)setRightMaskWidth:(double)a3
{
  if (self->_rightMaskWidth != a3)
  {
    self->_rightMaskWidth = a3;
    [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
  }
}

- (void)setLeftMaskWidth:(double)a3
{
  if (self->_leftMaskWidth != a3)
  {
    self->_leftMaskWidth = a3;
    [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
  }
}

- (void)setMaskColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_maskColor != v5)
  {
    v8 = v5;
    v7 = [(UIColor *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_maskColor, a3);
      ++self->_mediaVersion;
      [(PXGRoundedCornerMaskLayout *)self _invalidatePath];
      v6 = v8;
    }
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius == a3)
  {
    self->_cornerRadius = a3;
    [(PXGRoundedCornerMaskLayout *)self _invalidatePath];
  }
}

- (void)setInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_insets = &self->_insets;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_insets->top = top;
    p_insets->left = left;
    p_insets->bottom = bottom;
    p_insets->right = right;

    [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
  }
}

- (void)setMaskScale:(double)a3
{
  if (self->_maskScale != a3)
  {
    self->_maskScale = a3;
    [(PXGRoundedCornerMaskLayout *)self _invalidateContent];
  }
}

- (PXGRoundedCornerMaskLayout)initWithCornerRadius:(double)a3 continuousCorners:(BOOL)a4 maskColor:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PXGRoundedCornerMaskLayout;
  v10 = [(PXGLayout *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_cornerRadius = a3;
    objc_storeStrong(&v10->_maskColor, a5);
    v11->_maskScale = 1.0;
    v11->_continuousCorners = a4;
    v12 = *(MEMORY[0x277D3CF90] + 16);
    *&v11->_insets.top = *MEMORY[0x277D3CF90];
    *&v11->_insets.bottom = v12;
    [(PXGLayout *)v11 setContentSource:v11];
    [(PXGLayout *)v11 applySpriteChangeDetails:0 countAfterChanges:4 initialState:0 modifyState:0];
    v11->_sideMaskSpriteIndexRange = [(PXGLayout *)v11 addSpriteCount:2 withInitialState:&__block_literal_global_12664];
    [(PXGRoundedCornerMaskLayout *)v11 _invalidatePath];
  }

  return v11;
}

void __79__PXGRoundedCornerMaskLayout_initWithCornerRadius_continuousCorners_maskColor___block_invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (HIDWORD(a2))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    __asm { FMOV            V19.2S, #1.0 }

    do
    {
      v11 = (a3[2] + v5);
      *v11 = 0uLL;
      v11[1] = 0uLL;
      v12 = (a3[3] + v3);
      v12[6] = xmmword_21AE2E2C0;
      v12[7] = unk_21AE2E2D0;
      v12[8] = xmmword_21AE2E2E0;
      v12[9] = unk_21AE2E2F0;
      v12[2] = xmmword_21AE2E280;
      v12[3] = unk_21AE2E290;
      v12[4] = xmmword_21AE2E2A0;
      v12[5] = unk_21AE2E2B0;
      *v12 = PXGSpriteStyleDefault;
      v12[1] = unk_21AE2E270;
      v13 = a3[4] + v4;
      *(v13 + 1) = 5;
      *(v13 + 8) = _D19;
      v5 += 32;
      v4 += 40;
      v3 += 160;
    }

    while (32 * HIDWORD(a2) != v5);
  }
}

@end