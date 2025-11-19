@interface PIPortraitVideoRenderNode
- ($0AC6E346AE4835514AAA8AC86D8F4844)_targetScaleForScale:(id)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime;
- (BOOL)_prewarmPortraitRendererWithPipelineState:(id)a3 error:(id *)a4;
- (BOOL)useSourceBuffersDirectly;
- (NSArray)apertureKeyframes;
- (NSArray)disparityKeyframes;
- (PIPortraitVideoMetadataSample)timedMetadata;
- (PIPortraitVideoRenderNode)initWithInput:(id)a3 disparityInput:(id)a4 disparityKeyframes:(id)a5 apertureKeyframes:(id)a6 debugMode:(int64_t)a7;
- (PTGlobalRenderingMetadata)globalMetadata;
- (__CVBuffer)_sourceBufferFromInput:(id)a3 error:(id *)a4;
- (id)_evaluateImage:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
- (id)sourceTransferFunction;
- (int)_portraitQualityForRenderScale:(id)a3;
- (int)renderQuality;
- (int64_t)debugMode;
@end

@implementation PIPortraitVideoRenderNode

- (id)_evaluateImage:(id *)a3
{
  v60 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v48 = [v46 callStackSymbols];
        v49 = [v48 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v45;
        *&buf[12] = 2114;
        *&buf[14] = v49;
        _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      v43 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [v43 componentsJoinedByString:@"\n"];
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
    *a3 = v17 = 0;
    v10 = v7;
    goto LABEL_40;
  }

  v8 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FA98]];
  v57 = 0;
  v9 = [v8 outputImage:&v57];
  v10 = v57;

  if (v9)
  {
    v11 = [(PIPortraitVideoRenderNode *)self globalMetadata];
    v12 = [(PIPortraitVideoRenderNode *)self timedMetadata];
    if (!v12)
    {
      [MEMORY[0x1E69B3A48] missingError:@"Could not get the timed metadata" object:self];
      *a3 = v17 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v13 = [(PIPortraitVideoRenderNode *)self sourceTransferFunction];
    v14 = v13;
    if (!v13)
    {
      v15 = MEMORY[0x1E69B3A48];
      v16 = @"Could not get the source transfer function";
      goto LABEL_12;
    }

    v51 = [v13 isEqualToString:*MEMORY[0x1E6987DF0]];
    memset(buf, 0, sizeof(buf));
    [(PIPortraitVideoRenderNode *)self renderTime];
    if ((buf[12] & 1) == 0)
    {
      v15 = MEMORY[0x1E69B3A48];
      v16 = @"Could not get the render time";
LABEL_12:
      [v15 missingError:v16 object:self];
      *a3 = v17 = 0;
LABEL_37:

      goto LABEL_38;
    }

    v53 = v11;
    v18 = [(PIPortraitVideoRenderNode *)self disparityKeyframes];

    v54 = v14;
    if (v18)
    {
      v19 = [(PIPortraitVideoRenderNode *)self disparityKeyframes];
      v55 = *buf;
      v56 = *&buf[16];
      v20 = [PIScalarKeyframe keyframeInArray:v19 closestToTime:&v55];

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

    v22 = [(PIPortraitVideoRenderNode *)self apertureKeyframes];

    if (v22)
    {
      v23 = [(PIPortraitVideoRenderNode *)self apertureKeyframes];
      v55 = *buf;
      v56 = *&buf[16];
      v24 = [PIScalarKeyframe keyframeInArray:v23 closestToTime:&v55];

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
      v17 = [v9 imageByCompositingOverImage:v6];
LABEL_36:
      v11 = v53;

      goto LABEL_37;
    }

    v26 = objc_alloc_init(PIPortraitVideoFilter);
    [(PIPortraitVideoFilter *)v26 setInputGlobalRenderingMetadata:v53];
    [(PIPortraitVideoFilter *)v26 setInputTimedRenderingMetadata:v12];
    [(PIPortraitVideoFilter *)v26 setInputImage:v6];
    [(PIPortraitVideoFilter *)v26 setInputDisparityImage:v9];
    [(PIPortraitVideoFilter *)v26 setInputAperture:v50];
    [(PIPortraitVideoFilter *)v26 setInputFocusedDisparity:v52];
    v27 = [MEMORY[0x1E696AD98] numberWithInt:{-[PIPortraitVideoRenderNode renderQuality](self, "renderQuality")}];
    [(PIPortraitVideoFilter *)v26 setInputRenderQuality:v27];

    v28 = MEMORY[0x1E696AD98];
    v29 = [(PIPortraitVideoRenderNode *)self debugMode];
    if ((v29 - 2) >= 4)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29 - 1;
    }

    v31 = [v28 numberWithInteger:v30];
    [(PIPortraitVideoFilter *)v26 setInputRenderDebugMode:v31];

    v14 = v54;
    [(PIPortraitVideoFilter *)v26 setInputIsHDR:v51];
    if ([(PIPortraitVideoRenderNode *)self useSourceBuffersDirectly])
    {
      [(PIPortraitVideoFilter *)v26 setInputImage:0];
      [(PIPortraitVideoFilter *)v26 setInputDisparityImage:0];
      v32 = [(PIPortraitVideoRenderNode *)self _sourceBufferFromInput:v5 error:a3];
      if (!v32)
      {
        v17 = 0;
        goto LABEL_35;
      }

      v33 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:v32];
      [(PIPortraitVideoFilter *)v26 setInputColorPixelBuffer:v33];

      v34 = [(PIPortraitVideoRenderNode *)self _sourceBufferFromInput:v8 error:a3];
      if (!v34)
      {
        v17 = 0;
        v14 = v54;
        goto LABEL_35;
      }

      v35 = [objc_alloc(MEMORY[0x1E69B39C0]) initWithCVPixelBuffer:v34];
      [(PIPortraitVideoFilter *)v26 setInputDisparityPixelBuffer:v35];

      v14 = v54;
    }

    v17 = [(PIPortraitVideoFilter *)v26 outputImage];
LABEL_35:

    goto LABEL_36;
  }

  *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Could not get the disparityImage" object:self underlyingError:v10];
  v17 = v6;
