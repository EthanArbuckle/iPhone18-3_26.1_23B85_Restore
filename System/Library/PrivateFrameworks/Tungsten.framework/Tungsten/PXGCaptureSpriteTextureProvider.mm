@interface PXGCaptureSpriteTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestWithBehavior:(unint64_t)a3 renderSnapshot:(id)a4 requestID:(int)a5;
@end

@implementation PXGCaptureSpriteTextureProvider

- (void)_requestWithBehavior:(unint64_t)a3 renderSnapshot:(id)a4 requestID:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = [[PXGCaptureSpritePayload alloc] initWithBehavior:a3 renderSnapshot:v8];

  [(PXGTextureProvider *)self providePayload:v9 forRequestID:v5];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v40.receiver = self;
  v40.super_class = PXGCaptureSpriteTextureProvider;
  v30 = a4;
  v31 = a6;
  v13 = [(PXGTextureProvider *)&v40 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v28 = v14;
  v29 = v13;
  v15 = [v12 contentSource];
  v16 = HIDWORD(*&a3);
  if (HIDWORD(*&a3))
  {
    v17 = v29;
    do
    {
      v18 = [v15 behaviorForCaptureSpriteAtIndex:a3 inLayout:v12];
      if (v18 == 2)
      {
        v19 = *(&v31->var0 + 40 * a3.location);
        v20 = v30 + 32 * a3.location;
        v21 = *(v20 + 24);
        v32 = *v20;
        if (objc_opt_respondsToSelector())
        {
          v22 = [v15 offscreenEffectForCapturedSnapshotAtIndex:a3 inLayout:v12];
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
      v24 = [(PXGTextureProvider *)self requestQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __101__PXGCaptureSpriteTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
      block[3] = &unk_2782A7FB0;
      objc_copyWeak(v35, &location);
      v35[1] = v18;
      v34 = v23;
      v36 = v17;
      v25 = v23;
      dispatch_async(v24, block);

      objc_destroyWeak(v35);
      objc_destroyWeak(&location);
      ++v17;
      a3 = (a3.location + 1);
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