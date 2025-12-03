@interface FuseRemixFragmentShader
- (FuseRemixFragmentShader)initWithMetal:(id)metal fragName:(id)name pixelFormat:(unint64_t)format noisePixelFormat:(unint64_t)pixelFormat isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion useGpuCSC:(BOOL)self0 ggmEnabled:(BOOL)self1;
@end

@implementation FuseRemixFragmentShader

- (FuseRemixFragmentShader)initWithMetal:(id)metal fragName:(id)name pixelFormat:(unint64_t)format noisePixelFormat:(unint64_t)pixelFormat isFirstBatch:(BOOL)batch isLastBatch:(BOOL)lastBatch usePatchBasedFusion:(BOOL)fusion useGpuCSC:(BOOL)self0 ggmEnabled:(BOOL)self1
{
  metalCopy = metal;
  nameCopy = name;
  batchCopy = batch;
  lastBatchCopy = lastBatch;
  fusionCopy = fusion;
  cCopy = c;
  enabledCopy = enabled;
  v60.receiver = self;
  v60.super_class = FuseRemixFragmentShader;
  v18 = [(FuseRemixFragmentShader *)&v60 init];
  if (!v18)
  {
    sub_2958C4CAC(&v66);
    v21 = 0;
LABEL_17:
    v44 = 0;
    v29 = 0;
    v56 = v66;
    v49 = metalCopy;
    goto LABEL_19;
  }

  v59 = pixelFormat != 0;
  v19 = objc_opt_new();
  v21 = v19;
  if (!v19)
  {
    sub_2958C4C10(&v66);
    goto LABEL_17;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v19, v20, &v59, 53, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v22, &batchCopy, 53, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v23, &lastBatchCopy, 53, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v24, &fusionCopy, 53, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v25, &cCopy, 53, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v26, &enabledCopy, 53, 6);
  v29 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v27, 4, v28);
  v30 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v30, v31, format, v32);
  objc_msgSend_setObject_atIndexedSubscript_(v29, v33, v30, 0);
  v34 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v34, v35, 0, v36);
  if (v59)
  {
    objc_msgSend_setPixelFormat_(v34, v37, pixelFormat, v38);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v37, v34, 1, metalCopy);
  v39 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v39, v40, 0, v41);
  if (!batchCopy || !lastBatchCopy)
  {
    objc_msgSend_setPixelFormat_(v39, v42, format, v43);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v42, v39, 2);
  v44 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v44, v45, 0, v46);
  if (!batchCopy && !v59)
  {
    objc_msgSend_setPixelFormat_(v44, v47, format, v48);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v47, v44, 3);
  v49 = v58;
  v51 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v58, v50, @"FusionVert", 0, nameCopy, v21, v29);
  pipeline = v18->_pipeline;
  v18->_pipeline = v51;

  if (v18->_pipeline)
  {
    objc_storeStrong(&v18->_fragName, name);
    goto LABEL_13;
  }

  sub_2958C4B74(&v66);
  v56 = v66;
LABEL_19:
  if (v56)
  {
    v53 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v53 = v18;
LABEL_14:
  v54 = v53;

  return v54;
}

@end