LABEL_39:

LABEL_40:

  return v17;
}

- (__CVBuffer)_sourceBufferFromInput:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = *MEMORY[0x1E695FAB0];
  v7 = [v5 inputForKey:*MEMORY[0x1E695FAB0]];

  if (v7)
  {
    do
    {
      v8 = [v5 inputForKey:v6];

      v9 = [v8 inputForKey:v6];

      v5 = v8;
    }

    while (v9);
  }

  else
  {
    v8 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v8 pixelBuffer];
  }

  else
  {
    [MEMORY[0x1E69B3A48] missingError:@"Source image isn't backed by a CVPixelBuffer" object:v8];
    *a4 = v10 = 0;
  }

  return v10;
}

- (int)_portraitQualityForRenderScale:(id)a3
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
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"useSourceBuffersDirectly"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (id)sourceTransferFunction
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"sourceTransferFunction"];

  return v3;
}

- (PIPortraitVideoMetadataSample)timedMetadata
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"timedMetadata"];

  return v3;
}

- (PTGlobalRenderingMetadata)globalMetadata
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"globalMetadata"];

  return v3;
}

- (int)renderQuality
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"renderQuality"];

  if (v3)
  {
    v4 = [v3 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)renderTime
{
  *retstr = **&MEMORY[0x1E6960C70];
  v4 = [(NURenderNode *)self settings];
  dictionaryRepresentation = [v4 objectForKeyedSubscript:@"renderTime"];

  v5 = dictionaryRepresentation;
  if (dictionaryRepresentation)
  {
    CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
    v5 = dictionaryRepresentation;
  }

  return result;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!a6)
  {
    v53 = NUAssertLogger_3781();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v54;
      _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &time, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v55 = NUAssertLogger_3781();
    v56 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v56)
      {
        specific = dispatch_get_specific(*v11);
        v57 = MEMORY[0x1E696AF00];
        v12 = specific;
        v11 = [v57 callStackSymbols];
        a6 = [v11 componentsJoinedByString:@"\n"];
        LODWORD(time.value) = 138543618;
        *(&time.value + 4) = specific;
        LOWORD(time.flags) = 2114;
        *(&time.flags + 2) = a6;
        _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &time, 0x16u);
      }
    }

    else if (v56)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v11 = [specific componentsJoinedByString:@"\n"];
      LODWORD(time.value) = 138543362;
      *(&time.value + 4) = v11;
      _os_log_error_impl(&dword_1C7694000, v55, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &time, 0xCu);
    }

    _NUAssertFailHandler();
