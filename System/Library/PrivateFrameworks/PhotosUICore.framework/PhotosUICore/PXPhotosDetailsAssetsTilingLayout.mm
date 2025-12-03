@interface PXPhotosDetailsAssetsTilingLayout
- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier;
- (CGRect)_placeholderFrame;
- (CGRect)contentBounds;
- (UIEdgeInsets)contentInset;
- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block;
- (void)prepareLayout;
- (void)setPlaceholderMode:(int64_t)mode;
@end

@implementation PXPhotosDetailsAssetsTilingLayout

- (CGRect)_placeholderFrame
{
  layoutSnapshot = [(PXEngineDrivenAssetsTilingLayout *)self layoutSnapshot];
  v4 = layoutSnapshot;
  if (layoutSnapshot)
  {
    [layoutSnapshot contentRect];
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v6 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
  }

  if (v10 == 0.0)
  {
    [(PXTilingLayout *)self referenceSize];
    v10 = v11;
  }

  v12 = +[PXPhotosDetailsSettings sharedInstance];
  [v12 assetsWidgetPlaceholderAspectRatio];
  v14 = v10 * v13;

  v15 = v6;
  v16 = v8;
  v17 = v10;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (BOOL)getGeometry:(PXTileGeometry *)geometry group:(unint64_t *)group userData:(id *)data forTileWithIdentifier:(PXTileIdentifier *)identifier
{
  if (identifier->length == 1 && identifier->index[0] >> 1 == 16050)
  {
    v7 = [(PXPhotosDetailsAssetsTilingLayout *)self placeholderMode:geometry];
    if (v7)
    {
      [(PXPhotosDetailsAssetsTilingLayout *)self _placeholderFrame];
      [(PXTilingLayout *)self coordinateSpaceIdentifier];
      PXRectGetCenter();
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PXPhotosDetailsAssetsTilingLayout;
    v8 = *&identifier->index[5];
    v11[2] = *&identifier->index[3];
    v11[3] = v8;
    v11[4] = *&identifier->index[7];
    v12 = identifier->index[9];
    v9 = *&identifier->index[1];
    v11[0] = *&identifier->length;
    v11[1] = v9;
    LOBYTE(v7) = [(PXEngineDrivenAssetsTilingLayout *)&v13 getGeometry:geometry group:group userData:data forTileWithIdentifier:v11];
  }

  return v7;
}

- (void)enumerateTilesInRect:(CGRect)rect withOptions:(id)options usingBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  v54.receiver = self;
  v54.super_class = PXPhotosDetailsAssetsTilingLayout;
  [(PXEngineDrivenAssetsTilingLayout *)&v54 enumerateTilesInRect:options withOptions:blockCopy usingBlock:x, y, width, height];
  placeholderMode = [(PXPhotosDetailsAssetsTilingLayout *)self placeholderMode];
  if ((placeholderMode - 1) <= 1)
  {
    v53 = 0;
    if (placeholderMode == 1)
    {
      v13 = 32100;
    }

    else
    {
      v13 = 32101;
    }

    v14 = *(off_1E7722248 + 9);
    v49 = *(off_1E7722248 + 8);
    v50 = v14;
    v15 = *(off_1E7722248 + 11);
    v51 = *(off_1E7722248 + 10);
    v52 = v15;
    v16 = *(off_1E7722248 + 5);
    v45 = *(off_1E7722248 + 4);
    v46 = v16;
    v17 = *(off_1E7722248 + 7);
    v47 = *(off_1E7722248 + 6);
    v48 = v17;
    v18 = *(off_1E7722248 + 1);
    v41 = *off_1E7722248;
    v42 = v18;
    v19 = *(off_1E7722248 + 3);
    v43 = *(off_1E7722248 + 2);
    v44 = v19;
    v39 = 0;
    v40 = 0;
    *&v21 = 1;
    *(&v21 + 1) = v13;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    *&v26 = 0;
    if ([(PXPhotosDetailsAssetsTilingLayout *)self getGeometry:&v41 group:&v40 userData:&v39 forTileWithIdentifier:&v21])
    {
      v20 = blockCopy[2];
      v33[0] = 1;
      v33[1] = v13;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0;
      v29 = v49;
      v30 = v50;
      v31 = v51;
      v32 = v52;
      v25 = v45;
      v26 = v46;
      v27 = v47;
      v28 = v48;
      v21 = v41;
      v22 = v42;
      v23 = v43;
      v24 = v44;
      v20(blockCopy, v33, &v21, v40, v39, &v53);
    }
  }
}

- (CGRect)contentBounds
{
  if ([(PXPhotosDetailsAssetsTilingLayout *)self placeholderMode])
  {
    v3 = *MEMORY[0x1E695F058];
    v4 = *(MEMORY[0x1E695F058] + 8);
    v5 = *(MEMORY[0x1E695F058] + 16);
    v6 = *(MEMORY[0x1E695F058] + 24);
    [(PXPhotosDetailsAssetsTilingLayout *)self _placeholderFrame];
    v18.origin.x = v7;
    v18.origin.y = v8;
    v18.size.width = v9;
    v18.size.height = v10;
    v16.origin.x = v3;
    v16.origin.y = v4;
    v16.size.width = v5;
    v16.size.height = v6;
    CGRectUnion(v16, v18);
    [(PXPhotosDetailsAssetsTilingLayout *)self contentInset];
    sub_1A524D1F4();
  }

  v15.receiver = self;
  v15.super_class = PXPhotosDetailsAssetsTilingLayout;
  [(PXEngineDrivenAssetsTilingLayout *)&v15 contentBounds];
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIEdgeInsets)contentInset
{
  v16.receiver = self;
  v16.super_class = PXPhotosDetailsAssetsTilingLayout;
  [(PXTilingLayout *)&v16 contentInset];
  v4 = v3;
  v6 = v5;
  spec = [(PXPhotosDetailsAssetsTilingLayout *)self spec];
  [spec contentGuideInsets];
  v9 = v8;
  v11 = v10;

  v12 = v4;
  v13 = v9;
  v14 = v6;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)setPlaceholderMode:(int64_t)mode
{
  if (self->_placeholderMode != mode)
  {
    self->_placeholderMode = mode;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)prepareLayout
{
  v2.receiver = self;
  v2.super_class = PXPhotosDetailsAssetsTilingLayout;
  [(PXTilingLayout *)&v2 prepareLayout];
}

@end