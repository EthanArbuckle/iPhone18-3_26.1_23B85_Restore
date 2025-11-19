@interface SBUILegibilityMetalEngine
- (CGSize)calculateShadowImageViewSizeForOriginalImage:(id)a3 shadowImage:(id)a4 settings:(id)a5;
- (NSString)description;
- (SBUILegibilityMetalEngine)initWithEngineIdentifier:(id)a3 algorithm:(int64_t)a4;
- (id)_findEngineConfigurationMatchingScreen:(id)a3 settings:(id)a4;
- (id)applyStrength:(double)a3 toImage:(id)a4 settings:(id)a5;
- (id)executeAsyncLegibilityUpdateForContainer:(id)a3 image:(id)a4 settings:(id)a5 strength:(double *)a6 completion:(id)a7;
- (void)_teardownCaches:(id)a3;
- (void)executeLegibilityUpdateForContainer:(id)a3 forImage:(id)a4 settings:(id)a5 strength:(double *)a6 engineResult:(id *)a7;
- (void)prewarmForSettings:(id)a3 maxSize:(CGSize)a4 minSize:(CGSize)a5 scale:(double)a6;
@end

@implementation SBUILegibilityMetalEngine

- (SBUILegibilityMetalEngine)initWithEngineIdentifier:(id)a3 algorithm:(int64_t)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = SBUILegibilityMetalEngine;
  v7 = [(SBUILegibilityMetalEngine *)&v18 init];
  if (v7)
  {
    v8 = [v6 copy];
    engineIdentifier = v7->_engineIdentifier;
    v7->_engineIdentifier = v8;

    v7->_algorithm = a4;
    v10 = [[SBUILegibilityCache alloc] initWithEngine:v7];
    legibilityCache = v7->_legibilityCache;
    v7->_legibilityCache = v10;

    v12 = [MEMORY[0x1E69DCEB0] mainScreen];
    screen = v7->_screen;
    v7->_screen = v12;

    v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    asyncOperationQueue = v7->_asyncOperationQueue;
    v7->_asyncOperationQueue = v14;

    [(NSOperationQueue *)v7->_asyncOperationQueue setMaxConcurrentOperationCount:10];
    [(NSOperationQueue *)v7->_asyncOperationQueue setQualityOfService:17];
    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v7 selector:sel__teardownCaches_ name:@"SBUILegibilityEngineShouldClearCachesNotification" object:0];
  }

  return v7;
}

- (void)executeLegibilityUpdateForContainer:(id)a3 forImage:(id)a4 settings:(id)a5 strength:(double *)a6 engineResult:(id *)a7
{
  v38 = *MEMORY[0x1E69E9840];
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
  if (!self->_useMinFillHeightForTemplateGeneration)
  {
    goto LABEL_9;
  }

  v17 = [v12 shadowImage];
  if (!BSEqualObjects())
  {
LABEL_8:

    goto LABEL_9;
  }

  v18 = [v12 legibilityEngine];
  v19 = v18;
  if (v18 != self)
  {

    goto LABEL_8;
  }

  v28 = [v12 legibilitySettings];
  v29 = BSEqualObjects();

  if (!v29)
  {
LABEL_9:
    if (v16)
    {
      v20 = SBLogLegibility();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138413058;
        v31 = self;
        v32 = 2112;
        v33 = v12;
        v34 = 2112;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_debug_impl(&dword_1A9A79000, v20, OS_LOG_TYPE_DEBUG, "(%@) Legibility background image already prepared for view '%@' / image '%@', settings '%p'", buf, 0x2Au);
      }

      v21 = v16;
      if (a7)
      {
        a7->var0 = 1;
        v21 = v16;
      }

      if (a6)
      {
LABEL_15:
        v22 = [(SBUILegibilityMetalEngine *)self applyStrength:v21 toImage:v14 settings:*a6];
LABEL_22:
        [v12 updateOrigImage:v13 shadowImage:v21 strengthenedShadowImage:v22 settings:v14 engine:self isTemplate:v16 != 0 withStrength:a6 context:0];
        goto LABEL_23;
      }
    }

    else
    {
      v23 = [v12 _screen];
      screen = v23;
      if (!v23)
      {
        screen = self->_screen;
      }

      v25 = screen;

      v26 = [(SBUILegibilityMetalEngine *)self _findEngineConfigurationMatchingScreen:v25 settings:v14];
      v21 = [v26 executeBlurForImage:v13 settings:v14];
      v27 = SBLogLegibility();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v31 = self;
        v32 = 2112;
        v33 = v12;
        v34 = 2112;
        v35 = v13;
        v36 = 2048;
        v37 = v14;
        _os_log_impl(&dword_1A9A79000, v27, OS_LOG_TYPE_DEFAULT, "(%@) Drew legibility background image for view '%@' / image '%@', settings '%p'", buf, 0x2Au);
      }

      if (a6)
      {
        goto LABEL_15;
      }
    }

    v22 = 0;
    goto LABEL_22;
  }

  v22 = SBLogLegibility();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v31 = self;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v13;
    v36 = 2048;
    v37 = v14;
    _os_log_debug_impl(&dword_1A9A79000, v22, OS_LOG_TYPE_DEBUG, "(%@) Skipping legibility background image generation for view '%@' / image '%@', settings '%p'; this is redundent", buf, 0x2Au);
  }

  v21 = v16;
