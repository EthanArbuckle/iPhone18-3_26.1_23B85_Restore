@interface FFCFiltersMetal
- (FFCFiltersMetal)initWithMetalContext:(id)context;
- (int)_compileShadersWithLibrary:(id)library;
- (int)boxFilter11x11From:(id)from To:(id)to;
- (int)boxFilterFrom:(id)from To:(id)to;
- (int)erosionFilterFrom:(id)from To:(id)to;
@end

@implementation FFCFiltersMetal

- (FFCFiltersMetal)initWithMetalContext:(id)context
{
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = FFCFiltersMetal;
  v6 = [(FFCFiltersMetal *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mtlContext, context);
    v13 = objc_msgSend_device(v7->_mtlContext, v8, v9, v10, v11, v12);
    mtlDevice = v7->_mtlDevice;
    v7->_mtlDevice = v13;

    v20 = objc_msgSend_commandQueue(v7->_mtlContext, v15, v16, v17, v18, v19);
    mtlCommandQueue = v7->_mtlCommandQueue;
    v7->_mtlCommandQueue = v20;

    v27 = objc_msgSend_library(v7->_mtlContext, v22, v23, v24, v25, v26);
    v32 = objc_msgSend__compileShadersWithLibrary_(v7, v28, v27, v29, v30, v31);

    if (v32)
    {
      sub_29572DC64(v7);
      v7 = 0;
    }
  }

  return v7;
}

- (int)erosionFilterFrom:(id)from To:(id)to
{
  fromCopy = from;
  toCopy = to;
  v13 = self->_FFCFiltersComputePipelinesStates[1];
  if (!fromCopy)
  {
    sub_29572DF14(v96);
LABEL_13:
    v93 = v96[0];
    goto LABEL_8;
  }

  if (!toCopy)
  {
    sub_29572DE68(v96);
    goto LABEL_13;
  }

  v14 = objc_msgSend_commandBuffer(self->_mtlContext, v8, v9, v10, v11, v12);
  mtlCommandBuffer = self->_mtlCommandBuffer;
  self->_mtlCommandBuffer = v14;

  v21 = self->_mtlCommandBuffer;
  if (!v21)
  {
    sub_29572DDBC(v96);
    goto LABEL_13;
  }

  v22 = objc_msgSend_computeCommandEncoder(v21, v16, v17, v18, v19, v20);
  if (!v22)
  {
    sub_29572DD10(v96);
    goto LABEL_13;
  }

  v27 = v22;
  objc_msgSend_setComputePipelineState_(v22, v23, v13, v24, v25, v26);
  objc_msgSend_setTexture_atIndex_(v27, v28, fromCopy, 0, v29, v30);
  objc_msgSend_setTexture_atIndex_(v27, v31, toCopy, 1, v32, v33);
  v39 = objc_msgSend_threadExecutionWidth(v13, v34, v35, v36, v37, v38);
  v45 = objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v40, v41, v42, v43, v44) / v39;
  v96[0] = objc_msgSend_width(toCopy, v46, v47, v48, v49, v50);
  v96[1] = objc_msgSend_height(toCopy, v51, v52, v53, v54, v55);
  v96[2] = 1;
  v95[0] = v39;
  v95[1] = v45;
  v95[2] = 1;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v27, v56, v96, v95, v57, v58);
  objc_msgSend_endEncoding(v27, v59, v60, v61, v62, v63);
  if (*MEMORY[0x29EDB9270])
  {
    v69 = objc_msgSend_commandQueue(self->_mtlCommandBuffer, v64, v65, v66, v67, v68);
    v75 = objc_msgSend_commandBuffer(v69, v70, v71, v72, v73, v74);

    objc_msgSend_setLabel_(v75, v76, @"KTRACE_MTLCMDBUF", v77, v78, v79);
    objc_msgSend_addCompletedHandler_(v75, v80, &unk_2A1C981F0, v81, v82, v83);
    objc_msgSend_commit(v75, v84, v85, v86, v87, v88);
    objc_msgSend_addCompletedHandler_(self->_mtlCommandBuffer, v89, &unk_2A1C98210, v90, v91, v92);
  }

  objc_msgSend_commit(self->_mtlContext, v64, v65, v66, v67, v68);

  v93 = 0;
LABEL_8:

  return v93;
}

- (int)_compileShadersWithLibrary:(id)library
{
  v6 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, a2, @"boxFilter3x3", 0, v3, v4);
  v7 = self->_FFCFiltersComputePipelinesStates[0];
  self->_FFCFiltersComputePipelinesStates[0] = v6;

  if (!self->_FFCFiltersComputePipelinesStates[0])
  {
    return -12786;
  }

  v11 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v8, @"erosionFilter", 0, v9, v10);
  v12 = self->_FFCFiltersComputePipelinesStates[1];
  self->_FFCFiltersComputePipelinesStates[1] = v11;

  if (!self->_FFCFiltersComputePipelinesStates[1])
  {
    return -12786;
  }

  v16 = objc_msgSend_computePipelineStateFor_constants_(self->_mtlContext, v13, @"boxFilter11x11", 0, v14, v15);
  v17 = self->_FFCFiltersComputePipelinesStates[2];
  self->_FFCFiltersComputePipelinesStates[2] = v16;

  if (self->_FFCFiltersComputePipelinesStates[2])
  {
    return 0;
  }

  else
  {
    return -12786;
  }
}

