@interface PLPhotoEditRenderer
+ (BOOL)currentDeviceShouldAllowLocalLight;
+ (id)compositionWithController:(id)a3 source:(id)a4;
+ (id)newImageDataFromCGImage:(CGImage *)a3 withCompressionQuality:(double)a4 metadataSourceImageURL:(id)a5 preserveRegionsInMetadata:(BOOL)a6;
+ (id)rendererForVideoURL:(id)a3 livePhotoStillURL:(id)a4 adjustmentData:(id)a5 formatIdentifier:(id)a6 formatVersion:(id)a7;
+ (void)configureNeutrinoCacheDirectoryIfNeeded;
+ (void)updateCompositionController:(id)a3 fromPortraitMetadata:(id)a4;
- (NUComposition)composition;
- (PLPhotoEditRenderer)initWithEditSource:(id)a3 renderPriority:(int64_t)a4;
- (double)_smartBWLevelWithAttributeKey:(id)a3 settingKey:(id)a4;
- (double)_smartColorLevelWithAttributeKey:(id)a3 settingKey:(id)a4;
- (double)_smartToneLevelWithAttributeKey:(id)a3 settingKey:(id)a4;
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
- (id)exportVideoToURL:(id)a3 preset:(id)a4 livePhotoPairingIdentifier:(id)a5 completion:(id)a6;
- (id)getGeometryForComposition:(id)a3;
- (id)getGeometryForComposition:(id)a3 pipelineFilters:(id)a4;
- (id)newExporter;
- (id)newImageExporterOptions;
- (id)newVideoExporterOptions;
- (void)applySourceChangesToComposition:(id)a3 source:(id)a4 withBlock:(id)a5 executeSynchronously:(BOOL)a6 completionBlock:(id)a7;
- (void)calculateLongExposureFusionParametersWithCompletionHandler:(id)a3;
- (void)cancelAllRenders;
- (void)generateJPEGImageDataWithCompressionQuality:(double)a3 livePhotoPairingIdentifier:(id)a4 completionHandler:(id)a5;
- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 name:(id)a5 completion:(id)a6;
- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 renderMode:(int64_t)a5 name:(id)a6 completion:(id)a7;
- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 renderMode:(int64_t)a5 renderTime:(id *)a6 name:(id)a7 completion:(id)a8;
- (void)renderVideoWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 name:(id)a5 completion:(id)a6;
- (void)setCompositionController:(id)a3;
- (void)setSmartFiltersCubeSize:(int64_t)a3;
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

