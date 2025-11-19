@interface GDCProcessor
- (GDCProcessor)initWithMetalContext:(id)a3;
- (int)GDCDistort:(id)a3 to:(id)a4 parameters:(id *)a5;
- (int)GDCDistort:(id)a3 to:(id)a4 parameters:(id *)a5 commandBuffer:(id)a6;
- (int)GDCDistortPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 parameters:(id *)a5;
- (int)GDCFrom:(id)a3 to:(id)a4 parameters:(id *)a5;
- (int)GDCFrom:(id)a3 to:(id)a4 parameters:(id *)a5 commandBuffer:(id)a6;
- (int)GDCFromPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 parameters:(id *)a5;
- (int)compileShadersWithLib:(id)a3;
- (int)initMetal;
- (void)dealloc;
@end

@implementation GDCProcessor

- (GDCProcessor)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    sub_29576A4B8(self);
    goto LABEL_10;
  }

  v59.receiver = self;
  v59.super_class = GDCProcessor;
  v13 = [(GDCProcessor *)&v59 init];
  if (v13)
  {
    v15 = objc_msgSend_device(v5, v6, v7, v8, v9, v10, v11, v12, v14);
    mtlDevice = v13->_mtlDevice;
    v13->_mtlDevice = v15;

    v25 = objc_msgSend_commandQueue(v5, v17, v18, v19, v20, v21, v22, v23, v24);
    mtlCommandQueue = v13->_mtlCommandQueue;
    v13->_mtlCommandQueue = v25;

    objc_storeStrong(&v13->_metalContext, a3);
    v35 = objc_msgSend_library(v5, v27, v28, v29, v30, v31, v32, v33, v34);
    v43 = objc_msgSend_compileShadersWithLib_(v13, v36, v35, v37, v38, v39, v40, v41, v42);

    if (v43)
    {
      sub_29576A360(v13);
    }

    else
    {
      if (!objc_msgSend_setSamplers_(v13, v44, 1, v45, v46, v47, v48, v49, v50))
      {
        objc_msgSend_prewarmInternalMetalShadersForFormatsList_(v13->_metalContext, v51, &unk_2A1C9F710, v52, v53, v54, v55, v56, v57);
        goto LABEL_6;
      }

      sub_29576A40C(v13);
    }

LABEL_10:
    v13 = 0;
  }

LABEL_6:

  return v13;
}

- (void)dealloc
{
  mtlDevice = self->_mtlDevice;
  self->_mtlDevice = 0;

  mtlCommandQueue = self->_mtlCommandQueue;
  self->_mtlCommandQueue = 0;

  v5 = self->_samplers[1];
  self->_samplers[1] = 0;

  v6 = self->_samplers[2];
  self->_samplers[2] = 0;

  v7 = self->_pipelineStates[0];
  self->_pipelineStates[0] = 0;

  v8 = self->_pipelineStates[1];
  self->_pipelineStates[1] = 0;

  v9.receiver = self;
  v9.super_class = GDCProcessor;
  [(GDCProcessor *)&v9 dealloc];
}

