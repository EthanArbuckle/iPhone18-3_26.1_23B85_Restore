@interface PIApertureRedEyeFilter
- (id)outputImage;
@end

@implementation PIApertureRedEyeFilter

- (id)outputImage
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F140]);
  [(CIImage *)self->inputImage extent];
  v48 = v5;
  v49 = v4;
  v46 = v7;
  v47 = v6;
  v50 = self;
  v8 = [(CIImage *)self->inputImage imageByColorMatchingWorkingSpaceToColorSpace:v3];
  v9 = [v8 imageByClampingToExtent];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v50->inputSpots;
  v10 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v10)
  {
    v52 = *v57;
    v11 = *MEMORY[0x1E695FA70];
    v12 = *MEMORY[0x1E695FB10];
    while (2)
    {
      v13 = 0;
      v14 = v9;
      do
      {
        if (*v57 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v56 + 1) + 8 * v13);
        v16 = [v15 objectForKey:v11];
        [v16 pointValue];
        v18 = v17;
        v20 = v19;

        v21 = [v15 objectForKey:v12];
        [v21 floatValue];
        v23 = v22;

        v24 = [v15 objectForKey:@"inputSensitivity"];
        [v24 doubleValue];
        v26 = v25;

        v54 = 0u;
        v55 = 0u;
        [PIApertureRedEyeProcessorKernel ROIForCenterPoint:v18 radius:v20, v23];
        v63[0] = @"ROI";
        v27 = MEMORY[0x1E695F688];
        *buf = v54;
        v62 = v55;
        NUPixelRectToCGRect();
        v28 = [v27 vectorWithCGRect:?];
        v63[1] = @"Sensitivity";
        v64[0] = v28;
        v29 = [MEMORY[0x1E696AD98] numberWithDouble:{fmax(fmin(v26 * 0.1 + 0.5, 1.0), 0.0)}];
        v64[1] = v29;
        v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];

        *buf = v54;
        v62 = v55;
        NUPixelRectToCGRect();
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v60 = v14;
        v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v60 count:1];
        v53 = 0;
        v40 = [(CIImageProcessorKernel *)PIApertureRedEyeProcessorKernel applyWithExtent:v39 inputs:v30 arguments:&v53 error:v32, v34, v36, v38];
        v41 = v53;

        if (!v40)
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_59);
          }

          v43 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v41;
            _os_log_error_impl(&dword_1C7694000, v43, OS_LOG_TYPE_ERROR, "Failed to apply red eye repair. error: %{public}@", buf, 0xCu);
          }

          v42 = v50->inputImage;
          goto LABEL_15;
        }

        v9 = [v40 imageByCompositingOverImage:v14];

        ++v13;
        v14 = v9;
      }

      while (v10 != v13);
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v56 objects:v65 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = [v9 imageByCroppingToRect:{v49, v48, v47, v46}];

  v42 = [v14 imageByColorMatchingColorSpaceToWorkingSpace:v3];
LABEL_15:
  v44 = v42;

  CGColorSpaceRelease(v3);

  return v44;
}

@end