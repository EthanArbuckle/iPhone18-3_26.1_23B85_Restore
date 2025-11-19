@interface DupDownscaleHalfConvert
- (DupDownscaleHalfConvert)initWithMetalContext:(id)a3;
- (int)AllocateResources;
- (int)DownscaleAndCrop:(float)a3 outY:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5;
- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)a3 outCroppedLuma:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5;
- (int)GenerateImageY:(id)a3 inYuv420:(id)a4 waitForCompletion:(BOOL)a5;
- (void)dealloc;
@end

@implementation DupDownscaleHalfConvert

- (DupDownscaleHalfConvert)initWithMetalContext:(id)a3
{
  v5 = a3;
  v42.receiver = self;
  v42.super_class = DupDownscaleHalfConvert;
  v6 = [(DupDownscaleHalfConvert *)&v42 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v6->_ResourcesAvailable = 0;
  objc_storeStrong(&v6->_MetalContext, a3);
  v7->_ContextAvailable = 1;
  v14 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v8, @"kernelDownscalerConverterYUVA", 0, v9, v10, v11, v12, v13);
  KernelYUVA = v7->_KernelYUVA;
  v7->_KernelYUVA = v14;

  if (!v7->_KernelYUVA)
  {
    sub_2957672DC();
LABEL_12:
    v40 = 0;
    goto LABEL_7;
  }

  v22 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v16, @"kernelDownscalerConverterY", 0, v17, v18, v19, v20, v21);
  KernelY = v7->_KernelY;
  v7->_KernelY = v22;

  if (!v7->_KernelY)
  {
    sub_295767264();
    goto LABEL_12;
  }

  v30 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v24, @"kernelDownscaleConvertAndCenterCrop", 0, v25, v26, v27, v28, v29);
  KernelDownscaleConvertAndCenterCrop = v7->_KernelDownscaleConvertAndCenterCrop;
  v7->_KernelDownscaleConvertAndCenterCrop = v30;

  if (!v7->_KernelDownscaleConvertAndCenterCrop)
  {
    sub_2957671EC();
    goto LABEL_12;
  }

  v38 = objc_msgSend_computePipelineStateFor_constants_(v7->_MetalContext, v32, @"kernelDownscaleAndCrop", 0, v33, v34, v35, v36, v37);
  KernelDownscaleAndCrop = v7->_KernelDownscaleAndCrop;
  v7->_KernelDownscaleAndCrop = v38;

  if (!v7->_KernelDownscaleAndCrop)
  {
    sub_295767174();
    goto LABEL_12;
  }

LABEL_6:
  v40 = v7;
LABEL_7:

  return v40;
}

- (int)AllocateResources
{
  if (!self->_ContextAvailable)
  {
    return -12786;
  }

  result = 0;
  self->_ResourcesAvailable = 1;
  return result;
}

- (void)dealloc
{
  objc_msgSend_waitForIdle(self->_MetalContext, a2, v2, v3, v4, v5, v6, v7, v8);
  objc_msgSend_ReleaseResources(self, v10, v11, v12, v13, v14, v15, v16, v17);
  v18.receiver = self;
  v18.super_class = DupDownscaleHalfConvert;
  [(DupDownscaleHalfConvert *)&v18 dealloc];
}