- (int)GDCFrom:(id)a3 to:(id)a4 parameters:(id *)a5
{
  mtlCommandQueue = self->_mtlCommandQueue;
  v9 = a4;
  v10 = a3;
  v19 = objc_msgSend_commandBuffer(mtlCommandQueue, v11, v12, v13, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_GDCFrom_to_parameters_commandBuffer_(self, v20, v10, v9, a5, v19, v21, v22, v23);

  if (*MEMORY[0x29EDB9270])
  {
    v33 = objc_msgSend_commandQueue(v19, v25, v26, v27, v28, v29, v30, v31, v32);
    v42 = objc_msgSend_commandBuffer(v33, v34, v35, v36, v37, v38, v39, v40, v41);

    objc_msgSend_setLabel_(v42, v43, @"KTRACE_MTLCMDBUF", v44, v45, v46, v47, v48, v49);
    objc_msgSend_addCompletedHandler_(v42, v50, &unk_2A1C9B358, v51, v52, v53, v54, v55, v56);
    objc_msgSend_commit(v42, v57, v58, v59, v60, v61, v62, v63, v64);
    objc_msgSend_addCompletedHandler_(v19, v65, &unk_2A1C9B378, v66, v67, v68, v69, v70, v71);
  }

  objc_msgSend_commit(v19, v25, v26, v27, v28, v29, v30, v31, v32);

  return v24;
}

- (int)GDCFrom:(id)a3 to:(id)a4 parameters:(id *)a5 commandBuffer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v13 = objc_opt_new();
  v22 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v23 = objc_msgSend_colorAttachments(v13, v14, v15, v16, v17, v18, v19, v20, v21, v154, v155, v156, v157, *&v158, *&v159, *&v160, v161);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25, v26, v27, v28, v29, v30);
  objc_msgSend_setLoadAction_(v31, v32, 0, v33, v34, v35, v36, v37, v38);

  v47 = objc_msgSend_colorAttachments(v22, v39, v40, v41, v42, v43, v44, v45, v46);
  v55 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49, v50, v51, v52, v53, v54);
  objc_msgSend_setStoreAction_(v55, v56, 1, v57, v58, v59, v60, v61, v62);

  v71 = objc_msgSend_colorAttachments(v22, v63, v64, v65, v66, v67, v68, v69, v70);
  v79 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0, v73, v74, v75, v76, v77, v78);
  objc_msgSend_setTexture_(v79, v80, v11, v81, v82, v83, v84, v85, v86);

  v94 = objc_msgSend_renderCommandEncoderWithDescriptor_(v12, v87, v22, v88, v89, v90, v91, v92, v93);
  if (v94)
  {
    v102 = v94;
    objc_msgSend_setRenderPipelineState_(v94, v95, self->_pipelineStates[0], v96, v97, v98, v99, v100, v101);
    v111 = objc_msgSend_fullRangeVertexBuf(self->_metalContext, v103, v104, v105, v106, v107, v108, v109, v110);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v102, v112, v111, 0, 0, v113, v114, v115, v116);

    objc_msgSend_setFragmentSamplerState_atIndex_(v102, v117, self->_samplers[2], 0, v118, v119, v120, v121, v122);
    v128.i64[0] = *a5->var1;
    *&v127 = *&a5->var1[6];
    DWORD2(v127) = LODWORD(a5->var6);
    HIDWORD(v127) = LODWORD(a5->var2);
    v155 = *&a5->var1[2];
    v156 = v127;
    *&v157 = a5->var3;
    *&v127 = *&a5->var4;
    *(&v127 + 1) = v128.i64[0];
    v128.i32[0] = LODWORD(a5->var7[0]);
    v129.i32[0] = LODWORD(a5->var7[1]);
    v128.i32[1] = LODWORD(a5->var7[3]);
    v128.i32[2] = LODWORD(a5->var7[6]);
    v129.i32[1] = LODWORD(a5->var7[4]);
    v129.i32[2] = LODWORD(a5->var7[7]);
    v130.i32[0] = LODWORD(a5->var7[2]);
    v130.i32[1] = LODWORD(a5->var7[5]);
    v130.i32[2] = LODWORD(a5->var7[8]);
    v154 = v127;
    if (a5->var9)
    {
      v131 = -1;
    }

    else
    {
      v131 = 0;
    }

    v132 = vdupq_n_s32(v131);
    v158 = vbslq_s8(v132, xmmword_29577A8A0, v128);
    v159 = vbslq_s8(v132, xmmword_29577A890, v129);
    v160 = vbslq_s8(v132, xmmword_29577A870, v130);
    objc_msgSend_setFragmentBytes_length_atIndex_(v102, v123, &v154, 128, 0, v124, v125, v126, *v158.i32);
    objc_msgSend_setFragmentTexture_atIndex_(v102, v133, v10, 0, v134, v135, v136, v137, v138, v154, v155, v156, v157);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v102, v139, 4, 0, 4, v140, v141, v142, v143);
    objc_msgSend_endEncoding(v102, v144, v145, v146, v147, v148, v149, v150, v151);

    v152 = 0;
  }

  else
  {
LABEL_7:
    fig_log_get_emitter();
    v152 = FigSignalErrorAtGM();
  }

  return v152;
}

- (int)GDCDistortPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 parameters:(id *)a5
{
  v14 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, a2, a3, 25, 17, 0, v5, v6, v7);
  if (v14 && (objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v11, a4, 25, 22, 0, v12, v13, v15), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v16;
    v23 = objc_msgSend_GDCDistort_to_parameters_(self, v17, v14, v16, a5, v18, v19, v20, v21);
  }

  else
  {
    fig_log_get_emitter();
    v23 = FigSignalErrorAtGM();
  }

  return v23;
}

