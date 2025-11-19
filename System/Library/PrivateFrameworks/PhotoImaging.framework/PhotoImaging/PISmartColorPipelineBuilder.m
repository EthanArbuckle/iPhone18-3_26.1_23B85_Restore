@interface PISmartColorPipelineBuilder
- (BOOL)buildPipeline:(id)a3 error:(id *)a4;
- (id)_buildPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6;
@end

@implementation PISmartColorPipelineBuilder

- (id)_buildPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 addCIFilterPipelineWithName:@"CISmartColorFilter" error:a6];
  if (v12 && ([MEMORY[0x1E69B39E8] primary], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v9, "connect:input:to:error:", v12, v13, v10, a6), v13, v14))
  {
    v46 = v10;
    v15 = MEMORY[0x1E69B39E0];
    v16 = [v11 objectForKeyedSubscript:@"inputCast"];
    v17 = [v15 staticExpression:v16];
    v18 = MEMORY[0x1E69B39E0];
    v19 = [v11 objectForKeyedSubscript:@"offsetCast"];
    v20 = [v18 staticExpression:v19];
    v21 = [v17 plus:v20];

    v47 = v21;
    if ([v9 assign:v12 inputNamed:@"inputCast" to:v21 error:a6])
    {
      v22 = MEMORY[0x1E69B39E0];
      v23 = [v11 objectForKeyedSubscript:@"inputSaturation"];
      v24 = [v22 staticExpression:v23];
      v25 = MEMORY[0x1E69B39E0];
      v26 = [v11 objectForKeyedSubscript:@"offsetSaturation"];
      v27 = [v25 staticExpression:v26];
      v28 = [v24 plus:v27];

      if ([v9 assign:v12 inputNamed:@"inputVibrancy" to:v28 error:a6])
      {
        v29 = [MEMORY[0x1E69B39E8] primary];
        v30 = [v12 outputPortMatching:v29];

        v31 = [v9 addCIFilterPipelineWithName:@"CIVibrance" error:a6];
        if (v31)
        {
          v32 = [MEMORY[0x1E69B39E8] primary];
          v45 = v30;
          v33 = [v9 connect:v31 input:v32 to:v30 error:a6];

          if (v33)
          {
            v34 = MEMORY[0x1E69B39E0];
            v44 = [v11 objectForKeyedSubscript:@"inputContrast"];
            v35 = [v34 staticExpression:v44];
            v36 = MEMORY[0x1E69B39E0];
            v37 = [v11 objectForKeyedSubscript:@"offsetContrast"];
            v38 = [v36 staticExpression:v37];
            v39 = [v35 plus:v38];

            v40 = v39;
            if ([v9 assign:v31 inputNamed:@"inputAmount" to:v39 error:a6])
            {
              v41 = [MEMORY[0x1E69B39E8] primary];
              v42 = [v31 outputPortMatching:v41];
            }

            else
            {
              v42 = 0;
            }

            v30 = v45;
            v10 = v46;
          }

          else
          {
            v42 = 0;
            v30 = v45;
          }
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (BOOL)buildPipeline:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v7 = [(PISmartColorPipelineBuilder *)self identifier];
  v8 = [v6 schemaWithIdentifier:v7];

  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v33 = 0;
  v10 = [v5 addInputChannel:v9 error:&v33];
  v11 = v33;

  v12 = [MEMORY[0x1E69B39D0] primary];
  v32 = 0;
  v13 = [v5 addInputChannel:v12 error:&v32];
  v14 = v32;

  if (v10 && v13)
  {
    v15 = MEMORY[0x1E69B39E0];
    v16 = [v10 objectForKeyedSubscript:@"enabled"];
    v17 = [v15 staticExpression:v16];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__PISmartColorPipelineBuilder_buildPipeline_error___block_invoke;
    v30[3] = &unk_1E82AB080;
    v30[4] = self;
    v31 = v10;
    v18 = [v5 switchOn:v17 with:v13 block:v30 error:a4];
    if (v18)
    {
      v19 = [MEMORY[0x1E69B39D0] primary];
      v29 = 0;
      v20 = [v5 addOutputChannel:v19 error:&v29];
      v21 = v29;

      if (v20)
      {
        v22 = [v5 connectInputPort:v20 toOutputPort:v18 error:a4];
      }

      else
      {
        v24 = MEMORY[0x1E69B3A48];
        v25 = [v5 identifier];
        *a4 = [v24 errorWithCode:1 reason:@"Failed to setup pipeline outputs" object:v25 underlyingError:v21];

        v22 = 0;
      }

      v14 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69B3A48];
    v17 = [v5 identifier];
    [v23 errorWithCode:1 reason:@"Failed to setup pipeline inputs" object:v17 underlyingError:v14];
    *v28 = v22 = 0;
  }

  return v22;
}

@end