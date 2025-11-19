@interface PXGSolidColorTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForColor:(id)a3 targetSize:(CGSize)a4 traitCollection:(id)a5 requestID:(int)a6;
- (void)viewEnvironmentDidChange:(id)a3;
@end

@implementation PXGSolidColorTextureProvider

- (void)_requestTextureForColor:(id)a3 targetSize:(CGSize)a4 traitCollection:(id)a5 requestID:(int)a6
{
  v6 = *&a6;
  v9 = a3;
  v10 = a5;
  if ([(PXGTextureProvider *)self isRequestActive:v6])
  {
    if (PXPixelSizeAreaIsZero())
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v6];
    }

    else
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __93__PXGSolidColorTextureProvider__requestTextureForColor_targetSize_traitCollection_requestID___block_invoke;
      v13[3] = &unk_2782AA0A8;
      v14 = v9;
      v15 = v10;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __93__PXGSolidColorTextureProvider__requestTextureForColor_targetSize_traitCollection_requestID___block_invoke_3;
      v11[3] = &unk_2782AA0D0;
      v11[4] = self;
      v12 = v6;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v14 imageProvider:v13 resultHandler:v11];
    }
  }
}

uint64_t __93__PXGSolidColorTextureProvider__requestTextureForColor_targetSize_traitCollection_requestID___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) resolvedColorWithTraitCollection:*(a1 + 40)];
  v6 = 0;
  if (([v1 getWhite:0 alpha:&v6] & 1) == 0)
  {
    [v1 getRed:0 green:0 blue:0 alpha:&v6];
  }

  v5 = v1;
  v2 = v1;
  v3 = PXCreateCGImageWithDrawBlock();

  return v3;
}

void __93__PXGSolidColorTextureProvider__requestTextureForColor_targetSize_traitCollection_requestID___block_invoke_2(uint64_t a1, CGContext *a2, double a3, double a4, double a5, double a6)
{
  CGContextSetFillColorWithColor(a2, [*(a1 + 32) CGColor]);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;

  CGContextFillRect(a2, *&v11);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v37.receiver = self;
  v37.super_class = PXGSolidColorTextureProvider;
  v29 = a6;
  v13 = [(PXGTextureProvider *)&v37 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v27 = v14;
  v28 = v13;
  v15 = [v12 contentSource];
  v16 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v17 = v28;
    do
    {
      v18 = *(&v29->var3 + 5 * a3.location);
      if (v15)
      {
        [v15 colorAtIndex:a3 inLayout:v12];
      }

      else
      {
        [MEMORY[0x277D75348] magentaColor];
      }
      v19 = ;
      v20 = [(PXGTextureProvider *)self viewEnvironment];
      v21 = [v20 traitCollection];

      objc_initWeak(&location, self);
      v22 = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __98__PXGSolidColorTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782AA058;
      objc_copyWeak(&v33, &location);
      v34 = vcvtq_f64_f32(v18);
      v31 = v19;
      v32 = v21;
      v35 = v17;
      v23 = v21;
      v24 = v19;
      dispatch_async(v22, block);

      objc_destroyWeak(&v33);
      objc_destroyWeak(&location);
      ++v17;
      a3 = (a3.location + 1);
      --v16;
    }

    while (v16);
  }

  v26 = v27;
  v25 = v28;
  result.length = v26;
  result.location = v25;
  return result;
}

void __98__PXGSolidColorTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _requestTextureForColor:*(a1 + 32) targetSize:*(a1 + 40) traitCollection:*(a1 + 72) requestID:{*(a1 + 56), *(a1 + 64)}];
}

- (void)viewEnvironmentDidChange:(id)a3
{
  v10 = a3;
  v4 = [(PXGTextureProvider *)self viewEnvironment];
  v5 = [v4 traitCollection];
  v6 = [v10 traitCollection];
  if (v5 != v6 && ([v5 isEqual:v6] & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = [(PXGTextureProvider *)self viewEnvironment];
  v8 = [v7 userInterfaceStyle];
  v9 = [v10 userInterfaceStyle];

  if (v8 != v9)
  {
LABEL_6:
    [(PXGCGImageTextureProvider *)self invalidateCache];
  }
}

@end