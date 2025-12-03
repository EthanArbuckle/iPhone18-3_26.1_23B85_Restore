@interface PLPhotoEditRenderer
+ (BOOL)currentDeviceShouldAllowLocalLight;
+ (id)compositionWithController:(id)controller source:(id)source;
+ (id)newImageDataFromCGImage:(CGImage *)image withCompressionQuality:(double)quality metadataSourceImageURL:(id)l preserveRegionsInMetadata:(BOOL)metadata;
+ (id)rendererForVideoURL:(id)l livePhotoStillURL:(id)rL adjustmentData:(id)data formatIdentifier:(id)identifier formatVersion:(id)version;
+ (void)configureNeutrinoCacheDirectoryIfNeeded;
+ (void)updateCompositionController:(id)controller fromPortraitMetadata:(id)metadata;
- (NUComposition)composition;
- (PLPhotoEditRenderer)initWithEditSource:(id)source renderPriority:(int64_t)priority;
- (double)_smartBWLevelWithAttributeKey:(id)key settingKey:(id)settingKey;
- (double)_smartColorLevelWithAttributeKey:(id)key settingKey:(id)settingKey;
- (double)_smartToneLevelWithAttributeKey:(id)key settingKey:(id)settingKey;
- (double)smartBWBaseGrain;
- (double)smartBWBaseHue;
- (double)smartBWBaseNeutralGamma;
- (double)smartBWBaseStrength;
- (double)smartBWBaseTone;
- (double)smartColorBaseCast;
- (double)smartColorBaseContrast;
- (double)smartColorBaseSaturation;
- (double)smartToneBaseBlackPoint;
- (double)smartToneBaseBrightness;
- (double)smartToneBaseContrast;
- (double)smartToneBaseExposure;
- (double)smartToneBaseHighlights;
- (double)smartToneBaseLocalLight;
- (double)smartToneBaseShadows;
- (id)_smartBWAdjustments;
- (id)_smartColorAdjustments;
- (id)_smartToneAdjustments;
- (id)exportVideoToURL:(id)l preset:(id)preset livePhotoPairingIdentifier:(id)identifier completion:(id)completion;
- (id)getGeometryForComposition:(id)composition;
- (id)getGeometryForComposition:(id)composition pipelineFilters:(id)filters;
- (id)newExporter;
- (id)newImageExporterOptions;
- (id)newVideoExporterOptions;
- (void)applySourceChangesToComposition:(id)composition source:(id)source withBlock:(id)block executeSynchronously:(BOOL)synchronously completionBlock:(id)completionBlock;
- (void)calculateLongExposureFusionParametersWithCompletionHandler:(id)handler;
- (void)cancelAllRenders;
- (void)generateJPEGImageDataWithCompressionQuality:(double)quality livePhotoPairingIdentifier:(id)identifier completionHandler:(id)handler;
- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode name:(id)name completion:(id)completion;
- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode renderMode:(int64_t)renderMode name:(id)name completion:(id)completion;
- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode renderMode:(int64_t)renderMode renderTime:(id *)time name:(id)name completion:(id)completion;
- (void)renderVideoWithTargetSize:(CGSize)size contentMode:(int64_t)mode name:(id)name completion:(id)completion;
- (void)setCompositionController:(id)controller;
- (void)setSmartFiltersCubeSize:(int64_t)size;
@end

@implementation PLPhotoEditRenderer

- (void)cancelAllRenders
{
  [(NURenderContext *)self->_videoRenderContext cancelAllRequests];
  [(NURenderContext *)self->_geometryContext cancelAllRequests];
  [(NURenderContext *)self->_smartToneAutoCalculatorContext cancelAllRequests];
  imageRenderContext = self->_imageRenderContext;

  [(NURenderContext *)imageRenderContext cancelAllRequests];
}

