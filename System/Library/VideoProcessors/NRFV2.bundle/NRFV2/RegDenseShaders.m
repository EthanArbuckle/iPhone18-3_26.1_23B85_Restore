@interface RegDenseShaders
- (RegDenseShaders)initWithMetal:(id)a3;
@end

@implementation RegDenseShaders

- (RegDenseShaders)initWithMetal:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = RegDenseShaders;
  v5 = [(RegDenseShaders *)&v41 init];
  if (!v5)
  {
    sub_29588DC3C();
LABEL_23:
    v38 = 0;
    goto LABEL_12;
  }

  v6 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v6, v7, 25, v8);
  v40 = v6;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v9, &v40, 1);
  v12 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v4, v11, @"regpyr_vert", 0, @"pyramidConfidence", 0, v10);
  confPipeline = v5->_confPipeline;
  v5->_confPipeline = v12;

  if (!v5->_confPipeline)
  {
    sub_29588DBA0(v6);
    goto LABEL_23;
  }

  v15 = objc_msgSend_computePipelineStateFor_constants_(v4, v14, @"warpFrame", 0);
  warpPipeline = v5->_warpPipeline;
  v5->_warpPipeline = v15;

  if (!v5->_warpPipeline)
  {
    sub_29588DB04(v6);
    goto LABEL_23;
  }

  v18 = objc_msgSend_computePipelineStateFor_constants_(v4, v17, @"warpFrameWithConfidence", 0);
  warpWithConfidencePipeline = v5->_warpWithConfidencePipeline;
  v5->_warpWithConfidencePipeline = v18;

  if (!v5->_warpWithConfidencePipeline)
  {
    sub_29588DA68(v6);
    goto LABEL_23;
  }

  v21 = objc_msgSend_computePipelineStateFor_constants_(v4, v20, @"warpFrameWithBlendingWeight", 0);
  warpWithBlendingWeightPipeline = v5->_warpWithBlendingWeightPipeline;
  v5->_warpWithBlendingWeightPipeline = v21;

  if (!v5->_warpWithBlendingWeightPipeline)
  {
    sub_29588D9CC(v6);
    goto LABEL_23;
  }

  v24 = objc_msgSend_computePipelineStateFor_constants_(v4, v23, @"warpAdditionalFrameWithBlendingWeight", 0);
  warpAdditionalFrameWithBlendingWeightPipeline = v5->_warpAdditionalFrameWithBlendingWeightPipeline;
  v5->_warpAdditionalFrameWithBlendingWeightPipeline = v24;

  if (!v5->_warpAdditionalFrameWithBlendingWeightPipeline)
  {
    sub_29588D930(v6);
    goto LABEL_23;
  }

  v27 = objc_msgSend_computePipelineStateFor_constants_(v4, v26, @"warpFrameWithBlendingWeightAndConfidence", 0);
  warpWithBlendingWeightAndConfidencePipeline = v5->_warpWithBlendingWeightAndConfidencePipeline;
  v5->_warpWithBlendingWeightAndConfidencePipeline = v27;

  if (!v5->_warpWithBlendingWeightAndConfidencePipeline)
  {
    sub_29588D894(v6);
    goto LABEL_23;
  }

  v30 = objc_msgSend_computePipelineStateFor_constants_(v4, v29, @"getBlendingWeight", 0);
  getBlendingWeightPipeline = v5->_getBlendingWeightPipeline;
  v5->_getBlendingWeightPipeline = v30;

  if (!v5->_getBlendingWeightPipeline)
  {
    sub_29588D7F8(v6);
    goto LABEL_23;
  }

  v33 = objc_msgSend_computePipelineStateFor_constants_(v4, v32, @"getBlendingWeightLowLight", 0);
  getBlendingWeightLowLightPipeline = v5->_getBlendingWeightLowLightPipeline;
  v5->_getBlendingWeightLowLightPipeline = v33;

  if (!v5->_getBlendingWeightLowLightPipeline)
  {
    sub_29588D75C(v6);
    goto LABEL_23;
  }

  v36 = objc_msgSend_computePipelineStateFor_constants_(v4, v35, @"generateSparseBlendingMap", 0);
  generateSparseBlendingMapPipeline = v5->_generateSparseBlendingMapPipeline;
  v5->_generateSparseBlendingMapPipeline = v36;

  if (!v5->_generateSparseBlendingMapPipeline)
  {
    sub_29588D6C0(v6);
    goto LABEL_23;
  }

  v38 = v5;

LABEL_12:
  return v38;
}

@end