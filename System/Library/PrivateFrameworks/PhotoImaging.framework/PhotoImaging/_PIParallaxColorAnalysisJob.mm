@interface _PIParallaxColorAnalysisJob
- ($721907E0E1CDE8B6CD3FA271A8B25860)imageRect;
- (BOOL)_computeAllHistograms:(id *)histograms;
- (BOOL)_waitForRenderResources:(id *)resources;
- (BOOL)complete:(id *)complete;
- (BOOL)prepare:(id *)prepare;
- (BOOL)render:(id *)render;
- (_PIParallaxColorAnalysisJob)initWithParallaxColorAnalysisRequest:(id)request;
- (_PIParallaxColorAnalysisJob)initWithRequest:(id)request;
- (id)_beginRenderNormalizedHueChromaImage:(id)image targetGray:(double)gray grayRange:(double)range chromaMax:(double)max error:(id *)error;
- (id)_beginRenderNormalizedHueChromaImage:(id)image targetHue:(double)hue hueRange:(double)range chromaMin:(double)min error:(id *)error;
- (id)_beginRenderingImage:(id)image colorSpace:(id)space format:(id)format error:(id *)error;
- (id)result;
- (id)scalePolicy;
- (void)_purgeRenderResources;
- (void)setImageRect:(id *)rect;
@end

@implementation _PIParallaxColorAnalysisJob

- (void)setImageRect:(id *)rect
{
  var1 = rect->var1;
  self->_imageRect.origin = rect->var0;
  self->_imageRect.size = var1;
}

- ($721907E0E1CDE8B6CD3FA271A8B25860)imageRect
{
  var0 = self[10].var0;
  retstr->var0 = self[9].var1;
  retstr->var1 = var0;
  return self;
}

- (void)_purgeRenderResources
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_renderResources;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        destination = [v8 destination];

        if (destination)
        {
          storagePool = self->_storagePool;
          destination2 = [v8 destination];
          [(NUPurgeableStoragePool *)storagePool returnStorage:destination2];
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_renderResources removeAllObjects];
}

- (id)result
{
  v3 = objc_alloc_init(_PIParallaxColorAnalysisResult);
  [(_PIParallaxColorAnalysisJob *)self medianLuminance];
  [(_PIParallaxColorAnalysisResult *)v3 setMedianLuminance:?];
  dominantColors = [(_PIParallaxColorAnalysisJob *)self dominantColors];
  [(_PIParallaxColorAnalysisResult *)v3 setDominantColors:dominantColors];

  return v3;
}

- (BOOL)complete:(id *)complete
{
  v46 = *MEMORY[0x1E69E9840];
  if (!complete)
  {
    v21 = NUAssertLogger_5351();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v43 = v22;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v23 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v25 = NUAssertLogger_5351();
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
        v43 = v29;
        v44 = 2114;
        v45 = v33;
        _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v28;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(_PIParallaxColorAnalysisJob *)self _waitForRenderResources:?];
  if (v5)
  {
    v5 = [(_PIParallaxColorAnalysisJob *)self _computeAllHistograms:complete];
    if (v5)
    {
      colorAnalysisRequest = [(_PIParallaxColorAnalysisJob *)self colorAnalysisRequest];
      [(NSMutableArray *)self->_renderResources sortUsingComparator:&__block_literal_global_5358];
      maxDominantColors = [colorAnalysisRequest maxDominantColors];
      alphaCount = [(_PIParallaxColorAnalysisJob *)self alphaCount];
      v35 = colorAnalysisRequest;
      [colorAnalysisRequest dominanceThreshold];
      v10 = v9;
      v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:maxDominantColors];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      obj = self->_renderResources;
      v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = (v10 * alphaCount);
        v15 = *v38;
LABEL_6:
        v16 = 0;
        while (1)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v37 + 1) + 8 * v16);
          imageHistogram = [v17 imageHistogram];
          sampleCount = [imageHistogram sampleCount];

          if (sampleCount < v14)
          {
            break;
          }

          medianColor = [v17 medianColor];
          [v11 addObject:medianColor];

          if ([v11 count] == maxDominantColors)
          {
            break;
          }

          if (v13 == ++v16)
          {
            v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v13)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      [(_PIParallaxColorAnalysisJob *)self setDominantColors:v11];
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)_computeAllHistograms:(id *)histograms
{
  v43 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__5366;
  v40 = __Block_byref_object_dispose__5367;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__5366;
  v34 = __Block_byref_object_dispose__5367;
  v35 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_renderResources;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v4)
  {
    v5 = *v27;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x1E69B3958]);
        [v7 luminanceWeights];
        [v8 setLuminanceWeights:?];
        [v7 luminanceThresholds];
        [v8 setLuminanceThresholds:?];
        destination = [v7 destination];
        v10 = [destination size];
        v12 = v11;

        destination2 = [v7 destination];
        v25[0] = 0;
        v25[1] = 0;
        v25[2] = v10;
        v25[3] = v12;
        v14 = [MEMORY[0x1E69B3C10] regionWithRect:v25];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __53___PIParallaxColorAnalysisJob__computeAllHistograms___block_invoke;
        v21[3] = &unk_1E82AB360;
        v23 = &v30;
        v15 = v8;
        v22 = v15;
        v24 = &v36;
        [destination2 readBufferInRegion:v14 block:v21];

        if (!v31[5])
        {
          v17 = MEMORY[0x1E69B3A48];
          identifier = [v7 identifier];
          *histograms = [v17 errorWithCode:1 reason:@"Failed to compute histogram" object:identifier underlyingError:v37[5]];

          v16 = 0;
          goto LABEL_11;
        }

        [v7 setImageHistogram:?];
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v42 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_11:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v36, 8);

  return v16;
}