LABEL_23:
}

- (id)executeAsyncLegibilityUpdateForContainer:(id)a3 image:(id)a4 settings:(id)a5 strength:(double *)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v31 = a7;
  v14 = [v11 _screen];
  screen = v14;
  if (!v14)
  {
    screen = self->_screen;
  }

  v16 = screen;

  v17 = [(SBUILegibilityMetalEngine *)self _findEngineConfigurationMatchingScreen:v16 settings:v13];
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__2;
  v67[4] = __Block_byref_object_dispose__2;
  v68 = 0;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x3032000000;
  v65[3] = __Block_byref_object_copy__2;
  v65[4] = __Block_byref_object_dispose__2;
  v66 = 0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__2;
  v63[4] = __Block_byref_object_dispose__2;
  v64 = 0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2810000000;
  v61[3] = &unk_1A9B3D9D1;
  v62 = 0;
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__2;
  v59 = __Block_byref_object_dispose__2;
  v60 = 0;
  v18 = MEMORY[0x1E696AAE0];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke;
  v45[3] = &unk_1E789F698;
  v50 = &v55;
  v51 = v63;
  v52 = v67;
  v30 = v17;
  v46 = v30;
  v19 = v12;
  v47 = v19;
  v20 = v13;
  v53 = v65;
  v54 = a6;
  v48 = v20;
  v49 = self;
  v21 = [v18 blockOperationWithBlock:v45];
  v22 = v56[5];
  v56[5] = v21;

  objc_initWeak(&location, self);
  v23 = v56[5];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_2;
  v33[3] = &unk_1E789F6C0;
  v38 = &v55;
  v39 = v63;
  v24 = v11;
  v34 = v24;
  v25 = v19;
  v35 = v25;
  v40 = v67;
  v41 = v65;
  v26 = v20;
  v36 = v26;
  objc_copyWeak(v43, &location);
  v43[1] = a6;
  v27 = v31;
  v37 = v27;
  v42 = v61;
  [v23 setCompletionBlock:v33];
  [(NSOperationQueue *)self->_asyncOperationQueue addOperation:v56[5]];
  v28 = v56[5];

  objc_destroyWeak(v43);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v55, 8);

  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v63, 8);

  _Block_object_dispose(v65, 8);
  _Block_object_dispose(v67, 8);

  return v28;
}

void __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke(uint64_t a1)
{
  v10 = *(*(*(a1 + 64) + 8) + 40);
  if ([v10 isCancelled])
  {
    v2 = [MEMORY[0x1E696ABC0] errorWithDomain:SBUILegibilityErrorDomain code:3072 userInfo:0];
    v3 = 72;
  }

  else
  {
    v4 = [*(a1 + 32) executeBlurForImage:*(a1 + 40) settings:*(a1 + 48)];
    v5 = *(*(a1 + 80) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = *(a1 + 96);
    if (!v7)
    {
      goto LABEL_6;
    }

    v2 = [*(a1 + 56) applyStrength:*(*(*(a1 + 80) + 8) + 40) toImage:*(a1 + 48) settings:*v7];
    v3 = 88;
  }

  v8 = *(*(a1 + v3) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v2;

LABEL_6:
}

void __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_3;
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

void __105__SBUILegibilityMetalEngine_executeAsyncLegibilityUpdateForContainer_image_settings_strength_completion___block_invoke_3(uint64_t a1)
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
  size = a4.height;
  width = a4.width;
  v30 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    [SBUILegibilityMetalEngine prewarmForSettings:a2 maxSize:self minSize:? scale:?];
  }

  if (width > 0.0 && size > 0.0 && self->_useMinFillHeightForTemplateGeneration)
  {
    if ([(SBUILegibilityCache *)self->_legibilityCache containsTemplateForSettings:v10, size])
    {
      v11 = SBLogLegibility();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v31.width = width;
        v31.height = size;
        v21 = NSStringFromCGSize(v31);
        *buf = 138412802;
        v25 = self;
        v26 = 2048;
        v27 = v10;
        v28 = 2112;
        v29 = v21;
        _os_log_debug_impl(&dword_1A9A79000, v11, OS_LOG_TYPE_DEBUG, "(%@) Bailing; templateImageForSettings already exists for settings %p, maxSize %@", buf, 0x20u);
      }
    }

    else
    {
      [(UIScreen *)self->_screen scale];
      if (v12 != a6)
      {
        [SBUILegibilityMetalEngine prewarmForSettings:a2 maxSize:self minSize:? scale:?];
      }

      v11 = [(SBUILegibilityCache *)self->_legibilityCache memoryPoolForGraphicsContextType:4 matchingSize:SBUILegibilityImageSizeForContentSizeAndSettings(v10 scale:width)];
      for (i = 0; i != 10; ++i)
      {
        UIRoundToScale();
        v15 = v14;
        UIRoundToScale();
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __70__SBUILegibilityMetalEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke;
        v23[3] = &__block_descriptor_48_e5_v8__0l;
        *&v23[4] = v15;
        *&v23[5] = v16;
        v17 = [MEMORY[0x1E69DCAB8] sbf_imageFromContextWithSize:4 scale:v11 type:v23 pool:v15 drawing:{v16, a6}];
        v18 = [(SBUILegibilityMetalEngine *)self _findEngineConfigurationMatchingScreen:self->_screen settings:v10];
        v19 = [v18 executeBlurForImage:v17 settings:v10];
        if (v19)
        {
          [(SBUILegibilityCache *)self->_legibilityCache cacheTemplateShadowImage:v19 settings:v10 maxSize:width, size];
          v20 = SBLogLegibility();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v25 = self;
            v26 = 2048;
            v27 = v10;
            _os_log_impl(&dword_1A9A79000, v20, OS_LOG_TYPE_DEFAULT, "(%@) Prewarmed legibility background for settings %p", buf, 0x16u);
          }
        }

        else
        {
          v20 = SBLogLegibility();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v25 = self;
            v26 = 2048;
            v27 = v10;
            _os_log_error_impl(&dword_1A9A79000, v20, OS_LOG_TYPE_ERROR, "(%@) FAILED to Prewarm legibility background for settings %p", buf, 0x16u);
          }
        }
      }
    }
  }
}

