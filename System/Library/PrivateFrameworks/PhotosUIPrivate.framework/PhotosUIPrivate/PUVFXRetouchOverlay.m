@interface PUVFXRetouchOverlay
+ (id)_blurredEdgeImageWithImage:(id)a3 settings:(id)a4;
- (PUVFXCleanupOverlayDelegate)overlayDelegate;
- (PUVFXRetouchOverlay)initWithComposition:(id)a3 maskContext:(id)a4 constrainingView:(id)a5 isHDR:(BOOL)a6 overlayDelegate:(id)a7;
- (double)_maxEDRForDisplay;
- (id)_createOutlineImage:(id)a3 settings:(id)a4;
- (id)_createRadialGradientWithSize:(CGSize)a3;
- (id)_createSubjectExclusionMaskForComposition:(id)a3;
- (id)_scaleCIImage:(id)a3 toFitSize:(CGSize)a4;
- (id)_syncGetSourceImageOfSize:(CGSize)a3;
- (void)_addNotifications;
- (void)_asyncCIRenderWithFlush:(id)a3;
- (void)_configureEmitter:(id)a3 withSettings:(id)a4;
- (void)_configureOverrides:(id)a3 withSettings:(id)a4;
- (void)_createAndAddLayers;
- (void)_createDeclutterMaskForComposition:(id)a3;
- (void)_delayedScreenParamsDidChange:(id)a3;
- (void)_didMoveToSuperview;
- (void)_layoutSubviews;
- (void)_manageThrottledState;
- (void)_removeNotifications;
- (void)_screenParamsDidChange:(id)a3;
- (void)_snapshotAvailable:(id)a3;
- (void)didMoveToSuperview;
- (void)didRenderComposition:(id)a3;
- (void)didResetComposition:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
- (void)selectPoint:(CGPoint)a3 withMask:(id)a4 composition:(id)a5;
- (void)showControlsInViewController:(id)a3;
@end

@implementation PUVFXRetouchOverlay

- (PUVFXCleanupOverlayDelegate)overlayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_overlayDelegate);

  return WeakRetained;
}

- (void)_asyncCIRenderWithFlush:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__PUVFXRetouchOverlay__asyncCIRenderWithFlush___block_invoke;
  block[3] = &unk_1E7B80C88;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, block);
}

uint64_t __47__PUVFXRetouchOverlay__asyncCIRenderWithFlush___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] begin];
  (*(*(a1 + 32) + 16))();
  [MEMORY[0x1E6979518] commit];
  v2 = MEMORY[0x1E6979518];

  return [v2 flush];
}

- (id)_scaleCIImage:(id)a3 toFitSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 extent];
  v8 = v7;
  v10 = v9;
  v11 = v6;
  v12 = v11;
  v13 = v8 == width && v10 == height;
  v14 = v11;
  if (!v13)
  {
    v15 = width / v8;
    if (width / v8 >= height / v10)
    {
      v15 = height / v10;
    }

    CGAffineTransformMakeScale(&v17, v15, v15);
    v14 = [v12 imageByApplyingTransform:&v17];
  }

  return v14;
}

- (id)_createOutlineImage:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"dilation"];
  [v7 floatValue];
  v9 = v8;

  v10 = [MEMORY[0x1E695F648] morphologyMinimumFilter];
  LODWORD(v11) = v9;
  [v10 setRadius:v11];
  [v10 setInputImage:v6];
  v12 = [v10 outputImage];
  [v6 extent];
  v13 = [v12 imageByCroppingToRect:?];

  v14 = [MEMORY[0x1E695F648] sourceOutCompositingFilter];
  [v14 setInputImage:v6];

  [v14 setBackgroundImage:v13];
  v15 = [MEMORY[0x1E695F648] gaussianBlurFilter];
  v16 = [v14 outputImage];
  [v15 setInputImage:v16];

  v17 = [v5 objectForKeyedSubscript:@"blurSigma"];

  [v17 floatValue];
  [v15 setRadius:?];

  v18 = [v15 outputImage];

  return v18;
}