- (void)applySourceChangesToComposition:(id)composition source:(id)source withBlock:(id)block executeSynchronously:(BOOL)synchronously completionBlock:(id)completionBlock
{
  synchronouslyCopy = synchronously;
  v97 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  sourceCopy = source;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v12 = [compositionCopy copy];
  selfCopy = self;
  p_editSource = &self->_editSource;
  v14 = [PLPhotoEditRenderer compositionWithController:v12 source:self->_editSource];
  v81 = [(PLPhotoEditRenderer *)selfCopy getGeometryForComposition:v14];
  blockCopy[2](blockCopy, v12);
  v80 = [PLPhotoEditRenderer compositionWithController:v12 source:*p_editSource];

  v78 = [(PLPhotoEditRenderer *)selfCopy getGeometryForComposition:v80];
  v76 = +[PLCompositionHelper adjustmentConstants];
  enabled = 0;
  if (v81 && v78)
  {
    *buf = 0u;
    v95 = 0u;
    [v81 extent];
    v92 = 0u;
    v93 = 0u;
    [v78 extent];
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v98.origin.x = 0;
    v98.origin.y = 0;
    v98.size.width = 0;
    v98.size.height = 0;
    v102.origin.x = 0;
    v102.origin.y = 0;
    v102.size.width = 0;
    v102.size.height = 0;
    if (CGRectEqualToRect(v98, v102))
    {
      enabled = 0;
    }

    else
    {
      cropAdjustmentController = [v12 cropAdjustmentController];
      cropAdjustmentController2 = [compositionCopy cropAdjustmentController];
      v22 = [cropAdjustmentController isEqual:cropAdjustmentController2];
      [cropAdjustmentController cropRect];
      v70 = v23;
      v71 = v24;
      v72 = v25;
      v73 = v26;
      if (v22 && !CGRectIsEmpty(*&v23) && [cropAdjustmentController enabled])
      {
        v99.origin.x = 0 + (v70 - 0) / v16 * v18;
        v99.origin.y = 0 + (v71 - 0) / v17 * v19;
        v99.size.width = v72 / v16 * v18;
        v99.size.height = v73 / v17 * v19;
        v100 = CGRectInset(v99, 1.0, 1.0);
        v101 = CGRectIntegral(v100);
        x = v101.origin.x;
        y = v101.origin.y;
        width = v101.size.width;
        height = v101.size.height;
        pICropAdjustmentKey = [v76 PICropAdjustmentKey];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke;
        v91[3] = &__block_descriptor_64_e36_v16__0__PICropAdjustmentController_8l;
        *&v91[4] = x;
        *&v91[5] = y;
        *&v91[6] = width;
        *&v91[7] = height;
        [v12 modifyAdjustmentWithKey:pICropAdjustmentKey modificationBlock:v91];
      }

      pIRedEyeAdjustmentKey = [v76 PIRedEyeAdjustmentKey];
      [v12 removeAdjustmentWithKey:pIRedEyeAdjustmentKey];

      smartToneAdjustmentController = [v12 smartToneAdjustmentController];
      enabled = [smartToneAdjustmentController enabled];
    }
  }

  portraitAdjustmentController = [compositionCopy portraitAdjustmentController];
  enabled2 = [portraitAdjustmentController enabled];
  portraitAdjustmentController2 = [v12 portraitAdjustmentController];
  enabled3 = [portraitAdjustmentController2 enabled];

  portraitAdjustmentController3 = [compositionCopy portraitAdjustmentController];
  kind = [portraitAdjustmentController3 kind];
  portraitAdjustmentController4 = [v12 portraitAdjustmentController];
  kind2 = [portraitAdjustmentController4 kind];
  v42 = [kind isEqualToString:kind2];

  if ((v42 & 1) == 0)
  {
    if (enabled2 == enabled3)
    {
      portraitAdjustmentController5 = [v12 portraitAdjustmentController];
      enabled = [portraitAdjustmentController5 enabled];
    }

    else
    {
      enabled = 1;
    }
  }

  autoLoopAdjustmentController = [compositionCopy autoLoopAdjustmentController];
  autoLoopAdjustmentController2 = [v12 autoLoopAdjustmentController];
  if (autoLoopAdjustmentController | autoLoopAdjustmentController2 && ([autoLoopAdjustmentController isEqual:autoLoopAdjustmentController2] & 1) == 0)
  {
    flavor = [autoLoopAdjustmentController2 flavor];
    *&v92 = 0;
    *(&v92 + 1) = &v92;
    *&v93 = 0x2020000000;
    v55 = getPIAutoLoopFlavorFromStringSymbolLoc_ptr;
    *(&v93 + 1) = getPIAutoLoopFlavorFromStringSymbolLoc_ptr;
    if (!getPIAutoLoopFlavorFromStringSymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&v95 = __getPIAutoLoopFlavorFromStringSymbolLoc_block_invoke;
      *(&v95 + 1) = &unk_1E7577EA0;
      v96 = &v92;
      v56 = PhotoImagingLibrary_30459();
      v57 = dlsym(v56, "PIAutoLoopFlavorFromString");
      *(*(v96 + 1) + 24) = v57;
      getPIAutoLoopFlavorFromStringSymbolLoc_ptr = *(*(v96 + 1) + 24);
      v55 = *(*(&v92 + 1) + 24);
    }

    _Block_object_dispose(&v92, 8);
    if (v55)
    {
      v58 = v55(flavor);

      *&v92 = 0;
      *(&v92 + 1) = &v92;
      *&v93 = 0x2020000000;
      v59 = getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_ptr;
      *(&v93 + 1) = getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_ptr;
      if (!getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v95 = __getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_block_invoke;
        *(&v95 + 1) = &unk_1E7577EA0;
        v96 = &v92;
        v60 = PhotoImagingLibrary_30459();
        v61 = dlsym(v60, "PIAutoLoopFlavorProducesOnlyVideo");
        *(*(v96 + 1) + 24) = v61;
        getPIAutoLoopFlavorProducesOnlyVideoSymbolLoc_ptr = *(*(v96 + 1) + 24);
        v59 = *(*(&v92 + 1) + 24);
      }

      _Block_object_dispose(&v92, 8);
      if (v59)
      {
        if (v59(v58))
        {
          if ((enabled & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          smartToneAdjustmentController2 = [v12 smartToneAdjustmentController];
          enabled4 = [smartToneAdjustmentController2 enabled];

          if (((enabled4 | enabled) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_17:
        [(NURenderContext *)selfCopy->_smartToneAutoCalculatorContext cancelAllRequests];
        *&v92 = 0;
        *(&v92 + 1) = &v92;
        *&v93 = 0x2050000000;
        v46 = getPISmartToneAutoCalculatorClass_softClass;
        *(&v93 + 1) = getPISmartToneAutoCalculatorClass_softClass;
        if (!getPISmartToneAutoCalculatorClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&v95 = __getPISmartToneAutoCalculatorClass_block_invoke;
          *(&v95 + 1) = &unk_1E7577EA0;
          v96 = &v92;
          __getPISmartToneAutoCalculatorClass_block_invoke(buf);
          v46 = *(*(&v92 + 1) + 24);
        }

        v47 = v46;
        _Block_object_dispose(&v92, 8);
        v48 = [[v46 alloc] initWithComposition:v80];
        [v48 setName:@"PL-PISmartToneAutoCalculator"];
        [v48 setRenderContext:selfCopy->_smartToneAutoCalculatorContext];
        if (!synchronouslyCopy)
        {
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_105;
          v83[3] = &unk_1E756AAB0;
          v84 = v12;
          v85 = v76;
          v86 = compositionCopy;
          v87 = completionBlockCopy;
          [v48 submit:v83];

          v51 = v84;
LABEL_37:

          goto LABEL_38;
        }

        v90 = 0;
        v49 = [v48 submitSynchronous:&v90];
        v50 = v90;
        v51 = v50;
        if (v49)
        {
          pISmartToneAdjustmentKey = [v76 PISmartToneAdjustmentKey];
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 3221225472;
          v88[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_2;
          v88[3] = &unk_1E756AA88;
          v89 = v49;
          [v12 modifyAdjustmentWithKey:pISmartToneAdjustmentKey modificationBlock:v88];

          [compositionCopy applyChangesFromCompositionController:v12];
          v53 = v89;
        }

        else
        {
          domain = [v50 domain];
          if ([domain isEqualToString:@"NUError"])
          {
            v65 = [v51 code] == 10;

            if (v65)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }

          v53 = PLPhotoEditGetLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v51;
            _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "Error in smart tone autocalculator: %@", buf, 0xCu);
          }
        }

LABEL_23:
        if (completionBlockCopy)
        {
          completionBlockCopy[2]();
        }

        goto LABEL_37;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL SOFT_LINKED_PIAutoLoopFlavorProducesOnlyVideo(PIAutoLoopFlavor)"];
      [currentHandler handleFailureInFunction:v69 file:@"PLPhotoEditRenderer.m" lineNumber:86 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PIAutoLoopFlavor SOFT_LINKED_PIAutoLoopFlavorFromString(NSString *__strong)"];
      [currentHandler2 handleFailureInFunction:v67 file:@"PLPhotoEditRenderer.m" lineNumber:85 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  if (enabled)
  {
    goto LABEL_17;
  }

LABEL_34:
  [compositionCopy applyChangesFromCompositionController:v12];
  if (completionBlockCopy)
  {
    completionBlockCopy[2]();
  }

LABEL_38:
}

void __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_105(id *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v3 = [a2 result:&v18];
  v4 = v18;
  v5 = v4;
  if (v3)
  {
    v6 = a1[4];
    v7 = [a1[5] PISmartToneAdjustmentKey];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_2_106;
    v16[3] = &unk_1E756AA88;
    v17 = v3;
    [v6 modifyAdjustmentWithKey:v7 modificationBlock:v16];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_3;
    block[3] = &unk_1E7576F38;
    v13 = a1[6];
    v14 = a1[4];
    v15 = a1[7];
    dispatch_async(MEMORY[0x1E69E96A0], block);

    goto LABEL_12;
  }

  v8 = [v4 domain];
  if (![v8 isEqualToString:@"NUError"])
  {

    goto LABEL_7;
  }

  v9 = [v5 code];

  if (v9 != 10)
  {
LABEL_7:
    v10 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Error in smart tone autocalculator: %@", buf, 0xCu);
    }
  }

  v11 = a1[7];
  if (v11)
  {
    v11[2]();
  }

LABEL_12:
}

uint64_t __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) applyChangesFromCompositionController:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)getGeometryForComposition:(id)composition pipelineFilters:(id)filters
{
  filtersCopy = filters;
  compositionCopy = composition;
  v8 = [getPIPhotoEditHelperClass_30489() geometryRequestWithComposition:compositionCopy];

  [v8 setPipelineFilters:filtersCopy];
  [v8 setRenderContext:self->_geometryContext];
  [v8 setName:@"PLPhotoEditRenderer-geometry"];
  v12 = 0;
  v9 = [v8 submitSynchronous:&v12];
  geometry = [v9 geometry];

  return geometry;
}

- (id)getGeometryForComposition:(id)composition
{
  compositionCopy = composition;
  pipelineFiltersForOriginalGeometry = [getPIPhotoEditHelperClass_30489() pipelineFiltersForOriginalGeometry];
  v6 = [(PLPhotoEditRenderer *)self getGeometryForComposition:compositionCopy pipelineFilters:pipelineFiltersForOriginalGeometry];

  return v6;
}

- (void)calculateLongExposureFusionParametersWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v5 = getPILongExposureFusionAutoCalculatorClass_softClass;
  v17 = getPILongExposureFusionAutoCalculatorClass_softClass;
  if (!getPILongExposureFusionAutoCalculatorClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getPILongExposureFusionAutoCalculatorClass_block_invoke;
    v13[3] = &unk_1E7577EA0;
    v13[4] = &v14;
    __getPILongExposureFusionAutoCalculatorClass_block_invoke(v13);
    v5 = v15[3];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);
  v7 = [v5 alloc];
  composition = [(PLPhotoEditRenderer *)self composition];
  v9 = [v7 initWithComposition:composition];

  [v9 setName:@"PL-PILongExposureFusionAutoCalculator"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PLPhotoEditRenderer_calculateLongExposureFusionParametersWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E756A9C8;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [v9 submit:v11];
}

void __82__PLPhotoEditRenderer_calculateLongExposureFusionParametersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = 0;
  v3 = [a2 result:&v5];
  v4 = v5;
  (*(*(a1 + 32) + 16))(*(a1 + 32), v3 != 0, v3, v4);
}

- (id)_smartBWAdjustments
{
  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  smartBWAdjustmentController = [compositionController smartBWAdjustmentController];

  [smartBWAdjustmentController hue];
  v6 = v5;
  if (v5 != self->_smartBWLevelInCachedAdjustments)
  {
    smartBWAdjustments = self->__smartBWAdjustments;
    self->__smartBWAdjustments = 0;
  }

  v8 = self->__smartBWAdjustments;
  if (!v8)
  {
    emptyImage = [MEMORY[0x1E695F658] emptyImage];
    v10 = [emptyImage smartBlackAndWhiteAdjustmentsForValue:0 andStatistics:v6];
    v11 = self->__smartBWAdjustments;
    self->__smartBWAdjustments = v10;

    self->_smartBWLevelInCachedAdjustments = v6;
    v8 = self->__smartBWAdjustments;
  }

  v12 = v8;

  return v8;
}

- (id)_smartColorAdjustments
{
  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  smartColorAdjustmentController = [compositionController smartColorAdjustmentController];

  [smartColorAdjustmentController inputColor];
  v6 = v5;
  statistics = [smartColorAdjustmentController statistics];
  v8 = statistics;
  if (v6 != self->_smartColorLevelInCachedAdjustments || statistics != self->_smartColorStatisticsInCachedAdjustments)
  {
    smartColorAdjustments = self->__smartColorAdjustments;
    self->__smartColorAdjustments = 0;
  }

  v10 = self->__smartColorAdjustments;
  if (!v10 && v8)
  {
    v11 = [MEMORY[0x1E695F658] smartColorAdjustmentsForValue:v8 andStatistics:v6];
    v12 = self->__smartColorAdjustments;
    self->__smartColorAdjustments = v11;

    self->_smartColorLevelInCachedAdjustments = v6;
    objc_storeStrong(&self->_smartColorStatisticsInCachedAdjustments, v8);
    v10 = self->__smartColorAdjustments;
  }

  v13 = v10;

  return v10;
}

- (id)_smartToneAdjustments
{
  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  smartToneAdjustmentController = [compositionController smartToneAdjustmentController];

  [smartToneAdjustmentController inputLight];
  v6 = v5;
  statistics = [smartToneAdjustmentController statistics];
  v8 = statistics;
  if (v6 != self->_smartToneLevelInCachedAdjustments || statistics != self->_smartToneStatisticsInCachedAdjustments)
  {
    smartToneAdjustments = self->__smartToneAdjustments;
    self->__smartToneAdjustments = 0;
  }

  v10 = self->__smartToneAdjustments;
  if (!v10 && v8)
  {
    v11 = [(NSDictionary *)v8 objectForKeyedSubscript:@"localAutoValue"];
    [v11 doubleValue];
    v13 = [MEMORY[0x1E695F658] smartToneAdjustmentsForValue:v8 localLightAutoValue:v6 andStatistics:v12];
    v14 = self->__smartToneAdjustments;
    self->__smartToneAdjustments = v13;
    v15 = v13;

    self->_smartToneLevelInCachedAdjustments = v6;
    objc_storeStrong(&self->_smartToneStatisticsInCachedAdjustments, v8);

    v10 = self->__smartToneAdjustments;
  }

  v16 = v10;

  return v10;
}

- (double)smartBWBaseGrain
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v3 PISmartBWAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartBWAdjustmentKey];

  attributeGrainKey = [v6 attributeGrainKey];
  grainKey = [v6 grainKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:attributeGrainKey settingKey:grainKey];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseHue
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v3 PISmartBWAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartBWAdjustmentKey];

  attributeHueKey = [v6 attributeHueKey];
  hueKey = [v6 hueKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:attributeHueKey settingKey:hueKey];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseTone
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v3 PISmartBWAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartBWAdjustmentKey];

  attributeToneKey = [v6 attributeToneKey];
  toneKey = [v6 toneKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:attributeToneKey settingKey:toneKey];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseNeutralGamma
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v3 PISmartBWAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartBWAdjustmentKey];

  attributeNeutralGammaKey = [v6 attributeNeutralGammaKey];
  neutralKey = [v6 neutralKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:attributeNeutralGammaKey settingKey:neutralKey];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseStrength
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v3 PISmartBWAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartBWAdjustmentKey];

  attributeStrengthKey = [v6 attributeStrengthKey];
  strengthKey = [v6 strengthKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:attributeStrengthKey settingKey:strengthKey];
  v10 = v9;

  return v10;
}

