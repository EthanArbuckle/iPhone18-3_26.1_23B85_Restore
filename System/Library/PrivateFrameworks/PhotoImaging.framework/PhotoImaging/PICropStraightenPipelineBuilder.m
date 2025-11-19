@interface PICropStraightenPipelineBuilder
- (BOOL)buildPipeline:(id)a3 error:(id *)a4;
- (PICropStraightenPipelineBuilder)init;
- (PICropStraightenPipelineBuilder)initWithChannelFormat:(id)a3;
- (id)_buildCropPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6;
- (id)_buildStraightenPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6;
@end

@implementation PICropStraightenPipelineBuilder

- (id)_buildCropPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6
{
  v8 = MEMORY[0x1E69B39E0];
  v9 = a5;
  v26 = a4;
  v25 = a3;
  v24 = [v9 objectForKeyedSubscript:@"xOrigin"];
  v10 = [v8 staticExpression:v24];
  v11 = MEMORY[0x1E69B39E0];
  v12 = [v9 objectForKeyedSubscript:@"yOrigin"];
  v13 = [v11 staticExpression:v12];
  v14 = MEMORY[0x1E69B39E0];
  v15 = [v9 objectForKeyedSubscript:@"width"];
  v16 = [v14 staticExpression:v15];
  v17 = MEMORY[0x1E69B39E0];
  v18 = [v9 objectForKeyedSubscript:@"height"];

  v19 = [v17 staticExpression:v18];
  v20 = [v8 rectWithX:v10 y:v13 width:v16 height:v19];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __77__PICropStraightenPipelineBuilder__buildCropPipeline_input_adjustment_error___block_invoke;
  v28[3] = &unk_1E82AA600;
  v29 = v20;
  v30 = a6;
  v21 = v20;
  v22 = [v25 processContainer:v26 forEachComponent:v28 error:a6];

  return v22;
}

id __77__PICropStraightenPipelineBuilder__buildCropPipeline_input_adjustment_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 addCropPipeline];
  v10 = [MEMORY[0x1E69B39E8] name:@"media"];
  v18 = 0;
  v11 = [v7 connect:v9 input:v10 to:v8 error:&v18];
  v12 = v18;

  if (v11)
  {
    if ([v7 assign:v9 inputNamed:@"pixelRect" to:*(a1 + 32) error:*(a1 + 40)])
    {
      v13 = [MEMORY[0x1E69B39E8] name:@"media"];
      v14 = [v9 outputPortMatching:v13];

      goto LABEL_7;
    }

    v15 = MEMORY[0x1E69B3A48];
    v16 = @"Failed to assign crop rect expression";
  }

  else
  {
    v15 = MEMORY[0x1E69B3A48];
    v16 = @"Failed to connect input media component";
  }

  [v15 errorWithCode:1 reason:v16 object:v8 underlyingError:v12];
  *a4 = v14 = 0;
LABEL_7:

  return v14;
}

- (id)_buildStraightenPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6
{
  v9 = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PICropStraightenPipelineBuilder__buildStraightenPipeline_input_adjustment_error___block_invoke;
  v13[3] = &unk_1E82AA5D8;
  v14 = v9;
  v10 = v9;
  v11 = [a3 processContainer:a4 forEachComponent:v13 error:a6];

  return v11;
}