- (void)showControlsInViewController:(id)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AE40];
  settings = self->_settings;
  v18 = 0;
  v6 = a3;
  v7 = [v4 dataWithPropertyList:settings format:100 options:0 error:&v18];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __52__PUVFXRetouchOverlay_showControlsInViewController___block_invoke;
  v16 = &unk_1E7B7C2D8;
  v17 = self;
  v8 = v18;
  v9 = [_TtC15PhotosUIPrivate13PUVFXControls createViewControllerWithSettingsData:v7 update:&v13];
  v10 = [v6 sheetPresentationController];
  v11 = [MEMORY[0x1E69DCF58] mediumDetent];
  v19[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  [v10 setDetents:v12];

  [v10 setPrefersGrabberVisible:1];
  [v6 setModalPresentationStyle:2];
  [v6 presentViewController:v9 animated:1 completion:&__block_literal_global_420_61911];
}

void __52__PUVFXRetouchOverlay_showControlsInViewController___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v3 = [MEMORY[0x1E696AE40] propertyListWithData:a2 options:0 format:0 error:&v5];
  v4 = v5;
  if (!v4)
  {
    objc_storeStrong((*(a1 + 32) + 432), v3);
  }
}

- (void)_configureEmitter:(id)a3 withSettings:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = [v6 objectForKeyedSubscript:@"cells"];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = objc_opt_new();
        [v7 addObject:v13];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __54__PUVFXRetouchOverlay__configureEmitter_withSettings___block_invoke;
        v20[3] = &unk_1E7B7C2B0;
        v21 = v13;
        v22 = self;
        v14 = v13;
        [v12 enumerateKeysAndObjectsUsingBlock:v20];
        [v14 setEmissionRange:3.14159265];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v15 = [v6 objectForKeyedSubscript:@"emitterShape"];
  [v18 setEmitterShape:v15];

  v16 = [v6 objectForKeyedSubscript:@"renderMode"];
  [v18 setRenderMode:v16];

  v17 = [v6 objectForKeyedSubscript:@"emitterMode"];
  [v18 setEmitterMode:v17];

  [v18 setEmitterCells:v7];
}

void __54__PUVFXRetouchOverlay__configureEmitter_withSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if ([(__CFString *)v18 isEqualToString:@"color"])
  {
    v6 = [MEMORY[0x1E69DC888] colorFromDictionary:v5];
    v7 = [v6 CGColor];

    v8 = *(a1 + 32);
    v9 = @"color";
    v10 = v7;
  }

  else
  {
    if ([(__CFString *)v18 isEqualToString:@"particleSize"])
    {
      [v5 doubleValue];
      v12 = v11;
      v13 = [*(a1 + 40) _createRadialGradientWithSize:{v11, v11}];
      v14 = *(*(a1 + 40) + 456);
      v15 = *MEMORY[0x1E695F920];
      v16 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
      v17 = [v14 createCGImage:v13 fromRect:v15 format:objc_msgSend(v16 colorSpace:{"CGColorSpace"), 0.0, 0.0, v12, v12}];

      [*(a1 + 32) setContents:v17];
      CGImageRelease(v17);

      goto LABEL_7;
    }

    v8 = *(a1 + 32);
    v10 = v5;
    v9 = v18;
  }

  [v8 setValue:v10 forKey:v9];
LABEL_7:
}

- (void)_configureOverrides:(id)a3 withSettings:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v32 = [MEMORY[0x1E695DF70] array];
  v7 = [v6 valueForKeyPath:@"colorOverLife.colors"];
  if (v7)
  {
    v8 = v7;
    v9 = PFMap();

    v10 = [MEMORY[0x1E695DF70] arrayWithArray:v9];
    v11 = [v6 objectForKeyedSubscript:@"colorChangeSpeed"];
    v12 = [v11 integerValue];

    if (v12 >= 2)
    {
      v13 = v12 - 1;
      do
      {
        [v10 addObjectsFromArray:v9];
        --v13;
      }

      while (v13);
    }

    v14 = [MEMORY[0x1E6979358] behaviorWithType:*MEMORY[0x1E6979750]];
    [v14 setValue:v10 forKey:@"colors"];
    [v32 addObject:v14];
  }

  v30 = v5;
  [v6 valueForKeyPath:{@"valueOverLife", v6}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v34;
    v18 = *MEMORY[0x1E6979760];
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v34 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        v21 = [MEMORY[0x1E6979358] behaviorWithType:v18];
        v22 = [v20 objectForKeyedSubscript:@"keyPath"];
        [v21 setValue:v22 forKey:@"keyPath"];

        v23 = [v20 objectForKeyedSubscript:@"values"];
        [v21 setValue:v23 forKey:@"values"];

        v24 = [v20 objectForKeyedSubscript:@"locations"];
        [v21 setValue:v24 forKey:@"locations"];

        [v32 addObject:v21];
      }

      v16 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v16);
  }

  [v30 setEmitterBehaviors:v32];
  v25 = [v29 objectForKeyedSubscript:@"compositingFilter"];

  if (v25)
  {
    v26 = MEMORY[0x1E6979378];
    v27 = [v29 objectForKeyedSubscript:@"compositingFilter"];
    v28 = [v26 filterWithType:v27];
    [v30 setCompositingFilter:v28];
  }
}

