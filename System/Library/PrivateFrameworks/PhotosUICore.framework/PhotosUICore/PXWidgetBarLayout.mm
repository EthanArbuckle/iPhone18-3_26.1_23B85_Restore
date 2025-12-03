@interface PXWidgetBarLayout
+ (PXTileIdentifier)tileIdentifier;
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGRect)contentBounds;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)prepareLayout;
- (void)setHeight:(double)height;
- (void)setReferenceSize:(CGSize)size;
@end

@implementation PXWidgetBarLayout

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  v10 = *(off_1E7722248 + 5);
  v44 = *(off_1E7722248 + 4);
  v45 = v10;
  v46 = *(off_1E7722248 + 6);
  v43[0] = *(off_1E7722248 + 129);
  *(v43 + 3) = *(off_1E7722248 + 33);
  v11 = *(off_1E7722248 + 168);
  v41 = *(off_1E7722248 + 152);
  v42 = v11;
  v12 = objc_opt_class();
  if (v12)
  {
    [v12 tileIdentifier];
    v13 = *&v39[0];
  }

  else
  {
    v13 = 0;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
  }

  v14 = *&identifier->index[5];
  v37[2] = *&identifier->index[3];
  v37[3] = v14;
  v37[4] = *&identifier->index[7];
  v38 = identifier->index[9];
  v15 = *&identifier->index[1];
  v37[0] = *&identifier->length;
  v37[1] = v15;
  v16 = *&v37[0] == v13;
  if (*&v37[0] && *&v37[0] == v13)
  {
    v17 = 1;
    do
    {
      v18 = *(v37 + v17);
      v19 = *(v39 + v17);
      v16 = v18 == v19;
      if (v17 >= v13)
      {
        break;
      }

      ++v17;
    }

    while (v18 == v19);
  }

  if (v16)
  {
    [(PXWidgetBarLayout *)self contentBounds];
    [(PXTilingLayout *)self coordinateSpaceIdentifier];
    v43[0] = 0;
    *(v43 + 3) = 0;
    PXRectGetCenter();
  }

  v20 = *(off_1E7722248 + 128);
  v21 = *(off_1E7722248 + 23);
  v22 = *(off_1E7722248 + 1);
  v23 = *(off_1E7722248 + 2);
  v24 = *(off_1E7722248 + 3);
  v25 = *(off_1E7722248 + 4);
  v26 = *(off_1E7722248 + 5);
  v27 = *(off_1E7722248 + 6);
  v28 = *(off_1E7722248 + 7);
  v30 = *(off_1E7722248 + 14);
  v29 = *(off_1E7722248 + 15);
  v31 = *(off_1E7722248 + 17);
  v32 = *(off_1E7722248 + 18);
  if (geometry)
  {
    geometry->frame.origin.x = *off_1E7722248;
    geometry->frame.origin.y = v22;
    geometry->frame.size.width = v23;
    geometry->frame.size.height = v24;
    geometry->center.x = v25;
    geometry->center.y = v26;
    geometry->size.width = v27;
    geometry->size.height = v28;
    v33 = v45;
    *&geometry->transform.a = v44;
    *&geometry->transform.c = v33;
    *&geometry->transform.tx = v46;
    geometry->alpha = v30;
    geometry->zPosition = v29;
    geometry->hidden = v20;
    v34 = v43[0];
    *(&geometry->hidden + 1) = *(v43 + 3);
    *(&geometry->hidden + 1) = v34;
    geometry->contentSize.width = v31;
    geometry->contentSize.height = v32;
    v35 = v41;
    geometry->contentsRect.size = v42;
    geometry->contentsRect.origin = v35;
    geometry->coordinateSpaceIdentifier = v21;
  }

  if (data)
  {
    *data = 0;
  }

  return 0;
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  blockCopy = block;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__PXWidgetBarLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  aBlock[3] = &unk_1E7746A20;
  v20 = v25;
  aBlock[4] = self;
  v21 = x;
  v22 = y;
  v23 = width;
  v24 = height;
  v13 = blockCopy;
  v19 = v13;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_class();
  if (v15)
  {
    [v15 tileIdentifier];
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  v14[2](v14, v16);

  _Block_object_dispose(v25, 8);
}

void __65__PXWidgetBarLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
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
  v6.receiver = self;
  v6.super_class = PXWidgetBarLayout;
  [(PXTilingLayout *)&v6 prepareLayout];
  v3 = *(MEMORY[0x1E695F058] + 16);
  self->_contentBounds.origin = *MEMORY[0x1E695F058];
  self->_contentBounds.size = v3;
  [(PXTilingLayout *)self referenceSize];
  self->_contentBounds.size.width = v4;
  [(PXWidgetBarLayout *)self height];
  self->_contentBounds.size.height = v5;
}

- (void)setReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PXTilingLayout *)self referenceSize];
  v7 = v6;
  v9 = v8;
  v12.receiver = self;
  v12.super_class = PXWidgetBarLayout;
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

- (void)setHeight:(double)height
{
  if (self->_height != height)
  {
    self->_height = height;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateScrollBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

+ (PXTileIdentifier)tileIdentifier
{
  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  *&retstr->index[1] = 0u;
  *&retstr->index[3] = 0u;
  *&retstr->length = xmmword_1A5381060;
  return result;
}

@end