id __83__PICropStraightenPipelineBuilder__buildStraightenPipeline_input_adjustment_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = [v6 addStraightenPipeline];
  v9 = [MEMORY[0x1E69B39E8] name:@"media"];
  v35 = 0;
  v28 = v6;
  v29 = v8;
  v10 = [v6 connect:v8 input:v9 to:v7 error:&v35];
  v11 = v35;

  if (v10)
  {
    v26 = v7;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v12 = [&unk_1F471FCB0 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v25 = a4;
      v14 = *v32;
      while (2)
      {
        v15 = 0;
        v16 = v11;
        do
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(&unk_1F471FCB0);
          }

          v17 = *(*(&v31 + 1) + 8 * v15);
          v18 = [MEMORY[0x1E69B39E8] name:{v17, v25}];
          v19 = *(a1 + 32);
          v20 = [MEMORY[0x1E69B39E8] name:v17];
          v30 = 0;
          v21 = [v28 connect:v29 input:v18 to:v19 subport:v20 error:&v30];
          v11 = v30;

          if (!v21)
          {
            [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to connect straighten setting" object:v17 underlyingError:v11];
            *v25 = v23 = 0;
            goto LABEL_13;
          }

          ++v15;
          v16 = v11;
        }

        while (v13 != v15);
        v13 = [&unk_1F471FCB0 countByEnumeratingWithState:&v31 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v22 = [MEMORY[0x1E69B39E8] name:@"media"];
    v23 = [v29 outputPortMatching:v22];

LABEL_13:
    v7 = v26;
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to connect input media component" object:v7 underlyingError:v11];
    *a4 = v23 = 0;
  }

  return v23;
}

- (BOOL)buildPipeline:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v7 = [(PICropStraightenPipelineBuilder *)self identifier];
  v8 = [v6 schemaWithIdentifier:v7];

  v29 = v8;
  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v36 = 0;
  v10 = [v5 addInputChannel:v9 error:&v36];
  v11 = v36;

  v12 = objc_alloc(MEMORY[0x1E69B39D0]);
  v13 = [(PICropStraightenPipelineBuilder *)self format];
  v14 = [v12 initWithName:@"media" format:v13];

  v35 = 0;
  v15 = [v5 addInputChannel:v14 error:&v35];
  v16 = v35;

  v34 = 0;
  v17 = [v5 addOutputChannel:v14 error:&v34];
  v18 = v34;

  if (v10 && v15 && v17)
  {
    v19 = MEMORY[0x1E69B39E0];
    v20 = [v10 objectForKeyedSubscript:@"enabled"];
    v21 = [v19 staticExpression:v20];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __55__PICropStraightenPipelineBuilder_buildPipeline_error___block_invoke;
    v30[3] = &unk_1E82AA5B0;
    v30[4] = self;
    v31 = v10;
    v33 = a4;
    v22 = v5;
    v32 = v22;
    v23 = [v22 switchOn:v21 with:v15 block:v30 error:a4];
    if (v23)
    {
      v24 = [v22 connectInputPort:v17 toOutputPort:v23 error:a4];
    }

    else
    {
      v24 = 0;
    }

    v26 = v29;
  }

  else
  {
    v25 = MEMORY[0x1E69B3A48];
    v21 = [v5 identifier];
    [v25 errorWithCode:1 reason:@"Failed to setup pipeline input and output ports" object:v21 underlyingError:v18];
    v24 = 0;
    *a4 = v26 = v29;
  }

  return v24;
}

id __55__PICropStraightenPipelineBuilder_buildPipeline_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v21 = 0;
  v8 = [v6 _buildStraightenPipeline:v5 input:a3 adjustment:v7 error:&v21];
  v9 = v21;
  if (v8)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v20 = 0;
    v12 = [v10 _buildCropPipeline:v5 input:v8 adjustment:v11 error:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = v12;
      v9 = v13;
      v15 = v14;
    }

    else
    {
      v17 = MEMORY[0x1E69B3A48];
      v18 = [*(a1 + 48) identifier];
      **(a1 + 56) = [v17 errorWithCode:1 reason:@"Failed to build crop pipeline" object:v18 underlyingError:v13];

      v14 = 0;
      v15 = 0;
      v9 = v13;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69B3A48];
    v14 = [*(a1 + 48) identifier];
    [v16 errorWithCode:1 reason:@"Failed to build straighten pipeline" object:v14 underlyingError:v9];
    **(a1 + 56) = v15 = 0;
  }

  return v15;
}

- (PICropStraightenPipelineBuilder)initWithChannelFormat:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v9 = NUAssertLogger_7848();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "format != nil"];
      *buf = 138543362;
      v24 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_7848();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = v4;
  v22.receiver = self;
  v22.super_class = PICropStraightenPipelineBuilder;
  v6 = [(PICropStraightenPipelineBuilder *)&v22 init];
  format = v6->_format;
  v6->_format = v5;

  return v6;
}

- (PICropStraightenPipelineBuilder)init
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
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7864);
        }

LABEL_11:
        v18 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v20 = MEMORY[0x1E696AF00];
          v21 = specific;
          v22 = v18;
          v23 = [v20 callStackSymbols];
          v24 = [v23 componentsJoinedByString:@"\n"];
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
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7864);
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_7864);
  }
}

@end