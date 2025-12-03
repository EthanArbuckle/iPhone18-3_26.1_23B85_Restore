@interface PIPortraitVideoRenderNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)_targetScaleForScale:(id)scale;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime;
- (BOOL)_prewarmPortraitRendererWithPipelineState:(id)state error:(id *)error;
- (BOOL)useSourceBuffersDirectly;
- (NSArray)apertureKeyframes;
- (NSArray)disparityKeyframes;
- (PIPortraitVideoMetadataSample)timedMetadata;
- (PIPortraitVideoRenderNode)initWithInput:(id)input disparityInput:(id)disparityInput disparityKeyframes:(id)keyframes apertureKeyframes:(id)apertureKeyframes debugMode:(int64_t)mode;
- (PTGlobalRenderingMetadata)globalMetadata;
- (__CVBuffer)_sourceBufferFromInput:(id)input error:(id *)error;
- (id)_evaluateImage:(id *)image;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)sourceTransferFunction;
- (int)_portraitQualityForRenderScale:(id)scale;
- (int)renderQuality;
- (int64_t)debugMode;
@end

@implementation PIPortraitVideoRenderNode

- (id)_evaluateImage:(id *)image
{
  v60 = *MEMORY[0x1E69E9840];
  if (!image)
  {
    v37 = NUAssertLogger_3781();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v38;
      _os_log_error_impl(&dword_1C7694000, v37, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v39 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v41 = NUAssertLogger_3781();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v42)
      {
        v45 = dispatch_get_specific(*v39);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v58 = 0;
  v6 = [v5 outputImage:&v58];
  v7 = v58;
  if (!v6)
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the input image" object:self underlyingError:v7];
    *image = outputImage = 0;
    v10 = v7;
    goto LABEL_40;
  }

  v8 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FA98]];
  v57 = 0;
  v9 = [v8 outputImage:&v57];
  v10 = v57;

  if (v9)
  {
    globalMetadata = [(PIPortraitVideoRenderNode *)self globalMetadata];
    timedMetadata = [(PIPortraitVideoRenderNode *)self timedMetadata];
    if (!timedMetadata)
    {
      [MEMORY[0x1E69B3A48] missingError:@"Could not get the timed metadata" object:self];
      *image = outputImage = 0;
LABEL_38:

      goto LABEL_39;
    }

    sourceTransferFunction = [(PIPortraitVideoRenderNode *)self sourceTransferFunction];
    v14 = sourceTransferFunction;
    if (!sourceTransferFunction)
    {
      v15 = MEMORY[0x1E69B3A48];
      v16 = @"Could not get the source transfer function";
      goto LABEL_12;
    }

    v51 = [sourceTransferFunction isEqualToString:*MEMORY[0x1E6987DF0]];
    memset(buf, 0, sizeof(buf));
    [(PIPortraitVideoRenderNode *)self renderTime];
    if ((buf[12] & 1) == 0)
    {
      v15 = MEMORY[0x1E69B3A48];
      v16 = @"Could not get the render time";
LABEL_12:
      [v15 missingError:v16 object:self];
      *image = outputImage = 0;
LABEL_37:

      goto LABEL_38;
    }

    v53 = globalMetadata;
    disparityKeyframes = [(PIPortraitVideoRenderNode *)self disparityKeyframes];

    v54 = v14;
    if (disparityKeyframes)
    {
      disparityKeyframes2 = [(PIPortraitVideoRenderNode *)self disparityKeyframes];
      v55 = *buf;
      v56 = *&buf[16];
      v20 = [PIScalarKeyframe keyframeInArray:disparityKeyframes2 closestToTime:&v55];

      if (v20)
      {
        v21 = v20[1];
      }

      else
      {
        v21 = 0.0;
      }

      v52 = [MEMORY[0x1E696AD98] numberWithDouble:v21];

      v14 = v54;
    }

    else
    {
      v52 = 0;
    }

    apertureKeyframes = [(PIPortraitVideoRenderNode *)self apertureKeyframes];

    if (apertureKeyframes)
    {
      apertureKeyframes2 = [(PIPortraitVideoRenderNode *)self apertureKeyframes];
      v55 = *buf;
      v56 = *&buf[16];
      v24 = [PIScalarKeyframe keyframeInArray:apertureKeyframes2 closestToTime:&v55];

      if (v24)
      {
        v25 = v24[1];
      }

      else
      {
        v25 = 0.0;
      }

      v50 = [MEMORY[0x1E696AD98] numberWithDouble:v25];

      v14 = v54;
    }

    else
    {
      v50 = 0;
    }

    if ([(PIPortraitVideoRenderNode *)self debugMode]== 1)
    {
      outputImage = [v9 imageByCompositingOverImage:v6];
LABEL_36:
      globalMetadata = v53;

      goto LABEL_37;
    }

    v26 = objc_alloc_init(PIPortraitVideoFilter);
    [(PIPortraitVideoFilter *)v26 setInputGlobalRenderingMetadata:v53];
    [(PIPortraitVideoFilter *)v26 setInputTimedRenderingMetadata:timedMetadata];
    [(PIPortraitVideoFilter *)v26 setInputImage:v6];
    [(PIPortraitVideoFilter *)v26 setInputDisparityImage:v9];
    [(PIPortraitVideoFilter *)v26 setInputAperture:v50];
    [(PIPortraitVideoFilter *)v26 setInputFocusedDisparity:v52];
    v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[PIPortraitVideoRenderNode renderQuality](self, "renderQuality")}];
    [(PIPortraitVideoFilter *)v26 setInputRenderQuality:v27];

    v28 = MEMORY[0x1E696AD98];
    debugMode = [(PIPortraitVideoRenderNode *)self debugMode];
    if ((debugMode - 2) >= 4)
    {
      v30 = 0;
    }

    else
    {
      v30 = debugMode - 1;
    }

    v31 = [v28 numberWithInteger:v30];
    [(PIPortraitVideoFilter *)v26 setInputRenderDebugMode:v31];

    v14 = v54;
    [(PIPortraitVideoFilter *)v26 setInputIsHDR:v51];
    if ([(PIPortraitVideoRenderNode *)self useSourceBuffersDirectly])
    {
      [(PIPortraitVideoFilter *)v26 setInputImage:0];
      [(PIPortraitVideoFilter *)v26 setInputDisparityImage:0];
      v32 = [(PIPortraitVideoRenderNode *)self _sourceBufferFromInput:v5 error:image];
      if (!v32)
      {
        outputImage = 0;
        goto LABEL_35;
      }

      v33 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:v32];
      [(PIPortraitVideoFilter *)v26 setInputColorPixelBuffer:v33];

      v34 = [(PIPortraitVideoRenderNode *)self _sourceBufferFromInput:v8 error:image];
      if (!v34)
      {
        outputImage = 0;
        v14 = v54;
        goto LABEL_35;
      }

      v35 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:v34];
      [(PIPortraitVideoFilter *)v26 setInputDisparityPixelBuffer:v35];

      v14 = v54;
    }

    outputImage = [(PIPortraitVideoFilter *)v26 outputImage];