- (double)_smartBWLevelWithAttributeKey:(id)key settingKey:(id)settingKey
{
  keyCopy = key;
  settingKeyCopy = settingKey;
  _smartBWAdjustments = [(PLPhotoEditRenderer *)self _smartBWAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  pISmartBWAdjustmentKey = [v9 PISmartBWAdjustmentKey];

  if (_smartBWAdjustments)
  {
    [_smartBWAdjustments objectForKey:keyCopy];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:pISmartBWAdjustmentKey settingKey:settingKeyCopy];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (double)smartColorBaseCast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartColorAdjustmentKey = [v3 PISmartColorAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartColorAdjustmentKey];

  attributeCastKey = [v6 attributeCastKey];
  offsetCastKey = [v6 offsetCastKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:attributeCastKey settingKey:offsetCastKey];
  v10 = v9;

  return v10;
}

- (double)smartColorBaseSaturation
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartColorAdjustmentKey = [v3 PISmartColorAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartColorAdjustmentKey];

  attributeSaturationKey = [v6 attributeSaturationKey];
  offsetSaturationKey = [v6 offsetSaturationKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:attributeSaturationKey settingKey:offsetSaturationKey];
  v10 = v9;

  return v10;
}

- (double)smartColorBaseContrast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartColorAdjustmentKey = [v3 PISmartColorAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartColorAdjustmentKey];

  attributeContrastKey = [v6 attributeContrastKey];
  offsetContrastKey = [v6 offsetContrastKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:attributeContrastKey settingKey:offsetContrastKey];
  v10 = v9;

  return v10;
}