- (void)applySourceChangesToComposition:(id)a3 source:(id)a4 withBlock:(id)a5 executeSynchronously:(BOOL)a6 completionBlock:(id)a7
{
  v74 = a6;
  v97 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v75 = a4;
  v77 = a5;
  v79 = a7;
  v12 = [v11 copy];
  v82 = self;
  p_editSource = &self->_editSource;
  v14 = [PLPhotoEditRenderer compositionWithController:v12 source:self->_editSource];
  v81 = [(PLPhotoEditRenderer *)v82 getGeometryForComposition:v14];
  v77[2](v77, v12);
  v80 = [PLPhotoEditRenderer compositionWithController:v12 source:*p_editSource];

  v78 = [(PLPhotoEditRenderer *)v82 getGeometryForComposition:v80];
  v76 = +[PLCompositionHelper adjustmentConstants];
  v15 = 0;
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
      v15 = 0;
    }

    else
    {
      v20 = [v12 cropAdjustmentController];
      v21 = [v11 cropAdjustmentController];
      v22 = [v20 isEqual:v21];
      [v20 cropRect];
      v70 = v23;
      v71 = v24;
      v72 = v25;
      v73 = v26;
      if (v22 && !CGRectIsEmpty(*&v23) && [v20 enabled])
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
        v31 = [v76 PICropAdjustmentKey];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke;
        v91[3] = &__block_descriptor_64_e36_v16__0__PICropAdjustmentController_8l;
        *&v91[4] = x;
        *&v91[5] = y;
        *&v91[6] = width;
        *&v91[7] = height;
        [v12 modifyAdjustmentWithKey:v31 modificationBlock:v91];
      }

      v32 = [v76 PIRedEyeAdjustmentKey];
      [v12 removeAdjustmentWithKey:v32];

      v33 = [v12 smartToneAdjustmentController];
      v15 = [v33 enabled];
    }
  }

  v34 = [v11 portraitAdjustmentController];
  v35 = [v34 enabled];
  v36 = [v12 portraitAdjustmentController];
  v37 = [v36 enabled];

  v38 = [v11 portraitAdjustmentController];
  v39 = [v38 kind];
  v40 = [v12 portraitAdjustmentController];
  v41 = [v40 kind];
  v42 = [v39 isEqualToString:v41];

  if ((v42 & 1) == 0)
  {
    if (v35 == v37)
    {
      v43 = [v12 portraitAdjustmentController];
      v15 = [v43 enabled];
    }

    else
    {
      v15 = 1;
    }
  }

  v44 = [v11 autoLoopAdjustmentController];
  v45 = [v12 autoLoopAdjustmentController];
  if (v44 | v45 && ([v44 isEqual:v45] & 1) == 0)
  {
    v54 = [v45 flavor];
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
      v58 = v55(v54);

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
          if ((v15 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v62 = [v12 smartToneAdjustmentController];
          v63 = [v62 enabled];

          if (((v63 | v15) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_17:
        [(NURenderContext *)v82->_smartToneAutoCalculatorContext cancelAllRequests];
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
        [v48 setRenderContext:v82->_smartToneAutoCalculatorContext];
        if (!v74)
        {
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_105;
          v83[3] = &unk_1E756AAB0;
          v84 = v12;
          v85 = v76;
          v86 = v11;
          v87 = v79;
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
          v52 = [v76 PISmartToneAdjustmentKey];
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 3221225472;
          v88[2] = __109__PLPhotoEditRenderer_applySourceChangesToComposition_source_withBlock_executeSynchronously_completionBlock___block_invoke_2;
          v88[3] = &unk_1E756AA88;
          v89 = v49;
          [v12 modifyAdjustmentWithKey:v52 modificationBlock:v88];

          [v11 applyChangesFromCompositionController:v12];
          v53 = v89;
        }

        else
        {
          v64 = [v50 domain];
          if ([v64 isEqualToString:@"NUError"])
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
        if (v79)
        {
          v79[2]();
        }

        goto LABEL_37;
      }

      v68 = [MEMORY[0x1E696AAA8] currentHandler];
      v69 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL SOFT_LINKED_PIAutoLoopFlavorProducesOnlyVideo(PIAutoLoopFlavor)"];
      [v68 handleFailureInFunction:v69 file:@"PLPhotoEditRenderer.m" lineNumber:86 description:{@"%s", dlerror()}];
    }

    else
    {
      v66 = [MEMORY[0x1E696AAA8] currentHandler];
      v67 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"PIAutoLoopFlavor SOFT_LINKED_PIAutoLoopFlavorFromString(NSString *__strong)"];
      [v66 handleFailureInFunction:v67 file:@"PLPhotoEditRenderer.m" lineNumber:85 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  if (v15)
  {
    goto LABEL_17;
  }

LABEL_34:
  [v11 applyChangesFromCompositionController:v12];
  if (v79)
  {
    v79[2]();
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

- (id)getGeometryForComposition:(id)a3 pipelineFilters:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [getPIPhotoEditHelperClass_30489() geometryRequestWithComposition:v7];

  [v8 setPipelineFilters:v6];
  [v8 setRenderContext:self->_geometryContext];
  [v8 setName:@"PLPhotoEditRenderer-geometry"];
  v12 = 0;
  v9 = [v8 submitSynchronous:&v12];
  v10 = [v9 geometry];

  return v10;
}

- (id)getGeometryForComposition:(id)a3
{
  v4 = a3;
  v5 = [getPIPhotoEditHelperClass_30489() pipelineFiltersForOriginalGeometry];
  v6 = [(PLPhotoEditRenderer *)self getGeometryForComposition:v4 pipelineFilters:v5];

  return v6;
}

- (void)calculateLongExposureFusionParametersWithCompletionHandler:(id)a3
{
  v4 = a3;
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
  v8 = [(PLPhotoEditRenderer *)self composition];
  v9 = [v7 initWithComposition:v8];

  [v9 setName:@"PL-PILongExposureFusionAutoCalculator"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__PLPhotoEditRenderer_calculateLongExposureFusionParametersWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E756A9C8;
  v12 = v4;
  v10 = v4;
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
  v3 = [(PLPhotoEditRenderer *)self compositionController];
  v4 = [v3 smartBWAdjustmentController];

  [v4 hue];
  v6 = v5;
  if (v5 != self->_smartBWLevelInCachedAdjustments)
  {
    smartBWAdjustments = self->__smartBWAdjustments;
    self->__smartBWAdjustments = 0;
  }

  v8 = self->__smartBWAdjustments;
  if (!v8)
  {
    v9 = [MEMORY[0x1E695F658] emptyImage];
    v10 = [v9 smartBlackAndWhiteAdjustmentsForValue:0 andStatistics:v6];
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
  v3 = [(PLPhotoEditRenderer *)self compositionController];
  v4 = [v3 smartColorAdjustmentController];

  [v4 inputColor];
  v6 = v5;
  v7 = [v4 statistics];
  v8 = v7;
  if (v6 != self->_smartColorLevelInCachedAdjustments || v7 != self->_smartColorStatisticsInCachedAdjustments)
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
  v3 = [(PLPhotoEditRenderer *)self compositionController];
  v4 = [v3 smartToneAdjustmentController];

  [v4 inputLight];
  v6 = v5;
  v7 = [v4 statistics];
  v8 = v7;
  if (v6 != self->_smartToneLevelInCachedAdjustments || v7 != self->_smartToneStatisticsInCachedAdjustments)
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
  v4 = [v3 PISmartBWAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeGrainKey];
  v8 = [v6 grainKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseHue
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartBWAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeHueKey];
  v8 = [v6 hueKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseTone
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartBWAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeToneKey];
  v8 = [v6 toneKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseNeutralGamma
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartBWAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeNeutralGammaKey];
  v8 = [v6 neutralKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartBWBaseStrength
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartBWAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeStrengthKey];
  v8 = [v6 strengthKey];
  [(PLPhotoEditRenderer *)self _smartBWLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)_smartBWLevelWithAttributeKey:(id)a3 settingKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoEditRenderer *)self _smartBWAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  v10 = [v9 PISmartBWAdjustmentKey];

  if (v8)
  {
    [v8 objectForKey:v6];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:v10 settingKey:v7];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (double)smartColorBaseCast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartColorAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeCastKey];
  v8 = [v6 offsetCastKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartColorBaseSaturation
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartColorAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeSaturationKey];
  v8 = [v6 offsetSaturationKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartColorBaseContrast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartColorAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeContrastKey];
  v8 = [v6 offsetContrastKey];
  [(PLPhotoEditRenderer *)self _smartColorLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)_smartColorLevelWithAttributeKey:(id)a3 settingKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoEditRenderer *)self _smartColorAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  v10 = [v9 PISmartColorAdjustmentKey];

  if (v8)
  {
    [v8 objectForKey:v6];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:v10 settingKey:v7];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (double)smartToneBaseLocalLight
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeLocalLightKey];
  v8 = [v6 offsetLocalLightKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseBlackPoint
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeBlackPointKey];
  v8 = [v6 offsetBlackKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseShadows
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeShadowsKey];
  v8 = [v6 offsetShadowsKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseHighlights
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeHighlightsKey];
  v8 = [v6 offsetHighlightsKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseExposure
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeExposureKey];
  v8 = [v6 offsetExposureKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseContrast
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeBrightnessKey];
  v8 = [v6 offsetBrightnessKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)smartToneBaseBrightness
{
  v3 = +[PLCompositionHelper adjustmentConstants];
  v4 = [v3 PISmartToneAdjustmentKey];

  v5 = [(PLPhotoEditRenderer *)self compositionController];
  v6 = [objc_opt_class() adjustmentControllerClassForKey:v4];

  v7 = [v6 attributeBrightnessKey];
  v8 = [v6 offsetBrightnessKey];
  [(PLPhotoEditRenderer *)self _smartToneLevelWithAttributeKey:v7 settingKey:v8];
  v10 = v9;

  return v10;
}

- (double)_smartToneLevelWithAttributeKey:(id)a3 settingKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PLPhotoEditRenderer *)self _smartToneAdjustments];
  v9 = +[PLCompositionHelper adjustmentConstants];
  v10 = [v9 PISmartToneAdjustmentKey];

  if (v8)
  {
    [v8 objectForKey:v6];
  }

  else
  {
    [PLCompositionHelper defaultValueForAdjustmentKey:v10 settingKey:v7];
  }
  v11 = ;
  [v11 doubleValue];
  v13 = v12;

  return v13;
}

- (void)setSmartFiltersCubeSize:(int64_t)a3
{
  if (self->_smartFiltersCubeSize != a3)
  {
    self->_smartFiltersCubeSize = a3;
  }
}

- (void)setCompositionController:(id)a3
{
  v5 = a3;
  if (self->_compositionController != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_compositionController, a3);
    smartToneAdjustments = self->__smartToneAdjustments;
    self->__smartToneAdjustments = 0;

    smartColorAdjustments = self->__smartColorAdjustments;
    self->__smartColorAdjustments = 0;

    smartBWAdjustments = self->__smartBWAdjustments;
    self->__smartBWAdjustments = 0;

    v5 = v9;
  }
}