LABEL_35:

    goto LABEL_36;
  }

  *image = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the disparityImage" object:self underlyingError:v10];
  outputImage = v6;
LABEL_39:

LABEL_40:

  return outputImage;
}

- (__CVBuffer)_sourceBufferFromInput:(id)input error:(id *)error
{
  inputCopy = input;
  v6 = *MEMORY[0x1E695FAB0];
  v7 = [inputCopy inputForKey:*MEMORY[0x1E695FAB0]];

  if (v7)
  {
    do
    {
      v8 = [inputCopy inputForKey:v6];

      v9 = [v8 inputForKey:v6];

      inputCopy = v8;
    }

    while (v9);
  }

  else
  {
    v8 = inputCopy;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pixelBuffer = [v8 pixelBuffer];
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Source image isn't backed by a CVPixelBuffer" object:v8];
    *error = pixelBuffer = 0;
  }

  return pixelBuffer;
}

- (int)_portraitQualityForRenderScale:(id)scale
{
  NUScaleMake();
  if (NUScaleCompare() < 1)
  {
    return 24;
  }

  NUScaleMake();
  if (NUScaleCompare() >= 1)
  {
    return 75;
  }

  else
  {
    return 26;
  }
}

- (BOOL)useSourceBuffersDirectly
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"useSourceBuffersDirectly"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (id)sourceTransferFunction
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"sourceTransferFunction"];

  return v3;
}

