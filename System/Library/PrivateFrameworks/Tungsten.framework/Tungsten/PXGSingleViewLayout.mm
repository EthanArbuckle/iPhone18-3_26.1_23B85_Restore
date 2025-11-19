@interface PXGSingleViewLayout
- ($B30C796585FC215A6CA6704F8BA3D5B6)cornerRadius;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXGSingleViewLayout)init;
- (PXGSingleViewLayoutDelegate)delegate;
- (PXGSpriteReference)viewSpriteReference;
- (UIEdgeInsets)padding;
- (id)axSpriteIndexesInRect:(CGRect)a3;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (void)_invalidateContent;
- (void)_updateContent;
- (void)alphaDidChange;
- (void)appearStateDidChange;
- (void)dealloc;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)referenceSizeDidChange;
- (void)setContentView:(id)a3;
- (void)setContentViewClass:(Class)a3;
- (void)setCornerRadius:(id)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setStyle:(int64_t)a3;
- (void)setZPosition:(float)a3;
- (void)update;
- (void)willUpdate;
@end

@implementation PXGSingleViewLayout

- ($B30C796585FC215A6CA6704F8BA3D5B6)cornerRadius
{
  *&result.var0.var1[2] = a2;
  *&result.var0.var0.var0 = self;
  return result;
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (PXGSingleViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)axSpriteIndexesInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  [(PXGLayout *)self contentSize];
  v15.size.width = v10;
  v15.size.height = v11;
  v15.origin.x = v8;
  v15.origin.y = v9;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIntersectsRect(v15, v16))
  {
    v12 = self->_axSpriteIndexes;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  return v12;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  if ([(PXGSingleViewLayout *)self contentViewClass:*&a3])
  {
    v5 = [(PXGSingleViewLayout *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(PXGSingleViewLayout *)self delegate];
      v8 = [v7 configurationForSingleViewLayout:self];
    }

    else
    {
      v8 = 0;
    }

    [(PXGSingleViewUserData *)v8 setWeakLayout:self];
  }

  else
  {
    v9 = [PXGSingleViewUserData alloc];
    v10 = [(PXGSingleViewLayout *)self contentView];
    v8 = [(PXGSingleViewUserData *)v9 initWithContentView:v10];
  }

  return v8;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v4 = [(PXGSingleViewLayout *)self contentViewClass:*&a3];
  if (!v4)
  {
    v4 = objc_opt_class();
  }

  return v4;
}

- (void)_updateContent
{
  v4 = [(PXGSingleViewLayout *)self contentView];
  if (v4)
  {
    v5 = v4;
    v6 = [(PXGSingleViewLayout *)self contentViewClass];

    if (v6)
    {
      v30 = [MEMORY[0x277CCA890] currentHandler];
      [v30 handleFailureInMethod:a2 object:self file:@"PXGSingleViewLayout.m" lineNumber:190 description:@"Content may be specified via contentView or contentViewClass but not both"];
    }
  }

  if ([(PXGLayout *)self localNumberOfSprites]!= 1)
  {
    [(PXGLayout *)self applySpriteChangeDetails:0 countAfterChanges:1 initialState:0 modifyState:0];
  }

  [(PXGSingleViewLayout *)self padding];
  [(PXGLayout *)self safeAreaInsets];
  [(PXGSingleViewLayout *)self safeAreaEdgeMask];
  PXEdgeInsetsAdd();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PXGLayout *)self referenceSize];
  PXEdgeInsetsInsetSize();
  v16 = v15;
  v18 = v17;
  [(PXGSingleViewLayout *)self zPosition];
  v20 = v19;
  if ([(PXGSingleViewLayout *)self contentViewClass]|| (v26 = [(PXGSingleViewLayout *)self style], v26 == 2))
  {
    v21 = [(PXGSingleViewLayout *)self delegate];
    [v21 singleViewLayout:self desiredSizeForReferenceSize:{v16, v18}];
    v16 = v22;
    v18 = v23;
LABEL_8:

    goto LABEL_9;
  }

  if (v26 == 1)
  {
    v21 = [(PXGSingleViewLayout *)self contentView];
    if (!v21)
    {
      v16 = 0.0;
      goto LABEL_8;
    }

    v27 = [(PXGSingleViewLayout *)self contentView];
    [v27 sizeThatFits:{1.79769313e308, v18}];
    v16 = v29;
    goto LABEL_21;
  }

  if (!v26)
  {
    v21 = [(PXGSingleViewLayout *)self contentView];
    if (!v21)
    {
      v18 = 0.0;
      goto LABEL_8;
    }

    v27 = [(PXGSingleViewLayout *)self contentView];
    [v27 sizeThatFits:{v16, 1.79769313e308}];
    v18 = v28;
LABEL_21:

    goto LABEL_8;
  }

  v16 = *MEMORY[0x277CBF3A8];
  v18 = *(MEMORY[0x277CBF3A8] + 8);
