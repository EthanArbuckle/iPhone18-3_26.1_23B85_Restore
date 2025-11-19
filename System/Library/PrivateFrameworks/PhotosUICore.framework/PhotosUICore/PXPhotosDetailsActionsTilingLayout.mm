@interface PXPhotosDetailsActionsTilingLayout
- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6;
- (CGRect)_frameForItemAtIndex:(int64_t)a3;
- (CGRect)_frameForSeparatorAtIndex:(int64_t)a3;
- (CGRect)contentBounds;
- (PXPhotosDetailsActionsTilingLayout)initWithNumberOfItems:(int64_t)a3;
- (double)_contentWidth;
- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5;
- (void)prepareLayout;
@end

@implementation PXPhotosDetailsActionsTilingLayout

- (CGRect)_frameForSeparatorAtIndex:(int64_t)a3
{
  [(PXPhotosDetailsActionsTilingLayout *)self separatorHeight];
  v6 = v5;
  [(PXPhotosDetailsActionsTilingLayout *)self rowHeight];
  v8 = v7;
  [(PXTilingLayout *)self contentInset];
  v10 = v9;
  [(PXTilingLayout *)self contentInset];
  v12 = v11;
  [(PXPhotosDetailsActionsTilingLayout *)self _contentWidth];
  v14 = v13;
  [(PXPhotosDetailsActionsTilingLayout *)self separatorHeight];
  v16 = v15;
  if (![(PXPhotosDetailsActionsTilingLayout *)self shouldInsetAllSeparators])
  {
    [(PXTilingLayout *)self contentInset];
    v14 = v14 + v17;
    if (!a3 || [(PXPhotosDetailsActionsTilingLayout *)self numberOfItems]== a3)
    {
      [(PXTilingLayout *)self contentInset];
      v10 = v10 - v18;
      [(PXTilingLayout *)self contentInset];
      v14 = v14 + v19;
    }
  }

  v20 = (v6 + v8) * a3 + v12;
  v21 = v10;
  v22 = v14;
  v23 = v16;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v20;
  result.origin.x = v21;
  return result;
}

- (CGRect)_frameForItemAtIndex:(int64_t)a3
{
  if (a3)
  {
    [(PXPhotosDetailsActionsTilingLayout *)self interItemSpacing];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  [(PXTilingLayout *)self contentInset];
  v8 = v7;
  [(PXTilingLayout *)self contentInset];
  v10 = v9;
  [(PXPhotosDetailsActionsTilingLayout *)self separatorHeight];
  v12 = v6 + v10 + v11;
  [(PXPhotosDetailsActionsTilingLayout *)self rowHeight];
  v14 = v13;
  [(PXPhotosDetailsActionsTilingLayout *)self separatorHeight];
  v16 = v12 + (v14 + v15) * a3;
  [(PXPhotosDetailsActionsTilingLayout *)self _contentWidth];
  v18 = v17;
  [(PXPhotosDetailsActionsTilingLayout *)self rowHeight];
  v20 = v19;
  v21 = v8;
  v22 = v16;
  v23 = v18;
  result.size.height = v20;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)_contentWidth
{
  [(PXPhotosDetailsActionsTilingLayout *)self contentBounds];
  v4 = v3;
  [(PXTilingLayout *)self contentInset];
  v6 = v4 - v5;
  [(PXTilingLayout *)self contentInset];
  return v6 - v7;
}

- (BOOL)getGeometry:(PXTileGeometry *)a3 group:(unint64_t *)a4 userData:(id *)a5 forTileWithIdentifier:(PXTileIdentifier *)a6
{
  if (a6->length - 3 > 2)
  {
    return 0;
  }

  v6 = a6->index[1];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || v6 != self->_dataSourceIdentifier)
  {
    return 0;
  }

  v11 = a6->index[0];
  v12 = a6->index[2];
  if (v11 == 6200435)
  {
    [(PXPhotosDetailsActionsTilingLayout *)self _frameForSeparatorAtIndex:v12];
  }

  else
  {
    if (v11 != 6200434)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = *&a6->index[5];
      v20[2] = *&a6->index[3];
      v20[3] = v17;
      v20[4] = *&a6->index[7];
      v21 = a6->index[9];
      v18 = *&a6->index[1];
      v20[0] = *&a6->length;
      v20[1] = v18;
      v19 = PXTileIdentifierDescription(v20);
      [v16 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsActionsTilingLayout.m" lineNumber:101 description:{@"Unexpected tile kind:%@", v19}];

      abort();
    }

    [(PXPhotosDetailsActionsTilingLayout *)self _frameForItemAtIndex:v12];
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
    *a5 = 0;
  }

  return 1;
}