- (PIPortraitVideoMetadataSample)timedMetadata
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"timedMetadata"];

  return v3;
}

- (PTGlobalRenderingMetadata)globalMetadata
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"globalMetadata"];

  return v3;
}

- (int)renderQuality
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"renderQuality"];

  if (v3)
  {
    intValue = [v3 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  settings = [(NURenderNode *)self settings];
  dictionaryRepresentation = [settings objectForKeyedSubscript:@"renderTime"];

  v5 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
    v5 = dictionaryRepresentation;
  }

  return result;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v72 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  settingsCopy = settings;
  stateCopy = state;
  if (!error)
  {
    v53 = NUAssertLogger_3781();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v54;
      _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    inputsCopy = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v55 = NUAssertLogger_3781();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        specific = dispatch_get_specific(*inputsCopy);
        v57 = MEMORY[0x1E696AF00];
        settingsCopy = specific;
        inputsCopy = [v57 callStackSymbols];
        error = [inputsCopy componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = specific;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = error;
        _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v56)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      inputsCopy = [specific componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = inputsCopy;
      _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_60:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_143_3842);
    goto LABEL_16;
  }

  specific = stateCopy;
  v15 = [(NURenderNode *)self videoProperties:error];
  v6 = v15;
  if (v15)
  {
    selfCopy = self;
    v61 = settingsCopy;
    v63 = v15;
    v64 = specific;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    metadata = [v15 metadata];
    v17 = [metadata countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v67;
      v20 = *MEMORY[0x1E69C4FD8];
LABEL_5:
      v21 = inputsCopy;
      v22 = 0;
      while (1)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(metadata);
        }

        v23 = *(*(&v66 + 1) + 8 * v22);
        v24 = [v23 key];
        v25 = [v24 isEqual:v20];

        if (v25)
        {
          break;
        }

        if (v18 == ++v22)
        {
          v18 = [metadata countByEnumeratingWithState:&v66 objects:v71 count:16];
          inputsCopy = v21;
          if (v18)
          {
            goto LABEL_5;
          }

          goto LABEL_11;
        }
      }

      v26 = v23;

      if (!v26)
      {
        v27 = 0;
        inputsCopy = v21;
        goto LABEL_20;
      }

      v28 = MEMORY[0x1E69C4F90];
      value = [v26 value];
      v27 = [v28 deserializeMetadataWithType:2 fromGlobalMetadata:value error:error];

      inputsCopy = v21;
      if (v27)
      {
        goto LABEL_20;
      }

      v30 = 0;
      settingsCopy = v61;
      specific = v64;
      goto LABEL_46;
    }

LABEL_11:

    v26 = 0;
    v27 = 0;
