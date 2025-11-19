@interface PXGPathTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForPath:(id)a3 targetSize:(CGSize)a4 requestID:(int)a5;
@end

@implementation PXGPathTextureProvider

- (void)_requestTextureForPath:(id)a3 targetSize:(CGSize)a4 requestID:(int)a5
{
  v5 = *&a5;
  height = a4.height;
  width = a4.width;
  v21[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  if ([(PXGTextureProvider *)self isRequestActive:v5])
  {
    IsZero = PXPixelSizeAreaIsZero();
    if (!v9 || IsZero)
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v5];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277D3CE08]);
      v21[0] = v9;
      v12 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
      v21[1] = v12;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v14 = [v11 initWithObjects:v13];

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __70__PXGPathTextureProvider__requestTextureForPath_targetSize_requestID___block_invoke;
      v17[3] = &unk_2782A9828;
      v19 = width;
      v20 = height;
      v18 = v9;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __70__PXGPathTextureProvider__requestTextureForPath_targetSize_requestID___block_invoke_3;
      v15[3] = &unk_2782AA0D0;
      v15[4] = self;
      v16 = v5;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v14 imageProvider:v17 resultHandler:v15];
    }
  }
}

uint64_t __70__PXGPathTextureProvider__requestTextureForPath_targetSize_requestID___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v1 = PXCreateCGImageWithDrawBlock();

  return v1;
}

void __70__PXGPathTextureProvider__requestTextureForPath_targetSize_requestID___block_invoke_2(uint64_t a1, CGContext *a2)
{
  CGContextAddPath(a2, [*(a1 + 32) CGPath]);
  [*(a1 + 32) lineWidth];
  CGContextSetLineWidth(a2, v4);
  v5 = [*(a1 + 32) strokeColor];
  CGContextSetStrokeColorWithColor(a2, [v5 CGColor]);

  v6 = [*(a1 + 32) fillColor];
  CGContextSetFillColorWithColor(a2, [v6 CGColor]);

  v7 = [*(a1 + 32) drawingMode];

  CGContextDrawPath(a2, v7);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v35.receiver = self;
  v35.super_class = PXGPathTextureProvider;
  v28 = a6;
  v13 = [(PXGTextureProvider *)&v35 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v26 = v14;
  v27 = v13;
  v15 = [v12 contentSource];
  v16 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v19 = v27;
    do
    {
      v20 = *(&v28->var3 + 5 * a3.location);
      v21 = [v15 pathForSpriteAtIndex:a3 inLayout:v12];
      if (!v21)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"PXGPathTextureProvider.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];
      }

      objc_initWeak(&location, self);
      v22 = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__PXGPathTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A9800;
      objc_copyWeak(&v31, &location);
      v30 = v21;
      v32 = vcvtq_f64_f32(v20);
      v33 = v19;
      v23 = v21;
      dispatch_async(v22, block);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
      ++v19;
      a3 = (a3.location + 1);
      --v16;
    }

    while (v16);
  }

  v18 = v26;
  v17 = v27;
  result.length = v18;
  result.location = v17;
  return result;
}

void __92__PXGPathTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestTextureForPath:*(a1 + 32) targetSize:*(a1 + 64) requestID:{*(a1 + 48), *(a1 + 56)}];
}

@end