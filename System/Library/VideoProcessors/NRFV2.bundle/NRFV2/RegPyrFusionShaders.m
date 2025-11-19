@interface RegPyrFusionShaders
- (RegPyrFusionShaders)initWithMetal:(id)a3;
- (id)createPipelineStateWithMetal:(id)a3 vShaderName:(id)a4 fShaderName:(id)a5 outputColorMetalFormat:(id)a6 constantValues:(id)a7;
@end

@implementation RegPyrFusionShaders

- (RegPyrFusionShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = RegPyrFusionShaders;
  v5 = [(RegPyrFusionShaders *)&v45 init];
  v7 = v5;
  if (!v5)
  {
    sub_29588FF2C();
LABEL_29:
    v43 = 0;
    goto LABEL_15;
  }

  v8 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v5, v6, v4, @"regpyr_vert", @"regpyr_initial_downscale_frag", &unk_2A1CC4270);
  initialDownScalePipelineState = v7->_initialDownScalePipelineState;
  v7->_initialDownScalePipelineState = v8;

  if (!v7->_initialDownScalePipelineState)
  {
    sub_29588FE88();
    goto LABEL_29;
  }

  v11 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v10, v4, @"regpyr_vert", @"regpyr_bilinear_downscale_frag", &unk_2A1CC4288);
  bilinearScalePipelineState = v7->_bilinearScalePipelineState;
  v7->_bilinearScalePipelineState = v11;

  if (!v7->_bilinearScalePipelineState)
  {
    sub_29588FDE4();
    goto LABEL_29;
  }

  v14 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v13, v4, @"regpyr_vert", @"regpyr_deriv_sobel_frag", &unk_2A1CC42A0);
  derivSobelPipelineState = v7->_derivSobelPipelineState;
  v7->_derivSobelPipelineState = v14;

  if (!v7->_derivSobelPipelineState)
  {
    sub_29588FD40();
    goto LABEL_29;
  }

  v17 = objc_msgSend_computePipelineStateFor_constants_(v4, v16, @"regpyr_deriv_compute", 0);
  derivPipelineState = v7->_derivPipelineState;
  v7->_derivPipelineState = v17;

  if (!v7->_derivPipelineState)
  {
    sub_29588FC9C();
    goto LABEL_29;
  }

  v20 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v19, v4, @"regpyr_vert", @"regpyr_basic_search_luma_frag", &unk_2A1CC42B8);
  basicSearchLumaPipelineState = v7->_basicSearchLumaPipelineState;
  v7->_basicSearchLumaPipelineState = v20;

  if (!v7->_basicSearchLumaPipelineState)
  {
    sub_29588FBF8();
    goto LABEL_29;
  }

  v23 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v22, v4, @"regpyr_vert", @"regpyr_fusion_luma_x_frag", &unk_2A1CC42D0);
  fusionXLumaPipelineState = v7->_fusionXLumaPipelineState;
  v7->_fusionXLumaPipelineState = v23;

  if (!v7->_fusionXLumaPipelineState)
  {
    sub_29588FB54();
    goto LABEL_29;
  }

  v26 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v25, v4, @"regpyr_vert", @"regpyr_fusion_luma_y_frag", &unk_2A1CC42E8);
  fusionYLumaPipelineState = v7->_fusionYLumaPipelineState;
  v7->_fusionYLumaPipelineState = v26;

  if (!v7->_fusionYLumaPipelineState)
  {
    sub_29588FAB0();
    goto LABEL_29;
  }

  v29 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v28, v4, @"regpyr_vert", @"regpyr_smooth_frag", &unk_2A1CC4300);
  smoothPipelineState = v7->_smoothPipelineState;
  v7->_smoothPipelineState = v29;

  if (!v7->_smoothPipelineState)
  {
    sub_29588FA0C();
    goto LABEL_29;
  }

  v32 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v31, v4, @"regpyr_vert", @"regpyr_selection_luma_frag", &unk_2A1CC4318);
  selectionLumaPipelineState = v7->_selectionLumaPipelineState;
  v7->_selectionLumaPipelineState = v32;

  if (!v7->_selectionLumaPipelineState)
  {
    sub_29588F968();
    goto LABEL_29;
  }

  v35 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v34, v4, @"regpyr_vert", @"regpyr_confidence_stage_one_frag", &unk_2A1CC4330);
  confidenceStageOne = v7->_confidenceStageOne;
  v7->_confidenceStageOne = v35;

  if (!v7->_confidenceStageOne)
  {
    sub_29588F8C4();
    goto LABEL_29;
  }

  v38 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v37, v4, @"regpyr_vert", @"regpyr_confidence_erode_frag", &unk_2A1CC4348);
  confidenceErode = v7->_confidenceErode;
  v7->_confidenceErode = v38;

  if (!v7->_confidenceErode)
  {
    sub_29588F820();
    goto LABEL_29;
  }

  v41 = objc_msgSend_createPipelineStateWithMetal_vShaderName_fShaderName_outputColorMetalFormat_(v7, v40, v4, @"regpyr_vert", @"regpyr_confidence_dilate_frag", &unk_2A1CC4360);
  confidenceDilate = v7->_confidenceDilate;
  v7->_confidenceDilate = v41;

  if (!v7->_confidenceDilate)
  {
    sub_29588F77C();
    goto LABEL_29;
  }

  v43 = v7;
LABEL_15:

  return v43;
}

- (id)createPipelineStateWithMetal:(id)a3 vShaderName:(id)a4 fShaderName:(id)a5 outputColorMetalFormat:(id)a6 constantValues:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = MEMORY[0x29EDB8DE8];
  v20 = objc_msgSend_count(v14, v17, v18, v19);
  v23 = objc_msgSend_arrayWithCapacity_(v16, v21, v20, v22);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v24 = v14;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v50, v49, 16);
  if (v26)
  {
    v27 = v26;
    v46 = v15;
    v47 = v13;
    v48 = v12;
    v28 = 0;
    v29 = 0;
    v30 = *v51;
    do
    {
      v31 = 0;
      v32 = v28;
      v33 = v29;
      do
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v24);
        }

        v34 = *(*(&v50 + 1) + 8 * v31);
        v28 = objc_opt_new();

        v38 = objc_msgSend_intValue(v34, v35, v36, v37);
        objc_msgSend_setPixelFormat_(v28, v39, v38, v40);
        v29 = v33 + 1;
        objc_msgSend_setObject_atIndexedSubscript_(v23, v41, v28, v33);
        ++v31;
        v32 = v28;
        ++v33;
      }

      while (v27 != v31);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v42, &v50, v49, 16);
    }

    while (v27);

    v12 = v48;
    v15 = v46;
    v13 = v47;
  }

  v44 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v11, v43, v12, 0, v13, v15, v23);

  return v44;
}

@end