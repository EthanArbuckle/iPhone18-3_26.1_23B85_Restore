@interface PISemanticStyleApplyNode
- (PISemanticStyleApplyNode)initWithInput:(id)a3 style:(id)a4 thumbnail:(id)a5;
- (PISemanticStyleApplyNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PISemanticStyleApplyNode

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if (![v9 evaluationMode])
  {
    v69.receiver = self;
    v69.super_class = PISemanticStyleApplyNode;
    v21 = [(NURenderNode *)&v69 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
    goto LABEL_28;
  }

  if ([v9 auxiliaryImageType] != 1)
  {
    v22 = [(PISemanticStyleApplyNode *)self inputNode];
    v21 = [v22 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

    goto LABEL_28;
  }

  v60 = a5;
  v10 = [(PISemanticStyleApplyNode *)self styleNode];
  v11 = [v10 settings];
  v12 = [v11 objectForKeyedSubscript:@"cast"];
  v13 = PISemanticStyleCastFromString(v12);

  v14 = [(PISemanticStyleApplyNode *)self styleNode];
  v15 = [v14 settings];
  v16 = [v15 objectForKeyedSubscript:@"tone"];
  [v16 floatValue];
  v17 = [(PISemanticStyleApplyNode *)self styleNode];
  v18 = [v17 settings];
  v19 = [v18 objectForKeyedSubscript:@"color"];
  [v19 floatValue];
  v59 = v13;
  LODWORD(v13) = [v13 isEqualToString:@"None"];

  if (!v13)
  {
    v23 = [(NURenderNode *)self videoProperties:v60];
    v24 = [v23 videoCorruptionInfo];
    v25 = PFExists();

    if (v25)
    {
      v26 = [(PISemanticStyleApplyNode *)self inputNode];
LABEL_11:
      v27 = v26;
      v21 = [v26 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];

LABEL_26:
      goto LABEL_27;
    }

    if ([v9 evaluationMode] == 2)
    {
      v26 = [(PISemanticStyleApplyNode *)self styleNode];
      goto LABEL_11;
    }

    if ([v9 evaluationMode] == 1)
    {
      if (v9)
      {
        [v9 time];
        if ((v67 & 0x100000000) != 0)
        {
          v28 = [(PISemanticStyleApplyNode *)self inputNode];
          v29 = [v28 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];

          if (!v29)
          {
            v21 = 0;
LABEL_25:

            goto LABEL_26;
          }

          v30 = [v29 imageProperties:v60];
          v31 = v30;
          if (!v30)
          {
            v21 = 0;
LABEL_43:

            goto LABEL_25;
          }

          v32 = [v30 semanticStyleProperties];
          v33 = v32;
          if (v32)
          {
            [v32 keyTime];
            if (v65)
            {
              v43 = [v9 copy];
              [v33 keyTime];
              v61 = v63;
              v62 = v64;
              [v43 setTime:&v61];
              [v43 setMediaComponentType:2];
              [v43 setDoNotOverride:1];
              v44 = [(PISemanticStyleApplyNode *)self styleNode];
              v45 = [v44 nodeByReplayingAgainstCache:v8 pipelineState:v43 error:v60];

              if (v45)
              {
                v58 = v45;
                v46 = [(PISemanticStyleApplyNode *)self thumbnailNode];
                v47 = v46;
                v57 = v43;
                if (v46)
                {
                  v48 = [v46 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];
                }

                else
                {
                  v49 = [(PISemanticStyleApplyNode *)self inputNode];
                  v48 = [v49 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];
                }

                v50 = MEMORY[0x1E69B3C40];
                v51 = [v58 settings];
                v52 = [v50 styleTransferThumbnailNodeWithInput:v48 settings:v51];

                v53 = [v52 inputs];
                v56 = [v52 resolvedNodeWithCachedInputs:v53 cache:v8 pipelineState:v9 error:v60];

                v45 = v58;
                v54 = [MEMORY[0x1E69B3C40] styleTransferApplyNodeWithInput:v29 thumbnail:v56 target:v58 settings:MEMORY[0x1E695E0F8]];
                v55 = [v54 inputs];
                v21 = [v54 resolvedNodeWithCachedInputs:v55 cache:v8 pipelineState:v9 error:v60];

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
          *v60 = v34;
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

    v35 = [(PISemanticStyleApplyNode *)self thumbnailNode];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = [(PISemanticStyleApplyNode *)self inputNode];
    }

    v29 = v37;

    v38 = MEMORY[0x1E69B3C40];
    v39 = [(PISemanticStyleApplyNode *)self inputNode];
    v40 = [(PISemanticStyleApplyNode *)self styleNode];
    v41 = [v38 styleTransferApplyNodeWithInput:v39 thumbnail:v29 target:v40 settings:MEMORY[0x1E695E0F8]];

    v21 = [v41 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];

    goto LABEL_25;
  }

  v20 = [(PISemanticStyleApplyNode *)self inputNode];
  v21 = [v20 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:v60];

LABEL_27:
LABEL_28:

  return v21;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PISemanticStyleApplyNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (PISemanticStyleApplyNode)initWithInput:(id)a3 style:(id)a4 thumbnail:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v15 = NUAssertLogger_11150();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v39 = v16;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11150();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v28 = dispatch_get_specific(*v17);
        v29 = MEMORY[0x1E696AF00];
        v30 = v28;
        v17 = [v29 callStackSymbols];
        v31 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v39 = v28;
        v40 = 2114;
        v41 = v31;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      v21 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v39 = v17;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v25 = _NUAssertFailHandler();
    goto LABEL_17;
  }

  if (!v9)
  {
    v22 = NUAssertLogger_11150();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "style != nil"];
      *buf = 138543362;
      v39 = v23;
      _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v17 = MEMORY[0x1E69B38E8];
    v24 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v19 = NUAssertLogger_11150();
    v25 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!v24)
    {
      if (v25)
      {
        v26 = [MEMORY[0x1E696AF00] callStackSymbols];
        v27 = [v26 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v39 = v27;
        _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_19;
    }

LABEL_17:
    if (v25)
    {
      v32 = dispatch_get_specific(*v17);
      v33 = MEMORY[0x1E696AF00];
      v34 = v32;
      v35 = [v33 callStackSymbols];
      v36 = [v35 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v39 = v32;
      v40 = 2114;
      v41 = v36;
      _os_log_error_impl(&dword_1C7694000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_19:

    _NUAssertFailHandler();
  }

  v11 = v10;
  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v12 setObject:v8 forKeyedSubscript:@"input"];
  [v12 setObject:v9 forKeyedSubscript:@"style"];
  [v12 setObject:v11 forKeyedSubscript:@"thumbnail"];
  v37.receiver = self;
  v37.super_class = PISemanticStyleApplyNode;
  v13 = [(NURenderNode *)&v37 initWithSettings:&unk_1F471FF78 inputs:v12];

  return v13;
}

- (PISemanticStyleApplyNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
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
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
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