LABEL_60:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_143_3842);
    goto LABEL_16;
  }

  specific = v13;
  v15 = [(NURenderNode *)self videoProperties:a6];
  v6 = v15;
  if (v15)
  {
    v60 = self;
    v61 = v12;
    v63 = v15;
    v64 = specific;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v16 = [v15 metadata];
    v17 = [v16 countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v67;
      v20 = *MEMORY[0x1E69C4FD8];
LABEL_5:
      v21 = v11;
      v22 = 0;
      while (1)
      {
        if (*v67 != v19)
        {
          objc_enumerationMutation(v16);
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
          v18 = [v16 countByEnumeratingWithState:&v66 objects:v71 count:16];
          v11 = v21;
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
        v11 = v21;
        goto LABEL_20;
      }

      v28 = MEMORY[0x1E69C4F90];
      v29 = [v26 value];
      v27 = [v28 deserializeMetadataWithType:2 fromGlobalMetadata:v29 error:a6];

      v11 = v21;
      if (v27)
      {
        goto LABEL_20;
      }

      v30 = 0;
      v12 = v61;
      specific = v64;
      goto LABEL_46;
    }

LABEL_11:

    v26 = 0;
    v27 = 0;
LABEL_20:
    specific = v64;
    v32 = [v64 videoMetadataSamples];
    v33 = [v32 objectForKeyedSubscript:@"portraitVideoMetadata"];

    if (v33)
    {
      v12 = v61;
    }

    else
    {
      if ([v64 evaluationMode] != 1)
      {
        v33 = 0;
        v12 = v61;
        goto LABEL_44;
      }

      v41 = +[PIPortraitVideoMetadataSample renderingMetadataIdentifier];
      v12 = v61;
      if (v64)
      {
        [v64 time];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v33 = [(NURenderNode *)v60 outputTimedMetadataSampleWithIdentifier:v41 atTime:&time error:a6];

      if (!v33)
      {
        goto LABEL_44;
      }
    }

    v34 = [v33 metadataGroup];

    if (v34)
    {
      v35 = [PIPortraitVideoMetadataSample alloc];
      v36 = [v33 metadataGroup];
      v37 = -[PIPortraitVideoMetadataSample initWithMetadataGroup:majorVersion:minorVersion:error:](v35, "initWithMetadataGroup:majorVersion:minorVersion:error:", v36, [v27 majorVersion], objc_msgSend(v27, "minorVersion"), a6);

      if (v37)
      {
        v59 = v26;
        v38 = v64;
        [v64 scale];
        if (NUScaleEqual() && [v64 evaluationMode] == 3 && objc_msgSend(v27, "renderingVersion") >= 2)
        {
          v39 = +[PIGlobalSettings globalSettings];
          v40 = [v39 cinematicAllowYUVSourceInput];

          if (v40)
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

        v42 = [v12 mutableCopy];
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
        v45 = [v38 scale];
        v47 = [v44 numberWithInt:{-[PIPortraitVideoRenderNode _portraitQualityForRenderScale:](v60, "_portraitQualityForRenderScale:", v45, v46)}];
        [v42 setObject:v47 forKeyedSubscript:@"renderQuality"];

        v48 = [v63 colorProperties];
        v49 = [v48 objectForKeyedSubscript:*MEMORY[0x1E6987DE8]];
        [v42 setObject:v49 forKeyedSubscript:@"sourceTransferFunction"];

        v50 = [MEMORY[0x1E696AD98] numberWithBool:v62];
        [v42 setObject:v50 forKeyedSubscript:@"useSourceBuffersDirectly"];

        v65.receiver = v60;
        v65.super_class = PIPortraitVideoRenderNode;
        v30 = [(NURenderNode *)&v65 resolvedNodeWithCachedInputs:v11 settings:v42 pipelineState:v38 error:a6];

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
    *a6 = v30 = 0;
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
    v52 = *a6;
    LODWORD(time.value) = 138543362;
    *(&time.value + 4) = v52;
    _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Failed to obtain video properties: %{public}@", &time, 0xCu);
  }

  v30 = 0;
LABEL_47:

  return v30;
}

- (BOOL)_prewarmPortraitRendererWithPipelineState:(id)a3 error:(id *)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v35 = NUAssertLogger_3781();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "state != nil"];
      *buf = 138543362;
      v62 = v36;
      _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v39 = NUAssertLogger_3781();
    v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v40)
      {
        v48 = dispatch_get_specific(*v37);
        v49 = MEMORY[0x1E696AF00];
        v50 = v48;
        v37 = [v49 callStackSymbols];
        v51 = [v37 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v48;
        v63 = 2114;
        v64 = v51;
        _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v40)
    {
      v41 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [v41 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v37;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v45 = _NUAssertFailHandler();
    goto LABEL_29;
  }

  if (!a4)
  {
    v42 = NUAssertLogger_3781();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v62 = v43;
      _os_log_error_impl(&dword_1C7694000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v37 = MEMORY[0x1E69B38E8];
    v44 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v39 = NUAssertLogger_3781();
    v45 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
    if (!v44)
    {
      if (v45)
      {
        v46 = [MEMORY[0x1E696AF00] callStackSymbols];
        v47 = [v46 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v62 = v47;
        _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v45)
    {
      v52 = dispatch_get_specific(*v37);
      v53 = MEMORY[0x1E696AF00];
      v54 = v52;
      v55 = [v53 callStackSymbols];
      v56 = [v55 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v62 = v52;
      v63 = 2114;
      v64 = v56;
      _os_log_error_impl(&dword_1C7694000, v39, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_31:

    _NUAssertFailHandler();
  }

  v7 = v6;
  v8 = [(NURenderNode *)self inputs];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];
  v10 = [v9 outputImageGeometry:a4];

  if (v10)
  {
    v11 = [(NURenderNode *)self inputs];
    v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695FA98]];
    v13 = [v12 outputImageGeometry:a4];

    if (v13)
    {
      v14 = [v7 scale];
      v16 = [(PIPortraitVideoRenderNode *)self _targetScaleForScale:v14, v15];
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x1E69B3B18]);
      [v10 extent];
      v20 = [v19 initWithExtent:buf renderScale:v16 orientation:{v18, objc_msgSend(v10, "orientation")}];
      v21 = [v7 device];
      v22 = v21 != 0;

      if (v21)
      {
        v59 = [(PIPortraitVideoRenderNode *)self _portraitQualityForRenderScale:v16, v18];
        v60 = [v7 device];
        v23 = [v60 metalDevice];
        v24 = [v20 scaledSize];
        v57 = v25;
        v58 = v24;
        v26 = v20;
        v27 = [v13 scaledSize];
        v29 = v28;
        v30 = [(PIPortraitVideoRenderNode *)self debugMode];
        if ((v30 - 2) >= 4)
        {
          v31 = 0;
        }

        else
        {
          v31 = v30 - 1;
        }

        v32 = [(PIPortraitVideoRenderNode *)self globalMetadata];
        v33 = v27;
        v20 = v26;
        [PIPortraitVideoRenderer prewarmRendererForDevice:v23 colorSize:v58 disparitySize:v57 quality:v33 debugMode:v29 globalRenderingMetadata:v59, v31, v32];
      }

      else
      {
        *a4 = [MEMORY[0x1E69B3A48] invalidError:@"No device specified for prewarm" object:0];
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

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (!a5)
  {
    v31 = NUAssertLogger_3781();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v40 = v32;
      _os_log_error_impl(&dword_1C7694000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v8 = NUAssertLogger_3781();
    v33 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        specific = dispatch_get_specific(*v12);
        v34 = MEMORY[0x1E696AF00];
        a5 = specific;
        v12 = [v34 callStackSymbols];
        self = [v12 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v40 = specific;
        v41 = 2114;
        v42 = self;
        _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v40 = v12;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v35 = "error != NULL";
    _NUAssertFailHandler();
LABEL_26:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_143_3842);
    goto LABEL_4;
  }

  specific = v9;
  v38 = 0;
  v11 = [(PIPortraitVideoRenderNode *)self _prewarmPortraitRendererWithPipelineState:v9 error:&v38];
  v12 = v38;
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
    v40 = v12;
    _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Failed to prewarm portrait renderer: %{public}@", buf, 0xCu);
  }

LABEL_6:
  if ([specific evaluationMode] == 1 || objc_msgSend(specific, "evaluationMode") == 3)
  {
    v14 = [specific scale];
    v16 = [(PIPortraitVideoRenderNode *)self _targetScaleForScale:v14, v15];
    v18 = v17;
    v19 = [specific copy];
    [v19 setScale:{v16, v18}];
    v37.receiver = self;
    v37.super_class = PIPortraitVideoRenderNode;
    v20 = [(NURenderNode *)&v37 nodeByReplayingAgainstCache:v8 pipelineState:v19 error:a5];
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
        v27 = [specific scale];
        v29 = [v26 initWithTargetScale:v27 effectiveScale:v28 sampleMode:v22 input:{v24, objc_msgSend(specific, "sampleMode"), v21}];
        v25 = [MEMORY[0x1E69B3C28] nodeFromCache:v29 cache:v8];

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
    v25 = [(NURenderNode *)&v36 nodeByReplayingAgainstCache:v8 pipelineState:specific error:a5];
  }

  return v25;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_targetScaleForScale:(id)a3
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
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v20 = v14;
        v21 = 2114;
        v22 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
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
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"debugMode"];
  v4 = [v3 integerValue];

  return v4;
}

- (NSArray)apertureKeyframes
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"apertureKeyframes"];

  return v3;
}

- (NSArray)disparityKeyframes
{
  v2 = [(NURenderNode *)self settings];
  v3 = [v2 objectForKeyedSubscript:@"disparityKeyframes"];

  return v3;
}

- (PIPortraitVideoRenderNode)initWithInput:(id)a3 disparityInput:(id)a4 disparityKeyframes:(id)a5 apertureKeyframes:(id)a6 debugMode:(int64_t)a7
{
  v26[2] = *MEMORY[0x1E69E9840];
  v13 = *MEMORY[0x1E695FA98];
  v25[0] = *MEMORY[0x1E695FAB0];
  v12 = v25[0];
  v25[1] = v13;
  v26[0] = a3;
  v26[1] = a4;
  v14 = MEMORY[0x1E695DF20];
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [v14 dictionaryWithObjects:v26 forKeys:v25 count:2];
  v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v20 setObject:v12 forKeyedSubscript:@"__dominantInputSettingsKey"];
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:a7];
  [v20 setObject:v21 forKeyedSubscript:@"debugMode"];

  [v20 setObject:v16 forKeyedSubscript:@"disparityKeyframes"];
  [v20 setObject:v15 forKeyedSubscript:@"apertureKeyframes"];

  v24.receiver = self;
  v24.super_class = PIPortraitVideoRenderNode;
  v22 = [(NURenderNode *)&v24 initWithSettings:v20 inputs:v19];

  return v22;
}

@end