@interface PXPhotosDetailsHeaderTileLayout
- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6;
- (CGRect)_contentsRectForAspectRatio:(double)a3;
- (CGRect)_rectForTileWithIdentifier:(PXTileIdentifier *)a3;
- (CGRect)contentBounds;
- (CGRect)previewRect;
- (CGSize)_playButtonSize;
- (PXPhotosDetailsHeaderTileLayout)initWithSpec:(id)a3;
- (PXPhotosDetailsHeaderTileLayoutDelegate)delegate;
- (PXTileIdentifier)contentTileIdentifier;
- (PXTileIdentifier)tileIdentifierForTileKind:(SEL)a3;
- (double)_zPositionForTileWithIdentifier:(PXTileIdentifier *)a3;
- (id)_userDataForTileWithIdentifier:(PXTileIdentifier *)a3 inContainingRect:(CGRect)a4;
- (id)_viewSpecForTileWithIdentifier:(PXTileIdentifier *)a3 boundingSize:(CGSize)a4;
- (int64_t)tileKindForTileIdentifier:(PXTileIdentifier *)a3;
- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5;
- (void)setDelegate:(id)a3;
- (void)setReferenceSize:(CGSize)a3;
- (void)setSpec:(id)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation PXPhotosDetailsHeaderTileLayout

- (PXPhotosDetailsHeaderTileLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)_contentsRectForAspectRatio:(double)a3
{
  if (self->_delegateRespondsTo.contentsRectForAspectRatio)
  {
    v5 = [(PXPhotosDetailsHeaderTileLayout *)self delegate];
    [v5 photosDetailsHeaderTileLayout:self contentsRectForAspectRatio:a3];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *off_1E77221F8;
    v9 = *(off_1E77221F8 + 1);
    v11 = *(off_1E77221F8 + 2);
    v13 = *(off_1E77221F8 + 3);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (PXTileIdentifier)contentTileIdentifier
{
  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  *&retstr->index[1] = 0u;
  *&retstr->index[3] = 0u;
  *&retstr->length = 0u;
  v4 = [(PXPhotosDetailsHeaderTileLayout *)self style]== 1;

  return [(PXPhotosDetailsHeaderTileLayout *)self tileIdentifierForTileKind:v4];
}

- (PXTileIdentifier)tileIdentifierForTileKind:(SEL)a3
{
  retstr->index[9] = 0;
  *&retstr->index[5] = 0u;
  *&retstr->index[7] = 0u;
  *&retstr->index[1] = 0u;
  *&retstr->index[3] = 0u;
  retstr->length = 1;
  retstr->index[0] = a4;
  return self;
}

- (int64_t)tileKindForTileIdentifier:(PXTileIdentifier *)a3
{
  v3 = *&a3->index[5];
  v6[2] = *&a3->index[3];
  v6[3] = v3;
  v6[4] = *&a3->index[7];
  v7 = a3->index[9];
  v4 = *&a3->index[1];
  v6[0] = *&a3->length;
  v6[1] = v4;
  return *(v6 + *&v6[0]);
}

- (id)_userDataForTileWithIdentifier:(PXTileIdentifier *)a3 inContainingRect:(CGRect)a4
{
  if (a3->index[0] == 2)
  {
    PXViewSpecContextForMemoryTile();
  }

  v4 = [PXBasicTileUserData userDataWithViewSpec:0];

  return v4;
}

- (double)_zPositionForTileWithIdentifier:(PXTileIdentifier *)a3
{
  v3 = *&a3->index[5];
  v7[2] = *&a3->index[3];
  v7[3] = v3;
  v7[4] = *&a3->index[7];
  v8 = a3->index[9];
  v4 = *&a3->index[1];
  v7[0] = *&a3->length;
  v7[1] = v4;
  v5 = [(PXPhotosDetailsHeaderTileLayout *)self tileKindForTileIdentifier:v7];
  result = 0.0;
  if (v5 <= 3)
  {
    return dbl_1A5383220[v5];
  }

  return result;
}

- (id)_viewSpecForTileWithIdentifier:(PXTileIdentifier *)a3 boundingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = *&a3->index[5];
  v18 = *&a3->index[3];
  v19 = v7;
  v20 = *&a3->index[7];
  v21 = a3->index[9];
  v8 = *&a3->index[1];
  v16 = *&a3->length;
  v17 = v8;
  v9 = [(PXPhotosDetailsHeaderTileLayout *)self tileKindForTileIdentifier:&v16];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      if (self->_delegateRespondsTo.titleFontName)
      {
        v12 = [(PXPhotosDetailsHeaderTileLayout *)self delegate];
        [v12 photosDetailsHeaderTileLayoutFontName:self];
        objc_claimAutoreleasedReturnValue();
      }

      PXViewSpecOptionsWithTitleFontName();
    }

    if (v9 == 3)
    {
      v11 = 4003;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v10 = 4001;
    if (v9 != 1)
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v10;
    }

    else
    {
      v11 = 4002;
    }
  }

  v13 = [(PXPhotosDetailsHeaderTileLayout *)self spec];
  v16 = v11;
  *&v17 = width;
  *(&v17 + 1) = height;
  v14 = [v13 viewSpecWithDescriptor:&v16];

  return v14;
}