- (double)_smartColorLevelWithAttributeKey:(id)key settingKey:(id)settingKey
{
  keyCopy = key;
  settingKeyCopy = settingKey;
  _smartColorAdjustments = [(PLPhotoEditRenderer *)self _smartColorAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  pISmartColorAdjustmentKey = [v9 PISmartColorAdjustmentKey];

  if (_smartColorAdjustments)
  {
    [_smartColorAdjustments objectForKey:keyCopy];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:pISmartColorAdjustmentKey settingKey:settingKeyCopy];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (double)smartToneBaseLocalLight
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeLocalLightKey = [v6 attributeLocalLightKey];
  offsetLocalLightKey = [v6 offsetLocalLightKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeLocalLightKey settingKey:offsetLocalLightKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseBlackPoint
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeBlackPointKey = [v6 attributeBlackPointKey];
  offsetBlackKey = [v6 offsetBlackKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeBlackPointKey settingKey:offsetBlackKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseShadows
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeShadowsKey = [v6 attributeShadowsKey];
  offsetShadowsKey = [v6 offsetShadowsKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeShadowsKey settingKey:offsetShadowsKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseHighlights
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeHighlightsKey = [v6 attributeHighlightsKey];
  offsetHighlightsKey = [v6 offsetHighlightsKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeHighlightsKey settingKey:offsetHighlightsKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseExposure
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeExposureKey = [v6 attributeExposureKey];
  offsetExposureKey = [v6 offsetExposureKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeExposureKey settingKey:offsetExposureKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseContrast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeBrightnessKey = [v6 attributeBrightnessKey];
  offsetBrightnessKey = [v6 offsetBrightnessKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeBrightnessKey settingKey:offsetBrightnessKey];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseBrightness
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v3 PISmartToneAdjustmentKey];

  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:pISmartToneAdjustmentKey];

  attributeBrightnessKey = [v6 attributeBrightnessKey];
  offsetBrightnessKey = [v6 offsetBrightnessKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:attributeBrightnessKey settingKey:offsetBrightnessKey];
  v10 = v9;

  return v10;
}

- (double)_smartToneLevelWithAttributeKey:(id)key settingKey:(id)settingKey
{
  keyCopy = key;
  settingKeyCopy = settingKey;
  _smartToneAdjustments = [(PLPhotoEditRenderer *)self _smartToneAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  pISmartToneAdjustmentKey = [v9 PISmartToneAdjustmentKey];

  if (_smartToneAdjustments)
  {
    [_smartToneAdjustments objectForKey:keyCopy];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:pISmartToneAdjustmentKey settingKey:settingKeyCopy];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (void)setSmartFiltersCubeSize:(int64_t)size
{
  if (self->_smartFiltersCubeSize != size)
  {
    self->_smartFiltersCubeSize = size;
  }
}

- (void)setCompositionController:(id)controller
{
  controllerCopy = controller;
  if (self->_compositionController != controllerCopy)
  {
    v9 = controllerCopy;
    objc_storeStrong(&self->_compositionController, controller);
    smartToneAdjustments = self->__smartToneAdjustments;
    self->__smartToneAdjustments = 0;

    smartColorAdjustments = self->__smartColorAdjustments;
    self->__smartColorAdjustments = 0;

    smartBWAdjustments = self->__smartBWAdjustments;
    self->__smartBWAdjustments = 0;

    controllerCopy = v9;
  }
}

- (void)generateJPEGImageDataWithCompressionQuality:(double)quality livePhotoPairingIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  newExporter = [(PLPhotoEditRenderer *)self newExporter];
  newImageExporterOptions = [(PLPhotoEditRenderer *)self newImageExporterOptions];
  [newImageExporterOptions setPairingIdentifier:identifierCopy];

  [newImageExporterOptions setJPEGCompressionQuality:quality];
  composition = [(PLPhotoEditRenderer *)self composition];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PLPhotoEditRenderer_generateJPEGImageDataWithCompressionQuality_livePhotoPairingIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E756A9C8;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [newExporter exportImageToDataWithComposition:composition options:newImageExporterOptions completion:v14];
}

void __112__PLPhotoEditRenderer_generateJPEGImageDataWithCompressionQuality_livePhotoPairingIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = 0;
  v3 = [a2 result:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [v3 geometry];
    v6 = [v5 size];
    v8 = v7;

    v9 = [v3 inputSize];
    v11 = v10;
    v12 = *(a1 + 32);
    v13 = [v3 data];
    (*(v12 + 16))(v12, v13, v9, v11, v6, v8);
  }

  else
  {
    (*(*(a1 + 32) + 16))(*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  }
}

- (void)renderVideoWithTargetSize:(CGSize)size contentMode:(int64_t)mode name:(id)name completion:(id)completion
{
  height = size.height;
  width = size.width;
  v28[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  completionCopy = completion;
  if (!self->_editSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:474 description:@"editSource cannot be nil while rendering"];
  }

  compositionController = [(PLPhotoEditRenderer *)self compositionController];

  if (!compositionController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:475 description:@"compositionController cannot be nil while rendering"];
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Target size not specified";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    composition = [v18 errorWithDomain:v19 code:41003 userInfo:v20];

    (*(completionCopy + 2))(completionCopy, 0, 0, 0, composition);
    goto LABEL_19;
  }

  composition = [(PLPhotoEditRenderer *)self composition];
  if (mode == 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:494 description:@"PLPhotoEditContentModeAspectFill is not supported for this path"];

    goto LABEL_14;
  }

  if (mode)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = [getPIPhotoEditHelperClass_30489() videoRenderRequestWithComposition:composition fitInSize:{width, height}];
LABEL_15:
  [v17 setRenderContext:self->_videoRenderContext];
  [v17 setPriority:self->_priority];
  if ([(__CFString *)nameCopy length])
  {
    v22 = nameCopy;
  }

  else
  {
    v22 = @"PLPhotoEditRenderer-renderVideoWithTargetSize";
  }

  [v17 setName:v22];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __77__PLPhotoEditRenderer_renderVideoWithTargetSize_contentMode_name_completion___block_invoke;
  v25[3] = &unk_1E756A9C8;
  v26 = completionCopy;
  [v17 submit:v25];

LABEL_19:
}

void __77__PLPhotoEditRenderer_renderVideoWithTargetSize_contentMode_name_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [a2 result:&v12];
  v4 = v12;
  if (v3)
  {
    v5 = [v3 video];
    v6 = [v5 copy];

    v7 = [v3 videoComposition];
    v8 = [v7 copy];

    v9 = [v3 audioMix];
    v10 = [v9 copy];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11 = PLBackendGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v4;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Rendering error in [PLPhotoEditRenderer renderVideoWithTargetSize:]: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode renderMode:(int64_t)renderMode renderTime:(id *)time name:(id)name completion:(id)completion
{
  height = size.height;
  width = size.width;
  nameCopy = name;
  completionCopy = completion;
  if (!self->_editSource)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:405 description:@"editSource cannot be nil while rendering"];
  }

  compositionController = [(PLPhotoEditRenderer *)self compositionController];

  if (!compositionController)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:406 description:@"compositionController cannot be nil while rendering"];
  }

  composition = [(PLPhotoEditRenderer *)self composition];
  if (mode == 1)
  {
    v20 = [getPIPhotoEditHelperClass_30489() imageRenderRequestWithComposition:composition fillInSize:1 wideGamut:{width, height}];
    v21 = @"PLPhotoEditRenderer-fill";
    goto LABEL_9;
  }

  if (!mode)
  {
    v20 = [getPIPhotoEditHelperClass_30489() imageRenderRequestWithComposition:composition fitInSize:1 wideGamut:{width, height}];
    v21 = @"PLPhotoEditRenderer-fit";
LABEL_9:
    if ([(__CFString *)nameCopy length])
    {
      v22 = nameCopy;
    }

    else
    {
      v22 = v21;
    }

    [v20 setName:v22];
    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  if (renderMode == 1)
  {
    pipelineFiltersForCropping = [getPIPhotoEditHelperClass_30489() pipelineFiltersForCropping];
    [v20 setPipelineFilters:pipelineFiltersForCropping];
  }

  [v20 setRenderContext:self->_imageRenderContext];
  v29 = *&time->var0;
  var3 = time->var3;
  [v20 setTime:&v29];
  [v20 setPriority:self->_priority];
  [(PLPhotoEditRenderer *)self displayMaximumEDRHeadroom];
  [v20 setMaxEDRHeadroom:?];
  [(PLPhotoEditRenderer *)self displayCurrentEDRHeadroom];
  [v20 setCurrentEDRHeadroom:?];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __99__PLPhotoEditRenderer_renderImageWithTargetSize_contentMode_renderMode_renderTime_name_completion___block_invoke;
  v27[3] = &unk_1E756A9C8;
  v28 = completionCopy;
  v24 = completionCopy;
  [v20 submit:v27];
}

void __99__PLPhotoEditRenderer_renderImageWithTargetSize_contentMode_renderMode_renderTime_name_completion___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v3 = [a2 result:&v13];
  v4 = v13;
  if (v3)
  {
    PIPhotoEditHelperClass_30489 = getPIPhotoEditHelperClass_30489();
    v6 = [v3 buffer];
    v7 = [PIPhotoEditHelperClass_30489 newCGImageFromImageBuffer:v6];

    *buf = 0u;
    v15 = 0u;
    v8 = [v3 geometry];
    v9 = v8;
    if (v8)
    {
      [v8 extent];
    }

    else
    {
      *buf = 0u;
      v15 = 0u;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v7, 0, *buf, *&buf[8], v15, *(&v15 + 1));
    }

    CGImageRelease(v7);
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v4;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Rendering error in [PLPhotoEditRenderer renderImageWithTargetSize:]: %@", buf, 0xCu);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))(v11, 0, v4, *MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
    }
  }
}

- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode renderMode:(int64_t)renderMode name:(id)name completion:(id)completion
{
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  [(PLPhotoEditRenderer *)self renderImageWithTargetSize:mode contentMode:renderMode renderMode:&v7 renderTime:name name:completion completion:size.width, size.height];
}

- (void)renderImageWithTargetSize:(CGSize)size contentMode:(int64_t)mode name:(id)name completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PLPhotoEditRenderer_renderImageWithTargetSize_contentMode_name_completion___block_invoke;
  v13[3] = &unk_1E756A9F0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(PLPhotoEditRenderer *)self renderImageWithTargetSize:mode contentMode:0 renderMode:name name:v13 completion:width, height];
}

uint64_t __77__PLPhotoEditRenderer_renderImageWithTargetSize_contentMode_name_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (NUComposition)composition
{
  compositionController = [(PLPhotoEditRenderer *)self compositionController];
  v4 = [PLPhotoEditRenderer compositionWithController:compositionController source:self->_editSource];

  return v4;
}

- (id)exportVideoToURL:(id)l preset:(id)preset livePhotoPairingIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  lCopy = l;
  newExporter = [(PLPhotoEditRenderer *)self newExporter];
  newVideoExporterOptions = [(PLPhotoEditRenderer *)self newVideoExporterOptions];
  [newVideoExporterOptions setPairingIdentifier:identifierCopy];

  composition = [(PLPhotoEditRenderer *)self composition];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PLPhotoEditRenderer_exportVideoToURL_preset_livePhotoPairingIdentifier_completion___block_invoke;
  v18[3] = &unk_1E756A9C8;
  v19 = completionCopy;
  v15 = completionCopy;
  v16 = [newExporter exportVideoToURL:lCopy composition:composition options:newVideoExporterOptions completion:v18];

  return v16;
}

