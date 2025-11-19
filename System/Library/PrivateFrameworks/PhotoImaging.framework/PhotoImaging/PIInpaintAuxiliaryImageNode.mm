@interface PIInpaintAuxiliaryImageNode
+ (id)styleTransferSettingsForGeometry:(id)a3;
- (NURenderNode)inputNode;
- (NURenderNode)retouchNode;
- (PIInpaintAuxiliaryImageNode)initWithInputs:(id)a3 retouchNode:(id)a4 settings:(id)a5;
- (PIInpaintAuxiliaryImageNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PIInpaintAuxiliaryImageNode

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v8.receiver = self;
  v8.super_class = PIInpaintAuxiliaryImageNode;
  v6 = [(NURenderNode *)&v8 resolvedNodeWithCachedInputs:a3 settings:a4 pipelineState:a5 error:a6];

  return v6;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v58[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v9 evaluationMode])
  {
    v10 = [(PIInpaintAuxiliaryImageNode *)self inputNode];
    v11 = [(PIInpaintAuxiliaryImageNode *)self retouchNode];
    v12 = [(NURenderNode *)self inputs];
    v13 = [v12 mutableCopy];

    [v13 setObject:0 forKeyedSubscript:@"retouch"];
    v54 = a5;
    v55 = v8;
    if ([v9 auxiliaryImageType] == 7)
    {
      v53 = v13;
      v14 = [v10 outputImageGeometry:a5];
      v15 = [v14 size];
      [v14 size];
      v51 = v16;
      v52 = v15;
      if (v15 < v16)
      {
        v17 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:6 input:v10];

        v18 = [v17 outputImageGeometry:a5];

        v19 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:6 input:v11];
        v14 = v18;
        v11 = v19;
        v10 = v17;
      }

      v57[0] = @"inputPreserveColor";
      v57[1] = @"inputMixFactor";
      v58[0] = MEMORY[0x1E695E118];
      v20 = MEMORY[0x1E696AD98];
      v21 = +[PIGlobalSettings globalSettings];
      [v21 inpaintGainMapMixFactor];
      v22 = [v20 numberWithDouble:?];
      v58[1] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:2];

      v24 = [MEMORY[0x1E69B3C40] lightMapFromGainMap:v10 settings:v23];
      v25 = [objc_opt_class() styleTransferSettingsForGeometry:v14];
      v50 = v24;
      v49 = [MEMORY[0x1E69B3C40] styleTransferLearnNodeWithInput:v10 target:v24 settings:v25];
      v26 = [MEMORY[0x1E69B3C40] styleTransferApplyNodeWithInput:v11 thumbnail:0 target:? settings:?];
      v27 = [MEMORY[0x1E69B3C40] gainMapFromLightMap:v26 base:v11 settings:v23];

      if (v52 < v51)
      {
        v28 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:8 input:v27];

        v29 = [objc_alloc(MEMORY[0x1E69B3BC8]) initWithOrientation:8 input:v10];
        v27 = v28;
        v10 = v29;
      }

      v30 = v53;
      v31 = [PIInpaintCombinedMaskNode alloc];
      v32 = [(NURenderNode *)self settings];
      v33 = [(PIInpaintCombinedMaskNode *)v31 initWithSettings:v32 inputs:v53 mode:11];

      v34 = [[PIInfillCompositeNode alloc] initWithInput:v27 background:v10 matte:v33 settings:&unk_1F471FED8];
    }

    else
    {
      v36 = [PIInpaintCombinedMaskNode alloc];
      v37 = [(NURenderNode *)self settings];
      v38 = [(PIInpaintCombinedMaskNode *)v36 initWithSettings:v37 inputs:v13 mode:5];

      v39 = [[PIInfillFilterNode alloc] initWithInputImage:v10 inputMatte:v38 infillAlgorithm:4];
      v40 = [PIInpaintCombinedMaskNode alloc];
      v41 = [(NURenderNode *)self settings];
      v42 = [(PIInpaintCombinedMaskNode *)v40 initWithSettings:v41 inputs:v13 mode:9];

      v43 = [PIInfillCompositeNode alloc];
      v44 = [(PIInfillCompositeNode *)v43 initWithInput:v39 background:v10 matte:v42 settings:MEMORY[0x1E695E0F8]];

      v45 = [PIInpaintCombinedMaskNode alloc];
      v46 = [(NURenderNode *)self settings];
      v47 = [(PIInpaintCombinedMaskNode *)v45 initWithSettings:v46 inputs:v13 mode:2];

      v34 = [[PIInfillFilterNode alloc] initWithInputImage:v44 inputMatte:v47 infillAlgorithm:4];
      v30 = v13;
    }

    v8 = v55;
    v35 = [(NURenderNode *)v34 nodeByReplayingAgainstCache:v55 pipelineState:v9 error:v54];
  }

  else
  {
    v56.receiver = self;
    v56.super_class = PIInpaintAuxiliaryImageNode;
    v35 = [(NURenderNode *)&v56 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
  }

  return v35;
}

