@interface PICinematicAudioRenderNode
- (BOOL)shouldInvalidateCachedAudioMix;
- (PICinematicAudioRenderNode)initWithInput:(id)input dialogMixBias:(double)bias renderingStyle:(id)style;
- (id)_evaluateAudioMix:(id *)mix;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation PICinematicAudioRenderNode

- (id)_evaluateAudioMix:(id *)mix
{
  v61 = *MEMORY[0x1E69E9840];
  if (!mix)
  {
    v28 = NUAssertLogger_21731();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v30 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v32 = NUAssertLogger_21731();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v33)
      {
        v36 = dispatch_get_specific(*v30);
        v37 = MEMORY[0x1E696AF00];
        v38 = v36;
        callStackSymbols = [v37 callStackSymbols];
        v40 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v40;
        _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v33)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v35 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v35;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_32;
  }

  v5 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v6 = [v5 outputVideo:mix];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v7 = [v5 videoProperties:mix];
  v8 = v7;
  if (v7)
  {
    cinematicAudioMixInputParameters = [v7 cinematicAudioMixInputParameters];
    v10 = [cinematicAudioMixInputParameters mutableCopy];

    if (!v10)
    {
      [MEMORY[0x1E69B3A48] missingError:@"Missing cinematic audio mix input parameters" object:v8];
      *mix = v15 = 0;
LABEL_19:

      goto LABEL_20;
    }

    [(PICinematicAudioRenderNode *)self dialogMixBias];
    *&v11 = v11;
    *buf = *MEMORY[0x1E6960CC0];
    v54 = *buf;
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    v12 = *&buf[16];
    [v10 setDialogMixBias:buf atTime:v11];
    *&v13 = [(PICinematicAudioRenderNode *)self renderingStyle];
    *buf = v54;
    *&buf[16] = v12;
    [v10 setRenderingStyle:buf atTime:v13];
    v14 = [v5 outputAudioMix:mix];
    v15 = [v14 mutableCopy];
    if (!v14)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63_21743);
      }

      v16 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        v17 = *mix;
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_INFO, "Input has no audio mix (%@), creating a new one..", buf, 0xCu);
      }

      audioMix = [MEMORY[0x1E6988038] audioMix];

      v15 = audioMix;
    }

    inputParameters = [v15 inputParameters];
    v20 = [inputParameters count];

    if (!v20)
    {
      v59 = v10;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
      [v15 setInputParameters:v26];
      goto LABEL_18;
    }

    v21 = [MEMORY[0x1E69B3D40] cinematicAudioTrackInAsset:v6];
    if (v21)
    {
      v22 = v21;
      array = [MEMORY[0x1E695DF70] array];
      inputParameters2 = [v15 inputParameters];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __48__PICinematicAudioRenderNode__evaluateAudioMix___block_invoke;
      v55[3] = &unk_1E82ABBA8;
      v56 = v22;
      selfCopy = self;
      v58 = array;
      v25 = array;
      v26 = v22;
      [inputParameters2 enumerateObjectsUsingBlock:v55];

      [v15 setInputParameters:v25];
LABEL_18:

      [(PICinematicAudioRenderNode *)self dialogMixBias];
      [(PICinematicAudioRenderNode *)self setCachedDialogMixBias:?];
      [(PICinematicAudioRenderNode *)self setCachedRenderingStyle:[(PICinematicAudioRenderNode *)self renderingStyle]];

      goto LABEL_19;
    }

LABEL_32:
    v41 = NUAssertLogger_21731();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing ambisonic track"];
      *buf = 138543362;
      *&buf[4] = v42;
      _os_log_error_impl(&dword_1C7694000, v41, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v43 = MEMORY[0x1E69B38E8];
    v44 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v45 = NUAssertLogger_21731();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v49 = dispatch_get_specific(*v43);
        v50 = MEMORY[0x1E696AF00];
        v51 = v49;
        callStackSymbols3 = [v50 callStackSymbols];
        v53 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v53;
        _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v48;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v15 = 0;
LABEL_20:

LABEL_21:

  return v15;
}

void __48__PICinematicAudioRenderNode__evaluateAudioMix___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 trackID];
  if (v4 == [a1[4] trackID])
  {
    v5 = [v3 mutableCopy];

    [a1[5] dialogMixBias];
    *&v6 = v6;
    v10 = *MEMORY[0x1E6960CC0];
    v9 = v10;
    v11 = *(MEMORY[0x1E6960CC0] + 16);
    v7 = v11;
    [v5 setDialogMixBias:&v10 atTime:v6];
    *&v8 = [a1[5] renderingStyle];
    v10 = v9;
    v11 = v7;
    [v5 setRenderingStyle:&v10 atTime:v8];
    [a1[6] addObject:v5];
    v3 = v5;
  }

  else
  {
    [a1[6] addObject:v3];
  }
}

- (BOOL)shouldInvalidateCachedAudioMix
{
  [(PICinematicAudioRenderNode *)self dialogMixBias];
  v4 = v3;
  [(PICinematicAudioRenderNode *)self cachedDialogMixBias];
  v6 = vabdd_f64(v4, v5);
  renderingStyle = [(PICinematicAudioRenderNode *)self renderingStyle];
  cachedRenderingStyle = [(PICinematicAudioRenderNode *)self cachedRenderingStyle];
  return v6 > 0.01 || renderingStyle != cachedRenderingStyle;
}

- (id)_evaluateVideoComposition:(id *)composition
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 outputVideoComposition:composition];

  return v5;
}

- (id)_evaluateVideo:(id *)video
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 outputVideo:video];

  return v5;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PICinematicAudioRenderNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  stateCopy = state;
  cacheCopy = cache;
  if ([stateCopy evaluationMode] == 2)
  {
    v13.receiver = self;
    v13.super_class = PICinematicAudioRenderNode;
    v10 = [(NURenderNode *)&v13 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

    [(PICinematicAudioRenderNode *)self dialogMixBias];
    [v10 setDialogMixBias:?];
    [v10 setRenderingStyle:{-[PICinematicAudioRenderNode renderingStyle](self, "renderingStyle")}];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = PICinematicAudioRenderNode;
    v10 = [(NURenderNode *)&v12 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
  }

  return v10;
}

- (PICinematicAudioRenderNode)initWithInput:(id)input dialogMixBias:(double)bias renderingStyle:(id)style
{
  v22 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  styleCopy = style;
  v18 = *MEMORY[0x1E695FAB0];
  v19 = inputCopy;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v17.receiver = self;
  v17.super_class = PICinematicAudioRenderNode;
  v11 = [(NURenderNode *)&v17 initWithSettings:MEMORY[0x1E695E0F8] inputs:v10];
  v12 = v11;
  if (v11)
  {
    [(PICinematicAudioRenderNode *)v11 setDialogMixBias:bias];
    v13 = styleCopy;
    if (([v13 isEqualToString:@"original"] & 1) == 0)
    {
      if ([v13 isEqualToString:@"voice"])
      {
        v14 = 0;
        goto LABEL_10;
      }

      if ([v13 isEqualToString:@"studioVoice"])
      {
        v14 = 1;
        goto LABEL_10;
      }

      if ([v13 isEqualToString:@"onCameraVoice"])
      {
        v14 = 2;
        goto LABEL_10;
      }

      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_63_21743);
      }

      v16 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v13;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Unexpected rendering style string %@ - defaulting to standard", buf, 0xCu);
      }
    }

    v14 = 7;
LABEL_10:

    [(PICinematicAudioRenderNode *)v12 setRenderingStyle:v14];
  }

  return v12;
}

@end