void __85__PLPhotoEditRenderer_exportVideoToURL_preset_livePhotoPairingIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = 0;
  v3 = [a2 result:&v11];
  v4 = v11;
  if (v3)
  {
    v7 = [v3 geometry];
    v8 = [v7 size];
    v10 = v9;

    v5.n128_f64[0] = v8;
    v6.n128_f64[0] = v10;
  }

  else
  {
    v5.n128_u64[0] = *MEMORY[0x1E695F060];
    v6.n128_u64[0] = *(MEMORY[0x1E695F060] + 8);
  }

  (*(*(a1 + 32) + 16))(v5, v6);
}

- (id)newVideoExporterOptions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getPICompositionExporterVideoOptionsClass_softClass;
  v11 = getPICompositionExporterVideoOptionsClass_softClass;
  if (!getPICompositionExporterVideoOptionsClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPICompositionExporterVideoOptionsClass_block_invoke;
    v7[3] = &unk_1E7577EA0;
    v7[4] = &v8;
    __getPICompositionExporterVideoOptionsClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  [v5 setPriority:self->_priority];
  return v5;
}

- (id)newImageExporterOptions
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = getPICompositionExporterImageOptionsClass_softClass;
  v11 = getPICompositionExporterImageOptionsClass_softClass;
  if (!getPICompositionExporterImageOptionsClass_softClass)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPICompositionExporterImageOptionsClass_block_invoke;
    v7[3] = &unk_1E7577EA0;
    v7[4] = &v8;
    __getPICompositionExporterImageOptionsClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  [v5 setPriority:self->_priority];
  return v5;
}

- (id)newExporter
{
  PICompositionExporterClass = getPICompositionExporterClass();

  return objc_alloc_init(PICompositionExporterClass);
}

- (PLPhotoEditRenderer)initWithEditSource:(id)source renderPriority:(int64_t)priority
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"editSource"}];
  }

  v25.receiver = self;
  v25.super_class = PLPhotoEditRenderer;
  v9 = [(PLPhotoEditRenderer *)&v25 init];
  [objc_opt_class() configureNeutrinoCacheDirectoryIfNeeded];
  objc_storeStrong(&v9->_editSource, source);
  v10 = objc_alloc_init(getNURenderContextClass());
  imageRenderContext = v9->_imageRenderContext;
  v9->_imageRenderContext = v10;

  v12 = objc_alloc_init(getNURenderContextClass());
  videoRenderContext = v9->_videoRenderContext;
  v9->_videoRenderContext = v12;

  v14 = objc_alloc_init(getNURenderContextClass());
  geometryContext = v9->_geometryContext;
  v9->_geometryContext = v14;

  v16 = objc_alloc_init(getNURenderContextClass());
  smartToneAutoCalculatorContext = v9->_smartToneAutoCalculatorContext;
  v9->_smartToneAutoCalculatorContext = v16;

  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v18 = getNUPriorityClass_softClass;
  v30 = getNUPriorityClass_softClass;
  if (!getNUPriorityClass_softClass)
  {
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __getNUPriorityClass_block_invoke;
    v26[3] = &unk_1E7577EA0;
    v26[4] = &v27;
    __getNUPriorityClass_block_invoke(v26);
    v18 = v28[3];
  }

  if (priority <= 3)
  {
    v19 = 3 - priority;
  }

  else
  {
    v19 = 0;
  }

  v20 = v18;
  _Block_object_dispose(&v27, 8);
  v21 = [[v18 alloc] initWithLevel:v19];
  priority = v9->_priority;
  v9->_priority = v21;

  return v9;
}

+ (void)updateCompositionController:(id)controller fromPortraitMetadata:(id)metadata
{
  controllerCopy = controller;
  metadataCopy = metadata;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v7 = getPIPortraitAutoCalculatorClass_softClass;
  v24 = getPIPortraitAutoCalculatorClass_softClass;
  if (!getPIPortraitAutoCalculatorClass_softClass)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __getPIPortraitAutoCalculatorClass_block_invoke;
    v20[3] = &unk_1E7577EA0;
    v20[4] = &v21;
    __getPIPortraitAutoCalculatorClass_block_invoke(v20);
    v7 = v22[3];
  }

  v8 = v7;
  _Block_object_dispose(&v21, 8);
  v9 = [v7 portraitInfoDictionaryFromCameraMetadata:metadataCopy];
  v10 = +[PLCompositionHelper adjustmentConstants];
  pIDepthAdjustmentKey = [v10 PIDepthAdjustmentKey];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke;
  v18[3] = &unk_1E756AA18;
  v12 = v9;
  v19 = v12;
  [controllerCopy modifyAdjustmentWithKey:pIDepthAdjustmentKey modificationBlock:v18];

  v13 = +[PLCompositionHelper adjustmentConstants];
  pIPortraitAdjustmentKey = [v13 PIPortraitAdjustmentKey];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke_2;
  v16[3] = &unk_1E756AA40;
  v17 = v12;
  v15 = v12;
  [controllerCopy modifyAdjustmentWithKey:pIPortraitAdjustmentKey modificationBlock:v16];
}