id __56__PUVFXRetouchOverlay__configureOverrides_withSettings___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E69DC888] colorFromDictionary:a2];
  v3 = [v2 CGColor];

  return v3;
}

- (id)_createRadialGradientWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [MEMORY[0x1E695F648] radialGradientFilter];
  [v5 setCenter:{width * 0.5, height * 0.5}];
  v6 = width * 0.1;
  *&v6 = width * 0.1;
  [v5 setRadius0:v6];
  v7 = width * 0.25;
  *&v7 = width * 0.25;
  [v5 setRadius1:v7];
  v8 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
  [v5 setColor0:v8];

  v9 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
  [v5 setColor1:v9];

  v10 = [v5 outputImage];

  return v10;
}

- (void)didRenderComposition:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_storeStrong(&self->_composition, a3);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"animation"];
  v7 = +[PUTimingManager defaultManager];
  v8 = [v7 stopwatchForKey:v6];

  v9 = [v8 log];
  v10 = [v8 sid];
  if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = v10;
    if (os_signpost_enabled(v9))
    {
      v19 = 136315138;
      v20 = "[PUVFXRetouchOverlay didRenderComposition:]";
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v9, OS_SIGNPOST_EVENT, v11, "animation", "%s - setting render finished state", &v19, 0xCu);
    }
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"render"];
  v13 = +[PUTimingManager defaultManager];
  v14 = [v13 stopwatchForKey:v12];

  v15 = [v14 log];
  v16 = [v14 sid];
  if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = v16;
    if (os_signpost_enabled(v15))
    {
      LOWORD(v19) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v15, OS_SIGNPOST_INTERVAL_END, v17, "render", "", &v19, 2u);
    }
  }

  v18 = +[PUTimingManager defaultManager];
  [v18 removeStopwatchForKey:v12];

  [(PUVFXRetouchOverlay *)self _createDeclutterMaskForComposition:self->_composition];
}

- (void)didResetComposition:(id)a3
{
  objc_storeStrong(&self->_composition, a3);
  v5 = a3;
  [(PUVFXDimmingBackgroundLayer *)self->_rootLayer resetMask];
  [(PUVFXRetouchOverlay *)self _createDeclutterMaskForComposition:v5];
}

- (id)_createSubjectExclusionMaskForComposition:(id)a3
{
  v4 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__61999;
  v13 = __Block_byref_object_dispose__62000;
  v14 = 0;
  if ([MEMORY[0x1E69B3AB0] preserveSubjectsWhenInpainting])
  {
    inpaintCtx = self->_inpaintCtx;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__PUVFXRetouchOverlay__createSubjectExclusionMaskForComposition___block_invoke;
    v8[3] = &unk_1E7B7C288;
    v8[4] = &v9;
    [MEMORY[0x1E69BDE68] createSubjectMaskForContext:inpaintCtx composition:v4 completion:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)_createDeclutterMaskForComposition:(id)a3
{
  v4 = a3;
  if (self->_inpaintCtx)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"declutter"];
    v6 = +[PUTimingManager defaultManager];
    v7 = [v6 stopwatchForKey:v5];

    v8 = [v7 log];
    v9 = os_signpost_id_generate(v8);

    [v7 setSid:v9];
    v10 = [v7 log];
    v11 = [v7 sid];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "declutter", "+[PIObjectRemoval createDeclutterMaskForContext]", buf, 2u);
      }
    }

    v13 = MEMORY[0x1E69BDE68];
    inpaintCtx = self->_inpaintCtx;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __58__PUVFXRetouchOverlay__createDeclutterMaskForComposition___block_invoke;
    v15[3] = &unk_1E7B7C260;
    v15[4] = self;
    v16 = v4;
    [v13 createDeclutterMaskForContext:inpaintCtx composition:v16 completion:v15];
  }
}

