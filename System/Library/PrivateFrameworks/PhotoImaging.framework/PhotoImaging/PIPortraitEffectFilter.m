@interface PIPortraitEffectFilter
+ (id)remapPortraitV2Strength:(id)a3 portraitEffectKind:(id)a4;
- (id)outputImage;
@end

@implementation PIPortraitEffectFilter

+ (id)remapPortraitV2Strength:(id)a3 portraitEffectKind:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    [v5 doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.5;
  }

  if (([v6 isEqualToString:@"StudioV2"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"StageWhite"))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = pow(v8, 0.75);
    v11 = v9;
  }

  else if (([v6 isEqualToString:@"ContourV2"] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", @"StageV2") & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"StageMonoV2"))
  {
    v11 = MEMORY[0x1E696AD98];
    v10 = v8 * 1.8 + v8 * v8 * -0.8;
  }

  else
  {
    v11 = MEMORY[0x1E696AD98];
    v10 = v8;
  }

  v12 = [v11 numberWithDouble:v10];

  return v12;
}

- (id)outputImage
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = [(PIPortraitEffectFilter *)self inputImage];

  if (!v3)
  {
    v24 = 0;
    goto LABEL_14;
  }

  v4 = [(PIPortraitEffectFilter *)self inputVersion];
  v5 = [v4 intValue];

  v6 = [(PIPortraitEffectFilter *)self inputKind];
  if (!v6)
  {
    v38 = NUAssertLogger_16450();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing portrait effect kind"];
      *buf = 138543362;
      v54 = v39;
      _os_log_error_impl(&dword_1C7694000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v42 = NUAssertLogger_16450();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v43)
      {
        v46 = dispatch_get_specific(*v40);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        v49 = [v47 callStackSymbols];
        v50 = [v49 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v46;
        v55 = 2114;
        v56 = v50;
        _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      v44 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [v44 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v45;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [@"CIPortraitEffect" stringByAppendingString:v6];
  v9 = [MEMORY[0x1E695F648] filterWithName:v8];
  v10 = [(PIPortraitEffectFilter *)self inputFaceLandmarkArray];
  [v9 setValue:v10 forKey:@"inputFaceLandmarkArray"];

  v11 = [(PIPortraitEffectFilter *)self inputImage];
  [v9 setValue:v11 forKey:*MEMORY[0x1E695FAB0]];

  v12 = [(PIPortraitEffectFilter *)self inputScale];
  [v9 setValue:v12 forKey:*MEMORY[0x1E695FB20]];

  if (v5 != 2)
  {
    if (([v7 isEqualToString:@"Black"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"BlackoutMono"))
    {
      v25 = [(PIPortraitEffectFilter *)self inputDisparity];
      [v9 setValue:v25 forKey:@"inputDisparity"];

      v26 = [(PIPortraitEffectFilter *)self inputFullSizeImage];
      [v9 setValue:v26 forKey:@"inputFullSizeImage"];

      v22 = [(PIPortraitEffectFilter *)self inputMatte];
      v23 = @"inputMatte";
    }

    else
    {
      if ([v7 isEqualToString:@"Light"])
      {
        goto LABEL_11;
      }

      v37 = [(PIPortraitEffectFilter *)self inputBlurMap];
      v22 = [v37 imageByApplyingFilter:@"CIGammaAdjust" withInputParameters:&unk_1F47201D0];

      v23 = @"inputDepthMap";
    }

LABEL_10:
    [v9 setValue:v22 forKey:v23];

LABEL_11:
    v27 = [v9 outputImage];
    v24 = [v27 imageByInsertingIntermediate];
    goto LABEL_12;
  }

  v13 = [(PIPortraitEffectFilter *)self inputDisparity];
  [v9 setValue:v13 forKey:@"inputDisparity"];

  v14 = [(PIPortraitEffectFilter *)self inputMatte];
  [v9 setValue:v14 forKey:@"inputMatte"];

  v15 = [(PIPortraitEffectFilter *)self inputBlurMap];
  [v9 setValue:v15 forKey:@"inputBlurMap"];

  v16 = [(PIPortraitEffectFilter *)self inputFaceMask];
  [v9 setValue:v16 forKey:@"inputFaceMask"];

  v17 = [(PIPortraitEffectFilter *)self inputHairMask];
  [v9 setValue:v17 forKey:@"inputHairMask"];

  v18 = [(PIPortraitEffectFilter *)self inputTeethMask];
  [v9 setValue:v18 forKey:@"inputTeethMask"];

  v19 = [(PIPortraitEffectFilter *)self inputGenerateSpillMatte];
  [v9 setValue:v19 forKey:@"inputGenerateSpillMatte"];

  v20 = [(PIPortraitEffectFilter *)self inputOneShot];
  v21 = [v20 BOOLValue];

  if (v21)
  {
    v22 = [(PIPortraitEffectFilter *)self inputStrength];
    v23 = @"inputStrength";
    goto LABEL_10;
  }

  [v9 setValue:&unk_1F471F790 forKey:@"inputStrength"];
  v29 = [v9 outputImage];
  v27 = [v29 imageByInsertingIntermediate];

  [v9 setValue:&unk_1F471F770 forKey:@"inputStrength"];
  v30 = [v9 outputImage];
  v31 = [v30 imageByInsertingIntermediate];

  if (!v27 || !v31)
  {

    v24 = 0;
    goto LABEL_13;
  }

  v32 = objc_opt_class();
  v33 = [(PIPortraitEffectFilter *)self inputStrength];
  v34 = [v32 remapPortraitV2Strength:v33 portraitEffectKind:v7];

  v35 = *MEMORY[0x1E695FA30];
  v51[0] = *MEMORY[0x1E695FA48];
  v51[1] = v35;
  v52[0] = v27;
  v52[1] = v34;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v24 = [v31 imageByApplyingFilter:@"CIMix" withInputParameters:v36];

LABEL_12:
LABEL_13:

LABEL_14:

  return v24;
}

@end