- (BOOL)_waitForRenderResources:(id *)resources
{
  v40 = *MEMORY[0x1E69E9840];
  if (!resources)
  {
    v17 = NUAssertLogger_5351();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v37 = v18;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v21 = NUAssertLogger_5351();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v22)
      {
        v25 = dispatch_get_specific(*v19);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v37 = v25;
        v38 = 2114;
        v39 = v29;
        _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v37 = v24;
      _os_log_error_impl(&dword_1C7694000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v4 = self->_renderResources;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        task = [v9 task];
        v30 = 0;
        v11 = [task waitUntilCompletedAndReturnError:&v30];
        v12 = v30;

        if (!v11)
        {
          v14 = MEMORY[0x1E69B3A48];
          identifier = [v9 identifier];
          *resources = [v14 errorWithCode:1 reason:@"Failed to render image" object:identifier underlyingError:v12];

          v13 = 0;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_12:

  return v13;
}

- (id)_beginRenderNormalizedHueChromaImage:(id)image targetGray:(double)gray grayRange:(double)range chromaMax:(double)max error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v25 = NUAssertLogger_5351();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "hueChromaImage != nil"];
      *buf = 138543362;
      v50 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_5351();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v38 = dispatch_get_specific(*callStackSymbols);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v41;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v35 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!error)
  {
    v32 = NUAssertLogger_5351();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_5351();
    v35 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v37;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v35)
    {
      v42 = dispatch_get_specific(*callStackSymbols);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      callStackSymbols4 = [v43 callStackSymbols];
      v46 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v42;
      v51 = 2114;
      v52 = v46;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v13 = imageCopy;
  v47[0] = @"inputLumaTarget";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:gray];
  v48[0] = v14;
  v47[1] = @"inputLumaRange";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:range];
  v48[1] = v15;
  v47[2] = @"inputChromaMax";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:max];
  v48[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
  v18 = [v13 imageByApplyingFilter:@"PIIPTHueChromaGrayFilter" withInputParameters:v17];

  if (v18)
  {
    v19 = [PIIPTHueChromaFilter denormalizeHueChromaImage:v18];

    v20 = [PIIPTHueChromaFilter convertHueChromaImageToRGB:v19];
    sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
    bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
    v23 = [(_PIParallaxColorAnalysisJob *)self _beginRenderingImage:v20 colorSpace:sRGBColorSpace format:bGRA8 error:error];
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to produce filtered Hue/Chroma image" object:0];
    *error = v23 = 0;
  }

  return v23;
}

