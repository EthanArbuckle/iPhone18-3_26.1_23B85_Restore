@interface PILongExposureFusion
+ (BOOL)_debugDumpIntermediateImages;
+ (BOOL)debugDumpIntermediateImages;
+ (void)initialize;
+ (void)loadFusionTuningParameters;
- (id)_computeNCCMapFromImage:(id)image toImage:(id)toImage scale:(double)scale;
- (id)_fuseImage:(id)image withGuideImage:(id)guideImage weightImage:(id)weightImage maskImage:(id)maskImage;
- (id)_refineMaskImage:(id)image guideImage:(id)guideImage scale:(double)scale;
- (id)alignImage:(__n128)image transform:(double)transform extent:(double)extent;
- (id)outputImage;
@end

@implementation PILongExposureFusion

- (id)_fuseImage:(id)image withGuideImage:(id)guideImage weightImage:(id)weightImage maskImage:(id)maskImage
{
  v39[1] = *MEMORY[0x1E69E9840];
  maskImageCopy = maskImage;
  weightImageCopy = weightImage;
  guideImageCopy = guideImage;
  imageCopy = image;
  v13 = +[PIAutoLoopKernels blur7x7Kernel];
  [guideImageCopy extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  imageByClampingToExtent = [guideImageCopy imageByClampingToExtent];
  v39[0] = imageByClampingToExtent;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v24 = [v13 applyWithExtent:&__block_literal_global_60 roiCallback:v23 arguments:{v15, v17, v19, v21}];

  v25 = [MEMORY[0x1E695F688] vectorWithX:*&kBlendMaskThreshold0 Y:*&kBlendMaskThreshold1];
  v26 = +[PIAutoLoopKernels fusionKernel];
  [guideImageCopy extent];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v38[0] = imageCopy;
  v38[1] = guideImageCopy;
  v38[2] = v24;
  v38[3] = weightImageCopy;
  v38[4] = maskImageCopy;
  v38[5] = v25;
  v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:6];

  v36 = [v26 applyWithExtent:&__block_literal_global_62 roiCallback:v35 arguments:{v28, v30, v32, v34}];

  return v36;
}

- (id)_refineMaskImage:(id)image guideImage:(id)guideImage scale:(double)scale
{
  v34[4] = *MEMORY[0x1E69E9840];
  v6 = fmin(1.0 / (scale * 8.0), 1.0);
  v7 = MEMORY[0x1E695F688];
  guideImageCopy = guideImage;
  imageCopy = image;
  v10 = [v7 vectorWithX:v6 * 15.0 Y:v6 * 15.0];
  v11 = v6;
  v12 = [MEMORY[0x1E695F688] vectorWithX:(-0.5 / ((v11 * 7.0) * (v11 * 7.0))) Y:-0.00499999989 Z:-49.9999962];
  [imageCopy extent];
  NUScaleRect();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeScale(&v33, v6, v6);
  imageByClampingToExtent = [imageCopy imageByClampingToExtent];

  v32 = v33;
  v22 = [imageByClampingToExtent imageByApplyingTransform:&v32 highQualityDownsample:1];

  imageByClampingToExtent2 = [guideImageCopy imageByClampingToExtent];

  v32 = v33;
  v24 = [imageByClampingToExtent2 imageByApplyingTransform:&v32 highQualityDownsample:1];

  v25 = +[PIAutoLoopKernels dynamismMapRefineKernel];
  v34[0] = v22;
  v34[1] = v24;
  v34[2] = v10;
  v34[3] = v12;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:4];
  v27 = [v25 applyWithExtent:&__block_literal_global_58_22981 roiCallback:v26 arguments:{v14, v16, v18, v20}];

  v31 = v33;
  memset(&v32, 0, sizeof(v32));
  CGAffineTransformInvert(&v32, &v31);
  imageByClampingToExtent3 = [v27 imageByClampingToExtent];
  v31 = v32;
  v29 = [imageByClampingToExtent3 imageByApplyingTransform:&v31 highQualityDownsample:1];

  return v29;
}

