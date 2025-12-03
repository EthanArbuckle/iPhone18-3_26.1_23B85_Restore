@interface PIOrientationPipelineBuilder
- (BOOL)buildPipeline:(id)pipeline error:(id *)error;
- (PIOrientationPipelineBuilder)init;
- (PIOrientationPipelineBuilder)initWithChannelFormat:(id)format;
- (id)_buildOrientationPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment error:(id *)error;
@end

@implementation PIOrientationPipelineBuilder

- (id)_buildOrientationPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment error:(id *)error
{
  pipelineCopy = pipeline;
  inputCopy = input;
  adjustmentCopy = adjustment;
  v12 = [MEMORY[0x1E69B39E8] name:@"value"];
  v13 = [adjustmentCopy subportMatching:v12];

  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __81__PIOrientationPipelineBuilder__buildOrientationPipeline_input_adjustment_error___block_invoke;
    v16[3] = &unk_1E82AA5D8;
    v17 = v13;
    v14 = [pipelineCopy processContainer:inputCopy forEachComponent:v16 error:error];
  }

  else
  {
    [MEMORY[0x1E69B3A48] notFoundError:@"Could not find orientation value subport" object:adjustmentCopy];
    *error = v14 = 0;
  }

  return v14;
}

id __81__PIOrientationPipelineBuilder__buildOrientationPipeline_input_adjustment_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = *(a1 + 32);
  v20 = 0;
  v9 = [a2 applyOrientation:v8 to:v7 error:&v20];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E69B3A48];
    v13 = *(a1 + 32);
    v21[0] = @"orientation";
    v21[1] = @"component";
    v22[0] = v13;
    v22[1] = v7;
    v14 = MEMORY[0x1E695DF20];
    v15 = v20;
    v16 = [v14 dictionaryWithObjects:v22 forKeys:v21 count:2];
    v17 = [v12 errorWithCode:1 reason:@"Failed to apply orientation" object:v16 underlyingError:v15];
    v18 = v17;

    *a4 = v17;
  }

  return v10;
}

- (BOOL)buildPipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  mEMORY[0x1E69B3CA8] = [MEMORY[0x1E69B3CA8] sharedRegistry];
  identifier = [(PIOrientationPipelineBuilder *)self identifier];
  v8 = [mEMORY[0x1E69B3CA8] schemaWithIdentifier:identifier];

  v28 = v8;
  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v33 = 0;
  v10 = [pipelineCopy addInputChannel:v9 error:&v33];
  v11 = v33;

  v12 = objc_alloc(MEMORY[0x1E69B39D0]);
  format = [(PIOrientationPipelineBuilder *)self format];
  v14 = [v12 initWithName:@"media" format:format];

  v32 = 0;
  v15 = [pipelineCopy addInputChannel:v14 error:&v32];
  v16 = v32;

  v31 = 0;
  v17 = [pipelineCopy addOutputChannel:v14 error:&v31];
  v18 = v31;

  if (v10 && v15 && v17)
  {
    v19 = MEMORY[0x1E69B39E0];
    v20 = [MEMORY[0x1E69B39E0] staticExpression:v10];
    identifier2 = [v19 isNotNil:v20];

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __52__PIOrientationPipelineBuilder_buildPipeline_error___block_invoke;
    v29[3] = &unk_1E82AB080;
    v29[4] = self;
    v30 = v10;
    v22 = [pipelineCopy switchOn:identifier2 with:v15 block:v29 error:error];
    if (v22)
    {
      v23 = [pipelineCopy connectInputPort:v17 toOutputPort:v22 error:error];
    }

    else
    {
      v23 = 0;
    }

    v25 = v28;
  }

  else
  {
    v24 = MEMORY[0x1E69B3A48];
    identifier2 = [pipelineCopy identifier];
    [v24 errorWithCode:1 reason:@"Failed to setup pipeline input and output ports" object:identifier2 underlyingError:v18];
    v23 = 0;
    *error = v25 = v28;
  }

  return v23;
}

- (PIOrientationPipelineBuilder)initWithChannelFormat:(id)format
{
  v27 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v9 = NUAssertLogger_20();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v24 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_20();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = formatCopy;
  v22.receiver = self;
  v22.super_class = PIOrientationPipelineBuilder;
  v6 = [(PIOrientationPipelineBuilder *)&v22 init];
  format = v6->_format;
  v6->_format = v5;

  return v6;
}

- (PIOrientationPipelineBuilder)init
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v4 = MEMORY[0x1E69B3D70];
    v5 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = v5;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = NSStringFromSelector(a2);
      v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C7694000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v12 = *v3;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v12 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          callStackSymbols = [v20 callStackSymbols];
          v24 = [callStackSymbols componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v27 = specific;
          v28 = 2114;
          v29 = v24;
          _os_log_error_impl(&dword_1C7694000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v13 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols2 = [v14 callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v17;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v25 = objc_opt_class();
    NSStringFromClass(v25);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_28);
  }
}

@end