void __58__PUVFXRetouchOverlay__createDeclutterMaskForComposition___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"declutter"];
  v5 = +[PUTimingManager defaultManager];
  v6 = [v5 stopwatchForKey:v4];

  v7 = [v6 log];
  v8 = [v6 sid];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      LOWORD(buf.a) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B36F3000, v7, OS_SIGNPOST_INTERVAL_END, v9, "declutter", "", &buf, 2u);
    }
  }

  v10 = +[PUTimingManager defaultManager];
  [v10 removeStopwatchForKey:v4];

  [*(*(a1 + 32) + 416) resetMask];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 488));
  [WeakRetained imageSize];
  v13 = v12;
  v15 = v14;

  if (v3)
  {
    v16 = objc_loadWeakRetained((*(a1 + 32) + 488));
    v17 = v16;
    if (!v16 || v13 == 0.0 || v15 == 0.0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v18 = MEMORY[0x1E69BDDB0];
    v19 = *MEMORY[0x1E69BDDB0];

    if (v13 != v19 || v15 != *(v18 + 8))
    {
      v20 = MEMORY[0x1E695F658];
      v21 = [v3 buffer];
      v17 = [v20 imageWithCVPixelBuffer:{objc_msgSend(v21, "CVPixelBuffer")}];

      if ([MEMORY[0x1E69B3DB8] isMaskValid:v17])
      {
        v22 = [*(a1 + 32) _createSubjectExclusionMaskForComposition:*(a1 + 40)];
        v23 = v22;
        if (v22)
        {
          v24 = MEMORY[0x1E695F658];
          v25 = [v22 buffer];
          v26 = [v24 imageWithCVPixelBuffer:{objc_msgSend(v25, "CVPixelBuffer")}];

          [v17 extent];
          v28 = v27;
          [v26 extent];
          v30 = v28 / v29;
          [v17 extent];
          v32 = v31;
          [v26 extent];
          CGAffineTransformMakeScale(&buf, v30, v32 / v33);
          v34 = [v26 imageByApplyingTransform:&buf];

          v35 = [MEMORY[0x1E695F608] subtract];
          v36 = [v35 applyWithForeground:v34 background:v17];

          v17 = v36;
        }

        v37 = [v17 imageByApplyingFilter:@"CIMaskToAlpha"];

        v38 = *(a1 + 40);
        v49 = 0;
        v39 = [MEMORY[0x1E69B3DB8] transformedImage:v37 forComposition:v38 imageSize:&v49 error:{v13, v15}];
        v40 = v49;

        if (v39)
        {
          v41 = objc_opt_class();
          v42 = [*(*(a1 + 32) + 432) objectForKeyedSubscript:@"glow"];
          v43 = [v41 _blurredEdgeImageWithImage:v39 settings:v42];

          v44 = [*(a1 + 32) _scaleCIImage:v43 toFitSize:{1024.0, 1024.0}];

          v45 = *(a1 + 32);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __58__PUVFXRetouchOverlay__createDeclutterMaskForComposition___block_invoke_366;
          v47[3] = &unk_1E7B80C38;
          v47[4] = v45;
          v17 = v44;
          v48 = v17;
          [v45 _asyncCIRenderWithFlush:v47];
        }

        else
        {
          v46 = __log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            LODWORD(buf.a) = 138412290;
            *(&buf.a + 4) = v40;
            _os_log_debug_impl(&dword_1B36F3000, v46, OS_LOG_TYPE_DEBUG, "Error transforming mask image: %@", &buf, 0xCu);
          }

          v17 = 0;
        }
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

uint64_t __58__PUVFXRetouchOverlay__createDeclutterMaskForComposition___block_invoke_366(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 416);
  v5 = *(v2 + 456);
  v6 = *MEMORY[0x1E695F920];
  v7 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
  [v4 setBackgroundImage:v3 ctx:v5 format:v6 colorSpace:{objc_msgSend(v7, "CGColorSpace")}];

  v8 = *(*(a1 + 32) + 416);

  return [v8 setForegroundMask:0];
}

- (id)_syncGetSourceImageOfSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->_overlayDelegate);
  v6 = [WeakRetained sourceImageOfSize:{width, height}];

  return v6;
}