- (int)GenerateImageY:(id)a3 inYuv420:(id)a4 waitForCompletion:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v18 = objc_msgSend_width(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  v27 = objc_msgSend_height(v9, v19, v20, v21, v22, v23, v24, v25, v26);
  v36 = objc_msgSend_width(v8, v28, v29, v30, v31, v32, v33, v34, v35);
  v45 = objc_msgSend_height(v8, v37, v38, v39, v40, v41, v42, v43, v44);
  v200 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295767714();
LABEL_23:
    v115 = 0;
    v98 = 0;
    v5 = -12780;
    goto LABEL_15;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_29576778C();
    goto LABEL_23;
  }

  if (!v9)
  {
    sub_295767AD4();
    goto LABEL_23;
  }

  v54 = v45;
  if (objc_msgSend_pixelFormat(v9, v46, v47, v48, v49, v50, v51, v52, v53) != 10)
  {
    sub_295767804();
    goto LABEL_23;
  }

  if (!v8)
  {
    sub_295767A5C();
    goto LABEL_23;
  }

  if (objc_msgSend_pixelFormat(v8, v55, v56, v57, v58, v59, v60, v61, v62) != 10)
  {
    sub_29576787C();
    goto LABEL_23;
  }

  if (v18 != 2 * v36 || 2 * v54 != v27)
  {
    sub_2957679E4();
    goto LABEL_23;
  }

  v71 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelY, v63, v64, v65, v66, v67, v68, v69, v70);
  v80 = objc_msgSend_threadExecutionWidth(self->_KernelY, v72, v73, v74, v75, v76, v77, v78, v79);
  sub_29574A8BC(v71, v80, &v200 + 1, &v200, v36, v54);
  v89 = objc_msgSend_commandQueue(self->_MetalContext, v81, v82, v83, v84, v85, v86, v87, v88);
  v98 = objc_msgSend_commandBuffer(v89, v90, v91, v92, v93, v94, v95, v96, v97);

  if (!v98)
  {
    sub_29576796C();
    v115 = 0;
LABEL_26:
    v5 = -12786;
    goto LABEL_15;
  }

  v107 = objc_msgSend_computeCommandEncoder(v98, v99, v100, v101, v102, v103, v104, v105, v106);
  v115 = v107;
  if (!v107)
  {
    sub_2957678F4();
    goto LABEL_26;
  }

  objc_msgSend_setComputePipelineState_(v107, v108, self->_KernelY, v109, v110, v111, v112, v113, v114);
  objc_msgSend_setTexture_atIndex_(v115, v116, v9, 0, v117, v118, v119, v120, v121);
  objc_msgSend_setTexture_atIndex_(v115, v122, v8, 1, v123, v124, v125, v126, v127);
  v199[0] = v36 / HIDWORD(v200);
  v199[1] = v54 / v200;
  v199[2] = 1;
  v198[0] = HIDWORD(v200);
  v198[1] = v200;
  v198[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v115, v128, v199, v198, v129, v130, v131, v132, v133);
  objc_msgSend_endEncoding(v115, v134, v135, v136, v137, v138, v139, v140, v141);
  if (*MEMORY[0x29EDB9270])
  {
    v150 = objc_msgSend_commandQueue(v98, v142, v143, v144, v145, v146, v147, v148, v149);
    v159 = objc_msgSend_commandBuffer(v150, v151, v152, v153, v154, v155, v156, v157, v158);

    objc_msgSend_setLabel_(v159, v160, @"KTRACE_MTLCMDBUF", v161, v162, v163, v164, v165, v166);
    objc_msgSend_addCompletedHandler_(v159, v167, &unk_2A1C9B298, v168, v169, v170, v171, v172, v173);
    objc_msgSend_commit(v159, v174, v175, v176, v177, v178, v179, v180, v181);
    objc_msgSend_addCompletedHandler_(v98, v182, &unk_2A1C9B2B8, v183, v184, v185, v186, v187, v188);
  }

  objc_msgSend_commit(v98, v142, v143, v144, v145, v146, v147, v148, v149);
  if (v5)
  {
    objc_msgSend_waitUntilCompleted(v98, v189, v190, v191, v192, v193, v194, v195, v196);
    v5 = 0;
  }

LABEL_15:

  return v5;
}

