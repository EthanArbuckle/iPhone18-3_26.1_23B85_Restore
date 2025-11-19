@interface PXSingleTileLayout
- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6;
- (CGRect)contentBounds;
- (CGSize)preferredSize;
- (PXSingleTileLayout)init;
- (PXSingleTileLayout)initWithTileIdentifier:(PXTileIdentifier *)a3;
- (PXTileIdentifier)tileIdentifier;
- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5;
- (void)prepareLayout;
- (void)setPreferredSize:(CGSize)a3;
- (void)setReferenceSize:(CGSize)a3;
@end

@implementation PXSingleTileLayout

- (CGSize)preferredSize
{
  width = self->_preferredSize.width;
  height = self->_preferredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXTileIdentifier)tileIdentifier
{
  v3 = *&self[2].index[4];
  *&retstr->index[3] = *&self[2].index[2];
  *&retstr->index[5] = v3;
  *&retstr->index[7] = *&self[2].index[6];
  retstr->index[9] = self[2].index[8];
  v4 = *self[2].index;
  *&retstr->length = *&self[1].index[9];
  *&retstr->index[1] = v4;
  return self;
}

- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6
{
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  [(PXSingleTileLayout *)self tileIdentifier];
  v15 = *&a6->index[5];
  v27[2] = *&a6->index[3];
  v27[3] = v15;
  v27[4] = *&a6->index[7];
  v28 = a6->index[9];
  v16 = *&a6->index[1];
  v27[0] = *&a6->length;
  v27[1] = v16;
  v17 = *&v27[0] == v29[0];
  if (*&v27[0] && *&v27[0] == v29[0])
  {
    v18 = 1;
    do
    {
      v19 = *(v27 + v18);
      v20 = v29[v18];
      v17 = v19 == v20;
      if (v18 >= *&v27[0])
      {
        break;
      }

      ++v18;
    }

    while (v19 == v20);
  }

  if (v17)
  {
    [(PXSingleTileLayout *)self contentBounds];
    v11 = v21;
    v12 = v22;
    v13 = v23;
    v14 = v24;
  }

  v30.origin.x = v11;
  v30.origin.y = v12;
  v30.size.width = v13;
  v30.size.height = v14;
  IsNull = CGRectIsNull(v30);
  if (!IsNull)
  {
    if (a3)
    {
      [(PXTilingLayout *)self coordinateSpaceIdentifier];
      PXRectGetCenter();
    }

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 0;
    }
  }

  return !IsNull;
}

- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__PXSingleTileLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  aBlock[3] = &unk_1E7746A20;
  v18 = v23;
  aBlock[4] = self;
  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  v13 = v12;
  v17 = v13;
  v14 = _Block_copy(aBlock);
  [(PXSingleTileLayout *)self tileIdentifier];
  v14[2](v14, &v15);

  _Block_object_dispose(v23, 8);
}

void __66__PXSingleTileLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v4 = *(off_1E7722248 + 9);
    v44 = *(off_1E7722248 + 8);
    v45 = v4;
    v5 = *(off_1E7722248 + 11);
    v46 = *(off_1E7722248 + 10);
    v47 = v5;
    v6 = *(off_1E7722248 + 5);
    v40 = *(off_1E7722248 + 4);
    v41 = v6;
    v7 = *(off_1E7722248 + 7);
    v42 = *(off_1E7722248 + 6);
    v43 = v7;
    v8 = *(off_1E7722248 + 1);
    v37.origin = *off_1E7722248;
    v37.size = v8;
    v9 = *(off_1E7722248 + 3);
    v38 = *(off_1E7722248 + 2);
    v39 = v9;
    v35 = 0;
    v36 = 0;
    v10 = *(a1 + 32);
    v11 = *(a2 + 48);
    v23 = *(a2 + 32);
    v24 = v11;
    v25 = *(a2 + 64);
    *&v26 = *(a2 + 80);
    v12 = *(a2 + 16);
    v22.origin = *a2;
    v22.size = v12;
    v13 = [v10 getGeometry:&v37 group:&v36 userData:&v35 forTileWithIdentifier:&v22];
    v14 = v35;
    if (v13)
    {
      if (CGRectIntersectsRect(*(a1 + 56), v37))
      {
        v17 = *(a1 + 40);
        v18 = *(*(a1 + 48) + 8);
        v19 = *(v17 + 16);
        v20 = *(a2 + 48);
        v33[2] = *(a2 + 32);
        v33[3] = v20;
        v33[4] = *(a2 + 64);
        v34 = *(a2 + 80);
        v21 = *(a2 + 16);
        v33[0] = *a2;
        v33[1] = v21;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = v47;
        v25 = v40;
        v26 = v41;
        v27 = v42;
        v28 = v43;
        v22 = v37;
        v23 = v38;
        v24 = v39;
        v19(v17, v33, &v22, v36, v14, v18 + 24, v15, v16);
      }
    }
  }
}

- (CGRect)contentBounds
{
  x = self->_contentBounds.origin.x;
  y = self->_contentBounds.origin.y;
  width = self->_contentBounds.size.width;
  height = self->_contentBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)prepareLayout
{
  v9.receiver = self;
  v9.super_class = PXSingleTileLayout;
  [(PXTilingLayout *)&v9 prepareLayout];
  [(PXTilingLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  [(PXSingleTileLayout *)self preferredSize];
  self->_contentBounds.origin = *MEMORY[0x1E695F058];
  if (v7 < 0.0)
  {
    v7 = v4;
  }

  if (v8 < 0.0)
  {
    v8 = v6;
  }

  self->_contentBounds.size.width = v7;
  self->_contentBounds.size.height = v8;
}

- (void)setPreferredSize:(CGSize)a3
{
  if (a3.width != self->_preferredSize.width || a3.height != self->_preferredSize.height)
  {
    self->_preferredSize = a3;
    v6 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v6 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v6 invalidateContentBounds];
    [(PXTilingLayoutInvalidationContext *)v6 invalidateScrollBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v6];
  }
}

- (void)setReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PXTilingLayout *)self referenceSize];
  v7 = v6;
  v9 = v8;
  v12.receiver = self;
  v12.super_class = PXSingleTileLayout;
  [(PXTilingLayout *)&v12 setReferenceSize:width, height];
  if (width != v7 || height != v9)
  {
    v11 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v11 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v11 invalidateContentBounds];
    [(PXTilingLayoutInvalidationContext *)v11 invalidateScrollBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v11];
  }
}

- (PXSingleTileLayout)initWithTileIdentifier:(PXTileIdentifier *)a3
{
  v14.receiver = self;
  v14.super_class = PXSingleTileLayout;
  result = [(PXTilingLayout *)&v14 init];
  if (result)
  {
    v5 = *&a3->index[1];
    *&result->_tileIdentifier.length = *&a3->length;
    *&result->_tileIdentifier.index[1] = v5;
    v7 = *&a3->index[5];
    v6 = *&a3->index[7];
    v8 = *&a3->index[3];
    result->_tileIdentifier.index[9] = a3->index[9];
    *&result->_tileIdentifier.index[5] = v7;
    *&result->_tileIdentifier.index[7] = v6;
    *&result->_tileIdentifier.index[3] = v8;
    __asm { FMOV            V0.2D, #-1.0 }

    result->_preferredSize = _Q0;
  }

  return result;
}

- (PXSingleTileLayout)init
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  return [(PXSingleTileLayout *)self initWithTileIdentifier:v3];
}

@end