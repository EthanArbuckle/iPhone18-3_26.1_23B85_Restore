@interface PXGViewTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7;
- (void)_requestTextureForViewClass:(Class)a3 userData:(id)a4 requestID:(int)a5;
@end

@implementation PXGViewTextureProvider

- (void)_requestTextureForViewClass:(Class)a3 userData:(id)a4 requestID:(int)a5
{
  v5 = *&a5;
  v8 = a4;
  v9 = [[PXGViewPayload alloc] initWithViewClass:a3 userData:v8];

  [(PXGTextureProvider *)self providePayload:v9 forRequestID:v5];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)a3 geometries:(id *)a4 styles:(id *)a5 infos:(id *)a6 inLayout:(id)a7
{
  v12 = a7;
  v35.receiver = self;
  v35.super_class = PXGViewTextureProvider;
  v13 = [(PXGTextureProvider *)&v35 requestTexturesForSpritesInRange:a3 geometries:a4 styles:a5 infos:a6 inLayout:v12];
  v15 = v14;
  v16 = [v12 contentSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v17 = v16;
    if (v17)
    {
      v29 = v16;
      v18 = HIDWORD(*&a3);
      if (HIDWORD(*&a3))
      {
        v27 = v15;
        v28 = v13;
        do
        {
          v19 = [v17 viewClassForSpriteAtIndex:a3 inLayout:v12];
          if (v19)
          {
            v20 = v19;
            v21 = [v17 viewUserDataForSpriteAtIndex:a3 inLayout:v12];
            v22 = [v21 copyWithZone:0];

            objc_initWeak(&location, self);
            v23 = [(PXGTextureProvider *)self requestQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __92__PXGViewTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
            block[3] = &unk_2782A7F88;
            v31 = v22;
            v24 = v22;
            objc_copyWeak(v32, &location);
            v32[1] = v20;
            v33 = v13;
            dispatch_async(v23, block);

            objc_destroyWeak(v32);
            objc_destroyWeak(&location);
          }

          LODWORD(v13) = v13 + 1;
          a3 = (a3.location + 1);
          LODWORD(v18) = v18 - 1;
        }

        while (v18);
        v15 = v27;
        v13 = v28;
      }

      v16 = v29;
    }
  }

  else
  {
    v17 = 0;
  }

  v25 = v13;
  v26 = v15;
  result.length = v26;
  result.location = v25;
  return result;
}

void __92__PXGViewTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke(uint64_t a1)
{
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) prepareForRender];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestTextureForViewClass:*(a1 + 48) userData:*(a1 + 32) requestID:*(a1 + 56)];
}

@end