- (int)GDCDistort:(id)a3 to:(id)a4 parameters:(id *)a5
{
  mtlCommandQueue = self->_mtlCommandQueue;
  v9 = a4;
  v10 = a3;
  v19 = objc_msgSend_commandBuffer(mtlCommandQueue, v11, v12, v13, v14, v15, v16, v17, v18);
  v24 = objc_msgSend_GDCDistort_to_parameters_commandBuffer_(self, v20, v10, v9, a5, v19, v21, v22, v23);

  if (*MEMORY[0x29EDB9270])
  {
    v33 = objc_msgSend_commandQueue(v19, v25, v26, v27, v28, v29, v30, v31, v32);
    v42 = objc_msgSend_commandBuffer(v33, v34, v35, v36, v37, v38, v39, v40, v41);

    objc_msgSend_setLabel_(v42, v43, @"KTRACE_MTLCMDBUF", v44, v45, v46, v47, v48, v49);
    objc_msgSend_addCompletedHandler_(v42, v50, &unk_2A1C9B398, v51, v52, v53, v54, v55, v56);
    objc_msgSend_commit(v42, v57, v58, v59, v60, v61, v62, v63, v64);
    objc_msgSend_addCompletedHandler_(v19, v65, &unk_2A1C9B3B8, v66, v67, v68, v69, v70, v71);
  }

  objc_msgSend_commit(v19, v25, v26, v27, v28, v29, v30, v31, v32);

  return v24;
}

- (int)GDCDistort:(id)a3 to:(id)a4 parameters:(id *)a5 commandBuffer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v13 = objc_opt_new();
  v22 = v13;
  if (!v13)
  {
    goto LABEL_7;
  }

  v23 = objc_msgSend_colorAttachments(v13, v14, v15, v16, v17, v18, v19, v20, v21, v154, v155, v156, v157, *&v158, *&v159, *&v160, v161);
  v31 = objc_msgSend_objectAtIndexedSubscript_(v23, v24, 0, v25, v26, v27, v28, v29, v30);
  objc_msgSend_setLoadAction_(v31, v32, 0, v33, v34, v35, v36, v37, v38);

  v47 = objc_msgSend_colorAttachments(v22, v39, v40, v41, v42, v43, v44, v45, v46);
  v55 = objc_msgSend_objectAtIndexedSubscript_(v47, v48, 0, v49, v50, v51, v52, v53, v54);
  objc_msgSend_setStoreAction_(v55, v56, 1, v57, v58, v59, v60, v61, v62);

  v71 = objc_msgSend_colorAttachments(v22, v63, v64, v65, v66, v67, v68, v69, v70);
  v79 = objc_msgSend_objectAtIndexedSubscript_(v71, v72, 0, v73, v74, v75, v76, v77, v78);
  objc_msgSend_setTexture_(v79, v80, v11, v81, v82, v83, v84, v85, v86);

  v94 = objc_msgSend_renderCommandEncoderWithDescriptor_(v12, v87, v22, v88, v89, v90, v91, v92, v93);
  if (v94)
  {
    v102 = v94;
    objc_msgSend_setRenderPipelineState_(v94, v95, self->_pipelineStates[1], v96, v97, v98, v99, v100, v101);
    v111 = objc_msgSend_fullRangeVertexBuf(self->_metalContext, v103, v104, v105, v106, v107, v108, v109, v110);
    objc_msgSend_setVertexBuffer_offset_atIndex_(v102, v112, v111, 0, 0, v113, v114, v115, v116);

    objc_msgSend_setFragmentSamplerState_atIndex_(v102, v117, self->_samplers[2], 0, v118, v119, v120, v121, v122);
    v128.i64[0] = *a5->var0;
    *&v127 = *&a5->var0[6];
    DWORD2(v127) = LODWORD(a5->var6);
    HIDWORD(v127) = LODWORD(a5->var2);
    v155 = *&a5->var0[2];
    v156 = v127;
    *&v157 = a5->var3;
    *&v127 = *&a5->var4;
    *(&v127 + 1) = v128.i64[0];
    v128.i32[0] = LODWORD(a5->var8[0]);
    v129.i32[0] = LODWORD(a5->var8[1]);
    v128.i32[1] = LODWORD(a5->var8[3]);
    v128.i32[2] = LODWORD(a5->var8[6]);
    v129.i32[1] = LODWORD(a5->var8[4]);
    v129.i32[2] = LODWORD(a5->var8[7]);
    v130.i32[0] = LODWORD(a5->var8[2]);
    v130.i32[1] = LODWORD(a5->var8[5]);
    v130.i32[2] = LODWORD(a5->var8[8]);
    v154 = v127;
    if (a5->var9)
    {
      v131 = -1;
    }

    else
    {
      v131 = 0;
    }

    v132 = vdupq_n_s32(v131);
    v158 = vbslq_s8(v132, xmmword_29577A8A0, v128);
    v159 = vbslq_s8(v132, xmmword_29577A890, v129);
    v160 = vbslq_s8(v132, xmmword_29577A870, v130);
    objc_msgSend_setFragmentBytes_length_atIndex_(v102, v123, &v154, 128, 0, v124, v125, v126, *v158.i32);
    objc_msgSend_setFragmentTexture_atIndex_(v102, v133, v10, 0, v134, v135, v136, v137, v138, v154, v155, v156, v157);
    objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v102, v139, 4, 0, 4, v140, v141, v142, v143);
    objc_msgSend_endEncoding(v102, v144, v145, v146, v147, v148, v149, v150, v151);

    v152 = 0;
  }

  else
  {
LABEL_7:
    fig_log_get_emitter();
    v152 = FigSignalErrorAtGM();
  }

  return v152;
}