- (void)enumerateTilesInRect:(CGRect)a3 withOptions:(id)a4 usingBlock:(id)a5
{
  v72 = *MEMORY[0x1E69E9840];
  v31 = a5;
  dataSourceIdentifier = self->_dataSourceIdentifier;
  v7 = *(off_1E7722248 + 9);
  v65 = *(off_1E7722248 + 8);
  v66 = v7;
  v8 = *(off_1E7722248 + 11);
  v67 = *(off_1E7722248 + 10);
  v68 = v8;
  v9 = *(off_1E7722248 + 5);
  v61 = *(off_1E7722248 + 4);
  v62 = v9;
  v10 = *(off_1E7722248 + 7);
  v63 = *(off_1E7722248 + 6);
  v64 = v10;
  v11 = *(off_1E7722248 + 1);
  v57 = *off_1E7722248;
  v58 = v11;
  v12 = *(off_1E7722248 + 3);
  v59 = *(off_1E7722248 + 2);
  v60 = v12;
  v56 = 0;
  v55 = 0;
  if ([(PXPhotosDetailsActionsTilingLayout *)self shouldShowSeparators]&& (v13 = [(PXPhotosDetailsActionsTilingLayout *)self _numberOfSeparators], v13 >= 1))
  {
    v14 = v13;
    v15 = 0;
    v29 = v31 + 2;
    v16 = 1;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v32 = vnegq_f64(v17);
    do
    {
      v18 = v15;
      v54 = 0;
      v35 = xmmword_1A5380E10;
      *&v36 = dataSourceIdentifier;
      *(&v36 + 1) = v16 - 1;
      v37 = v32;
      v38 = 0u;
      v39 = 0u;
      *&v40 = 0;
      v19 = [(PXPhotosDetailsActionsTilingLayout *)self getGeometry:&v57 group:&v56 userData:&v54 forTileWithIdentifier:&v35, v29];
      v15 = v54;

      if (v19)
      {
        v20 = v31[2];
        v47 = xmmword_1A5380E10;
        v48 = dataSourceIdentifier;
        v49 = v16 - 1;
        v50 = v32;
        v51 = 0u;
        v52 = 0u;
        v53 = 0;
        v43 = v65;
        v44 = v66;
        v45 = v67;
        v46 = v68;
        v39 = v61;
        v40 = v62;
        v41 = v63;
        v42 = v64;
        v35 = v57;
        v36 = v58;
        v37 = v59;
        v38 = v60;
        v20(v31, &v47, &v35, v56, v15, &v55);
      }

      if (v16 >= v14)
      {
        break;
      }

      ++v16;
    }

    while ((v55 & 1) == 0);
  }

  else
  {
    v15 = 0;
  }

  v21 = [(PXPhotosDetailsActionsTilingLayout *)self numberOfItems];
  if (v21 >= 1 && (v55 & 1) == 0)
  {
    v22 = v21;
    v23 = self;
    v30 = v31 + 2;
    v24 = 1;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v33 = vnegq_f64(v25);
    do
    {
      v26 = v15;
      v71 = 0;
      v69 = 0u;
      v70 = 0u;
      v34 = 0;
      v35 = xmmword_1A5380E20;
      *&v36 = dataSourceIdentifier;
      *(&v36 + 1) = v24 - 1;
      v37 = v33;
      v38 = 0u;
      v39 = 0u;
      *&v40 = 0;
      v27 = [(PXPhotosDetailsActionsTilingLayout *)v23 getGeometry:&v57 group:&v56 userData:&v34 forTileWithIdentifier:&v35, v30];
      v15 = v34;

      if (v27)
      {
        v28 = v31[2];
        v47 = xmmword_1A5380E20;
        v48 = dataSourceIdentifier;
        v49 = v24 - 1;
        v50 = v33;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v43 = v65;
        v44 = v66;
        v45 = v67;
        v46 = v68;
        v39 = v61;
        v40 = v62;
        v41 = v63;
        v42 = v64;
        v35 = v57;
        v36 = v58;
        v37 = v59;
        v38 = v60;
        v28(v31, &v47, &v35, v56, v15, &v55);
      }

      if (v24 >= v22)
      {
        break;
      }

      ++v24;
    }

    while ((v55 & 1) == 0);
  }
}

- (CGRect)contentBounds
{
  v3 = [(PXPhotosDetailsActionsTilingLayout *)self numberOfItems];
  [(PXTilingLayout *)self referenceSize];
  v5 = v4;
  v6 = [(PXPhotosDetailsActionsTilingLayout *)self _numberOfSeparators];
  [(PXPhotosDetailsActionsTilingLayout *)self separatorHeight];
  if (v7 * v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = [(PXPhotosDetailsActionsTilingLayout *)self shouldShowSeparators];
  }

  [(PXPhotosDetailsActionsTilingLayout *)self interItemSpacing];
  v10 = v9 * (v3 - 1);
  [(PXPhotosDetailsActionsTilingLayout *)self rowHeight];
  v12 = v10 + v8 + v3 * v11;
  [(PXTilingLayout *)self contentInset];
  v14 = v13;
  [(PXTilingLayout *)self contentInset];
  v16 = v12 + v14 + v15;
  v17 = 0.0;
  v18 = 0.0;
  v19 = v5;
  result.size.height = v16;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (void)prepareLayout
{
  v2.receiver = self;
  v2.super_class = PXPhotosDetailsActionsTilingLayout;
  [(PXTilingLayout *)&v2 prepareLayout];
}

- (PXPhotosDetailsActionsTilingLayout)initWithNumberOfItems:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PXPhotosDetailsActionsTilingLayout;
  v4 = [(PXTilingLayout *)&v7 init];
  if (v4)
  {
    v4->_numberOfItems = a3;
    if (a3 > 0)
    {
      v5 = a3 + 1;
    }

    else
    {
      v5 = 0;
    }

    v4->__numberOfSeparators = v5;
    sub_1A52458F4();
  }

  return 0;
}

@end