- (int)DownscaleConvertAndCenterCrop:(__CVBuffer *)a3 outCroppedLuma:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v177 = 0;
  if (!self->_ContextAvailable)
  {
    sub_295767B4C();
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295767BC4();
    return -12780;
  }

  v15 = Height;
  v16 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v11, a5, 10, 17, 0, v12, v13, v14);
  if (!v16)
  {
    sub_295767EB4();
    return -12786;
  }

  v21 = v16;
  v22 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v17, a5, 30, 17, 1, v18, v19, v20);
  if (!v22)
  {
    sub_295767E24(v21);
    return -12786;
  }

  v27 = v22;
  v28 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v23, a3, 80, 22, 0, v24, v25, v26);
  if (!v28)
  {
    sub_295767D8C(v27, v21);
    return -12786;
  }

  v33 = v28;
  v34 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v29, a4, 10, 22, 0, v30, v31, v32);
  if (!v34)
  {
    sub_295767CE4(v33, v27, v21);
    return -12786;
  }

  v43 = v34;
  v44 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleConvertAndCenterCrop, v35, v36, v37, v38, v39, v40, v41, v42);
  v53 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleConvertAndCenterCrop, v45, v46, v47, v48, v49, v50, v51, v52);
  sub_29574A8BC(v44, v53, &v177 + 1, &v177, Width, v15);
  v62 = objc_msgSend_commandQueue(self->_MetalContext, v54, v55, v56, v57, v58, v59, v60, v61);
  v71 = objc_msgSend_commandBuffer(v62, v63, v64, v65, v66, v67, v68, v69, v70);

  if (!v71)
  {
    sub_295767C3C(v43, v33, v27, v21);
    return -12786;
  }

  v80 = objc_msgSend_computeCommandEncoder(v71, v72, v73, v74, v75, v76, v77, v78, v79);
  if (!v80)
  {
    fig_log_get_emitter();
    FigDebugAssert3();

    return -12786;
  }

  v88 = v80;
  objc_msgSend_setComputePipelineState_(v80, v81, self->_KernelDownscaleConvertAndCenterCrop, v82, v83, v84, v85, v86, v87);
  objc_msgSend_setTexture_atIndex_(v88, v89, v21, 0, v90, v91, v92, v93, v94);
  objc_msgSend_setTexture_atIndex_(v88, v95, v27, 1, v96, v97, v98, v99, v100);
  objc_msgSend_setTexture_atIndex_(v88, v101, v33, 2, v102, v103, v104, v105, v106);
  objc_msgSend_setTexture_atIndex_(v88, v107, v43, 3, v108, v109, v110, v111, v112);
  v176[0] = Width / HIDWORD(v177);
  v176[1] = v15 / v177;
  v176[2] = 1;
  v175[0] = HIDWORD(v177);
  v175[1] = v177;
  v175[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v88, v113, v176, v175, v114, v115, v116, v117, v118);
  objc_msgSend_endEncoding(v88, v119, v120, v121, v122, v123, v124, v125, v126);
  if (*MEMORY[0x29EDB9270])
  {
    v135 = objc_msgSend_commandQueue(v71, v127, v128, v129, v130, v131, v132, v133, v134);
    v144 = objc_msgSend_commandBuffer(v135, v136, v137, v138, v139, v140, v141, v142, v143);

    objc_msgSend_setLabel_(v144, v145, @"KTRACE_MTLCMDBUF", v146, v147, v148, v149, v150, v151);
    objc_msgSend_addCompletedHandler_(v144, v152, &unk_2A1C9B2D8, v153, v154, v155, v156, v157, v158);
    objc_msgSend_commit(v144, v159, v160, v161, v162, v163, v164, v165, v166);
    objc_msgSend_addCompletedHandler_(v71, v167, &unk_2A1C9B2F8, v168, v169, v170, v171, v172, v173);
  }

  objc_msgSend_commit(v71, v127, v128, v129, v130, v131, v132, v133, v134);

  return 0;
}