- (CGSize)_playButtonSize
{
  if (self->_delegateRespondsTo.playButtonSize)
  {
    v3 = [(PXPhotosDetailsHeaderTileLayout *)self delegate];
    [v3 photosDetailsHeaderTileLayoutPlayButtonSize:self];
    v5 = v4;
    v7 = v6;

    v8 = v5;
    v9 = v7;
  }

  else
  {
    spec = self->_spec;

    [(PXPhotosDetailsHeaderSpec *)spec playButtonSize];
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (CGRect)_rectForTileWithIdentifier:(PXTileIdentifier *)a3
{
  v4 = *&a3->index[5];
  v6[2] = *&a3->index[3];
  v6[3] = v4;
  v6[4] = *&a3->index[7];
  v7 = a3->index[9];
  v5 = *&a3->index[1];
  v6[0] = *&a3->length;
  v6[1] = v5;
  [(PXPhotosDetailsHeaderTileLayout *)self tileKindForTileIdentifier:v6];
  [(PXTilingLayout *)self contentInset];
  [(PXPhotosDetailsHeaderTileLayout *)self spec];
  [objc_claimAutoreleasedReturnValue() contentInsetEdges];
  sub_1A524D1D4();
}

- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6
{
  v11 = *&a6->index[5];
  v28 = *&a6->index[3];
  v29 = v11;
  v30 = *&a6->index[7];
  v31 = a6->index[9];
  v12 = *&a6->index[1];
  v26 = *&a6->length;
  v27 = v12;
  v13 = [(PXPhotosDetailsHeaderTileLayout *)self tileKindForTileIdentifier:&v26];
  v14 = [(PXPhotosDetailsHeaderTileLayout *)self style];
  v15 = [(PXPhotosDetailsHeaderTileLayout *)self style];
  if (!v13 && v14)
  {
    return 0;
  }

  v16 = v13 == 3 || v13 == 1;
  if (v16 && v15 != 1)
  {
    return 0;
  }

  v17 = *&a6->index[5];
  v28 = *&a6->index[3];
  v29 = v17;
  v30 = *&a6->index[7];
  v31 = a6->index[9];
  v18 = *&a6->index[1];
  v26 = *&a6->length;
  v27 = v18;
  [(PXPhotosDetailsHeaderTileLayout *)self _rectForTileWithIdentifier:&v26];
  width = v32.size.width;
  height = v32.size.height;
  if (CGRectIsNull(v32))
  {
    return 0;
  }

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
    v22 = *&a6->index[5];
    v28 = *&a6->index[3];
    v29 = v22;
    v30 = *&a6->index[7];
    v31 = a6->index[9];
    v23 = *&a6->index[1];
    v26 = *&a6->length;
    v27 = v23;
    v24 = [(PXPhotosDetailsHeaderTileLayout *)self _viewSpecForTileWithIdentifier:&v26 boundingSize:width, height];
    v25 = [PXBasicTileUserData userDataWithViewSpec:v24];
    *a5 = v25;
  }

  return 1;
}

- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  v12 = a5;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__PXPhotosDetailsHeaderTileLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke;
  aBlock[3] = &unk_1E7746A20;
  v24 = v29;
  aBlock[4] = self;
  v25 = x;
  v26 = y;
  v27 = width;
  v28 = height;
  v13 = v12;
  v23 = v13;
  v14 = _Block_copy(aBlock);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = v14[2];
  v16 = xmmword_1A5317AF0;
  v15(v14, &v16);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = vdupq_n_s64(1uLL);
  (v14[2])(v14, &v16);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = xmmword_1A52F8E10;
  (v14[2])(v14, &v16);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = xmmword_1A52F9790;
  (v14[2])(v14, &v16);

  _Block_object_dispose(v29, 8);
}

void __79__PXPhotosDetailsHeaderTileLayout_enumerateTilesInRect_withOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
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

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    v5 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v5 invalidateAllTiles];
    [(PXTilingLayoutInvalidationContext *)v5 invalidateContentBounds];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)setSpec:(id)a3
{
  v5 = a3;
  if (self->_spec != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_spec, a3);
    v6 = objc_alloc_init(PXTilingLayoutInvalidationContext);
    [(PXTilingLayoutInvalidationContext *)v6 invalidateAllTiles];
    [(PXTilingLayout *)self invalidateLayoutWithContext:v6];

    v5 = v7;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    p_delegateRespondsTo = &self->_delegateRespondsTo;
    p_delegateRespondsTo->contentsRectForAspectRatio = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->titleFontName = objc_opt_respondsToSelector() & 1;
    p_delegateRespondsTo->playButtonSize = objc_opt_respondsToSelector() & 1;
  }
}

- (CGRect)previewRect
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(PXPhotosDetailsHeaderTileLayout *)self tileIdentifierForTileKind:1];
  v7[2] = v11;
  v7[3] = v12;
  v7[4] = v13;
  v8 = v14;
  v7[0] = v9;
  v7[1] = v10;
  [(PXPhotosDetailsHeaderTileLayout *)self _rectForTileWithIdentifier:v7];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)contentBounds
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PXTilingLayout *)self referenceSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (void)setReferenceSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PXTilingLayout *)self referenceSize];
  v7 = v6;
  v9 = v8;
  v11.receiver = self;
  v11.super_class = PXPhotosDetailsHeaderTileLayout;
  [(PXTilingLayout *)&v11 setReferenceSize:width, height];
  if (width != v7 || height != v9)
  {
    [(PXTilingLayout *)self invalidateLayout];
  }
}

- (PXPhotosDetailsHeaderTileLayout)initWithSpec:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXPhotosDetailsHeaderTileLayout;
  v6 = [(PXTilingLayout *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_spec, a3);
    v7->_useTitledPlayButton = 0;
    if ([v5 userInterfaceIdiom] == 5)
    {
      v7->_useTitledPlayButton = 1;
    }
  }

  return v7;
}

@end