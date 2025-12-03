@interface PIPhotoEffect3DFilter
- (id)outputImage;
@end

@implementation PIPhotoEffect3DFilter

- (id)outputImage
{
  v40 = *MEMORY[0x1E69E9840];
  inputImage = [(PIPhotoEffect3DFilter *)self inputImage];

  if (inputImage)
  {
    inputKind = [(PIPhotoEffect3DFilter *)self inputKind];
    if (!inputKind)
    {
      v21 = NUAssertLogger_16450();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing photo effect kind"];
        *buf = 138543362;
        v37 = v22;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v23 = MEMORY[0x1E69B38E8];
      specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v25 = NUAssertLogger_16450();
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v26)
        {
          v29 = dispatch_get_specific(*v23);
          v30 = MEMORY[0x1E696AF00];
          v31 = v29;
          callStackSymbols = [v30 callStackSymbols];
          v33 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v37 = v29;
          v38 = 2114;
          v39 = v33;
          _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v26)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v37 = v28;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler();
    }

    v5 = inputKind;
    v6 = [@"CIPhotoEffect" stringByAppendingString:inputKind];
    inputIsHDR = [(PIPhotoEffect3DFilter *)self inputIsHDR];
    bOOLValue = [inputIsHDR BOOLValue];

    if (bOOLValue)
    {
      v9 = [PIPhotosPipelineHDRFilters HDRFilterForSDRFilter:v6];

      v6 = v9;
    }

    v10 = [MEMORY[0x1E695F648] filterWithName:v6];
    inputImage2 = [(PIPhotoEffect3DFilter *)self inputImage];
    [v10 setValue:inputImage2 forKey:*MEMORY[0x1E695FAB0]];

    [v10 setValue:&unk_1F471F7A0 forKey:@"inputThreshold"];
    inputBlurMap = [(PIPhotoEffect3DFilter *)self inputBlurMap];
    v13 = [inputBlurMap imageByApplyingFilter:@"CIGammaAdjust" withInputParameters:&unk_1F47201F8];

    [v10 setValue:v13 forKey:@"inputDepthMap"];
    outputImage = [v10 outputImage];
    inputIntensity = [(PIPhotoEffect3DFilter *)self inputIntensity];

    if (inputIntensity)
    {
      inputImage3 = [(PIPhotoEffect3DFilter *)self inputImage];
      v35[0] = inputImage3;
      v34[1] = *MEMORY[0x1E695FA30];
      inputIntensity2 = [(PIPhotoEffect3DFilter *)self inputIntensity];
      v35[1] = inputIntensity2;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
      v19 = [outputImage imageByApplyingFilter:@"CIMix" withInputParameters:v18];

      outputImage = v19;
    }
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

@end