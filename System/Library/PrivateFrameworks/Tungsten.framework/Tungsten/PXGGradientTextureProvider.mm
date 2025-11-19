@interface PXGGradientTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForGradient:(id)a3 targetSize:(CGSize)a4 requestID:(int)a5;
@end

@implementation PXGGradientTextureProvider

- (void)_requestTextureForGradient:(id)a3 targetSize:(CGSize)a4 requestID:(int)a5
{
  v5 = *&a5;
  height = a4.height;
  width = a4.width;
  v20[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  if ([(PXGTextureProvider *)self isRequestActive:v5])
  {
    if (PXPixelSizeAreaIsZero())
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v5];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277D3CE08]);
      v20[0] = v9;
      v11 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
      v20[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v13 = [v10 initWithObjects:v12];

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__PXGGradientTextureProvider__requestTextureForGradient_targetSize_requestID___block_invoke;
      v16[3] = &unk_2782A9828;
      v17 = v9;
      v18 = width;
      v19 = height;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __78__PXGGradientTextureProvider__requestTextureForGradient_targetSize_requestID___block_invoke_3;
      v14[3] = &unk_2782AA0D0;
      v14[4] = self;
      v15 = v5;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v13 imageProvider:v16 resultHandler:v14];
    }
  }
}

uint64_t __78__PXGGradientTextureProvider__requestTextureForGradient_targetSize_requestID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) startingColor];
  if (CGColorGetAlpha([v2 CGColor]) == 1.0)
  {
    v3 = [*(a1 + 32) endingColor];
    CGColorGetAlpha([v3 CGColor]);
  }

  v6 = *(a1 + 32);
  v4 = PXCreateCGImageWithDrawBlock();

  return v4;
}

void __78__PXGGradientTextureProvider__requestTextureForGradient_targetSize_requestID___block_invoke_2(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v23[2] = *MEMORY[0x277D85DE8];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v13 = [*(a1 + 32) startingColor];
  v23[0] = [v13 CGColor];
  v14 = [*(a1 + 32) endingColor];
  v23[1] = [v14 CGColor];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
  v16 = CGGradientCreateWithColors(DeviceRGB, v15, 0);

  v17 = [*(a1 + 32) direction];
  MinY = 0.0;
  v19 = 0.0;
  MaxY = 0.0;
  MidX = 0.0;
  if (!v17)
  {
    v25.origin.x = a3;
    v25.origin.y = a4;
    v25.size.width = a5;
    v25.size.height = a6;
    MidX = CGRectGetMidX(v25);
    v26.origin.x = a3;
    v26.origin.y = a4;
    v26.size.width = a5;
    v26.size.height = a6;
    MaxY = CGRectGetMaxY(v26);
    v27.origin.x = a3;
    v27.origin.y = a4;
    v27.size.width = a5;
    v27.size.height = a6;
    v19 = CGRectGetMidX(v27);
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    MinY = CGRectGetMinY(v28);
  }

  v24.x = MidX;
  v24.y = MaxY;
  v22 = v19;
  CGContextDrawLinearGradient(a2, v16, v24, *(&MinY - 1), 0);
  CGGradientRelease(v16);
  CGColorSpaceRelease(DeviceRGB);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v33.receiver = self;
  v33.super_class = PXGGradientTextureProvider;
  v26 = a6;
  v13 = [(PXGTextureProvider *)&v33 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v24 = v14;
  v25 = v13;
  v15 = [v12 contentSource];
  v16 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v17 = v25;
    do
    {
      v18 = *(&v26->var3 + 5 * a3.location);
      v19 = [v15 gradientForSpriteAtIndex:a3 inLayout:v12];
      objc_initWeak(&location, self);
      v20 = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __96__PXGGradientTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A9800;
      objc_copyWeak(&v29, &location);
      v28 = v19;
      v30 = vcvtq_f64_f32(v18);
      v31 = v17;
      v21 = v19;
      dispatch_async(v20, block);

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
      ++v17;
      a3 = (a3.location + 1);
      --v16;
    }

    while (v16);
  }

  v23 = v24;
  v22 = v25;
  result.length = v23;
  result.location = v22;
  return result;
}

void __96__PXGGradientTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestTextureForGradient:*(a1 + 32) targetSize:*(a1 + 64) requestID:{*(a1 + 48), *(a1 + 56)}];
}

@end