- (void)selectPoint:(CGPoint)a3 withMask:(id)a4 composition:(id)a5
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  if ([MEMORY[0x1E69B3DB8] isMaskValid:v8])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"render"];
    v10 = +[PUTimingManager defaultManager];
    v11 = [v10 stopwatchForKey:v9];

    v12 = [v11 log];
    v13 = os_signpost_id_generate(v12);

    [v11 setSid:v13];
    v14 = [v11 log];
    v15 = [v11 sid];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "render", "user selected point", buf, 2u);
      }
    }

    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"animation"];
    v18 = +[PUTimingManager defaultManager];
    v19 = [v18 stopwatchForKey:v17];

    v20 = [v19 log];
    v21 = os_signpost_id_generate(v20);

    [v19 setSid:v21];
    v22 = [v19 log];
    v23 = [v19 sid];
    if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1B36F3000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "animation", "start animations", buf, 2u);
      }
    }

    v25 = [(PUVFXRetouchOverlay *)self _scaleCIImage:v8 toFitSize:1024.0, 1024.0];

    v26 = objc_opt_class();
    v27 = [(NSDictionary *)self->_settings objectForKeyedSubscript:@"glow"];
    v28 = [v26 _blurredEdgeImageWithImage:v25 settings:v27];
    v29 = [v28 imageByApplyingFilter:@"CIMaskToAlpha"];

    v30 = [(PUVFXRetouchOverlay *)self superview];
    v31 = [v30 layer];
    [v31 convertPoint:self->_rootLayer toLayer:{x, y}];
    v33 = v32;
    v35 = v34;

    if (self->_isBrushing)
    {
      v41 = MEMORY[0x1E69E9820];
      v42 = 3221225472;
      v43 = __56__PUVFXRetouchOverlay_selectPoint_withMask_composition___block_invoke_2;
      v44 = &unk_1E7B80C38;
      v36 = &v46;
      v45 = self;
      v46 = v29;
      v37 = v29;
      [(PUVFXRetouchOverlay *)self _asyncCIRenderWithFlush:&v41];
      WeakRetained = objc_loadWeakRetained(&self->_overlayDelegate);
      [WeakRetained fadeOutBrushStrokeWithDuration:{0.2, v41, v42, v43, v44, v45}];

      self->_isBrushing = 0;
    }

    else
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __56__PUVFXRetouchOverlay_selectPoint_withMask_composition___block_invoke;
      v47[3] = &unk_1E7B80688;
      v36 = v48;
      v47[4] = self;
      v48[0] = v29;
      v48[1] = v33;
      v48[2] = v35;
      v40 = v29;
      [(PUVFXRetouchOverlay *)self _asyncCIRenderWithFlush:v47];
    }

    v8 = v25;
  }

  else
  {
    v39 = [(PUVFXRetouchOverlay *)self overlayDelegate];
    [v39 fadeOutBrushStrokeWithDuration:0.2];
  }
}

uint64_t __56__PUVFXRetouchOverlay_selectPoint_withMask_composition___block_invoke(double *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(v2 + 416);
  v5 = *(v2 + 456);
  v6 = *MEMORY[0x1E695F920];
  v7 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
  [v4 setForegroundImage:v3 ctx:v5 format:v6 colorSpace:{objc_msgSend(v7, "CGColorSpace")}];

  v8 = *(*(a1 + 4) + 416);
  v9 = a1[6];
  v10 = a1[7];

  return [v8 scanFrom:{v9, v10}];
}

void __56__PUVFXRetouchOverlay_selectPoint_withMask_composition___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 416);
  v4 = *(v1 + 456);
  v5 = *MEMORY[0x1E695F920];
  v6 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
  [v3 setForegroundImage:v2 ctx:v4 format:v5 colorSpace:{objc_msgSend(v6, "CGColorSpace")}];
}

- (double)_maxEDRForDisplay
{
  v2 = [(PUVFXRetouchOverlay *)self px_screen];
  [v2 potentialEDRHeadroom];

  PXClamp();
  return result;
}

- (void)_layoutSubviews
{
  [(PUVFXRetouchOverlay *)self bounds];
  rootLayer = self->_rootLayer;

  [(PUVFXDimmingBackgroundLayer *)rootLayer setFrame:?];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUVFXRetouchOverlay;
  [(PUVFXRetouchOverlay *)&v3 layoutSubviews];
  [(PUVFXRetouchOverlay *)self _layoutSubviews];
}