- (int)boxFilter11x11From:(id)from To:(id)to
{
  fromCopy = from;
  toCopy = to;
  v13 = self->_FFCFiltersComputePipelinesStates[2];
  if (fromCopy && toCopy)
  {
    v14 = objc_msgSend_commandBuffer(self->_mtlContext, v8, v9, v10, v11, v12);
    mtlCommandBuffer = self->_mtlCommandBuffer;
    self->_mtlCommandBuffer = v14;

    v21 = self->_mtlCommandBuffer;
    if (v21 && (objc_msgSend_computeCommandEncoder(v21, v16, v17, v18, v19, v20), (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v22;
      objc_msgSend_setComputePipelineState_(v22, v23, v13, v24, v25, v26);
      v31 = objc_msgSend_setTexture_atIndex_(v27, v28, fromCopy, 0, v29, v30);
      sub_29571B224(v31, v32, v33, v34, v35, v36);
      objc_msgSend_threadExecutionWidth(v13, v37, v38, v39, v40, v41);
      objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v42, v43, v44, v45, v46);
      objc_msgSend_width(toCopy, v47, v48, v49, v50, v51);
      v57 = objc_msgSend_height(toCopy, v52, v53, v54, v55, v56);
      sub_29571B1C8(v57, v58, v59, v60, v61, v62, v63, v64, v101, v102, v103, v104, v105, v106, v107, v108);
      objc_msgSend_endEncoding(v27, v65, v66, v67, v68, v69);
      if (*MEMORY[0x29EDB9270])
      {
        v75 = objc_msgSend_commandQueue(self->_mtlCommandBuffer, v70, v71, v72, v73, v74);
        v81 = objc_msgSend_commandBuffer(v75, v76, v77, v78, v79, v80);

        objc_msgSend_setLabel_(v81, v82, @"KTRACE_MTLCMDBUF", v83, v84, v85);
        objc_msgSend_addCompletedHandler_(v81, v86, &unk_2A1C98170, v87, v88, v89);
        objc_msgSend_commit(v81, v90, v91, v92, v93, v94);
        objc_msgSend_addCompletedHandler_(self->_mtlCommandBuffer, v95, &unk_2A1C98190, v96, v97, v98);
      }

      objc_msgSend_commit(self->_mtlContext, v70, v71, v72, v73, v74);

      v99 = 0;
    }

    else
    {
      v99 = -12786;
    }
  }

  else
  {
    sub_29571B1F4();
    sub_29571B1A8();
    FigDebugAssert3();
    sub_29571B1F4();
    sub_29571B1BC();
    v99 = FigSignalErrorAtGM();
  }

  return v99;
}

- (int)boxFilterFrom:(id)from To:(id)to
{
  fromCopy = from;
  toCopy = to;
  v13 = self->_FFCFiltersComputePipelinesStates[0];
  if (fromCopy && toCopy && (objc_msgSend_commandBuffer(self->_mtlContext, v8, v9, v10, v11, v12), v14 = objc_claimAutoreleasedReturnValue(), mtlCommandBuffer = self->_mtlCommandBuffer, self->_mtlCommandBuffer = v14, mtlCommandBuffer, (v21 = self->_mtlCommandBuffer) != 0))
  {
    v22 = objc_msgSend_computeCommandEncoder(v21, v16, v17, v18, v19, v20);
    if (v22)
    {
      v27 = v22;
      objc_msgSend_setComputePipelineState_(v22, v23, v13, v24, v25, v26);
      v31 = objc_msgSend_setTexture_atIndex_(v27, v28, fromCopy, 0, v29, v30);
      sub_29571B224(v31, v32, v33, v34, v35, v36);
      objc_msgSend_threadExecutionWidth(v13, v37, v38, v39, v40, v41);
      objc_msgSend_maxTotalThreadsPerThreadgroup(v13, v42, v43, v44, v45, v46);
      objc_msgSend_width(toCopy, v47, v48, v49, v50, v51);
      v57 = objc_msgSend_height(toCopy, v52, v53, v54, v55, v56);
      sub_29571B1C8(v57, v58, v59, v60, v61, v62, v63, v64, v101, v102, v103, v104, v105, v106, v107, v108);
      objc_msgSend_endEncoding(v27, v65, v66, v67, v68, v69);
      if (*MEMORY[0x29EDB9270])
      {
        v75 = objc_msgSend_commandQueue(self->_mtlCommandBuffer, v70, v71, v72, v73, v74);
        v81 = objc_msgSend_commandBuffer(v75, v76, v77, v78, v79, v80);

        objc_msgSend_setLabel_(v81, v82, @"KTRACE_MTLCMDBUF", v83, v84, v85);
        objc_msgSend_addCompletedHandler_(v81, v86, &unk_2A1C981B0, v87, v88, v89);
        objc_msgSend_commit(v81, v90, v91, v92, v93, v94);
        objc_msgSend_addCompletedHandler_(self->_mtlCommandBuffer, v95, &unk_2A1C981D0, v96, v97, v98);
      }

      objc_msgSend_commit(self->_mtlContext, v70, v71, v72, v73, v74);

      v99 = 0;
    }

    else
    {
      v99 = -12786;
    }
  }

  else
  {
    sub_29571B1F4();
    sub_29571B1A8();
    FigDebugAssert3();
    sub_29571B1F4();
    sub_29571B1BC();
    v99 = FigSignalErrorAtGM();
  }

  return v99;
}

@end