- (id)_computeNCCMapFromImage:(id)image toImage:(id)toImage scale:(double)scale
{
  v41[2] = *MEMORY[0x1E69E9840];
  v6 = fmin(1.0 / (scale * 8.0), 1.0);
  toImageCopy = toImage;
  imageCopy = image;
  [imageCopy extent];
  NUScaleRect();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeScale(&v38, v6, v6);
  imageByClampingToExtent = [imageCopy imageByClampingToExtent];

  v37 = v38;
  v18 = [imageByClampingToExtent imageByApplyingTransform:&v37 highQualityDownsample:1];

  imageByClampingToExtent2 = [toImageCopy imageByClampingToExtent];

  v37 = v38;
  v20 = [imageByClampingToExtent2 imageByApplyingTransform:&v37 highQualityDownsample:1];

  v21 = +[PIAutoLoopKernels nccKernel];
  v41[0] = v18;
  v41[1] = v20;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v23 = [v21 applyWithExtent:&__block_literal_global_54 roiCallback:v22 arguments:{v10, v12, v14, v16}];

  v24 = [MEMORY[0x1E695F688] vectorWithX:*&kNCCEdge0 Y:*&kNCCEdge1];
  v25 = +[PIAutoLoopKernels nccCoarseKernel];
  v40[0] = v23;
  v40[1] = v24;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v27 = [v25 applyWithExtent:v26 arguments:{v10, v12, v14, v16}];

  switch(kNCCBlurHalfSize)
  {
    case 1:
      v28 = +[PIAutoLoopKernels blur3x3Kernel];
      goto LABEL_7;
    case 2:
      v28 = +[PIAutoLoopKernels blur5x5Kernel];
      goto LABEL_7;
    case 3:
      v28 = +[PIAutoLoopKernels blur7x7Kernel];
LABEL_7:
      v29 = v28;
      goto LABEL_9;
  }

  v29 = 0;
LABEL_9:
  imageByClampingToExtent3 = [v27 imageByClampingToExtent];
  v39 = imageByClampingToExtent3;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  v32 = [v29 applyWithExtent:&__block_literal_global_56_22983 roiCallback:v31 arguments:{v10, v12, v14, v16}];

  v36 = v38;
  memset(&v37, 0, sizeof(v37));
  CGAffineTransformInvert(&v37, &v36);
  imageByClampingToExtent4 = [v32 imageByClampingToExtent];
  v36 = v37;
  v34 = [imageByClampingToExtent4 imageByApplyingTransform:&v36 highQualityDownsample:1];

  return v34;
}

