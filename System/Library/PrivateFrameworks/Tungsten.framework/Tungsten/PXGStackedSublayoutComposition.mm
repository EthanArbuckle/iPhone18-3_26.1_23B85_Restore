@interface PXGStackedSublayoutComposition
- (CGRect)contentBounds;
- (PXGStackedSublayoutComposition)init;
- (UIEdgeInsets)padding;
- (void)referenceSizeDidChange;
- (void)setAxis:(int64_t)a3;
- (void)setInterlayoutSpacing:(double)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)updateEstimatedSublayoutGeometries;
- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)a3 usingSublayoutUpdateBlock:(id)a4;
@end

@implementation PXGStackedSublayoutComposition

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

- (CGRect)contentBounds
{
  if ([(PXGSublayoutComposition *)self numberOfSublayouts])
  {
    [(PXGSublayoutComposition *)self sublayoutGeometries];
    if (![(PXGStackedSublayoutComposition *)self axis])
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:a2 object:self file:@"PXGStackedSublayoutComposition.m" lineNumber:161 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    [(PXGStackedSublayoutComposition *)self padding];
    PXEdgeInsetsInvert();
    PXEdgeInsetsInsetRect();
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (void)updateSublayoutGeometriesFromAnchorSublayoutIndex:(int64_t)a3 usingSublayoutUpdateBlock:(id)a4
{
  v6 = a4;
  v7 = [(PXGSublayoutComposition *)self numberOfSublayouts];
  v37 = 0;
  v38 = &v37;
  v39 = 0x3010000000;
  v40 = "";
  v41 = *MEMORY[0x277CBF3A8];
  v8 = [(PXGSublayoutComposition *)self sublayoutGeometries];
  [(PXGStackedSublayoutComposition *)self axis];
  PXMinRectEdgeForAxis();
  v9 = PXEdgesFromCGRectEdge();
  PXMaxRectEdgeForAxis();
  v10 = PXEdgesFromCGRectEdge();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __110__PXGStackedSublayoutComposition_updateSublayoutGeometriesFromAnchorSublayoutIndex_usingSublayoutUpdateBlock___block_invoke;
  v29[3] = &unk_2782A8D70;
  v32 = a3;
  v33 = v9;
  v34 = v10;
  v35 = v7;
  v36 = v8;
  v11 = v6;
  v30 = v11;
  v31 = &v37;
  v12 = MEMORY[0x21CEE40A0](v29);
  v12[2](v12, a3);
  v13 = v38[4];
  v14 = v38[5];
  v15 = [(PXGStackedSublayoutComposition *)self axis];
  if (v15 == 1)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  if (v15 == 1)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 1.0;
  }

  if (a3 >= 1)
  {
    v18 = *MEMORY[0x277CBF348];
    v19 = *(MEMORY[0x277CBF348] + 8);
    v20 = -v17;
    v21 = -v16;
    v22 = a3 + 1;
    p_var0 = &v8[a3 - 1].var4.var0;
    do
    {
      v24 = p_var0[1] + v16 * v19;
      *p_var0 = *p_var0 + v17 * v18;
      p_var0[1] = v24;
      v12[2](v12, v22 - 2);
      v25 = p_var0[1];
      *p_var0 = *p_var0 + v20 * v38[4];
      p_var0[1] = v25 + v21 * v38[5];
      v18 = v18 + v20 * v38[4];
      v19 = v19 + v21 * v38[5];
      --v22;
      p_var0 -= 17;
    }

    while (v22 > 1);
  }

  v26 = a3 + 1;
  if (a3 + 1 < v7)
  {
    p_var1 = &v8[a3 + 1].var4.var1;
    do
    {
      v28 = *p_var1 + v16 * v14;
      *(p_var1 - 1) = *(p_var1 - 1) + v17 * v13;
      *p_var1 = v28;
      v12[2](v12, v26);
      v13 = v13 + v17 * v38[4];
      v14 = v14 + v16 * v38[5];
      ++v26;
      p_var1 += 17;
    }

    while (v7 != v26);
  }

  _Block_object_dispose(&v37, 8);
}

uint64_t __110__PXGStackedSublayoutComposition_updateSublayoutGeometriesFromAnchorSublayoutIndex_usingSublayoutUpdateBlock___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  result = PXSizeSubtract();
  v3 = *(*(a1 + 40) + 8);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  return result;
}