- (void)removeFromSuperview
{
  constrainingView = self->_constrainingView;
  self->_constrainingView = 0;

  v4.receiver = self;
  v4.super_class = PUVFXRetouchOverlay;
  [(PUVFXRetouchOverlay *)&v4 removeFromSuperview];
}

- (void)_snapshotAvailable:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PUVFXRetouchOverlay__snapshotAvailable___block_invoke;
  v3[3] = &unk_1E7B80DD0;
  v3[4] = self;
  [(PUVFXRetouchOverlay *)self _asyncCIRenderWithFlush:v3];
}

void __42__PUVFXRetouchOverlay__snapshotAvailable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _syncGetSourceImageOfSize:{1024.0, 768.0}];
  v3 = MEMORY[0x1E69B3D40];
  v20 = v2;
  [v2 extent];
  v4 = NUPixelSizeFromCGSize();
  v6 = [v3 newPixelBufferOfSize:v4 format:{v5, 1380411457}];
  v7 = v6;
  if (v6)
  {
    v8 = *(*(a1 + 32) + 456);
    v9 = [v6 CVPixelBuffer];
    [v20 extent];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
    [v8 render:v20 toCVPixelBuffer:v9 bounds:objc_msgSend(v18 colorSpace:{"CGColorSpace"), v11, v13, v15, v17}];

    if (CVPixelBufferGetIOSurface([v7 CVPixelBuffer]))
    {
      v19 = CGImageCreateFromIOSurface();
      if (v19)
      {
        [*(*(a1 + 32) + 416) setSourceImage:v19];
      }

      CGImageRelease(v19);
    }
  }
}

- (void)_delayedScreenParamsDidChange:(id)a3
{
  [(PUVFXRetouchOverlay *)self _maxEDRForDisplay];
  v5 = v4;
  v6 = [(PUVFXBrushView *)self->_brushView brushOverlay];
  [v6 setMaxEDR:v5];

  rootLayer = self->_rootLayer;

  [(CALayer *)rootLayer pu_setWantsHDR:v5 > 1.0];
}

- (void)_manageThrottledState
{
  v3 = [MEMORY[0x1E696AE30] processInfo];
  v4 = [v3 thermalState];

  v5 = (v4 & 0xFFFFFFFFFFFFFFFELL) == 2;
  v6 = [MEMORY[0x1E696AE30] processInfo];
  LODWORD(v4) = [v6 isLowPowerModeEnabled];

  v7 = (v5 | v4 | [MEMORY[0x1E69C4448] px_accessibilityIsReduceMotionEnabled]) & 1;
  rootLayer = self->_rootLayer;

  [(PUVFXDimmingBackgroundLayer *)rootLayer setIsThrottled:v7];
}

- (void)_screenParamsDidChange:(id)a3
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__delayedScreenParamsDidChange_ object:0];

  [(PUVFXRetouchOverlay *)self performSelector:sel__delayedScreenParamsDidChange_ withObject:0 afterDelay:2.0];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = PUVFXRetouchOverlay;
  [(PUVFXRetouchOverlay *)&v3 didMoveToSuperview];
  [(PUVFXRetouchOverlay *)self _didMoveToSuperview];
}

- (void)_removeNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DE390] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x1E69DD918] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x1E696AA30] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E696AA28] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 removeObserver:self name:*MEMORY[0x1E696A7E0] object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 removeObserver:self name:*MEMORY[0x1E696A7D8] object:0];
}

- (void)_addNotifications
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__screenParamsDidChange_ name:*MEMORY[0x1E69DE390] object:0];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel__snapshotAvailable_ name:*MEMORY[0x1E69B3DB0] object:0];

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel__didUndoRedo_ name:*MEMORY[0x1E696AA30] object:0];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel__didUndoRedo_ name:*MEMORY[0x1E696AA28] object:0];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 addObserver:self selector:sel__thermalStateDidChange_ name:*MEMORY[0x1E696A7E0] object:0];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 addObserver:self selector:sel__powerStateDidChange_ name:*MEMORY[0x1E696A7D8] object:0];

  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 addObserver:self selector:sel__accessibilityDisplayOptionsChanged_ name:*MEMORY[0x1E69DD918] object:0];
}

