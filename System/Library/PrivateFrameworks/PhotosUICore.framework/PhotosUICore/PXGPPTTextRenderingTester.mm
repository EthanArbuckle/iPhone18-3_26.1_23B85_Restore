@interface PXGPPTTextRenderingTester
- (void)runRenderTextTestWithOptions:(id)options latencyMeter:(id)meter completionHandler:(id)handler failureHandler:(id)failureHandler;
- (void)textureProvider:(id)provider didProvideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d;
@end

@implementation PXGPPTTextRenderingTester

- (void)textureProvider:(id)provider didProvideCGImage:(CGImage *)image options:(id)options adjustment:(id)adjustment isDegraded:(BOOL)degraded forRequestID:(int)d
{
  v10 = [(PXGPPTTextRenderingTester *)self textureProviderDidProvideCGImageHandler:provider];

  if (v10)
  {
    textureProviderDidProvideCGImageHandler = [(PXGPPTTextRenderingTester *)self textureProviderDidProvideCGImageHandler];
    textureProviderDidProvideCGImageHandler[2](textureProviderDidProvideCGImageHandler, image);
  }
}

- (void)runRenderTextTestWithOptions:(id)options latencyMeter:(id)meter completionHandler:(id)handler failureHandler:(id)failureHandler
{
  optionsCopy = options;
  meterCopy = meter;
  handlerCopy = handler;
  failureHandlerCopy = failureHandler;
  [meterCopy setMeasurementsUnit:@"ms"];
  v11 = objc_alloc_init(off_1E77216E8);
  v12 = MEMORY[0x1E69E96A0];
  [v11 setRequestQueue:MEMORY[0x1E69E96A0]];
  [v11 setProcessingQueue:v12];

  [v11 setDelegate:self];
  v13 = [[PXGPPTStringsLayout alloc] initWithStringCount:5 localeCodes:&unk_1F1911A88];
  [(PXGPPTStringsLayout *)v13 setReferenceSize:600.0, 400.0];
  [(PXGPPTStringsLayout *)v13 setDisplayScale:2.0];
  [(PXGPPTStringsLayout *)v13 updateIfNeeded];
  [(PXGPPTTextRenderingTester *)self setStringTextureProvider:v11];
  [(PXGPPTTextRenderingTester *)self setStringsLayout:v13];
  numberOfItems = [(PXGItemsLayout *)v13 numberOfItems];
  spriteDataStore = [(PXGPPTStringsLayout *)v13 spriteDataStore];
  geometries = [spriteDataStore geometries];

  spriteDataStore2 = [(PXGPPTStringsLayout *)v13 spriteDataStore];
  styles = [spriteDataStore2 styles];

  spriteDataStore3 = [(PXGPPTStringsLayout *)v13 spriteDataStore];
  infos = [spriteDataStore3 infos];

  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v51[0] = 0;
  v51[1] = v51;
  v51[2] = 0x2020000000;
  v51[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__PXGPPTTextRenderingTester_runRenderTextTestWithOptions_latencyMeter_completionHandler_failureHandler___block_invoke;
  aBlock[3] = &unk_1E774B3C0;
  v46 = v51;
  v20 = v11;
  v44 = v20;
  v47 = v52;
  v48 = geometries;
  v49 = styles;
  v50 = infos;
  v21 = v13;
  v45 = v21;
  v22 = _Block_copy(aBlock);
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__251461;
  v41[4] = __Block_byref_object_dispose__251462;
  selfCopy = self;
  v42 = selfCopy;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __104__PXGPPTTextRenderingTester_runRenderTextTestWithOptions_latencyMeter_completionHandler_failureHandler___block_invoke_13;
  v32[3] = &unk_1E774B3E8;
  v24 = failureHandlerCopy;
  v34 = v24;
  v37 = v52;
  v38 = v51;
  v25 = meterCopy;
  v39 = v41;
  v40 = numberOfItems;
  v33 = v25;
  v26 = handlerCopy;
  v35 = v26;
  v27 = v22;
  v36 = v27;
  [(PXGPPTTextRenderingTester *)selfCopy setTextureProviderDidProvideCGImageHandler:v32];
  v27[2](v27);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v51, 8);
  _Block_object_dispose(v52, 8);
}

uint64_t __104__PXGPPTTextRenderingTester_runRenderTextTestWithOptions_latencyMeter_completionHandler_failureHandler___block_invoke(void *a1)
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *(*(a1[6] + 8) + 24) = v2;
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  v6 = a1[4];
  v7 = a1[5];
  v8 = *(*(a1[7] + 8) + 24) | 0x100000000;

  return [v6 requestTexturesForSpritesInRange:v8 geometries:v3 styles:v4 infos:v5 inLayout:v7];
}

void __104__PXGPPTTextRenderingTester_runRenderTextTestWithOptions_latencyMeter_completionHandler_failureHandler___block_invoke_13(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [*(a1 + 32) reportLatency:2 forOutputQuality:(v3 - *(*(*(a1 + 72) + 8) + 24)) * 1000.0];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to render a texture with index: %d", *(*(*(a1 + 64) + 8) + 24)];
    (*(v4 + 16))(v4, v5);
  }

  if (*(a1 + 88) == *(*(*(a1 + 64) + 8) + 24))
  {
    [*(*(*(a1 + 80) + 8) + 40) setStringTextureProvider:0];
    [*(*(*(a1 + 80) + 8) + 40) setStringsLayout:0];
    (*(*(a1 + 48) + 16))();
    v6 = *(*(a1 + 80) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v8 = *(*(a1 + 56) + 16);

    v8();
  }
}

@end