void __70__SBUILegibilityMetalEngine_prewarmForSettings_maxSize_minSize_scale___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] blackColor];
  [v2 setFill];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = 0;
  v6 = 0;

  UIRectFill(*&v5);
}

- (id)applyStrength:(double)a3 toImage:(id)a4 settings:(id)a5
{
  v8 = a5;
  legibilityCache = self->_legibilityCache;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __60__SBUILegibilityMetalEngine_applyStrength_toImage_settings___block_invoke;
  v13[3] = &unk_1E789F708;
  v14 = v8;
  v10 = v8;
  v11 = [(SBUILegibilityCache *)legibilityCache cachedStrengthForImage:a4 strength:v13 generator:a3];

  return v11;
}

id __60__SBUILegibilityMetalEngine_applyStrength_toImage_settings___block_invoke(uint64_t a1, void *a2, double a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 size];
  v8 = [v5 sbui_strikeImageForLegibilitySettings:v4 strength:4 size:0 type:a3 pool:{v6, v7}];

  SBFPreheatImageData();

  return v8;
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

- (id)_findEngineConfigurationMatchingScreen:(id)a3 settings:(id)a4
{
  v6 = a3;
  v7 = a4;
  enginesForSettingsForScreen = self->_enginesForSettingsForScreen;
  if (!enginesForSettingsForScreen)
  {
    v9 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    v10 = self->_enginesForSettingsForScreen;
    self->_enginesForSettingsForScreen = v9;

    enginesForSettingsForScreen = self->_enginesForSettingsForScreen;
  }

  v11 = [(NSMapTable *)enginesForSettingsForScreen objectForKey:v7];
  v12 = [v11 objectForKey:v6];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (!v11)
    {
      v11 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
      [(NSMapTable *)self->_enginesForSettingsForScreen setObject:v11 forKey:v7];
    }

    v13 = [[_SBUILegibilityMetalEngineConfiguration alloc] initWithScreen:v6 settings:v7 algo:self->_algorithm];
    [v11 setObject:v13 forKey:v6];
  }

  v14 = v13;

  return v14;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  [v3 appendString:self->_engineIdentifier withName:@"engineIdentifier"];
  if (self->_algorithm)
  {
    v4 = @"Gaussian";
  }

  else
  {
    v4 = @"Tent";
  }

  [v3 appendString:v4 withName:@"algorithm"];
  v5 = [v3 build];

  return v5;
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

- (void)prewarmForSettings:(uint64_t)a1 maxSize:(uint64_t)a2 minSize:scale:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUILegibilityMetalEngine.m" lineNumber:409 description:{@"Invalid parameter not satisfying: %@", @"settings"}];
}

- (void)prewarmForSettings:(const char *)a1 maxSize:(uint64_t)a2 minSize:scale:.cold.2(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Screen scale is not what configured with!"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"SBUILegibilityMetalEngine.m";
    v16 = 1024;
    v17 = 423;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A9A79000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end