- (void)generateJPEGImageDataWithCompressionQuality:(double)a3 livePhotoPairingIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [(PLPhotoEditRenderer *)self newExporter];
  v11 = [(PLPhotoEditRenderer *)self newImageExporterOptions];
  [v11 setPairingIdentifier:v9];

  [v11 setJPEGCompressionQuality:a3];
  v12 = [(PLPhotoEditRenderer *)self composition];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __112__PLPhotoEditRenderer_generateJPEGImageDataWithCompressionQuality_livePhotoPairingIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E756A9C8;
  v15 = v8;
  v13 = v8;
  [v10 exportImageToDataWithComposition:v12 options:v11 completion:v14];
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

- (void)renderVideoWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 name:(id)a5 completion:(id)a6
{
  height = a3.height;
  width = a3.width;
  v28[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  v13 = a6;
  if (!self->_editSource)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:474 description:@"editSource cannot be nil while rendering"];
  }

  v14 = [(PLPhotoEditRenderer *)self compositionController];

  if (!v14)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:475 description:@"compositionController cannot be nil while rendering"];
  }

  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E69BFF48];
    v27 = *MEMORY[0x1E696A578];
    v28[0] = @"Target size not specified";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v16 = [v18 errorWithDomain:v19 code:41003 userInfo:v20];

    (*(v13 + 2))(v13, 0, 0, 0, v16);
    goto LABEL_19;
  }

  v16 = [(PLPhotoEditRenderer *)self composition];
  if (a4 == 1)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:494 description:@"PLPhotoEditContentModeAspectFill is not supported for this path"];

    goto LABEL_14;
  }

  if (a4)
  {
LABEL_14:
    v17 = 0;
    goto LABEL_15;
  }

  v17 = [getPIPhotoEditHelperClass_30489() videoRenderRequestWithComposition:v16 fitInSize:{width, height}];
