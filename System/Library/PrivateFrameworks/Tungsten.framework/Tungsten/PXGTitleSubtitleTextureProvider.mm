@interface PXGTitleSubtitleTextureProvider
+ (double)_drawWithTitle:(id)a3 subtitle:(id)a4 spec:(id)a5 targetSize:(CGSize)a6 context:(CGContext *)a7 viewport:(CGRect)a8 screenScale:(double)a9;
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForTitle:(id)a3 subtitle:(id)a4 spec:(id)a5 targetSize:(CGSize)a6 screenScale:(double)a7 requestID:(int)a8 renderCompletionHandler:(id)a9;
@end

@implementation PXGTitleSubtitleTextureProvider

- (void)_requestTextureForTitle:(id)a3 subtitle:(id)a4 spec:(id)a5 targetSize:(CGSize)a6 screenScale:(double)a7 requestID:(int)a8 renderCompletionHandler:(id)a9
{
  v10 = *&a8;
  height = a6.height;
  width = a6.width;
  v43[4] = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a9;
  if ([(PXGTextureProvider *)self isRequestActive:v10])
  {
    if (PXPixelSizeAreaIsZero())
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v10];
    }

    else
    {
      v29 = objc_alloc(MEMORY[0x277D3CE08]);
      v21 = v17;
      if (!v17)
      {
        v21 = [MEMORY[0x277CBEB68] null];
      }

      v28 = v21;
      v43[0] = v21;
      v22 = v18;
      if (!v18)
      {
        v22 = [MEMORY[0x277CBEB68] null];
      }

      v27 = v22;
      v43[1] = v22;
      v23 = v19;
      if (!v19)
      {
        v23 = [MEMORY[0x277CBEB68] null];
      }

      v43[2] = v23;
      v24 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
      v43[3] = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
      v30 = [v29 initWithObjects:v25];

      if (!v19)
      {
      }

      if (!v18)
      {
      }

      if (!v17)
      {
      }

      objc_initWeak(&location, self);
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke;
      v35[3] = &unk_2782A7B38;
      v41[1] = *&width;
      v41[2] = *&height;
      v36 = v17;
      v37 = v18;
      v38 = v19;
      v41[3] = *&a7;
      objc_copyWeak(v41, &location);
      v26 = v30;
      v39 = v26;
      v40 = v20;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke_3;
      v31[3] = &unk_2782A7B88;
      v31[4] = self;
      v34 = 0;
      v33 = v10;
      v32 = v40;
      [(PXGCGImageTextureProvider *)self requestCGImageAndAdditionalInfoWithCacheKey:v26 imageProvider:v35 resultHandler:v31];

      objc_destroyWeak(v41);
      objc_destroyWeak(&location);
    }
  }
}

uint64_t __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  objc_copyWeak(&v9, (a1 + 72));
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v2 = PXCreateCGImageWithDrawBlock();

  objc_destroyWeak(&v9);
  return v2;
}

void __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke_3(uint64_t a1, CGImage *a2, void *a3)
{
  v5 = a3;
  CGImageRetain(a2);
  v6 = [*(a1 + 32) requestQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke_4;
  block[3] = &unk_2782A7B60;
  v11 = *(a1 + 52);
  block[4] = *(a1 + 32);
  block[5] = a2;
  v10 = *(a1 + 48);
  dispatch_async(v6, block);

  v7 = [v5 objectForKeyedSubscript:@"PXGTitleSubtitleTextureProviderLastBaselineKey"];

  v8 = *(a1 + 40);
  [v7 doubleValue];
  (*(v8 + 16))(v8);
}

void __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke_4(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  v12 = 0;
  v13 = 0;
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = xmmword_21AE2D320;
  v7 = v2;
  v10 = 1065353216;
  v11 = 0;
  [v3 provideCGImage:v4 options:&v6 forRequestID:v5];
  CGImageRelease(*(a1 + 40));
}

uint64_t __130__PXGTitleSubtitleTextureProvider__requestTextureForTitle_subtitle_spec_targetSize_screenScale_requestID_renderCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v14[1] = *MEMORY[0x277D85DE8];
  [PXGTitleSubtitleTextureProvider _drawWithTitle:*(a1 + 32) subtitle:*(a1 + 40) spec:*(a1 + 48) targetSize:a2 context:*(a1 + 80) viewport:*(a1 + 88) screenScale:a3, a4, a5, a6, *(a1 + 96)];
  v8 = v7;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v13 = @"PXGTitleSubtitleTextureProviderLastBaselineKey";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [WeakRetained cacheAdditionalInfo:v11 withKey:*(a1 + 56)];

  return (*(*(a1 + 64) + 16))(v8);
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v52.receiver = self;
  v52.super_class = PXGTitleSubtitleTextureProvider;
  v36 = a6;
  v13 = [(PXGTextureProvider *)&v52 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v32 = v14;
  v33 = v13;
  v15 = [v12 contentSource];
  [v12 displayScale];
  v17 = v16;
  v18 = objc_opt_respondsToSelector();
  v37 = v12;
  v35 = [v12 version];
  v19 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v34 = v18 & 1;
    v20 = v33;
    do
    {
      v21 = [v15 titleForSpriteAtIndex:a3];
      v22 = [v15 subtitleForSpriteAtIndex:a3];
      v23 = [v15 titleSubtitleSpecForSpriteAtIndex:a3];
      v24 = *(&v36->var3 + 5 * a3.location);
      objc_initWeak(&location, self);
      v25 = [(PXGTitleSubtitleTextureProvider *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A7AE8;
      objc_copyWeak(&v44, &location);
      v39 = v21;
      v40 = v22;
      v41 = v23;
      v45 = vcvtq_f64_f32(v24);
      v46 = v17;
      v48 = v20;
      v42 = v37;
      v26 = v15;
      v50 = v34;
      v49 = a3.location;
      v43 = v26;
      v47 = v35;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      dispatch_async(v25, block);

      objc_destroyWeak(&v44);
      objc_destroyWeak(&location);
      ++v20;
      a3 = (a3.location + 1);
      --v19;
    }

    while (v19);
  }

  v31 = v32;
  v30 = v33;
  result.length = v31;
  result.location = v30;
  return result;
}

void __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 96);
  v6 = *(a1 + 112);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2;
  v10[3] = &unk_2782A7AC0;
  v7 = *(a1 + 48);
  v11 = *(a1 + 56);
  v8 = *(a1 + 64);
  v15 = *(a1 + 120);
  v14 = *(a1 + 116);
  v9 = *(a1 + 104);
  v12 = v8;
  v13 = v9;
  [WeakRetained _requestTextureForTitle:v3 subtitle:v4 spec:v7 targetSize:v6 screenScale:v10 requestID:*(a1 + 80) renderCompletionHandler:{*(a1 + 88), v5}];
}

