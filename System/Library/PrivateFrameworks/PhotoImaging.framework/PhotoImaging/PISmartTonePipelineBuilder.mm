@interface PISmartTonePipelineBuilder
- (BOOL)buildPipeline:(id)pipeline error:(id *)error;
- (id)_buildHighKeyPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error;
- (id)_buildLocalLightPipeline:(id)pipeline input:(id)input guide:(id)guide adjustment:(id)adjustment error:(id *)error;
- (id)_buildPipeline:(id)pipeline input:(id)input guide:(id)guide adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error;
- (id)_buildSmartTonePipeline:(id)pipeline input:(id)input adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error;
@end

@implementation PISmartTonePipelineBuilder

- (id)_buildLocalLightPipeline:(id)pipeline input:(id)input guide:(id)guide adjustment:(id)adjustment error:(id *)error
{
  v58[2] = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  inputCopy = input;
  guideCopy = guide;
  adjustmentCopy = adjustment;
  v15 = [adjustmentCopy objectForKeyedSubscript:@"statistics"];
  v16 = [pipelineCopy addCIFilterPipelineWithName:@"CILocalLightMapPrepare" error:error];
  if (v16 && ([MEMORY[0x1E69B39E8] name:@"inputLightMap"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(pipelineCopy, "connect:input:to:key:error:", v16, v17, v15, @"lightMap", error), v17, v18) && (objc_msgSend(MEMORY[0x1E69B39E8], "name:", @"inputGuideImage"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v16, v19, guideCopy, error), v19, v20))
  {
    v21 = [pipelineCopy addCIFilterPipelineWithName:@"CILocalLightFilter" error:error];
    if (v21 && ([MEMORY[0x1E69B39E8] primary], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v21, v22, inputCopy, error), v22, v23))
    {
      v24 = [MEMORY[0x1E69B39E8] name:@"inputLightMapImage"];
      primary = [MEMORY[0x1E69B39E8] primary];
      v57 = v21;
      v26 = [pipelineCopy connect:v21 input:v24 to:v16 output:primary error:error];

      if (v26 && ([MEMORY[0x1E69B39E8] name:@"inputGuideImage"], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v57, v27, guideCopy, error), v27, v28))
      {
        v29 = MEMORY[0x1E69B39E0];
        v54 = [adjustmentCopy objectForKeyedSubscript:@"inputLocalLight"];
        v30 = [v29 staticExpression:v54];
        v31 = MEMORY[0x1E69B39E0];
        v32 = [adjustmentCopy objectForKeyedSubscript:@"offsetLocalLight"];
        v33 = [v31 staticExpression:v32];
        v56 = [v30 plus:v33];

        v34 = [MEMORY[0x1E69B39E8] name:@"inputLocalLight"];
        LODWORD(v33) = [pipelineCopy assign:v57 input:v34 to:v56 error:error];

        if (v33)
        {
          v35 = MEMORY[0x1E69B39E0];
          v52 = [adjustmentCopy objectForKeyedSubscript:@"inputShadows"];
          v36 = [v35 staticExpression:v52];
          v37 = MEMORY[0x1E69B39E0];
          v38 = [adjustmentCopy objectForKeyedSubscript:@"offsetShadows"];
          v39 = [v37 staticExpression:v38];
          v55 = [v36 plus:v39];

          v40 = MEMORY[0x1E69B39E0];
          v41 = [MEMORY[0x1E69B39D8] number:0.0];
          v42 = [v40 constantExpression:v41];

          v43 = MEMORY[0x1E69B39E0];
          v58[0] = v55;
          v58[1] = v42;
          v53 = v42;
          v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
          v45 = [v43 max:v44];

          v46 = [MEMORY[0x1E69B39E8] name:@"inputSmartShadows"];
          v47 = [pipelineCopy assign:v57 input:v46 to:v45 error:error];

          if (v47)
          {
            primary2 = [MEMORY[0x1E69B39E8] primary];
            v49 = v57;
            v50 = [v57 outputPortMatching:primary2];
          }

          else
          {
            v49 = v57;
            v50 = 0;
          }

          v21 = v49;
        }

        else
        {
          v50 = 0;
          v21 = v57;
        }
      }

      else
      {
        v50 = 0;
        v21 = v57;
      }
    }

    else
    {
      v50 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  return v50;
}

- (id)_buildSmartTonePipeline:(id)pipeline input:(id)input adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error
{
  v81[2] = *MEMORY[0x1E69E9840];
  pipelineCopy = pipeline;
  inputCopy = input;
  adjustmentCopy = adjustment;
  adjustmentsCopy = adjustments;
  v15 = [pipelineCopy addCIFilterPipelineWithName:@"CISmartToneFilter" error:error];
  if (v15 && ([MEMORY[0x1E69B39E8] primary], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v15, v16, inputCopy, error), v16, v17))
  {
    v78 = inputCopy;
    v80 = adjustmentsCopy;
    v18 = MEMORY[0x1E69B39E0];
    v19 = [adjustmentCopy objectForKeyedSubscript:@"inputExposure"];
    v20 = [v18 staticExpression:v19];
    v21 = MEMORY[0x1E69B39E0];
    v22 = [adjustmentCopy objectForKeyedSubscript:@"offsetExposure"];
    v23 = [v21 staticExpression:v22];
    v24 = [v20 plus:v23];

    v25 = [MEMORY[0x1E69B39E8] name:@"inputExposure"];
    v79 = v24;
    LODWORD(v23) = [pipelineCopy assign:v15 input:v25 to:v24 error:error];

    if (v23)
    {
      v26 = MEMORY[0x1E69B39E0];
      v27 = [adjustmentCopy objectForKeyedSubscript:@"inputContrast"];
      v28 = [v26 staticExpression:v27];
      v29 = MEMORY[0x1E69B39E0];
      v30 = [adjustmentCopy objectForKeyedSubscript:@"offsetContrast"];
      v31 = [v29 staticExpression:v30];
      v32 = [v28 plus:v31];

      v33 = [MEMORY[0x1E69B39E8] name:@"inputContrast"];
      v77 = v32;
      v34 = [pipelineCopy assign:v15 input:v33 to:v32 error:error];

      if (v34)
      {
        v35 = MEMORY[0x1E69B39E0];
        v36 = [adjustmentCopy objectForKeyedSubscript:@"inputHighlights"];
        v37 = [v35 staticExpression:v36];
        v38 = MEMORY[0x1E69B39E0];
        v39 = [adjustmentCopy objectForKeyedSubscript:@"offsetHighlights"];
        v40 = [v38 staticExpression:v39];
        v41 = [v37 plus:v40];

        v42 = [MEMORY[0x1E69B39E8] name:@"inputHighlights"];
        v76 = v41;
        v43 = [pipelineCopy assign:v15 input:v42 to:v41 error:error];

        if (v43)
        {
          v44 = MEMORY[0x1E69B39E0];
          v45 = [adjustmentCopy objectForKeyedSubscript:@"inputShadows"];
          v46 = [v44 staticExpression:v45];
          v47 = MEMORY[0x1E69B39E0];
          v48 = [adjustmentCopy objectForKeyedSubscript:@"offsetShadows"];
          v49 = [v47 staticExpression:v48];
          v50 = [v46 plus:v49];

          v51 = MEMORY[0x1E69B39E0];
          v52 = [MEMORY[0x1E69B39D8] number:0.0];
          v53 = [v51 constantExpression:v52];

          v54 = MEMORY[0x1E69B39E0];
          v81[0] = v50;
          v81[1] = v53;
          v74 = v53;
          v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
          v56 = [v54 min:v55];
          adjustmentsCopy = v80;
          v75 = v50;
          v57 = [v54 if:v80 then:v56 else:v50];

          v58 = [MEMORY[0x1E69B39E8] name:@"inputShadows"];
          LODWORD(v55) = [pipelineCopy assign:v15 input:v58 to:v57 error:error];

          if (v55)
          {
            v59 = MEMORY[0x1E69B39E0];
            v60 = [adjustmentCopy objectForKeyedSubscript:@"inputBlack"];
            v61 = [v59 staticExpression:v60];
            v62 = MEMORY[0x1E69B39E0];
            v63 = [adjustmentCopy objectForKeyedSubscript:@"offsetBlack"];
            v64 = [v62 staticExpression:v63];
            v65 = [v61 plus:v64];

            v66 = v65;
            v67 = [MEMORY[0x1E69B39E8] name:@"inputBlack"];
            LODWORD(v63) = [pipelineCopy assign:v15 input:v67 to:v65 error:error];

            if (v63 && ([MEMORY[0x1E69B39E8] name:@"inputRawHighlights"], v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(adjustmentCopy, "objectForKeyedSubscript:", @"inputRawHighlights"), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v15, v68, v69, error), v69, v68, v70))
            {
              primary = [MEMORY[0x1E69B39E8] primary];
              v72 = [v15 outputPortMatching:primary];
            }

            else
            {
              v72 = 0;
            }

            adjustmentsCopy = v80;
            inputCopy = v78;
          }

          else
          {
            v72 = 0;
            inputCopy = v78;
          }
        }

        else
        {
          v72 = 0;
          adjustmentsCopy = v80;
          inputCopy = v78;
        }
      }

      else
      {
        v72 = 0;
        adjustmentsCopy = v80;
        inputCopy = v78;
      }
    }

    else
    {
      v72 = 0;
      adjustmentsCopy = v80;
      inputCopy = v78;
    }
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

- (id)_buildHighKeyPipeline:(id)pipeline input:(id)input adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error
{
  pipelineCopy = pipeline;
  inputCopy = input;
  adjustmentCopy = adjustment;
  v13 = [pipelineCopy addCIFilterPipelineWithName:@"CIHighKey" error:error];
  if (v13 && ([MEMORY[0x1E69B39E8] primary], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(pipelineCopy, "connect:input:to:error:", v13, v14, inputCopy, error), v14, v15))
  {
    v16 = MEMORY[0x1E69B39E0];
    v17 = [adjustmentCopy objectForKeyedSubscript:@"inputBrightness"];
    v18 = [v16 staticExpression:v17];
    v19 = MEMORY[0x1E69B39E0];
    v20 = [adjustmentCopy objectForKeyedSubscript:@"offsetBrightness"];
    v21 = [v19 staticExpression:v20];
    v22 = [v18 plus:v21];

    v23 = [MEMORY[0x1E69B39E8] name:@"inputStrength"];
    v24 = [pipelineCopy assign:v13 input:v23 to:v22 error:error];

    if (v24)
    {
      primary = [MEMORY[0x1E69B39E8] primary];
      v26 = [v13 outputPortMatching:primary];
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_buildPipeline:(id)pipeline input:(id)input guide:(id)guide adjustment:(id)adjustment canPerformLocalAdjustments:(id)adjustments error:(id *)error
{
  pipelineCopy = pipeline;
  guideCopy = guide;
  adjustmentCopy = adjustment;
  adjustmentsCopy = adjustments;
  inputCopy = input;
  v18 = [adjustmentCopy objectForKeyedSubscript:@"statistics"];
  v19 = MEMORY[0x1E69B39E0];
  v34 = v18;
  v20 = [v18 objectForKeyedSubscript:@"lightMap"];
  v21 = [v19 staticExpression:v20];
  v22 = [v19 isNotNil:v21];

  v23 = [adjustmentsCopy and:v22];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __101__PISmartTonePipelineBuilder__buildPipeline_input_guide_adjustment_canPerformLocalAdjustments_error___block_invoke;
  v38[3] = &unk_1E82AA2A8;
  v38[4] = self;
  v24 = guideCopy;
  v39 = v24;
  v25 = adjustmentCopy;
  v40 = v25;
  v37 = 0;
  v26 = [pipelineCopy switchOn:v23 with:inputCopy block:v38 error:&v37];

  v27 = v37;
  if (v26)
  {
    v36 = 0;
    v28 = [(PISmartTonePipelineBuilder *)self _buildHighKeyPipeline:pipelineCopy input:v26 adjustment:v25 canPerformLocalAdjustments:adjustmentsCopy error:&v36];
    v29 = v36;

    if (v28)
    {
      v35 = 0;
      v30 = [(PISmartTonePipelineBuilder *)self _buildSmartTonePipeline:pipelineCopy input:v28 adjustment:v25 canPerformLocalAdjustments:adjustmentsCopy error:&v35];
      v27 = v35;

      if (v30)
      {
        v31 = v30;
      }

      else
      {
        *error = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build SmartTone pipeline" object:v25 underlyingError:v27];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build HighKey pipeline" object:v25 underlyingError:v29];
      *error = v30 = 0;
      v27 = v29;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build LocalLight pipeline" object:v25 underlyingError:v27];
    *error = v30 = 0;
  }

  return v30;
}

- (BOOL)buildPipeline:(id)pipeline error:(id *)error
{
  pipelineCopy = pipeline;
  mEMORY[0x1E69B3CA8] = [MEMORY[0x1E69B3CA8] sharedRegistry];
  identifier = [(PISmartTonePipelineBuilder *)self identifier];
  v8 = [mEMORY[0x1E69B3CA8] schemaWithIdentifier:identifier];

  v42 = v8;
  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v53[0] = 0;
  v10 = [pipelineCopy addInputChannel:v9 error:v53];
  v11 = v53[0];

  primary = [MEMORY[0x1E69B39D0] primary];
  v52 = 0;
  v13 = [pipelineCopy addInputChannel:primary error:&v52];
  v14 = v52;

  guide = [MEMORY[0x1E69B39D0] guide];
  v51 = 0;
  v16 = [pipelineCopy addInputChannel:guide error:&v51];
  v17 = v51;

  v18 = MEMORY[0x1E69B39D0];
  v19 = objc_alloc_init(MEMORY[0x1E69B3970]);
  v20 = [v18 controlChannelWithSetting:v19 name:@"canPerformLocalAdjustments"];
  v50 = 0;
  v44 = [pipelineCopy addInputChannel:v20 error:&v50];
  v21 = v50;

  v41 = v10;
  v40 = v16;
  if (v10 && v13 && v16 && v44)
  {
    v22 = MEMORY[0x1E69B39E0];
    v23 = [v10 objectForKeyedSubscript:@"enabled"];
    v24 = [v22 staticExpression:v23];

    v25 = [MEMORY[0x1E69B39E0] staticExpression:v44];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __50__PISmartTonePipelineBuilder_buildPipeline_error___block_invoke;
    v46[3] = &unk_1E82AA280;
    selfCopy = self;
    v46[4] = self;
    v47 = v16;
    v26 = v10;
    identifier3 = v24;
    v48 = v26;
    v28 = v25;
    v49 = v28;
    v29 = [pipelineCopy switchOn:v24 with:v13 block:v46 error:error];
    if (v29)
    {
      primary2 = [MEMORY[0x1E69B39D0] primary];
      v45 = 0;
      v31 = [pipelineCopy addOutputChannel:primary2 error:&v45];
      v32 = v45;

      if (v31)
      {
        v33 = [pipelineCopy connectInputPort:v31 toOutputPort:v29 error:error];
      }

      else
      {
        v36 = MEMORY[0x1E69B3A48];
        identifier2 = [(PISmartTonePipelineBuilder *)selfCopy identifier];
        *error = [v36 errorWithCode:1 reason:@"Failed to setup pipeline outputs" object:identifier2 underlyingError:v32];

        v33 = 0;
      }

      v35 = v42;

      v21 = v32;
    }

    else
    {
      v33 = 0;
      v35 = v42;
    }
  }

  else
  {
    v34 = MEMORY[0x1E69B3A48];
    identifier3 = [(PISmartTonePipelineBuilder *)self identifier];
    [v34 errorWithCode:1 reason:@"Failed to setup pipeline inputs" object:identifier3 underlyingError:v21];
    v33 = 0;
    *error = v35 = v42;
  }

  return v33;
}

@end