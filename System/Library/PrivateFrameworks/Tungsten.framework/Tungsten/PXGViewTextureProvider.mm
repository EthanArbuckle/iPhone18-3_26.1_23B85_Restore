@interface PXGViewTextureProvider
- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout;
- (void)_requestTextureForViewClass:(Class)class userData:(id)data requestID:(int)d;
@end

@implementation PXGViewTextureProvider

- (void)_requestTextureForViewClass:(Class)class userData:(id)data requestID:(int)d
{
  v5 = *&d;
  dataCopy = data;
  v9 = [[PXGViewPayload alloc] initWithViewClass:class userData:dataCopy];

  [(PXGTextureProvider *)self providePayload:v9 forRequestID:v5];
}

- (_NSRange)requestTexturesForSpritesInRange:(_PXGSpriteIndexRange)range geometries:(id *)geometries styles:(id *)styles infos:(id *)infos inLayout:(id)layout
{
  layoutCopy = layout;
  v35.receiver = self;
  v35.super_class = PXGViewTextureProvider;
  v13 = [(PXGTextureProvider *)&v35 requestTexturesForSpritesInRange:range geometries:geometries styles:styles infos:infos inLayout:layoutCopy];
  v15 = v14;
  contentSource = [layoutCopy contentSource];
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v17 = contentSource;
    if (v17)
    {
      v29 = contentSource;
      v18 = HIDWORD(*&range);
      if (HIDWORD(*&range))
      {
        v27 = v15;
        v28 = v13;
        do
        {
          v19 = [v17 viewClassForSpriteAtIndex:range inLayout:layoutCopy];
          if (v19)
          {
            v20 = v19;
            v21 = [v17 viewUserDataForSpriteAtIndex:range inLayout:layoutCopy];
            v22 = [v21 copyWithZone:0];

            objc_initWeak(&location, self);
            requestQueue = [(PXGTextureProvider *)self requestQueue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __92__PXGViewTextureProvider_requestTexturesForSpritesInRange_geometries_styles_infos_inLayout___block_invoke;
            block[3] = &unk_2782A7F88;
            v31 = v22;
            v24 = v22;
            objc_copyWeak(v32, &location);
            v32[1] = v20;
            v33 = v13;
            dispatch_async(requestQueue, block);

            objc_destroyWeak(v32);
            objc_destroyWeak(&location);
          }

          LODWORD(v13) = v13 + 1;
          range = (range.location + 1);
          LODWORD(v18) = v18 - 1;
        }

        while (v18);
        v15 = v27;
        v13 = v28;
      }

      contentSource = v29;
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