- (NURenderNode)retouchNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:@"retouch"];

  return v3;
}

- (NURenderNode)inputNode
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:@"input"];

  return v3;
}

- (PIInpaintAuxiliaryImageNode)initWithInputs:(id)a3 retouchNode:(id)a4 settings:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v16 = NUAssertLogger_6299();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs != nil"];
      *buf = 138543362;
      v49 = v17;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v21)
      {
        v34 = dispatch_get_specific(*v18);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        v18 = [v35 callStackSymbols];
        v37 = [v18 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v49 = v34;
        v50 = 2114;
        v51 = v37;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      v22 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v22 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v49 = v18;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    v26 = _NUAssertFailHandler();
    goto LABEL_23;
  }

  v11 = v10;
  if (!v10)
  {
    v23 = NUAssertLogger_6299();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v49 = v24;
      _os_log_error_impl(&dword_1C7694000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v25 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v26 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v25)
    {
      if (v26)
      {
        v27 = [MEMORY[0x1E696AF00] callStackSymbols];
        v18 = [v27 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v49 = v18;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

LABEL_25:

      v31 = _NUAssertFailHandler();
      goto LABEL_26;
    }

LABEL_23:
    if (v26)
    {
      v38 = dispatch_get_specific(*v18);
      v39 = MEMORY[0x1E696AF00];
      v40 = v38;
      v18 = [v39 callStackSymbols];
      v41 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v49 = v38;
      v50 = 2114;
      v51 = v41;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

    goto LABEL_25;
  }

  if (!v9)
  {
    v28 = NUAssertLogger_6299();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "retouchNode != nil"];
      *buf = 138543362;
      v49 = v29;
      _os_log_error_impl(&dword_1C7694000, v28, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x1E69B38E8];
    v30 = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v20 = NUAssertLogger_6299();
    v31 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (!v30)
    {
      if (v31)
      {
        v32 = [MEMORY[0x1E696AF00] callStackSymbols];
        v33 = [v32 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v49 = v33;
        _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      goto LABEL_28;
    }

LABEL_26:
    if (v31)
    {
      v42 = dispatch_get_specific(*v18);
      v43 = MEMORY[0x1E696AF00];
      v44 = v42;
      v45 = [v43 callStackSymbols];
      v46 = [v45 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v49 = v42;
      v50 = 2114;
      v51 = v46;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }

LABEL_28:

    _NUAssertFailHandler();
  }

  v12 = [v8 mutableCopy];
  [v12 setObject:v9 forKeyedSubscript:@"retouch"];
  v13 = [v11 mutableCopy];
  [v13 setObject:@"input" forKeyedSubscript:@"__dominantInputSettingsKey"];
  v47.receiver = self;
  v47.super_class = PIInpaintAuxiliaryImageNode;
  v14 = [(NURenderNode *)&v47 initWithSettings:v13 inputs:v12];

  return v14;
}

- (PIInpaintAuxiliaryImageNode)initWithSettings:(id)a3 inputs:(id)a4
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_198_6335);
  }
}

+ (id)styleTransferSettingsForGeometry:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69B3CD8] defaultImageSettingsForScale:{*MEMORY[0x1E69B3918], *(MEMORY[0x1E69B3918] + 8)}];
  v4 = MEMORY[0x1E69B3930];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B3930]];
  v6 = [v5 mutableCopy];

  v7 = MEMORY[0x1E69B3940];
  v8 = [v3 objectForKeyedSubscript:*MEMORY[0x1E69B3940]];
  [v6 setObject:@"inpaint-aux" forKeyedSubscript:@"usage"];
  v9 = *v7;
  v12[0] = *v4;
  v12[1] = v9;
  v13[0] = v6;
  v13[1] = v8;
  v12[2] = *MEMORY[0x1E69B3938];
  v13[2] = @"displayP3Linear";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

@end