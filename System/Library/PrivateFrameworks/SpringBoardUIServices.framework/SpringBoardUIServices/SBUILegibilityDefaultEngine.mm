@interface SBUILegibilityDefaultEngine
+ (id)defaultEngine;
- (CGSize)calculateShadowImageViewSizeForOriginalImage:(id)a3 shadowImage:(id)a4 settings:(id)a5;
- (NSString)description;
- (SBUILegibilityDefaultEngine)initWithEngineIdentifier:(id)a3;
- (id)applyStrength:(double)a3 toImage:(id)a4 settings:(id)a5;
- (id)executeAsyncLegibilityUpdateForContainer:(id)a3 image:(id)a4 settings:(id)a5 strength:(double *)a6 completion:(id)a7;
- (void)_teardownCaches:(id)a3;
- (void)executeLegibilityUpdateForContainer:(id)a3 forImage:(id)a4 settings:(id)a5 strength:(double *)a6 engineResult:(id *)a7;
- (void)prewarmForSettings:(id)a3 maxSize:(CGSize)a4 minSize:(CGSize)a5 scale:(double)a6;
@end

@implementation SBUILegibilityDefaultEngine

+ (id)defaultEngine
{
  if (defaultEngine_onceToken != -1)
  {
    +[SBUILegibilityDefaultEngine defaultEngine];
  }

  v3 = defaultEngine_defaultEngine;

  return v3;
}

void __44__SBUILegibilityDefaultEngine_defaultEngine__block_invoke()
{
  v0 = [[SBUILegibilityDefaultEngine alloc] initWithEngineIdentifier:@"Default Engine"];
  [(SBUILegibilityDefaultEngine *)v0 setUseMinFillHeightForTemplateGeneration:1];
  v1 = defaultEngine_defaultEngine;
  defaultEngine_defaultEngine = v0;
}

- (SBUILegibilityDefaultEngine)initWithEngineIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBUILegibilityDefaultEngine *)a2 initWithEngineIdentifier:?];
  }

  v15.receiver = self;
  v15.super_class = SBUILegibilityDefaultEngine;
  v6 = [(SBUILegibilityDefaultEngine *)&v15 init];
  if (v6)
  {
    v7 = [v5 copy];
    engineIdentifier = v6->_engineIdentifier;
    v6->_engineIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    asyncOperationQueue = v6->_asyncOperationQueue;
    v6->_asyncOperationQueue = v9;

    [(NSOperationQueue *)v6->_asyncOperationQueue setMaxConcurrentOperationCount:4];
    [(NSOperationQueue *)v6->_asyncOperationQueue setQualityOfService:25];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel__teardownCaches_ name:@"SBUILegibilityEngineShouldClearCachesNotification" object:0];

    v12 = [[SBUILegibilityCache alloc] initWithEngine:v6];
    legibilityCache = v6->_legibilityCache;
    v6->_legibilityCache = v12;
  }

  return v6;
}

- (void)executeLegibilityUpdateForContainer:(id)a3 forImage:(id)a4 settings:(id)a5 strength:(double *)a6 engineResult:(id *)a7
{
  v41 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  [v13 size];
  if (self->_useMinFillHeightForTemplateGeneration)
  {
    v15 = [(SBUILegibilityCache *)self->_legibilityCache templateImageForSettings:v14 matchingSize:?];
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v17 = [v12 _screen];
  if (v17)
  {
    [v12 _screen];
  }

  else
  {
    [MEMORY[0x1E69DCEB0] mainScreen];
  }
  v18 = ;
  [v18 scale];
  v20 = v19;

  if (!self->_useMinFillHeightForTemplateGeneration)
  {
    goto LABEL_12;
  }

  v21 = [v12 image];
  if (!BSEqualObjects())
  {
LABEL_11:

    goto LABEL_12;
  }

  v22 = [v12 legibilityEngine];
  v23 = v22;
  if (v22 != self)
  {

    goto LABEL_11;
  }

  v31 = [v12 legibilitySettings];
  v32 = BSEqualObjects();

  if (!v32)
  {
LABEL_12:
    if (v16)
    {
      v24 = SBLogLegibility();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v34 = self;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = v13;
        v39 = 2048;
        v40 = v14;
        _os_log_debug_impl(&dword_1A9A79000, v24, OS_LOG_TYPE_DEBUG, "(%@) Legibility background image already prepared for view '%@' / image '%@', settings '%p'", buf, 0x2Au);
      }

      v25 = v16;
      if (a7)
      {
        a7->var0 = 1;
        v25 = v16;
      }

      if (a6)
      {
LABEL_18:
        v26 = [(SBUILegibilityDefaultEngine *)self applyStrength:v25 toImage:v14 settings:*a6];
LABEL_23:
        [v12 updateOrigImage:v13 shadowImage:v25 strengthenedShadowImage:v26 settings:v14 engine:self isTemplate:v16 != 0 withStrength:a6 context:0];
        goto LABEL_24;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69DCAB8];
      [v13 size];
      v25 = [v27 sbui_legibilityImageForSettings:v14 scale:v13 inputImage:1 inputSize:4 allowMinFillHeightHack:0 type:v20 pool:{v28, v29}];
      v30 = SBLogLegibility();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v34 = self;
        v35 = 2112;
        v36 = v12;
        v37 = 2112;
        v38 = v13;
        v39 = 2048;
        v40 = v14;
        _os_log_impl(&dword_1A9A79000, v30, OS_LOG_TYPE_DEFAULT, "(%@) Drew legibility background image for view '%@' / image '%@', settings '%p'", buf, 0x2Au);
      }

      if (a6)
      {
        goto LABEL_18;
      }
    }

    v26 = 0;
    goto LABEL_23;
  }

  v26 = SBLogLegibility();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v34 = self;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 2048;
    v40 = v14;
    _os_log_debug_impl(&dword_1A9A79000, v26, OS_LOG_TYPE_DEBUG, "(%@) Skipping legibility background image generation for view '%@' / image '%@', settings '%p'; this is redundent", buf, 0x2Au);
  }

  v25 = v16;
