@interface PXGShadowTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestTextureForShadow:(id)shadow cornerRadius:(double)radius screenScale:(double)scale targetSize:(CGSize)size requestID:(int)d;
@end

@implementation PXGShadowTextureProvider

- (void)_requestTextureForShadow:(id)shadow cornerRadius:(double)radius screenScale:(double)scale targetSize:(CGSize)size requestID:(int)d
{
  v7 = *&d;
  height = size.height;
  width = size.width;
  v29[4] = *MEMORY[0x277D85DE8];
  shadowCopy = shadow;
  if ([(PXGTextureProvider *)self isRequestActive:v7])
  {
    IsZero = PXPixelSizeAreaIsZero();
    if (!shadowCopy || IsZero)
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v7];
    }

    else
    {
      v15 = objc_alloc(MEMORY[0x277D3CE08]);
      v29[0] = shadowCopy;
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
      v29[1] = v16;
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:scale];
      v29[2] = v17;
      v18 = [MEMORY[0x277CCAE60] valueWithCGSize:{width, height}];
      v29[3] = v18;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
      v20 = [v15 initWithObjects:v19];

      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __99__PXGShadowTextureProvider__requestTextureForShadow_cornerRadius_screenScale_targetSize_requestID___block_invoke;
      v23[3] = &unk_2782A9EC8;
      v24 = shadowCopy;
      radiusCopy = radius;
      scaleCopy = scale;
      v27 = width;
      v28 = height;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __99__PXGShadowTextureProvider__requestTextureForShadow_cornerRadius_screenScale_targetSize_requestID___block_invoke_2;
      v21[3] = &unk_2782AA0D0;
      v21[4] = self;
      v22 = v7;
      [(PXGCGImageTextureProvider *)self requestCGImageWithCacheKey:v20 imageProvider:v23 resultHandler:v21];
    }
  }
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  layoutCopy = layout;
  v37.receiver = self;
  v37.super_class = PXGShadowTextureProvider;
  infosCopy = infos;
  v13 = [(PXGTextureProvider *)&v37 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v28 = v14;
  v29 = v13;
  contentSource = [layoutCopy contentSource];
  v16 = HIDWORD(*&range);
  if (HIDWORD(*&range))
  {
    v17 = v29;
    do
    {
      v18 = *(&infosCopy->var3 + 5 * range.location);
      v19 = [contentSource shadowForSpriteAtIndex:range inLayout:layoutCopy];
      [contentSource cornerRadiusForShadowSpriteAtIndex:range inLayout:layoutCopy];
      v21 = v20;
      [layoutCopy displayScale];
      v23 = v22;
      objc_initWeak(&location, self);
      requestQueue = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__PXGShadowTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A9EA0;
      objc_copyWeak(v33, &location);
      v32 = v19;
      v33[1] = v21;
      v33[2] = v23;
      v34 = vcvtq_f64_f32(v18);
      v35 = v17;
      v25 = v19;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(v33);
      objc_destroyWeak(&location);
      ++v17;
      range = (range.location + 1);
      --v16;
    }

    while (v16);
  }

  v27 = v28;
  v26 = v29;
  result.length = v27;
  result.location = v26;
  return result;
}

void __94__PXGShadowTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestTextureForShadow:*(a1 + 32) cornerRadius:*(a1 + 80) screenScale:*(a1 + 48) targetSize:*(a1 + 56) requestID:{*(a1 + 64), *(a1 + 72)}];
}

@end