- (id)_beginRenderNormalizedHueChromaImage:(id)image targetHue:(double)hue hueRange:(double)range chromaMin:(double)min error:(id *)error
{
  v53 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (!imageCopy)
  {
    v25 = NUAssertLogger_5351();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "hueChromaImage != nil"];
      *buf = 138543362;
      v50 = v26;
      _os_log_error_impl(&dword_1C7694000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_5351();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v38 = dispatch_get_specific(*callStackSymbols);
        v39 = MEMORY[0x1E696AF00];
        v40 = v38;
        callStackSymbols = [v39 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v50 = v38;
        v51 = 2114;
        v52 = v41;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v50 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v35 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  if (!error)
  {
    v32 = NUAssertLogger_5351();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v50 = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v34 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v29 = NUAssertLogger_5351();
    v35 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (!v34)
    {
      if (v35)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v50 = v37;
        _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v35)
    {
      v42 = dispatch_get_specific(*callStackSymbols);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      callStackSymbols4 = [v43 callStackSymbols];
      v46 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v50 = v42;
      v51 = 2114;
      v52 = v46;
      _os_log_error_impl(&dword_1C7694000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v13 = imageCopy;
  v47[0] = @"inputHueTarget";
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:hue];
  v48[0] = v14;
  v47[1] = @"inputHueRange";
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:range];
  v48[1] = v15;
  v47[2] = @"inputChromaMin";
  v16 = [MEMORY[0x1E696AD98] numberWithDouble:min];
  v47[3] = @"inputHueIsNormalized";
  v48[2] = v16;
  v48[3] = MEMORY[0x1E695E118];
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:4];
  v18 = [v13 imageByApplyingFilter:@"PIIPTHueChromaColorFilter" withInputParameters:v17];

  if (v18)
  {
    v19 = [PIIPTHueChromaFilter denormalizeHueChromaImage:v18];

    v20 = [PIIPTHueChromaFilter convertHueChromaImageToRGB:v19];
    sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
    bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
    v23 = [(_PIParallaxColorAnalysisJob *)self _beginRenderingImage:v20 colorSpace:sRGBColorSpace format:bGRA8 error:error];
  }

  else
  {
    [MEMORY[0x1E69B3A48] failureError:@"Failed to produce filtered Hue/Chroma image" object:0];
    *error = v23 = 0;
  }

  return v23;
}

- (id)_beginRenderingImage:(id)image colorSpace:(id)space format:(id)format error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  spaceCopy = space;
  formatCopy = format;
  if (!error)
  {
    v24 = NUAssertLogger_5351();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v25;
      _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5351();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v29)
      {
        v37 = dispatch_get_specific(*callStackSymbols);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v37;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v34 = _NUAssertFailHandler();
    goto LABEL_22;
  }

  v13 = formatCopy;
  memset(buf, 0, 32);
  [(_PIParallaxColorAnalysisJob *)self imageRect];
  v46[0] = 0;
  v46[1] = 0;
  v46[2] = [(NURenderJob *)self imageSize];
  v46[3] = v14;
  NUPixelRectFlipYOrigin();
  v15 = [(NUPurgeableStoragePool *)self->_storagePool newStorageWithSize:0 format:v13];
  if (!v15)
  {
    v31 = NUAssertLogger_5351();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage allocated"];
      *v47 = 138543362;
      *&v47[4] = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v47, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v33 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v28 = NUAssertLogger_5351();
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!v33)
    {
      if (v34)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v36 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v47 = 138543362;
        *&v47[4] = v36;
        _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v47, 0xCu);
      }

      goto LABEL_24;
    }

LABEL_22:
    if (v34)
    {
      v41 = dispatch_get_specific(*callStackSymbols);
      v42 = MEMORY[0x1E696AF00];
      v43 = v41;
      callStackSymbols4 = [v42 callStackSymbols];
      v45 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v47 = 138543618;
      *&v47[4] = v41;
      *&v47[12] = 2114;
      *&v47[14] = v45;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v47, 0x16u);
    }