- (void)_didMoveToSuperview
{
  v40[2] = *MEMORY[0x1E69E9840];
  v3 = [(PUVFXRetouchOverlay *)self superview];

  if (v3)
  {
    v4 = MEMORY[0x1E695F620];
    v5 = *MEMORY[0x1E695F830];
    v39[0] = *MEMORY[0x1E695F7F0];
    v39[1] = v5;
    v40[0] = MEMORY[0x1E695E110];
    v40[1] = @"PUVFXRetouchOverlay";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
    v7 = [v4 contextWithOptions:v6];
    ciContext = self->_ciContext;
    self->_ciContext = v7;

    v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v10 = [v9 pathForResource:@"CleanupEffectSettings" ofType:@"plist"];

    v11 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v10];
    settings = self->_settings;
    self->_settings = v11;

    [(PUVFXRetouchOverlay *)self _createAndAddLayers];
    [(PUVFXBrushView *)self->_brushView setDelegate:self];
    [(PUVFXBrushView *)self->_brushView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PUVFXRetouchOverlay *)self addSubview:self->_brushView];
    v13 = [(PUVFXBrushView *)self->_brushView brushOverlay];
    brushView = self->_brushView;
    if (brushView && self->_constrainingView)
    {
      if (v13)
      {
        v15 = [(PUVFXBrushView *)brushView topAnchor];
        v16 = [(PUVFXRetouchOverlay *)self topAnchor];
        v17 = [v15 constraintEqualToAnchor:v16];
        [v17 setActive:1];

        v18 = [(PUVFXBrushView *)self->_brushView bottomAnchor];
        v19 = [(PUVFXRetouchOverlay *)self bottomAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];
        [v20 setActive:1];

        v21 = [(PUVFXBrushView *)self->_brushView leftAnchor];
        v22 = [(PUVFXRetouchOverlay *)self leftAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];
        [v23 setActive:1];

        v24 = [(PUVFXBrushView *)self->_brushView rightAnchor];
        v25 = [(PUVFXRetouchOverlay *)self rightAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];
        [v26 setActive:1];

        v27 = [v13 topAnchor];
        v28 = [(UIView *)self->_constrainingView topAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];
        [v29 setActive:1];

        v30 = [v13 bottomAnchor];
        v31 = [(UIView *)self->_constrainingView bottomAnchor];
        v32 = [v30 constraintEqualToAnchor:v31];
        [v32 setActive:1];

        v33 = [v13 leftAnchor];
        v34 = [(UIView *)self->_constrainingView leftAnchor];
        v35 = [v33 constraintEqualToAnchor:v34];
        [v35 setActive:1];

        v36 = [v13 rightAnchor];
        v37 = [(UIView *)self->_constrainingView rightAnchor];
        v38 = [v36 constraintEqualToAnchor:v37];
        [v38 setActive:1];

        [(PUVFXRetouchOverlay *)self _delayedScreenParamsDidChange:0];
        [(PUVFXRetouchOverlay *)self _manageThrottledState];
        [(PUVFXRetouchOverlay *)self _snapshotAvailable:0];
        [(PUVFXRetouchOverlay *)self _createDeclutterMaskForComposition:self->_composition];
        [(PUVFXRetouchOverlay *)self _addNotifications];
      }
    }
  }

  else
  {

    [(PUVFXRetouchOverlay *)self _removeNotifications];
  }
}