- (void)updateEstimatedSublayoutGeometries
{
  v4 = [(PXGSublayoutComposition *)self numberOfSublayouts];
  v5 = [(PXGSublayoutComposition *)self sublayoutGeometries];
  v6 = [(PXGSublayoutComposition *)self layout];
  [(PXGSublayoutComposition *)self referenceSize];
  v8 = v7;
  v10 = v9;
  [(PXGStackedSublayoutComposition *)self padding];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [(PXGStackedSublayoutComposition *)self axis];
  v20 = 0.0;
  if (v19 == 1)
  {
    v8 = v8 - (v14 + v18);
    v21 = 1.0;
  }

  else if (v19 == 2)
  {
    v10 = v10 - (v12 + v16);
    v20 = 1.0;
    v21 = 0.0;
  }

  else
  {
    v21 = 0.0;
    if (!v19)
    {
      v22 = [MEMORY[0x277CCA890] currentHandler];
      [v22 handleFailureInMethod:a2 object:self file:@"PXGStackedSublayoutComposition.m" lineNumber:65 description:@"Code which should be unreachable has been reached"];

      abort();
    }
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __68__PXGStackedSublayoutComposition_updateEstimatedSublayoutGeometries__block_invoke;
  v26[3] = &unk_2782A8D48;
  v28 = v5;
  v29 = v8;
  v30 = v10;
  v31 = 0;
  v23 = v6;
  v27 = v23;
  [(PXGSublayoutComposition *)self enumerateSublayoutProvidersForRange:0 usingBlock:v4, v26];
  [(PXGStackedSublayoutComposition *)self interlayoutSpacing];
  if (v4 >= 1)
  {
    p_var2 = &v5->var4.var2;
    do
    {
      *(p_var2 - 2) = v14;
      *(p_var2 - 1) = v12;
      *p_var2 = 0.0;
      v14 = v14 + v20 * (v24 + *(p_var2 - 4));
      v12 = v12 + v21 * (v24 + *(p_var2 - 3));
      p_var2 += 17;
      --v4;
    }

    while (v4);
  }
}

void __68__PXGStackedSublayoutComposition_updateEstimatedSublayoutGeometries__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = a2;
  v7 = a3 + a4;
  if (v7 >= 1)
  {
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      v10 = *(a1 + 40) + v8;
      *v10 = *(a1 + 48);
      *(v10 + 24) = *(a1 + 64);
      if (PXSizeIsNull())
      {
        [v13 layout:*(a1 + 32) estimatedContentSizeForSublayoutAtIndex:i referenceSize:{*v10, *(v10 + 8)}];
        *(v10 + 32) = v11;
        *(v10 + 40) = v12;
      }

      v8 += 136;
    }
  }
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXGStackedSublayoutComposition;
  [(PXGSublayoutComposition *)&v3 referenceSizeDidChange];
  [(PXGSublayoutComposition *)self invalidateSublayoutContentSizes];
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

    [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
  }
}

- (void)setInterlayoutSpacing:(double)a3
{
  if (self->_interlayoutSpacing != a3)
  {
    self->_interlayoutSpacing = a3;
    [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
  }
}

- (void)setAxis:(int64_t)a3
{
  if (self->_axis != a3)
  {
    self->_axis = a3;
    if (!a3)
    {
      v6 = [MEMORY[0x277CCA890] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXGStackedSublayoutComposition.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"axis != PXAxisUndefined"}];
    }

    [(PXGSublayoutComposition *)self invalidateEstimatedSublayoutGeometries];
  }
}

- (PXGStackedSublayoutComposition)init
{
  v3.receiver = self;
  v3.super_class = PXGStackedSublayoutComposition;
  result = [(PXGStackedSublayoutComposition *)&v3 init];
  if (result)
  {
    result->_axis = 1;
  }

  return result;
}

@end