LABEL_20:
    specific = v64;
    videoMetadataSamples = [v64 videoMetadataSamples];
    v33 = [videoMetadataSamples objectForKeyedSubscript:@"portraitVideoMetadata"];

    if (v33)
    {
      settingsCopy = v61;
    }

    else
    {
      if ([v64 evaluationMode] != 1)
      {
        v33 = 0;
        settingsCopy = v61;
        goto LABEL_44;
      }

      v41 = +[PIPortraitVideoMetadataSample renderingMetadataIdentifier];
      settingsCopy = v61;
      if (v64)
      {
        [v64 time];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v33 = [(NURenderNode *)selfCopy outputTimedMetadataSampleWithIdentifier:v41 atTime:&time error:error];

      if (!v33)
      {
        goto LABEL_44;
      }
    }

    metadataGroup = [v33 metadataGroup];

    if (metadataGroup)
    {
      v35 = [PIPortraitVideoMetadataSample alloc];
      metadataGroup2 = [v33 metadataGroup];
      v37 = -[PIPortraitVideoMetadataSample initWithMetadataGroup:majorVersion:minorVersion:error:](v35, "initWithMetadataGroup:majorVersion:minorVersion:error:", metadataGroup2, [v27 majorVersion], objc_msgSend(v27, "minorVersion"), error);

      if (v37)
      {
        v59 = v26;
        v38 = v64;
        [v64 scale];
        if (NUScaleEqual() && [v64 evaluationMode] == 3 && objc_msgSend(v27, "renderingVersion") >= 2)
        {
          v39 = +[PIGlobalSettings globalSettings];
          cinematicAllowYUVSourceInput = [v39 cinematicAllowYUVSourceInput];

          if (cinematicAllowYUVSourceInput)
          {
            if (resolvedNodeWithCachedInputs_settings_pipelineState_error__once != -1)
            {
              dispatch_once(&resolvedNodeWithCachedInputs_settings_pipelineState_error__once, &__block_literal_global_3848);
            }

            v62 = 1;
          }

          else
          {
            v62 = 0;
          }

          v38 = v64;
        }

        else
        {
          v62 = 0;
        }

        v42 = [settingsCopy mutableCopy];
        [v42 setObject:v27 forKeyedSubscript:@"globalMetadata"];
        [v42 setObject:v37 forKeyedSubscript:@"timedMetadata"];
        v58 = v37;
        if (v38)
        {
          [v38 time];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v43 = CMTimeCopyAsDictionary(&time, 0);
        [v42 setObject:v43 forKeyedSubscript:@"renderTime"];

        v44 = MEMORY[0x1E696AD98];
        scale = [v38 scale];
        v47 = [v44 numberWithInt:{-[PIPortraitVideoRenderNode _portraitQualityForRenderScale:](selfCopy, "_portraitQualityForRenderScale:", scale, v46)}];
        [v42 setObject:v47 forKeyedSubscript:@"renderQuality"];

        colorProperties = [v63 colorProperties];
        v49 = [colorProperties objectForKeyedSubscript:*MEMORY[0x1E6987DE8]];
        [v42 setObject:v49 forKeyedSubscript:@"sourceTransferFunction"];

        v50 = [MEMORY[0x1E696AD98] numberWithBool:v62];
        [v42 setObject:v50 forKeyedSubscript:@"useSourceBuffersDirectly"];

        v65.receiver = selfCopy;
        v65.super_class = PIPortraitVideoRenderNode;
        v30 = [(NURenderNode *)&v65 resolvedNodeWithCachedInputs:inputsCopy settings:v42 pipelineState:v38 error:error];

        specific = v38;
        v37 = v58;
        v26 = v59;
      }

      else
      {
        v30 = 0;
        specific = v64;
      }

      goto LABEL_45;
    }

LABEL_44:
    [MEMORY[0x1E69B3A48] missingError:@"PIPortraitVideoRenderNode: expected a valid portraitVideoMetadata sample" object:v33];
    *error = v30 = 0;
LABEL_45:

LABEL_46:
    v6 = v63;
    goto LABEL_47;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_60;
  }

LABEL_16:
  v31 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    v52 = *error;
    LODWORD(time.value) = 138543362;
    *(&time.value + 4) = v52;
    _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Failed to obtain video properties: %{public}@", &time, 0xCu);
  }

  v30 = 0;