- (int)compileShadersWithLib:(id)a3
{
  if (a3)
  {
    v4 = objc_opt_new();
    objc_msgSend_setPixelFormat_(v4, v5, 80, v6, v7, v8, v9, v10, v11);
    metalContext = self->_metalContext;
    v49 = v4;
    v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v13, &v49, 1, v14, v15, v16, v17, v18);
    v23 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(metalContext, v20, @"VertexGDC", 0, @"FragmentGDC", 0, v19, v21, v22);
    v24 = self->_pipelineStates[0];
    self->_pipelineStates[0] = v23;

    if (self->_pipelineStates[0])
    {
      v25 = objc_opt_new();

      objc_msgSend_setPixelFormat_(v25, v26, 25, v27, v28, v29, v30, v31, v32);
      v33 = self->_metalContext;
      v48 = v25;
      v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v34, &v48, 1, v35, v36, v37, v38, v39);
      v44 = objc_msgSend_renderPipelineStateForVertexFunction_vertexDescriptor_fragmentFunction_constants_colorAttachmentDescriptorArrray_(v33, v41, @"VertexGDC", 0, @"FragmentGDC_DISTORT", 0, v40, v42, v43);
      v45 = self->_pipelineStates[1];
      self->_pipelineStates[1] = v44;

      if (self->_pipelineStates[1])
      {
        v46 = 0;
LABEL_10:

        return v46;
      }
    }

    else
    {
      v25 = v4;
    }

    fig_log_get_emitter();
    v46 = FigSignalErrorAtGM();
    goto LABEL_10;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (int)initMetal
{
  v10 = objc_msgSend_metalDevice(MEMORY[0x29EDC0A40], a2, v2, v3, v4, v5, v6, v7, v8);
  mtlDevice = self->_mtlDevice;
  self->_mtlDevice = v10;

  v20 = self->_mtlDevice;
  if (v20)
  {
    v21 = objc_msgSend_newCommandQueue(v20, v12, v13, v14, v15, v16, v17, v18, v19);
    mtlCommandQueue = self->_mtlCommandQueue;
    self->_mtlCommandQueue = v21;

    if (self->_mtlCommandQueue)
    {
      return 0;
    }
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

- (int)GDCFromPixelBuffer:(__CVBuffer *)a3 toPixelBuffer:(__CVBuffer *)a4 parameters:(id *)a5
{
  if (!a5)
  {
    goto LABEL_7;
  }

  if (CVPixelBufferIsPlanar(a3) && CVPixelBufferGetPlaneCount(a3) != 1)
  {
    return -12780;
  }

  v13 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v9, a3, 80, 17, 0, v10, v11, v12);
  if (v13)
  {
    v18 = v13;
    v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_metalContext, v14, a4, 80, 22, 0, v15, v16, v17);
    if (v19)
    {
      v25 = v19;
      v26 = objc_msgSend_GDCFrom_to_parameters_(self, v20, v18, v19, a5, v21, v22, v23, v24);
    }

    else
    {
      fig_log_get_emitter();
      sub_295754458();
      v26 = FigSignalErrorAtGM();
    }

    return v26;
  }

  else
  {
LABEL_7:
    fig_log_get_emitter();
    sub_295754458();

    return FigSignalErrorAtGM();
  }
}

@end