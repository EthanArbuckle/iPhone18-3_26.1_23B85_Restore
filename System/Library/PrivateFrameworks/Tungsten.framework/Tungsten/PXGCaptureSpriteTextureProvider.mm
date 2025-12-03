@interface PXGCaptureSpriteTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestWithBehavior:(unint64_t)behavior renderSnapshot:(id)snapshot requestID:(int)d;
@end

@implementation PXGCaptureSpriteTextureProvider

- (void)_requestWithBehavior:(unint64_t)behavior renderSnapshot:(id)snapshot requestID:(int)d
{
  v5 = *&d;
  snapshotCopy = snapshot;
  v9 = [[PXGCaptureSpritePayload alloc] initWithBehavior:behavior renderSnapshot:snapshotCopy];

  [(PXGTextureProvider *)self providePayload:v9 forRequestID:v5];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  layoutCopy = layout;
  v40.receiver = self;
  v40.super_class = PXGCaptureSpriteTextureProvider;
  geometriesCopy = geometries;
  infosCopy = infos;
  v13 = [(PXGTextureProvider *)&v40 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v28 = v14;
  v29 = v13;
  contentSource = [layoutCopy contentSource];
  v16 = HIDWORD(*&range);
  if (HIDWORD(*&range))
  {
    v17 = v29;
    do
    {
      v18 = [contentSource behaviorForCaptureSpriteAtIndex:range inLayout:layoutCopy];
      if (v18 == 2)
      {
        v19 = *(&infosCopy->var0 + 40 * range.location);
        v20 = geometriesCopy + 32 * range.location;
        v21 = *(v20 + 24);
        v32 = *v20;
        if (objc_opt_respondsToSelector())
        {
          v22 = [contentSource offscreenEffectForCapturedSnapshotAtIndex:range inLayout:layoutCopy];
        }

        else
        {
          v22 = 0;
        }

        LOBYTE(location) = v19;
        *(&location + 1) = 0;
        HIDWORD(location) = 0;
        v38 = vaddq_f64(v32, vcvtq_f64_f32(vmul_f32(v21, 0xBF000000BF000000)));
        v39 = vcvtq_f64_f32(v21);
        v23 = [(PXGTextureProvider *)self requestRenderSnapshot:&location offscreenEffect:v22];
      }

      else
      {
        v23 = 0;
      }

      objc_initWeak(&location, self);
      requestQueue = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PXGCaptureSpriteTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A7FB0;
      objc_copyWeak(v35, &location);
      v35[1] = v18;
      v34 = v23;
      v36 = v17;
      v25 = v23;
      dispatch_async(requestQueue, block);

      objc_destroyWeak(v35);
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

void __101__PXGCaptureSpriteTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestWithBehavior:*(a1 + 48) renderSnapshot:*(a1 + 32) requestID:*(a1 + 56)];
}

@end