LABEL_9:
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __37__PXGSingleViewLayout__updateContent__block_invoke;
  v31[3] = &unk_2782A7A70;
  *&v31[5] = v10;
  *&v31[6] = v8;
  *&v31[7] = v16;
  *&v31[8] = v18;
  v32 = v20;
  v31[4] = self;
  [(PXGLayout *)self modifySpritesInRange:0x100000000 state:v31];
  v24 = v14 + v10 + v16;
  v25 = 0.0;
  if (v16 <= 0.0)
  {
    v24 = 0.0;
  }

  if (v18 > 0.0)
  {
    v25 = v12 + v8 + v18;
  }

  [(PXGLayout *)self setContentSize:v24, v25];
}

uint64_t __37__PXGSingleViewLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5)
{
  v9 = *(a1 + 72);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v25.origin.x = v10;
  v25.origin.y = v11;
  v25.size.width = v12;
  v25.size.height = v13;
  MidX = CGRectGetMidX(v25);
  v26.origin.x = v10;
  v26.origin.y = v11;
  v26.size.width = v12;
  v26.size.height = v13;
  MidY = CGRectGetMidY(v26);
  v27.origin.x = v10;
  v27.origin.y = v11;
  v27.size.width = v12;
  v27.size.height = v13;
  Width = CGRectGetWidth(v27);
  v28.origin.x = v10;
  v28.origin.y = v11;
  v28.size.width = v12;
  v28.size.height = v13;
  Height = CGRectGetHeight(v28);
  v17.f64[0] = Width;
  v17.f64[1] = Height;
  *a3 = MidX;
  *(a3 + 8) = MidY;
  *(a3 + 16) = v9;
  *(a3 + 24) = vcvt_f32_f64(v17);
  *a4 = PXGSpriteStyleDefault;
  *(a4 + 16) = unk_21AE2E270;
  *(a4 + 64) = xmmword_21AE2E2A0;
  *(a4 + 80) = unk_21AE2E2B0;
  *(a4 + 32) = xmmword_21AE2E280;
  *(a4 + 48) = unk_21AE2E290;
  *(a4 + 128) = xmmword_21AE2E2E0;
  *(a4 + 144) = unk_21AE2E2F0;
  *(a4 + 96) = xmmword_21AE2E2C0;
  *(a4 + 112) = unk_21AE2E2D0;
  [*(a1 + 32) alpha];
  *&v18 = v18;
  *a4 = LODWORD(v18);
  result = [*(a1 + 32) cornerRadius];
  *(a4 + 36) = v20;
  *(a4 + 40) = v21;
  *(a4 + 44) = v22;
  *(a4 + 48) = v23;
  *a5 = 2561;
  a5[16] = *(*(a1 + 32) + 872);
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
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSingleViewLayout _invalidateContent]"];
      [v6 handleFailureInFunction:v7 file:@"PXGSingleViewLayout.m" lineNumber:186 description:{@"invalidating %lu after it already has been updated", 1}];

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

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSingleViewLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGSingleViewLayout.m" lineNumber:182 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
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
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSingleViewLayout update]"];
      [v5 handleFailureInFunction:v6 file:@"PXGSingleViewLayout.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXGSingleViewLayout *)self _updateContent];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      v7 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSingleViewLayout update]"];
      [v7 handleFailureInFunction:v8 file:@"PXGSingleViewLayout.m" lineNumber:176 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v9 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXGSingleViewLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXGSingleViewLayout.m" lineNumber:168 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  if (a3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXGSingleViewLayout.m" lineNumber:158 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v4 = [(PXGLayout *)self spriteReferenceForSpriteIndex:?];
  v5 = [(PXGSingleViewLayout *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0 || (-[PXGSingleViewLayout delegate](self, "delegate"), v7 = objc_claimAutoreleasedReturnValue(), [v7 singleViewLayout:self hitTestResultForSpriteReference:v4], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v8 = [[PXGHitTestResult alloc] initWithSpriteReference:v4 layout:self identifier:@"PXGHitTestResultGenericSingleView" userData:0];
  }

  return v8;
}

- (PXGSpriteReference)viewSpriteReference
{
  v3 = [(PXGSingleViewLayout *)self viewSpriteIndex];

  return [(PXGLayout *)self spriteReferenceForSpriteIndex:v3];
}

- (void)setCornerRadius:(id)a3
{
  v7.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v7.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  if ((vminv_u16(vmovn_s32(vceqq_f32(self->_cornerRadius, v7))) & 1) == 0)
  {
    self->_cornerRadius.var0.var0.topLeft = v3;
    self->_cornerRadius.var0.var0.topRight = v4;
    self->_cornerRadius.var0.var0.bottomLeft = v5;
    self->_cornerRadius.var0.var0.bottomRight = v6;
    [(PXGSingleViewLayout *)self _invalidateContent:*&a3.var0.var0.var0];
  }
}

- (void)setZPosition:(float)a3
{
  if (self->_zPosition != a3)
  {
    self->_zPosition = a3;
    [(PXGSingleViewLayout *)self _invalidateContent];
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  p_padding = &self->_padding;
  if ((PXEdgeInsetsEqualToEdgeInsets() & 1) == 0)
  {
    p_padding->top = top;
    p_padding->left = left;
    p_padding->bottom = bottom;
    p_padding->right = right;

    [(PXGSingleViewLayout *)self _invalidateContent];
  }
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(PXGSingleViewLayout *)self _invalidateContent];
  }
}

- (void)setContentViewClass:(Class)a3
{
  if (self->_contentViewClass != a3)
  {
    objc_storeStrong(&self->_contentViewClass, a3);

    [(PXGSingleViewLayout *)self _invalidateMediaVersion];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    object = v5;
    if (contentView)
    {
      objc_setAssociatedObject(contentView, PXGSingleViewLayoutAssociationKey, 0, 0);
    }

    objc_storeStrong(&self->_contentView, a3);
    if (object)
    {
      objc_setAssociatedObject(object, PXGSingleViewLayoutAssociationKey, self, 0);
    }

    [(PXGSingleViewLayout *)self _invalidateMediaVersion];
    v5 = object;
  }
}

- (void)alphaDidChange
{
  v3.receiver = self;
  v3.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v3 alphaDidChange];
  [(PXGSingleViewLayout *)self _invalidateContent];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v3 displayScaleDidChange];
  [(PXGSingleViewLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v3 referenceSizeDidChange];
  [(PXGSingleViewLayout *)self _invalidateContent];
}

- (void)appearStateDidChange
{
  v6.receiver = self;
  v6.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v6 appearStateDidChange];
  v3 = [(PXGSingleViewLayout *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PXGSingleViewLayout *)self delegate];
    [v5 appearStateDidChangeForSingleViewLayout:self];
  }
}

- (void)dealloc
{
  contentView = self->_contentView;
  if (contentView)
  {
    objc_setAssociatedObject(contentView, PXGSingleViewLayoutAssociationKey, 0, 0);
  }

  v4.receiver = self;
  v4.super_class = PXGSingleViewLayout;
  [(PXGLayout *)&v4 dealloc];
}

- (PXGSingleViewLayout)init
{
  v7.receiver = self;
  v7.super_class = PXGSingleViewLayout;
  v2 = [(PXGLayout *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(PXGLayout *)v2 setContentSource:v2];
    v4 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:0];
    axSpriteIndexes = v3->_axSpriteIndexes;
    v3->_axSpriteIndexes = v4;

    *&v3->_cornerRadius.var0.var0.topLeft = 0;
    *&v3->_cornerRadius.var0.byIndex[2] = 0;
    v3->_safeAreaEdgeMask = 0;
  }

  return v3;
}

@end