@interface FuseRemixFragmentShader
- (FuseRemixFragmentShader)initWithMetal:(id)a3 fragName:(id)a4 pixelFormat:(unint64_t)a5 noisePixelFormat:(unint64_t)a6 isFirstBatch:(BOOL)a7 isLastBatch:(BOOL)a8 usePatchBasedFusion:(BOOL)a9 useGpuCSC:(BOOL)a10 ggmEnabled:(BOOL)a11;
@end

@implementation FuseRemixFragmentShader

- (FuseRemixFragmentShader)initWithMetal:(id)a3 fragName:(id)a4 pixelFormat:(unint64_t)a5 noisePixelFormat:(unint64_t)a6 isFirstBatch:(BOOL)a7 isLastBatch:(BOOL)a8 usePatchBasedFusion:(BOOL)a9 useGpuCSC:(BOOL)a10 ggmEnabled:(BOOL)a11
{
  v57 = a3;
  v17 = a4;
  v65 = a7;
  v64 = a8;
  v63 = a9;
  v62 = a10;
  v61 = a11;
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
    v49 = v57;
    goto LABEL_19;
  }

  v59 = a6 != 0;
  v19 = objc_opt_new();
  v21 = v19;
  if (!v19)
  {
    sub_2958C4C10(&v66);
    goto LABEL_17;
  }

  objc_msgSend_setConstantValue_type_atIndex_(v19, v20, &v59, 53, 1);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v22, &v65, 53, 2);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v23, &v64, 53, 3);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v24, &v63, 53, 4);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v25, &v62, 53, 5);
  objc_msgSend_setConstantValue_type_atIndex_(v21, v26, &v61, 53, 6);
  v29 = objc_msgSend_arrayWithCapacity_(MEMORY[0x29EDB8DE8], v27, 4, v28);
  v30 = objc_opt_new();
  objc_msgSend_setPixelFormat_(v30, v31, a5, v32);
  objc_msgSend_setObject_atIndexedSubscript_(v29, v33, v30, 0);
  v34 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v34, v35, 0, v36);
  if (v59)
  {
    objc_msgSend_setPixelFormat_(v34, v37, a6, v38);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v37, v34, 1, v57);
  v39 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v39, v40, 0, v41);
  if (!v65 || !v64)
  {
    objc_msgSend_setPixelFormat_(v39, v42, a5, v43);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v42, v39, 2);
  v44 = objc_opt_new();

  objc_msgSend_setPixelFormat_(v44, v45, 0, v46);
  if (!v65 && !v59)
  {
    objc_msgSend_setPixelFormat_(v44, v47, a5, v48);
  }

  objc_msgSend_setObject_atIndexedSubscript_(v29, v47, v44, 3);
  v49 = v58;
  v51 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v58, v50, @"FusionVert", 0, v17, v21, v29);
  pipeline = v18->_pipeline;
  v18->_pipeline = v51;

  if (v18->_pipeline)
  {
    objc_storeStrong(&v18->_fragName, a4);
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