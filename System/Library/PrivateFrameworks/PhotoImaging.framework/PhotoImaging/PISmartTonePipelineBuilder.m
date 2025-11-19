@interface PISmartTonePipelineBuilder
- (BOOL)buildPipeline:(id)a3 error:(id *)a4;
- (id)_buildHighKeyPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 canPerformLocalAdjustments:(id)a6 error:(id *)a7;
- (id)_buildLocalLightPipeline:(id)a3 input:(id)a4 guide:(id)a5 adjustment:(id)a6 error:(id *)a7;
- (id)_buildPipeline:(id)a3 input:(id)a4 guide:(id)a5 adjustment:(id)a6 canPerformLocalAdjustments:(id)a7 error:(id *)a8;
- (id)_buildSmartTonePipeline:(id)a3 input:(id)a4 adjustment:(id)a5 canPerformLocalAdjustments:(id)a6 error:(id *)a7;
@end

@implementation PISmartTonePipelineBuilder

- (id)_buildLocalLightPipeline:(id)a3 input:(id)a4 guide:(id)a5 adjustment:(id)a6 error:(id *)a7
{
  v58[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v14 objectForKeyedSubscript:@"statistics"];
  v16 = [v11 addCIFilterPipelineWithName:@"CILocalLightMapPrepare" error:a7];
  if (v16 && ([MEMORY[0x1E69B39E8] name:@"inputLightMap"], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v11, "connect:input:to:key:error:", v16, v17, v15, @"lightMap", a7), v17, v18) && (objc_msgSend(MEMORY[0x1E69B39E8], "name:", @"inputGuideImage"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v11, "connect:input:to:error:", v16, v19, v13, a7), v19, v20))
  {
    v21 = [v11 addCIFilterPipelineWithName:@"CILocalLightFilter" error:a7];
    if (v21 && ([MEMORY[0x1E69B39E8] primary], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v11, "connect:input:to:error:", v21, v22, v12, a7), v22, v23))
    {
      v24 = [MEMORY[0x1E69B39E8] name:@"inputLightMapImage"];
      v25 = [MEMORY[0x1E69B39E8] primary];
      v57 = v21;
      v26 = [v11 connect:v21 input:v24 to:v16 output:v25 error:a7];

      if (v26 && ([MEMORY[0x1E69B39E8] name:@"inputGuideImage"], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v11, "connect:input:to:error:", v57, v27, v13, a7), v27, v28))
      {
        v29 = MEMORY[0x1E69B39E0];
        v54 = [v14 objectForKeyedSubscript:@"inputLocalLight"];
        v30 = [v29 staticExpression:v54];
        v31 = MEMORY[0x1E69B39E0];
        v32 = [v14 objectForKeyedSubscript:@"offsetLocalLight"];
        v33 = [v31 staticExpression:v32];
        v56 = [v30 plus:v33];

        v34 = [MEMORY[0x1E69B39E8] name:@"inputLocalLight"];
        LODWORD(v33) = [v11 assign:v57 input:v34 to:v56 error:a7];

        if (v33)
        {
          v35 = MEMORY[0x1E69B39E0];
          v52 = [v14 objectForKeyedSubscript:@"inputShadows"];
          v36 = [v35 staticExpression:v52];
          v37 = MEMORY[0x1E69B39E0];
          v38 = [v14 objectForKeyedSubscript:@"offsetShadows"];
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
          v47 = [v11 assign:v57 input:v46 to:v45 error:a7];

          if (v47)
          {
            v48 = [MEMORY[0x1E69B39E8] primary];
            v49 = v57;
            v50 = [v57 outputPortMatching:v48];
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

- (id)_buildSmartTonePipeline:(id)a3 input:(id)a4 adjustment:(id)a5 canPerformLocalAdjustments:(id)a6 error:(id *)a7
{
  v81[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v11 addCIFilterPipelineWithName:@"CISmartToneFilter" error:a7];
  if (v15 && ([MEMORY[0x1E69B39E8] primary], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v11, "connect:input:to:error:", v15, v16, v12, a7), v16, v17))
  {
    v78 = v12;
    v80 = v14;
    v18 = MEMORY[0x1E69B39E0];
    v19 = [v13 objectForKeyedSubscript:@"inputExposure"];
    v20 = [v18 staticExpression:v19];
    v21 = MEMORY[0x1E69B39E0];
    v22 = [v13 objectForKeyedSubscript:@"offsetExposure"];
    v23 = [v21 staticExpression:v22];
    v24 = [v20 plus:v23];

    v25 = [MEMORY[0x1E69B39E8] name:@"inputExposure"];
    v79 = v24;
    LODWORD(v23) = [v11 assign:v15 input:v25 to:v24 error:a7];

    if (v23)
    {
      v26 = MEMORY[0x1E69B39E0];
      v27 = [v13 objectForKeyedSubscript:@"inputContrast"];
      v28 = [v26 staticExpression:v27];
      v29 = MEMORY[0x1E69B39E0];
      v30 = [v13 objectForKeyedSubscript:@"offsetContrast"];
      v31 = [v29 staticExpression:v30];
      v32 = [v28 plus:v31];

      v33 = [MEMORY[0x1E69B39E8] name:@"inputContrast"];
      v77 = v32;
      v34 = [v11 assign:v15 input:v33 to:v32 error:a7];

      if (v34)
      {
        v35 = MEMORY[0x1E69B39E0];
        v36 = [v13 objectForKeyedSubscript:@"inputHighlights"];
        v37 = [v35 staticExpression:v36];
        v38 = MEMORY[0x1E69B39E0];
        v39 = [v13 objectForKeyedSubscript:@"offsetHighlights"];
        v40 = [v38 staticExpression:v39];
        v41 = [v37 plus:v40];

        v42 = [MEMORY[0x1E69B39E8] name:@"inputHighlights"];
        v76 = v41;
        v43 = [v11 assign:v15 input:v42 to:v41 error:a7];

        if (v43)
        {
          v44 = MEMORY[0x1E69B39E0];
          v45 = [v13 objectForKeyedSubscript:@"inputShadows"];
          v46 = [v44 staticExpression:v45];
          v47 = MEMORY[0x1E69B39E0];
          v48 = [v13 objectForKeyedSubscript:@"offsetShadows"];
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
          v14 = v80;
          v75 = v50;
          v57 = [v54 if:v80 then:v56 else:v50];

          v58 = [MEMORY[0x1E69B39E8] name:@"inputShadows"];
          LODWORD(v55) = [v11 assign:v15 input:v58 to:v57 error:a7];

          if (v55)
          {
            v59 = MEMORY[0x1E69B39E0];
            v60 = [v13 objectForKeyedSubscript:@"inputBlack"];
            v61 = [v59 staticExpression:v60];
            v62 = MEMORY[0x1E69B39E0];
            v63 = [v13 objectForKeyedSubscript:@"offsetBlack"];
            v64 = [v62 staticExpression:v63];
            v65 = [v61 plus:v64];

            v66 = v65;
            v67 = [MEMORY[0x1E69B39E8] name:@"inputBlack"];
            LODWORD(v63) = [v11 assign:v15 input:v67 to:v65 error:a7];

            if (v63 && ([MEMORY[0x1E69B39E8] name:@"inputRawHighlights"], v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "objectForKeyedSubscript:", @"inputRawHighlights"), v69 = objc_claimAutoreleasedReturnValue(), v70 = objc_msgSend(v11, "connect:input:to:error:", v15, v68, v69, a7), v69, v68, v70))
            {
              v71 = [MEMORY[0x1E69B39E8] primary];
              v72 = [v15 outputPortMatching:v71];
            }

            else
            {
              v72 = 0;
            }

            v14 = v80;
            v12 = v78;
          }

          else
          {
            v72 = 0;
            v12 = v78;
          }
        }

        else
        {
          v72 = 0;
          v14 = v80;
          v12 = v78;
        }
      }

      else
      {
        v72 = 0;
        v14 = v80;
        v12 = v78;
      }
    }

    else
    {
      v72 = 0;
      v14 = v80;
      v12 = v78;
    }
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

- (id)_buildHighKeyPipeline:(id)a3 input:(id)a4 adjustment:(id)a5 canPerformLocalAdjustments:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 addCIFilterPipelineWithName:@"CIHighKey" error:a7];
  if (v13 && ([MEMORY[0x1E69B39E8] primary], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v10, "connect:input:to:error:", v13, v14, v11, a7), v14, v15))
  {
    v16 = MEMORY[0x1E69B39E0];
    v17 = [v12 objectForKeyedSubscript:@"inputBrightness"];
    v18 = [v16 staticExpression:v17];
    v19 = MEMORY[0x1E69B39E0];
    v20 = [v12 objectForKeyedSubscript:@"offsetBrightness"];
    v21 = [v19 staticExpression:v20];
    v22 = [v18 plus:v21];

    v23 = [MEMORY[0x1E69B39E8] name:@"inputStrength"];
    v24 = [v10 assign:v13 input:v23 to:v22 error:a7];

    if (v24)
    {
      v25 = [MEMORY[0x1E69B39E8] primary];
      v26 = [v13 outputPortMatching:v25];
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

- (id)_buildPipeline:(id)a3 input:(id)a4 guide:(id)a5 adjustment:(id)a6 canPerformLocalAdjustments:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a4;
  v18 = [v15 objectForKeyedSubscript:@"statistics"];
  v19 = MEMORY[0x1E69B39E0];
  v34 = v18;
  v20 = [v18 objectForKeyedSubscript:@"lightMap"];
  v21 = [v19 staticExpression:v20];
  v22 = [v19 isNotNil:v21];

  v23 = [v16 and:v22];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __101__PISmartTonePipelineBuilder__buildPipeline_input_guide_adjustment_canPerformLocalAdjustments_error___block_invoke;
  v38[3] = &unk_1E82AA2A8;
  v38[4] = self;
  v24 = v14;
  v39 = v24;
  v25 = v15;
  v40 = v25;
  v37 = 0;
  v26 = [v13 switchOn:v23 with:v17 block:v38 error:&v37];

  v27 = v37;
  if (v26)
  {
    v36 = 0;
    v28 = [(PISmartTonePipelineBuilder *)self _buildHighKeyPipeline:v13 input:v26 adjustment:v25 canPerformLocalAdjustments:v16 error:&v36];
    v29 = v36;

    if (v28)
    {
      v35 = 0;
      v30 = [(PISmartTonePipelineBuilder *)self _buildSmartTonePipeline:v13 input:v28 adjustment:v25 canPerformLocalAdjustments:v16 error:&v35];
      v27 = v35;

      if (v30)
      {
        v31 = v30;
      }

      else
      {
        *a8 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build SmartTone pipeline" object:v25 underlyingError:v27];
      }
    }

    else
    {
      [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build HighKey pipeline" object:v25 underlyingError:v29];
      *a8 = v30 = 0;
      v27 = v29;
    }
  }

  else
  {
    [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to build LocalLight pipeline" object:v25 underlyingError:v27];
    *a8 = v30 = 0;
  }

  return v30;
}

- (BOOL)buildPipeline:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v7 = [(PISmartTonePipelineBuilder *)self identifier];
  v8 = [v6 schemaWithIdentifier:v7];

  v42 = v8;
  v9 = [MEMORY[0x1E69B39D0] controlChannelWithSchema:v8 name:@"adjustment"];
  v53[0] = 0;
  v10 = [v5 addInputChannel:v9 error:v53];
  v11 = v53[0];

  v12 = [MEMORY[0x1E69B39D0] primary];
  v52 = 0;
  v13 = [v5 addInputChannel:v12 error:&v52];
  v14 = v52;

  v15 = [MEMORY[0x1E69B39D0] guide];
  v51 = 0;
  v16 = [v5 addInputChannel:v15 error:&v51];
  v17 = v51;

  v18 = MEMORY[0x1E69B39D0];
  v19 = objc_alloc_init(MEMORY[0x1E69B3970]);
  v20 = [v18 controlChannelWithSetting:v19 name:@"canPerformLocalAdjustments"];
  v50 = 0;
  v44 = [v5 addInputChannel:v20 error:&v50];
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
    v39 = self;
    v46[4] = self;
    v47 = v16;
    v26 = v10;
    v27 = v24;
    v48 = v26;
    v28 = v25;
    v49 = v28;
    v29 = [v5 switchOn:v24 with:v13 block:v46 error:a4];
    if (v29)
    {
      v30 = [MEMORY[0x1E69B39D0] primary];
      v45 = 0;
      v31 = [v5 addOutputChannel:v30 error:&v45];
      v32 = v45;

      if (v31)
      {
        v33 = [v5 connectInputPort:v31 toOutputPort:v29 error:a4];
      }

      else
      {
        v36 = MEMORY[0x1E69B3A48];
        v37 = [(PISmartTonePipelineBuilder *)v39 identifier];
        *a4 = [v36 errorWithCode:1 reason:@"Failed to setup pipeline outputs" object:v37 underlyingError:v32];

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
    v27 = [(PISmartTonePipelineBuilder *)self identifier];
    [v34 errorWithCode:1 reason:@"Failed to setup pipeline inputs" object:v27 underlyingError:v21];
    v33 = 0;
    *a4 = v35 = v42;
  }

  return v33;
}

@end