LABEL_47:

  return v30;
}

- (BOOL)_prewarmPortraitRendererWithPipelineState:(id)state error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!stateCopy)
  {
    v35 = NUAssertLogger_3781();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "state != nil"];
      *buf = 138543362;
      v62 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v39 = NUAssertLogger_3781();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v40)
      {
        v48 = dispatch_get_specific(*callStackSymbols);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        callStackSymbols = [v49 callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v48;
        v63 = 2114;
        v64 = v51;
        _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v45 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!error)
  {
    v42 = NUAssertLogger_3781();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v62 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v44 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v39 = NUAssertLogger_3781();
    v45 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (!v44)
    {
      if (v45)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v62 = v47;
        _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v45)
    {
      v52 = dispatch_get_specific(*callStackSymbols);
      v53 = MEMORY[0x1E696AF00];
      v54 = v52;
      callStackSymbols4 = [v53 callStackSymbols];
      v56 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v62 = v52;
      v63 = 2114;
      v64 = v56;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
  }

  v7 = stateCopy;
  inputs = [(NURenderNode *)self inputs];
  v9 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];
  v10 = [v9 outputImageGeometry:error];

  if (v10)
  {
    inputs2 = [(NURenderNode *)self inputs];
    v12 = [inputs2 objectForKeyedSubscript:*MEMORY[0x1E695FA98]];
    v13 = [v12 outputImageGeometry:error];

    if (v13)
    {
      scale = [v7 scale];
      v16 = [(PIPortraitVideoRenderNode *)self _targetScaleForScale:scale, v15];
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x1E69B3B18]);
      [v10 extent];
      v20 = [v19 initWithExtent:buf renderScale:v16 orientation:{v18, objc_msgSend(v10, "orientation")}];
      device = [v7 device];
      v22 = device != 0;

      if (device)
      {
        v59 = [(PIPortraitVideoRenderNode *)self _portraitQualityForRenderScale:v16, v18];
        device2 = [v7 device];
        metalDevice = [device2 metalDevice];
        scaledSize = [v20 scaledSize];
        v57 = v25;
        v58 = scaledSize;
        v26 = v20;
        scaledSize2 = [v13 scaledSize];
        v29 = v28;
        debugMode = [(PIPortraitVideoRenderNode *)self debugMode];
        if ((debugMode - 2) >= 4)
        {
          v31 = 0;
        }

        else
        {
          v31 = debugMode - 1;
        }

        globalMetadata = [(PIPortraitVideoRenderNode *)self globalMetadata];
        v33 = scaledSize2;
        v20 = v26;
        [PIPortraitVideoRenderer prewarmRendererForDevice:metalDevice colorSize:v58 disparitySize:v57 quality:v33 debugMode:v29 globalRenderingMetadata:v59, v31, globalMetadata];
      }

      else
      {
        *error = [MEMORY[0x1E69B3A48] invalidError:@"No device specified for prewarm" object:0];
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (!error)
  {
    v31 = NUAssertLogger_3781();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v40 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    cacheCopy = NUAssertLogger_3781();
    v33 = os_log_type_enabled(cacheCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v34 = MEMORY[0x1E696AF00];
        error = specific;
        callStackSymbols = [v34 callStackSymbols];
        self = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = specific;
        v41 = 2114;
        selfCopy = self;
        _os_log_error_impl(&dword_1C7694000, cacheCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, cacheCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v35 = "error != NULL";
    _NUAssertFailHandler();
LABEL_26:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_143_3842);
    goto LABEL_4;
  }

  specific = stateCopy;
  v38 = 0;
  v11 = [(PIPortraitVideoRenderNode *)self _prewarmPortraitRendererWithPipelineState:stateCopy error:&v38];
  callStackSymbols = v38;
  if (v11)
  {
    goto LABEL_6;
  }

  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_26;
  }

LABEL_4:
  v13 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v40 = callStackSymbols;
    _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to prewarm portrait renderer: %{public}@", buf, 0xCu);
  }

LABEL_6:
  if ([specific evaluationMode] == 1 || objc_msgSend(specific, "evaluationMode") == 3)
  {
    scale = [specific scale];
    v16 = [(PIPortraitVideoRenderNode *)self _targetScaleForScale:scale, v15];
    v18 = v17;
    v19 = [specific copy];
    [v19 setScale:{v16, v18}];
    v37.receiver = self;
    v37.super_class = PIPortraitVideoRenderNode;
    v20 = [(NURenderNode *)&v37 nodeByReplayingAgainstCache:cacheCopy pipelineState:v19 error:error];
    if (v20)
    {
      v21 = v20;
      [specific scale];
      v22 = NUScaleDivide();
      v24 = v23;
      if (NUScaleEqual())
      {
        v25 = v21;
      }

      else
      {
        v26 = objc_alloc(MEMORY[0x1E69B3C90]);
        scale2 = [specific scale];
        v29 = [v26 initWithTargetScale:scale2 effectiveScale:v28 sampleMode:v22 input:{v24, objc_msgSend(specific, "sampleMode"), v21}];
        v25 = [MEMORY[0x1E69B3C28] nodeFromCache:v29 cache:cacheCopy];

        [v25 setEvaluatedForMode:{objc_msgSend(specific, "evaluationMode")}];
      }
    }

    else
    {

      v25 = 0;
    }
  }

  else
  {
    v36.receiver = self;
    v36.super_class = PIPortraitVideoRenderNode;
    v25 = [(NURenderNode *)&v36 nodeByReplayingAgainstCache:cacheCopy pipelineState:specific error:error];
  }

  return v25;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_targetScaleForScale:(id)scale
{
  v23 = *MEMORY[0x1E69E9840];
  if (!NUScaleIsValid())
  {
    v6 = NUAssertLogger_3781();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      *buf = 138543362;
      v20 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_3781();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        callStackSymbols = [v15 callStackSymbols];
        v18 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v20 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v3 = 1;
  do
  {
    v3 *= 2;
    NUScaleMake();
  }

  while (NUScaleCompare() < 1);

  v4 = NUScaleMake();
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (int64_t)debugMode
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"debugMode"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (NSArray)apertureKeyframes
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"apertureKeyframes"];

  return v3;
}

- (NSArray)disparityKeyframes
{
  settings = [(NURenderNode *)self settings];
  v3 = [settings objectForKeyedSubscript:@"disparityKeyframes"];

  return v3;
}

- (PIPortraitVideoRenderNode)initWithInput:(id)input disparityInput:(id)disparityInput disparityKeyframes:(id)keyframes apertureKeyframes:(id)apertureKeyframes debugMode:(int64_t)mode
{
  v26[2] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E695FA98];
  v25[0] = *MEMORY[0x1E695FAB0];
  v12 = v25[0];
  v25[1] = v13;
  v26[0] = input;
  v26[1] = disparityInput;
  v14 = MEMORY[0x1E695DF20];
  apertureKeyframesCopy = apertureKeyframes;
  keyframesCopy = keyframes;
  disparityInputCopy = disparityInput;
  inputCopy = input;
  v19 = [v14 dictionaryWithObjects:v26 forKeys:v25 count:2];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 setObject:v12 forKeyedSubscript:@"__dominantInputSettingsKey"];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [v20 setObject:v21 forKeyedSubscript:@"debugMode"];

  [v20 setObject:keyframesCopy forKeyedSubscript:@"disparityKeyframes"];
  [v20 setObject:apertureKeyframesCopy forKeyedSubscript:@"apertureKeyframes"];

  v24.receiver = self;
  v24.super_class = PIPortraitVideoRenderNode;
  v22 = [(NURenderNode *)&v24 initWithSettings:v20 inputs:v19];

  return v22;
}

@end