LABEL_15:
  [v17 setRenderContext:self->_videoRenderContext];
  [v17 setPriority:self->_priority];
  if ([(__CFString *)v12 length])
  {
    v22 = v12;
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
  v26 = v13;
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

- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 renderMode:(int64_t)a5 renderTime:(id *)a6 name:(id)a7 completion:(id)a8
{
  height = a3.height;
  width = a3.width;
  v16 = a7;
  v17 = a8;
  if (!self->_editSource)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:405 description:@"editSource cannot be nil while rendering"];
  }

  v18 = [(PLPhotoEditRenderer *)self compositionController];

  if (!v18)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:406 description:@"compositionController cannot be nil while rendering"];
  }

  v19 = [(PLPhotoEditRenderer *)self composition];
  if (a4 == 1)
  {
    v20 = [getPIPhotoEditHelperClass_30489() imageRenderRequestWithComposition:v19 fillInSize:1 wideGamut:{width, height}];
    v21 = @"PLPhotoEditRenderer-fill";
    goto LABEL_9;
  }

  if (!a4)
  {
    v20 = [getPIPhotoEditHelperClass_30489() imageRenderRequestWithComposition:v19 fitInSize:1 wideGamut:{width, height}];
    v21 = @"PLPhotoEditRenderer-fit";
LABEL_9:
    if ([(__CFString *)v16 length])
    {
      v22 = v16;
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
  if (a5 == 1)
  {
    v23 = [getPIPhotoEditHelperClass_30489() pipelineFiltersForCropping];
    [v20 setPipelineFilters:v23];
  }

  [v20 setRenderContext:self->_imageRenderContext];
  v29 = *&a6->var0;
  var3 = a6->var3;
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
  v28 = v17;
  v24 = v17;
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

- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 renderMode:(int64_t)a5 name:(id)a6 completion:(id)a7
{
  v7 = *MEMORY[0x1E6960C70];
  v8 = *(MEMORY[0x1E6960C70] + 16);
  [(PLPhotoEditRenderer *)self renderImageWithTargetSize:a4 contentMode:a5 renderMode:&v7 renderTime:a6 name:a7 completion:a3.width, a3.height];
}

- (void)renderImageWithTargetSize:(CGSize)a3 contentMode:(int64_t)a4 name:(id)a5 completion:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = a6;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __77__PLPhotoEditRenderer_renderImageWithTargetSize_contentMode_name_completion___block_invoke;
  v13[3] = &unk_1E756A9F0;
  v14 = v11;
  v12 = v11;
  [(PLPhotoEditRenderer *)self renderImageWithTargetSize:a4 contentMode:0 renderMode:a5 name:v13 completion:width, height];
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
  v3 = [(PLPhotoEditRenderer *)self compositionController];
  v4 = [PLPhotoEditRenderer compositionWithController:v3 source:self->_editSource];

  return v4;
}

- (id)exportVideoToURL:(id)a3 preset:(id)a4 livePhotoPairingIdentifier:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a3;
  v12 = [(PLPhotoEditRenderer *)self newExporter];
  v13 = [(PLPhotoEditRenderer *)self newVideoExporterOptions];
  [v13 setPairingIdentifier:v10];

  v14 = [(PLPhotoEditRenderer *)self composition];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __85__PLPhotoEditRenderer_exportVideoToURL_preset_livePhotoPairingIdentifier_completion___block_invoke;
  v18[3] = &unk_1E756A9C8;
  v19 = v9;
  v15 = v9;
  v16 = [v12 exportVideoToURL:v11 composition:v14 options:v13 completion:v18];

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

- (PLPhotoEditRenderer)initWithEditSource:(id)a3 renderPriority:(int64_t)a4
{
  v8 = a3;
  if (!v8)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PLPhotoEditRenderer.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"editSource"}];
  }

  v25.receiver = self;
  v25.super_class = PLPhotoEditRenderer;
  v9 = [(PLPhotoEditRenderer *)&v25 init];
  [objc_opt_class() configureNeutrinoCacheDirectoryIfNeeded];
  objc_storeStrong(&v9->_editSource, a3);
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

  if (a4 <= 3)
  {
    v19 = 3 - a4;
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

+ (void)updateCompositionController:(id)a3 fromPortraitMetadata:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v9 = [v7 portraitInfoDictionaryFromCameraMetadata:v6];
  v10 = +[PLCompositionHelper adjustmentConstants];
  v11 = [v10 PIDepthAdjustmentKey];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke;
  v18[3] = &unk_1E756AA18;
  v12 = v9;
  v19 = v12;
  [v5 modifyAdjustmentWithKey:v11 modificationBlock:v18];

  v13 = +[PLCompositionHelper adjustmentConstants];
  v14 = [v13 PIPortraitAdjustmentKey];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__PLPhotoEditRenderer_updateCompositionController_fromPortraitMetadata___block_invoke_2;
  v16[3] = &unk_1E756AA40;
  v17 = v12;
  v15 = v12;
  [v5 modifyAdjustmentWithKey:v14 modificationBlock:v16];
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

+ (id)newImageDataFromCGImage:(CGImage *)a3 withCompressionQuality:(double)a4 metadataSourceImageURL:(id)a5 preserveRegionsInMetadata:(BOOL)a6
{
  v6 = a6;
  v23[1] = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v11 = [*MEMORY[0x1E6982E58] identifier];
  v12 = CGImageDestinationCreateWithData(v10, v11, 1uLL, 0);

  if (v12)
  {
    if (v9 && (v13 = CGImageSourceCreateWithURL(v9, 0)) != 0)
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
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
    v23[0] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    CGImageDestinationSetProperties(v12, v17);

    if (!v15)
    {
      v15 = MEMORY[0x1E695E0F8];
    }

    v18 = [getPICompositionExporterClass() resetImageProperties:v15 preserveRegions:v6];
    CGImageDestinationAddImage(v12, a3, v18);
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

+ (id)compositionWithController:(id)a3 source:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 source];
  [v6 setSource:v7 mediaType:{objc_msgSend(v5, "mediaType")}];

  v8 = [v5 mediaType];
  v9 = [PLCompositionHelper validatedCompositionCopyFor:v6 mediaType:v8];

  return v9;
}

+ (id)rendererForVideoURL:(id)a3 livePhotoStillURL:(id)a4 adjustmentData:(id)a5 formatIdentifier:(id)a6 formatVersion:(id)a7
{
  v57 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v44 = a5;
  v45 = a6;
  v46 = a7;
  v42 = v13;
  if (v14)
  {
    v43 = [PLLivePhotoEditSource livePhotoSourceWithPhotoURL:v14 videoComplementURL:v13];
    v15 = 3;
  }

  else
  {
    v43 = [[PLVideoEditSource alloc] initWithVideoURL:v13];
    v15 = 2;
  }

  v16 = objc_alloc_init(PLPhotoEditPersistenceManager);
  v48 = 0;
  v17 = [(PLPhotoEditPersistenceManager *)v16 loadCompositionFrom:v44 formatIdentifier:v45 formatVersion:v46 sidecarData:0 error:&v48];
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
    v21 = [(PLEditSource *)v43 source];
    [v20 setSource:v21 mediaType:v15];

    v41 = [v20 copy];
    v22 = [v41 composition];
    v23 = v22 == 0;

    if (v23)
    {
      v37 = [MEMORY[0x1E696AAA8] currentHandler];
      [v37 handleFailureInMethod:a2 object:a1 file:@"PLPhotoEditRenderer.m" lineNumber:257 description:@"Composition controller has no NUComposition!"];
    }

    PIPhotoEditHelperClass_30489 = getPIPhotoEditHelperClass_30489();
    v25 = [v41 composition];
    v26 = [PIPhotoEditHelperClass_30489 videoPropertiesRequestWithComposition:v25];

    [v26 setName:@"PLPhotoEditRenderer-getInputOrientation"];
    v47 = 0;
    v27 = [v26 submitSynchronous:&v47];
    v40 = v47;
    if (v27)
    {
      v28 = [v27 properties];
      v29 = [v28 orientation];

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
        v38 = [MEMORY[0x1E696AAA8] currentHandler];
        v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NUOrientation SOFT_LINKED_NUOrientationIsValid(NUOrientation)"];
        [v38 handleFailureInFunction:v39 file:@"PLPhotoEditRenderer.m" lineNumber:83 description:{@"%s", dlerror()}];

        __break(1u);
      }

      if (v30(v29))
      {
        [PLCompositionHelper compositionController:v20 setInputOrientation:v29];
      }

      else
      {
        v35 = PLBackendGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v29;
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