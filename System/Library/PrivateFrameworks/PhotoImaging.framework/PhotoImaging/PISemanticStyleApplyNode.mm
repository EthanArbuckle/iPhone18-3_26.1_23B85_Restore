@interface PISemanticStyleApplyNode
- (PISemanticStyleApplyNode)initWithInput:(id)input style:(id)style thumbnail:(id)thumbnail;
- (PISemanticStyleApplyNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation PISemanticStyleApplyNode

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  cacheCopy = cache;
  stateCopy = state;
  if (![stateCopy evaluationMode])
  {
    v69.receiver = self;
    v69.super_class = PISemanticStyleApplyNode;
    v21 = [(NURenderNode *)&v69 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    goto LABEL_28;
  }

  if ([stateCopy auxiliaryImageType] != 1)
  {
    inputNode = [(PISemanticStyleApplyNode *)self inputNode];
    v21 = [inputNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

    goto LABEL_28;
  }

  errorCopy = error;
  styleNode = [(PISemanticStyleApplyNode *)self styleNode];
  settings = [styleNode settings];
  v12 = [settings objectForKeyedSubscript:@"cast"];
  v13 = PISemanticStyleCastFromString(v12);

  styleNode2 = [(PISemanticStyleApplyNode *)self styleNode];
  settings2 = [styleNode2 settings];
  v16 = [settings2 objectForKeyedSubscript:@"tone"];
  [v16 floatValue];
  styleNode3 = [(PISemanticStyleApplyNode *)self styleNode];
  settings3 = [styleNode3 settings];
  v19 = [settings3 objectForKeyedSubscript:@"color"];
  [v19 floatValue];
  v59 = v13;
  LODWORD(v13) = [v13 isEqualToString:@"None"];

  if (!v13)
  {
    v23 = [(NURenderNode *)self videoProperties:errorCopy];
    videoCorruptionInfo = [v23 videoCorruptionInfo];
    v25 = PFExists();

    if (v25)
    {
      inputNode2 = [(PISemanticStyleApplyNode *)self inputNode];
LABEL_11:
      v27 = inputNode2;
      v21 = [inputNode2 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];

LABEL_26:
      goto LABEL_27;
    }

    if ([stateCopy evaluationMode] == 2)
    {
      inputNode2 = [(PISemanticStyleApplyNode *)self styleNode];
      goto LABEL_11;
    }

    if ([stateCopy evaluationMode] == 1)
    {
      if (stateCopy)
      {
        [stateCopy time];
        if ((v67 & 0x100000000) != 0)
        {
          inputNode3 = [(PISemanticStyleApplyNode *)self inputNode];
          v29 = [inputNode3 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];

          if (!v29)
          {
            v21 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v30 = [v29 imageProperties:errorCopy];
          v31 = v30;
          if (!v30)
          {
            v21 = 0;
LABEL_43:

            goto LABEL_25;
          }

          semanticStyleProperties = [v30 semanticStyleProperties];
          v33 = semanticStyleProperties;
          if (semanticStyleProperties)
          {
            [semanticStyleProperties keyTime];
            if (v65)
            {
              v43 = [stateCopy copy];
              [v33 keyTime];
              v61 = v63;
              v62 = v64;
              [v43 setTime:&v61];
              [v43 setMediaComponentType:2];
              [v43 setDoNotOverride:1];
              styleNode4 = [(PISemanticStyleApplyNode *)self styleNode];
              v45 = [styleNode4 nodeByReplayingAgainstCache:cacheCopy pipelineState:v43 error:errorCopy];

              if (v45)
              {
                v58 = v45;
                thumbnailNode = [(PISemanticStyleApplyNode *)self thumbnailNode];
                v47 = thumbnailNode;
                v57 = v43;
                if (thumbnailNode)
                {
                  v48 = [thumbnailNode nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];
                }

                else
                {
                  inputNode4 = [(PISemanticStyleApplyNode *)self inputNode];
                  v48 = [inputNode4 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];
                }

                v50 = MEMORY[0x1E69B3C40];
                settings4 = [v58 settings];
                v52 = [v50 styleTransferThumbnailNodeWithInput:v48 settings:settings4];

                inputs = [v52 inputs];
                v56 = [v52 resolvedNodeWithCachedInputs:inputs cache:cacheCopy pipelineState:stateCopy error:errorCopy];

                v45 = v58;
                v54 = [MEMORY[0x1E69B3C40] styleTransferApplyNodeWithInput:v29 thumbnail:v56 target:v58 settings:MEMORY[0x1E695E0F8]];
                inputs2 = [v54 inputs];
                v21 = [v54 resolvedNodeWithCachedInputs:inputs2 cache:cacheCopy pipelineState:stateCopy error:errorCopy];

                v43 = v57;
              }

              else
              {
                v21 = 0;
              }

              goto LABEL_42;
            }

            v34 = [MEMORY[0x1E69B3A48] invalidError:@"Invalid key time" object:v33];
          }

          else
          {
            v34 = [MEMORY[0x1E69B3A48] missingError:@"Missing semantic style properties" object:v31];
          }

          v21 = 0;
          *errorCopy = v34;
LABEL_42:

          goto LABEL_43;
        }
      }

      else
      {
        v66 = 0;
        v67 = 0;
        v68 = 0;
      }
    }

    thumbnailNode2 = [(PISemanticStyleApplyNode *)self thumbnailNode];
    v36 = thumbnailNode2;
    if (thumbnailNode2)
    {
      inputNode5 = thumbnailNode2;
    }

    else
    {
      inputNode5 = [(PISemanticStyleApplyNode *)self inputNode];
    }

    v29 = inputNode5;

    v38 = MEMORY[0x1E69B3C40];
    inputNode6 = [(PISemanticStyleApplyNode *)self inputNode];
    styleNode5 = [(PISemanticStyleApplyNode *)self styleNode];
    v41 = [v38 styleTransferApplyNodeWithInput:inputNode6 thumbnail:v29 target:styleNode5 settings:MEMORY[0x1E695E0F8]];

    v21 = [v41 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];

    goto LABEL_25;
  }

  inputNode7 = [(PISemanticStyleApplyNode *)self inputNode];
  v21 = [inputNode7 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:errorCopy];

LABEL_27:
LABEL_28:

  return v21;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PISemanticStyleApplyNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:inputs settings:settings pipelineState:state error:error];

  return v6;
}

- (PISemanticStyleApplyNode)initWithInput:(id)input style:(id)style thumbnail:(id)thumbnail
{
  v42 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  styleCopy = style;
  thumbnailCopy = thumbnail;
  if (!inputCopy)
  {
    v15 = NUAssertLogger_11150();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v39 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11150();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*callStackSymbols);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        callStackSymbols = [v29 callStackSymbols];
        v31 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!styleCopy)
  {
    v22 = NUAssertLogger_11150();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "style != nil"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11150();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v25)
    {
      v32 = dispatch_get_specific(*callStackSymbols);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      callStackSymbols4 = [v33 callStackSymbols];
      v36 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = thumbnailCopy;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:inputCopy forKeyedSubscript:@"input"];
  [v12 setObject:styleCopy forKeyedSubscript:@"style"];
  [v12 setObject:v11 forKeyedSubscript:@"thumbnail"];
  v37.receiver = self;
  v37.super_class = PISemanticStyleApplyNode;
  v13 = [(NURenderNode *)&v37 initWithSettings:&unk_1F471FF78 inputs:v12];

  return v13;
}

- (PISemanticStyleApplyNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
  }
}

@end