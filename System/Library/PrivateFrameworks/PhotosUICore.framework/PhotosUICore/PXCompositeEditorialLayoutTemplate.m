@interface PXCompositeEditorialLayoutTemplate
- (PXCompositeEditorialLayoutTemplate)init;
- (PXCompositeEditorialLayoutTemplate)initWithDescriptorDictionary:(id)a3;
- (double)costForFittingLayoutItemInputs:(id)a3 inRange:(_NSRange)a4 ofTotalItemCount:(int64_t)a5 normalizedWeights:(double *)a6 useSaliency:(BOOL)a7;
- (void)_enumerateRectsUsingBlock:(id)a3;
- (void)_initRectsStorageWithDescriptors:(id)a3;
- (void)dealloc;
- (void)getComputedRects:(CGRect *)a3 contentSize:(CGSize *)a4 forReferenceSize:(CGSize)a5 interTileSpacing:(double)a6;
@end

@implementation PXCompositeEditorialLayoutTemplate

- (double)costForFittingLayoutItemInputs:(id)a3 inRange:(_NSRange)a4 ofTotalItemCount:(int64_t)a5 normalizedWeights:(double *)a6 useSaliency:(BOOL)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a3;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v14 = [(PXCompositeEditorialLayoutTemplate *)self numberOfRects];
  v15 = [(PXCompositeEditorialLayoutTemplate *)self numberOfColumns];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __124__PXCompositeEditorialLayoutTemplate_costForFittingLayoutItemInputs_inRange_ofTotalItemCount_normalizedWeights_useSaliency___block_invoke;
  v24 = &unk_1E7743450;
  v16 = v13;
  v25 = v16;
  v26 = self;
  v31 = length;
  v32 = v14;
  v33 = a5;
  v34 = v15;
  v36 = a7;
  v27 = &v37;
  v28 = &v45;
  v35 = a6;
  v29 = &v41;
  v30 = location;
  [(PXCompositeEditorialLayoutTemplate *)self _enumerateRectsUsingBlock:&v21];
  v17 = [(PXCompositeEditorialLayoutTemplate *)self numberOfRects:v21];
  v18 = 100.000001;
  if (v17 + location != a5 - 1)
  {
    v18 = 0.0;
  }

  v19 = (v18 + v46[3] + v42[3] + v38[3]) / 0.100000001 / self->_numberOfRects;

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v19;
}