- (void)_createAndAddLayers
{
  v3 = +[_TtC15PhotosUIPrivate27PUVFXDimmingBackgroundLayer layer];
  rootLayer = self->_rootLayer;
  self->_rootLayer = v3;

  [(PUVFXDimmingBackgroundLayer *)self->_rootLayer setName:@"rootLayer"];
  v5 = self->_rootLayer;
  v6 = *MEMORY[0x1E6979CF8];
  v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CF8]];
  [(PUVFXDimmingBackgroundLayer *)v5 setCompositingFilter:v7];

  v8 = [(PUVFXRetouchOverlay *)self layer];
  [v8 setMasksToBounds:1];

  v9 = [(PUVFXRetouchOverlay *)self layer];
  [v9 pu_setWantsHDR:1];

  v10 = [(PUVFXRetouchOverlay *)self layer];
  [v10 addSublayer:self->_rootLayer];

  v11 = self->_rootLayer;
  v12 = [MEMORY[0x1E6979378] filterWithType:v6];
  [(PUVFXDimmingBackgroundLayer *)v11 setCompositingFilter:v12];

  v13 = [(NSDictionary *)self->_settings valueForKeyPath:@"sparkles.colorOverLife.colors"];
  v29 = PFMap();

  v28 = self;
  v14 = [(NSDictionary *)self->_settings objectForKeyedSubscript:@"glow"];
  v15 = [v14 objectForKeyedSubscript:@"particleCount"];
  v16 = [v15 integerValue];

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = 4;
  do
  {
    v20 = [MEMORY[0x1E695F648] filterWithName:@"PUVFXImageGenerator"];
    [v20 setExtent:{0.0, 0.0, 1024.0, 1024.0}];
    v21 = [v14 objectForKeyedSubscript:@"particleSize"];
    [v20 setParticleSize:v21];

    v22 = [v14 objectForKeyedSubscript:@"innerParticleSize"];
    [v20 setInnerParticleSize:v22];

    [v20 generateFieldWithColors:v29 count:v16];
    [(NSArray *)v17 addObject:v20];
    v23 = [v20 generatedFieldImage];
    [v18 addObject:v23];

    --v19;
  }

  while (v19);
  imageGenerators = v28->_imageGenerators;
  v28->_imageGenerators = v17;
  v25 = v17;

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __42__PUVFXRetouchOverlay__createAndAddLayers__block_invoke_2;
  v31[3] = &unk_1E7B80C38;
  v31[4] = v28;
  v32 = v18;
  v26 = v18;
  [(PUVFXRetouchOverlay *)v28 _asyncCIRenderWithFlush:v31];
  v27 = [(PUVFXRetouchOverlay *)v28 layer];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __42__PUVFXRetouchOverlay__createAndAddLayers__block_invoke_3;
  v30[3] = &unk_1E7B7C238;
  v30[4] = v28;
  PURecurseLayerTreeWithBlock(v27, v30);
}

uint64_t __42__PUVFXRetouchOverlay__createAndAddLayers__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 416);
  v5 = *(v2 + 456);
  v6 = *MEMORY[0x1E695F920];
  v7 = [MEMORY[0x1E69B3A10] extendedSRGBColorSpace];
  [v4 setBlendImages:v3 ctx:v5 format:v6 colorSpace:{objc_msgSend(v7, "CGColorSpace")}];

  v8 = *(a1 + 32);

  return [v8 _manageThrottledState];
}

void __42__PUVFXRetouchOverlay__createAndAddLayers__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 pu_setWantsHDR:1];
  v3 = [*(a1 + 32) layer];
  [v3 contentsScale];
  [v4 setContentsScale:?];

  [v4 setAllowsGroupOpacity:0];
}

- (PUVFXRetouchOverlay)initWithComposition:(id)a3 maskContext:(id)a4 constrainingView:(id)a5 isHDR:(BOOL)a6 overlayDelegate:(id)a7
{
  v26 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (!v14)
  {
    queue = PXAssertGetLog();
    if (os_log_type_enabled(queue, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v25 = @"constrainingView";
      _os_log_fault_impl(&dword_1B36F3000, queue, OS_LOG_TYPE_FAULT, "Invalid parameter not satisfying: %@", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_7;
  }

  v23.receiver = self;
  v23.super_class = PUVFXRetouchOverlay;
  v16 = [(PUVFXRetouchOverlay *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_overlayDelegate, v15);
    [(PUVFXRetouchOverlay *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&v17->_inpaintCtx, a4);
    objc_storeStrong(&v17->_constrainingView, a5);
    objc_storeStrong(&v17->_composition, a3);
    v18 = objc_opt_new();
    brushView = v17->_brushView;
    v17->_brushView = v18;

    self = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.editvfx.retouchoverlay", &self->super.super.super);
    queue = v17->_queue;
    v17->_queue = v20;
LABEL_7:
  }

  return v17;
}

+ (id)_blurredEdgeImageWithImage:(id)a3 settings:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:@"maskBlurSigma"];
  [v7 floatValue];
  v9 = v8;

  v10 = [v5 objectForKeyedSubscript:@"maskDilation"];

  [v10 floatValue];
  v12 = v11;

  v13 = [MEMORY[0x1E69BDF30] dilateMask:v6 withRadius:v12];
  v14 = [v13 imageByApplyingGaussianBlurWithSigma:v9];
  [v6 extent];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [v14 imageByCroppingToRect:{v16, v18, v20, v22}];

  return v23;
}

@end