@interface PISmartColorPipelineBuilder
- (BOOL)buildPipeline:(id)pipeline error:(id *)error;
- (id)_buildPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment error:(id *)error;
@end

@implementation PISmartColorPipelineBuilder

- (id)_buildPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment error:(id *)error
{
  pipelineCopy = pipeline;
  inputCopy = input;
  adjustmentCopy = adjustment;
  v12 = [pipelineCopy addCIFilterPipelineWithName:@"CISmartColorFilter" error:error];
  if (v12 && ([MEMORY[0x1E69B39E8] primary], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v12, v13, inputCopy, error), v13, v14))
  {
    v46 = inputCopy;
    v15 = MEMORY[0x1E69B39E0];
    v16 = [adjustmentCopy objectForKeyedSubscript:@"inputCast"];
    v17 = [v15 staticExpression:v16];
    v18 = MEMORY[0x1E69B39E0];
    v19 = [adjustmentCopy objectForKeyedSubscript:@"offsetCast"];
    v20 = [v18 staticExpression:v19];
    v21 = [v17 plus:v20];

    v47 = v21;
    if ([pipelineCopy assign:v12 inputNamed:@"inputCast" to:v21 error:error])
    {
      v22 = MEMORY[0x1E69B39E0];
      v23 = [adjustmentCopy objectForKeyedSubscript:@"inputSaturation"];
      v24 = [v22 staticExpression:v23];
      v25 = MEMORY[0x1E69B39E0];
      v26 = [adjustmentCopy objectForKeyedSubscript:@"offsetSaturation"];
      v27 = [v25 staticExpression:v26];
      v28 = [v24 plus:v27];

      if ([pipelineCopy assign:v12 inputNamed:@"inputVibrancy" to:v28 error:error])
      {
        primary = [MEMORY[0x1E69B39E8] primary];
        v30 = [v12 outputPortMatching:primary];

        v31 = [pipelineCopy addCIFilterPipelineWithName:@"CIVibrance" error:error];
        if (v31)
        {
          primary2 = [MEMORY[0x1E69B39E8] primary];
          v45 = v30;
          v33 = [pipelineCopy connect:v31 input:primary2 to:v30 error:error];

          if (v33)
          {
            v34 = MEMORY[0x1E69B39E0];
            v44 = [adjustmentCopy objectForKeyedSubscript:@"inputContrast"];
            v35 = [v34 staticExpression:v44];
            v36 = MEMORY[0x1E69B39E0];
            v37 = [adjustmentCopy objectForKeyedSubscript:@"offsetContrast"];
            v38 = [v36 staticExpression:v37];
            v39 = [v35 plus:v38];

            v40 = v39;
            if ([pipelineCopy assign:v31 inputNamed:@"inputAmount" to:v39 error:error])
            {
              primary3 = [MEMORY[0x1E69B39E8] primary];
              v42 = [v31 outputPortMatching:primary3];
            }

            else
            {
              v42 = 0;
            }

            v30 = v45;
            inputCopy = v46;
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

- (BOOL)buildPipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  mEMORY[0x1E69B3CA8] = [MEMORY[0x1E69B3CA8] sharedRegistry];
  identifier = [(PISmartColorPipelineBuilder *)self identifier];
  v8 = [mEMORY[0x1E69B3CA8] schemaWithIdentifier:identifier];

  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v33 = 0;
  v10 = [pipelineCopy addInputChannel:v9 error:&v33];
  v11 = v33;

  primary = [MEMORY[0x1E69B39D0] primary];
  v32 = 0;
  v13 = [pipelineCopy addInputChannel:primary error:&v32];
  v14 = v32;

  if (v10 && v13)
  {
    v15 = MEMORY[0x1E69B39E0];
    v16 = [v10 objectForKeyedSubscript:@"enabled"];
    identifier3 = [v15 staticExpression:v16];

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __51__PISmartColorPipelineBuilder_buildPipeline_error___block_invoke;
    v30[3] = &unk_1E82AB080;
    v30[4] = self;
    v31 = v10;
    v18 = [pipelineCopy switchOn:identifier3 with:v13 block:v30 error:error];
    if (v18)
    {
      primary2 = [MEMORY[0x1E69B39D0] primary];
      v29 = 0;
      v20 = [pipelineCopy addOutputChannel:primary2 error:&v29];
      v21 = v29;

      if (v20)
      {
        v22 = [pipelineCopy connectInputPort:v20 toOutputPort:v18 error:error];
      }

      else
      {
        v24 = MEMORY[0x1E69B3A48];
        identifier2 = [pipelineCopy identifier];
        *error = [v24 errorWithCode:1 reason:@"Failed to setup pipeline outputs" object:identifier2 underlyingError:v21];

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
    identifier3 = [pipelineCopy identifier];
    [v23 errorWithCode:1 reason:@"Failed to setup pipeline inputs" object:identifier3 underlyingError:v14];
    *v28 = v22 = 0;
  }

  return v22;
}

@end