LABEL_24:
}

- (id)executeAsyncLegibilityUpdateForContainer:(id)a3 image:(id)a4 settings:(id)a5 strength:(double *)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v30 = a7;
  v14 = [v11 _screen];
  if (v14)
  {
    [v11 _screen];
  }

  else
  {
    [MEMORY[0x1E69DCEB0] mainScreen];
  }
  v15 = ;
  [v15 scale];
  v17 = v16;

  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__4;
  v66[4] = __Block_byref_object_dispose__4;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__4;
  v64[4] = __Block_byref_object_dispose__4;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__4;
  v62[4] = __Block_byref_object_dispose__4;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2810000000;
  v60[3] = &unk_1A9B3D9D1;
  v61 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__4;
  v58 = __Block_byref_object_dispose__4;
  v59 = 0;
  v18 = MEMORY[0x1E696AAE0];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke;
  v44[3] = &unk_1E789FA80;
  v48 = &v54;
  v49 = v62;
  v19 = v12;
  v45 = v19;
  v20 = v13;
  v46 = v20;
  v47 = self;
  v52 = v17;
  v53 = a6;
  v50 = v66;
  v51 = v64;
  v21 = [v18 blockOperationWithBlock:v44];
  v22 = v55[5];
  v55[5] = v21;

  objc_initWeak(&location, self);
  v23 = v55[5];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_24;
  v32[3] = &unk_1E789F6C0;
  v37 = &v54;
  v38 = v62;
  v24 = v11;
  v33 = v24;
  v25 = v19;
  v34 = v25;
  v39 = v66;
  v40 = v64;
  v26 = v20;
  v35 = v26;
  objc_copyWeak(v42, &location);
  v42[1] = a6;
  v27 = v30;
  v36 = v27;
  v41 = v60;
  [v23 setCompletionBlock:v32];
  [(NSOperationQueue *)self->_asyncOperationQueue addOperation:v55[5]];
  v28 = v55[5];

  objc_destroyWeak(v42);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v54, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);

  return v28;
}

void __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 56) + 8) + 40);
  if ([v2 isCancelled])
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:SBUILegibilityErrorDomain code:3072 userInfo:0];
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = SBLogLegibility();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);

    Current = 0.0;
    if (v7)
    {
      Current = CFAbsoluteTimeGetCurrent();
    }

    [*(a1 + 32) size];
    v10 = SBUILegibilityImageSizeForContentSizeAndSettings(*(a1 + 40), v9);
    v12 = v11;
    v13 = *(*(a1 + 48) + 8);
    [*(a1 + 32) scale];
    v15 = [v13 memoryPoolForGraphicsContextType:4 matchingSize:v10 scale:{v12, v14}];
    v16 = MEMORY[0x1E69DCAB8];
    v17 = *(a1 + 88);
    v19 = *(a1 + 32);
    v18 = *(a1 + 40);
    [v19 size];
    v22 = [v16 sbui_legibilityImageForSettings:v18 scale:v19 inputImage:0 inputSize:0 allowMinFillHeightHack:4 strength:v15 type:v17 pool:{v20, v21}];
    v23 = *(*(a1 + 72) + 8);
    v24 = *(v23 + 40);
    *(v23 + 40) = v22;

    v25 = *(a1 + 96);
    if (v25)
    {
      v26 = *(*(*(a1 + 72) + 8) + 40);
      v27 = *(a1 + 40);
      v28 = *v25;
      [v26 size];
      v31 = [v26 sbui_strikeImageForLegibilitySettings:v27 strength:4 size:v15 type:v28 pool:{v29, v30}];
      v32 = *(*(a1 + 80) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }

    v34 = SBLogLegibility();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG);

    if (v35)
    {
      v36 = CFAbsoluteTimeGetCurrent();
      v37 = SBLogLegibility();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 32);
        v39 = *(a1 + 40);
        v40 = 138412802;
        v41 = v38;
        v42 = 2048;
        v43 = v39;
        v44 = 2048;
        v45 = v36 - Current;
        _os_log_impl(&dword_1A9A79000, v37, OS_LOG_TYPE_DEFAULT, "Async Shadow Draw time for image '%@', settings '%p': '%f' seconds", &v40, 0x20u);
      }
    }
  }
}

