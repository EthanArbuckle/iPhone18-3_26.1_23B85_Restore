@interface PXGPathTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestTextureForPath:(id)path targetSize:(CGSize)size requestID:(int)d;
@end

@implementation PXGPathTextureProvider

- (void)_requestTextureForPath:(id)path targetSize:(CGSize)size requestID:(int)d
{
  v5 = *&d;
  height = size.height;
  width = size.width;
  v21[2] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if ([(PXGTextureProvider *)self isRequestActive:v5])
  {
    IsZero = PXPixelSizeAreaIsZero();
    if (!pathCopy || IsZero)
    {
      [(PXGTextureProvider *)self provideNothingForRequestID:v5];
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277D3CE08]);
      v21[0] = pathCopy;
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
      v18 = pathCopy;
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

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  layoutCopy = layout;
  v35.receiver = self;
  v35.super_class = PXGPathTextureProvider;
  infosCopy = infos;
  v13 = [(PXGTextureProvider *)&v35 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v26 = v14;
  v27 = v13;
  contentSource = [layoutCopy contentSource];
  v16 = HIDWORD(*&range);
  if (HIDWORD(*&range))
  {
    v19 = v27;
    do
    {
      v20 = *(&infosCopy->var3 + 5 * range.location);
      v21 = [contentSource pathForSpriteAtIndex:range inLayout:layoutCopy];
      if (!v21)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXGPathTextureProvider.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"path != nil"}];
      }

      objc_initWeak(&location, self);
      requestQueue = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __92__PXGPathTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A9800;
      objc_copyWeak(&v31, &location);
      v30 = v21;
      v32 = vcvtq_f64_f32(v20);
      v33 = v19;
      v23 = v21;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(&v31);
      objc_destroyWeak(&location);
      ++v19;
      range = (range.location + 1);
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