void __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_2(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) layoutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3;
  block[3] = &unk_2782A7A98;
  v8 = *(a1 + 32);
  v5 = *(a1 + 40);
  v13 = *(a1 + 60);
  v12 = *(a1 + 56);
  v6 = *(a1 + 48);
  v9 = v5;
  v10 = v6;
  v11 = a2;
  dispatch_async(v4, block);
}

void __101__PXGTitleSubtitleTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) contentSource];
  v3 = v2;
  if (v2 == *(a1 + 40) && *(a1 + 68) == 1)
  {
  }

  else
  {
    v4 = [*(a1 + 32) contentSource];
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = *(a1 + 64);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);

  [v7 didRenderTitleAndSubtitleSpriteAtIndex:v6 layoutVersion:v8 withLastBaseline:v9];
}

+ (double)_drawWithTitle:(id)a3 subtitle:(id)a4 spec:(id)a5 targetSize:(CGSize)a6 context:(CGContext *)a7 viewport:(CGRect)a8 screenScale:(double)a9
{
  height = a8.size.height;
  width = a8.size.width;
  y = a8.origin.y;
  x = a8.origin.x;
  v15 = a6.height;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  UIGraphicsPushContext(a7);
  CGContextTranslateCTM(a7, 0.0, v15);
  CGContextScaleCTM(a7, 1.0, -1.0);
  if (PXGShouldDisplayTextTextureBoundaries())
  {
    CGContextSetRGBFillColor(a7, 1.0, 0.5, 1.0, 0.5);
    v51.origin.x = x;
    v51.origin.y = y;
    v51.size.width = width;
    v51.size.height = height;
    CGContextFillRect(a7, v51);
  }

  CGContextScaleCTM(a7, a9, a9);
  PXRectScale();
  [v20 padding];
  v22 = v21;
  v24 = v23;
  PXEdgeInsetsInsetRect();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  CGContextGetCTM(&v50, a7);
  if (v50.d >= 0.0)
  {
    v33 = v28 - (v22 - v24);
  }

  else
  {
    v33 = -v28;
  }

  v34 = objc_alloc_init(MEMORY[0x277D3CE00]);
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __104__PXGTitleSubtitleTextureProvider__drawWithTitle_subtitle_spec_targetSize_context_viewport_screenScale___block_invoke;
  v42[3] = &unk_2782A7BB0;
  v43 = v18;
  v44 = v19;
  v45 = v20;
  v46 = v26;
  v47 = v33;
  v48 = v30;
  v49 = v32;
  v35 = v20;
  v36 = v19;
  v37 = v18;
  [v34 performChanges:v42];
  [v34 startLayerRealization];
  v38 = [v34 layer];
  [v38 drawInContext:a7];

  UIGraphicsPopContext();
  [v34 layerLastBaseline];
  v40 = v39;

  return v40;
}

void __104__PXGTitleSubtitleTextureProvider__drawWithTitle_subtitle_spec_targetSize_context_viewport_screenScale___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setRendersAsynchronously:0];
  [v3 setTypesettingMode:1];
  [v3 setTitleText:*(a1 + 32)];
  [v3 setSubtitleText:*(a1 + 40)];
  [v3 setSpec:*(a1 + 48)];
  [v3 setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
}

@end