- (id)alignImage:(__n128)image transform:(double)transform extent:(double)extent
{
  v28[3] = *MEMORY[0x1E69E9840];
  v27[0] = 0x3FF0000000000000;
  v27[1] = 0;
  v27[2] = 0;
  v27[3] = 0x3FF0000000000000;
  *&v27[4] = -transform;
  *&v27[5] = -extent;
  v12 = [a10 imageByApplyingTransform:v27 highQualityDownsample:1];
  v13 = +[PIAutoLoopKernels homographyKernel];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52__PILongExposureFusion_alignImage_transform_extent___block_invoke;
  v23[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
  selfCopy = self;
  v25 = a2;
  imageCopy = image;
  v14 = [MEMORY[0x1E695F688] vectorWithX:self.n128_f32[0] Y:a2.n128_f32[0] Z:image.n128_f32[0]];
  v28[0] = v14;
  v15 = [MEMORY[0x1E695F688] vectorWithX:self.n128_f32[1] Y:a2.n128_f32[1] Z:image.n128_f32[1]];
  v28[1] = v15;
  v16 = [MEMORY[0x1E695F688] vectorWithX:self.n128_f32[2] Y:a2.n128_f32[2] Z:image.n128_f32[2]];
  v28[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v18 = [v13 applyWithExtent:v23 roiCallback:v12 inputImage:v17 arguments:{0.0, 0.0, a6, a7}];

  return v18;
}

void __52__PILongExposureFusion_alignImage_transform_extent___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetMinX(*&a1);
  v8.origin.x = a1;
  v8.origin.y = a2;
  v8.size.width = a3;
  v8.size.height = a4;
  CGRectGetMaxY(v8);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectGetMaxX(v9);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetMinX(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMinY(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetMaxX(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetMinY(v14);
}

- (id)outputImage
{
  v67 = *MEMORY[0x1E69E9840];
  inputImage = [(PILongExposureFusion *)self inputImage];
  if (inputImage)
  {
    inputMaskImage = [(PILongExposureFusion *)self inputMaskImage];
    if (!inputMaskImage)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v42 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Missing inputMaskImage", buf, 2u);
      }

      v36 = 0;
      goto LABEL_64;
    }

    inputStillImage = [(PILongExposureFusion *)self inputStillImage];
    if (!inputStillImage)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v43 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Missing inputStillImage", buf, 2u);
      }

      v36 = 0;
      goto LABEL_63;
    }

    inputRenderScale = [(PILongExposureFusion *)self inputRenderScale];
    v7 = inputRenderScale;
    if (!inputRenderScale)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v44 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7694000, v44, OS_LOG_TYPE_ERROR, "Missing inputRenderScale", buf, 2u);
      }

      v36 = 0;
      goto LABEL_62;
    }

    [inputRenderScale doubleValue];
    v9 = v8;
    inputVideoScale = [(PILongExposureFusion *)self inputVideoScale];
    v11 = inputVideoScale;
    if (!inputVideoScale)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v45 = *MEMORY[0x1E69B3D88];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Missing inputVideoScale", buf, 2u);
      }

      v36 = 0;
      goto LABEL_61;
    }

    [inputVideoScale doubleValue];
    v13 = v12;
    inputAlignmentExtent = [(PILongExposureFusion *)self inputAlignmentExtent];
    v15 = inputAlignmentExtent;
    if (inputAlignmentExtent)
    {
      if ([inputAlignmentExtent count] == 4)
      {
        [v15 CGRectValue];
        inputAlignmentTransform = [(PILongExposureFusion *)self inputAlignmentTransform];
        v17 = inputAlignmentTransform;
        if (inputAlignmentTransform)
        {
          if ([inputAlignmentTransform count] == 9)
          {
            v56 = v15;
            v57 = v11;
            v58 = v7;
            v59 = inputStillImage;
            v18 = 0;
            v19 = 0;
            v20 = *(MEMORY[0x1E69E9B10] + 16);
            *buf = *MEMORY[0x1E69E9B10];
            v64 = v20;
            v65 = *(MEMORY[0x1E69E9B10] + 32);
            do
            {
              v21 = 0;
              v22 = v18;
              do
              {
                [v17 valueAtIndex:v22];
                v24 = v23;
                if (v19 >= 2)
                {
                  v25 = 2;
                }

                else
                {
                  v25 = v19;
                }

                *&buf[4 * v25 + v21] = v24;
                v21 += 16;
                ++v22;
              }

              while (v21 != 48);
              ++v19;
              v18 += 3;
            }

            while (v19 != 3);
            NUScaleRect();
            v27 = v26;
            *&v26 = v9;
            inputStillImage = v59;
            v31 = [(PILongExposureFusion *)self alignImage:v59 transform:*buf extent:*&v64, COERCE_DOUBLE(vmul_n_f32(*&v65, *&v26)), v27, v28, v29, v30];
            memset(&v62, 0, sizeof(v62));
            CGAffineTransformMakeScale(&v62, v9 / v13, v9 / v13);
            imageByClampingToExtent = [inputImage imageByClampingToExtent];
            v66 = v62;
            v33 = [imageByClampingToExtent imageByApplyingTransform:&v66 highQualityDownsample:1];

            v34 = [(PILongExposureFusion *)self _computeNCCMapFromImage:v33 toImage:v31 scale:v9];
            v35 = [(PILongExposureFusion *)self _refineMaskImage:inputMaskImage guideImage:inputImage scale:v9];
            v66 = v62;
            [v35 imageByApplyingTransform:&v66 highQualityDownsample:1];
            v60 = v31;
            v55 = v61 = v34;
            v36 = [(PILongExposureFusion *)self _fuseImage:v33 withGuideImage:v31 weightImage:v34 maskImage:?];
            v11 = v57;
            v7 = v58;
            v15 = v56;
            if (+[PILongExposureFusion debugDumpIntermediateImages])
            {
              v52 = v35;
              v53 = v33;
              defaultManager = [MEMORY[0x1E696AC08] defaultManager];
              v37 = NURenderLogger_22995();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
              {
                currentDirectoryPath = [defaultManager currentDirectoryPath];
                LODWORD(v66.a) = 138412290;
                *(&v66.a + 4) = currentDirectoryPath;
                _os_log_debug_impl(&dword_1C7694000, v37, OS_LOG_TYPE_DEBUG, "Writing intermediate long exposure fusion images to : %@", &v66, 0xCu);
              }

              [inputImage writeToTIFF:@"long-exp-input-image.tiff"];
              [inputMaskImage writeToTIFF:@"long-exp-mask-image.tiff"];
              [v59 writeToTIFF:@"long-exp-still-image.tiff"];
              [v36 extent];
              v38 = [v60 imageByCroppingToRect:?];
              [v38 writeToTIFF:@"long-exp-guide-image.tiff"];

              [v36 extent];
              v39 = [v61 imageByCroppingToRect:?];
              [v39 writeToTIFF:@"long-exp-ncc-map-image.tiff"];

              [inputMaskImage extent];
              v35 = v52;
              v40 = [v52 imageByCroppingToRect:?];
              [v40 writeToTIFF:@"long-exp-refined-mask-image.tiff"];

              [v36 writeToTIFF:@"long-exp-fusion-image.tiff"];
              v33 = v53;
            }

            goto LABEL_59;
          }

          v48 = NURenderLogger_22995();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
LABEL_58:

            v36 = 0;
LABEL_59:

            goto LABEL_60;
          }

          *buf = 0;
          v49 = "Malformed inputAlignmentTransform vector";
        }

        else
        {
          v48 = NURenderLogger_22995();
          if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          *buf = 0;
          v49 = "Missing inputAlignmentTransform";
        }

        _os_log_error_impl(&dword_1C7694000, v48, OS_LOG_TYPE_ERROR, v49, buf, 2u);
        goto LABEL_58;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v46 = *MEMORY[0x1E69B3D88];
      if (!os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
LABEL_54:
        v36 = 0;
LABEL_60:

LABEL_61:
LABEL_62:

LABEL_63:
LABEL_64:

        goto LABEL_65;
      }

      *buf = 0;
      v47 = "Malformed inputAlignmentExtent vector";
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v46 = *MEMORY[0x1E69B3D88];
      if (!os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }

      *buf = 0;
      v47 = "Missing inputAlignmentExtent";
    }

    _os_log_error_impl(&dword_1C7694000, v46, OS_LOG_TYPE_ERROR, v47, buf, 2u);
    goto LABEL_54;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
  }

  v41 = *MEMORY[0x1E69B3D88];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Missing inputImage", buf, 2u);
  }

  v36 = 0;