void __124__PXCompositeEditorialLayoutTemplate_costForFittingLayoutItemInputs_inRange_ofTotalItemCount_normalizedWeights_useSaliency___block_invoke(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v44 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v46.origin.x = a3;
  v46.origin.y = a4;
  v46.size.width = a5;
  v46.size.height = a6;
  Width = CGRectGetWidth(v46);
  v47.origin.x = a3;
  v47.origin.y = a4;
  v47.size.width = a5;
  v47.size.height = a6;
  v13 = Width / CGRectGetHeight(v47);
  [*(a1 + 40) tileAspectRatio];
  v15 = v13 * v14;
  [v44 size];
  v17 = v16;
  [v44 size];
  v19 = v17 / v18;
  if (v15 - v19 >= 0.0)
  {
    v20 = v15 - v19;
  }

  else
  {
    v20 = -(v15 - v19);
  }

  if (a2)
  {
    v21 = 1;
  }

  else
  {
    v21 = *(a1 + 72) != 0;
  }

  v22 = *(a1 + 88) - 1 != a2 || *(a1 + 80) + *(a1 + 72) != *(a1 + 96);
  v48.origin.x = a3;
  v48.origin.y = a4;
  v48.size.width = a5;
  v48.size.height = a6;
  if (*(a1 + 104) == CGRectGetWidth(v48) && (!v21 || !v22 && v19 <= 2.5))
  {
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + 100.000001;
  }

  v43 = v20;
  if (*(a1 + 120) == 1)
  {
    [v44 acceptableCropRect];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [v44 preferredCropRect];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v49.origin.x = v24;
    v49.origin.y = v26;
    v49.size.width = v28;
    v49.size.height = v30;
    if (!CGRectIsNull(v49))
    {
      v50.origin.x = v32;
      v50.origin.y = v34;
      v50.size.width = v36;
      v50.size.height = v38;
      if (!CGRectIsNull(v50))
      {
        PXSizeGetAspectRatio();
      }
    }
  }

  else
  {
    if (v20 >= 0.400000006)
    {
      v39 = 0.100000001;
    }

    else
    {
      if (v20 >= 0.100000001)
      {
        goto LABEL_22;
      }

      v39 = -0.100000001;
    }

    *(*(*(a1 + 56) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + v39;
  }

LABEL_22:
  v40 = *(a1 + 40);
  if (*(v40 + 24))
  {
    goto LABEL_30;
  }

  if (v43 >= 0.400000006)
  {
    v42 = 0.100000001;
    goto LABEL_29;
  }

  v41 = *(*(v40 + 16) + 8 * a2) - *(*(a1 + 112) + 8 * a2);
  if (v41 < 0.0)
  {
    v41 = -v41;
  }

  if (v41 < 0.100000001)
  {
    v42 = -0.100000001;
LABEL_29:
    *(*(*(a1 + 64) + 8) + 24) = *(*(*(a1 + 64) + 8) + 24) + v42;
  }

LABEL_30:
}

- (void)getComputedRects:(CGRect *)a3 contentSize:(CGSize *)a4 forReferenceSize:(CGSize)a5 interTileSpacing:(double)a6
{
  if (a3)
  {
    width = a5.width;
    v11 = [(PXCompositeEditorialLayoutTemplate *)self numberOfColumns:a5.width];
    [(PXCompositeEditorialLayoutTemplate *)self tileAspectRatio];
    v12 = (width - a6 * (v11 - 1)) / v11;
    v18 = 0;
    v19 = &v18;
    v20 = 0x4010000000;
    v21 = &unk_1A561E057;
    v13 = *(MEMORY[0x1E695F058] + 16);
    v22 = *MEMORY[0x1E695F058];
    v23 = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __101__PXCompositeEditorialLayoutTemplate_getComputedRects_contentSize_forReferenceSize_interTileSpacing___block_invoke;
    v17[3] = &unk_1E7743428;
    v17[4] = &v18;
    *&v17[5] = v12;
    *&v17[6] = a6;
    v15 = v12 / v14;
    *&v17[7] = v12 / v14;
    v17[8] = a3;
    [(PXCompositeEditorialLayoutTemplate *)self _enumerateRectsUsingBlock:v17];
    if (a4)
    {
      v16 = v19[7] * (v15 + a6) - a6;
      a4->width = v19[6] * (v12 + a6) - a6;
      a4->height = v16;
    }

    _Block_object_dispose(&v18, 8);
  }
}

double __101__PXCompositeEditorialLayoutTemplate_getComputedRects_contentSize_forReferenceSize_interTileSpacing___block_invoke(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  *(*(*(a1 + 32) + 8) + 32) = CGRectUnion(*(*(*(a1 + 32) + 8) + 32), v18);
  v12 = *(a1 + 48);
  v13 = *(a1 + 40) + v12;
  v14 = a3 * v13;
  v15 = v12 + *(a1 + 56);
  result = -(v12 - a5 * v13);
  v17 = (*(a1 + 64) + 32 * a2);
  *v17 = v14;
  v17[1] = a4 * v15;
  v17[2] = result;
  v17[3] = -(v12 - a6 * v15);
  return result;
}

- (void)_enumerateRectsUsingBlock:(id)a3
{
  if (self->_numberOfRects >= 1)
  {
    v10 = v3;
    v11 = v4;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = 0;
      (*(a3 + 2))(a3, v8, &v9, self->_rects[v7].origin.x, self->_rects[v7].origin.y, self->_rects[v7].size.width, self->_rects[v7].size.height, self->_rectWeights[v8]);
      if (v9 == 1)
      {
        break;
      }

      ++v8;
      ++v7;
    }

    while (v8 < self->_numberOfRects);
  }
}

- (void)dealloc
{
  free(self->_rects);
  free(self->_rectWeights);
  v3.receiver = self;
  v3.super_class = PXCompositeEditorialLayoutTemplate;
  [(PXCompositeEditorialLayoutTemplate *)&v3 dealloc];
}

- (void)_initRectsStorageWithDescriptors:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  self->_numberOfRects = v5;
  self->_rects = malloc_type_malloc(32 * v5, 0x1000040E0EAB150uLL);
  self->_rectWeights = malloc_type_malloc(8 * self->_numberOfRects, 0x100004000313F17uLL);
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2020000000;
  v7[3] = 0x47EFFFFFE0000000;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__PXCompositeEditorialLayoutTemplate__initRectsStorageWithDescriptors___block_invoke;
  v6[3] = &unk_1E7743400;
  v6[4] = self;
  v6[5] = v8;
  v6[6] = v7;
  [v4 enumerateObjectsUsingBlock:v6];
  PXFloatApproximatelyEqualToFloat();
}

void __71__PXCompositeEditorialLayoutTemplate__initRectsStorageWithDescriptors___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 floatValue];
  v8 = v7;
  v9 = [v5 objectAtIndexedSubscript:1];
  [v9 floatValue];
  v11 = v10;
  v12 = [v5 objectAtIndexedSubscript:2];
  [v12 floatValue];
  v14 = v13;
  v15 = [v5 objectAtIndexedSubscript:3];

  [v15 floatValue];
  v17 = v16;

  v18 = (*(*(a1 + 32) + 8) + 32 * a3);
  *v18 = v8;
  v18[1] = v11;
  v18[2] = v14;
  v18[3] = v17;
  PXRectArea();
}

- (PXCompositeEditorialLayoutTemplate)initWithDescriptorDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PXCompositeEditorialLayoutTemplate;
  v5 = [(PXCompositeEditorialLayoutTemplate *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numberOfColumns"];
    v5->_numberOfColumns = [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"aspectRatio"];
    [v7 floatValue];
    v5->_tileAspectRatio = v8;

    v9 = [v4 objectForKeyedSubscript:@"id"];
    v5->_identifier = [v9 integerValue];

    v10 = [v4 objectForKeyedSubscript:@"rects"];
    [(PXCompositeEditorialLayoutTemplate *)v5 _initRectsStorageWithDescriptors:v10];
  }

  return v5;
}

- (PXCompositeEditorialLayoutTemplate)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCompositeEditorialLayoutTemplate.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PXCompositeEditorialLayoutTemplate init]"}];

  abort();
}

@end