LABEL_24:

    _NUAssertFailHandler();
  }

  v16 = v15;
  imageByPremultiplyingAlpha = [imageCopy imageByPremultiplyingAlpha];
  v46[0] = 2;
  *v47 = *buf;
  *&v47[16] = *&buf[16];
  v18 = [MEMORY[0x1E69B3C10] regionWithRect:v47];
  imageSize = [(NURenderJob *)self imageSize];
  error = [(NURenderJob *)self renderImage:imageByPremultiplyingAlpha into:v16 colorSpace:spaceCopy roi:v18 imageSize:imageSize alpha:v20 error:v46, error];

  if (error)
  {
    v22 = objc_alloc_init(_PIParallaxRenderResource);
    [(_PIParallaxRenderResource *)v22 setDestination:v16];
    [(_PIParallaxRenderResource *)v22 setTask:error];
    [(_PIParallaxRenderResource *)v22 setImage:imageCopy];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)render:(id *)render
{
  v120 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v100 = NUAssertLogger_5351();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      v101 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v117 = v101;
      _os_log_error_impl(&dword_1C7694000, v100, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    *&v13 = MEMORY[0x1E69B38E8];
    v23 = COERCE_DOUBLE(dispatch_get_specific(*MEMORY[0x1E69B38E8]));
    v22 = NUAssertLogger_5351();
    v102 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v23 == 0.0)
    {
      if (v102)
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v23 componentsJoinedByString:@"\n"];
        *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543362;
        v117 = *&v13;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }
    }

    else if (v102)
    {
      v23 = COERCE_DOUBLE(dispatch_get_specific(*v13));
      v106 = MEMORY[0x1E696AF00];
      renderCopy = *&v23;
      [v106 callStackSymbols];
      *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      selfCopy = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v117 = v23;
      v118 = 2114;
      v119 = selfCopy;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    v108 = "error != NULL";
    v105 = _NUAssertFailHandler();
    goto LABEL_55;
  }

  renderCopy = render;
  selfCopy = self;
  colorAnalysisRequest = [(_PIParallaxColorAnalysisJob *)self colorAnalysisRequest];
  bGRA8 = [MEMORY[0x1E69B3BF0] BGRA8];
  sRGBLinearColorSpace = [MEMORY[0x1E69B3A10] sRGBLinearColorSpace];
  mEMORY[0x1E69B3A58] = [MEMORY[0x1E69B3A58] sharedFactory];
  surfaceStoragePool = [mEMORY[0x1E69B3A58] surfaceStoragePool];
  v11 = *(selfCopy + 240);
  *(selfCopy + 240) = surfaceStoragePool;

  if (!*(selfCopy + 240))
  {
    v103 = NUAssertLogger_5351();
    renderCopy = &qword_1C7845000;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"No storage pool"];
      v104 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138543362;
      v117 = v104;
      _os_log_error_impl(&dword_1C7694000, v103, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    *&v13 = MEMORY[0x1E69B38E8];
    v23 = COERCE_DOUBLE(dispatch_get_specific(*MEMORY[0x1E69B38E8]));
    v22 = NUAssertLogger_5351();
    v105 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v23 == 0.0)
    {
      if (v105)
      {
        [MEMORY[0x1E696AF00] callStackSymbols];
        v23 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        [*&v23 componentsJoinedByString:@"\n"];
        *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        *buf = 138543362;
        v117 = *&v13;
        _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_57:

      _NUAssertFailHandler();
LABEL_58:
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_326_5436);
LABEL_7:
      v110 = sRGBLinearColorSpace;
      v24 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v25 = v24;
        [selfCopy medianLuminance];
        *buf = 134217984;
        v117 = v26;
        _os_log_impl(&dword_1C7694000, v25, OS_LOG_TYPE_DEFAULT, "Median luminance: %f", buf, 0xCu);
      }

      maxDominantColors = [colorAnalysisRequest maxDominantColors];
      imageHistogram = [v6 imageHistogram];
      blue = [imageHistogram blue];

      v109 = blue;
      [blue threshold:?];
      v31 = v30;
      if (**&v23 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_326_5436);
      }

      v32 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v117 = v31 * 100.0;
        v118 = 2048;
        v119 = maxDominantColors;
        _os_log_impl(&dword_1C7694000, v32, OS_LOG_TYPE_DEFAULT, "Percent above chroma min: %0.0f%%, max hues: %ld", buf, 0x16u);
      }

      v112 = colorAnalysisRequest;
      if (v31 >= 0.25 && maxDominantColors >= 1)
      {
        imageHistogram2 = [v6 imageHistogram];
        luminance = [imageHistogram2 luminance];
        v35 = [luminance mutableCopy];

        [v35 smoothWithFunction:1 windowSize:11 sampleMode:3];
        v36 = [v35 modalityAnalysisWithLimit:maxDominantColors sampleMode:3];
        [selfCopy setDominantHues:v36];

        if (**&v23 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_326_5436);
        }

        v37 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
        {
          v38 = v37;
          dominantHues = [selfCopy dominantHues];
          *&v39 = COERCE_DOUBLE([dominantHues count]);
          dominantHues2 = [selfCopy dominantHues];
          *buf = 134218242;
          v117 = *&v39;
          v118 = 2112;
          v119 = dominantHues2;
          v41 = v38;
          v23 = MEMORY[0x1E69B3D78];
          _os_log_impl(&dword_1C7694000, v41, OS_LOG_TYPE_DEFAULT, "Found %ld dominant hues: %@", buf, 0x16u);
        }
      }

      if (v31 <= 0.75 && maxDominantColors >= 1)
      {
        v42 = [v22 mutableCopy];
        [v42 smoothWithFunction:1 windowSize:13 sampleMode:1];
        v43 = [v42 modalityAnalysisWithLimit:maxDominantColors sampleMode:1];
        [selfCopy setDominantGrays:v43];

        if (**&v23 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_326_5436);
        }

        v44 = *MEMORY[0x1E69B3D80];
        if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
        {
          v45 = v44;
          dominantGrays = [selfCopy dominantGrays];
          *&v47 = COERCE_DOUBLE([dominantGrays count]);
          dominantGrays2 = [selfCopy dominantGrays];
          *buf = 134218242;
          v117 = *&v47;
          v118 = 2112;
          v119 = dominantGrays2;
          _os_log_impl(&dword_1C7694000, v45, OS_LOG_TYPE_DEFAULT, "Found %ld dominant grays: %@", buf, 0x16u);
        }
      }

      [selfCopy _purgeRenderResources];
      dominantHues3 = [selfCopy dominantHues];
      v50 = [dominantHues3 count];

      if (v50)
      {
        v51 = 0;
        v52 = *(MEMORY[0x1E69B3928] + 4);
        v114 = *MEMORY[0x1E69B3928];
        v53 = *(MEMORY[0x1E69B3928] + 8);
        v54 = *(MEMORY[0x1E69B3928] + 12);
        v55 = *MEMORY[0x1E69B3948];
        v56 = *(MEMORY[0x1E69B3948] + 4);
        v57 = *(MEMORY[0x1E69B3948] + 8);
        v58 = *(MEMORY[0x1E69B3948] + 12);
        while (1)
        {
          dominantHues4 = [selfCopy dominantHues];
          v60 = [dominantHues4 objectAtIndexedSubscript:v51];

          hueChromaImage = [selfCopy hueChromaImage];
          [v60 doubleValue];
          v62 = [selfCopy _beginRenderNormalizedHueChromaImage:hueChromaImage targetHue:renderCopy hueRange:? chromaMin:? error:?];

          if (!v62)
          {
            break;
          }

          v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"hue-%ld", ++v51];
          [v62 setIdentifier:v63];

          LODWORD(v64) = v114;
          LODWORD(v65) = v52;
          LODWORD(v66) = v53;
          LODWORD(v67) = v54;
          [v62 setLuminanceWeights:{v64, v65, v66, v67}];
          LODWORD(v68) = v55;
          LODWORD(v69) = v56;
          LODWORD(v70) = v57;
          LODWORD(v71) = v58;
          [v62 setLuminanceThresholds:{v68, v69, v70, v71}];
          [*(selfCopy + v13) addObject:v62];

          dominantHues5 = [selfCopy dominantHues];
          v73 = [dominantHues5 count];

          v6 = v62;
          if (v51 >= v73)
          {
            goto LABEL_35;
          }
        }
      }

      else
      {
        v62 = v6;
LABEL_35:
        dominantGrays3 = [selfCopy dominantGrays];
        v77 = [dominantGrays3 count];

        if (!v77)
        {
LABEL_39:
          v74 = 1;
LABEL_41:
          bGRA8 = v111;
          colorAnalysisRequest = v112;

          v6 = v62;
          sRGBLinearColorSpace = v110;
          goto LABEL_33;
        }

        v78 = 0;
        v79 = *(MEMORY[0x1E69B3928] + 4);
        v115 = *MEMORY[0x1E69B3928];
        v80 = *(MEMORY[0x1E69B3928] + 8);
        v81 = *(MEMORY[0x1E69B3928] + 12);
        v82 = *MEMORY[0x1E69B3948];
        v83 = *(MEMORY[0x1E69B3948] + 4);
        v85 = *(MEMORY[0x1E69B3948] + 8);
        v84 = *(MEMORY[0x1E69B3948] + 12);
        while (1)
        {
          v86 = v62;
          dominantGrays4 = [selfCopy dominantGrays];
          v60 = [dominantGrays4 objectAtIndexedSubscript:v78];

          hueChromaImage2 = [selfCopy hueChromaImage];
          [v60 doubleValue];
          v62 = [selfCopy _beginRenderNormalizedHueChromaImage:hueChromaImage2 targetGray:renderCopy grayRange:? chromaMax:? error:?];

          if (!v62)
          {
            break;
          }

          v89 = [MEMORY[0x1E696AEC0] stringWithFormat:@"gray-%ld", ++v78];
          [v62 setIdentifier:v89];

          LODWORD(v90) = v115;
          LODWORD(v91) = v79;
          LODWORD(v92) = v80;
          LODWORD(v93) = v81;
          [v62 setLuminanceWeights:{v90, v91, v92, v93}];
          LODWORD(v94) = v82;
          LODWORD(v95) = v83;
          LODWORD(v96) = v85;
          LODWORD(v97) = v84;
          [v62 setLuminanceThresholds:{v94, v95, v96, v97}];
          [*(selfCopy + v13) addObject:v62];

          dominantGrays5 = [selfCopy dominantGrays];
          v99 = [dominantGrays5 count];

          if (v78 >= v99)
          {
            goto LABEL_39;
          }
        }
      }

      v62 = 0;
      v74 = 0;
      goto LABEL_41;
    }