- (int)DownscaleAndCrop:(float)a3 outY:(__CVBuffer *)a4 inYuv420:(__CVBuffer *)a5
{
  if (!self->_ContextAvailable)
  {
    sub_295767F2C();
    return -12780;
  }

  if (!self->_ResourcesAvailable)
  {
    sub_295767FA4();
    return -12780;
  }

  if (!a5)
  {
    sub_2957683B4();
    return -12780;
  }

  if (!a4)
  {
    sub_29576833C();
    return -12780;
  }

  if (CVPixelBufferGetPixelFormatType(a5) != 875704422)
  {
    sub_29576801C();
    return -12780;
  }

  Width = CVPixelBufferGetWidth(a5);
  Height = CVPixelBufferGetHeight(a5);
  v11 = CVPixelBufferGetWidth(a4);
  v15 = CVPixelBufferGetHeight(a4);
  v17 = v15;
  if (Width <= v11 || Height <= v17)
  {
    sub_2957682C4();
    return -12780;
  }

  v19 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v12, a5, 10, 17, 0, v13, v14, v16);
  if (!v19)
  {
    sub_29576824C();
    return -12786;
  }

  v24 = v19;
  v25 = objc_msgSend_bindPixelBufferToMTL2DTexture_pixelFormat_usage_plane_(self->_MetalContext, v20, a4, 10, 22, 0, v21, v22, v23);
  if (!v25)
  {
    sub_2957681BC(v24);
    return -12786;
  }

  v34 = v25;
  v162 = 0;
  v35 = objc_msgSend_maxTotalThreadsPerThreadgroup(self->_KernelDownscaleAndCrop, v26, v27, v28, v29, v30, v31, v32, v33);
  v44 = objc_msgSend_threadExecutionWidth(self->_KernelDownscaleAndCrop, v36, v37, v38, v39, v40, v41, v42, v43);
  sub_29574A8BC(v35, v44, &v162 + 1, &v162, v11, v15);
  v45 = (1.0 - (1.0 / a3)) * 0.5;
  v161[0] = Width / (v11 * a3);
  v161[1] = v45 * Width;
  v161[2] = Height / (v17 * a3);
  v161[3] = v45 * Height;
  v53 = objc_msgSend_commandQueue(self->_MetalContext, v46, v47, v48, v49, v50, v51, v52, v45 * Height);
  v62 = objc_msgSend_commandBuffer(v53, v54, v55, v56, v57, v58, v59, v60, v61);

  if (!v62)
  {
    sub_29576812C(v34, v24);
    return -12786;
  }

  v71 = objc_msgSend_computeCommandEncoder(v62, v63, v64, v65, v66, v67, v68, v69, v70);
  if (!v71)
  {
    sub_295768094(v34, v24, v62);
    return -12786;
  }

  v79 = v71;
  objc_msgSend_setComputePipelineState_(v71, v72, self->_KernelDownscaleAndCrop, v73, v74, v75, v76, v77, v78);
  objc_msgSend_setTexture_atIndex_(v79, v80, v24, 0, v81, v82, v83, v84, v85);
  objc_msgSend_setTexture_atIndex_(v79, v86, v34, 1, v87, v88, v89, v90, v91);
  objc_msgSend_setBytes_length_atIndex_(v79, v92, v161, 16, 0, v93, v94, v95, v96);
  v160[0] = v11 / HIDWORD(v162);
  v160[1] = v15 / v162;
  v160[2] = 1;
  v159[0] = HIDWORD(v162);
  v159[1] = v162;
  v159[2] = 1;
  objc_msgSend_dispatchThreadgroups_threadsPerThreadgroup_(v79, v97, v160, v159, v98, v99, v100, v101, v102);
  objc_msgSend_endEncoding(v79, v103, v104, v105, v106, v107, v108, v109, v110);
  if (*MEMORY[0x29EDB9270])
  {
    v119 = objc_msgSend_commandQueue(v62, v111, v112, v113, v114, v115, v116, v117, v118);
    v128 = objc_msgSend_commandBuffer(v119, v120, v121, v122, v123, v124, v125, v126, v127);

    objc_msgSend_setLabel_(v128, v129, @"KTRACE_MTLCMDBUF", v130, v131, v132, v133, v134, v135);
    objc_msgSend_addCompletedHandler_(v128, v136, &unk_2A1C9B318, v137, v138, v139, v140, v141, v142);
    objc_msgSend_commit(v128, v143, v144, v145, v146, v147, v148, v149, v150);
    objc_msgSend_addCompletedHandler_(v62, v151, &unk_2A1C9B338, v152, v153, v154, v155, v156, v157);
  }

  objc_msgSend_commit(v62, v111, v112, v113, v114, v115, v116, v117, v118);

  return 0;
}

@end