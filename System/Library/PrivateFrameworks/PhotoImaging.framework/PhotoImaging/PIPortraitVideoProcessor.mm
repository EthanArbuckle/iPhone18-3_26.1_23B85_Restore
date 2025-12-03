@interface PIPortraitVideoProcessor
+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error;
+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect;
+ (id)applyWithInputImage:(id)image disparityImage:(id)disparityImage inputPixelBuffer:(id)buffer disparityPixelBuffer:(id)pixelBuffer globalMetadata:(id)metadata timedMetadata:(id)timedMetadata aperture:(id)aperture focusedDisparity:(id)self0 quality:(id)self1 debugMode:(id)self2 isHDR:(BOOL)self3 error:(id *)self4;
+ (int)formatForInputAtIndex:(int)index;
+ (void)_configureRGBColorTexture:(id)texture format:(int)format isHDR:(BOOL)r;
@end

@implementation PIPortraitVideoProcessor

+ (id)applyWithInputImage:(id)image disparityImage:(id)disparityImage inputPixelBuffer:(id)buffer disparityPixelBuffer:(id)pixelBuffer globalMetadata:(id)metadata timedMetadata:(id)timedMetadata aperture:(id)aperture focusedDisparity:(id)self0 quality:(id)self1 debugMode:(id)self2 isHDR:(BOOL)self3 error:(id *)self4
{
  v103 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  disparityImageCopy = disparityImage;
  bufferCopy = buffer;
  pixelBufferCopy = pixelBuffer;
  metadataCopy = metadata;
  timedMetadataCopy = timedMetadata;
  apertureCopy = aperture;
  disparityCopy = disparity;
  qualityCopy = quality;
  modeCopy = mode;
  if (!error)
  {
    v58 = NUAssertLogger_2746();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v100 = v59;
      _os_log_error_impl(&dword_1C7694000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v63)
      {
        v76 = dispatch_get_specific(*callStackSymbols);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        callStackSymbols = [v77 callStackSymbols];
        v79 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v76;
        v101 = 2114;
        v102 = v79;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v63)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v68 = _NUAssertFailHandler();
    goto LABEL_33;
  }

  if (!(imageCopy | bufferCopy))
  {
    v65 = NUAssertLogger_2746();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil || inputPixelBuffer != nil"];
      *buf = 138543362;
      v100 = v66;
      _os_log_error_impl(&dword_1C7694000, v65, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v67 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v68 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v67)
    {
      if (v68)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        callStackSymbols = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v100 = callStackSymbols;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_35:

      v73 = _NUAssertFailHandler();
      goto LABEL_36;
    }

LABEL_33:
    if (v68)
    {
      v80 = dispatch_get_specific(*callStackSymbols);
      v81 = MEMORY[0x1E696AF00];
      v82 = v80;
      callStackSymbols = [v81 callStackSymbols];
      v83 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v80;
      v101 = 2114;
      v102 = v83;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_35;
  }

  v27 = imageCopy;
  if (!(disparityImageCopy | pixelBufferCopy))
  {
    v70 = NUAssertLogger_2746();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "disparityImage != nil || disparityPixelBuffer != nil"];
      *buf = 138543362;
      v100 = v71;
      _os_log_error_impl(&dword_1C7694000, v70, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v72 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v62 = NUAssertLogger_2746();
    v73 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
    if (!v72)
    {
      if (v73)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v75 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v100 = v75;
        _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_36:
    if (v73)
    {
      v84 = dispatch_get_specific(*callStackSymbols);
      v85 = MEMORY[0x1E696AF00];
      v86 = v84;
      callStackSymbols5 = [v85 callStackSymbols];
      v88 = [callStackSymbols5 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v100 = v84;
      v101 = 2114;
      v102 = v88;
      _os_log_error_impl(&dword_1C7694000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_38:

    _NUAssertFailHandler();
  }

  v91 = modeCopy;
  v92 = qualityCopy;
  v90 = imageCopy;
  if (imageCopy)
  {
    [imageCopy extent];
    v29 = v28;
    v31 = v30;
    Width = v32;
    Height = v34;
    v36 = bufferCopy;
    if (disparityImageCopy)
    {
      v37 = disparityCopy;
      v38 = apertureCopy;
      [disparityImageCopy extent];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v98[0] = v27;
      v98[1] = disparityImageCopy;
      v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
LABEL_9:
      v51 = pixelBufferCopy;
      goto LABEL_12;
    }
  }

  else
  {
    Width = CVPixelBufferGetWidth([bufferCopy CVPixelBuffer]);
    Height = CVPixelBufferGetHeight([bufferCopy CVPixelBuffer]);
    v29 = 0.0;
    v36 = bufferCopy;
    if (disparityImageCopy)
    {
      v37 = disparityCopy;
      v38 = apertureCopy;
      [disparityImageCopy extent];
      v40 = v47;
      v42 = v48;
      v44 = v49;
      v46 = v50;
      v31 = 0.0;
      v93 = MEMORY[0x1E695E0F0];
      goto LABEL_9;
    }

    v31 = 0.0;
  }

  v37 = disparityCopy;
  v38 = apertureCopy;
  v44 = CVPixelBufferGetWidth([pixelBufferCopy CVPixelBuffer]);
  v51 = pixelBufferCopy;
  v46 = CVPixelBufferGetHeight([pixelBufferCopy CVPixelBuffer]);
  v40 = 0.0;
  v93 = MEMORY[0x1E695E0F0];
  v42 = 0.0;
LABEL_12:
  v52 = [MEMORY[0x1E695F688] vectorWithCGRect:{v29, v31, Width, Height}];
  v97[0] = v52;
  v53 = [MEMORY[0x1E695F688] vectorWithCGRect:{v40, v42, v44, v46}];
  v97[1] = v53;
  v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];

  v54 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v54 setObject:v89 forKeyedSubscript:@"imageExtents"];
  [v54 setObject:metadataCopy forKeyedSubscript:@"globalMetadata"];
  [v54 setObject:timedMetadataCopy forKeyedSubscript:@"timedMetadata"];
  [v54 setObject:v38 forKeyedSubscript:@"aperture"];
  [v54 setObject:v37 forKeyedSubscript:@"focusDistance"];
  [v54 setObject:v92 forKeyedSubscript:@"quality"];
  [v54 setObject:v91 forKeyedSubscript:@"debug"];
  v55 = [MEMORY[0x1E696AD98] numberWithBool:r];
  [v54 setObject:v55 forKeyedSubscript:@"isHDR"];

  [v54 setObject:v36 forKeyedSubscript:@"colorPixelBuffer"];
  [v54 setObject:v51 forKeyedSubscript:@"disparityPixelBuffer"];
  v56 = [self applyWithExtent:v93 inputs:v54 arguments:error error:{v29, v31, Width, Height}];

  return v56;
}

+ (CGRect)roiForInput:(int)input arguments:(id)arguments outputRect:(CGRect)rect
{
  v6 = [arguments objectForKeyedSubscript:{@"imageExtents", rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  v7 = [v6 objectAtIndexedSubscript:input];
  [v7 CGRectValue];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

+ (int)formatForInputAtIndex:(int)index
{
  v28 = *MEMORY[0x1E69E9840];
  if (!index)
  {
    v3 = MEMORY[0x1E695F920];
    return *v3;
  }

  if (index == 1)
  {
    v3 = MEMORY[0x1E695F930];
    return *v3;
  }

  v5 = NUAssertLogger_2746();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index"];
    v24 = 138543362;
    v25 = v6;
    _os_log_error_impl(&dword_1C7694000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v24, 0xCu);
  }

  v7 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v9 = NUAssertLogger_2746();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v10)
    {
      v13 = dispatch_get_specific(*v7);
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      v24 = 138543618;
      v25 = v13;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v24, 0x16u);
    }
  }

  else if (v10)
  {
    callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
    v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    v24 = 138543362;
    v25 = v12;
    _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v24, 0xCu);
  }

  v18 = _NUAssertFailHandler();
  return [(PIPortraitVideoProcessor *)v18 processWithInputs:v19 arguments:v20 output:v21 error:v22, v23];
}

+ (BOOL)processWithInputs:(id)inputs arguments:(id)arguments output:(id)output error:(id *)error
{
  v154 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  argumentsCopy = arguments;
  outputCopy = output;
  if ([inputsCopy count] != 2 && objc_msgSend(inputsCopy, "count"))
  {
    v66 = NUAssertLogger_2746();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v67 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected inputs"];
      *v151 = 138543362;
      *&v151[4] = v67;
      _os_log_error_impl(&dword_1C7694000, v66, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v68 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v70 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v70)
      {
        v106 = dispatch_get_specific(*v68);
        v107 = MEMORY[0x1E696AF00];
        v108 = v106;
        callStackSymbols = [v107 callStackSymbols];
        v110 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v106;
        *&v151[12] = 2114;
        *&v151[14] = v110;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v70)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  v144 = inputsCopy;
  metalCommandBuffer = [outputCopy metalCommandBuffer];
  device = [metalCommandBuffer device];

  if (!device)
  {
    v55 = NUAssertLogger_2746();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a device"];
      *v151 = 138543362;
      *&v151[4] = v56;
      _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v57 = MEMORY[0x1E69B38E8];
    v58 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v58)
    {
      if (v60)
      {
        v71 = dispatch_get_specific(*v57);
        v72 = MEMORY[0x1E696AF00];
        v73 = v71;
        callStackSymbols2 = [v72 callStackSymbols];
        v75 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v71;
        *&v151[12] = 2114;
        *&v151[14] = v75;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v60)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  metalTexture = [outputCopy metalTexture];

  if (!metalTexture)
  {
    v61 = NUAssertLogger_2746();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"expected a texture"];
      *v151 = 138543362;
      *&v151[4] = v62;
      _os_log_error_impl(&dword_1C7694000, v61, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v63 = MEMORY[0x1E69B38E8];
    v64 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v65 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v64)
    {
      if (v65)
      {
        v76 = dispatch_get_specific(*v63);
        v77 = MEMORY[0x1E696AF00];
        v78 = v76;
        callStackSymbols3 = [v77 callStackSymbols];
        v80 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v76;
        *&v151[12] = 2114;
        *&v151[14] = v80;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v65)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  v138 = [argumentsCopy objectForKeyedSubscript:@"aperture"];
  v13 = [argumentsCopy objectForKeyedSubscript:@"focusDistance"];
  v136 = [argumentsCopy objectForKeyedSubscript:@"quality"];
  v135 = [argumentsCopy objectForKeyedSubscript:@"debug"];
  v142 = [argumentsCopy objectForKeyedSubscript:@"isHDR"];
  v140 = [argumentsCopy objectForKeyedSubscript:@"globalMetadata"];
  v137 = [argumentsCopy objectForKeyedSubscript:@"timedMetadata"];
  metalCommandBuffer2 = [outputCopy metalCommandBuffer];
  device2 = [metalCommandBuffer2 device];

  if ([inputsCopy count] == 2)
  {
    v15 = [inputsCopy objectAtIndexedSubscript:0];
    metalTexture2 = [v15 metalTexture];

    if (metalTexture2)
    {
      v17 = [inputsCopy objectAtIndexedSubscript:0];
      metalTexture3 = [v17 metalTexture];

      v143 = [MEMORY[0x1E69C4FC0] createRGBA:metalTexture3];
      v19 = [inputsCopy objectAtIndexedSubscript:0];
      [self _configureRGBColorTexture:v143 format:objc_msgSend(v19 isHDR:{"format"), objc_msgSend(v142, "BOOLValue")}];

      v20 = [inputsCopy objectAtIndexedSubscript:0];
      [v20 region];
      v21 = NUPixelSizeFromCGSize();
      v23 = v22;

      v24 = [v144 objectAtIndexedSubscript:1];
      metalTexture4 = [v24 metalTexture];

      if (metalTexture4)
      {
        v26 = [v144 objectAtIndexedSubscript:1];
        metalTexture5 = [v26 metalTexture];

        v27 = [v144 objectAtIndexedSubscript:1];
        [v27 region];
        v28 = NUPixelSizeFromCGSize();
        v30 = v29;

        goto LABEL_21;
      }

      v91 = NUAssertLogger_2746();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an input disparity texture"];
        *v151 = 138543362;
        *&v151[4] = v92;
        _os_log_error_impl(&dword_1C7694000, v91, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
      }

      v93 = MEMORY[0x1E69B38E8];
      v94 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
      v59 = NUAssertLogger_2746();
      v95 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
      if (v94)
      {
        if (v95)
        {
          v121 = dispatch_get_specific(*v93);
          v122 = MEMORY[0x1E696AF00];
          v123 = v121;
          callStackSymbols4 = [v122 callStackSymbols];
          v125 = [callStackSymbols4 componentsJoinedByString:@"\n"];
          *v151 = 138543618;
          *&v151[4] = v121;
          *&v151[12] = 2114;
          *&v151[14] = v125;
          _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
        }

        goto LABEL_85;
      }

      if (v95)
      {
        goto LABEL_68;
      }

LABEL_85:

      _NUAssertFailHandler();
      goto LABEL_89;
    }

    v86 = NUAssertLogger_2746();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected an input color texture"];
      *v151 = 138543362;
      *&v151[4] = v87;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v88 = MEMORY[0x1E69B38E8];
    v89 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v90 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v89)
    {
      if (v90)
      {
        v116 = dispatch_get_specific(*v88);
        v117 = MEMORY[0x1E696AF00];
        v118 = v116;
        callStackSymbols5 = [v117 callStackSymbols];
        v120 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v116;
        *&v151[12] = 2114;
        *&v151[14] = v120;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v90)
    {
      goto LABEL_85;
    }

LABEL_68:
    callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
    v97 = [callStackSymbols6 componentsJoinedByString:@"\n"];
    *v151 = 138543362;
    *&v151[4] = v97;
    _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v151, 0xCu);

    goto LABEL_85;
  }

  v31 = [argumentsCopy objectForKeyedSubscript:@"colorPixelBuffer"];
  cVPixelBuffer = [v31 CVPixelBuffer];
  if (!cVPixelBuffer)
  {
    v81 = NUAssertLogger_2746();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing direct source color pixel buffer"];
      *v151 = 138543362;
      *&v151[4] = v82;
      _os_log_error_impl(&dword_1C7694000, v81, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v83 = MEMORY[0x1E69B38E8];
    v84 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v59 = NUAssertLogger_2746();
    v85 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v84)
    {
      if (v85)
      {
        v111 = dispatch_get_specific(*v83);
        v112 = MEMORY[0x1E696AF00];
        v113 = v111;
        callStackSymbols7 = [v112 callStackSymbols];
        v115 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v111;
        *&v151[12] = 2114;
        *&v151[14] = v115;
        _os_log_error_impl(&dword_1C7694000, v59, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }

      goto LABEL_85;
    }

    if (!v85)
    {
      goto LABEL_85;
    }

    goto LABEL_68;
  }

  *buf = 0;
  v150 = 0;
  [MEMORY[0x1E69C4F98] pixelBufferToLumaChroma:device2 pixelBuffer:cVPixelBuffer outLuma:buf outChroma:&v150 read:1 write:1];
  v143 = [MEMORY[0x1E69C4FC0] createYUV420:*buf chroma:v150];
  bOOLValue = [v142 BOOLValue];
  v34 = bOOLValue;
  if (bOOLValue)
  {
    v35 = 10;
  }

  else
  {
    v35 = 8;
  }

  v36 = MEMORY[0x1E6965F48];
  if (!bOOLValue)
  {
    v36 = MEMORY[0x1E6965F50];
  }

  [v143 setTransferFunction:*v36];
  v37 = MEMORY[0x1E695FFC0];
  if (!v34)
  {
    v37 = MEMORY[0x1E6965DB8];
  }

  [v143 setColorPrimaries:*v37];
  v38 = MEMORY[0x1E6965FB0];
  if (!v34)
  {
    v38 = MEMORY[0x1E6965FD0];
  }

  [v143 setYCbCrMatrix:*v38];
  [v143 setYCbCrColorDepth:v35];
  [v143 setYCbCrFullRange:0];
  v21 = [v31 size];
  v23 = v39;
  v40 = [argumentsCopy objectForKeyedSubscript:@"disparityPixelBuffer"];
  cVPixelBuffer2 = [v40 CVPixelBuffer];
  if (!cVPixelBuffer2)
  {
    v98 = NUAssertLogger_2746();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      v99 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing direct source disparity pixel buffer"];
      *v151 = 138543362;
      *&v151[4] = v99;
      _os_log_error_impl(&dword_1C7694000, v98, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v151, 0xCu);
    }

    v100 = MEMORY[0x1E69B38E8];
    v101 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v102 = NUAssertLogger_2746();
    v103 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);
    if (v101)
    {
      if (v103)
      {
        v126 = dispatch_get_specific(*v100);
        v127 = MEMORY[0x1E696AF00];
        v128 = v126;
        callStackSymbols8 = [v127 callStackSymbols];
        v130 = [callStackSymbols8 componentsJoinedByString:@"\n"];
        *v151 = 138543618;
        *&v151[4] = v126;
        *&v151[12] = 2114;
        *&v151[14] = v130;
        _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v151, 0x16u);
      }
    }

    else if (v103)
    {
      callStackSymbols9 = [MEMORY[0x1E696AF00] callStackSymbols];
      v105 = [callStackSymbols9 componentsJoinedByString:@"\n"];
      *v151 = 138543362;
      *&v151[4] = v105;
      _os_log_error_impl(&dword_1C7694000, v102, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v151, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_89:
    __break(1u);
  }

  metalTexture5 = [MEMORY[0x1E69C4F98] getMTLTextureFromPixelBuffer:cVPixelBuffer2 device:device2];
  v28 = [v40 size];
  v30 = v42;

LABEL_21:
  v43 = MEMORY[0x1E69C4FC0];
  metalTexture6 = [outputCopy metalTexture];
  v139 = [v43 createRGBA:metalTexture6];

  [self _configureRGBColorTexture:v139 format:objc_msgSend(outputCopy isHDR:{"format"), objc_msgSend(v142, "BOOLValue")}];
  v45 = objc_alloc_init(MEMORY[0x1E69C4FB0]);
  [v45 setSourceColor:v143];
  [v45 setSourceDisparity:metalTexture5];
  [v45 setDestinationColor:v139];
  [v140 applyToRenderRequest:v45];
  [v137 applyToRenderRequest:v45];
  if (v138)
  {
    [v138 floatValue];
    [v45 setFNumber:?];
  }

  if (v13)
  {
    [v13 floatValue];
    [v45 setFocusDisparity:?];
  }

  v133 = v13;
  *v151 = 0;
  *&v151[8] = v151;
  *&v151[16] = 0x2020000000;
  v152 = 0;
  intValue = [v136 intValue];
  integerValue = [v135 integerValue];
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke;
  v146[3] = &unk_1E82A9F28;
  v48 = v45;
  v147 = v48;
  v149 = v151;
  v49 = outputCopy;
  v148 = v49;
  [PIPortraitVideoRenderer renderOnDevice:device2 colorSize:v21 disparitySize:v23 quality:v28 debugMode:v30 globalRenderingMetadata:intValue usingBlock:integerValue, v140, v146];
  v50 = *(*&v151[8] + 24);
  v51 = v133;
  if (v50)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_200);
    }

    v52 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v54 = *(*&v151[8] + 24);
      *buf = 67109120;
      *&buf[4] = v54;
      _os_log_error_impl(&dword_1C7694000, v52, OS_LOG_TYPE_ERROR, "CPV rendering failure, returned status %d", buf, 8u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*&v151[8] + 24) userInfo:0];
      *error = v51 = v133;
    }
  }

  _Block_object_dispose(v151, 8);
  return v50 == 0;
}