LABEL_55:
    if (v105)
    {
      v23 = COERCE_DOUBLE(dispatch_get_specific(*v13));
      v107 = MEMORY[0x1E696AF00];
      renderCopy = *&v23;
      [v107 callStackSymbols];
      *&v13 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      selfCopy = [v13 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v117 = v23;
      v118 = 2114;
      v119 = selfCopy;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_57;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 248;
  v14 = *(selfCopy + 248);
  *(selfCopy + 248) = v12;

  [colorAnalysisRequest chromaThreshold];
  v16 = v15;
  hueChromaImage3 = [selfCopy hueChromaImage];
  v6 = [selfCopy _beginRenderingImage:hueChromaImage3 colorSpace:sRGBLinearColorSpace format:bGRA8 error:renderCopy];

  if (v6)
  {
    v19 = v16;
    LODWORD(v18) = 1.0;
    [v6 setLuminanceWeights:{0.0, v18, 0.0, 0.0}];
    *&v20 = v19;
    [v6 setLuminanceThresholds:{0.0, 0.0, v20, 0.0}];
    [*(selfCopy + 248) addObject:v6];
    if ([selfCopy _waitForRenderResources:renderCopy])
    {
      if ([selfCopy _computeAllHistograms:renderCopy])
      {
        v111 = bGRA8;
        imageHistogram3 = [v6 imageHistogram];
        v22 = [imageHistogram3 red];

        [selfCopy setAlphaCount:{-[NSObject sampleCount](v22, "sampleCount")}];
        [v22 median];
        [selfCopy setMedianLuminance:?];
        v23 = MEMORY[0x1E69B3D78];
        if (*MEMORY[0x1E69B3D78] == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_58;
      }
    }
  }

  v74 = 0;
LABEL_33:

  return v74;
}

- (BOOL)prepare:(id *)prepare
{
  v43 = *MEMORY[0x1E69E9840];
  if (!prepare)
  {
    v27 = NUAssertLogger_5351();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v28;
      _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v29 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v31 = NUAssertLogger_5351();
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v32)
      {
        v35 = dispatch_get_specific(*v29);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        callStackSymbols = [v36 callStackSymbols];
        v39 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v35;
        *&buf[12] = 2114;
        *&buf[14] = v39;
        _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v32)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v34 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v40.receiver = self;
  v40.super_class = _PIParallaxColorAnalysisJob;
  if (![(NURenderJob *)&v40 prepare:?])
  {
    return 0;
  }

  outputImage = [(NURenderJob *)self outputImage];
  colorAnalysisRequest = [(_PIParallaxColorAnalysisJob *)self colorAnalysisRequest];
  segmentationMatte = [colorAnalysisRequest segmentationMatte];
  if (segmentationMatte)
  {
    v8 = [MEMORY[0x1E695F658] imageWithNUImageBuffer:segmentationMatte];
    if ([colorAnalysisRequest analyzeBackground])
    {
      [PISegmentationHelper backgroundForImage:outputImage matte:v8];
    }

    else
    {
      [PISegmentationHelper foregroundForImage:outputImage matte:v8];
    }
    v10 = ;

    outputImage = v10;
  }

  if ([colorAnalysisRequest analyzeHeadroom])
  {
    [outputImage extent];
    v12 = v11;
    [outputImage extent];
    v14 = *MEMORY[0x1E69C0C68] * v13;
    v15 = objc_alloc_init(PIPortraitHeadroomFilter);
    [(PIPortraitHeadroomFilter *)v15 setInputImage:outputImage];
    [(PIPortraitHeadroomFilter *)v15 setExtendedRect:0.0, 0.0, v12, v14];
    [(PIPortraitHeadroomFilter *)v15 setIsInactive:0];
    [(PIPortraitHeadroomFilter *)v15 setColorAnalysisOnly:1];
    outputImage2 = [(PIPortraitHeadroomFilter *)v15 outputImage];

    outputImage = outputImage2;
  }

  imageSize = [(NURenderJob *)self imageSize];
  v19 = v18;
  [colorAnalysisRequest normalizedClipRect];
  if (CGRectIsEmpty(v44))
  {
    v20 = 0;
    v21 = 0;
  }

  else
  {
    [outputImage extent];
    NURectDenormalize();
    NUPixelRectFromCGRect();
    v20 = *buf;
    v21 = *&buf[8];
    imageSize = *&buf[16];
    v19 = v42;
    NUPixelRectToCGRect();
    v22 = [outputImage imageByCroppingToRect:?];

    outputImage = v22;
  }

  *buf = v20;
  *&buf[8] = v21;
  *&buf[16] = imageSize;
  v42 = v19;
  [(_PIParallaxColorAnalysisJob *)self setImageRect:buf];
  imageByUnpremultiplyingAlpha = [outputImage imageByUnpremultiplyingAlpha];
  v24 = [PIIPTHueChromaFilter convertRGBImageToHueChroma:imageByUnpremultiplyingAlpha];

  v9 = v24 != 0;
  if (v24)
  {
    v25 = [PIIPTHueChromaFilter normalizeHueChromaImage:v24];
    [(_PIParallaxColorAnalysisJob *)self setHueChromaImage:v25];
  }

  else
  {
    *prepare = [MEMORY[0x1E69B3A48] failureError:@"Hue/chroma conversion failed" object:outputImage];
  }

  return v9;
}

- (id)scalePolicy
{
  v2 = [objc_alloc(MEMORY[0x1E69B3BE8]) initWithTargetPixelCount:0x80000];

  return v2;
}

- (_PIParallaxColorAnalysisJob)initWithRequest:(id)request
{
  v32 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = MEMORY[0x1E69B3D70];
    v7 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = v7;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = NSStringFromSelector(a2);
      v13 = [v8 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v11, v12];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v14 = *v5;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v14 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_324);
        }

LABEL_11:
        v20 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v22 = MEMORY[0x1E696AF00];
          v23 = specific;
          v24 = v20;
          callStackSymbols = [v22 callStackSymbols];
          v26 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v29 = specific;
          v30 = 2114;
          v31 = v26;
          _os_log_error_impl(&dword_1C7694000, v24, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v14 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_324);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v16 = MEMORY[0x1E696AF00];
      v17 = v15;
      callStackSymbols2 = [v16 callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v27 = objc_opt_class();
    NSStringFromClass(v27);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_324);
  }
}

- (_PIParallaxColorAnalysisJob)initWithParallaxColorAnalysisRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = _PIParallaxColorAnalysisJob;
  return [(NURenderJob *)&v4 initWithRequest:request];
}

@end