void __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v5 = getPIDepthInfoKeySymbolLoc_ptr;
  v30 = getPIDepthInfoKeySymbolLoc_ptr;
  if (!getPIDepthInfoKeySymbolLoc_ptr)
  {
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __getPIDepthInfoKeySymbolLoc_block_invoke;
    v26 = &unk_1E7577EA0;
    v6 = PhotoImagingLibrary_30459();
    v28[3] = dlsym(v6, "PIDepthInfoKey");
    getPIDepthInfoKeySymbolLoc_ptr = v28[3];
    v5 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (v5)
  {
    v7 = [v4 objectForKeyedSubscript:*v5];
    [v3 setDepthInfo:v7];

    v8 = *(a1 + 32);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v9 = getPIDepthApertureKeySymbolLoc_ptr;
    v30 = getPIDepthApertureKeySymbolLoc_ptr;
    if (!getPIDepthApertureKeySymbolLoc_ptr)
    {
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __getPIDepthApertureKeySymbolLoc_block_invoke;
      v26 = &unk_1E7577EA0;
      v10 = PhotoImagingLibrary_30459();
      v28[3] = dlsym(v10, "PIDepthApertureKey");
      getPIDepthApertureKeySymbolLoc_ptr = v28[3];
      v9 = v28[3];
    }

    _Block_object_dispose(&v27, 8);
    if (v9)
    {
      v11 = [v8 objectForKeyedSubscript:*v9];
      [v11 floatValue];
      [v3 setAperture:v12];

      v13 = *(a1 + 32);
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v14 = getPIDepthFocusRectKeySymbolLoc_ptr;
      v30 = getPIDepthFocusRectKeySymbolLoc_ptr;
      if (!getPIDepthFocusRectKeySymbolLoc_ptr)
      {
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __getPIDepthFocusRectKeySymbolLoc_block_invoke;
        v26 = &unk_1E7577EA0;
        v15 = PhotoImagingLibrary_30459();
        v28[3] = dlsym(v15, "PIDepthFocusRectKey");
        getPIDepthFocusRectKeySymbolLoc_ptr = v28[3];
        v14 = v28[3];
      }

      _Block_object_dispose(&v27, 8);
      if (v14)
      {
        v16 = [v13 objectForKeyedSubscript:*v14];
        [v3 setFocusRect:v16];

        v17 = *(a1 + 32);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v18 = getPIDepthGlassesMatteAllowedKeySymbolLoc_ptr;
        v30 = getPIDepthGlassesMatteAllowedKeySymbolLoc_ptr;
        if (!getPIDepthGlassesMatteAllowedKeySymbolLoc_ptr)
        {
          v23 = MEMORY[0x1E69E9820];
          v24 = 3221225472;
          v25 = __getPIDepthGlassesMatteAllowedKeySymbolLoc_block_invoke;
          v26 = &unk_1E7577EA0;
          v19 = PhotoImagingLibrary_30459();
          v28[3] = dlsym(v19, "PIDepthGlassesMatteAllowedKey");
          getPIDepthGlassesMatteAllowedKeySymbolLoc_ptr = v28[3];
          v18 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (v18)
        {
          v20 = [v17 objectForKeyedSubscript:*v18];
          [v3 setGlassesMatteAllowed:v20];

          return;
        }

        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIDepthGlassesMatteAllowedKey(void)"];
        [v21 handleFailureInFunction:v22 file:@"PLPhotoEditRenderer.m" lineNumber:101 description:{@"%s", dlerror(), v23, v24, v25, v26}];
      }

      else
      {
        v21 = [MEMORY[0x1E696AAA8] currentHandler];
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIDepthFocusRectKey(void)"];
        [v21 handleFailureInFunction:v22 file:@"PLPhotoEditRenderer.m" lineNumber:94 description:{@"%s", dlerror(), v23, v24, v25, v26}];
      }
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIDepthApertureKey(void)"];
      [v21 handleFailureInFunction:v22 file:@"PLPhotoEditRenderer.m" lineNumber:92 description:{@"%s", dlerror(), v23, v24, v25, v26}];
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIDepthInfoKey(void)"];
    [v21 handleFailureInFunction:v22 file:@"PLPhotoEditRenderer.m" lineNumber:90 description:{@"%s", dlerror(), v23, v24, v25, v26}];
  }

  __break(1u);
}

void __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v5 = getPIPortraitInfoKeySymbolLoc_ptr;
  v26 = getPIPortraitInfoKeySymbolLoc_ptr;
  if (!getPIPortraitInfoKeySymbolLoc_ptr)
  {
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __getPIPortraitInfoKeySymbolLoc_block_invoke;
    v22 = &unk_1E7577EA0;
    v6 = PhotoImagingLibrary_30459();
    v24[3] = dlsym(v6, "PIPortraitInfoKey");
    getPIPortraitInfoKeySymbolLoc_ptr = v24[3];
    v5 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  if (v5)
  {
    v7 = [v4 objectForKeyedSubscript:*v5];
    [v3 setPortraitInfo:v7];

    v8 = *(a1 + 32);
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v9 = getPIPortraitStrengthKeySymbolLoc_ptr;
    v26 = getPIPortraitStrengthKeySymbolLoc_ptr;
    if (!getPIPortraitStrengthKeySymbolLoc_ptr)
    {
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __getPIPortraitStrengthKeySymbolLoc_block_invoke;
      v22 = &unk_1E7577EA0;
      v10 = PhotoImagingLibrary_30459();
      v24[3] = dlsym(v10, "PIPortraitStrengthKey");
      getPIPortraitStrengthKeySymbolLoc_ptr = v24[3];
      v9 = v24[3];
    }

    _Block_object_dispose(&v23, 8);
    if (v9)
    {
      v11 = [v8 objectForKeyedSubscript:*v9];
      [v11 floatValue];
      [v3 setStrength:v12];

      v13 = *(a1 + 32);
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v14 = getPIPortraitSpillMatteAllowedKeySymbolLoc_ptr;
      v26 = getPIPortraitSpillMatteAllowedKeySymbolLoc_ptr;
      if (!getPIPortraitSpillMatteAllowedKeySymbolLoc_ptr)
      {
        v19 = MEMORY[0x1E69E9820];
        v20 = 3221225472;
        v21 = __getPIPortraitSpillMatteAllowedKeySymbolLoc_block_invoke;
        v22 = &unk_1E7577EA0;
        v15 = PhotoImagingLibrary_30459();
        v24[3] = dlsym(v15, "PIPortraitSpillMatteAllowedKey");
        getPIPortraitSpillMatteAllowedKeySymbolLoc_ptr = v24[3];
        v14 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (v14)
      {
        v16 = [v13 objectForKeyedSubscript:*v14];
        [v3 setSpillMatteAllowed:v16];

        return;
      }

      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIPortraitSpillMatteAllowedKey(void)"];
      [v17 handleFailureInFunction:v18 file:@"PLPhotoEditRenderer.m" lineNumber:103 description:{@"%s", dlerror(), v19, v20, v21, v22}];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIPortraitStrengthKey(void)"];
      [v17 handleFailureInFunction:v18 file:@"PLPhotoEditRenderer.m" lineNumber:98 description:{@"%s", dlerror(), v19, v20, v21, v22}];
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getPIPortraitInfoKey(void)"];
    [v17 handleFailureInFunction:v18 file:@"PLPhotoEditRenderer.m" lineNumber:96 description:{@"%s", dlerror(), v19, v20, v21, v22}];
  }

  __break(1u);
}

+ (BOOL)currentDeviceShouldAllowLocalLight
{
  if (currentDeviceShouldAllowLocalLight_onceToken != -1)
  {
    dispatch_once(&currentDeviceShouldAllowLocalLight_onceToken, &__block_literal_global_88);
  }

  return currentDeviceShouldAllowLocalLight_supportsLocalLight;
}

void __57__PLPhotoEditRenderer_currentDeviceShouldAllowLocalLight__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
  v8 = getMTLCreateSystemDefaultDeviceSymbolLoc_ptr;
  if (!getMTLCreateSystemDefaultDeviceSymbolLoc_ptr)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke;
    v4[3] = &unk_1E7577EA0;
    v4[4] = &v5;
    __getMTLCreateSystemDefaultDeviceSymbolLoc_block_invoke(v4);
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v1 = v0();
    currentDeviceShouldAllowLocalLight_supportsLocalLight = [v1 supportsFeatureSet:1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id SOFT_LINKED_MTLCreateSystemDefaultDevice(void)"];
    [v2 handleFailureInFunction:v3 file:@"PLPhotoEditRenderer.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

+ (id)newImageDataFromCGImage:(CGImage *)image withCompressionQuality:(double)quality metadataSourceImageURL:(id)l preserveRegionsInMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  v23[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v12 = CGImageDestinationCreateWithData(v10, identifier, 1uLL, 0);

  if (v12)
  {
    if (lCopy && (v13 = CGImageSourceCreateWithURL(lCopy, 0)) != 0)
    {
      v14 = v13;
      v15 = CGImageSourceCopyPropertiesAtIndex(v13, 0, 0);
      CFRelease(v14);
    }

    else
    {
      v15 = 0;
    }

    v22 = *MEMORY[0x1E696D338];
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:quality];
    v23[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    CGImageDestinationSetProperties(v12, v17);

    if (!v15)
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    v18 = [getPICompositionExporterClass() resetImageProperties:v15 preserveRegions:metadataCopy];
    CGImageDestinationAddImage(v12, image, v18);
    if (!CGImageDestinationFinalize(v12))
    {
      v19 = PLBackendGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Couldn't create image data", v21, 2u);
      }

      v10 = 0;
    }

    CFRelease(v12);
  }

  return v10;
}

+ (id)compositionWithController:(id)controller source:(id)source
{
  sourceCopy = source;
  controllerCopy = controller;
  source = [sourceCopy source];
  [controllerCopy setSource:source mediaType:{objc_msgSend(sourceCopy, "mediaType")}];

  mediaType = [sourceCopy mediaType];
  v9 = [PLCompositionHelper validatedCompositionCopyFor:controllerCopy mediaType:mediaType];

  return v9;
}

+ (id)rendererForVideoURL:(id)l livePhotoStillURL:(id)rL adjustmentData:(id)data formatIdentifier:(id)identifier formatVersion:(id)version
{
  v57 = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  dataCopy = data;
  identifierCopy = identifier;
  versionCopy = version;
  v42 = lCopy;
  if (rLCopy)
  {
    v43 = [PLLivePhotoEditSource livePhotoSourceWithPhotoURL:rLCopy videoComplementURL:lCopy];
    v15 = 3;
  }

  else
  {
    v43 = [[PLVideoEditSource alloc] initWithVideoURL:lCopy];
    v15 = 2;
  }

  v16 = objc_alloc_init(PLPhotoEditPersistenceManager);
  v48 = 0;
  v17 = [(PLPhotoEditPersistenceManager *)v16 loadCompositionFrom:dataCopy formatIdentifier:identifierCopy formatVersion:versionCopy sidecarData:0 error:&v48];
  v18 = v48;
  v19 = v18;
  if (!v17 || v18)
  {
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "could not load composition from adjustment data: %@", &buf, 0xCu);
    }

    v33 = 0;
  }

  else
  {
    v20 = [getPIPhotoEditHelperClass_30489() newCompositionControllerWithComposition:v17];
    source = [(PLEditSource *)v43 source];
    [v20 setSource:source mediaType:v15];

    v41 = [v20 copy];
    composition = [v41 composition];
    v23 = composition == 0;

    if (v23)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:257 description:@"Composition controller has no NUComposition!"];
    }

    PIPhotoEditHelperClass_30489 = getPIPhotoEditHelperClass_30489();
    composition2 = [v41 composition];
    v26 = [PIPhotoEditHelperClass_30489 videoPropertiesRequestWithComposition:composition2];

    [v26 setName:@"PLPhotoEditRenderer-getInputOrientation"];
    v47 = 0;
    v27 = [v26 submitSynchronous:&v47];
    v40 = v47;
    if (v27)
    {
      properties = [v27 properties];
      orientation = [properties orientation];

      v49 = 0;
      v50 = &v49;
      v51 = 0x2020000000;
      v30 = getNUOrientationIsValidSymbolLoc_ptr;
      v52 = getNUOrientationIsValidSymbolLoc_ptr;
      if (!getNUOrientationIsValidSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v54 = __getNUOrientationIsValidSymbolLoc_block_invoke;
        v55 = &unk_1E7577EA0;
        v56 = &v49;
        v31 = NeutrinoCoreLibrary_30538();
        v32 = dlsym(v31, "NUOrientationIsValid");
        *(v56[1] + 24) = v32;
        getNUOrientationIsValidSymbolLoc_ptr = *(v56[1] + 24);
        v30 = v50[3];
      }

      _Block_object_dispose(&v49, 8);
      if (!v30)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NUOrientation SOFT_LINKED_NUOrientationIsValid(NUOrientation)"];
        [currentHandler2 handleFailureInFunction:v39 file:@"PLPhotoEditRenderer.m" lineNumber:83 description:{@"%s", dlerror()}];

        __break(1u);
      }

      if (v30(orientation))
      {
        [PLCompositionHelper compositionController:v20 setInputOrientation:orientation];
      }

      else
      {
        v35 = PLBackendGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = orientation;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "video orientation from the video properties is invalid: %d", &buf, 8u);
        }
      }

      v33 = [[PLPhotoEditRenderer alloc] initWithEditSource:v43 renderPriority:3];
      [(PLPhotoEditRenderer *)v33 setCompositionController:v20];
    }

    else
    {
      v34 = PLBackendGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v40;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Error encountered determining video properties for video composition: %@", &buf, 0xCu);
      }

      v33 = 0;
    }
  }

  return v33;
}

+ (void)configureNeutrinoCacheDirectoryIfNeeded
{
  if (configureNeutrinoCacheDirectoryIfNeeded_onceToken != -1)
  {
    dispatch_once(&configureNeutrinoCacheDirectoryIfNeeded_onceToken, &__block_literal_global_30588);
  }
}

void __62__PLPhotoEditRenderer_configureNeutrinoCacheDirectoryIfNeeded__block_invoke()
{
  v0 = NSTemporaryDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"com.apple.Photos"];

  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:1];
  v3 = [v2 URLByAppendingPathComponent:@"Neutrino"];

  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v4 = getNUGlobalSettingsClass_softClass;
  v10 = getNUGlobalSettingsClass_softClass;
  if (!getNUGlobalSettingsClass_softClass)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __getNUGlobalSettingsClass_block_invoke;
    v6[3] = &unk_1E7577EA0;
    v6[4] = &v7;
    __getNUGlobalSettingsClass_block_invoke(v6);
    v4 = v8[3];
  }

  v5 = v4;
  _Block_object_dispose(&v7, 8);
  [v4 setCacheNodeDirectoryURL:v3];
}

@end