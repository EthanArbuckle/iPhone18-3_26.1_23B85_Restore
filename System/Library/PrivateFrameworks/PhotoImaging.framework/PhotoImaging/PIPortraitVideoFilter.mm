@interface PIPortraitVideoFilter
- (id)outputImage;
@end

@implementation PIPortraitVideoFilter

- (id)outputImage
{
  v58[3] = *MEMORY[0x1E69E9840];
  v3 = [(PIPortraitVideoFilter *)self inputGlobalRenderingMetadata];
  v4 = [v3 renderingVersion];

  if (v4 == 1)
  {
    v5 = objc_opt_class();
LABEL_6:
    v48 = v5;
    v8 = 0;
    goto LABEL_10;
  }

  v6 = +[PIGlobalSettings globalSettings];
  v7 = [v6 cinematicAllowRGB10Packed];

  v5 = objc_opt_class();
  if (!v7)
  {
    goto LABEL_6;
  }

  if ([(PIPortraitVideoFilter *)self inputIsHDR])
  {
    [MEMORY[0x1E69B3A10] itur2100HLGColorSpace];
  }

  else
  {
    [MEMORY[0x1E69B3A10] rec709ColorSpace];
  }
  v8 = ;
  v48 = objc_opt_class();
  if (outputImage_once != -1)
  {
    dispatch_once(&outputImage_once, &__block_literal_global_101);
  }

LABEL_10:
  v9 = [(PIPortraitVideoFilter *)self inputImage];
  [MEMORY[0x1E69B3AB0] HLGOpticalScale];
  v11 = v10;
  v49 = v8;
  if (v8)
  {
    if ([v8 isHDR] && v11 > 1.0)
    {
      v57[0] = @"inputRVector";
      v12 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 / v11 Y:0.0 Z:0.0 W:0.0];
      v58[0] = v12;
      v57[1] = @"inputGVector";
      v13 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:4.92610837 / v11 Z:0.0 W:0.0];
      v58[1] = v13;
      v57[2] = @"inputBVector";
      v14 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:4.92610837 / v11 W:0.0];
      v58[2] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      v16 = [v9 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v15];

      v17 = [v8 linearized];
      v18 = [v17 extended];

      v19 = [v16 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v18, "CGColorSpace")}];

      v55[0] = @"inputMinComponents";
      v20 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:0.0 W:0.0];
      v55[1] = @"inputMaxComponents";
      v56[0] = v20;
      v21 = [MEMORY[0x1E695F688] vectorWithX:4.92610837 Y:4.92610837 Z:4.92610837 W:1.0];
      v56[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:2];
      v23 = [v19 imageByApplyingFilter:@"CIColorClamp" withInputParameters:v22];

      v8 = v49;
      v9 = [v23 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v18, "CGColorSpace")}];
    }

    v24 = [v9 imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(v8, "CGColorSpace")}];

    v9 = v24;
  }

  v47 = [(PIPortraitVideoFilter *)self inputDisparityImage];
  v25 = [(PIPortraitVideoFilter *)self inputColorPixelBuffer];
  v26 = [(PIPortraitVideoFilter *)self inputDisparityPixelBuffer];
  v27 = [(PIPortraitVideoFilter *)self inputGlobalRenderingMetadata];
  v46 = [(PIPortraitVideoFilter *)self inputTimedRenderingMetadata];
  v28 = [(PIPortraitVideoFilter *)self inputAperture];
  v29 = [(PIPortraitVideoFilter *)self inputFocusedDisparity];
  v30 = [(PIPortraitVideoFilter *)self inputRenderQuality];
  v31 = [(PIPortraitVideoFilter *)self inputRenderDebugMode];
  v50 = 0;
  LOBYTE(v45) = [(PIPortraitVideoFilter *)self inputIsHDR];
  v32 = [v48 applyWithInputImage:v9 disparityImage:v47 inputPixelBuffer:v25 disparityPixelBuffer:v26 globalMetadata:v27 timedMetadata:v46 aperture:v28 focusedDisparity:v29 quality:v30 debugMode:v31 isHDR:v45 error:&v50];
  v33 = v50;

  v34 = v49;
  if (!v32)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_200);
    }

    v35 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v54 = v33;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Could not apply PIPortraitVideoProcessor: %@", buf, 0xCu);
    }
  }

  if (v49)
  {
    v36 = [v32 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v49, "CGColorSpace")}];

    if ([v49 isHDR] && v11 > 1.0)
    {
      v51[0] = @"inputRVector";
      v37 = v11 / 4.92610837;
      v38 = [MEMORY[0x1E695F688] vectorWithX:v37 Y:0.0 Z:0.0 W:0.0];
      v52[0] = v38;
      v51[1] = @"inputGVector";
      v39 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:v37 Z:0.0 W:0.0];
      v52[1] = v39;
      v51[2] = @"inputBVector";
      v40 = [MEMORY[0x1E695F688] vectorWithX:0.0 Y:0.0 Z:v37 W:0.0];
      v52[2] = v40;
      v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
      v42 = [v36 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:v41];

      v34 = v49;
      v43 = [MEMORY[0x1E69B3A10] workingColorSpace];
      v32 = [v42 imageByTaggingWithColorSpace:{objc_msgSend(v43, "CGColorSpace")}];
    }

    else
    {
      v32 = v36;
    }
  }

  return v32;
}

@end