void __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_24(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_2;
  block[3] = &unk_1E789F6C0;
  v9 = *(a1 + 64);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = *(a1 + 80);
  v7 = *(a1 + 48);
  objc_copyWeak(v12, (a1 + 104));
  v12[1] = *(a1 + 112);
  v2 = *(a1 + 56);
  v3 = *(a1 + 96);
  v8 = v2;
  v11 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(v12);
}

void __107__SBUILegibilityDefaultEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_2(uint64_t a1)
{
  v14 = *(*(*(a1 + 64) + 8) + 40);
  if ([v14 isCancelled] && !*(*(*(a1 + 72) + 8) + 40))
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:SBUILegibilityErrorDomain code:3072 userInfo:0];
    v3 = *(*(a1 + 72) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  if (!*(*(*(a1 + 72) + 8) + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(*(a1 + 80) + 8) + 40);
    v8 = *(*(*(a1 + 88) + 8) + 40);
    v9 = *(a1 + 48);
    WeakRetained = objc_loadWeakRetained((a1 + 104));
    [v5 updateOrigImage:v6 shadowImage:v7 strengthenedShadowImage:v8 settings:v9 engine:WeakRetained isTemplate:0 withStrength:*(a1 + 112) context:v14];
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, *(*(*(a1 + 96) + 8) + 32), *(a1 + 40), *(a1 + 48), *(a1 + 112), v14, *(*(*(a1 + 72) + 8) + 40));
  }

  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;
}

- (void)prewarmForSettings:(id)a3 maxSize:(CGSize)a4 minSize:(CGSize)a5 scale:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.height;
  v10 = a4.width;
  v52 = *MEMORY[0x1E69E9840];
  v29 = a3;
  if (!v29)
  {
    [SBUILegibilityDefaultEngine prewarmForSettings:a2 maxSize:self minSize:? scale:?];
  }

  if (v10 > 0.0 && v9 > 0.0 && self->_useMinFillHeightForTemplateGeneration)
  {
    v13 = self;
    objc_sync_enter(v13);
    if ([(SBUILegibilityCache *)v13->_legibilityCache containsTemplateForSettings:v29])
    {
      v14 = SBLogLegibility();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v53.width = v10;
        v53.height = v9;
        v15 = NSStringFromCGSize(v53);
        *buf = 138412802;
        v47 = v13;
        v48 = 2048;
        v49 = v29;
        v50 = 2112;
        v51 = v15;
        _os_log_debug_impl(&dword_1A9A79000, v14, OS_LOG_TYPE_DEBUG, "(%@) Bailing; templateImageForSettings already exists for settings %p, maxSize %@", buf, 0x20u);
      }
    }

    else
    {
      v16 = SBLogLegibility();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);

      Current = 0.0;
      if (v17)
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      v19 = dispatch_group_create();
      v20 = [(SBUILegibilityCache *)v13->_legibilityCache memoryPoolForGraphicsContextType:4 matchingSize:SBUILegibilityImageSizeForContentSizeAndSettings(v29 scale:v10)];
      if (!v13->_prewarmQueue)
      {
        SerialWithQoS = BSDispatchQueueCreateSerialWithQoS();
        prewarmQueue = v13->_prewarmQueue;
        v13->_prewarmQueue = SerialWithQoS;
      }

      for (i = 0; i != 10; ++i)
      {
        dispatch_group_enter(v19);
        v24 = v13->_prewarmQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __72__SBUILegibilityDefaultEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke;
        block[3] = &unk_1E789FAA8;
        v38 = i;
        v39 = width;
        v40 = height;
        v41 = v10 - width;
        v42 = a6;
        v43 = v9 - height;
        v25 = v29;
        v34 = v25;
        v26 = v20;
        v35 = v26;
        v36 = v13;
        v44 = v10;
        v45 = v9;
        v14 = v19;
        v37 = v14;
        dispatch_async(v24, block);
      }

      v27 = SBLogLegibility();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);

      if (v28)
      {
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __72__SBUILegibilityDefaultEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke_31;
        v30[3] = &unk_1E789DCF8;
        v32 = Current;
        v30[4] = v13;
        v31 = v25;
        dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v30);
      }
    }

    objc_sync_exit(v13);
  }
}

void __72__SBUILegibilityDefaultEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  UIRoundToScale();
  v3 = v2;
  UIRoundToScale();
  v22.size.height = v4;
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = v3;
  v23 = CGRectIntegral(v22);
  v5 = [MEMORY[0x1E69DCAB8] sbui_legibilityImageForSettings:*(a1 + 32) scale:0 inputImage:1 inputSize:4 allowMinFillHeightHack:*(a1 + 40) type:*(a1 + 96) pool:{v23.size.width, v23.size.height}];
  if (v5)
  {
    [*(*(a1 + 48) + 8) cacheTemplateShadowImage:v5 settings:*(a1 + 32) maxSize:{*(a1 + 112), *(a1 + 120)}];
    v6 = SBLogLegibility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 64);
      v9 = *(a1 + 32);
      v13 = 138413058;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = 10;
      v19 = 2048;
      v20 = v9;
      _os_log_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_DEFAULT, "(%@) Prewarmed %lu / %lu legibility background for settings %p", &v13, 0x2Au);
    }
  }

  else
  {
    v6 = SBLogLegibility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 64);
      v12 = *(a1 + 32);
      v13 = 138413058;
      v14 = v10;
      v15 = 2048;
      v16 = v11;
      v17 = 2048;
      v18 = 10;
      v19 = 2048;
      v20 = v12;
      _os_log_error_impl(&dword_1A9A79000, v6, OS_LOG_TYPE_ERROR, "(%@) FAILED to Prewarm legibility background %lu / %lu for settings %p", &v13, 0x2Au);
    }
  }

  dispatch_group_leave(*(a1 + 56));
}

void __72__SBUILegibilityDefaultEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke_31(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 48);
  v4 = SBLogLegibility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138413058;
    v8 = v5;
    v9 = 2048;
    v10 = 10;
    v11 = 2048;
    v12 = v6;
    v13 = 2048;
    v14 = Current - v3;
    _os_log_impl(&dword_1A9A79000, v4, OS_LOG_TYPE_DEFAULT, "(%@) Finished prewarm of %lu legibility backgrounds for settings %p in %f seconds", &v7, 0x2Au);
  }
}

- (id)applyStrength:(double)a3 toImage:(id)a4 settings:(id)a5
{
  v8 = a4;
  v9 = a5;
  legibilityCache = self->_legibilityCache;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__SBUILegibilityDefaultEngine_applyStrength_toImage_settings___block_invoke;
  v15[3] = &unk_1E789FAD0;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v11 = v9;
  v12 = v8;
  v13 = [(SBUILegibilityCache *)legibilityCache cachedStrengthForImage:v12 strength:v15 generator:a3];

  return v13;
}

id __62__SBUILegibilityDefaultEngine_applyStrength_toImage_settings___block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 size];
  v8 = SBUILegibilityImageSizeForContentSizeAndSettings(*(a1 + 40), v7);
  v10 = v9;
  v11 = *(*(a1 + 48) + 8);
  [*(a1 + 32) scale];
  v13 = [v11 memoryPoolForGraphicsContextType:4 matchingSize:v8 scale:{v10, v12}];
  v14 = *(a1 + 40);
  [v6 size];
  v17 = [v6 sbui_strikeImageForLegibilitySettings:v14 strength:4 size:v13 type:a3 pool:{v15, v16}];

  SBFPreheatImageData();

  return v17;
}

- (CGSize)calculateShadowImageViewSizeForOriginalImage:(id)a3 shadowImage:(id)a4 settings:(id)a5
{
  v6 = a5;
  [a3 size];
  v8 = SBUILegibilityImageSizeForContentSizeAndSettings(v6, v7);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_teardownCaches:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSOperationQueue *)self->_asyncOperationQueue cancelAllOperations];
  [(SBUILegibilityCache *)self->_legibilityCache removeAllObjects];
  v5 = SBLogLegibility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412546;
    v7 = self;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1A9A79000, v5, OS_LOG_TYPE_DEFAULT, "(%@) Cache teardown complete; requested by %@", &v6, 0x16u);
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_engineIdentifier withName:@"engineIdentifier"];
  v4 = [v3 build];

  return v4;
}

- (void)initWithEngineIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityDefaultEngine.m" lineNumber:51 description:{@"Invalid parameter not satisfying: %@", @"engineIdentifier"}];
}

- (void)prewarmForSettings:(uint64_t)a1 maxSize:(uint64_t)a2 minSize:scale:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityDefaultEngine.m" lineNumber:192 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
}

@end