LABEL_65:

  return v36;
}

+ (BOOL)_debugDumpIntermediateImages
{
  globalSettings = [MEMORY[0x1E69B3AB0] globalSettings];
  v3 = [globalSettings BOOLSettingForKey:@"PI_LONG_EXPOSURE_DUMP_INTERMEDIATES" defaultValue:&__block_literal_global_24];

  return v3;
}

+ (BOOL)debugDumpIntermediateImages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__PILongExposureFusion_debugDumpIntermediateImages__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (debugDumpIntermediateImages_onceToken != -1)
  {
    dispatch_once(&debugDumpIntermediateImages_onceToken, block);
  }

  return debugDumpIntermediateImages_s_debugDumpIntermediateImages;
}

uint64_t __51__PILongExposureFusion_debugDumpIntermediateImages__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _debugDumpIntermediateImages];
  debugDumpIntermediateImages_s_debugDumpIntermediateImages = result;
  return result;
}

+ (void)loadFusionTuningParameters
{
  v33 = *MEMORY[0x1E69E9840];
  globalSettings = [MEMORY[0x1E69B3AB0] globalSettings];
  v3 = [globalSettings stringSettingForKey:@"PI_LONG_EXPOSURE_FUSION_PARAMS" defaultValue:&__block_literal_global_23037];

  if (v3)
  {
    v4 = MEMORY[0x1E69B3D78];
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
    }

    v5 = MEMORY[0x1E69B3D88];
    v6 = *MEMORY[0x1E69B3D88];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D88], OS_LOG_TYPE_INFO))
    {
      v25 = 138412290;
      *v26 = v3;
      _os_log_impl(&dword_1C7694000, v6, OS_LOG_TYPE_INFO, "Loading long-exposure fusion tuning parameters from file: %@", &v25, 0xCu);
    }

    v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v3];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectForKeyedSubscript:@"kNCCBlurHalfSize"];

      if (v9)
      {
        v10 = [v8 objectForKeyedSubscript:@"kNCCBlurHalfSize"];
        kNCCBlurHalfSize = [v10 intValue];
      }

      v11 = [v8 objectForKeyedSubscript:@"kNCCEdge0"];

      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"kNCCEdge0"];
        [v12 floatValue];
        kNCCEdge0 = v13;
      }

      v14 = [v8 objectForKeyedSubscript:@"kNCCEdge1"];

      if (v14)
      {
        v15 = [v8 objectForKeyedSubscript:@"kNCCEdge1"];
        [v15 floatValue];
        kNCCEdge1 = v16;
      }

      v17 = [v8 objectForKeyedSubscript:@"kBlendMaskThreshold0"];

      if (v17)
      {
        v18 = [v8 objectForKeyedSubscript:@"kBlendMaskThreshold0"];
        [v18 floatValue];
        kBlendMaskThreshold0 = v19;
      }

      v20 = [v8 objectForKeyedSubscript:@"kBlendMaskThreshold1"];

      if (v20)
      {
        v21 = [v8 objectForKeyedSubscript:@"kBlendMaskThreshold1"];
        [v21 floatValue];
        kBlendMaskThreshold1 = v22;
      }
    }

    else
    {
      if (*v4 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
      }

      v23 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Failed to load fusion tuning parameters.", &v25, 2u);
      }
    }

    if (*v4 != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_118_22987);
    }

    v24 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      v25 = 67110144;
      *v26 = kNCCBlurHalfSize;
      *&v26[4] = 2048;
      *&v26[6] = *&kNCCEdge0;
      v27 = 2048;
      v28 = *&kNCCEdge1;
      v29 = 2048;
      v30 = *&kBlendMaskThreshold0;
      v31 = 2048;
      v32 = *&kBlendMaskThreshold1;
      _os_log_impl(&dword_1C7694000, v24, OS_LOG_TYPE_INFO, "Using fusion tuning parameters: {kNCCBlurHalfSize=%d, kNCCEdge0=%f, kNCCEdge1=%f, kBlendMaskThreshold0=%f, kBlendMaskThreshold1=%f}", &v25, 0x30u);
    }
  }
}

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__PILongExposureFusion_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken_23061 != -1)
  {
    dispatch_once(&initialize_onceToken_23061, block);
  }
}

@end