void __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setRenderState:a3];
  v7 = [*(a1 + 40) metalCommandBuffer];
  LODWORD(v5) = [v6 encodeRenderTo:v7 withRenderRequest:*(a1 + 32)];

  *(*(*(a1 + 48) + 8) + 24) = v5;
  v8 = [*(a1 + 40) metalCommandBuffer];
  [v8 addCompletedHandler:&__block_literal_global_2838];
}

void __69__PIPortraitVideoProcessor_processWithInputs_arguments_output_error___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if ([v2 status] == 5)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_200);
    }

    v3 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = [v2 label];
      v6 = [v2 error];
      v7 = 138543618;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Error executing command buffer '%{public}@': %{public}@", &v7, 0x16u);
    }
  }
}

+ (void)_configureRGBColorTexture:(id)texture format:(int)format isHDR:(BOOL)r
{
  rCopy = r;
  v31 = *MEMORY[0x1E69E9840];
  textureCopy = texture;
  if (*MEMORY[0x1E695F890] != format && *MEMORY[0x1E695F920] != format)
  {
    v12 = NUAssertLogger_2746();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unexpected input pixel format"];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_2746();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        callStackSymbols = [v22 callStackSymbols];
        v25 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v9 = MEMORY[0x1E69C4FD0];
  if (!rCopy)
  {
    v9 = MEMORY[0x1E6965F60];
  }

  v10 = MEMORY[0x1E6965F48];
  if (!rCopy)
  {
    v10 = MEMORY[0x1E6965F50];
  }

  if (*MEMORY[0x1E695F890] == format)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v26 = textureCopy;
  [textureCopy setTransferFunction:*v11];
}

@end