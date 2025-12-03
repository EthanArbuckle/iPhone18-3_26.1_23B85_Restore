@interface PIPortraitEffectFilter
+ (id)remapPortraitV2Strength:(id)strength portraitEffectKind:(id)kind;
- (id)outputImage;
@end

@implementation PIPortraitEffectFilter

+ (id)remapPortraitV2Strength:(id)strength portraitEffectKind:(id)kind
{
  strengthCopy = strength;
  kindCopy = kind;
  if (strengthCopy)
  {
    [strengthCopy doubleValue];
    v8 = v7;
  }

  else
  {
    v8 = 0.5;
  }

  if (([kindCopy isEqualToString:@"StudioV2"] & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"StageWhite"))
  {
    v9 = MEMORY[0x1E696AD98];
    v10 = pow(v8, 0.75);
    v11 = v9;
  }

  else if (([kindCopy isEqualToString:@"ContourV2"] & 1) != 0 || (objc_msgSend(kindCopy, "isEqualToString:", @"StageV2") & 1) != 0 || objc_msgSend(kindCopy, "isEqualToString:", @"StageMonoV2"))
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
  inputImage = [(PIPortraitEffectFilter *)self inputImage];

  if (!inputImage)
  {
    imageByInsertingIntermediate = 0;
    goto LABEL_14;
  }

  inputVersion = [(PIPortraitEffectFilter *)self inputVersion];
  intValue = [inputVersion intValue];

  inputKind = [(PIPortraitEffectFilter *)self inputKind];
  if (!inputKind)
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
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v54 = v46;
        v55 = 2114;
        v56 = v50;
        _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v54 = v45;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v7 = inputKind;
  v8 = [@"CIPortraitEffect" stringByAppendingString:inputKind];
  v9 = [MEMORY[0x1E695F648] filterWithName:v8];
  inputFaceLandmarkArray = [(PIPortraitEffectFilter *)self inputFaceLandmarkArray];
  [v9 setValue:inputFaceLandmarkArray forKey:@"inputFaceLandmarkArray"];

  inputImage2 = [(PIPortraitEffectFilter *)self inputImage];
  [v9 setValue:inputImage2 forKey:*MEMORY[0x1E695FAB0]];

  inputScale = [(PIPortraitEffectFilter *)self inputScale];
  [v9 setValue:inputScale forKey:*MEMORY[0x1E695FB20]];

  if (intValue != 2)
  {
    if (([v7 isEqualToString:@"Black"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"BlackoutMono"))
    {
      inputDisparity = [(PIPortraitEffectFilter *)self inputDisparity];
      [v9 setValue:inputDisparity forKey:@"inputDisparity"];

      inputFullSizeImage = [(PIPortraitEffectFilter *)self inputFullSizeImage];
      [v9 setValue:inputFullSizeImage forKey:@"inputFullSizeImage"];

      inputMatte = [(PIPortraitEffectFilter *)self inputMatte];
      v23 = @"inputMatte";
    }

    else
    {
      if ([v7 isEqualToString:@"Light"])
      {
        goto LABEL_11;
      }

      inputBlurMap = [(PIPortraitEffectFilter *)self inputBlurMap];
      inputMatte = [inputBlurMap imageByApplyingFilter:@"CIGammaAdjust" withInputParameters:&unk_1F47201D0];

      v23 = @"inputDepthMap";
    }

LABEL_10:
    [v9 setValue:inputMatte forKey:v23];

LABEL_11:
    outputImage = [v9 outputImage];
    imageByInsertingIntermediate = [outputImage imageByInsertingIntermediate];
    goto LABEL_12;
  }

  inputDisparity2 = [(PIPortraitEffectFilter *)self inputDisparity];
  [v9 setValue:inputDisparity2 forKey:@"inputDisparity"];

  inputMatte2 = [(PIPortraitEffectFilter *)self inputMatte];
  [v9 setValue:inputMatte2 forKey:@"inputMatte"];

  inputBlurMap2 = [(PIPortraitEffectFilter *)self inputBlurMap];
  [v9 setValue:inputBlurMap2 forKey:@"inputBlurMap"];

  inputFaceMask = [(PIPortraitEffectFilter *)self inputFaceMask];
  [v9 setValue:inputFaceMask forKey:@"inputFaceMask"];

  inputHairMask = [(PIPortraitEffectFilter *)self inputHairMask];
  [v9 setValue:inputHairMask forKey:@"inputHairMask"];

  inputTeethMask = [(PIPortraitEffectFilter *)self inputTeethMask];
  [v9 setValue:inputTeethMask forKey:@"inputTeethMask"];

  inputGenerateSpillMatte = [(PIPortraitEffectFilter *)self inputGenerateSpillMatte];
  [v9 setValue:inputGenerateSpillMatte forKey:@"inputGenerateSpillMatte"];

  inputOneShot = [(PIPortraitEffectFilter *)self inputOneShot];
  bOOLValue = [inputOneShot BOOLValue];

  if (bOOLValue)
  {
    inputMatte = [(PIPortraitEffectFilter *)self inputStrength];
    v23 = @"inputStrength";
    goto LABEL_10;
  }

  [v9 setValue:&unk_1F471F790 forKey:@"inputStrength"];
  outputImage2 = [v9 outputImage];
  outputImage = [outputImage2 imageByInsertingIntermediate];

  [v9 setValue:&unk_1F471F770 forKey:@"inputStrength"];
  outputImage3 = [v9 outputImage];
  imageByInsertingIntermediate2 = [outputImage3 imageByInsertingIntermediate];

  if (!outputImage || !imageByInsertingIntermediate2)
  {

    imageByInsertingIntermediate = 0;
    goto LABEL_13;
  }

  v32 = objc_opt_class();
  inputStrength = [(PIPortraitEffectFilter *)self inputStrength];
  v34 = [v32 remapPortraitV2Strength:inputStrength portraitEffectKind:v7];

  v35 = *MEMORY[0x1E695FA30];
  v51[0] = *MEMORY[0x1E695FA48];
  v51[1] = v35;
  v52[0] = outputImage;
  v52[1] = v34;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:2];
  imageByInsertingIntermediate = [imageByInsertingIntermediate2 imageByApplyingFilter:@"CIMix" withInputParameters:v36];

LABEL_12:
LABEL_13:

LABEL_14:

  return imageByInsertingIntermediate;
}

@end